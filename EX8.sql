      
--EX 8 

--sa se calculeze numarul de angajati ai unei sali cu dimensiunea data de la tastatura
--si sa se stearga aceasta sala

CREATE OR REPLACE FUNCTION f2_pmm(dim gyms.dimension%TYPE)
RETURN VARCHAR IS MSG VARCHAR(40);
                A NUMBER;
                B NUMBER;
                C NUMBER;
                txt VARCHAR(40):='SALA A FOST STEARSA CU SUCCES';
                copie gyms.dimension%TYPE;
                NR_ANG NUMBER;
                nd NUMBER;
                exista_ang EXCEPTION;
                PRAGMA EXCEPTION_INIT(exista_ang,-2292);
                exc1 EXCEPTION;
                exc2 EXCEPTION;
BEGIN
        SELECT COUNT(DIMENSION) INTO nd
        from gyms
        where dimension=dim;   
           
        if nd=0 then
            RAISE EXC1;
        ELSIF nd>1 then
            RAISE EXC2;
        end if;
  
  BEGIN
        SELECT COUNT(distinct G.EMPLOYEE_ID), COUNT(distinct c.EMPLOYEE_ID),COUNT(distinct r.EMPLOYEE_ID)
         into A,B,C
            FROM GUARDIANS G, CLEANING_STAFF C, RECEPTIONISTS R, GYMS GM
            WHERE G.GYM_ID=C.GYM_ID AND G.GYM_ID=R.GYM_ID AND GM.GYM_ID=G.GYM_ID AND GM.DIMENSION=DIM
            group by g.gym_id
            ORDER BY G.GYM_ID ASC;
    
    NR_ANG:=a+b+c;
    MSG:=CONCAT('NUMARUL DE ANGAJATI ESTE ', TO_CHAR(NR_ANG));
    
    EXCEPTION
    WHEN NO_DATA_FOUND THEN DBMS_OUTPUT.PUT_LINE('NU EXISTA ANGAJATI LA ACEASTA SALA');
    
    END;
    
    DELETE FROM GYMS WHERE DIMENSION=dim;
    RETURN txt;
    
    EXCEPTION
        WHEN EXC1 THEN DBMS_OUTPUT.PUT_LINE('NU AVEM O SALA CU DIMENSIUNEA DATA');
        RETURN MSG;
        WHEN EXC2 THEN DBMS_OUTPUT.PUT_LINE('EXISTA MAI MULTE SALI CU DIMENSIUNEA DATA');
        RETURN MSG;
        WHEN exista_ang THEN DBMS_OUTPUT.PUT_LINE('NU PUTETI STERGE ABONAMENTUL DEOARECE EXISTA MEMBRII CE AU ACEASTA SUBSCRIPTIE');
        RETURN MSG;
END F2_PMM;
/

drop function f2_pmm;

BEGIN
    DBMS_OUTPUT.PUT_LINE(f2_pmm('&p'));
END;

INSERT INTO GYMS
VALUES(10,'STRADA X', 23);

ROLLBACK;
select dimension from gyms where dimension='23';
