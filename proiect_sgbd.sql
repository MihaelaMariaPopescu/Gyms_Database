CREATE TABLE GYM
(GYM_ID NUMBER(10) PRIMARY KEY, ADRESS VARCHAR(20), DIMENSION NUMBER(10));

CREATE TABLE WORKOUT
(WORKOUT_ID NUMBER(10) PRIMARY KEY, NAME VARCHAR(20) NOT NULL);

CREATE TABLE USERS
(USER_ID NUMBER(10) PRIMARY KEY, FIRST_NAME VARCHAR(20) NOT NULL, LAST_NAME VARCHAR(20) NOT NULL,USERNAME VARCHAR(20), PASSWORD VARCHAR(20) NOT NULL);

CREATE TABLE ONLINE_CLASS
(CLASS_ID NUMBER(10) PRIMARY KEY , NAME VARCHAR(20) NOT NULL);

CREATE TABLE MEMBERSHIP
(MEMBERSHIP_ID NUMBER(10) PRIMARY KEY , NAME VARCHAR(20) NOT NULL, PERIOD VARCHAR(20)NOT NULL, PRICE NUMBER(10)NOT NULL);

CREATE TABLE MEMBERS
(MEMBER_ID NUMBER(10) PRIMARY KEY , FIRST_NAME VARCHAR(20), GENDER VARCHAR(20), AGE NUMBER(10), JOINING_DATE DATE NOT NULL, ENDING_DATE DATE,
MEMBERSHIP_ID REFERENCES MEMBERSHIP(MEMBERSHIP_ID), USER_ID REFERENCES USER1(USER_ID));

CREATE TABLE INSTRUCTOR
(INSTRUCTOR_ID NUMBER(10) PRIMARY KEY, FIRST_NAME VARCHAR(20) NOT NULL, CONTACT VARCHAR(20), USER_ID REFERENCES USER1(USER_ID));

CREATE TABLE PAYMENT
(PAYMENT_ID NUMBER(10) PRIMARY KEY, AMOUNT NUMBER(10) NOT NULL,DATE_TIME DATE, MEMBER_ID REFERENCES MEMBER1(MEMBER_ID));

CREATE TABLE WORKOUT_PLAN
(GYM_ID NUMBER(10) REFERENCES GYM(GYM_ID), WORKOUT_ID NUMBER(10) REFERENCES WORKOUT(WORKOUT_ID),INSTRUCTOR_ID NUMBER(10) REFERENCES INSTRUCTOR(INSTRUCTOR_ID),MEMBER_ID NUMBER(10) REFERENCES MEMBER1(MEMBER_ID),
PRIMARY KEY(GYM_ID,WORKOUT_ID,INSTRUCTOR_ID,MEMBER_ID));

CREATE TABLE BOOKS
(MEMBER_ID NUMBER(10) REFERENCES MEMBERS(MEMBER_ID), CLASS_ID NUMBER(10) REFERENCES ONLINE_CLASS(CLASS_ID),
PRIMARY KEY(MEMBER_ID,CLASS_ID));

CREATE TABLE EMPLOYEES
(EMPLOYEE_ID NUMBER(10) PRIMARY KEY , FIRST_NAME VARCHAR(20) NOT NULL, LAST_NAME VARCHAR(20) NOT NULL,CONTACT VARCHAR(20), EMAIL VARCHAR(20));

CREATE TABLE RECEPTIONISTS
(EMPLOYEE_ID NUMBER(10) REFERENCES EMPLOYEES(EMPLOYEE_ID), GYM_ID NUMBER(10) REFERENCES GYMS(GYM_ID),
PRIMARY KEY (EMPLOYEE_ID,GYM_ID));

CREATE TABLE CLEANING_STAFF
(EMPLOYEE_ID NUMBER(10) REFERENCES EMPLOYEES(EMPLOYEE_ID), GYM_ID NUMBER(10) REFERENCES GYMS(GYM_ID),
PRIMARY KEY (EMPLOYEE_ID,GYM_ID));

CREATE TABLE GUARDIANS
(EMPLOYEE_ID NUMBER(10) REFERENCES EMPLOYEES(EMPLOYEE_ID), GYM_ID NUMBER(10) REFERENCES GYMS(GYM_ID),
PRIMARY KEY (EMPLOYEE_ID,GYM_ID));

COMMIT;

--TABELA GYMS
INSERT INTO GYMS
VALUES (1, 'STR SOLDAT IOSIF ION', 10);

INSERT INTO GYMS
VALUES (2, 'STR ISTRIEI', 10);

INSERT INTO GYMS
VALUES (3, 'STR LUNCA', 100);

INSERT INTO GYMS
VALUES (4, 'STR LALOSU', 80);

INSERT INTO GYMS
VALUES (5, 'STR PADESU', 120);

INSERT INTO GYMS
VALUES (6, 'CALEA VITAN', 150);

INSERT INTO GYMS
VALUES (7, 'STR GRIVITEI', 90);

SELECT * FROM GYMS;

ROLLBACK;

--TABELA WORKOUT
INSERT INTO WORKOUT
VALUES (1, 'CARDIO');

INSERT INTO WORKOUT
VALUES (2, 'CROSS-FIT');

INSERT INTO WORKOUT
VALUES (3, 'SWIMMING');

INSERT INTO WORKOUT
VALUES (4, 'POWERLIFTING');

INSERT INTO WORKOUT
VALUES (5, 'BODYBUILDING');

INSERT INTO WORKOUT
VALUES (6, 'ZUMBA');

INSERT INTO WORKOUT
VALUES (7, 'STRENGTH TRAINING');

INSERT INTO WORKOUT
VALUES (8, 'CALISTHENICS');

INSERT INTO WORKOUT
VALUES (9, 'CORE WORKOUTS');

INSERT INTO WORKOUT
VALUES (10, 'BOXING CIRCUIT');

SELECT * FROM WORKOUT;

--TABELA EMPLOYEES
INSERT INTO EMPLOYEES
VALUES (100, 'MARIA','GEORGESCU','0722513230','MARIA@GMAIL.COM');

INSERT INTO EMPLOYEES
VALUES (101, 'IOANA','TRANDAFIR','0722518830','IOANA@GMAIL.COM');

INSERT INTO EMPLOYEES
VALUES (102, 'CORNEL','PROTOPOPESCU','0729513230','POPESCU@GMAIL.COM');

INSERT INTO EMPLOYEES
VALUES (103, 'ALEX','MIHAIL','0722763230','ALEX@GMAIL.COM');

INSERT INTO EMPLOYEES
VALUES (104, 'IUSTINA','MARGINEANU','072876530','MARGINEANU@GMAIL.COM');

INSERT INTO EMPLOYEES
VALUES (105, 'ROBERT','IONESCU','0722777230','ROB@GMAIL.COM');

INSERT INTO EMPLOYEES
VALUES (106, 'DAVID','BRANZOVENESCU','0733313230','BRANZICA@GMAIL.COM');

INSERT INTO EMPLOYEES
VALUES (107, 'IULIANA','POPESCU','078899550','POPESCU32@GMAIL.COM');

INSERT INTO EMPLOYEES
VALUES (108, 'CRISTIAN','IOAN','0722444230','IOAN@GMAIL.COM');

INSERT INTO EMPLOYEES
VALUES (109, 'GABRIEL','BADEA','0797613230','GB@GMAIL.COM');

INSERT INTO EMPLOYEES
VALUES (110, 'AURORA','IANCU','0722777290','IANCU_A@GMAIL.COM');

INSERT INTO EMPLOYEES
VALUES (111, 'BOGDAN','DELAP','079088765','DLP@GMAIL.COM');

INSERT INTO EMPLOYEES
VALUES (112, 'KARINA','LUCULET','074443230','KARINA@GMAIL.COM');

INSERT INTO EMPLOYEES
VALUES (113, 'VALENTIN','ALAFIN','0711113230','VFIN@GMAIL.COM');

INSERT INTO EMPLOYEES
VALUES (114, 'DRAGOS','CONSTANTIN','079123430','CONSTANTIN@GMAIL.COM');

INSERT INTO EMPLOYEES
VALUES (115, 'CASSANDRA','MARTIN','071556730','CASSI@GMAIL.COM');

INSERT INTO EMPLOYEES
VALUES (116, 'GEORGIANA','ANDU','0717789230','GEORGIA@GMAIL.COM');

INSERT INTO EMPLOYEES
VALUES (117, 'RALUCA','LEON','0745564330','RALEO@GMAIL.COM');

INSERT INTO EMPLOYEES
VALUES (118, 'MARIANA','ANGHEL','0785497860','ANGHEL@GMAIL.COM');

INSERT INTO EMPLOYEES
VALUES (119, 'BIANCA','OANCEA','079875550','BIBI@GMAIL.COM');

INSERT INTO EMPLOYEES
VALUES (120, 'DANA','EPU','0776865231','EPU_DI@GMAIL.COM');

INSERT INTO EMPLOYEES
VALUES (121, 'MARA','MOCANU','0722213230','MARA@GMAIL.COM');

SELECT * FROM EMPLOYEES;

--TABELA RECEPTIONISTS

INSERT INTO RECEPTIONISTS
VALUES(100,1);

INSERT INTO RECEPTIONISTS
VALUES(101,2);

INSERT INTO RECEPTIONISTS
VALUES(102,3);

INSERT INTO RECEPTIONISTS
VALUES(103,4);

INSERT INTO RECEPTIONISTS
VALUES(104,5);

INSERT INTO RECEPTIONISTS
VALUES(105,6);

INSERT INTO RECEPTIONISTS
VALUES(106,7);

SELECT * FROM RECEPTIONISTS;

--TABELA GUARDIANS

INSERT INTO GUARDIANS
VALUES(107,1);

INSERT INTO GUARDIANS
VALUES(108,2);

INSERT INTO GUARDIANS
VALUES(109,3);

INSERT INTO GUARDIANS
VALUES(110,4);

INSERT INTO GUARDIANS
VALUES(111,5);

INSERT INTO GUARDIANS
VALUES(112,6);

INSERT INTO GUARDIANS
VALUES(113,7);

SELECT * FROM GUARDIANS;

--TABELA CLEANING_STAFF
INSERT INTO CLEANING_STAFF
VALUES(114,1);
INSERT INTO CLEANING_STAFF
VALUES(115,2);
INSERT INTO CLEANING_STAFF
VALUES(116,3);
INSERT INTO CLEANING_STAFF
VALUES(117,4);
INSERT INTO CLEANING_STAFF
VALUES(118,5);
INSERT INTO CLEANING_STAFF
VALUES(119,6);
INSERT INTO CLEANING_STAFF
VALUES(120,7);
INSERT INTO CLEANING_STAFF
VALUES(121,6);

SELECT * FROM CLEANING_STAFF;


--TABELA USERS

INSERT INTO USERS
VALUES (1, 'MIHAELA','POPESCU','mica','cefef!2dA');

INSERT INTO USERS
VALUES (2, 'DIANA','IORDACHE','didi_iord','jncUBB');

INSERT INTO USERS
VALUES (3, 'MARIA','MARIN','MM36','LKLjh');

INSERT INTO USERS
VALUES (4, 'COSMIN','TEODOR','cosmit','kfkw!233dA');

INSERT INTO USERS
VALUES (5, 'ALEXANDRU','RUS','777_MONEY','lajdeb@AX');

INSERT INTO USERS
VALUES (6, 'MATEI','RUS','forex_mr','mxrcars*');

INSERT INTO USERS
VALUES (7, 'CORINA','NITULESCU','cory','asdd!sgbd');

INSERT INTO USERS
VALUES (8, 'NATALIA','IONESCU','nationescu','mvsjhd!#@');

INSERT INTO USERS
VALUES (9, 'EUGEN','POPESCU','popyeug','ddvvw22');

INSERT INTO USERS
VALUES (10, 'LILIANA','LUCULET','lilyluk','fb!fe31w3');

INSERT INTO USERS
VALUES (11, 'RADU','RUS','valer_rus','cnjskme');

INSERT INTO USERS
VALUES (12, 'MIRELA','RUS','t_mirela','vgdbrgr');

INSERT INTO USERS
VALUES (13, 'IONEL','OCO','oko_ion','wq32213');

INSERT INTO USERS
VALUES (14, 'ALEXANDRA','GHEORGHE','alxg','wr3r3f');

INSERT INTO USERS
VALUES (15, 'MARA','MALUTAN','maruca','sdrg222');

INSERT INTO USERS
VALUES (16, 'PATRICIA','TRANDAFIR','floricica','erfcwv332');

INSERT INTO USERS
VALUES (17, 'MARIA','DUMITRU','mariuca','fvrgrwf');

INSERT INTO USERS
VALUES (18, 'VLAD','PARASCHIV','vllladd','asdefe');

INSERT INTO USERS
VALUES (19, 'LUCA','DITA','luked','ceffkjwefn');

INSERT INTO USERS
VALUES (20, 'CLAUDIA','ERIN','clauclau','vwefqe');

INSERT INTO USERS
VALUES (21, 'TUDOR','OPRISAN','tud_oop','ecdvreg3');

INSERT INTO USERS
VALUES (22, 'SERGIU','ARIN','sssergiu','lmnbhj');

INSERT INTO USERS
VALUES (23, 'ADRIAN','ZAMIN','ADIZZZ','ffvdaqqq');

INSERT INTO USERS
VALUES (24, 'LAURENTIU','FLORENTIN','florentiu','xscvvvds');

INSERT INTO USERS
VALUES (25, 'LORENA','NEAGU','lolo_nnn','lolkcnjsd');

INSERT INTO USERS
VALUES (26, 'GABRIELA','GLONT','GG_WP','dnkjsndjn');

INSERT INTO USERS
VALUES (27, 'RAUL','GHEORGHIU','raul_gs','DFwdcf');

INSERT INTO USERS
VALUES (28, 'FLORIN','MIHAI','florinmihai','cofkiebf');

INSERT INTO USERS
VALUES (29, 'MARIUS','BOCOV','mariusb','ddvvrfwef');

INSERT INTO USERS
VALUES (30, 'ELISA','IANCU','elya','dcefef');

select * from users;

--TABELA INSTRUCTORS

INSERT INTO INSTRUCTORS
VALUES(1,'MIHAELA','072662512',1);

INSERT INTO INSTRUCTORS
VALUES(2,'ALEX','073451512',5);

INSERT INTO INSTRUCTORS
VALUES(3,'MATEI','077876251',6);

INSERT INTO INSTRUCTORS
VALUES(4,'NATY','071982611',8);

INSERT INTO INSTRUCTORS
VALUES(5,'FLO','07578912',29);

INSERT INTO INSTRUCTORS
VALUES(6,'SERGIU','079875123',22);

INSERT INTO INSTRUCTORS
VALUES(7,'GABI','0789007611',26);

INSERT INTO INSTRUCTORS
VALUES(8,'PATY','079876112',16);

INSERT INTO INSTRUCTORS
VALUES(9,'DI','071123432',2);

INSERT INTO INSTRUCTORS
VALUES(10,'RAUL','072999811',27);

select * from instructors;

--TABLE ONLINE_CLASS

INSERT INTO ONLINE_CLASS
VALUES(1001,'CYCLING');

INSERT INTO ONLINE_CLASS
VALUES(1002,'TRAIN ABS!');

INSERT INTO ONLINE_CLASS
VALUES(1003,'PILATES');

INSERT INTO ONLINE_CLASS
VALUES(1004,'YOGA');

INSERT INTO ONLINE_CLASS
VALUES(1005,'DUMP TRUCK');

INSERT INTO ONLINE_CLASS
VALUES(1006,'DANCE IT OUT');

INSERT INTO ONLINE_CLASS
VALUES(1007,'SWEATY SWEAT');

INSERT INTO ONLINE_CLASS
VALUES(1008,'MUSCLE DESTROYER');

INSERT INTO ONLINE_CLASS
VALUES(1009,'FULL BODY TONING');

INSERT INTO ONLINE_CLASS
VALUES(1010,'BEGINNERS CIRCUIT');

INSERT INTO ONLINE_CLASS
VALUES(1011,'10-MIN-SQUAT');

INSERT INTO ONLINE_CLASS
VALUES(1012,'UPPER BODY POWER');

SELECT * FROM ONLINE_CLASS;

--TABELA MEMBERSHIP
INSERT INTO MEMBERSHIP
VALUES(1,'BRONZE','1 MONTH',199);

INSERT INTO MEMBERSHIP
VALUES(2,'SILVER','1 MONTH',239);

INSERT INTO MEMBERSHIP
VALUES(3,'GOLD','1 MONTH',279);

INSERT INTO MEMBERSHIP
VALUES(4,'PLATINUM','1 MONTH',299);

INSERT INTO MEMBERSHIP
VALUES(5,'BRONZE','3 MONTHS',559);

INSERT INTO MEMBERSHIP
VALUES(6,'SILVER','3 MONTHS',699);

INSERT INTO MEMBERSHIP
VALUES(7,'GOLD','3 MONTH',799);

INSERT INTO MEMBERSHIP
VALUES(8,'PLATINUM','3 MONTH',899);

INSERT INTO MEMBERSHIP
VALUES(9,'BRONZE','12 MONTHS',1990);

INSERT INTO MEMBERSHIP
VALUES(10,'SILVER','12 MONTHS',2590);

INSERT INTO MEMBERSHIP
VALUES(11,'GOLD','12 MONTHS',2990);

INSERT INTO MEMBERSHIP
VALUES(12,'PLATINUM','12 MONTHS',3199);

SELECT * FROM MEMBERSHIP;

--TABELA MEMBERS

INSERT INTO MEMBERS
VALUES(2001,'MARIA','F',19,SYSDATE,DATE '2023-02-12',1,3);

INSERT INTO MEMBERS
VALUES(2002,'COSMIN','M',23,SYSDATE,DATE'2023-04-12',5,4);

INSERT INTO MEMBERS
VALUES(2003,'CORINA','F',25,SYSDATE,DATE'2023-02-12',3,7);

INSERT INTO MEMBERS
VALUES(2004,'EUGEN','M',54,SYSDATE,DATE'2023-02-12',1,9);

INSERT INTO MEMBERS
VALUES(2005,'LILIANA','F',55,SYSDATE,DATE'2024-01-12',12,10);

INSERT INTO MEMBERS
VALUES(2006,'RADU','M',48,SYSDATE,DATE'2023-02-12',3,11);

INSERT INTO MEMBERS
VALUES(2007,'MIRELA','F',49,SYSDATE,DATE'2023-04-12',7,12);

INSERT INTO MEMBERS
VALUES(2008,'IONEL','M',40,SYSDATE,DATE'2024-01-12',9,13);

INSERT INTO MEMBERS
VALUES(2009,'ELISA','F',19,SYSDATE,DATE'2023-04-12',6,30);

INSERT INTO MEMBERS
VALUES(2010,'FLORIN','M',22,SYSDATE,DATE'2023-02-12',1,28);

INSERT INTO MEMBERS
VALUES(2011,'LORENA','F',17,SYSDATE,DATE'2023-02-12',2,25);

INSERT INTO MEMBERS
VALUES(2012,'LAURENTIU','M',21,SYSDATE,DATE'2023-02-12',3,24);

INSERT INTO MEMBERS
VALUES(2013,'ALEXANDRA','F',18,SYSDATE,DATE'2023-02-12',1,14);

INSERT INTO MEMBERS
VALUES(2014,'MARIA','F',24,SYSDATE,DATE'2023-02-12',4,17);

INSERT INTO MEMBERS
VALUES(2015,'TUDOR','M',30,SYSDATE,DATE '2023-02-12',3,21);

INSERT INTO MEMBERS
VALUES(2016,'ADRIAN','M',39,SYSDATE,DATE'2023-04-12',6,23);

INSERT INTO MEMBERS
VALUES(2017,'MARA','F',27,SYSDATE,DATE'2023-02-12',1,15);

INSERT INTO MEMBERS
VALUES(2018,'VLAD','M',29,SYSDATE,DATE'2024-01-12',11,18);

INSERT INTO MEMBERS
VALUES(2019,'CLAUDIA','F',58,SYSDATE,DATE'2023-02-12',1,20);

INSERT INTO MEMBERS
VALUES(2020,'LUCA','M',31,SYSDATE,DATE '2023-02-12',3,19);

SELECT * FROM MEMBERS;

--TABELA ASOCIATIVA WORKOUT_PLAN
INSERT INTO WORKOUT_PLAN
VALUES(1,9,10,2020);

INSERT INTO WORKOUT_PLAN
VALUES(2,10,3,2002);

INSERT INTO WORKOUT_PLAN
VALUES(3,2,4,2007);

INSERT INTO WORKOUT_PLAN
VALUES(1,6,2,2005);

INSERT INTO WORKOUT_PLAN
VALUES(1,7,2,2005);

INSERT INTO WORKOUT_PLAN
VALUES(1,3,2,2005);

INSERT INTO WORKOUT_PLAN
VALUES(5,4,6,2015);

INSERT INTO WORKOUT_PLAN
VALUES(7,3,8,2009);

INSERT INTO WORKOUT_PLAN
VALUES(7,5,5,2018);

INSERT INTO WORKOUT_PLAN
VALUES(6,1,1,2006);

INSERT INTO WORKOUT_PLAN
VALUES(6,1,1,2007); 

INSERT INTO WORKOUT_PLAN
VALUES(6,1,2,2008);

INSERT INTO WORKOUT_PLAN
VALUES(6,1,2,2005);

INSERT INTO WORKOUT_PLAN
VALUES(6,3,2,2004);

INSERT INTO WORKOUT_PLAN
VALUES(2,7,3,2013);

INSERT INTO WORKOUT_PLAN
VALUES(7,5,4,2016);

INSERT INTO WORKOUT_PLAN
VALUES(4,1,1,2011);

INSERT INTO WORKOUT_PLAN
VALUES(4,2,1,2011);

INSERT INTO WORKOUT_PLAN
VALUES(4,3,1,2011);

INSERT INTO WORKOUT_PLAN
VALUES(2,8,2,2003);

INSERT INTO WORKOUT_PLAN
VALUES(5,7,3,2001);

INSERT INTO WORKOUT_PLAN
VALUES(5,6,6,2012);

INSERT INTO WORKOUT_PLAN
VALUES(7,9,5,2006);

INSERT INTO WORKOUT_PLAN
VALUES(3,10,7,2009);

INSERT INTO WORKOUT_PLAN
VALUES(6,5,10,2004);

INSERT INTO WORKOUT_PLAN
VALUES(6,8,10,2020);

INSERT INTO WORKOUT_PLAN
VALUES(6,9,2,2017);

SELECT * FROM WORKOUT_PLAN;

--TABELA ASOCIATIVA BOOKS

INSERT INTO BOOKS
VALUES(2003,1001);

INSERT INTO BOOKS
VALUES(2010,1011);

INSERT INTO BOOKS
VALUES(2004,1002);

INSERT INTO BOOKS
VALUES(2019,1007);

INSERT INTO BOOKS
VALUES(2007,1006);

INSERT INTO BOOKS
VALUES(2020,1005);

INSERT INTO BOOKS
VALUES(2020,1009);

INSERT INTO BOOKS
VALUES(2018,1003);

INSERT INTO BOOKS
VALUES(2012,1010);

INSERT INTO BOOKS
VALUES(2011,1011);

INSERT INTO BOOKS
VALUES(2001,1004);

INSERT INTO BOOKS
VALUES(2008,1012);

INSERT INTO BOOKS
VALUES(2016,1004);

INSERT INTO BOOKS
VALUES(2017,1007);

INSERT INTO BOOKS
VALUES(2015,1012);

INSERT INTO BOOKS
VALUES(2010,1002);

INSERT INTO BOOKS
VALUES(2005,1010);

INSERT INTO BOOKS
VALUES(2010,1001);

INSERT INTO BOOKS
VALUES(2002,1007);

INSERT INTO BOOKS
VALUES(2012,1008);

INSERT INTO BOOKS
VALUES(2018,1003);

INSERT INTO BOOKS
VALUES(2020,1009);

INSERT INTO BOOKS
VALUES(2013,1011);

INSERT INTO BOOKS
VALUES(2019,1006);

INSERT INTO BOOKS
VALUES(2011,1003);

INSERT INTO BOOKS
VALUES(2018,1008);

INSERT INTO BOOKS
VALUES(2015,1010);

INSERT INTO BOOKS
VALUES(2002,1001);


SELECT * FROM BOOKS;

COMMIT;

--TABELA PAYMENTS

INSERT INTO PAYMENTS
VALUES(9001,199,SYSDATE,2001);

INSERT INTO PAYMENTS
VALUES(9002,299,SYSDATE,2002);

INSERT INTO PAYMENTS
VALUES(9003,259,SYSDATE,2003);

INSERT INTO PAYMENTS
VALUES(9004,1990,SYSDATE,2004);

INSERT INTO PAYMENTS
VALUES(9005,2990,SYSDATE,2005);

INSERT INTO PAYMENTS
VALUES(9006,199,SYSDATE,2006);

INSERT INTO PAYMENTS
VALUES(9007,199,SYSDATE,2007);

INSERT INTO PAYMENTS
VALUES(9008,3199,SYSDATE,2008);

INSERT INTO PAYMENTS
VALUES(9009,299,SYSDATE,2009);

INSERT INTO PAYMENTS
VALUES(9010,259,SYSDATE,2010);

INSERT INTO PAYMENTS
VALUES(9011,199,SYSDATE,2011);

INSERT INTO PAYMENTS
VALUES(9012,199,SYSDATE,2012);

SELECT * FROM PAYMENTS;

--EX 6
--Definiti un subprogram prin care sa obtineti nr de membrii antrenati de un instructor
--dat de la tasatura. Tratati toate exceptiile
--folosim functie stocata,un vector si un tablou imbricat

CREATE OR REPLACE type tablou_imbricat is TABLE OF NUMBER(10);
/
CREATE OR REPLACE type vector1 AS VARRAY(10) OF NUMBER(10);
/

CREATE OR REPLACE FUNCTION f1(iid instructors.instructor_id%TYPE)
RETURN number
IS t tablou_imbricat := tablou_imbricat();
    v_id vector1:=vector1();
    x NUMBER(10);
    rez number(10);
    j number(10):=0;
BEGIN
    FOR i in 1..5 LOOP
        v_id.extend;
        SELECT instructor_id into x
        from INSTRUCTORS
        where instructor_id=i;
        v_id(i):=x;

    END LOOP;

       t.extend;
       SELECT DISTINCT member_id bulk collect into t
        FROM WORKOUT_PLAN 
        WHERE instructor_id=iid;
        
    rez:=t.count();
    if rez=0 then
    RAISE NO_DATA_FOUND;
    ELSE
    RETURN rez;
    END IF;
    
    EXCEPTION
    WHEN NO_DATA_FOUND THEN RAISE_APPLICATION_ERROR(-20000,'Nu exista membrii antrenati de instructorul dat');

END f1;
/

BEGIN
DBMS_OUTPUT.PUT_LINE('INSTRUCTORUL DAT ANTRENEAZA '|| f1('&p_id') || ' MEMBRII');
END;
/

drop function f1;

--EX 7
--pentru fiecare sala sa se afiseze lista antrenamentelor ce au loc in acea sala
--folosim o procedura, un ciclu cursor cu subcerere si un curssor parametrizat

CREATE OR REPLACE PROCEDURE p1
is
    CURSOR C (parametru gyms.gym_id%TYPE)IS
    SELECT WORKOUT_NAME,INSTRUCTOR_NAME,MEMBER_NAME
    FROM WORKOUT W, INSTRUCTORS p, MEMBERS M, WORKOUT_PLAN WP
    WHERE WP.GYM_ID=parametru AND W.WORKOUT_ID=WP.WORKOUT_ID AND P.INSTRUCTOR_ID=WP.INSTRUCTOR_ID AND M.MEMBER_ID=WP.MEMBER_ID;

BEGIN
    FOR I IN (SELECT GYM_ID FROM GYMS)LOOP
    DBMS_OUTPUT.PUT_LINE('-------------------------------------');
    DBMS_OUTPUT.PUT_LINE ('GYM '||i.GYM_ID);
    DBMS_OUTPUT.PUT_LINE('-------------------------------------');

        FOR J IN C(i.gym_id) LOOP
            DBMS_OUTPUT.PUT_LINE ('MEMBRUL '|| j.MEMBER_NAME ||' ARE WORKOUT-UL ' || j.WORKOUT_NAME ||' CU INSTRUCTORUL ' || j.INSTRUCTOR_NAME);
        END LOOP;
        
    END LOOP;
END p1;
/

BEGIN
 p1;
END;
/

--EX 8 (GRESIT)
--sa se afiseze numarul de angajati de la fiecare sala
--folosim o functie stocata

CREATE OR REPLACE FUNCTION F2(v_id gyms.gym_id%TYPE)
RETURN NUMBER
is   A NUMBER;
 B NUMBER;
  C NUMBER;
    rez NUMBER;
begin
       SELECT COUNT(distinct G.EMPLOYEE_ID), COUNT(distinct c.EMPLOYEE_ID),COUNT(distinct r.EMPLOYEE_ID)
     into A,B,C
        FROM GUARDIANS G, CLEANING_STAFF C, RECEPTIONISTS R
        WHERE G.GYM_ID=C.GYM_ID AND G.GYM_ID=R.GYM_ID AND G.GYM_ID=V_ID
        group by g.gym_id
        ORDER BY G.GYM_ID ASC;

   rez:=a+b+c;
     
        return rez;
        
EXCEPTION
    WHEN NO_DATA_FOUND THEN RAISE_APPLICATION_ERROR(-20000,'Nu exista aceasta sala');
    WHEN TOO_MANY_ROWS THEN RAISE_APPLICATION_ERROR(-20001,'Exista mai multe sali cu acest id');
    WHEN OTHERS THEN RAISE_APPLICATION_ERROR(-20002,'Alta eroare!');
end f2;
/
DROP FUNCTION F1;


BEGIN
    DBMS_OUTPUT.PUT_LINE('NR DE ANGAJATI ESTE ' || f2('&P'));
END;

select f2 from dual;


SELECT COUNT(distinct G.EMPLOYEE_ID), COUNT(distinct c.EMPLOYEE_ID),COUNT(distinct r.EMPLOYEE_ID)
        FROM GUARDIANS G, CLEANING_STAFF C, RECEPTIONISTS R
        WHERE G.GYM_ID=C.GYM_ID AND G.GYM_ID=R.GYM_ID
        ORDER BY G.GYM_ID ASC;
        
select g.employee_id, c.employee_id, r.employee_id
FROM GUARDIANS G, CLEANING_STAFF C, RECEPTIONISTS R
        WHERE G.GYM_ID=C.GYM_ID AND G.GYM_ID=R.GYM_ID
        ORDER BY G.GYM_ID ASC;
        
        select count(*)
        from employees;

 SELECT COUNT(distinct G.EMPLOYEE_ID), COUNT(distinct c.EMPLOYEE_ID),COUNT(distinct r.EMPLOYEE_ID)
        FROM GUARDIANS G, CLEANING_STAFF C, RECEPTIONISTS R
        WHERE G.GYM_ID=C.GYM_ID AND G.GYM_ID=R.GYM_ID AND G.GYM_ID=3
        group by g.gym_id
        ORDER BY G.GYM_ID ASC;
   
      
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
--TOO MANY ROWS: 10
--NO DATA FOUND: 35
--FOREIGN KEY RESTRICTION : 80
--SUCCES:70

INSERT INTO GYMS
VALUES(10,'STRADA X', 23);

ROLLBACK;
select dimension from gyms where dimension='23';
   
--EX 9 (GRESIT)    
--sa se afiseze numarul de antrenamente pe care il are un membru dat de la tastatura(NUMELE SAU)
--cu un anumit instructor dat de la tastatura(numele sau)
--la o sala data de la tastatura
-- si cu abonament de tip SILVER 1 luna
--folosim procedura stocata SI CURSOR EXPLICIT

CREATE OR REPLACE PROCEDURE P2(m_nume members.member_name%TYPE,
                                i_nume instructors.instructor_name%TYPE,
                                g_id gyms.gym_id%TYPE,
                                ms_nume membership.membership_name%TYPE,
                                ms_id membership.membership_id%TYPE)
is 
    rez NUMBER;
    a_nume members.member_name%TYPE;
     b_nume instructors.instructor_name%TYPE;
    c_id gyms.gym_id%TYPE;
    
    

    CURSOR C IS
        SELECT COUNT(*) 
         FROM WORKOUT_PLAN WK,MEMBERS M ,INSTRUCTORS I,  GYMS G , MEMBERSHIP MS
         WHERE upper(M.MEMBER_NAME)=upper(m_nume) AND WK.MEMBER_ID=M.MEMBER_ID and 
         upper(I.instructor_name)=upper(i_nume) AND WK.INSTRUCTOR_ID=I.INSTRUCTOR_ID AND
         WK.GYM_ID=g_id AND WK.GYM_ID=G.GYM_ID AND 
         upper(MS.MEMBERSHIP_NAME)=upper(ms_nume) AND MS.MEMBERSHIP_ID=ms_id;


 BEGIN
    select member_name 
    into a_nume
    from members
    where member_name=m_nume;
    
    
    OPEN C;
    LOOP
        FETCH C INTO REZ;
        EXIT WHEN C%NOTFOUND;
        
        IF REZ=0 THEN
        DBMS_OUTPUT.PUT_LINE('NU EXISTA ANTRENAMENTE FACUTE ' || M_NUME ||' CU ' || I_NUME || ' IN SALA ' || G_ID);
        ELSE
        
        DBMS_OUTPUT.PUT_LINE('NR DE ANTRENAMENTE FACUTE DE ' || M_NUME ||' CU ' || I_NUME || ' IN SALA ' || G_ID|| ' ESTE ' || REZ);
        END IF;
    END LOOP;
    
    
    EXCEPTION
     WHEN NO_DATA_FOUND THEN RAISE_APPLICATION_ERROR(-20000,'Nu exista acest membru/instructor/sala/abonament');
     WHEN TOO_MANY_ROWS THEN RAISE_APPLICATION_ERROR(-20001,'Exista mai multi membri/instructori/sali/memberships cu acest nume');
    WHEN OTHERS THEN RAISE_APPLICATION_ERROR(-20002,'Alta eroare!');
 END P2;
 /
 BEGIN
    P2('&P_NUME_MEMBRU','&P_NUME_INSTRUCTOR','&P_ID_SALA','SILVER',2);
 END;
 
DROP PROCEDURE P2;


--EX9
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
 -- NO DATA FOUND MEMBRU : CORNEL, MIHAELA , 2 ,2
 --TOO MANY ROWS MEMBRU : LORENA, MIHAELA, 4, 2
 --NO DATA FOUND INSTRUCTOR: ADRIAN, CORNEL, 3, 2
 --TOO MANY ROWS INSTRUCTOR: LUCA, RAUL, 2 2
 --ABONAMENT GRESIT : LILIANA MIHAELA 4 1
 --NO DATA FOUND PLAN: LILIANA ALEX 5 2
 --SUCCES : LILIANA ALEX 1 2
 
 INSERT INTO USERS
VALUES (50, 'RAUL','laurentiu','FJDC ','AKDJ');

INSERT INTO WORKOUT_PLAN
VALUES(6,1,11,2020);
 
INSERT INTO INSTRUCTORS
VALUES(11,'RAUL','0778811323',50);

--EX10
--Definiti un declansator care sa nu permita modificarea tabelei workout_plan in afara intervalului 10:00-16:00

CREATE OR REPLACE TRIGGER trig_lmd1
           BEFORE INSERT OR DELETE OR UPDATE on WORKOUT_PLAN
BEGIN
        IF (TO_CHAR(SYSDATE,'D') = 1) OR (TO_CHAR(SYSDATE,'HH24') NOT BETWEEN 10 AND 16)THEN
            IF INSERTING THEN RAISE_APPLICATION_ERROR(-20001,'Inserarea in WORKOUT_PLAN este permisa doar in timpul programului de lucru!');
            ELSIF DELETING THEN RAISE_APPLICATION_ERROR(-20002,'Stergerea din WORKOUT_PLAN este permisa doar in timpul programului de lucru!');
            ELSE RAISE_APPLICATION_ERROR(-20003,'Actualizarile in WORKOUT_PLAN sunt permise doar in timpul programului de lucru!');
           END IF;
        END IF;
END;
/

DROP TRIGGER trig_lMd1;
INSERT INTO WORKOUT_PLAN
VALUES(1,4,1,2001);
ROLLBACK;

--EX11
--Definiti un declansator care sa nu permita inserarea unui membru a carui varsta este mai mica sau egala cu 15 ani
--si a carui data de incheiere a abonamentului este inaintea inregistrarii sale

CREATE OR REPLACE TRIGGER trig_lmd2
            BEFORE INSERT ON MEMBERS
            FOR EACH ROW
BEGIN
    if :NEW.AGE<=15  THEN
        RAISE_APPLICATION_ERROR(-20910, 'Eroare: Varsta trebuie sa fie peste 15 ani!');
    elsif :NEW.ending_date<:NEW.joining_date THEN
     RAISE_APPLICATION_ERROR(-20900, 'Eroare: ENDING_DATE nu poate fi inaintea JOINING_DATE!');
    Else
    DBMS_OUTPUT.PUT_LINE('INSERARE REUSITA!');
    END IF;
    
END;
/

DROP TRIGGER trig_lMD2;
insert into members
VALUES(2030,'ALINA','F',20,DATE '2026-01-12', DATE'2025-02-12',3,30);

DELETE FROM MEMBERS WHERE MEMBER_NAME='ALINA';

--12
--Definiti un declansator LDD care sa nu permita crearea, stergerea sau modificarea tabelelor pana la dezactivarea acestuia

CREATE OR REPLACE TRIGGER trig_ldd
        BEFORE CREATE OR ALTER OR DROP ON DATABASE
BEGIN
    RAISE_APPLICATION_ERROR(-20000, 'PENTRU A CREA/MODIFICA/STERGE UN TABEL, TREBUIE SA DEZACTIVATI DECLANSATORUL trig_ldd!');
END;
/
DROP TRIGGER trig_lDD;

CREATE TABLE EMP AS ( SELECT * FROM  EMPLOYEES);

--EX13
--definiti un pachet cu toate obiectele proiectului


CREATE OR REPLACE PACKAGE pachet1 AS

        FUNCTION F1
        RETURN NUMBER;
        
        
        FUNCTION F2(v_id gyms.gym_id%TYPE)
        RETURN NUMBER;
        
        PROCEDURE P1;
        
        
         PROCEDURE P2(m_nume members.member_name%TYPE,
                i_nume instructors.instructor_name%TYPE,
                g_id gyms.gym_id%TYPE,
                ms_nume membership.membership_name%TYPE,
                ms_id membership.membership_id%TYPE);
END pachet1;
/
CREATE OR REPLACE PACKAGE BODY pachet1 AS

    FUNCTION F1
    RETURN number 
             IS t tablou_imbricat := tablou_imbricat();
            v_id vector1:=vector1();
            x NUMBER(10);
            rez number(10);
            j number(10):=0;
        BEGIN
            FOR i in 1..5 LOOP
                v_id.extend;
                SELECT instructor_id into x
                from INSTRUCTORS
                where instructor_id=i;
                v_id(i):=x;   
        
            END LOOP;
        
            j:=v_id(3);
        
               t.extend;
               SELECT member_id bulk collect into t
                FROM WORKOUT_PLAN 
                WHERE instructor_id=j;
                
            rez:=t.count();
            RETURN rez;
            
            EXCEPTION
            WHEN NO_DATA_FOUND THEN RAISE_APPLICATION_ERROR(-20000,'Nu exista membrii antrenati de instructorul dat');
            WHEN TOO_MANY_ROWS THEN RAISE_APPLICATION_ERROR(-20001,'Exista mai multi membrii antrenati de mai multi instructori!');
            WHEN OTHERS THEN RAISE_APPLICATION_ERROR(-20002,'Alta eroare!');
        End;
        
    FUNCTION F2(v_id gyms.gym_id%TYPE)
        RETURN NUMBER
        is   A NUMBER;
         B NUMBER;
          C NUMBER;
            rez NUMBER;
        begin
               SELECT COUNT(distinct G.EMPLOYEE_ID), COUNT(distinct c.EMPLOYEE_ID),COUNT(distinct r.EMPLOYEE_ID)
             into A,B,C
                FROM GUARDIANS G, CLEANING_STAFF C, RECEPTIONISTS R
                WHERE G.GYM_ID=C.GYM_ID AND G.GYM_ID=R.GYM_ID AND G.GYM_ID=V_ID
                group by g.gym_id
                ORDER BY G.GYM_ID ASC;
        
           rez:=a+b+c;
             
                return rez;
                
        EXCEPTION
            WHEN NO_DATA_FOUND THEN RAISE_APPLICATION_ERROR(-20000,'Nu exista aceasta sala');
            WHEN TOO_MANY_ROWS THEN RAISE_APPLICATION_ERROR(-20001,'Exista mai multe sali cu acest id');
            WHEN OTHERS THEN RAISE_APPLICATION_ERROR(-20002,'Alta eroare!');
        end;

    PROCEDURE P1
        is
            CURSOR C (parametru gyms.gym_id%TYPE)IS
            SELECT WORKOUT_NAME,INSTRUCTOR_NAME,MEMBER_NAME
            FROM WORKOUT W, INSTRUCTORS p, MEMBERS M, WORKOUT_PLAN WP
            WHERE WP.GYM_ID=parametru AND W.WORKOUT_ID=WP.WORKOUT_ID AND P.INSTRUCTOR_ID=WP.INSTRUCTOR_ID AND M.MEMBER_ID=WP.MEMBER_ID;
        
        BEGIN
            FOR I IN (SELECT GYM_ID FROM GYMS)LOOP
            DBMS_OUTPUT.PUT_LINE('-------------------------------------');
            DBMS_OUTPUT.PUT_LINE ('GYM '||i.GYM_ID);
            DBMS_OUTPUT.PUT_LINE('-------------------------------------');
        
                FOR J IN C(i.gym_id) LOOP
                    DBMS_OUTPUT.PUT_LINE ('MEMBRUL '|| j.MEMBER_NAME ||' ARE WORKOUT-UL ' || j.WORKOUT_NAME ||' CU INSTRUCTORUL ' || j.INSTRUCTOR_NAME);
                END LOOP;
                
            END LOOP;
        END ;
        
        
    PROCEDURE P2(m_nume members.member_name%TYPE,
                i_nume instructors.instructor_name%TYPE,
                g_id gyms.gym_id%TYPE,
                ms_nume membership.membership_name%TYPE,
                ms_id membership.membership_id%TYPE)
        is 
            rez NUMBER;
            a_nume members.member_name%TYPE;
             b_nume instructors.instructor_name%TYPE;
            c_id gyms.gym_id%TYPE;
        
            CURSOR C IS
                SELECT COUNT(*) 
                 FROM WORKOUT_PLAN WK,MEMBERS M ,INSTRUCTORS I,  GYMS G , MEMBERSHIP MS
                 WHERE upper(M.MEMBER_NAME)=upper(m_nume) AND WK.MEMBER_ID=M.MEMBER_ID and 
                 upper(I.instructor_name)=upper(i_nume) AND WK.INSTRUCTOR_ID=I.INSTRUCTOR_ID AND
                 WK.GYM_ID=g_id AND WK.GYM_ID=G.GYM_ID AND 
                 upper(MS.MEMBERSHIP_NAME)=upper(ms_nume) AND MS.MEMBERSHIP_ID=ms_id;
        
        
         BEGIN
            select member_name 
            into a_nume
            from members
            where member_name=m_nume;
            
            
            OPEN C;
            LOOP
                FETCH C INTO REZ;
                EXIT WHEN C%NOTFOUND;
                
                DBMS_OUTPUT.PUT_LINE('NR DE ANTRENAMENTE FACUTE DE ' || M_NUME ||' CU ' || I_NUME || ' IN SALA ' || G_ID|| ' ESTE ' || REZ);
                
            END LOOP;
            
            
            EXCEPTION
             WHEN NO_DATA_FOUND THEN RAISE_APPLICATION_ERROR(-20000,'Nu exista acest membru/instructor/sala/abonament');
             WHEN TOO_MANY_ROWS THEN RAISE_APPLICATION_ERROR(-20001,'Exista mai multi membri/instructori/sali/memberships cu acest nume');
            WHEN OTHERS THEN RAISE_APPLICATION_ERROR(-20002,'Alta eroare!');
         END ;
end pachet1;
/

select pachet1.f1 from dual;

select pachet1.f2(6) from dual;

EXECUTE pachet1.p1;

EXECUTE pachet1.p2('&P_NUME_MEMBRU','&P_NUME_INSTRUCTOR','&P_ID_SALA','SILVER',2);

--EX13 nou

CREATE OR REPLACE PACKAGE ex13 AS
        
        FUNCTION F1(iid instructors.instructor_id%TYPE)
        RETURN NUMBER;
            
        FUNCTION f2_pmm(dim gyms.dimension%TYPE)
        RETURN VARCHAR;
                
        PROCEDURE P1;
          
        PROCEDURE P2 (m_nume members.member_name%TYPE,
                                    i_nume instructors.instructor_name%TYPE,
                                    g_id gyms.gym_id%TYPE,
                                    ms_id membership.membership_id%TYPE);
END ex13;
/

CREATE OR REPLACE PACKAGE BODY EX13 AS

        
    FUNCTION F1(iid instructors.instructor_id%TYPE)
    RETURN number
    IS t tablou_imbricat := tablou_imbricat();
        v_id vector1:=vector1();
        x NUMBER(10);
        rez number(10);
        j number(10):=0;
    BEGIN
        FOR i in 1..5 LOOP
            v_id.extend;
            SELECT instructor_id into x
            from INSTRUCTORS
            where instructor_id=i;
            v_id(i):=x;
    
        END LOOP;
    
           t.extend;
           SELECT DISTINCT member_id bulk collect into t
            FROM WORKOUT_PLAN 
            WHERE instructor_id=iid;
            
        rez:=t.count();
        if rez=0 then
        RAISE NO_DATA_FOUND;
        ELSE
        RETURN rez;
        END IF;
        
        EXCEPTION
        WHEN NO_DATA_FOUND THEN RAISE_APPLICATION_ERROR(-20000,'Nu exista membrii antrenati de instructorul dat');
    
    END f1;
        
    FUNCTION f2_pmm(dim gyms.dimension%TYPE)
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
        
        --DELETE FROM GYMS WHERE DIMENSION=dim;
        RETURN msg;
        
        EXCEPTION
            WHEN EXC1 THEN DBMS_OUTPUT.PUT_LINE('NU AVEM O SALA CU DIMENSIUNEA DATA');
            msg:='NU AVEM O SALA CU DIMENSIUNEA DATA';
            RETURN MSG;
            WHEN EXC2 THEN DBMS_OUTPUT.PUT_LINE('EXISTA MAI MULTE SALI CU DIMENSIUNEA DATA');
             msg:='EXISTA MAI MULTE SALI CU DIMENSIUNEA DATA';
            RETURN MSG;
            WHEN exista_ang THEN DBMS_OUTPUT.PUT_LINE('NU PUTETI STERGE ABONAMENTUL DEOARECE EXISTA MEMBRII CE AU ACEASTA SUBSCRIPTIE');
            msg:='NU PUTETI STERGE ABONAMENTUL DEOARECE EXISTA MEMBRII CE AU ACEASTA SUBSCRIPTIE';
            RETURN MSG;
    END F2_PMM;

    PROCEDURE P1
        is
            CURSOR C (parametru gyms.gym_id%TYPE)IS
            SELECT WORKOUT_NAME,INSTRUCTOR_NAME,MEMBER_NAME
            FROM WORKOUT W, INSTRUCTORS p, MEMBERS M, WORKOUT_PLAN WP
            WHERE WP.GYM_ID=parametru AND W.WORKOUT_ID=WP.WORKOUT_ID AND P.INSTRUCTOR_ID=WP.INSTRUCTOR_ID AND M.MEMBER_ID=WP.MEMBER_ID;
        
        BEGIN
            FOR I IN (SELECT GYM_ID FROM GYMS)LOOP
            DBMS_OUTPUT.PUT_LINE('-------------------------------------');
            DBMS_OUTPUT.PUT_LINE ('GYM '||i.GYM_ID);
            DBMS_OUTPUT.PUT_LINE('-------------------------------------');
        
                FOR J IN C(i.gym_id) LOOP
                    DBMS_OUTPUT.PUT_LINE ('MEMBRUL '|| j.MEMBER_NAME ||' ARE WORKOUT-UL ' || j.WORKOUT_NAME ||' CU INSTRUCTORUL ' || j.INSTRUCTOR_NAME);
                END LOOP;
                
            END LOOP;
        END ;
        
         
    PROCEDURE P2 (m_nume members.member_name%TYPE,
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

end EX13;
/


select ex13.f1('&p_id') from dual;

begin
dbms_output.put_line(ex13.f2_pmm('&p_dim'));
end; 


EXECUTE ex13.p1;

EXECUTE ex13.p2('&P_NUME_MEMBRU','&P_NUME_INSTRUCTOR','&P_ID_SALA','&p_id_membership');

drop package ex13;



--14 EASY PACHET CARE INCLUDE MINIM 2 TIPurI DE DATE COMPLEXE, 2 FUNCTII, 2 PROCEDURI
--definiti un pachet care sa

CREATE OR REPLACE PACKAGE pachet2 is
    type user_details is record(
        u_id  users.user_id%TYPE,
        f_name users.first_name%TYPE,
        m_id members.member_id%TYPE);
        
    type workouts is record(
        m_name members.member_name%TYPE,
        w_name workout.workout_name%TYPE,
        i_name instructors.instructor_name%TYPE,
        g_id NUMBER(10));
        
    FUNCTION get_member_name (mid  members.member_id%TYPE)
    return VARCHAR;
    
    FUNCTION get_instructor_name (iid  instructors.instructor_name%TYPE)
    return VARCHAR;
    
    FUNCTION get_workout_name (wid  workout.workout_name%TYPE)
    return VARCHAR;
    
    PROCEDURE add_workout_plan(gid gyms.gym_id%TYPE,
                                wid workout.workout_id%TYPE,
                                iid instructors.instructor_id%TYPE,
                                mid members.member_id%TYPE);
        
    PROCEDURE modify_payment(pid payments.payment_id%TYPE,
                            am payments.amount%TYPE,
                            m_id members.member_id%TYPE,
                            new_am payments.amount%TYPE
                            );
 
 
 END pachet2;
 /
 
 DROP PACKAGE pachet2;
 
 CREATE OR REPLACE PACKAGE BODY pachet2 IS
        vu user_details;
        vw workouts;
        
 FUNCTION get_member_name (mid  members.member_id%TYPE)
    return VARCHAR is nume varchar(20);
         
         BEGIN
         
         SELECT MEMBER_NAME INTO nume
         FROM MEMBERS
         WHERE MEMBER_ID=mid;
         
         return nume;
         
         end;
    FUNCTION get_instructor_name (iid  instructors.instructor_name%TYPE)
    return VARCHAR is nume varchar(20);
         
         BEGIN
         
         SELECT instructor_name INTO nume
         FROM INSTRUCTORS
         WHERE INSTRUCTOR_ID=iid;
         
         return nume;
         
         end;
         
 FUNCTION get_workout_name (wid  workout.workout_name%TYPE)
    return VARCHAR is nume varchar(20);
         
         BEGIN
         
         SELECT workout_name INTO nume
         FROM WORKOUT
         WHERE WORKOUT_ID=wid;
         
         return nume;
         
         end;
         
   PROCEDURE add_workout_plan(gid gyms.gym_id%TYPE,
                                wid workout.workout_id%TYPE,
                                iid instructors.instructor_id%TYPE,
                                mid members.member_id%TYPE) is
    
    BEGIN
        vw.m_name:=get_member_name(2001);
        vw.w_name:=get_workout_name(4);
         vw.i_name:=get_instructor_name(10);
          vw.g_id:=6;
    
    DBMS_OUTPUT.PUT_LINE('PLANUL DE ANTRENAMENT A FOST ADAUGAT');
    DBMS_OUTPUT.PUT_LINE(vw.m_name || ' FACE ' || vw.w_name ||' CU INSTRUCTORUL ' || vw.i_name|| ' IN SALA '|| vw.g_id);
    END add_workout_plan;
    
     PROCEDURE modify_payment(pid payments.payment_id%TYPE,
                            am payments.amount%TYPE,
                            m_id members.member_id%TYPE,
                            new_am payments.amount%TYPE) IS
    BEGIN
   
        update payments 
        set
        amount=new_am
        where payment_id=pid;
        
    DBMS_OUTPUT.PUT_LINE('plata cu id-ul ' || pid ||' cu valoarea ' || am|| ' a fost modficata');
    END modify_payment;
 
 END pachet2;
 /
 
 drop package body pachet2;
 
 execute pachet2.add_workout_plan(6,7,10,2001);
 
 execute pachet2.modify_payment(9001,199,2001,250);
 
 
 
 DECLARE
  a_nume members.member_name%TYPE;
  a_nume2 NUMBER;
  exc exception;
  exc2 exception;
 BEGIN
  select count(member_name)
    into a_nume2
    from members
    where member_name=m_nume;
    
    if a_nume2=0 then
    RAISE EXC;
    ELSIF a_nume2>=2 then
    raise exc2;
    end if;
 
 
    EXCEPTION
    WHEN EXC THEN DBMS_OUTPUT.PUT_LINE('NU AVEM MEMBRII CU NUMELE DAT');
    WHEN EXC2 THEN DBMS_OUTPUT.PUT_LINE('Avem mai multi MEMBRII CU NUMELE DAT');
 END;


--EX14 
-- facem un pachet care sa afiseze adresele salilor de fitness in care
-- se antreneaza membrii clubului
-- input : nume membru, nume instructor, nume workout

-- tabel indexat pt a tine evidenta antrenamentelor (workout_plan)
-- tabel imbricat pt a tine evidenta salilor (gyms)

-- 3 functii : get_member_id, get_instructor_id , get_workout_id
-- 2 proceduri : get_workout_plan, show_gym

CREATE OR REPLACE PACKAGE pachet as
    TYPE tip_tabel_workout_plan IS TABLE OF workout_plan%ROWTYPE INDEX BY PLS_INTEGER;
    tabel_wk tip_tabel_workout_plan;
    
    TYPE tip_tabel_sali IS TABLE OF gyms.gym_id%TYPE;
    tabel_gym tip_tabel_sali := tip_tabel_sali();
    
    FUNCTION get_member_id (m_name members.member_name%TYPE)
        RETURN members.member_id%TYPE;
        
    FUNCTION get_instructor_id (i_name instructors.instructor_name%TYPE)
        RETURN instructors.instructor_id%TYPE;
    
    FUNCTION get_workout_id (wk_name workout.workout_name%TYPE)
        RETURN workout.workout_id%TYPE;
        
    PROCEDURE get_workout_plan ( m_name members.member_name%TYPE,
                                i_name instructors.instructor_name%TYPE,
                                wk_name workout.workout_name%TYPE);
                                
    PROCEDURE show_gym (g_id gyms.gym_id%TYPE);
    
end pachet;
/

CREATE OR REPLACE PACKAGE BODY pachet as
      FUNCTION get_member_id (m_name members.member_name%TYPE)
        RETURN members.member_id%TYPE AS
                v_id members.member_id%TYPE;
                nr NUMBER(10):=0;
    
        BEGIN
            SELECT COUNT(MEMBER_ID)
            INTO NR
            FROM MEMBERS
            WHERE UPPER(MEMBER_NAME)=UPPER(M_NAME);
            
            IF NR=0 THEN
               DBMS_OUTPUT.PUT_LINE('NU EXISTA MEMBRII CU NUMELE DAT');
            ELSIF NR>1 THEN 
                DBMS_OUTPUT.PUT_LINE('EXISTA MAI MULTI MEMBRII CU NUMELE DAT');
            ELSE
                SELECT MEMBER_ID
                INTO V_ID
                FROM MEMBERS
                WHERE UPPER(MEMBER_NAME)=UPPER(M_NAME);
                
                RETURN V_ID;
                
            END IF;
            
        END get_member_id;
        
        
        FUNCTION get_instructor_id (i_name instructors.instructor_name%TYPE)
        RETURN instructors.instructor_ID%TYPE AS
                v_id instructors.instructor_ID%TYPE;
                nr NUMBER(10):=0;
        BEGIN
            SELECT COUNT(instructor_id)
            INTO NR
            FROM instructors
            WHERE UPPER(instructor_name)=UPPER(i_name);
            
            IF NR=0 THEN
                DBMS_OUTPUT.PUT_LINE('NU EXISTA INSTRUCTORI CU NUMELE DAT');
            ELSIF NR>1 THEN 
                DBMS_OUTPUT.PUT_LINE('EXISTA MAI MULTI INSTRUCTORI CU NUMELE DAT');
            ELSE
                SELECT instructor_id
                INTO V_ID
                FROM instructors
                WHERE UPPER(instructor_name)=UPPER(i_name);
                
                RETURN V_ID;
                
            END IF;
            
        END get_instructor_id;
        
        
        FUNCTION get_workout_id (wk_name workout.workout_name%TYPE)
        RETURN workout.workout_id%TYPE AS
                v_id workout.workout_ID%TYPE;
                nr NUMBER(10):=0;

        BEGIN
            SELECT COUNT(workout_id)
            INTO NR
            FROM WORKOUT
            WHERE UPPER(workout_name)=UPPER(wk_name);
            
            IF NR=0 THEN
                DBMS_OUTPUT.PUT_LINE('NU EXISTA WORKOUT CU NUMELE DAT');
            ELSIF NR>1 THEN 
                 DBMS_OUTPUT.PUT_LINE('EXISTA MAI MULTE WORKOUT-URI CU NUMELE DAT');
            ELSE
                SELECT workout_id
                INTO V_ID
                FROM workout
                WHERE UPPER(workout_name)=UPPER(wk_name);
                
                RETURN V_ID;
                
            END IF;

        END GET_WORKOUT_ID;
        
        PROCEDURE show_gym (g_id gyms.gym_id%TYPE) AS
            adresa gyms.adress%TYPE;
            nr NUMBER(10):=0;
            BEGIN
                SELECT COUNT(*)
                INTO NR
                FROM GYMS
                WHERE GYM_ID=G_ID;
            
                IF NR=0 THEN
                    DBMS_OUTPUT.PUT_LINE('NU EXISTA SALA');
                ELSIF NR>1 THEN
                   DBMS_OUTPUT.PUT_LINE('EXISTA MAI MULTE SALI');
                ELSE
                    SELECT ADRESS
                    INTO ADRESA
                    FROM GYMS 
                    WHERE GYM_ID=G_ID;
                    
                    DBMS_OUTPUT.PUT_LINE(ADRESA);
                END IF;
                
              END show_gym;
        
        
        PROCEDURE get_workout_plan ( m_name members.member_name%TYPE,
                                i_name instructors.instructor_name%TYPE,
                                wk_name workout.workout_name%TYPE) as
                                mid members.member_id%TYPE;
                                iid instructors.instructor_id%TYPE;
                                wkid workout.workout_id%TYPE;
                                gid gyms.gym_id%TYPE;
                                v_wk workout_plan%ROWTYPE;
                                
            BEGIN
                mid:=get_member_id(m_name);
                IF mid!=0 then
                    iid:= get_instructor_id(i_name);
                    wkid:=get_workout_id(wk_name);
                    if iid!=0 and wkid!=0 then
                        SELECT * BULK COLLECT INTO tabel_wk
                        FROM workout_plan
                        where instructor_id=iid and workout_id=wkid;
                        
                        IF tabel_wk.count>0 THEN
                            FOR i in tabel_wk.FIRST..tabel_wk.LAST LOOP
                                GID:=tabel_wk(i).gym_id;
                                tabel_gym.extend;
                                tabel_gym(i):=gid;
                            END LOOP;
                            
                            IF tabel_gym.count>0 THEN
                                FOR I IN tabel_gym.FIRST..tabel_gym.LAST LOOP
                                    show_gym(tabel_gym(i));
                                END LOOP;
                            end if;
                        ELSE 
                            DBMS_OUTPUT.PUT_LINE('NU EXISTA PLANUL DE ANTRENAMENT');
                        END IF;
                    END IF;
                END IF;
        END GET_WORKOUT_PLAN;
end pachet;
/
--NO DATA FOUND MEMBRU : CORNEL MIHAELA SWIMMING
-- TOO MANY ROWS - MEMBRU : LORENA MIHAELA BODYBUILDING
--NO DATA FOUND -- INSTRUCTORI 'LUCA','IOANA','BODYBUILDING'
-- TOO MANY ROWS - INSTRUCTORI 'LUCA','RAUL','BODYBUILDING'
--NO DATA FOUND -- WORKOUT 'LILIANA','MIHAELA','JUMP'
-- TOO MANY ROWS - WORKOUT'LILIANA','MIHAELA','CARDIO'
--NU EXISTA PLANUL DE ANTRENAMENT 'LILIANA','ALEX','BODYBUILDING'
--SUCCESS 'LILIANA','ALEX','SWIMMING'
EXECUTE PACHET.GET_WORKOUT_PLAN('&P_NUME_MEMBRU','&P_NUME_INSTRUCTOR','&P_NUME_WORKOUT');  

drop package pachet;
    
    
    