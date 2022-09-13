create or replace procedure crear_coches(p_id_marca coche.id_marca%type, p_numero_coches number)
as
     v_contador number := p_numero_coches;
     indice  number;
  BEGIN
   for i in 1.. v_contador LOOP
     indice := i;
     insert into coche(matricula, descripcion, id_marca) values ('A00'||TO_CHAR(indice), TO_CHAR(P_ID_MARCA), P_ID_MARCA);
   end LOOP; 

   exception
    when dup_val_on_index THEN
     DBMS_OUTPUT.PUT_LINE('LLAVE DUPLICADA PARA '|| ('A00'||TO_CHAR(indice)));
  END;
/

DECLARE
   v_contador number := &cantidad;
   v_marca coche.id_marca%type := &id_marca;
   begin
     crear_coches(v_marca, v_contador);
end;
/
select * from coche;