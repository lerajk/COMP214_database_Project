-- Created by Da Vinci in 1500

-- CURRENT TABLES
select * from tb_address;
select * from tb_email;
select * from tb_person;
select * from tb_phone;
select * from tb_user_1; 


-- FUNCTION ONE FOR PROJECT

-- STEP 1: TABLE ON WHICH THE FUNCTION IS BEING USED ON 

select * from tb_phone;

-- STEP 2: QUERY USED FOR FUNCTION (Retrives the # of phone numbers a person has based on person_id)
select person_id, count(pho_number) TOTAL from tb_phone group by person_id having person_id = 537;

-- STEP 3: CREATE FUNCTION 
CREATE OR REPLACE
FUNCTION PHONE_NUMBERS
  (PERSONID IN NUMBER)
  RETURN NUMBER
  IS
  PHONENUM NUMBER(10,2);
BEGIN
    FOR OBJ IN (select person_id, count(pho_number) TOTAL from tb_phone group by person_id having person_id = PERSONID) LOOP 
    PHONENUM := OBJ.TOTAL;
    END LOOP;
  RETURN PHONENUM;
END;

-- STEP 4: RUNNING FUNCTION THROUGH ANONYMOUS BLOCK
DECLARE
  RETURNVALUE NUMBER(10,2);
BEGIN
-- PERSON_ID CAN BE ANY VALUE THAT IS PUT INTO THE FUNCTION TO RETRIEVE THE RESPECTIVE PHONE #s
  RETURNVALUE := PHONE_NUMBERS(529); 
  DBMS_OUTPUT.PUT_LINE(RETURNVALUE);
END;


-- FUNCTION TWO FOR PROJECT

-- STEP 1: TABLE ON WHICH THE FUNCTION IS BEING USED ON 

select * from tb_person;

-- STEP 2: QUERY USED FOR FUNCTION (Returns total records in the tb_person table)

select count(person_id) TOTAL from tb_PERSON;

-- STEP 3: CREATE FUNCTION (TO GET NUMBER OF RECORDS IN THE TB_PERSON TABLE)
CREATE OR REPLACE
FUNCTION PERSON_TOTAL
  RETURN NUMBER
  IS
  PERSONTOT NUMBER(10,2);
BEGIN
    FOR OBJ IN (select count(person_id) TOTAL from tb_PERSON) LOOP 
    PERSONTOT:= OBJ.TOTAL;
     END LOOP;
  RETURN PERSONTOT;
END;


-- STEP 4: RUNNING FUNCTION THROUGH ANONYMOUS BLOCK
DECLARE
  RETURNVALUE NUMBER(10,2);
BEGIN
  RETURNVALUE := PERSON_TOTAL;
  DBMS_OUTPUT.PUT_LINE(RETURNVALUE);
END;







