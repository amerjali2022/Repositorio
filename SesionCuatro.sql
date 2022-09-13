CREATE TABLE costumes (
    idCostume NUMBER(10) NOT NULL,
    name VArchar(255) NULL,
    brand VARCHAR (45) NULL,
    year NUMBER(10) NULL,
    description VARCHAR (255) NULL,
    idCategory NUMBER(10) NULL,
    PRIMARY KEY (idCostume));

CREATE SEQUENCE costume_seq START WITH 1 INCREMENT BY 1;

CREATE OR REPLACE TRIGGER seq_id_costume
  BEFORE INSERT on COSTUMES FOR EACH ROW
  when (NEW.idCostume is null )
  BEGIN 
       SELECT COSTUME_sEQ.nextval into :NEW.idCostume from DUAL;
  END;
