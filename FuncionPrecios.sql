create or replace Function actualiza_precio (v_matricula coche.matricula%type, v_precio_nuevo coche.precio_compra%type)
return number
as
  begin
    v_precio coche.precio_compra%type;
    select nvl(precio_compra,-1) into v_precio from coche
    where coche.matricula = v_matricula;

  if (v_precio = -1) then
      update coche set precio_compra = v_precio_nuevo
      where matricula = v_matricula;
  else
      update coche set precio_compra = (v_precio*2-v_precio_nuevo)
      where matricula = v_matricula;
  end;
  return sql%rowcount;
end;
