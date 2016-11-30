-- Created by Da Vinci in 1500

-- STEP 1: TABLE ON WHICH TRIGGER IS PERFROMED

SELECT * FROM TB_EMAIL;

-- STEP 2: CREATE BACKUP TABLE TO STORE VALUES WHEN TRIGGER IS ACTIVATED 

CREATE TABLE TB_EMAIL_BACKUP
(
   EMAILID number(20,2),
   EMAILTYPE varchar(255),
   EMAIL varchar(255),
   PERSONID number(20,2)
);


-- VIEW CREATED TABLE

SELECT * FROM TB_EMAIL_BACKUP;

-- STEP 3: CREATE TRIGGER 
/*Trigger is activated when a delete operation is performed on a row in tb_email, 
the deleted row is then stored in the backup table tb_email_backup */

CREATE OR REPLACE TRIGGER EMAIL_BACKUP
       before DELETE
            ON TB_EMAIL
            FOR EACH ROW
        BEGIN
           -- Insert record into backup table
          INSERT INTO TB_EMAIL_BACKUP  (EMAILID, EMAILTYPE, EMAIL, PERSONID)
                               VALUES ( :old.EMAIL_ID, :old.EMA_TYPE, :old.EMA_EMAIL, :old.PERSON_ID);                                                      
       END;
       
-- STEP 4: PERFROM A DELETE OPERATION ON TB_EMAIL TO CHECK FOR TRIGGER

DELETE FROM TB_EMAIL WHERE EMAIL_ID = 645;

-- VALUE ADDED TO TB_EMAIL_BACKUP

SELECT * FROM TB_EMAIL_BACKUP;








