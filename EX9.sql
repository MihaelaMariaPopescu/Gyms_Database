--sa se afiseze numarul de antrenamente pe care il are un membru dat de la tastatura(NUMELE SAU)
--cu un anumit instructor dat de la tastatura(numele sau)
--la o sala data de la tastatura
-- si cu abonament de tip SILVER 1 luna (membership cod 2)
--folosim procedura stocata SI CURSOR EXPLICIT


CREATE OR REPLACE PROCEDURE P2 (m_nume members.member_name%TYPE,
                                i_nume instructors.instructor_name%TYPE,
                                g_id gyms.gym_id%TYPE,
                                ms_id membership.membership_id%TYPE)
is 
    rez NUMBER;
    a NUMBER;
     b NUMBER;
    c_id NUMBER;
    d number;
    exc1 exception;
    exc2 exception;
    exc3 exception;
    exc4 exception;

    CURSOR C IS
        SELECT COUNT(*) 
         FROM WORKOUT_PLAN WK,MEMBERS M ,INSTRUCTORS I,  GYMS G , MEMBERSHIP MS
         WHERE 
            upper(M.MEMBER_NAME)=upper(m_nume) AND 
            WK.MEMBER_ID=M.MEMBER_ID and 
            upper(I.instructor_name)=upper(i_nume) AND
            WK.INSTRUCTOR_ID=I.INSTRUCTOR_ID AND
            WK.GYM_ID=g_id AND WK.GYM_ID=G.GYM_ID AND 
            MS.MEMBERSHIP_ID=ms_id;

 BEGIN
    select count(member_id )
    into a
    from members
    where UPPER(member_name)=UPPER(m_nume);
      
    if a = 0 then 
        RAISE exc1;
    elsif a>1 then 
        RAISE TOO_MANY_ROWS;
    END IF;
    
    select count(INSTRUCTOR_ID )
    into b
    from INSTRUCTORS
    where UPPER(INSTRUCTOR_NAME)=UPPER(I_NUME);
    
    if b = 0 then 
        RAISE exc2;
    ELSIF B>1 THEN
        RAISE TOO_MANY_ROWS;
    END IF;
    
    select count(gym_id) 
    into c_id
    from gyms
    where gym_id=g_id;
    
    if c_id = 0 then 
        RAISE exc3;
    END IF;
    
    select membership_id
    into d
    from membership
    where membership_id=ms_id;
    
    if d != 2 then
        RAISE EXC4;
    END IF;
    
    OPEN C;
    LOOP
        FETCH C INTO REZ;
        if REZ = 0 THEN
        RAISE NO_DATA_FOUND;
        END IF;
        
        EXIT WHEN C%NOTFOUND;
    
    DBMS_OUTPUT.PUT_LINE('NR DE ANTRENAMENTE FACUTE DE ' || M_NUME ||' CU ' || I_NUME || ' IN SALA ' || G_ID|| ' ESTE ' || REZ);
      
    END LOOP;  
 
   EXCEPTION
    WHEN exc1 THEN RAISE_APPLICATION_ERROR(-20003,'Nu exista acest membru');
    WHEN exc2 THEN RAISE_APPLICATION_ERROR(-20010,'Nu exista acest instructor');
    WHEN exc3 THEN RAISE_APPLICATION_ERROR(-20100,'Nu exista aceasta sala');
    WHEN exc4 THEN RAISE_APPLICATION_ERROR(-20104,'Abonamentul nu este de tip SILVER 1 MONTH');
    WHEN NO_DATA_FOUND THEN RAISE_APPLICATION_ERROR(-20000,'Nu exista acest plan de antrenament');
    WHEN TOO_MANY_ROWS THEN RAISE_APPLICATION_ERROR(-20001,'Exista mai multi membri/instructori cu acest nume');  
 END P2;
 /
 
 DROP PROCEDURE P2;
 
 BEGIN
    P2('&P_NUME_MEMBRU','&P_NUME_INSTRUCTOR','&P_ID_SALA','&p_id_membership');
 END;
 
 INSERT INTO WORKOUT
VALUES (50, 'RAUL','laurentiu','FJDC ','AKDJ');

INSERT INTO WORKOUT_PLAN
VALUES(6,1,11,2020);
 
INSERT INTO INSTRUCTORS
VALUES(11,'RAUL','0778811323',50);


