create or replace Function actualiza_precio (v_matricula coche.matricula%type, v_precio_nuevo coche.precio_compra%type)
return number
as
   v_precio coche.precio_compra%type :=0;
  begin
    select nvl(precio_compra,-1) into v_precio from coche
    where coche.matricula = v_matricula;
  
  if (v_precio = -1) then
      update coche set precio_compra = v_precio_nuevo
      where matricula = v_matricula;
  else
      update coche set precio_compra = (v_precio*2-v_precio_nuevo)
      where matricula = v_matricula;
  end if;
  return sql%rowcount;
  exception 
  WHEN NO_DATA_FOUND THEN
      return -0.5;
  end;

/
declare 
   v_filas number;
  BEGIN
    v_filas:= actualiza_precio (&mat,&precio);
    IF v_filas = -0.5 then 
      DBMS_OUTPUT.PUT_LINE ('No se encontró Matricula :'|| &mat );
    ELSE
      DBMS_OUTPUT.PUT_LINE ('FILAS ACTUALIZADAS :'|| TO_CHAR(V_FILAS) );
    end if;   
 END; 
/
Select * from coche;
