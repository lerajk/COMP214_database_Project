/* Members:

Andre Luiz Da Motta Passos 
Nguyen luong Huy
Jibin Reji
Leenoy Rajkhowa 

Github Repo for PHP source code: https://github.com/almpassos/comp214
 */


--------------------------------------------------------
--  File created - Wednesday-December-07-2016
--------------------------------------------------------
DROP TABLE "TB_ADDRESS" cascade constraints;
DROP TABLE "TB_EMAIL" cascade constraints;
DROP TABLE "TB_EMAIL_BACKUP" cascade constraints;
DROP TABLE "TB_EVENT" cascade constraints;
DROP TABLE "TB_PERSON" cascade constraints;
DROP TABLE "TB_PHONE" cascade constraints;
DROP TABLE "TB_USER_1" cascade constraints;
DROP SEQUENCE "TB_ADDRESS_ADDRESS_ID_SEQ";
DROP SEQUENCE "TB_EMAIL_EMAIL_ID_SEQ";
DROP SEQUENCE "TB_EVENT_EVENT_ID_SEQ";
DROP SEQUENCE "TB_PERSON_PERSON_ID_SEQ";
DROP SEQUENCE "TB_PHONE_PHONE_ID_SEQ";
DROP SEQUENCE "TB_USER_1_USER_ID_SEQ";
DROP FUNCTION "PERSON_TOTAL";
DROP FUNCTION "PHONE_NUMBERS";
DROP PROCEDURE "INSERT_USER";
DROP PROCEDURE "NEXT_EVENTS";
DROP PROCEDURE "PERSON_FULL_NAME";
--------------------------------------------------------
--  DDL for Sequence TB_ADDRESS_ADDRESS_ID_SEQ
--------------------------------------------------------

   CREATE SEQUENCE  "TB_ADDRESS_ADDRESS_ID_SEQ"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 1 CACHE 20 NOORDER  NOCYCLE  NOPARTITION ;
--------------------------------------------------------
--  DDL for Sequence TB_EMAIL_EMAIL_ID_SEQ
--------------------------------------------------------

   CREATE SEQUENCE  "TB_EMAIL_EMAIL_ID_SEQ"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 1 CACHE 20 NOORDER  NOCYCLE  NOPARTITION ;
--------------------------------------------------------
--  DDL for Sequence TB_EVENT_EVENT_ID_SEQ
--------------------------------------------------------

   CREATE SEQUENCE  "TB_EVENT_EVENT_ID_SEQ"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 1 CACHE 20 NOORDER  NOCYCLE  NOPARTITION ;
--------------------------------------------------------
--  DDL for Sequence TB_PERSON_PERSON_ID_SEQ
--------------------------------------------------------

   CREATE SEQUENCE  "TB_PERSON_PERSON_ID_SEQ"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 1 CACHE 20 NOORDER  NOCYCLE  NOPARTITION ;
--------------------------------------------------------
--  DDL for Sequence TB_PHONE_PHONE_ID_SEQ
--------------------------------------------------------

   CREATE SEQUENCE  "TB_PHONE_PHONE_ID_SEQ"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 21 CACHE 20 NOORDER  NOCYCLE  NOPARTITION ;
--------------------------------------------------------
--  DDL for Sequence TB_USER_1_USER_ID_SEQ
--------------------------------------------------------

   CREATE SEQUENCE  "TB_USER_1_USER_ID_SEQ"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 61 CACHE 20 NOORDER  NOCYCLE  NOPARTITION ;
--------------------------------------------------------
--  DDL for Table TB_ADDRESS
--------------------------------------------------------

  CREATE TABLE "TB_ADDRESS"
   (	"ADDRESS_ID" NUMBER,
	"ADD_TYPE" VARCHAR2(30 BYTE),
	"ADD_ADDRESS" VARCHAR2(80 BYTE),
	"ADD_CITY" VARCHAR2(30 BYTE),
	"ADD_STATE" VARCHAR2(30 BYTE),
	"ADD_COUNTRY" VARCHAR2(30 BYTE),
	"ADD_ZIP" VARCHAR2(30 BYTE),
	"PERSON_ID" NUMBER
   ) SEGMENT CREATION IMMEDIATE
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;

   COMMENT ON COLUMN "TB_ADDRESS"."ADDRESS_ID" IS 'Primary Key';
   COMMENT ON COLUMN "TB_ADDRESS"."ADD_STATE" IS 'State or Province';
   COMMENT ON COLUMN "TB_ADDRESS"."ADD_ZIP" IS 'Zip Code';
   COMMENT ON COLUMN "TB_ADDRESS"."PERSON_ID" IS 'Primary Key';
--------------------------------------------------------
--  DDL for Table TB_EMAIL
--------------------------------------------------------

  CREATE TABLE "TB_EMAIL"
   (	"EMAIL_ID" NUMBER,
	"EMA_TYPE" VARCHAR2(30 BYTE),
	"EMA_EMAIL" VARCHAR2(50 BYTE),
	"PERSON_ID" NUMBER
   ) SEGMENT CREATION IMMEDIATE
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;

   COMMENT ON COLUMN "TB_EMAIL"."EMAIL_ID" IS 'Primary Key';
   COMMENT ON COLUMN "TB_EMAIL"."PERSON_ID" IS 'Primary Key';
--------------------------------------------------------
--  DDL for Table TB_EMAIL_BACKUP
--------------------------------------------------------

  CREATE TABLE "TB_EMAIL_BACKUP"
   (	"EMAILID" NUMBER(20,2),
	"EMAILTYPE" VARCHAR2(255 BYTE),
	"EMAIL" VARCHAR2(255 BYTE),
	"PERSONID" NUMBER(20,2)
   ) SEGMENT CREATION IMMEDIATE
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table TB_EVENT
--------------------------------------------------------

  CREATE TABLE "TB_EVENT"
   (	"EVENT_ID" NUMBER,
	"EVE_NAME" VARCHAR2(80 BYTE),
	"EVE_DATE_BEGIN" DATE,
	"EVE_DATE_END" DATE,
	"EVE_PLACE" VARCHAR2(100 BYTE),
	"EVE_NOTES" VARCHAR2(200 BYTE),
	"USER_ID" NUMBER
   ) SEGMENT CREATION IMMEDIATE
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;

   COMMENT ON COLUMN "TB_EVENT"."EVENT_ID" IS 'Primary ID';
   COMMENT ON COLUMN "TB_EVENT"."EVE_NAME" IS 'Event Name';
   COMMENT ON COLUMN "TB_EVENT"."EVE_DATE_BEGIN" IS 'Begin date';
   COMMENT ON COLUMN "TB_EVENT"."EVE_DATE_END" IS 'End Date';
   COMMENT ON COLUMN "TB_EVENT"."EVE_PLACE" IS 'Event Place';
   COMMENT ON COLUMN "TB_EVENT"."EVE_NOTES" IS 'Event Notes';
   COMMENT ON COLUMN "TB_EVENT"."USER_ID" IS 'Primary Key';
--------------------------------------------------------
--  DDL for Table TB_PERSON
--------------------------------------------------------

  CREATE TABLE "TB_PERSON"
   (	"PERSON_ID" NUMBER,
	"PER_FIRST" VARCHAR2(50 BYTE),
	"PER_MIDDLE" VARCHAR2(50 BYTE),
	"PER_LAST" VARCHAR2(50 BYTE),
	"PER_SEX" CHAR(1 BYTE),
	"PER_SIN" VARCHAR2(30 BYTE),
	"PER_ACTIVE" NUMBER,
	"USER_ID" NUMBER
   ) SEGMENT CREATION IMMEDIATE
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;

   COMMENT ON COLUMN "TB_PERSON"."PERSON_ID" IS 'Primary Key';
   COMMENT ON COLUMN "TB_PERSON"."PER_FIRST" IS 'First Name';
   COMMENT ON COLUMN "TB_PERSON"."PER_MIDDLE" IS 'Middle Name';
   COMMENT ON COLUMN "TB_PERSON"."PER_LAST" IS 'Last name';
   COMMENT ON COLUMN "TB_PERSON"."PER_SIN" IS 'Social Insurance Number';
   COMMENT ON COLUMN "TB_PERSON"."PER_ACTIVE" IS 'Is Active?';
   COMMENT ON COLUMN "TB_PERSON"."USER_ID" IS 'Primary Key';
--------------------------------------------------------
--  DDL for Table TB_PHONE
--------------------------------------------------------

  CREATE TABLE "TB_PHONE"
   (	"PHONE_ID" NUMBER,
	"PHO_TYPE" VARCHAR2(30 BYTE),
	"PHO_NUMBER" VARCHAR2(50 BYTE),
	"PERSON_ID" NUMBER
   ) SEGMENT CREATION IMMEDIATE
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;

   COMMENT ON COLUMN "TB_PHONE"."PHONE_ID" IS 'Primary Key';
   COMMENT ON COLUMN "TB_PHONE"."PHO_NUMBER" IS 'Phone number';
   COMMENT ON COLUMN "TB_PHONE"."PERSON_ID" IS 'Primary Key';
--------------------------------------------------------
--  DDL for Table TB_USER_1
--------------------------------------------------------

  CREATE TABLE "TB_USER_1"
   (	"USER_ID" NUMBER,
	"USE_NAME" VARCHAR2(50 BYTE),
	"USE_LOGIN" VARCHAR2(30 BYTE),
	"USE_PASSWORD" VARCHAR2(80 BYTE),
	"USE_EMAIL" VARCHAR2(40 BYTE),
	"AUTH_KEY" VARCHAR2(80 BYTE),
	"PASSWORD_RESET_TOKEN" VARCHAR2(300 BYTE)
   ) SEGMENT CREATION IMMEDIATE
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;

   COMMENT ON COLUMN "TB_USER_1"."USER_ID" IS 'Primary Key';
   COMMENT ON COLUMN "TB_USER_1"."USE_NAME" IS 'User Name';
   COMMENT ON COLUMN "TB_USER_1"."USE_LOGIN" IS 'Login';
   COMMENT ON COLUMN "TB_USER_1"."USE_PASSWORD" IS 'Password';
   COMMENT ON COLUMN "TB_USER_1"."USE_EMAIL" IS 'Email';
REM INSERTING into TB_ADDRESS
SET DEFINE OFF;
Insert into TB_ADDRESS (ADDRESS_ID,ADD_TYPE,ADD_ADDRESS,ADD_CITY,ADD_STATE,ADD_COUNTRY,ADD_ZIP,PERSON_ID) values (587,'Office','eleifend.egestas@amet.org','Welland','Ontario','Vanada','M6E 6G3',502);
Insert into TB_ADDRESS (ADDRESS_ID,ADD_TYPE,ADD_ADDRESS,ADD_CITY,ADD_STATE,ADD_COUNTRY,ADD_ZIP,PERSON_ID) values (588,'Personal','Nam.porttitor.scelerisque@Aenean.edu','Cobourg','Ontario','Nanada','K0G 1P0',541);
Insert into TB_ADDRESS (ADDRESS_ID,ADD_TYPE,ADD_ADDRESS,ADD_CITY,ADD_STATE,ADD_COUNTRY,ADD_ZIP,PERSON_ID) values (589,'Company','taciti@Donecsollicitudinadipiscing.net','Baie-Saint-Paul','Quebec','Zanada','J6E 4R1',541);
Insert into TB_ADDRESS (ADDRESS_ID,ADD_TYPE,ADD_ADDRESS,ADD_CITY,ADD_STATE,ADD_COUNTRY,ADD_ZIP,PERSON_ID) values (590,'Personal','Pellentesque@per.ca','Alma','Quebec','Danada','G1Z 4R9',535);
Insert into TB_ADDRESS (ADDRESS_ID,ADD_TYPE,ADD_ADDRESS,ADD_CITY,ADD_STATE,ADD_COUNTRY,ADD_ZIP,PERSON_ID) values (591,'Office','risus.Duis@morbi.com','Kelowna','British Columbia','Janada','V7V 7G3',541);
Insert into TB_ADDRESS (ADDRESS_ID,ADD_TYPE,ADD_ADDRESS,ADD_CITY,ADD_STATE,ADD_COUNTRY,ADD_ZIP,PERSON_ID) values (592,'Company','egestas.Aliquam.nec@quamquis.com','Wilmont','Ontario','Kanada','L3R 8E4',523);
Insert into TB_ADDRESS (ADDRESS_ID,ADD_TYPE,ADD_ADDRESS,ADD_CITY,ADD_STATE,ADD_COUNTRY,ADD_ZIP,PERSON_ID) values (593,'Personal','eu.lacus.Quisque@inceptoshymenaeos.org','Cache Creek','British Columbia','Hanada','V7G 5B9',526);
Insert into TB_ADDRESS (ADDRESS_ID,ADD_TYPE,ADD_ADDRESS,ADD_CITY,ADD_STATE,ADD_COUNTRY,ADD_ZIP,PERSON_ID) values (594,'Office','dictum@augueutlacus.ca','Township of Minden Hills','Ontario','Zanada','M6L 7V1',502);
Insert into TB_ADDRESS (ADDRESS_ID,ADD_TYPE,ADD_ADDRESS,ADD_CITY,ADD_STATE,ADD_COUNTRY,ADD_ZIP,PERSON_ID) values (595,'Personal','sagittis.Nullam@erat.com','Terrance','British Columbia','Qanada','V4L 2V9',522);
Insert into TB_ADDRESS (ADDRESS_ID,ADD_TYPE,ADD_ADDRESS,ADD_CITY,ADD_STATE,ADD_COUNTRY,ADD_ZIP,PERSON_ID) values (596,'Personal','vitae@eros.edu','Kawawachikamach','Quebec','Tanada','G8R 5H9',537);
Insert into TB_ADDRESS (ADDRESS_ID,ADD_TYPE,ADD_ADDRESS,ADD_CITY,ADD_STATE,ADD_COUNTRY,ADD_ZIP,PERSON_ID) values (597,'Personal','diam.luctus.lobortis@Curae.net','Minto','Ontario','Banada','L0P 4A7',520);
Insert into TB_ADDRESS (ADDRESS_ID,ADD_TYPE,ADD_ADDRESS,ADD_CITY,ADD_STATE,ADD_COUNTRY,ADD_ZIP,PERSON_ID) values (598,'Company','neque@lacinia.net','Terrance','British Columbia','Banada','V4G 8M7',511);
Insert into TB_ADDRESS (ADDRESS_ID,ADD_TYPE,ADD_ADDRESS,ADD_CITY,ADD_STATE,ADD_COUNTRY,ADD_ZIP,PERSON_ID) values (599,'Company','nunc@tellus.org','Springdale','Newfoundland and Labrador','Zanada','A4V 7T6',526);
Insert into TB_ADDRESS (ADDRESS_ID,ADD_TYPE,ADD_ADDRESS,ADD_CITY,ADD_STATE,ADD_COUNTRY,ADD_ZIP,PERSON_ID) values (600,'Company','mi@dignissimtemporarcu.edu','Montague','Prince Edward Island','Qanada','C3G 9S8',507);
Insert into TB_ADDRESS (ADDRESS_ID,ADD_TYPE,ADD_ADDRESS,ADD_CITY,ADD_STATE,ADD_COUNTRY,ADD_ZIP,PERSON_ID) values (601,'Personal','felis.eget.varius@cursus.org','Côte Saint-Luc','Quebec','Qanada','J9P 0Y6',515);
Insert into TB_ADDRESS (ADDRESS_ID,ADD_TYPE,ADD_ADDRESS,ADD_CITY,ADD_STATE,ADD_COUNTRY,ADD_ZIP,PERSON_ID) values (602,'Company','enim@Maecenaslibero.org','Saint-Prime','Quebec','Manada','G8W 2L4',547);
Insert into TB_ADDRESS (ADDRESS_ID,ADD_TYPE,ADD_ADDRESS,ADD_CITY,ADD_STATE,ADD_COUNTRY,ADD_ZIP,PERSON_ID) values (603,'Office','adipiscing@tellus.net','Shawville','Quebec','Fanada','H4Y 2M7',520);
Insert into TB_ADDRESS (ADDRESS_ID,ADD_TYPE,ADD_ADDRESS,ADD_CITY,ADD_STATE,ADD_COUNTRY,ADD_ZIP,PERSON_ID) values (604,'Office','ornare@nonummyut.ca','Dorval','Quebec','Danada','H6K 6A8',547);
Insert into TB_ADDRESS (ADDRESS_ID,ADD_TYPE,ADD_ADDRESS,ADD_CITY,ADD_STATE,ADD_COUNTRY,ADD_ZIP,PERSON_ID) values (605,'Personal','ut.lacus.Nulla@euaugue.net','Minto','Ontario','Ranada','P5W 8T3',537);
Insert into TB_ADDRESS (ADDRESS_ID,ADD_TYPE,ADD_ADDRESS,ADD_CITY,ADD_STATE,ADD_COUNTRY,ADD_ZIP,PERSON_ID) values (606,'Company','nibh@Phasellusfermentumconvallis.co.uk','Carbonear','Newfoundland and Labrador','Sanada','A5E 3Z2',527);
Insert into TB_ADDRESS (ADDRESS_ID,ADD_TYPE,ADD_ADDRESS,ADD_CITY,ADD_STATE,ADD_COUNTRY,ADD_ZIP,PERSON_ID) values (607,'Company','Cras.dolor@Nam.co.uk','Whitby','Ontario','Canada','N3G 1J0',536);
Insert into TB_ADDRESS (ADDRESS_ID,ADD_TYPE,ADD_ADDRESS,ADD_CITY,ADD_STATE,ADD_COUNTRY,ADD_ZIP,PERSON_ID) values (608,'Personal','Etiam.vestibulum.massa@risusNulla.org','North Bay','Ontario','Xanada','K4C 6N1',530);
Insert into TB_ADDRESS (ADDRESS_ID,ADD_TYPE,ADD_ADDRESS,ADD_CITY,ADD_STATE,ADD_COUNTRY,ADD_ZIP,PERSON_ID) values (609,'Office','quis.pede.Praesent@Class.ca','Richmond','Quebec','Zanada','J7X 7W1',541);
Insert into TB_ADDRESS (ADDRESS_ID,ADD_TYPE,ADD_ADDRESS,ADD_CITY,ADD_STATE,ADD_COUNTRY,ADD_ZIP,PERSON_ID) values (610,'Personal','consequat.auctor@ornareelit.com','Gjoa Haven','Nunavut','Canada','X1X 4Y1',502);
Insert into TB_ADDRESS (ADDRESS_ID,ADD_TYPE,ADD_ADDRESS,ADD_CITY,ADD_STATE,ADD_COUNTRY,ADD_ZIP,PERSON_ID) values (611,'Office','Cras.eget.nisi@luctus.edu','Orilla','Ontario','Vanada','P4Z 8T0',546);
Insert into TB_ADDRESS (ADDRESS_ID,ADD_TYPE,ADD_ADDRESS,ADD_CITY,ADD_STATE,ADD_COUNTRY,ADD_ZIP,PERSON_ID) values (612,'Company','neque.non@auctornonfeugiat.com','Rouyn-Noranda','Quebec','Sanada','G6L 6V1',524);
Insert into TB_ADDRESS (ADDRESS_ID,ADD_TYPE,ADD_ADDRESS,ADD_CITY,ADD_STATE,ADD_COUNTRY,ADD_ZIP,PERSON_ID) values (613,'Company','eleifend@auctor.net','St. Catharines','Ontario','Panada','L1C 0J7',516);
Insert into TB_ADDRESS (ADDRESS_ID,ADD_TYPE,ADD_ADDRESS,ADD_CITY,ADD_STATE,ADD_COUNTRY,ADD_ZIP,PERSON_ID) values (614,'Personal','elit@Sed.net','Pointe-au-Pic','Quebec','Vanada','H9C 4Y2',540);
Insert into TB_ADDRESS (ADDRESS_ID,ADD_TYPE,ADD_ADDRESS,ADD_CITY,ADD_STATE,ADD_COUNTRY,ADD_ZIP,PERSON_ID) values (615,'Personal','sem@eratSed.ca','North Bay','Ontario','Xanada','M7B 7B0',519);
Insert into TB_ADDRESS (ADDRESS_ID,ADD_TYPE,ADD_ADDRESS,ADD_CITY,ADD_STATE,ADD_COUNTRY,ADD_ZIP,PERSON_ID) values (616,'Personal','gravida.mauris.ut@laoreet.net','Annapolis Royal','Nova Scotia','Fanada','B4Z 6S3',518);
Insert into TB_ADDRESS (ADDRESS_ID,ADD_TYPE,ADD_ADDRESS,ADD_CITY,ADD_STATE,ADD_COUNTRY,ADD_ZIP,PERSON_ID) values (617,'Personal','elit.Nulla@auguemalesuada.ca','Estevan','Saskatchewan','Zanada','S1S 6J2',536);
Insert into TB_ADDRESS (ADDRESS_ID,ADD_TYPE,ADD_ADDRESS,ADD_CITY,ADD_STATE,ADD_COUNTRY,ADD_ZIP,PERSON_ID) values (618,'Office','tempor.diam@quisarcu.edu','Shawville','Quebec','Xanada','J7P 7V5',549);
Insert into TB_ADDRESS (ADDRESS_ID,ADD_TYPE,ADD_ADDRESS,ADD_CITY,ADD_STATE,ADD_COUNTRY,ADD_ZIP,PERSON_ID) values (619,'Office','pede.sagittis.augue@egetipsumSuspendisse.co.uk','Eckville','Alberta','Janada','T3G 5K8',518);
Insert into TB_ADDRESS (ADDRESS_ID,ADD_TYPE,ADD_ADDRESS,ADD_CITY,ADD_STATE,ADD_COUNTRY,ADD_ZIP,PERSON_ID) values (620,'Office','Duis@justo.net','Vaughan','Ontario','Ranada','K9E 7A7',526);
Insert into TB_ADDRESS (ADDRESS_ID,ADD_TYPE,ADD_ADDRESS,ADD_CITY,ADD_STATE,ADD_COUNTRY,ADD_ZIP,PERSON_ID) values (621,'Office','nec.mauris@Loremipsumdolor.ca','Rivière-du-Loup','Quebec','Canada','H8E 3Z8',538);
Insert into TB_ADDRESS (ADDRESS_ID,ADD_TYPE,ADD_ADDRESS,ADD_CITY,ADD_STATE,ADD_COUNTRY,ADD_ZIP,PERSON_ID) values (622,'Office','congue@Suspendissedui.org','Stonewall','Manitoba','Qanada','R1Y 9E2',502);
Insert into TB_ADDRESS (ADDRESS_ID,ADD_TYPE,ADD_ADDRESS,ADD_CITY,ADD_STATE,ADD_COUNTRY,ADD_ZIP,PERSON_ID) values (623,'Company','neque.sed.dictum@anteMaecenas.ca','Ajax','Ontario','Hanada','N3Z 3H6',538);
Insert into TB_ADDRESS (ADDRESS_ID,ADD_TYPE,ADD_ADDRESS,ADD_CITY,ADD_STATE,ADD_COUNTRY,ADD_ZIP,PERSON_ID) values (624,'Company','tempus@fermentum.ca','Yellowknife','Northwest Territories','Manada','X3A 1M2',537);
Insert into TB_ADDRESS (ADDRESS_ID,ADD_TYPE,ADD_ADDRESS,ADD_CITY,ADD_STATE,ADD_COUNTRY,ADD_ZIP,PERSON_ID) values (625,'Personal','augue.id@consequatauctor.ca','Provost','Alberta','Nanada','T8X 7Y2',543);
Insert into TB_ADDRESS (ADDRESS_ID,ADD_TYPE,ADD_ADDRESS,ADD_CITY,ADD_STATE,ADD_COUNTRY,ADD_ZIP,PERSON_ID) values (626,'Office','ac.feugiat@Pellentesquehabitantmorbi.co.uk','Daly','Manitoba','Fanada','R5G 1E8',510);
Insert into TB_ADDRESS (ADDRESS_ID,ADD_TYPE,ADD_ADDRESS,ADD_CITY,ADD_STATE,ADD_COUNTRY,ADD_ZIP,PERSON_ID) values (627,'Personal','eu.metus@mattisCraseget.com','Warwick','Ontario','Canada','K3X 7G5',505);
Insert into TB_ADDRESS (ADDRESS_ID,ADD_TYPE,ADD_ADDRESS,ADD_CITY,ADD_STATE,ADD_COUNTRY,ADD_ZIP,PERSON_ID) values (628,'Office','Praesent.eu@Cumsociis.ca','Pointe-au-Pic','Quebec','Ganada','H9L 3A5',518);
Insert into TB_ADDRESS (ADDRESS_ID,ADD_TYPE,ADD_ADDRESS,ADD_CITY,ADD_STATE,ADD_COUNTRY,ADD_ZIP,PERSON_ID) values (629,'Company','eu@tempusscelerisque.com','Wolfville','Nova Scotia','Hanada','B2H 0J5',502);
Insert into TB_ADDRESS (ADDRESS_ID,ADD_TYPE,ADD_ADDRESS,ADD_CITY,ADD_STATE,ADD_COUNTRY,ADD_ZIP,PERSON_ID) values (630,'Personal','Aenean.massa@Suspendissecommodo.edu','Lourdes','Manitoba','Vanada','R3Z 0Y8',526);
Insert into TB_ADDRESS (ADDRESS_ID,ADD_TYPE,ADD_ADDRESS,ADD_CITY,ADD_STATE,ADD_COUNTRY,ADD_ZIP,PERSON_ID) values (631,'Company','enim.commodo@cubiliaCurae.ca','Fortune','Newfoundland and Labrador','Sanada','A5B 1H2',532);
Insert into TB_ADDRESS (ADDRESS_ID,ADD_TYPE,ADD_ADDRESS,ADD_CITY,ADD_STATE,ADD_COUNTRY,ADD_ZIP,PERSON_ID) values (632,'Company','ultrices.Duis@vel.edu','Township of Minden Hills','Ontario','Fanada','L8T 6Y2',524);
Insert into TB_ADDRESS (ADDRESS_ID,ADD_TYPE,ADD_ADDRESS,ADD_CITY,ADD_STATE,ADD_COUNTRY,ADD_ZIP,PERSON_ID) values (634,'Personal','nunc.ullamcorper@Donecnibh.ca','Pointe-Claire','Quebec','Canada','H5V 5X0',502);
Insert into TB_ADDRESS (ADDRESS_ID,ADD_TYPE,ADD_ADDRESS,ADD_CITY,ADD_STATE,ADD_COUNTRY,ADD_ZIP,PERSON_ID) values (635,'Company','Mauris@tempusnon.com','Asbestos','Quebec','Sanada','J3R 9E9',509);
Insert into TB_ADDRESS (ADDRESS_ID,ADD_TYPE,ADD_ADDRESS,ADD_CITY,ADD_STATE,ADD_COUNTRY,ADD_ZIP,PERSON_ID) values (636,'Personal','ultrices.iaculis.odio@turpisnonenim.org','Tofield','Alberta','Hanada','T4J 8T9',528);
Insert into TB_ADDRESS (ADDRESS_ID,ADD_TYPE,ADD_ADDRESS,ADD_CITY,ADD_STATE,ADD_COUNTRY,ADD_ZIP,PERSON_ID) values (637,'Company','magna.Cras.convallis@eros.com','Collines-de-l''Outaouais','Quebec','Lanada','J4Y 6X2',535);
Insert into TB_ADDRESS (ADDRESS_ID,ADD_TYPE,ADD_ADDRESS,ADD_CITY,ADD_STATE,ADD_COUNTRY,ADD_ZIP,PERSON_ID) values (638,'Office','Donec.luctus.aliquet@sociisnatoquepenatibus.com','St. Catharines','Ontario','Canada','N7X 2N6',529);
Insert into TB_ADDRESS (ADDRESS_ID,ADD_TYPE,ADD_ADDRESS,ADD_CITY,ADD_STATE,ADD_COUNTRY,ADD_ZIP,PERSON_ID) values (639,'Company','eu.neque.pellentesque@ligulaconsectetuer.net','Orilla','Ontario','Panada','K8Y 5R9',532);
Insert into TB_ADDRESS (ADDRESS_ID,ADD_TYPE,ADD_ADDRESS,ADD_CITY,ADD_STATE,ADD_COUNTRY,ADD_ZIP,PERSON_ID) values (640,'Company','egestas.Sed.pharetra@tristique.com','Pickering','Ontario','Danada','L6Z 4X6',501);
Insert into TB_ADDRESS (ADDRESS_ID,ADD_TYPE,ADD_ADDRESS,ADD_CITY,ADD_STATE,ADD_COUNTRY,ADD_ZIP,PERSON_ID) values (641,'Company','justo.Praesent.luctus@nisidictum.ca','Oxford County','Ontario','Fanada','L9N 3R7',504);
Insert into TB_ADDRESS (ADDRESS_ID,ADD_TYPE,ADD_ADDRESS,ADD_CITY,ADD_STATE,ADD_COUNTRY,ADD_ZIP,PERSON_ID) values (642,'Company','faucibus@vitae.co.uk','Cobourg','Ontario','Janada','K6N 1V9',519);
Insert into TB_ADDRESS (ADDRESS_ID,ADD_TYPE,ADD_ADDRESS,ADD_CITY,ADD_STATE,ADD_COUNTRY,ADD_ZIP,PERSON_ID) values (643,'Company','hendrerit.id.ante@gravida.ca','St. Catharines','Ontario','Zanada','K5J 7B0',519);
Insert into TB_ADDRESS (ADDRESS_ID,ADD_TYPE,ADD_ADDRESS,ADD_CITY,ADD_STATE,ADD_COUNTRY,ADD_ZIP,PERSON_ID) values (644,'Company','augue.ut@mienim.net','Chetwynd','British Columbia','Yanada','V6W 6S1',509);
Insert into TB_ADDRESS (ADDRESS_ID,ADD_TYPE,ADD_ADDRESS,ADD_CITY,ADD_STATE,ADD_COUNTRY,ADD_ZIP,PERSON_ID) values (645,'Office','Aliquam.tincidunt@Curabitursed.org','Pitt Meadows','British Columbia','Zanada','V4J 8C8',500);
Insert into TB_ADDRESS (ADDRESS_ID,ADD_TYPE,ADD_ADDRESS,ADD_CITY,ADD_STATE,ADD_COUNTRY,ADD_ZIP,PERSON_ID) values (646,'Company','magna@condimentumDonec.org','Saint-Pierre','Quebec','Manada','H7X 8L2',523);
Insert into TB_ADDRESS (ADDRESS_ID,ADD_TYPE,ADD_ADDRESS,ADD_CITY,ADD_STATE,ADD_COUNTRY,ADD_ZIP,PERSON_ID) values (647,'Personal','Cras.eu@dolor.com','Anjou','Quebec','Hanada','G3M 5V8',547);
Insert into TB_ADDRESS (ADDRESS_ID,ADD_TYPE,ADD_ADDRESS,ADD_CITY,ADD_STATE,ADD_COUNTRY,ADD_ZIP,PERSON_ID) values (648,'Office','enim.Mauris@acarcuNunc.com','Aurora','Ontario','Vanada','P7W 2C1',515);
Insert into TB_ADDRESS (ADDRESS_ID,ADD_TYPE,ADD_ADDRESS,ADD_CITY,ADD_STATE,ADD_COUNTRY,ADD_ZIP,PERSON_ID) values (649,'Company','Nulla.interdum@placerat.co.uk','Kitchener','Ontario','Ranada','L3K 1S1',541);
Insert into TB_ADDRESS (ADDRESS_ID,ADD_TYPE,ADD_ADDRESS,ADD_CITY,ADD_STATE,ADD_COUNTRY,ADD_ZIP,PERSON_ID) values (500,'Personal','faucibus.leo.in@sed.ca','Sainte-Flavie','Quebec','Fanada','J6B 4S6',518);
Insert into TB_ADDRESS (ADDRESS_ID,ADD_TYPE,ADD_ADDRESS,ADD_CITY,ADD_STATE,ADD_COUNTRY,ADD_ZIP,PERSON_ID) values (501,'Personal','massa.Integer@DonecfringillaDonec.ca','Orangeville','Ontario','Xanada','K8V 8R4',518);
Insert into TB_ADDRESS (ADDRESS_ID,ADD_TYPE,ADD_ADDRESS,ADD_CITY,ADD_STATE,ADD_COUNTRY,ADD_ZIP,PERSON_ID) values (502,'Office','sapien@necimperdiet.co.uk','Montague','Prince Edward Island','Hanada','C3J 8P9',548);
Insert into TB_ADDRESS (ADDRESS_ID,ADD_TYPE,ADD_ADDRESS,ADD_CITY,ADD_STATE,ADD_COUNTRY,ADD_ZIP,PERSON_ID) values (503,'Personal','Aenean.sed.pede@veliteget.org','Duncan','British Columbia','Kanada','V2M 5Z4',547);
Insert into TB_ADDRESS (ADDRESS_ID,ADD_TYPE,ADD_ADDRESS,ADD_CITY,ADD_STATE,ADD_COUNTRY,ADD_ZIP,PERSON_ID) values (504,'Personal','posuere.enim.nisl@sociisnatoque.com','Guelph','Ontario','Kanada','N3Y 8H3',549);
Insert into TB_ADDRESS (ADDRESS_ID,ADD_TYPE,ADD_ADDRESS,ADD_CITY,ADD_STATE,ADD_COUNTRY,ADD_ZIP,PERSON_ID) values (505,'Personal','mi@necligula.com','Iqaluit','Nunavut','Ganada','X2T 9N9',526);
Insert into TB_ADDRESS (ADDRESS_ID,ADD_TYPE,ADD_ADDRESS,ADD_CITY,ADD_STATE,ADD_COUNTRY,ADD_ZIP,PERSON_ID) values (506,'Company','placerat.orci.lacus@enimNunc.com','Coldstream','British Columbia','Qanada','V4B 8W7',531);
Insert into TB_ADDRESS (ADDRESS_ID,ADD_TYPE,ADD_ADDRESS,ADD_CITY,ADD_STATE,ADD_COUNTRY,ADD_ZIP,PERSON_ID) values (507,'Company','cubilia.Curae.Phasellus@pedeblandit.ca','Hearst','Ontario','Fanada','P9A 6V6',512);
Insert into TB_ADDRESS (ADDRESS_ID,ADD_TYPE,ADD_ADDRESS,ADD_CITY,ADD_STATE,ADD_COUNTRY,ADD_ZIP,PERSON_ID) values (508,'Company','montes.nascetur.ridiculus@massaVestibulum.edu','Taber','Alberta','Xanada','T6R 2X2',521);
Insert into TB_ADDRESS (ADDRESS_ID,ADD_TYPE,ADD_ADDRESS,ADD_CITY,ADD_STATE,ADD_COUNTRY,ADD_ZIP,PERSON_ID) values (509,'Office','Mauris.non.dui@magnaDuisdignissim.org','Newmarket','Ontario','Lanada','M9J 5K7',512);
Insert into TB_ADDRESS (ADDRESS_ID,ADD_TYPE,ADD_ADDRESS,ADD_CITY,ADD_STATE,ADD_COUNTRY,ADD_ZIP,PERSON_ID) values (511,'Office','blandit@egestasAliquamnec.net','Gloucester','Ontario','Nanada','K1H 2K4',519);
Insert into TB_ADDRESS (ADDRESS_ID,ADD_TYPE,ADD_ADDRESS,ADD_CITY,ADD_STATE,ADD_COUNTRY,ADD_ZIP,PERSON_ID) values (512,'Office','gravida.mauris.ut@laciniaSedcongue.co.uk','Carstairs','Alberta','Tanada','T1A 7H2',523);
Insert into TB_ADDRESS (ADDRESS_ID,ADD_TYPE,ADD_ADDRESS,ADD_CITY,ADD_STATE,ADD_COUNTRY,ADD_ZIP,PERSON_ID) values (513,'Company','dui@Duisrisus.ca','Kingston','Ontario','Xanada','L3G 5Y8',522);
Insert into TB_ADDRESS (ADDRESS_ID,ADD_TYPE,ADD_ADDRESS,ADD_CITY,ADD_STATE,ADD_COUNTRY,ADD_ZIP,PERSON_ID) values (514,'Office','ac.nulla@duiCraspellentesque.com','Camrose','Alberta','Wanada','T2J 8V0',501);
Insert into TB_ADDRESS (ADDRESS_ID,ADD_TYPE,ADD_ADDRESS,ADD_CITY,ADD_STATE,ADD_COUNTRY,ADD_ZIP,PERSON_ID) values (515,'Company','sit@sodales.edu','Delta','British Columbia','Xanada','V9L 8Z5',539);
Insert into TB_ADDRESS (ADDRESS_ID,ADD_TYPE,ADD_ADDRESS,ADD_CITY,ADD_STATE,ADD_COUNTRY,ADD_ZIP,PERSON_ID) values (516,'Office','interdum.Sed@orciluctus.net','East Gwillimbury','Ontario','Banada','M5G 6W8',543);
Insert into TB_ADDRESS (ADDRESS_ID,ADD_TYPE,ADD_ADDRESS,ADD_CITY,ADD_STATE,ADD_COUNTRY,ADD_ZIP,PERSON_ID) values (517,'Company','Curae.Phasellus@nonmassa.co.uk','Valcourt','Quebec','Xanada','H9Y 0V3',515);
Insert into TB_ADDRESS (ADDRESS_ID,ADD_TYPE,ADD_ADDRESS,ADD_CITY,ADD_STATE,ADD_COUNTRY,ADD_ZIP,PERSON_ID) values (518,'Personal','diam@bibendumullamcorper.co.uk','Beauport','Quebec','Zanada','G5T 0X1',508);
Insert into TB_ADDRESS (ADDRESS_ID,ADD_TYPE,ADD_ADDRESS,ADD_CITY,ADD_STATE,ADD_COUNTRY,ADD_ZIP,PERSON_ID) values (519,'Personal','pede@Nullam.edu','Carbonear','Newfoundland and Labrador','Nanada','A7T 9Z9',516);
Insert into TB_ADDRESS (ADDRESS_ID,ADD_TYPE,ADD_ADDRESS,ADD_CITY,ADD_STATE,ADD_COUNTRY,ADD_ZIP,PERSON_ID) values (520,'Office','Ut.tincidunt.orci@nibhDonec.net','Malahide','Ontario','Canada','L5N 2W3',513);
Insert into TB_ADDRESS (ADDRESS_ID,ADD_TYPE,ADD_ADDRESS,ADD_CITY,ADD_STATE,ADD_COUNTRY,ADD_ZIP,PERSON_ID) values (521,'Company','sit.amet@disparturient.ca','Barrie','Ontario','Vanada','M6V 6K9',524);
Insert into TB_ADDRESS (ADDRESS_ID,ADD_TYPE,ADD_ADDRESS,ADD_CITY,ADD_STATE,ADD_COUNTRY,ADD_ZIP,PERSON_ID) values (522,'Office','sem.molestie@eutellus.ca','Guelph','Ontario','Hanada','K4S 1G3',535);
Insert into TB_ADDRESS (ADDRESS_ID,ADD_TYPE,ADD_ADDRESS,ADD_CITY,ADD_STATE,ADD_COUNTRY,ADD_ZIP,PERSON_ID) values (523,'Company','vulputate.posuere.vulputate@neccursus.org','Midlands','Ontario','Canada','K9Z 0N3',522);
Insert into TB_ADDRESS (ADDRESS_ID,ADD_TYPE,ADD_ADDRESS,ADD_CITY,ADD_STATE,ADD_COUNTRY,ADD_ZIP,PERSON_ID) values (524,'Personal','Nunc@nec.co.uk','Markham','Ontario','Fanada','M3J 2X2',526);
Insert into TB_ADDRESS (ADDRESS_ID,ADD_TYPE,ADD_ADDRESS,ADD_CITY,ADD_STATE,ADD_COUNTRY,ADD_ZIP,PERSON_ID) values (525,'Company','bibendum.Donec@diamSeddiam.org','Westlock','Alberta','Yanada','T2A 0K6',539);
Insert into TB_ADDRESS (ADDRESS_ID,ADD_TYPE,ADD_ADDRESS,ADD_CITY,ADD_STATE,ADD_COUNTRY,ADD_ZIP,PERSON_ID) values (526,'Personal','ultrices.iaculis@feugiatmetus.com','Gloucester','Ontario','Ranada','P7Y 4J8',537);
Insert into TB_ADDRESS (ADDRESS_ID,ADD_TYPE,ADD_ADDRESS,ADD_CITY,ADD_STATE,ADD_COUNTRY,ADD_ZIP,PERSON_ID) values (527,'Company','mattis.velit.justo@Suspendisse.ca','Assiniboia','Saskatchewan','Xanada','S9K 5L6',542);
Insert into TB_ADDRESS (ADDRESS_ID,ADD_TYPE,ADD_ADDRESS,ADD_CITY,ADD_STATE,ADD_COUNTRY,ADD_ZIP,PERSON_ID) values (528,'Personal','ultrices@pede.co.uk','Shawville','Quebec','Ranada','H9B 4T5',524);
Insert into TB_ADDRESS (ADDRESS_ID,ADD_TYPE,ADD_ADDRESS,ADD_CITY,ADD_STATE,ADD_COUNTRY,ADD_ZIP,PERSON_ID) values (529,'Office','Nunc.sed@turpisnonenim.ca','Notre-Dame-du-Nord','Quebec','Lanada','J5H 8W4',506);
Insert into TB_ADDRESS (ADDRESS_ID,ADD_TYPE,ADD_ADDRESS,ADD_CITY,ADD_STATE,ADD_COUNTRY,ADD_ZIP,PERSON_ID) values (530,'Personal','euismod.et.commodo@eteuismodet.edu','Bathurst','New Brunswick','Ranada','E8V 6W7',540);
Insert into TB_ADDRESS (ADDRESS_ID,ADD_TYPE,ADD_ADDRESS,ADD_CITY,ADD_STATE,ADD_COUNTRY,ADD_ZIP,PERSON_ID) values (531,'Personal','dolor@nuncacmattis.org','Terrance','British Columbia','Xanada','V5V 5X4',521);
Insert into TB_ADDRESS (ADDRESS_ID,ADD_TYPE,ADD_ADDRESS,ADD_CITY,ADD_STATE,ADD_COUNTRY,ADD_ZIP,PERSON_ID) values (532,'Office','gravida.Aliquam@orcilobortisaugue.co.uk','LaSalle','Ontario','Yanada','L3H 8W2',509);
Insert into TB_ADDRESS (ADDRESS_ID,ADD_TYPE,ADD_ADDRESS,ADD_CITY,ADD_STATE,ADD_COUNTRY,ADD_ZIP,PERSON_ID) values (533,'Office','aliquet.lobortis.nisi@sapienCrasdolor.net','La Baie','Quebec','Zanada','G7M 0X3',529);
Insert into TB_ADDRESS (ADDRESS_ID,ADD_TYPE,ADD_ADDRESS,ADD_CITY,ADD_STATE,ADD_COUNTRY,ADD_ZIP,PERSON_ID) values (534,'Office','arcu.eu.odio@cubiliaCurae.com','Kapuskasing','Ontario','Nanada','K9Z 8X4',510);
Insert into TB_ADDRESS (ADDRESS_ID,ADD_TYPE,ADD_ADDRESS,ADD_CITY,ADD_STATE,ADD_COUNTRY,ADD_ZIP,PERSON_ID) values (535,'Company','in@tellusjusto.com','Blind River','Ontario','Janada','L5P 8X2',528);
Insert into TB_ADDRESS (ADDRESS_ID,ADD_TYPE,ADD_ADDRESS,ADD_CITY,ADD_STATE,ADD_COUNTRY,ADD_ZIP,PERSON_ID) values (536,'Personal','id@tempor.net','Etobicoke','Ontario','Hanada','P3K 5R0',525);
Insert into TB_ADDRESS (ADDRESS_ID,ADD_TYPE,ADD_ADDRESS,ADD_CITY,ADD_STATE,ADD_COUNTRY,ADD_ZIP,PERSON_ID) values (537,'Personal','tempus@malesuada.net','Daly','Manitoba','Hanada','R2B 7S1',540);
Insert into TB_ADDRESS (ADDRESS_ID,ADD_TYPE,ADD_ADDRESS,ADD_CITY,ADD_STATE,ADD_COUNTRY,ADD_ZIP,PERSON_ID) values (538,'Company','Nulla.facilisi.Sed@arcu.org','Cariboo Regional District','British Columbia','Janada','V6S 4S2',500);
Insert into TB_ADDRESS (ADDRESS_ID,ADD_TYPE,ADD_ADDRESS,ADD_CITY,ADD_STATE,ADD_COUNTRY,ADD_ZIP,PERSON_ID) values (539,'Office','massa.non.ante@lectus.edu','Langford','British Columbia','Canada','V0M 9N9',542);
Insert into TB_ADDRESS (ADDRESS_ID,ADD_TYPE,ADD_ADDRESS,ADD_CITY,ADD_STATE,ADD_COUNTRY,ADD_ZIP,PERSON_ID) values (540,'Office','Nullam.velit.dui@montes.net','Matagami','Quebec','Ranada','G9E 3T1',549);
Insert into TB_ADDRESS (ADDRESS_ID,ADD_TYPE,ADD_ADDRESS,ADD_CITY,ADD_STATE,ADD_COUNTRY,ADD_ZIP,PERSON_ID) values (541,'Company','Nunc@metusurna.ca','Windsor','Ontario','Fanada','M2G 6C5',539);
Insert into TB_ADDRESS (ADDRESS_ID,ADD_TYPE,ADD_ADDRESS,ADD_CITY,ADD_STATE,ADD_COUNTRY,ADD_ZIP,PERSON_ID) values (542,'Company','libero.et@pellentesque.net','East Gwillimbury','Ontario','Ranada','N9P 7Z9',534);
Insert into TB_ADDRESS (ADDRESS_ID,ADD_TYPE,ADD_ADDRESS,ADD_CITY,ADD_STATE,ADD_COUNTRY,ADD_ZIP,PERSON_ID) values (543,'Personal','ullamcorper.Duis@laciniaorci.ca','Newmarket','Ontario','Yanada','N9C 2T4',542);
Insert into TB_ADDRESS (ADDRESS_ID,ADD_TYPE,ADD_ADDRESS,ADD_CITY,ADD_STATE,ADD_COUNTRY,ADD_ZIP,PERSON_ID) values (544,'Office','consectetuer@duiFuscealiquam.edu','Baie-Saint-Paul','Quebec','Nanada','G3E 8Y5',508);
Insert into TB_ADDRESS (ADDRESS_ID,ADD_TYPE,ADD_ADDRESS,ADD_CITY,ADD_STATE,ADD_COUNTRY,ADD_ZIP,PERSON_ID) values (545,'Office','commodo.tincidunt.nibh@tempuseu.edu','Aurora','Ontario','Sanada','K5B 0X9',529);
Insert into TB_ADDRESS (ADDRESS_ID,ADD_TYPE,ADD_ADDRESS,ADD_CITY,ADD_STATE,ADD_COUNTRY,ADD_ZIP,PERSON_ID) values (547,'Personal','eu.arcu@arcueu.com','Langenburg','Saskatchewan','Yanada','S8N 9H4',525);
Insert into TB_ADDRESS (ADDRESS_ID,ADD_TYPE,ADD_ADDRESS,ADD_CITY,ADD_STATE,ADD_COUNTRY,ADD_ZIP,PERSON_ID) values (548,'Personal','sodales@nonlobortisquis.org','Pointe-Claire','Quebec','Ranada','G9H 3W8',514);
Insert into TB_ADDRESS (ADDRESS_ID,ADD_TYPE,ADD_ADDRESS,ADD_CITY,ADD_STATE,ADD_COUNTRY,ADD_ZIP,PERSON_ID) values (549,'Company','massa@massaIntegervitae.net','Pierrefonds','Quebec','Lanada','H1H 9T2',533);
Insert into TB_ADDRESS (ADDRESS_ID,ADD_TYPE,ADD_ADDRESS,ADD_CITY,ADD_STATE,ADD_COUNTRY,ADD_ZIP,PERSON_ID) values (550,'Personal','Donec.consectetuer.mauris@diam.edu','Greater Sudbury','Ontario','Sanada','P1P 4K7',512);
Insert into TB_ADDRESS (ADDRESS_ID,ADD_TYPE,ADD_ADDRESS,ADD_CITY,ADD_STATE,ADD_COUNTRY,ADD_ZIP,PERSON_ID) values (551,'Office','Duis.at@lectus.ca','Minitonas','Manitoba','Yanada','R2S 4A9',516);
Insert into TB_ADDRESS (ADDRESS_ID,ADD_TYPE,ADD_ADDRESS,ADD_CITY,ADD_STATE,ADD_COUNTRY,ADD_ZIP,PERSON_ID) values (552,'Personal','ut.pharetra.sed@fermentummetusAenean.net','Carleton','Quebec','Kanada','H6V 0X1',523);
Insert into TB_ADDRESS (ADDRESS_ID,ADD_TYPE,ADD_ADDRESS,ADD_CITY,ADD_STATE,ADD_COUNTRY,ADD_ZIP,PERSON_ID) values (553,'Office','dolor@adipiscing.ca','Orangeville','Ontario','Vanada','N0J 4L1',548);
Insert into TB_ADDRESS (ADDRESS_ID,ADD_TYPE,ADD_ADDRESS,ADD_CITY,ADD_STATE,ADD_COUNTRY,ADD_ZIP,PERSON_ID) values (554,'Office','tempus@NullafacilisisSuspendisse.ca','Vegreville','Alberta','Vanada','T2B 3P5',503);
Insert into TB_ADDRESS (ADDRESS_ID,ADD_TYPE,ADD_ADDRESS,ADD_CITY,ADD_STATE,ADD_COUNTRY,ADD_ZIP,PERSON_ID) values (555,'Personal','vehicula.et@Integervitaenibh.org','Pitt Meadows','British Columbia','Banada','V4S 8J5',519);
Insert into TB_ADDRESS (ADDRESS_ID,ADD_TYPE,ADD_ADDRESS,ADD_CITY,ADD_STATE,ADD_COUNTRY,ADD_ZIP,PERSON_ID) values (556,'Office','turpis@eratVivamusnisi.edu','Russell','Ontario','Kanada','K7E 2J1',538);
Insert into TB_ADDRESS (ADDRESS_ID,ADD_TYPE,ADD_ADDRESS,ADD_CITY,ADD_STATE,ADD_COUNTRY,ADD_ZIP,PERSON_ID) values (557,'Personal','egestas@vitaesodales.org','North Bay','Ontario','Canada','M7Z 5L0',534);
Insert into TB_ADDRESS (ADDRESS_ID,ADD_TYPE,ADD_ADDRESS,ADD_CITY,ADD_STATE,ADD_COUNTRY,ADD_ZIP,PERSON_ID) values (558,'Office','metus@vitaesodalesnisi.com','Gibsons','British Columbia','Qanada','V7M 4T4',519);
Insert into TB_ADDRESS (ADDRESS_ID,ADD_TYPE,ADD_ADDRESS,ADD_CITY,ADD_STATE,ADD_COUNTRY,ADD_ZIP,PERSON_ID) values (559,'Personal','arcu@velit.com','Thunder Bay','Ontario','Zanada','N5C 8R9',516);
Insert into TB_ADDRESS (ADDRESS_ID,ADD_TYPE,ADD_ADDRESS,ADD_CITY,ADD_STATE,ADD_COUNTRY,ADD_ZIP,PERSON_ID) values (560,'Company','Aliquam.auctor.velit@rutrumnonhendrerit.com','Ottawa-Carleton','Ontario','Vanada','P5R 1G7',539);
Insert into TB_ADDRESS (ADDRESS_ID,ADD_TYPE,ADD_ADDRESS,ADD_CITY,ADD_STATE,ADD_COUNTRY,ADD_ZIP,PERSON_ID) values (561,'Office','eu.ultrices.sit@quam.ca','Cantley','Quebec','Danada','H2T 6L7',530);
Insert into TB_ADDRESS (ADDRESS_ID,ADD_TYPE,ADD_ADDRESS,ADD_CITY,ADD_STATE,ADD_COUNTRY,ADD_ZIP,PERSON_ID) values (562,'Office','at.velit.Cras@fringillaest.org','Brandon','Manitoba','Vanada','R3M 4N9',504);
Insert into TB_ADDRESS (ADDRESS_ID,ADD_TYPE,ADD_ADDRESS,ADD_CITY,ADD_STATE,ADD_COUNTRY,ADD_ZIP,PERSON_ID) values (563,'Personal','ipsum@a.net','Pierrefonds','Quebec','Sanada','G0G 0A4',536);
Insert into TB_ADDRESS (ADDRESS_ID,ADD_TYPE,ADD_ADDRESS,ADD_CITY,ADD_STATE,ADD_COUNTRY,ADD_ZIP,PERSON_ID) values (564,'Office','a.auctor@pharetra.ca','Maple Creek','Saskatchewan','Hanada','S1M 5S6',502);
Insert into TB_ADDRESS (ADDRESS_ID,ADD_TYPE,ADD_ADDRESS,ADD_CITY,ADD_STATE,ADD_COUNTRY,ADD_ZIP,PERSON_ID) values (565,'Office','sed@orcitinciduntadipiscing.co.uk','Ancaster Town','Ontario','Danada','K8S 2W3',532);
Insert into TB_ADDRESS (ADDRESS_ID,ADD_TYPE,ADD_ADDRESS,ADD_CITY,ADD_STATE,ADD_COUNTRY,ADD_ZIP,PERSON_ID) values (566,'Company','a.nunc.In@dui.edu','Wood Buffalo','Alberta','Zanada','T9L 7A6',527);
Insert into TB_ADDRESS (ADDRESS_ID,ADD_TYPE,ADD_ADDRESS,ADD_CITY,ADD_STATE,ADD_COUNTRY,ADD_ZIP,PERSON_ID) values (567,'Company','lacinia.Sed@gravida.org','St. Catharines','Ontario','Lanada','K4P 7E0',533);
Insert into TB_ADDRESS (ADDRESS_ID,ADD_TYPE,ADD_ADDRESS,ADD_CITY,ADD_STATE,ADD_COUNTRY,ADD_ZIP,PERSON_ID) values (568,'Company','tristique@tincidunt.org','Welland','Ontario','Xanada','L3N 4Y2',531);
Insert into TB_ADDRESS (ADDRESS_ID,ADD_TYPE,ADD_ADDRESS,ADD_CITY,ADD_STATE,ADD_COUNTRY,ADD_ZIP,PERSON_ID) values (569,'Office','mattis.Cras@SuspendissesagittisNullam.edu','Outremont','Quebec','Canada','G6H 1K6',518);
Insert into TB_ADDRESS (ADDRESS_ID,ADD_TYPE,ADD_ADDRESS,ADD_CITY,ADD_STATE,ADD_COUNTRY,ADD_ZIP,PERSON_ID) values (570,'Office','sem.mollis@placerataugue.com','Cap-Saint-Ignace','Quebec','Ganada','H7Y 4W2',506);
Insert into TB_ADDRESS (ADDRESS_ID,ADD_TYPE,ADD_ADDRESS,ADD_CITY,ADD_STATE,ADD_COUNTRY,ADD_ZIP,PERSON_ID) values (571,'Office','Pellentesque.ultricies@turpis.edu','Isle-aux-Coudres','Quebec','Janada','J8P 4A7',511);
Insert into TB_ADDRESS (ADDRESS_ID,ADD_TYPE,ADD_ADDRESS,ADD_CITY,ADD_STATE,ADD_COUNTRY,ADD_ZIP,PERSON_ID) values (572,'Personal','Donec@Morbi.org','Rigolet','Newfoundland and Labrador','Panada','A6E 7L1',537);
Insert into TB_ADDRESS (ADDRESS_ID,ADD_TYPE,ADD_ADDRESS,ADD_CITY,ADD_STATE,ADD_COUNTRY,ADD_ZIP,PERSON_ID) values (573,'Personal','sodales.nisi@quamafelis.org','Malahide','Ontario','Yanada','N0P 8T0',537);
Insert into TB_ADDRESS (ADDRESS_ID,ADD_TYPE,ADD_ADDRESS,ADD_CITY,ADD_STATE,ADD_COUNTRY,ADD_ZIP,PERSON_ID) values (574,'Office','euismod@eu.edu','Quinte West','Ontario','Ganada','M2V 2R5',521);
Insert into TB_ADDRESS (ADDRESS_ID,ADD_TYPE,ADD_ADDRESS,ADD_CITY,ADD_STATE,ADD_COUNTRY,ADD_ZIP,PERSON_ID) values (575,'Personal','nunc.risus.varius@nequeNullam.org','Wetaskiwin','Alberta','Tanada','T6R 0J9',524);
Insert into TB_ADDRESS (ADDRESS_ID,ADD_TYPE,ADD_ADDRESS,ADD_CITY,ADD_STATE,ADD_COUNTRY,ADD_ZIP,PERSON_ID) values (576,'Personal','pede.Suspendisse.dui@feugiat.ca','Whitchurch-Stouffville','Ontario','Banada','M9V 5L2',540);
Insert into TB_ADDRESS (ADDRESS_ID,ADD_TYPE,ADD_ADDRESS,ADD_CITY,ADD_STATE,ADD_COUNTRY,ADD_ZIP,PERSON_ID) values (577,'Office','a.mi.fringilla@dignissimtemporarcu.net','Carleton','Quebec','Canada','G8S 7J9',544);
Insert into TB_ADDRESS (ADDRESS_ID,ADD_TYPE,ADD_ADDRESS,ADD_CITY,ADD_STATE,ADD_COUNTRY,ADD_ZIP,PERSON_ID) values (578,'Personal','placerat.orci.lacus@ametfaucibus.net','Namur','Quebec','Wanada','J3R 4K0',530);
Insert into TB_ADDRESS (ADDRESS_ID,ADD_TYPE,ADD_ADDRESS,ADD_CITY,ADD_STATE,ADD_COUNTRY,ADD_ZIP,PERSON_ID) values (579,'Personal','tempus.mauris@accumsanlaoreet.com','Amqui','Quebec','Yanada','G1C 8V1',547);
Insert into TB_ADDRESS (ADDRESS_ID,ADD_TYPE,ADD_ADDRESS,ADD_CITY,ADD_STATE,ADD_COUNTRY,ADD_ZIP,PERSON_ID) values (580,'Company','lorem@sedtortorInteger.edu','Vaughan','Ontario','Panada','L5H 3P7',503);
Insert into TB_ADDRESS (ADDRESS_ID,ADD_TYPE,ADD_ADDRESS,ADD_CITY,ADD_STATE,ADD_COUNTRY,ADD_ZIP,PERSON_ID) values (581,'Company','Phasellus@justonec.ca','Welland','Ontario','Ranada','K3A 6E3',509);
Insert into TB_ADDRESS (ADDRESS_ID,ADD_TYPE,ADD_ADDRESS,ADD_CITY,ADD_STATE,ADD_COUNTRY,ADD_ZIP,PERSON_ID) values (582,'Office','lorem.tristique.aliquet@ligulaeuenim.co.uk','Baie-D''Urfé','Quebec','Kanada','J6J 2Z8',501);
Insert into TB_ADDRESS (ADDRESS_ID,ADD_TYPE,ADD_ADDRESS,ADD_CITY,ADD_STATE,ADD_COUNTRY,ADD_ZIP,PERSON_ID) values (583,'Company','malesuada.augue@eratvolutpat.com','Merritt','British Columbia','Janada','V8R 3L1',524);
Insert into TB_ADDRESS (ADDRESS_ID,ADD_TYPE,ADD_ADDRESS,ADD_CITY,ADD_STATE,ADD_COUNTRY,ADD_ZIP,PERSON_ID) values (584,'Company','sem.ut.dolor@vehicula.org','Charlottetown','Prince Edward Island','Tanada','C9E 9J2',538);
Insert into TB_ADDRESS (ADDRESS_ID,ADD_TYPE,ADD_ADDRESS,ADD_CITY,ADD_STATE,ADD_COUNTRY,ADD_ZIP,PERSON_ID) values (585,'Personal','blandit.viverra.Donec@porttitorvulputateposuere.co.uk','Bruderheim','Alberta','Panada','T8K 4R0',520);
Insert into TB_ADDRESS (ADDRESS_ID,ADD_TYPE,ADD_ADDRESS,ADD_CITY,ADD_STATE,ADD_COUNTRY,ADD_ZIP,PERSON_ID) values (586,'Office','amet.diam.eu@nulla.com','Oxford County','Ontario','Hanada','N3G 3C0',529);
REM INSERTING into TB_EMAIL
SET DEFINE OFF;
Insert into TB_EMAIL (EMAIL_ID,EMA_TYPE,EMA_EMAIL,PERSON_ID) values (647,'Office','at.risus.Nunc@magnaa.com',534);
Insert into TB_EMAIL (EMAIL_ID,EMA_TYPE,EMA_EMAIL,PERSON_ID) values (648,'Office','eleifend.nec.malesuada@tincidunttempusrisus.net',543);
Insert into TB_EMAIL (EMAIL_ID,EMA_TYPE,EMA_EMAIL,PERSON_ID) values (649,'Office','dui.lectus@duiFuscealiquam.org',527);
Insert into TB_EMAIL (EMAIL_ID,EMA_TYPE,EMA_EMAIL,PERSON_ID) values (500,'Office','tristique.senectus.et@congue.edu',538);
Insert into TB_EMAIL (EMAIL_ID,EMA_TYPE,EMA_EMAIL,PERSON_ID) values (501,'Personal','augue@nunc.co.uk',511);
Insert into TB_EMAIL (EMAIL_ID,EMA_TYPE,EMA_EMAIL,PERSON_ID) values (502,'Company','a@Aliquamultrices.ca',537);
Insert into TB_EMAIL (EMAIL_ID,EMA_TYPE,EMA_EMAIL,PERSON_ID) values (503,'Office','mauris.sit.amet@Nuncmauris.org',524);
Insert into TB_EMAIL (EMAIL_ID,EMA_TYPE,EMA_EMAIL,PERSON_ID) values (504,'Company','Etiam.gravida@nuncsed.ca',542);
Insert into TB_EMAIL (EMAIL_ID,EMA_TYPE,EMA_EMAIL,PERSON_ID) values (505,'Personal','adipiscing.elit@lobortisquispede.com',532);
Insert into TB_EMAIL (EMAIL_ID,EMA_TYPE,EMA_EMAIL,PERSON_ID) values (506,'Company','risus.Nulla.eget@Nullafacilisi.co.uk',505);
Insert into TB_EMAIL (EMAIL_ID,EMA_TYPE,EMA_EMAIL,PERSON_ID) values (507,'Company','lacinia.vitae.sodales@tinciduntaliquamarcu.edu',512);
Insert into TB_EMAIL (EMAIL_ID,EMA_TYPE,EMA_EMAIL,PERSON_ID) values (508,'Company','mi.eleifend@purusDuiselementum.org',512);
Insert into TB_EMAIL (EMAIL_ID,EMA_TYPE,EMA_EMAIL,PERSON_ID) values (509,'Personal','tempus@nisisem.co.uk',548);
Insert into TB_EMAIL (EMAIL_ID,EMA_TYPE,EMA_EMAIL,PERSON_ID) values (510,'Office','amet.consectetuer.adipiscing@urna.net',542);
Insert into TB_EMAIL (EMAIL_ID,EMA_TYPE,EMA_EMAIL,PERSON_ID) values (511,'Personal','tristique.senectus.et@neque.co.uk',505);
Insert into TB_EMAIL (EMAIL_ID,EMA_TYPE,EMA_EMAIL,PERSON_ID) values (512,'Personal','orci.consectetuer@ultricesmauris.com',518);
Insert into TB_EMAIL (EMAIL_ID,EMA_TYPE,EMA_EMAIL,PERSON_ID) values (513,'Office','arcu.ac.orci@ultricies.edu',519);
Insert into TB_EMAIL (EMAIL_ID,EMA_TYPE,EMA_EMAIL,PERSON_ID) values (514,'Company','posuere.enim.nisl@ametrisus.com',530);
Insert into TB_EMAIL (EMAIL_ID,EMA_TYPE,EMA_EMAIL,PERSON_ID) values (515,'Company','Sed@Nullasemper.ca',520);
Insert into TB_EMAIL (EMAIL_ID,EMA_TYPE,EMA_EMAIL,PERSON_ID) values (516,'Office','a.facilisis.non@Aenean.co.uk',507);
Insert into TB_EMAIL (EMAIL_ID,EMA_TYPE,EMA_EMAIL,PERSON_ID) values (517,'Personal','aliquam.arcu.Aliquam@purusgravidasagittis.net',523);
Insert into TB_EMAIL (EMAIL_ID,EMA_TYPE,EMA_EMAIL,PERSON_ID) values (518,'Personal','convallis@metus.net',518);
Insert into TB_EMAIL (EMAIL_ID,EMA_TYPE,EMA_EMAIL,PERSON_ID) values (519,'Company','ac.turpis@tempus.net',545);
Insert into TB_EMAIL (EMAIL_ID,EMA_TYPE,EMA_EMAIL,PERSON_ID) values (520,'Company','pharetra.ut@mattisInteger.com',532);
Insert into TB_EMAIL (EMAIL_ID,EMA_TYPE,EMA_EMAIL,PERSON_ID) values (521,'Personal','lacus.Quisque.purus@nequeMorbi.com',531);
Insert into TB_EMAIL (EMAIL_ID,EMA_TYPE,EMA_EMAIL,PERSON_ID) values (522,'Company','pede@litoratorquent.net',513);
Insert into TB_EMAIL (EMAIL_ID,EMA_TYPE,EMA_EMAIL,PERSON_ID) values (523,'Office','feugiat.non.lobortis@nec.edu',521);
Insert into TB_EMAIL (EMAIL_ID,EMA_TYPE,EMA_EMAIL,PERSON_ID) values (524,'Personal','dui.Fusce.diam@euismodac.ca',517);
Insert into TB_EMAIL (EMAIL_ID,EMA_TYPE,EMA_EMAIL,PERSON_ID) values (525,'Company','Nunc.commodo.auctor@non.edu',537);
Insert into TB_EMAIL (EMAIL_ID,EMA_TYPE,EMA_EMAIL,PERSON_ID) values (526,'Personal','ut.molestie.in@malesuadaid.edu',547);
Insert into TB_EMAIL (EMAIL_ID,EMA_TYPE,EMA_EMAIL,PERSON_ID) values (527,'Personal','urna@ultricesmauris.net',519);
Insert into TB_EMAIL (EMAIL_ID,EMA_TYPE,EMA_EMAIL,PERSON_ID) values (528,'Office','Etiam@loremacrisus.edu',517);
Insert into TB_EMAIL (EMAIL_ID,EMA_TYPE,EMA_EMAIL,PERSON_ID) values (529,'Personal','egestas@Phasellus.ca',535);
Insert into TB_EMAIL (EMAIL_ID,EMA_TYPE,EMA_EMAIL,PERSON_ID) values (530,'Company','vitae.mauris.sit@nislelementum.org',532);
Insert into TB_EMAIL (EMAIL_ID,EMA_TYPE,EMA_EMAIL,PERSON_ID) values (531,'Office','purus.in.molestie@sed.co.uk',523);
Insert into TB_EMAIL (EMAIL_ID,EMA_TYPE,EMA_EMAIL,PERSON_ID) values (532,'Personal','Mauris.vel.turpis@vestibulumMaurismagna.co.uk',514);
Insert into TB_EMAIL (EMAIL_ID,EMA_TYPE,EMA_EMAIL,PERSON_ID) values (533,'Office','est.Nunc@DonectinciduntDonec.net',511);
Insert into TB_EMAIL (EMAIL_ID,EMA_TYPE,EMA_EMAIL,PERSON_ID) values (534,'Personal','Aenean.eget.metus@ridiculusmus.ca',542);
Insert into TB_EMAIL (EMAIL_ID,EMA_TYPE,EMA_EMAIL,PERSON_ID) values (535,'Company','dolor.Quisque.tincidunt@sitametmetus.co.uk',512);
Insert into TB_EMAIL (EMAIL_ID,EMA_TYPE,EMA_EMAIL,PERSON_ID) values (536,'Office','cursus.diam@aliquetvel.com',536);
Insert into TB_EMAIL (EMAIL_ID,EMA_TYPE,EMA_EMAIL,PERSON_ID) values (537,'Company','risus@malesuadafames.edu',534);
Insert into TB_EMAIL (EMAIL_ID,EMA_TYPE,EMA_EMAIL,PERSON_ID) values (538,'Office','eget.mollis@erosnon.net',541);
Insert into TB_EMAIL (EMAIL_ID,EMA_TYPE,EMA_EMAIL,PERSON_ID) values (539,'Personal','eget.magna.Suspendisse@pellentesquemassa.co.uk',546);
Insert into TB_EMAIL (EMAIL_ID,EMA_TYPE,EMA_EMAIL,PERSON_ID) values (540,'Office','Nunc.mauris@tortorat.net',518);
Insert into TB_EMAIL (EMAIL_ID,EMA_TYPE,EMA_EMAIL,PERSON_ID) values (541,'Personal','Nullam@turpisIn.org',521);
Insert into TB_EMAIL (EMAIL_ID,EMA_TYPE,EMA_EMAIL,PERSON_ID) values (542,'Company','varius@dictumeleifend.co.uk',543);
Insert into TB_EMAIL (EMAIL_ID,EMA_TYPE,EMA_EMAIL,PERSON_ID) values (543,'Personal','arcu.imperdiet@Nullamnisl.net',520);
Insert into TB_EMAIL (EMAIL_ID,EMA_TYPE,EMA_EMAIL,PERSON_ID) values (544,'Company','ac.mattis.velit@anteVivamus.org',512);
Insert into TB_EMAIL (EMAIL_ID,EMA_TYPE,EMA_EMAIL,PERSON_ID) values (545,'Office','leo.in@anteiaculisnec.com',544);
Insert into TB_EMAIL (EMAIL_ID,EMA_TYPE,EMA_EMAIL,PERSON_ID) values (546,'Personal','mattis.Cras@Craslorem.com',527);
Insert into TB_EMAIL (EMAIL_ID,EMA_TYPE,EMA_EMAIL,PERSON_ID) values (547,'Office','placerat@Sed.ca',524);
Insert into TB_EMAIL (EMAIL_ID,EMA_TYPE,EMA_EMAIL,PERSON_ID) values (548,'Personal','tristique@consectetuer.edu',516);
Insert into TB_EMAIL (EMAIL_ID,EMA_TYPE,EMA_EMAIL,PERSON_ID) values (549,'Office','ultricies.adipiscing.enim@veliteusem.org',532);
Insert into TB_EMAIL (EMAIL_ID,EMA_TYPE,EMA_EMAIL,PERSON_ID) values (550,'Personal','Cum@famesacturpis.org',502);
Insert into TB_EMAIL (EMAIL_ID,EMA_TYPE,EMA_EMAIL,PERSON_ID) values (551,'Office','augue@necmetus.edu',539);
Insert into TB_EMAIL (EMAIL_ID,EMA_TYPE,EMA_EMAIL,PERSON_ID) values (552,'Company','mauris@etrutrumnon.org',549);
Insert into TB_EMAIL (EMAIL_ID,EMA_TYPE,EMA_EMAIL,PERSON_ID) values (553,'Office','orci@lacinia.edu',510);
Insert into TB_EMAIL (EMAIL_ID,EMA_TYPE,EMA_EMAIL,PERSON_ID) values (554,'Office','non.lorem@leo.co.uk',539);
Insert into TB_EMAIL (EMAIL_ID,EMA_TYPE,EMA_EMAIL,PERSON_ID) values (555,'Personal','a.arcu.Sed@variusultricesmauris.net',514);
Insert into TB_EMAIL (EMAIL_ID,EMA_TYPE,EMA_EMAIL,PERSON_ID) values (556,'Company','in.faucibus@adipiscinglacus.ca',529);
Insert into TB_EMAIL (EMAIL_ID,EMA_TYPE,EMA_EMAIL,PERSON_ID) values (557,'Company','Praesent@maurisanunc.net',522);
Insert into TB_EMAIL (EMAIL_ID,EMA_TYPE,EMA_EMAIL,PERSON_ID) values (559,'Office','leo.Vivamus.nibh@auctor.net',502);
Insert into TB_EMAIL (EMAIL_ID,EMA_TYPE,EMA_EMAIL,PERSON_ID) values (560,'Personal','id@dolor.com',547);
Insert into TB_EMAIL (EMAIL_ID,EMA_TYPE,EMA_EMAIL,PERSON_ID) values (561,'Personal','pellentesque.a@vehiculaPellentesque.co.uk',507);
Insert into TB_EMAIL (EMAIL_ID,EMA_TYPE,EMA_EMAIL,PERSON_ID) values (562,'Company','pede.Suspendisse@lectuspedeet.net',544);
Insert into TB_EMAIL (EMAIL_ID,EMA_TYPE,EMA_EMAIL,PERSON_ID) values (563,'Company','enim.Nunc.ut@pharetra.net',503);
Insert into TB_EMAIL (EMAIL_ID,EMA_TYPE,EMA_EMAIL,PERSON_ID) values (564,'Personal','sem.ut@adipiscingligula.net',506);
Insert into TB_EMAIL (EMAIL_ID,EMA_TYPE,EMA_EMAIL,PERSON_ID) values (565,'Personal','Nulla.eget.metus@porttitorscelerisqueneque.org',537);
Insert into TB_EMAIL (EMAIL_ID,EMA_TYPE,EMA_EMAIL,PERSON_ID) values (566,'Company','habitant.morbi.tristique@vellectusCum.net',545);
Insert into TB_EMAIL (EMAIL_ID,EMA_TYPE,EMA_EMAIL,PERSON_ID) values (567,'Office','et.arcu.imperdiet@elitEtiamlaoreet.com',506);
Insert into TB_EMAIL (EMAIL_ID,EMA_TYPE,EMA_EMAIL,PERSON_ID) values (568,'Office','nec@vulputateullamcorper.com',536);
Insert into TB_EMAIL (EMAIL_ID,EMA_TYPE,EMA_EMAIL,PERSON_ID) values (569,'Office','semper.tellus@ultricies.edu',521);
Insert into TB_EMAIL (EMAIL_ID,EMA_TYPE,EMA_EMAIL,PERSON_ID) values (570,'Company','scelerisque.neque.sed@elit.com',529);
Insert into TB_EMAIL (EMAIL_ID,EMA_TYPE,EMA_EMAIL,PERSON_ID) values (571,'Office','tortor.at.risus@facilisisvitaeorci.net',530);
Insert into TB_EMAIL (EMAIL_ID,EMA_TYPE,EMA_EMAIL,PERSON_ID) values (572,'Personal','Quisque@Vivamus.com',549);
Insert into TB_EMAIL (EMAIL_ID,EMA_TYPE,EMA_EMAIL,PERSON_ID) values (573,'Personal','dictum@auctorvelit.edu',532);
Insert into TB_EMAIL (EMAIL_ID,EMA_TYPE,EMA_EMAIL,PERSON_ID) values (574,'Office','sed.libero@velsapien.ca',510);
Insert into TB_EMAIL (EMAIL_ID,EMA_TYPE,EMA_EMAIL,PERSON_ID) values (575,'Personal','montes.nascetur.ridiculus@Fusce.co.uk',508);
Insert into TB_EMAIL (EMAIL_ID,EMA_TYPE,EMA_EMAIL,PERSON_ID) values (576,'Company','nibh@IntegermollisInteger.com',542);
Insert into TB_EMAIL (EMAIL_ID,EMA_TYPE,EMA_EMAIL,PERSON_ID) values (577,'Office','felis.adipiscing@egetipsumDonec.edu',538);
Insert into TB_EMAIL (EMAIL_ID,EMA_TYPE,EMA_EMAIL,PERSON_ID) values (578,'Company','eleifend.egestas@eumetusIn.co.uk',546);
Insert into TB_EMAIL (EMAIL_ID,EMA_TYPE,EMA_EMAIL,PERSON_ID) values (579,'Office','molestie.orci.tincidunt@euenimEtiam.net',522);
Insert into TB_EMAIL (EMAIL_ID,EMA_TYPE,EMA_EMAIL,PERSON_ID) values (580,'Personal','non.dapibus.rutrum@posuereenim.edu',538);
Insert into TB_EMAIL (EMAIL_ID,EMA_TYPE,EMA_EMAIL,PERSON_ID) values (581,'Company','Praesent@Quisqueaclibero.net',545);
Insert into TB_EMAIL (EMAIL_ID,EMA_TYPE,EMA_EMAIL,PERSON_ID) values (582,'Office','metus.eu.erat@Nuncmauris.net',526);
Insert into TB_EMAIL (EMAIL_ID,EMA_TYPE,EMA_EMAIL,PERSON_ID) values (583,'Company','mi.eleifend.egestas@Donec.co.uk',528);
Insert into TB_EMAIL (EMAIL_ID,EMA_TYPE,EMA_EMAIL,PERSON_ID) values (584,'Personal','massa.Vestibulum@PraesentluctusCurabitur.net',511);
Insert into TB_EMAIL (EMAIL_ID,EMA_TYPE,EMA_EMAIL,PERSON_ID) values (585,'Personal','enim@ultriciesdignissim.net',513);
Insert into TB_EMAIL (EMAIL_ID,EMA_TYPE,EMA_EMAIL,PERSON_ID) values (586,'Personal','ultrices.Duis@lectus.org',511);
Insert into TB_EMAIL (EMAIL_ID,EMA_TYPE,EMA_EMAIL,PERSON_ID) values (587,'Office','Donec.est@lobortisClassaptent.com',543);
Insert into TB_EMAIL (EMAIL_ID,EMA_TYPE,EMA_EMAIL,PERSON_ID) values (588,'Office','sollicitudin.commodo@Sed.com',506);
Insert into TB_EMAIL (EMAIL_ID,EMA_TYPE,EMA_EMAIL,PERSON_ID) values (589,'Company','ullamcorper@tincidunt.com',526);
Insert into TB_EMAIL (EMAIL_ID,EMA_TYPE,EMA_EMAIL,PERSON_ID) values (590,'Personal','sapien@miloremvehicula.org',541);
Insert into TB_EMAIL (EMAIL_ID,EMA_TYPE,EMA_EMAIL,PERSON_ID) values (591,'Company','ac.mattis@augue.com',533);
Insert into TB_EMAIL (EMAIL_ID,EMA_TYPE,EMA_EMAIL,PERSON_ID) values (592,'Company','Nunc.pulvinar@nonsapienmolestie.org',516);
Insert into TB_EMAIL (EMAIL_ID,EMA_TYPE,EMA_EMAIL,PERSON_ID) values (593,'Company','pede@Lorem.co.uk',546);
Insert into TB_EMAIL (EMAIL_ID,EMA_TYPE,EMA_EMAIL,PERSON_ID) values (594,'Office','ante.dictum@velitAliquam.com',529);
Insert into TB_EMAIL (EMAIL_ID,EMA_TYPE,EMA_EMAIL,PERSON_ID) values (595,'Office','mauris@purusDuiselementum.com',503);
Insert into TB_EMAIL (EMAIL_ID,EMA_TYPE,EMA_EMAIL,PERSON_ID) values (596,'Company','Donec.consectetuer.mauris@lacusMauris.edu',537);
Insert into TB_EMAIL (EMAIL_ID,EMA_TYPE,EMA_EMAIL,PERSON_ID) values (597,'Company','congue.elit.sed@Morbinon.org',532);
Insert into TB_EMAIL (EMAIL_ID,EMA_TYPE,EMA_EMAIL,PERSON_ID) values (598,'Company','in.sodales.elit@Integervitaenibh.co.uk',533);
Insert into TB_EMAIL (EMAIL_ID,EMA_TYPE,EMA_EMAIL,PERSON_ID) values (599,'Personal','nunc@nulla.org',522);
Insert into TB_EMAIL (EMAIL_ID,EMA_TYPE,EMA_EMAIL,PERSON_ID) values (600,'Personal','gravida.molestie.arcu@risus.edu',523);
Insert into TB_EMAIL (EMAIL_ID,EMA_TYPE,EMA_EMAIL,PERSON_ID) values (601,'Office','montes.nascetur@arcuvel.ca',544);
Insert into TB_EMAIL (EMAIL_ID,EMA_TYPE,EMA_EMAIL,PERSON_ID) values (602,'Office','feugiat.Lorem.ipsum@odioEtiamligula.org',544);
Insert into TB_EMAIL (EMAIL_ID,EMA_TYPE,EMA_EMAIL,PERSON_ID) values (603,'Office','sed.orci@ornareegestas.com',505);
Insert into TB_EMAIL (EMAIL_ID,EMA_TYPE,EMA_EMAIL,PERSON_ID) values (604,'Personal','vehicula@Innecorci.net',500);
Insert into TB_EMAIL (EMAIL_ID,EMA_TYPE,EMA_EMAIL,PERSON_ID) values (605,'Personal','enim@lobortisrisus.edu',521);
Insert into TB_EMAIL (EMAIL_ID,EMA_TYPE,EMA_EMAIL,PERSON_ID) values (606,'Office','a@dictummagnaUt.co.uk',535);
Insert into TB_EMAIL (EMAIL_ID,EMA_TYPE,EMA_EMAIL,PERSON_ID) values (607,'Office','ac@feugiat.net',545);
Insert into TB_EMAIL (EMAIL_ID,EMA_TYPE,EMA_EMAIL,PERSON_ID) values (608,'Office','Quisque.ac.libero@urnanec.co.uk',545);
Insert into TB_EMAIL (EMAIL_ID,EMA_TYPE,EMA_EMAIL,PERSON_ID) values (609,'Office','fringilla.cursus.purus@ultrices.edu',515);
Insert into TB_EMAIL (EMAIL_ID,EMA_TYPE,EMA_EMAIL,PERSON_ID) values (610,'Office','malesuada.fames.ac@egetmetuseu.ca',511);
Insert into TB_EMAIL (EMAIL_ID,EMA_TYPE,EMA_EMAIL,PERSON_ID) values (611,'Company','interdum.Curabitur@Donecporttitor.edu',546);
Insert into TB_EMAIL (EMAIL_ID,EMA_TYPE,EMA_EMAIL,PERSON_ID) values (612,'Office','lorem.ut.aliquam@ultriciesadipiscing.co.uk',547);
Insert into TB_EMAIL (EMAIL_ID,EMA_TYPE,EMA_EMAIL,PERSON_ID) values (613,'Personal','molestie.in.tempus@justo.org',537);
Insert into TB_EMAIL (EMAIL_ID,EMA_TYPE,EMA_EMAIL,PERSON_ID) values (614,'Company','lobortis.tellus@acturpis.com',532);
Insert into TB_EMAIL (EMAIL_ID,EMA_TYPE,EMA_EMAIL,PERSON_ID) values (615,'Personal','non.arcu@commodo.org',508);
Insert into TB_EMAIL (EMAIL_ID,EMA_TYPE,EMA_EMAIL,PERSON_ID) values (616,'Personal','In.scelerisque.scelerisque@Proinvelnisl.net',537);
Insert into TB_EMAIL (EMAIL_ID,EMA_TYPE,EMA_EMAIL,PERSON_ID) values (617,'Office','Donec@orci.org',525);
Insert into TB_EMAIL (EMAIL_ID,EMA_TYPE,EMA_EMAIL,PERSON_ID) values (618,'Personal','libero@Nullasempertellus.ca',542);
Insert into TB_EMAIL (EMAIL_ID,EMA_TYPE,EMA_EMAIL,PERSON_ID) values (619,'Company','metus@Cras.ca',547);
Insert into TB_EMAIL (EMAIL_ID,EMA_TYPE,EMA_EMAIL,PERSON_ID) values (620,'Company','varius.ultrices@iaculisodio.ca',529);
Insert into TB_EMAIL (EMAIL_ID,EMA_TYPE,EMA_EMAIL,PERSON_ID) values (621,'Office','sodales@idmollis.edu',545);
Insert into TB_EMAIL (EMAIL_ID,EMA_TYPE,EMA_EMAIL,PERSON_ID) values (622,'Personal','tempus.scelerisque@ultricesVivamus.co.uk',517);
Insert into TB_EMAIL (EMAIL_ID,EMA_TYPE,EMA_EMAIL,PERSON_ID) values (623,'Office','at.sem@a.com',513);
Insert into TB_EMAIL (EMAIL_ID,EMA_TYPE,EMA_EMAIL,PERSON_ID) values (624,'Personal','Nam.tempor@Integermollis.net',517);
Insert into TB_EMAIL (EMAIL_ID,EMA_TYPE,EMA_EMAIL,PERSON_ID) values (625,'Office','Phasellus.vitae@nibhQuisquenonummy.co.uk',509);
Insert into TB_EMAIL (EMAIL_ID,EMA_TYPE,EMA_EMAIL,PERSON_ID) values (626,'Office','velit.Cras@imperdiet.com',523);
Insert into TB_EMAIL (EMAIL_ID,EMA_TYPE,EMA_EMAIL,PERSON_ID) values (627,'Company','ac.urna.Ut@metusInnec.co.uk',542);
Insert into TB_EMAIL (EMAIL_ID,EMA_TYPE,EMA_EMAIL,PERSON_ID) values (628,'Company','et.rutrum.non@Nuncullamcorper.edu',533);
Insert into TB_EMAIL (EMAIL_ID,EMA_TYPE,EMA_EMAIL,PERSON_ID) values (629,'Company','Aliquam.fringilla@eget.ca',535);
Insert into TB_EMAIL (EMAIL_ID,EMA_TYPE,EMA_EMAIL,PERSON_ID) values (630,'Company','interdum.enim.non@tellus.com',525);
Insert into TB_EMAIL (EMAIL_ID,EMA_TYPE,EMA_EMAIL,PERSON_ID) values (631,'Company','amet.consectetuer.adipiscing@lorem.net',525);
Insert into TB_EMAIL (EMAIL_ID,EMA_TYPE,EMA_EMAIL,PERSON_ID) values (632,'Office','adipiscing.elit.Etiam@mollisDuissit.com',511);
Insert into TB_EMAIL (EMAIL_ID,EMA_TYPE,EMA_EMAIL,PERSON_ID) values (633,'Office','tempor.bibendum.Donec@semperet.ca',524);
Insert into TB_EMAIL (EMAIL_ID,EMA_TYPE,EMA_EMAIL,PERSON_ID) values (634,'Company','lorem@Fusce.ca',504);
Insert into TB_EMAIL (EMAIL_ID,EMA_TYPE,EMA_EMAIL,PERSON_ID) values (635,'Company','non.feugiat@lorem.co.uk',546);
Insert into TB_EMAIL (EMAIL_ID,EMA_TYPE,EMA_EMAIL,PERSON_ID) values (636,'Company','iaculis@mauris.org',510);
Insert into TB_EMAIL (EMAIL_ID,EMA_TYPE,EMA_EMAIL,PERSON_ID) values (637,'Company','semper.dui.lectus@Suspendissealiquet.net',536);
Insert into TB_EMAIL (EMAIL_ID,EMA_TYPE,EMA_EMAIL,PERSON_ID) values (638,'Personal','lectus.quis@fringilla.net',527);
Insert into TB_EMAIL (EMAIL_ID,EMA_TYPE,EMA_EMAIL,PERSON_ID) values (639,'Office','gravida.mauris@atpretiumaliquet.net',504);
Insert into TB_EMAIL (EMAIL_ID,EMA_TYPE,EMA_EMAIL,PERSON_ID) values (640,'Company','euismod@Duiselementumdui.edu',504);
Insert into TB_EMAIL (EMAIL_ID,EMA_TYPE,EMA_EMAIL,PERSON_ID) values (641,'Office','risus.Morbi@orci.com',539);
Insert into TB_EMAIL (EMAIL_ID,EMA_TYPE,EMA_EMAIL,PERSON_ID) values (642,'Company','orci@aliquamiaculislacus.com',509);
Insert into TB_EMAIL (EMAIL_ID,EMA_TYPE,EMA_EMAIL,PERSON_ID) values (643,'Company','risus.odio@Nullasempertellus.co.uk',516);
REM INSERTING into TB_EMAIL_BACKUP
SET DEFINE OFF;
Insert into TB_EMAIL_BACKUP (EMAILID,EMAILTYPE,EMAIL,PERSONID) values (644,'Personal','pellentesque.massa@lectus.net',545);
Insert into TB_EMAIL_BACKUP (EMAILID,EMAILTYPE,EMAIL,PERSONID) values (645,'Personal','Cras.dictum@Duis.ca',519);
REM INSERTING into TB_EVENT
SET DEFINE OFF;
Insert into TB_EVENT (EVENT_ID,EVE_NAME,EVE_DATE_BEGIN,EVE_DATE_END,EVE_PLACE,EVE_NOTES,USER_ID) values (500,'interdum enim non nisi.',to_date('29-DEC-16','DD-MON-RR'),to_date('13-JAN-17','DD-MON-RR'),'628-9351 Non St.',null,503);
Insert into TB_EVENT (EVENT_ID,EVE_NAME,EVE_DATE_BEGIN,EVE_DATE_END,EVE_PLACE,EVE_NOTES,USER_ID) values (501,'Maecenas libero est, congue',to_date('26-DEC-16','DD-MON-RR'),to_date('10-JAN-17','DD-MON-RR'),'P.O. Box 368, 6066 Proin Av.',null,504);
Insert into TB_EVENT (EVENT_ID,EVE_NAME,EVE_DATE_BEGIN,EVE_DATE_END,EVE_PLACE,EVE_NOTES,USER_ID) values (502,'eget, volutpat ornare, facilisis',to_date('17-DEC-16','DD-MON-RR'),to_date('18-FEB-17','DD-MON-RR'),'Ap #707-6211 A Av.',null,502);
Insert into TB_EVENT (EVENT_ID,EVE_NAME,EVE_DATE_BEGIN,EVE_DATE_END,EVE_PLACE,EVE_NOTES,USER_ID) values (503,'sed, hendrerit a, arcu.',to_date('03-DEC-16','DD-MON-RR'),to_date('07-JAN-17','DD-MON-RR'),'571-6316 Arcu. Rd.',null,503);
Insert into TB_EVENT (EVENT_ID,EVE_NAME,EVE_DATE_BEGIN,EVE_DATE_END,EVE_PLACE,EVE_NOTES,USER_ID) values (504,'ut, pellentesque eget, dictum',to_date('30-DEC-16','DD-MON-RR'),to_date('19-FEB-17','DD-MON-RR'),'Ap #874-4895 Erat, Rd.',null,503);
Insert into TB_EVENT (EVENT_ID,EVE_NAME,EVE_DATE_BEGIN,EVE_DATE_END,EVE_PLACE,EVE_NOTES,USER_ID) values (505,'tincidunt tempus risus. Donec',to_date('17-DEC-16','DD-MON-RR'),to_date('10-FEB-17','DD-MON-RR'),'798-3703 Leo. Rd.',null,501);
Insert into TB_EVENT (EVENT_ID,EVE_NAME,EVE_DATE_BEGIN,EVE_DATE_END,EVE_PLACE,EVE_NOTES,USER_ID) values (506,'Mauris vestibulum, neque sed',to_date('17-DEC-16','DD-MON-RR'),to_date('09-FEB-17','DD-MON-RR'),'365-6555 Cras Street',null,500);
Insert into TB_EVENT (EVENT_ID,EVE_NAME,EVE_DATE_BEGIN,EVE_DATE_END,EVE_PLACE,EVE_NOTES,USER_ID) values (507,'at lacus. Quisque purus',to_date('28-DEC-16','DD-MON-RR'),to_date('09-JAN-17','DD-MON-RR'),'5886 A St.',null,504);
Insert into TB_EVENT (EVENT_ID,EVE_NAME,EVE_DATE_BEGIN,EVE_DATE_END,EVE_PLACE,EVE_NOTES,USER_ID) values (508,'Aliquam nisl. Nulla eu',to_date('19-DEC-16','DD-MON-RR'),to_date('18-JAN-17','DD-MON-RR'),'P.O. Box 651, 8143 Id Ave',null,504);
Insert into TB_EVENT (EVENT_ID,EVE_NAME,EVE_DATE_BEGIN,EVE_DATE_END,EVE_PLACE,EVE_NOTES,USER_ID) values (509,'libero et tristique pellentesque,',to_date('02-DEC-16','DD-MON-RR'),to_date('28-JAN-17','DD-MON-RR'),'P.O. Box 704, 9750 Per St.',null,502);
Insert into TB_EVENT (EVENT_ID,EVE_NAME,EVE_DATE_BEGIN,EVE_DATE_END,EVE_PLACE,EVE_NOTES,USER_ID) values (510,'eu arcu. Morbi sit',to_date('16-DEC-16','DD-MON-RR'),to_date('20-FEB-17','DD-MON-RR'),'P.O. Box 674, 2653 Et Av.',null,501);
Insert into TB_EVENT (EVENT_ID,EVE_NAME,EVE_DATE_BEGIN,EVE_DATE_END,EVE_PLACE,EVE_NOTES,USER_ID) values (511,'mattis. Integer eu lacus.',to_date('23-DEC-16','DD-MON-RR'),to_date('20-JAN-17','DD-MON-RR'),'5961 Lectus. Avenue',null,502);
Insert into TB_EVENT (EVENT_ID,EVE_NAME,EVE_DATE_BEGIN,EVE_DATE_END,EVE_PLACE,EVE_NOTES,USER_ID) values (512,'orci luctus et ultrices',to_date('16-DEC-16','DD-MON-RR'),to_date('15-JAN-17','DD-MON-RR'),'Ap #548-5152 Pellentesque Road',null,501);
Insert into TB_EVENT (EVENT_ID,EVE_NAME,EVE_DATE_BEGIN,EVE_DATE_END,EVE_PLACE,EVE_NOTES,USER_ID) values (513,'Donec fringilla. Donec feugiat',to_date('02-DEC-16','DD-MON-RR'),to_date('24-FEB-17','DD-MON-RR'),'Ap #469-6134 Integer Rd.',null,502);
Insert into TB_EVENT (EVENT_ID,EVE_NAME,EVE_DATE_BEGIN,EVE_DATE_END,EVE_PLACE,EVE_NOTES,USER_ID) values (514,'enim consequat purus. Maecenas',to_date('30-DEC-16','DD-MON-RR'),to_date('04-JAN-17','DD-MON-RR'),'P.O. Box 631, 8441 Tempus, St.',null,503);
Insert into TB_EVENT (EVENT_ID,EVE_NAME,EVE_DATE_BEGIN,EVE_DATE_END,EVE_PLACE,EVE_NOTES,USER_ID) values (515,'enim. Mauris quis turpis',to_date('14-DEC-16','DD-MON-RR'),to_date('15-FEB-17','DD-MON-RR'),'645-5845 Ultrices, Rd.',null,504);
Insert into TB_EVENT (EVENT_ID,EVE_NAME,EVE_DATE_BEGIN,EVE_DATE_END,EVE_PLACE,EVE_NOTES,USER_ID) values (516,'Mauris non dui nec',to_date('20-DEC-16','DD-MON-RR'),to_date('20-JAN-17','DD-MON-RR'),'108-8118 Rutrum Rd.',null,502);
Insert into TB_EVENT (EVENT_ID,EVE_NAME,EVE_DATE_BEGIN,EVE_DATE_END,EVE_PLACE,EVE_NOTES,USER_ID) values (517,'gravida sit amet, dapibus',to_date('04-DEC-16','DD-MON-RR'),to_date('10-FEB-17','DD-MON-RR'),'Ap #774-2961 Feugiat Av.',null,504);
Insert into TB_EVENT (EVENT_ID,EVE_NAME,EVE_DATE_BEGIN,EVE_DATE_END,EVE_PLACE,EVE_NOTES,USER_ID) values (518,'Donec egestas. Duis ac',to_date('03-DEC-16','DD-MON-RR'),to_date('14-FEB-17','DD-MON-RR'),'281-9112 Feugiat Rd.',null,500);
Insert into TB_EVENT (EVENT_ID,EVE_NAME,EVE_DATE_BEGIN,EVE_DATE_END,EVE_PLACE,EVE_NOTES,USER_ID) values (519,'nunc sed libero. Proin',to_date('22-DEC-16','DD-MON-RR'),to_date('16-JAN-17','DD-MON-RR'),'8831 Est. Street',null,501);
Insert into TB_EVENT (EVENT_ID,EVE_NAME,EVE_DATE_BEGIN,EVE_DATE_END,EVE_PLACE,EVE_NOTES,USER_ID) values (520,'at sem molestie sodales.',to_date('17-DEC-16','DD-MON-RR'),to_date('19-JAN-17','DD-MON-RR'),'Ap #207-7812 Egestas Rd.',null,500);
Insert into TB_EVENT (EVENT_ID,EVE_NAME,EVE_DATE_BEGIN,EVE_DATE_END,EVE_PLACE,EVE_NOTES,USER_ID) values (521,'varius et, euismod et,',to_date('30-DEC-16','DD-MON-RR'),to_date('08-FEB-17','DD-MON-RR'),'284-286 Lorem Rd.',null,501);
Insert into TB_EVENT (EVENT_ID,EVE_NAME,EVE_DATE_BEGIN,EVE_DATE_END,EVE_PLACE,EVE_NOTES,USER_ID) values (522,'pede. Suspendisse dui. Fusce',to_date('14-DEC-16','DD-MON-RR'),to_date('23-FEB-17','DD-MON-RR'),'P.O. Box 654, 4155 Malesuada Street',null,500);
Insert into TB_EVENT (EVENT_ID,EVE_NAME,EVE_DATE_BEGIN,EVE_DATE_END,EVE_PLACE,EVE_NOTES,USER_ID) values (523,'Integer sem elit, pharetra',to_date('07-DEC-16','DD-MON-RR'),to_date('10-JAN-17','DD-MON-RR'),'3238 In St.',null,502);
Insert into TB_EVENT (EVENT_ID,EVE_NAME,EVE_DATE_BEGIN,EVE_DATE_END,EVE_PLACE,EVE_NOTES,USER_ID) values (524,'rhoncus. Proin nisl sem,',to_date('13-DEC-16','DD-MON-RR'),to_date('12-JAN-17','DD-MON-RR'),'9637 Vitae, St.',null,501);
Insert into TB_EVENT (EVENT_ID,EVE_NAME,EVE_DATE_BEGIN,EVE_DATE_END,EVE_PLACE,EVE_NOTES,USER_ID) values (525,'egestas ligula. Nullam feugiat',to_date('27-DEC-16','DD-MON-RR'),to_date('08-JAN-17','DD-MON-RR'),'P.O. Box 203, 3694 Metus Av.',null,504);
Insert into TB_EVENT (EVENT_ID,EVE_NAME,EVE_DATE_BEGIN,EVE_DATE_END,EVE_PLACE,EVE_NOTES,USER_ID) values (526,'tellus, imperdiet non, vestibulum',to_date('10-DEC-16','DD-MON-RR'),to_date('11-FEB-17','DD-MON-RR'),'Ap #375-1224 Sociis Rd.',null,500);
Insert into TB_EVENT (EVENT_ID,EVE_NAME,EVE_DATE_BEGIN,EVE_DATE_END,EVE_PLACE,EVE_NOTES,USER_ID) values (527,'lacinia mattis. Integer eu',to_date('25-DEC-16','DD-MON-RR'),to_date('17-FEB-17','DD-MON-RR'),'P.O. Box 482, 9074 Cum Rd.',null,504);
Insert into TB_EVENT (EVENT_ID,EVE_NAME,EVE_DATE_BEGIN,EVE_DATE_END,EVE_PLACE,EVE_NOTES,USER_ID) values (528,'Integer in magna. Phasellus',to_date('06-DEC-16','DD-MON-RR'),to_date('01-FEB-17','DD-MON-RR'),'952-2267 Tempor St.',null,501);
Insert into TB_EVENT (EVENT_ID,EVE_NAME,EVE_DATE_BEGIN,EVE_DATE_END,EVE_PLACE,EVE_NOTES,USER_ID) values (529,'tempor, est ac mattis',to_date('24-DEC-16','DD-MON-RR'),to_date('16-JAN-17','DD-MON-RR'),'P.O. Box 176, 7105 Nunc St.',null,504);
Insert into TB_EVENT (EVENT_ID,EVE_NAME,EVE_DATE_BEGIN,EVE_DATE_END,EVE_PLACE,EVE_NOTES,USER_ID) values (530,'nisi a odio semper',to_date('05-DEC-16','DD-MON-RR'),to_date('09-JAN-17','DD-MON-RR'),'Ap #979-6007 Eleifend. Av.',null,503);
Insert into TB_EVENT (EVENT_ID,EVE_NAME,EVE_DATE_BEGIN,EVE_DATE_END,EVE_PLACE,EVE_NOTES,USER_ID) values (531,'vestibulum lorem, sit amet',to_date('18-DEC-16','DD-MON-RR'),to_date('05-JAN-17','DD-MON-RR'),'2058 Dapibus Street',null,503);
Insert into TB_EVENT (EVENT_ID,EVE_NAME,EVE_DATE_BEGIN,EVE_DATE_END,EVE_PLACE,EVE_NOTES,USER_ID) values (532,'Integer vitae nibh. Donec',to_date('26-DEC-16','DD-MON-RR'),to_date('03-JAN-17','DD-MON-RR'),'Ap #477-4296 Mattis Rd.',null,500);
Insert into TB_EVENT (EVENT_ID,EVE_NAME,EVE_DATE_BEGIN,EVE_DATE_END,EVE_PLACE,EVE_NOTES,USER_ID) values (533,'id, erat. Etiam vestibulum',to_date('28-DEC-16','DD-MON-RR'),to_date('21-JAN-17','DD-MON-RR'),'4016 Tristique St.',null,500);
Insert into TB_EVENT (EVENT_ID,EVE_NAME,EVE_DATE_BEGIN,EVE_DATE_END,EVE_PLACE,EVE_NOTES,USER_ID) values (534,'eu nibh vulputate mauris',to_date('29-DEC-16','DD-MON-RR'),to_date('31-JAN-17','DD-MON-RR'),'P.O. Box 143, 8019 Vulputate, Av.',null,501);
Insert into TB_EVENT (EVENT_ID,EVE_NAME,EVE_DATE_BEGIN,EVE_DATE_END,EVE_PLACE,EVE_NOTES,USER_ID) values (535,'Fusce aliquet magna a',to_date('16-DEC-16','DD-MON-RR'),to_date('05-JAN-17','DD-MON-RR'),'P.O. Box 293, 6508 Feugiat Ave',null,502);
Insert into TB_EVENT (EVENT_ID,EVE_NAME,EVE_DATE_BEGIN,EVE_DATE_END,EVE_PLACE,EVE_NOTES,USER_ID) values (536,'sem mollis dui, in',to_date('28-DEC-16','DD-MON-RR'),to_date('05-JAN-17','DD-MON-RR'),'6580 Convallis Street',null,504);
Insert into TB_EVENT (EVENT_ID,EVE_NAME,EVE_DATE_BEGIN,EVE_DATE_END,EVE_PLACE,EVE_NOTES,USER_ID) values (537,'Curae Donec tincidunt. Donec',to_date('06-DEC-16','DD-MON-RR'),to_date('03-FEB-17','DD-MON-RR'),'4993 Dapibus Rd.',null,502);
Insert into TB_EVENT (EVENT_ID,EVE_NAME,EVE_DATE_BEGIN,EVE_DATE_END,EVE_PLACE,EVE_NOTES,USER_ID) values (538,'tempus non, lacinia at,',to_date('06-DEC-16','DD-MON-RR'),to_date('10-FEB-17','DD-MON-RR'),'189-3252 Quisque Rd.',null,502);
Insert into TB_EVENT (EVENT_ID,EVE_NAME,EVE_DATE_BEGIN,EVE_DATE_END,EVE_PLACE,EVE_NOTES,USER_ID) values (539,'egestas a, dui. Cras',to_date('28-DEC-16','DD-MON-RR'),to_date('15-FEB-17','DD-MON-RR'),'4160 Curae Road',null,503);
Insert into TB_EVENT (EVENT_ID,EVE_NAME,EVE_DATE_BEGIN,EVE_DATE_END,EVE_PLACE,EVE_NOTES,USER_ID) values (540,'ut, nulla. Cras eu',to_date('26-DEC-16','DD-MON-RR'),to_date('30-JAN-17','DD-MON-RR'),'914-4583 Porttitor Av.',null,504);
Insert into TB_EVENT (EVENT_ID,EVE_NAME,EVE_DATE_BEGIN,EVE_DATE_END,EVE_PLACE,EVE_NOTES,USER_ID) values (541,'egestas ligula. Nullam feugiat',to_date('05-DEC-16','DD-MON-RR'),to_date('05-JAN-17','DD-MON-RR'),'P.O. Box 342, 6933 Ante. Av.',null,501);
Insert into TB_EVENT (EVENT_ID,EVE_NAME,EVE_DATE_BEGIN,EVE_DATE_END,EVE_PLACE,EVE_NOTES,USER_ID) values (542,'tincidunt, nunc ac mattis',to_date('05-DEC-16','DD-MON-RR'),to_date('11-JAN-17','DD-MON-RR'),'Ap #188-3660 Eros. St.',null,502);
Insert into TB_EVENT (EVENT_ID,EVE_NAME,EVE_DATE_BEGIN,EVE_DATE_END,EVE_PLACE,EVE_NOTES,USER_ID) values (543,'sed, sapien. Nunc pulvinar',to_date('17-DEC-16','DD-MON-RR'),to_date('11-JAN-17','DD-MON-RR'),'P.O. Box 532, 3355 Dictum Avenue',null,500);
Insert into TB_EVENT (EVENT_ID,EVE_NAME,EVE_DATE_BEGIN,EVE_DATE_END,EVE_PLACE,EVE_NOTES,USER_ID) values (544,'tempus non, lacinia at,',to_date('15-DEC-16','DD-MON-RR'),to_date('26-FEB-17','DD-MON-RR'),'P.O. Box 905, 1079 Odio Avenue',null,502);
Insert into TB_EVENT (EVENT_ID,EVE_NAME,EVE_DATE_BEGIN,EVE_DATE_END,EVE_PLACE,EVE_NOTES,USER_ID) values (545,'velit egestas lacinia. Sed',to_date('30-DEC-16','DD-MON-RR'),to_date('13-JAN-17','DD-MON-RR'),'P.O. Box 143, 5179 Dolor St.',null,500);
Insert into TB_EVENT (EVENT_ID,EVE_NAME,EVE_DATE_BEGIN,EVE_DATE_END,EVE_PLACE,EVE_NOTES,USER_ID) values (546,'amet massa. Quisque porttitor',to_date('12-DEC-16','DD-MON-RR'),to_date('07-FEB-17','DD-MON-RR'),'Ap #911-1200 Elit, Av.',null,502);
Insert into TB_EVENT (EVENT_ID,EVE_NAME,EVE_DATE_BEGIN,EVE_DATE_END,EVE_PLACE,EVE_NOTES,USER_ID) values (547,'sollicitudin commodo ipsum. Suspendisse',to_date('05-DEC-16','DD-MON-RR'),to_date('05-FEB-17','DD-MON-RR'),'130-5394 Aliquet. Street',null,501);
Insert into TB_EVENT (EVENT_ID,EVE_NAME,EVE_DATE_BEGIN,EVE_DATE_END,EVE_PLACE,EVE_NOTES,USER_ID) values (548,'pede blandit congue. In',to_date('11-DEC-16','DD-MON-RR'),to_date('08-JAN-17','DD-MON-RR'),'715-3665 Arcu. Street',null,504);
Insert into TB_EVENT (EVENT_ID,EVE_NAME,EVE_DATE_BEGIN,EVE_DATE_END,EVE_PLACE,EVE_NOTES,USER_ID) values (549,'Integer eu lacus. Quisque',to_date('05-DEC-16','DD-MON-RR'),to_date('28-JAN-17','DD-MON-RR'),'607-9172 Porttitor Road',null,501);
REM INSERTING into TB_PERSON
SET DEFINE OFF;
Insert into TB_PERSON (PERSON_ID,PER_FIRST,PER_MIDDLE,PER_LAST,PER_SEX,PER_SIN,PER_ACTIVE,USER_ID) values (500,'April','Mccall','Clements','M',null,1,500);
Insert into TB_PERSON (PERSON_ID,PER_FIRST,PER_MIDDLE,PER_LAST,PER_SEX,PER_SIN,PER_ACTIVE,USER_ID) values (501,'Faith','Cabrera','Holman','M',null,1,500);
Insert into TB_PERSON (PERSON_ID,PER_FIRST,PER_MIDDLE,PER_LAST,PER_SEX,PER_SIN,PER_ACTIVE,USER_ID) values (502,'Beck','Harris','Campbell','M',null,1,500);
Insert into TB_PERSON (PERSON_ID,PER_FIRST,PER_MIDDLE,PER_LAST,PER_SEX,PER_SIN,PER_ACTIVE,USER_ID) values (503,'Macon','Suarez','Ware','F',null,1,500);
Insert into TB_PERSON (PERSON_ID,PER_FIRST,PER_MIDDLE,PER_LAST,PER_SEX,PER_SIN,PER_ACTIVE,USER_ID) values (504,'Emerson','Vang','Robinson','F',null,1,500);
Insert into TB_PERSON (PERSON_ID,PER_FIRST,PER_MIDDLE,PER_LAST,PER_SEX,PER_SIN,PER_ACTIVE,USER_ID) values (505,'Leonard','Sweeney','Shannon','M',null,1,500);
Insert into TB_PERSON (PERSON_ID,PER_FIRST,PER_MIDDLE,PER_LAST,PER_SEX,PER_SIN,PER_ACTIVE,USER_ID) values (506,'Ulric','Savage','Mcclure','M',null,1,500);
Insert into TB_PERSON (PERSON_ID,PER_FIRST,PER_MIDDLE,PER_LAST,PER_SEX,PER_SIN,PER_ACTIVE,USER_ID) values (507,'Natalie','Sweeney','Hurley','F',null,1,500);
Insert into TB_PERSON (PERSON_ID,PER_FIRST,PER_MIDDLE,PER_LAST,PER_SEX,PER_SIN,PER_ACTIVE,USER_ID) values (508,'Hayden','Merrill','Morse','M',null,1,500);
Insert into TB_PERSON (PERSON_ID,PER_FIRST,PER_MIDDLE,PER_LAST,PER_SEX,PER_SIN,PER_ACTIVE,USER_ID) values (509,'Aquila','Wagner','Hayes','M',null,1,500);
Insert into TB_PERSON (PERSON_ID,PER_FIRST,PER_MIDDLE,PER_LAST,PER_SEX,PER_SIN,PER_ACTIVE,USER_ID) values (510,'Coby','Hinton','Maddox','F',null,1,501);
Insert into TB_PERSON (PERSON_ID,PER_FIRST,PER_MIDDLE,PER_LAST,PER_SEX,PER_SIN,PER_ACTIVE,USER_ID) values (511,'Jordan','Brock','Lyons','F',null,1,501);
Insert into TB_PERSON (PERSON_ID,PER_FIRST,PER_MIDDLE,PER_LAST,PER_SEX,PER_SIN,PER_ACTIVE,USER_ID) values (512,'Claudia','Nolan','Everett','F',null,1,501);
Insert into TB_PERSON (PERSON_ID,PER_FIRST,PER_MIDDLE,PER_LAST,PER_SEX,PER_SIN,PER_ACTIVE,USER_ID) values (513,'Macaulay','Crosby','Nicholson','M',null,1,501);
Insert into TB_PERSON (PERSON_ID,PER_FIRST,PER_MIDDLE,PER_LAST,PER_SEX,PER_SIN,PER_ACTIVE,USER_ID) values (514,'Wyatt','Christian','Green','M',null,1,501);
Insert into TB_PERSON (PERSON_ID,PER_FIRST,PER_MIDDLE,PER_LAST,PER_SEX,PER_SIN,PER_ACTIVE,USER_ID) values (515,'Boris','Weiss','Flowers','F',null,1,501);
Insert into TB_PERSON (PERSON_ID,PER_FIRST,PER_MIDDLE,PER_LAST,PER_SEX,PER_SIN,PER_ACTIVE,USER_ID) values (516,'Keegan','Higgins','House','M',null,1,501);
Insert into TB_PERSON (PERSON_ID,PER_FIRST,PER_MIDDLE,PER_LAST,PER_SEX,PER_SIN,PER_ACTIVE,USER_ID) values (517,'Fiona','Burch','Mccray','M',null,1,501);
Insert into TB_PERSON (PERSON_ID,PER_FIRST,PER_MIDDLE,PER_LAST,PER_SEX,PER_SIN,PER_ACTIVE,USER_ID) values (518,'Kirby','Benjamin','White','F',null,1,501);
Insert into TB_PERSON (PERSON_ID,PER_FIRST,PER_MIDDLE,PER_LAST,PER_SEX,PER_SIN,PER_ACTIVE,USER_ID) values (519,'Aidan','Gentry','Rutledge','F',null,1,501);
Insert into TB_PERSON (PERSON_ID,PER_FIRST,PER_MIDDLE,PER_LAST,PER_SEX,PER_SIN,PER_ACTIVE,USER_ID) values (520,'Meredith','Carson','Willis','M',null,1,502);
Insert into TB_PERSON (PERSON_ID,PER_FIRST,PER_MIDDLE,PER_LAST,PER_SEX,PER_SIN,PER_ACTIVE,USER_ID) values (521,'Imelda','Barrett','Ware','F',null,1,502);
Insert into TB_PERSON (PERSON_ID,PER_FIRST,PER_MIDDLE,PER_LAST,PER_SEX,PER_SIN,PER_ACTIVE,USER_ID) values (522,'Alana','Barron','Solis','F',null,1,502);
Insert into TB_PERSON (PERSON_ID,PER_FIRST,PER_MIDDLE,PER_LAST,PER_SEX,PER_SIN,PER_ACTIVE,USER_ID) values (523,'Ruby','Ramos','Middleton','M',null,1,502);
Insert into TB_PERSON (PERSON_ID,PER_FIRST,PER_MIDDLE,PER_LAST,PER_SEX,PER_SIN,PER_ACTIVE,USER_ID) values (524,'Lesley','Sparks','Roach','F',null,1,502);
Insert into TB_PERSON (PERSON_ID,PER_FIRST,PER_MIDDLE,PER_LAST,PER_SEX,PER_SIN,PER_ACTIVE,USER_ID) values (525,'Robert','Hoffman','Franklin','F',null,1,502);
Insert into TB_PERSON (PERSON_ID,PER_FIRST,PER_MIDDLE,PER_LAST,PER_SEX,PER_SIN,PER_ACTIVE,USER_ID) values (526,'Ralph','Mccoy','Livingston','F',null,1,502);
Insert into TB_PERSON (PERSON_ID,PER_FIRST,PER_MIDDLE,PER_LAST,PER_SEX,PER_SIN,PER_ACTIVE,USER_ID) values (527,'Brennan','Russell','Whitney','F',null,1,502);
Insert into TB_PERSON (PERSON_ID,PER_FIRST,PER_MIDDLE,PER_LAST,PER_SEX,PER_SIN,PER_ACTIVE,USER_ID) values (528,'Flynn','Robertson','Brown','M',null,1,502);
Insert into TB_PERSON (PERSON_ID,PER_FIRST,PER_MIDDLE,PER_LAST,PER_SEX,PER_SIN,PER_ACTIVE,USER_ID) values (529,'Raya','Stark','Chan','F',null,1,502);
Insert into TB_PERSON (PERSON_ID,PER_FIRST,PER_MIDDLE,PER_LAST,PER_SEX,PER_SIN,PER_ACTIVE,USER_ID) values (530,'Hermione','Juarez','Madden','M',null,1,503);
Insert into TB_PERSON (PERSON_ID,PER_FIRST,PER_MIDDLE,PER_LAST,PER_SEX,PER_SIN,PER_ACTIVE,USER_ID) values (531,'Driscoll','Hutchinson','Hopper','F',null,1,503);
Insert into TB_PERSON (PERSON_ID,PER_FIRST,PER_MIDDLE,PER_LAST,PER_SEX,PER_SIN,PER_ACTIVE,USER_ID) values (532,'Ashton','Nolan','Blankenship','F',null,1,503);
Insert into TB_PERSON (PERSON_ID,PER_FIRST,PER_MIDDLE,PER_LAST,PER_SEX,PER_SIN,PER_ACTIVE,USER_ID) values (533,'Sierra','Fischer','Mccullough','M',null,1,503);
Insert into TB_PERSON (PERSON_ID,PER_FIRST,PER_MIDDLE,PER_LAST,PER_SEX,PER_SIN,PER_ACTIVE,USER_ID) values (534,'Bell','Guerrero','Carlson','F',null,1,503);
Insert into TB_PERSON (PERSON_ID,PER_FIRST,PER_MIDDLE,PER_LAST,PER_SEX,PER_SIN,PER_ACTIVE,USER_ID) values (535,'Kitra','Gilmore','Mullen','F',null,1,503);
Insert into TB_PERSON (PERSON_ID,PER_FIRST,PER_MIDDLE,PER_LAST,PER_SEX,PER_SIN,PER_ACTIVE,USER_ID) values (536,'Neil','Rodriquez','Barnett','M',null,1,503);
Insert into TB_PERSON (PERSON_ID,PER_FIRST,PER_MIDDLE,PER_LAST,PER_SEX,PER_SIN,PER_ACTIVE,USER_ID) values (537,'Travis','Acosta','Mcdaniel','M',null,1,503);
Insert into TB_PERSON (PERSON_ID,PER_FIRST,PER_MIDDLE,PER_LAST,PER_SEX,PER_SIN,PER_ACTIVE,USER_ID) values (538,'Peter','Crosby','Hansen','M',null,1,503);
Insert into TB_PERSON (PERSON_ID,PER_FIRST,PER_MIDDLE,PER_LAST,PER_SEX,PER_SIN,PER_ACTIVE,USER_ID) values (539,'Merritt','Barnett','Cox','F',null,1,503);
Insert into TB_PERSON (PERSON_ID,PER_FIRST,PER_MIDDLE,PER_LAST,PER_SEX,PER_SIN,PER_ACTIVE,USER_ID) values (540,'Simone','Freeman','English','M',null,1,504);
Insert into TB_PERSON (PERSON_ID,PER_FIRST,PER_MIDDLE,PER_LAST,PER_SEX,PER_SIN,PER_ACTIVE,USER_ID) values (541,'Pandora','Richard','Dean','F',null,1,504);
Insert into TB_PERSON (PERSON_ID,PER_FIRST,PER_MIDDLE,PER_LAST,PER_SEX,PER_SIN,PER_ACTIVE,USER_ID) values (542,'Fritz','Ellis','Booker','F',null,1,504);
Insert into TB_PERSON (PERSON_ID,PER_FIRST,PER_MIDDLE,PER_LAST,PER_SEX,PER_SIN,PER_ACTIVE,USER_ID) values (543,'Garth','Hyde','Cotton','F',null,1,504);
Insert into TB_PERSON (PERSON_ID,PER_FIRST,PER_MIDDLE,PER_LAST,PER_SEX,PER_SIN,PER_ACTIVE,USER_ID) values (544,'Griffith','Alexander','Wilkinson','F',null,1,504);
Insert into TB_PERSON (PERSON_ID,PER_FIRST,PER_MIDDLE,PER_LAST,PER_SEX,PER_SIN,PER_ACTIVE,USER_ID) values (545,'Patrick','Rosa','Campos','F',null,1,504);
Insert into TB_PERSON (PERSON_ID,PER_FIRST,PER_MIDDLE,PER_LAST,PER_SEX,PER_SIN,PER_ACTIVE,USER_ID) values (546,'Ainsley','Garcia','Medina','F',null,1,504);
Insert into TB_PERSON (PERSON_ID,PER_FIRST,PER_MIDDLE,PER_LAST,PER_SEX,PER_SIN,PER_ACTIVE,USER_ID) values (547,'Rama','Morris','Harding','F',null,1,504);
Insert into TB_PERSON (PERSON_ID,PER_FIRST,PER_MIDDLE,PER_LAST,PER_SEX,PER_SIN,PER_ACTIVE,USER_ID) values (548,'Lucas','Davis','Cooley','M',null,1,504);
Insert into TB_PERSON (PERSON_ID,PER_FIRST,PER_MIDDLE,PER_LAST,PER_SEX,PER_SIN,PER_ACTIVE,USER_ID) values (549,'Jayme','Warner','Elliott','F',null,1,504);
REM INSERTING into TB_PHONE
SET DEFINE OFF;
Insert into TB_PHONE (PHONE_ID,PHO_TYPE,PHO_NUMBER,PERSON_ID) values (1,'HOME','(523) 5265-3524',510);
Insert into TB_PHONE (PHONE_ID,PHO_TYPE,PHO_NUMBER,PERSON_ID) values (2,'HOME','(523) 5265-3524',510);
Insert into TB_PHONE (PHONE_ID,PHO_TYPE,PHO_NUMBER,PERSON_ID) values (500,'Personal','(237) 691-6082',518);
Insert into TB_PHONE (PHONE_ID,PHO_TYPE,PHO_NUMBER,PERSON_ID) values (501,'Personal','(631) 600-8060',527);
Insert into TB_PHONE (PHONE_ID,PHO_TYPE,PHO_NUMBER,PERSON_ID) values (502,'Home','(885) 494-0254',514);
Insert into TB_PHONE (PHONE_ID,PHO_TYPE,PHO_NUMBER,PERSON_ID) values (503,'Personal','(133) 464-5752',547);
Insert into TB_PHONE (PHONE_ID,PHO_TYPE,PHO_NUMBER,PERSON_ID) values (504,'Cellphone','(112) 344-0058',500);
Insert into TB_PHONE (PHONE_ID,PHO_TYPE,PHO_NUMBER,PERSON_ID) values (505,'Personal','(830) 424-1718',507);
Insert into TB_PHONE (PHONE_ID,PHO_TYPE,PHO_NUMBER,PERSON_ID) values (506,'Company','(168) 270-6840',517);
Insert into TB_PHONE (PHONE_ID,PHO_TYPE,PHO_NUMBER,PERSON_ID) values (507,'Fax','(864) 633-9676',528);
Insert into TB_PHONE (PHONE_ID,PHO_TYPE,PHO_NUMBER,PERSON_ID) values (508,'Fax','(417) 880-1164',542);
Insert into TB_PHONE (PHONE_ID,PHO_TYPE,PHO_NUMBER,PERSON_ID) values (509,'Home','(420) 677-8294',536);
Insert into TB_PHONE (PHONE_ID,PHO_TYPE,PHO_NUMBER,PERSON_ID) values (510,'Personal','(343) 327-3081',531);
Insert into TB_PHONE (PHONE_ID,PHO_TYPE,PHO_NUMBER,PERSON_ID) values (511,'Personal','(838) 283-2650',529);
Insert into TB_PHONE (PHONE_ID,PHO_TYPE,PHO_NUMBER,PERSON_ID) values (512,'Personal','(864) 828-4520',521);
Insert into TB_PHONE (PHONE_ID,PHO_TYPE,PHO_NUMBER,PERSON_ID) values (513,'Personal','(518) 531-8098',509);
Insert into TB_PHONE (PHONE_ID,PHO_TYPE,PHO_NUMBER,PERSON_ID) values (514,'Cellphone','(626) 349-7019',540);
Insert into TB_PHONE (PHONE_ID,PHO_TYPE,PHO_NUMBER,PERSON_ID) values (515,'Home','(447) 697-4250',538);
Insert into TB_PHONE (PHONE_ID,PHO_TYPE,PHO_NUMBER,PERSON_ID) values (516,'Personal','(253) 474-0996',536);
Insert into TB_PHONE (PHONE_ID,PHO_TYPE,PHO_NUMBER,PERSON_ID) values (517,'Fax','(120) 216-2671',500);
Insert into TB_PHONE (PHONE_ID,PHO_TYPE,PHO_NUMBER,PERSON_ID) values (518,'Cellphone','(186) 804-0254',515);
Insert into TB_PHONE (PHONE_ID,PHO_TYPE,PHO_NUMBER,PERSON_ID) values (519,'Personal','(567) 974-6039',539);
Insert into TB_PHONE (PHONE_ID,PHO_TYPE,PHO_NUMBER,PERSON_ID) values (520,'Company','(574) 902-2104',546);
Insert into TB_PHONE (PHONE_ID,PHO_TYPE,PHO_NUMBER,PERSON_ID) values (521,'Company','(486) 845-3203',533);
Insert into TB_PHONE (PHONE_ID,PHO_TYPE,PHO_NUMBER,PERSON_ID) values (522,'Personal','(261) 669-4514',519);
Insert into TB_PHONE (PHONE_ID,PHO_TYPE,PHO_NUMBER,PERSON_ID) values (523,'Company','(190) 809-2281',525);
Insert into TB_PHONE (PHONE_ID,PHO_TYPE,PHO_NUMBER,PERSON_ID) values (524,'Company','(245) 785-8227',514);
Insert into TB_PHONE (PHONE_ID,PHO_TYPE,PHO_NUMBER,PERSON_ID) values (525,'Fax','(761) 499-6801',519);
Insert into TB_PHONE (PHONE_ID,PHO_TYPE,PHO_NUMBER,PERSON_ID) values (526,'Home','(425) 869-7424',515);
Insert into TB_PHONE (PHONE_ID,PHO_TYPE,PHO_NUMBER,PERSON_ID) values (527,'Cellphone','(822) 601-8206',526);
Insert into TB_PHONE (PHONE_ID,PHO_TYPE,PHO_NUMBER,PERSON_ID) values (528,'Fax','(675) 185-0066',518);
Insert into TB_PHONE (PHONE_ID,PHO_TYPE,PHO_NUMBER,PERSON_ID) values (529,'Company','(133) 421-6327',544);
Insert into TB_PHONE (PHONE_ID,PHO_TYPE,PHO_NUMBER,PERSON_ID) values (530,'Fax','(961) 284-3525',501);
Insert into TB_PHONE (PHONE_ID,PHO_TYPE,PHO_NUMBER,PERSON_ID) values (531,'Cellphone','(948) 558-9531',503);
Insert into TB_PHONE (PHONE_ID,PHO_TYPE,PHO_NUMBER,PERSON_ID) values (532,'Home','(298) 236-9002',506);
Insert into TB_PHONE (PHONE_ID,PHO_TYPE,PHO_NUMBER,PERSON_ID) values (533,'Company','(808) 645-6081',537);
Insert into TB_PHONE (PHONE_ID,PHO_TYPE,PHO_NUMBER,PERSON_ID) values (534,'Personal','(421) 135-6846',543);
Insert into TB_PHONE (PHONE_ID,PHO_TYPE,PHO_NUMBER,PERSON_ID) values (535,'Company','(524) 213-5493',518);
Insert into TB_PHONE (PHONE_ID,PHO_TYPE,PHO_NUMBER,PERSON_ID) values (536,'Personal','(852) 464-7880',503);
Insert into TB_PHONE (PHONE_ID,PHO_TYPE,PHO_NUMBER,PERSON_ID) values (537,'Company','(207) 229-4498',546);
Insert into TB_PHONE (PHONE_ID,PHO_TYPE,PHO_NUMBER,PERSON_ID) values (538,'Home','(825) 183-0397',512);
Insert into TB_PHONE (PHONE_ID,PHO_TYPE,PHO_NUMBER,PERSON_ID) values (539,'Fax','(225) 722-7869',504);
Insert into TB_PHONE (PHONE_ID,PHO_TYPE,PHO_NUMBER,PERSON_ID) values (540,'Cellphone','(280) 203-3756',513);
Insert into TB_PHONE (PHONE_ID,PHO_TYPE,PHO_NUMBER,PERSON_ID) values (541,'Personal','(706) 763-1307',527);
Insert into TB_PHONE (PHONE_ID,PHO_TYPE,PHO_NUMBER,PERSON_ID) values (542,'Personal','(447) 588-0866',527);
Insert into TB_PHONE (PHONE_ID,PHO_TYPE,PHO_NUMBER,PERSON_ID) values (543,'Home','(108) 387-7560',516);
Insert into TB_PHONE (PHONE_ID,PHO_TYPE,PHO_NUMBER,PERSON_ID) values (544,'Cellphone','(730) 777-8629',525);
Insert into TB_PHONE (PHONE_ID,PHO_TYPE,PHO_NUMBER,PERSON_ID) values (545,'Fax','(272) 732-8737',544);
Insert into TB_PHONE (PHONE_ID,PHO_TYPE,PHO_NUMBER,PERSON_ID) values (546,'Fax','(859) 800-4668',532);
Insert into TB_PHONE (PHONE_ID,PHO_TYPE,PHO_NUMBER,PERSON_ID) values (547,'Home','(116) 181-8250',515);
Insert into TB_PHONE (PHONE_ID,PHO_TYPE,PHO_NUMBER,PERSON_ID) values (548,'Company','(543) 838-1668',537);
Insert into TB_PHONE (PHONE_ID,PHO_TYPE,PHO_NUMBER,PERSON_ID) values (549,'Cellphone','(871) 216-3775',529);
Insert into TB_PHONE (PHONE_ID,PHO_TYPE,PHO_NUMBER,PERSON_ID) values (550,'Home','(898) 290-2773',545);
Insert into TB_PHONE (PHONE_ID,PHO_TYPE,PHO_NUMBER,PERSON_ID) values (551,'Cellphone','(595) 186-2207',528);
Insert into TB_PHONE (PHONE_ID,PHO_TYPE,PHO_NUMBER,PERSON_ID) values (552,'Cellphone','(120) 306-0608',535);
Insert into TB_PHONE (PHONE_ID,PHO_TYPE,PHO_NUMBER,PERSON_ID) values (553,'Fax','(249) 657-4355',500);
Insert into TB_PHONE (PHONE_ID,PHO_TYPE,PHO_NUMBER,PERSON_ID) values (554,'Home','(109) 807-7962',518);
Insert into TB_PHONE (PHONE_ID,PHO_TYPE,PHO_NUMBER,PERSON_ID) values (555,'Home','(908) 513-9344',503);
Insert into TB_PHONE (PHONE_ID,PHO_TYPE,PHO_NUMBER,PERSON_ID) values (556,'Home','(630) 986-1273',533);
Insert into TB_PHONE (PHONE_ID,PHO_TYPE,PHO_NUMBER,PERSON_ID) values (557,'Cellphone','(532) 580-9008',548);
Insert into TB_PHONE (PHONE_ID,PHO_TYPE,PHO_NUMBER,PERSON_ID) values (558,'Fax','(237) 916-8775',506);
Insert into TB_PHONE (PHONE_ID,PHO_TYPE,PHO_NUMBER,PERSON_ID) values (559,'Home','(497) 877-1053',548);
Insert into TB_PHONE (PHONE_ID,PHO_TYPE,PHO_NUMBER,PERSON_ID) values (560,'Cellphone','(939) 376-9028',534);
Insert into TB_PHONE (PHONE_ID,PHO_TYPE,PHO_NUMBER,PERSON_ID) values (561,'Cellphone','(916) 742-4872',543);
Insert into TB_PHONE (PHONE_ID,PHO_TYPE,PHO_NUMBER,PERSON_ID) values (562,'Personal','(728) 724-6779',534);
Insert into TB_PHONE (PHONE_ID,PHO_TYPE,PHO_NUMBER,PERSON_ID) values (563,'Personal','(991) 996-8531',505);
Insert into TB_PHONE (PHONE_ID,PHO_TYPE,PHO_NUMBER,PERSON_ID) values (564,'Home','(169) 173-9982',545);
Insert into TB_PHONE (PHONE_ID,PHO_TYPE,PHO_NUMBER,PERSON_ID) values (565,'Fax','(945) 168-2432',506);
Insert into TB_PHONE (PHONE_ID,PHO_TYPE,PHO_NUMBER,PERSON_ID) values (566,'Company','(939) 194-4856',520);
Insert into TB_PHONE (PHONE_ID,PHO_TYPE,PHO_NUMBER,PERSON_ID) values (567,'Fax','(419) 761-2819',512);
Insert into TB_PHONE (PHONE_ID,PHO_TYPE,PHO_NUMBER,PERSON_ID) values (568,'Fax','(541) 606-9756',527);
Insert into TB_PHONE (PHONE_ID,PHO_TYPE,PHO_NUMBER,PERSON_ID) values (569,'Personal','(237) 574-6368',537);
Insert into TB_PHONE (PHONE_ID,PHO_TYPE,PHO_NUMBER,PERSON_ID) values (570,'Home','(291) 620-3581',535);
Insert into TB_PHONE (PHONE_ID,PHO_TYPE,PHO_NUMBER,PERSON_ID) values (571,'Home','(271) 256-4143',519);
Insert into TB_PHONE (PHONE_ID,PHO_TYPE,PHO_NUMBER,PERSON_ID) values (572,'Personal','(642) 777-1570',529);
Insert into TB_PHONE (PHONE_ID,PHO_TYPE,PHO_NUMBER,PERSON_ID) values (573,'Fax','(425) 699-0769',545);
Insert into TB_PHONE (PHONE_ID,PHO_TYPE,PHO_NUMBER,PERSON_ID) values (574,'Fax','(540) 960-6351',520);
Insert into TB_PHONE (PHONE_ID,PHO_TYPE,PHO_NUMBER,PERSON_ID) values (575,'Cellphone','(425) 973-9044',518);
Insert into TB_PHONE (PHONE_ID,PHO_TYPE,PHO_NUMBER,PERSON_ID) values (576,'Fax','(349) 395-2456',545);
Insert into TB_PHONE (PHONE_ID,PHO_TYPE,PHO_NUMBER,PERSON_ID) values (577,'Personal','(159) 714-4187',548);
Insert into TB_PHONE (PHONE_ID,PHO_TYPE,PHO_NUMBER,PERSON_ID) values (578,'Company','(802) 178-6158',538);
Insert into TB_PHONE (PHONE_ID,PHO_TYPE,PHO_NUMBER,PERSON_ID) values (579,'Company','(534) 907-0308',545);
Insert into TB_PHONE (PHONE_ID,PHO_TYPE,PHO_NUMBER,PERSON_ID) values (580,'Fax','(373) 242-2132',542);
Insert into TB_PHONE (PHONE_ID,PHO_TYPE,PHO_NUMBER,PERSON_ID) values (581,'Fax','(540) 838-1704',510);
Insert into TB_PHONE (PHONE_ID,PHO_TYPE,PHO_NUMBER,PERSON_ID) values (582,'Home','(504) 551-6517',514);
Insert into TB_PHONE (PHONE_ID,PHO_TYPE,PHO_NUMBER,PERSON_ID) values (583,'Home','(202) 231-2775',504);
Insert into TB_PHONE (PHONE_ID,PHO_TYPE,PHO_NUMBER,PERSON_ID) values (584,'Cellphone','(768) 929-9869',531);
Insert into TB_PHONE (PHONE_ID,PHO_TYPE,PHO_NUMBER,PERSON_ID) values (585,'Personal','(491) 350-8075',532);
Insert into TB_PHONE (PHONE_ID,PHO_TYPE,PHO_NUMBER,PERSON_ID) values (586,'Company','(798) 826-2436',539);
Insert into TB_PHONE (PHONE_ID,PHO_TYPE,PHO_NUMBER,PERSON_ID) values (587,'Company','(465) 290-7094',525);
Insert into TB_PHONE (PHONE_ID,PHO_TYPE,PHO_NUMBER,PERSON_ID) values (588,'Cellphone','(583) 490-1453',527);
Insert into TB_PHONE (PHONE_ID,PHO_TYPE,PHO_NUMBER,PERSON_ID) values (589,'Company','(103) 566-4279',527);
Insert into TB_PHONE (PHONE_ID,PHO_TYPE,PHO_NUMBER,PERSON_ID) values (590,'Company','(595) 679-8529',511);
Insert into TB_PHONE (PHONE_ID,PHO_TYPE,PHO_NUMBER,PERSON_ID) values (591,'Personal','(655) 960-2110',504);
Insert into TB_PHONE (PHONE_ID,PHO_TYPE,PHO_NUMBER,PERSON_ID) values (592,'Company','(168) 569-8722',545);
Insert into TB_PHONE (PHONE_ID,PHO_TYPE,PHO_NUMBER,PERSON_ID) values (593,'Personal','(203) 747-4682',516);
Insert into TB_PHONE (PHONE_ID,PHO_TYPE,PHO_NUMBER,PERSON_ID) values (594,'Personal','(765) 736-7380',503);
Insert into TB_PHONE (PHONE_ID,PHO_TYPE,PHO_NUMBER,PERSON_ID) values (595,'Company','(572) 135-1689',546);
Insert into TB_PHONE (PHONE_ID,PHO_TYPE,PHO_NUMBER,PERSON_ID) values (596,'Fax','(226) 520-6852',514);
Insert into TB_PHONE (PHONE_ID,PHO_TYPE,PHO_NUMBER,PERSON_ID) values (597,'Home','(368) 311-4078',523);
Insert into TB_PHONE (PHONE_ID,PHO_TYPE,PHO_NUMBER,PERSON_ID) values (598,'Cellphone','(679) 452-0207',535);
Insert into TB_PHONE (PHONE_ID,PHO_TYPE,PHO_NUMBER,PERSON_ID) values (599,'Company','(652) 454-4950',518);
Insert into TB_PHONE (PHONE_ID,PHO_TYPE,PHO_NUMBER,PERSON_ID) values (600,'Home','(354) 271-9934',511);
Insert into TB_PHONE (PHONE_ID,PHO_TYPE,PHO_NUMBER,PERSON_ID) values (601,'Company','(801) 330-8965',536);
Insert into TB_PHONE (PHONE_ID,PHO_TYPE,PHO_NUMBER,PERSON_ID) values (602,'Cellphone','(990) 329-7115',537);
Insert into TB_PHONE (PHONE_ID,PHO_TYPE,PHO_NUMBER,PERSON_ID) values (603,'Home','(840) 583-4169',513);
Insert into TB_PHONE (PHONE_ID,PHO_TYPE,PHO_NUMBER,PERSON_ID) values (604,'Cellphone','(476) 936-5811',542);
Insert into TB_PHONE (PHONE_ID,PHO_TYPE,PHO_NUMBER,PERSON_ID) values (605,'Cellphone','(937) 131-3093',509);
Insert into TB_PHONE (PHONE_ID,PHO_TYPE,PHO_NUMBER,PERSON_ID) values (606,'Personal','(483) 921-4070',505);
Insert into TB_PHONE (PHONE_ID,PHO_TYPE,PHO_NUMBER,PERSON_ID) values (607,'Personal','(219) 261-2944',522);
Insert into TB_PHONE (PHONE_ID,PHO_TYPE,PHO_NUMBER,PERSON_ID) values (608,'Fax','(490) 264-9786',549);
Insert into TB_PHONE (PHONE_ID,PHO_TYPE,PHO_NUMBER,PERSON_ID) values (609,'Home','(648) 736-7472',527);
Insert into TB_PHONE (PHONE_ID,PHO_TYPE,PHO_NUMBER,PERSON_ID) values (610,'Fax','(511) 977-1621',518);
Insert into TB_PHONE (PHONE_ID,PHO_TYPE,PHO_NUMBER,PERSON_ID) values (611,'Fax','(868) 641-2110',535);
Insert into TB_PHONE (PHONE_ID,PHO_TYPE,PHO_NUMBER,PERSON_ID) values (612,'Company','(840) 752-5639',534);
Insert into TB_PHONE (PHONE_ID,PHO_TYPE,PHO_NUMBER,PERSON_ID) values (613,'Home','(108) 548-7578',526);
Insert into TB_PHONE (PHONE_ID,PHO_TYPE,PHO_NUMBER,PERSON_ID) values (614,'Company','(942) 664-0738',536);
Insert into TB_PHONE (PHONE_ID,PHO_TYPE,PHO_NUMBER,PERSON_ID) values (615,'Personal','(287) 865-6512',542);
Insert into TB_PHONE (PHONE_ID,PHO_TYPE,PHO_NUMBER,PERSON_ID) values (616,'Fax','(756) 741-3716',514);
Insert into TB_PHONE (PHONE_ID,PHO_TYPE,PHO_NUMBER,PERSON_ID) values (617,'Personal','(194) 467-0485',542);
Insert into TB_PHONE (PHONE_ID,PHO_TYPE,PHO_NUMBER,PERSON_ID) values (618,'Personal','(211) 209-9545',525);
Insert into TB_PHONE (PHONE_ID,PHO_TYPE,PHO_NUMBER,PERSON_ID) values (619,'Fax','(325) 299-1656',508);
Insert into TB_PHONE (PHONE_ID,PHO_TYPE,PHO_NUMBER,PERSON_ID) values (620,'Fax','(367) 853-2444',532);
Insert into TB_PHONE (PHONE_ID,PHO_TYPE,PHO_NUMBER,PERSON_ID) values (621,'Company','(407) 798-3878',510);
Insert into TB_PHONE (PHONE_ID,PHO_TYPE,PHO_NUMBER,PERSON_ID) values (622,'Personal','(977) 568-2222',512);
Insert into TB_PHONE (PHONE_ID,PHO_TYPE,PHO_NUMBER,PERSON_ID) values (623,'Personal','(274) 163-9243',506);
Insert into TB_PHONE (PHONE_ID,PHO_TYPE,PHO_NUMBER,PERSON_ID) values (624,'Cellphone','(969) 507-4883',532);
Insert into TB_PHONE (PHONE_ID,PHO_TYPE,PHO_NUMBER,PERSON_ID) values (625,'Fax','(413) 679-4821',508);
Insert into TB_PHONE (PHONE_ID,PHO_TYPE,PHO_NUMBER,PERSON_ID) values (626,'Personal','(794) 686-2561',516);
Insert into TB_PHONE (PHONE_ID,PHO_TYPE,PHO_NUMBER,PERSON_ID) values (627,'Personal','(606) 598-2233',532);
Insert into TB_PHONE (PHONE_ID,PHO_TYPE,PHO_NUMBER,PERSON_ID) values (628,'Home','(240) 252-1534',504);
Insert into TB_PHONE (PHONE_ID,PHO_TYPE,PHO_NUMBER,PERSON_ID) values (629,'Cellphone','(378) 669-4666',546);
Insert into TB_PHONE (PHONE_ID,PHO_TYPE,PHO_NUMBER,PERSON_ID) values (630,'Company','(867) 933-6713',511);
Insert into TB_PHONE (PHONE_ID,PHO_TYPE,PHO_NUMBER,PERSON_ID) values (631,'Fax','(688) 605-5057',538);
Insert into TB_PHONE (PHONE_ID,PHO_TYPE,PHO_NUMBER,PERSON_ID) values (632,'Personal','(698) 933-9858',521);
Insert into TB_PHONE (PHONE_ID,PHO_TYPE,PHO_NUMBER,PERSON_ID) values (633,'Home','(815) 232-4284',512);
Insert into TB_PHONE (PHONE_ID,PHO_TYPE,PHO_NUMBER,PERSON_ID) values (634,'Personal','(533) 686-6752',501);
Insert into TB_PHONE (PHONE_ID,PHO_TYPE,PHO_NUMBER,PERSON_ID) values (635,'Fax','(677) 160-5798',527);
Insert into TB_PHONE (PHONE_ID,PHO_TYPE,PHO_NUMBER,PERSON_ID) values (636,'Home','(138) 460-6675',504);
Insert into TB_PHONE (PHONE_ID,PHO_TYPE,PHO_NUMBER,PERSON_ID) values (637,'Fax','(285) 114-7598',542);
Insert into TB_PHONE (PHONE_ID,PHO_TYPE,PHO_NUMBER,PERSON_ID) values (638,'Personal','(458) 644-6229',542);
Insert into TB_PHONE (PHONE_ID,PHO_TYPE,PHO_NUMBER,PERSON_ID) values (639,'Company','(852) 193-6130',514);
Insert into TB_PHONE (PHONE_ID,PHO_TYPE,PHO_NUMBER,PERSON_ID) values (640,'Home','(697) 703-8094',500);
Insert into TB_PHONE (PHONE_ID,PHO_TYPE,PHO_NUMBER,PERSON_ID) values (641,'Fax','(341) 227-3946',520);
Insert into TB_PHONE (PHONE_ID,PHO_TYPE,PHO_NUMBER,PERSON_ID) values (642,'Company','(110) 944-6982',523);
Insert into TB_PHONE (PHONE_ID,PHO_TYPE,PHO_NUMBER,PERSON_ID) values (643,'Home','(778) 935-2959',528);
Insert into TB_PHONE (PHONE_ID,PHO_TYPE,PHO_NUMBER,PERSON_ID) values (644,'Cellphone','(622) 312-4768',531);
Insert into TB_PHONE (PHONE_ID,PHO_TYPE,PHO_NUMBER,PERSON_ID) values (645,'Home','(846) 471-9061',532);
Insert into TB_PHONE (PHONE_ID,PHO_TYPE,PHO_NUMBER,PERSON_ID) values (646,'Home','(417) 330-1076',511);
Insert into TB_PHONE (PHONE_ID,PHO_TYPE,PHO_NUMBER,PERSON_ID) values (647,'Personal','(794) 961-4167',501);
Insert into TB_PHONE (PHONE_ID,PHO_TYPE,PHO_NUMBER,PERSON_ID) values (648,'Fax','(635) 242-7052',527);
Insert into TB_PHONE (PHONE_ID,PHO_TYPE,PHO_NUMBER,PERSON_ID) values (649,'Company','(328) 902-3878',549);
REM INSERTING into TB_USER_1
SET DEFINE OFF;
Insert into TB_USER_1 (USER_ID,USE_NAME,USE_LOGIN,USE_PASSWORD,USE_EMAIL,AUTH_KEY,PASSWORD_RESET_TOKEN) values (500,'Cruz Dudley','Cruz','123456','magnis.dis.parturient@adipiscing.co.uk',null,null);
Insert into TB_USER_1 (USER_ID,USE_NAME,USE_LOGIN,USE_PASSWORD,USE_EMAIL,AUTH_KEY,PASSWORD_RESET_TOKEN) values (501,'Shaeleigh Rhodes','Aline','123456','vehicula.aliquet@Curabiturut.org',null,null);
Insert into TB_USER_1 (USER_ID,USE_NAME,USE_LOGIN,USE_PASSWORD,USE_EMAIL,AUTH_KEY,PASSWORD_RESET_TOKEN) values (502,'Autumn Bartlett','McKenzie','123456','eget@enimgravida.com',null,null);
Insert into TB_USER_1 (USER_ID,USE_NAME,USE_LOGIN,USE_PASSWORD,USE_EMAIL,AUTH_KEY,PASSWORD_RESET_TOKEN) values (503,'Pearl Olson','Dorian','123456','Fusce.mollis.Duis@estNunc.co.uk',null,null);
Insert into TB_USER_1 (USER_ID,USE_NAME,USE_LOGIN,USE_PASSWORD,USE_EMAIL,AUTH_KEY,PASSWORD_RESET_TOKEN) values (504,'Mary Valdez','Armando','123456','eu.eros.Nam@placeratorci.org',null,null);
--------------------------------------------------------
--  DDL for Index USER_ID
--------------------------------------------------------

  CREATE UNIQUE INDEX "USER_ID" ON "TB_USER_1" ("USER_ID")
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index PHO_ID
--------------------------------------------------------

  CREATE UNIQUE INDEX "PHO_ID" ON "TB_PHONE" ("PHONE_ID")
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index PER_ID
--------------------------------------------------------

  CREATE UNIQUE INDEX "PER_ID" ON "TB_PERSON" ("PERSON_ID")
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index EVENT_ID
--------------------------------------------------------

  CREATE UNIQUE INDEX "EVENT_ID" ON "TB_EVENT" ("EVENT_ID")
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index EMA_ID
--------------------------------------------------------

  CREATE UNIQUE INDEX "EMA_ID" ON "TB_EMAIL" ("EMAIL_ID")
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index ADD_ID
--------------------------------------------------------

  CREATE UNIQUE INDEX "ADD_ID" ON "TB_ADDRESS" ("ADDRESS_ID")
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  Constraints for Table TB_PHONE
--------------------------------------------------------

  ALTER TABLE "TB_PHONE" ADD CONSTRAINT "PHO_ID" PRIMARY KEY ("PHONE_ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
  ALTER TABLE "TB_PHONE" MODIFY ("PHONE_ID" NOT NULL ENABLE);
  ALTER TABLE "TB_PHONE" MODIFY ("PHO_NUMBER" NOT NULL ENABLE);
  ALTER TABLE "TB_PHONE" MODIFY ("PERSON_ID" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table TB_ADDRESS
--------------------------------------------------------

  ALTER TABLE "TB_ADDRESS" ADD CONSTRAINT "ADD_ID" PRIMARY KEY ("ADDRESS_ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
  ALTER TABLE "TB_ADDRESS" MODIFY ("ADDRESS_ID" NOT NULL ENABLE);
  ALTER TABLE "TB_ADDRESS" MODIFY ("ADD_ADDRESS" NOT NULL ENABLE);
  ALTER TABLE "TB_ADDRESS" MODIFY ("PERSON_ID" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table TB_USER_1
--------------------------------------------------------

  ALTER TABLE "TB_USER_1" MODIFY ("USER_ID" NOT NULL ENABLE);
  ALTER TABLE "TB_USER_1" MODIFY ("USE_NAME" NOT NULL ENABLE);
  ALTER TABLE "TB_USER_1" MODIFY ("USE_LOGIN" NOT NULL ENABLE);
  ALTER TABLE "TB_USER_1" MODIFY ("USE_PASSWORD" NOT NULL ENABLE);
  ALTER TABLE "TB_USER_1" MODIFY ("USE_EMAIL" NOT NULL ENABLE);
  ALTER TABLE "TB_USER_1" ADD CONSTRAINT "USER_ID" PRIMARY KEY ("USER_ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
--------------------------------------------------------
--  Constraints for Table TB_EVENT
--------------------------------------------------------

  ALTER TABLE "TB_EVENT" ADD CONSTRAINT "EVENT_ID" PRIMARY KEY ("EVENT_ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
  ALTER TABLE "TB_EVENT" MODIFY ("EVENT_ID" NOT NULL ENABLE);
  ALTER TABLE "TB_EVENT" MODIFY ("EVE_NAME" NOT NULL ENABLE);
  ALTER TABLE "TB_EVENT" MODIFY ("EVE_DATE_BEGIN" NOT NULL ENABLE);
  ALTER TABLE "TB_EVENT" MODIFY ("EVE_DATE_END" NOT NULL ENABLE);
  ALTER TABLE "TB_EVENT" MODIFY ("USER_ID" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table TB_EMAIL
--------------------------------------------------------

  ALTER TABLE "TB_EMAIL" ADD CONSTRAINT "EMA_ID" PRIMARY KEY ("EMAIL_ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
  ALTER TABLE "TB_EMAIL" MODIFY ("EMAIL_ID" NOT NULL ENABLE);
  ALTER TABLE "TB_EMAIL" MODIFY ("EMA_EMAIL" NOT NULL ENABLE);
  ALTER TABLE "TB_EMAIL" MODIFY ("PERSON_ID" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table TB_PERSON
--------------------------------------------------------

  ALTER TABLE "TB_PERSON" ADD CONSTRAINT "PER_ID" PRIMARY KEY ("PERSON_ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
  ALTER TABLE "TB_PERSON" MODIFY ("PERSON_ID" NOT NULL ENABLE);
  ALTER TABLE "TB_PERSON" MODIFY ("PER_FIRST" NOT NULL ENABLE);
  ALTER TABLE "TB_PERSON" MODIFY ("PER_LAST" NOT NULL ENABLE);
  ALTER TABLE "TB_PERSON" MODIFY ("PER_SEX" NOT NULL ENABLE);
  ALTER TABLE "TB_PERSON" MODIFY ("PER_ACTIVE" NOT NULL ENABLE);
  ALTER TABLE "TB_PERSON" MODIFY ("USER_ID" NOT NULL ENABLE);
--------------------------------------------------------
--  Ref Constraints for Table TB_ADDRESS
--------------------------------------------------------

  ALTER TABLE "TB_ADDRESS" ADD CONSTRAINT "PERSON_ADDRESS_FK" FOREIGN KEY ("PERSON_ID")
	  REFERENCES "TB_PERSON" ("PERSON_ID") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table TB_EMAIL
--------------------------------------------------------

  ALTER TABLE "TB_EMAIL" ADD CONSTRAINT "PERSON_EMAIL_FK" FOREIGN KEY ("PERSON_ID")
	  REFERENCES "TB_PERSON" ("PERSON_ID") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table TB_EVENT
--------------------------------------------------------

  ALTER TABLE "TB_EVENT" ADD CONSTRAINT "USER_1_EVENT_FK" FOREIGN KEY ("USER_ID")
	  REFERENCES "TB_USER_1" ("USER_ID") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table TB_PERSON
--------------------------------------------------------

  ALTER TABLE "TB_PERSON" ADD CONSTRAINT "USER_1_PERSON_FK" FOREIGN KEY ("USER_ID")
	  REFERENCES "TB_USER_1" ("USER_ID") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table TB_PHONE
--------------------------------------------------------

  ALTER TABLE "TB_PHONE" ADD CONSTRAINT "PERSON_PHONE_FK" FOREIGN KEY ("PERSON_ID")
	  REFERENCES "TB_PERSON" ("PERSON_ID") ENABLE;
--------------------------------------------------------
--  DDL for Trigger TRIGGER_TB_ADDRESS
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TRIGGER "TRIGGER_TB_ADDRESS"
BEFORE INSERT ON TB_ADDRESS
FOR EACH ROW
  WHEN (new.ADDRESS_ID IS NULL) BEGIN
  SELECT TB_ADDRESS_ADDRESS_ID_SEQ.NEXTVAL
  INTO :new.ADDRESS_ID
  FROM dual;
END;
/
ALTER TRIGGER "TRIGGER_TB_ADDRESS" ENABLE;
--------------------------------------------------------
--  DDL for Trigger TRIGGER_TB_EMAIL
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TRIGGER "TRIGGER_TB_EMAIL"
BEFORE INSERT ON TB_EMAIL
FOR EACH ROW
  WHEN (new.EMAIL_ID IS NULL) BEGIN
  SELECT TB_EMAIL_EMAIL_ID_SEQ.NEXTVAL
  INTO :new.EMAIL_ID
  FROM dual;
END;
/
ALTER TRIGGER "TRIGGER_TB_EMAIL" ENABLE;
--------------------------------------------------------
--  DDL for Trigger TRIGGER_TB_EVENT
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TRIGGER "TRIGGER_TB_EVENT"
BEFORE INSERT ON TB_EVENT
FOR EACH ROW
  WHEN (new.EVENT_ID IS NULL) BEGIN
  SELECT TB_EVENT_EVENT_ID_SEQ.NEXTVAL
  INTO :new.EVENT_ID
  FROM dual;
END;
/
ALTER TRIGGER "TRIGGER_TB_EVENT" ENABLE;
--------------------------------------------------------
--  DDL for Trigger TRIGGER_TB_PERSON
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TRIGGER "TRIGGER_TB_PERSON"
BEFORE INSERT ON TB_PERSON
FOR EACH ROW
  WHEN (new.PERSON_ID IS NULL) BEGIN
  SELECT TB_PERSON_PERSON_ID_SEQ.NEXTVAL
  INTO :new.PERSON_ID
  FROM dual;
END;
/
ALTER TRIGGER "TRIGGER_TB_PERSON" ENABLE;
--------------------------------------------------------
--  DDL for Trigger TRIGGER_TB_PHONE
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TRIGGER "TRIGGER_TB_PHONE"
BEFORE INSERT ON TB_PHONE
FOR EACH ROW
  WHEN (new.PHONE_ID IS NULL) BEGIN
  SELECT TB_PHONE_PHONE_ID_SEQ.NEXTVAL
  INTO :new.PHONE_ID
  FROM dual;
END;
/
ALTER TRIGGER "TRIGGER_TB_PHONE" ENABLE;
--------------------------------------------------------
--  DDL for Trigger TRIGGER_TB_USER_1
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TRIGGER "TRIGGER_TB_USER_1"
BEFORE INSERT ON TB_USER_1
FOR EACH ROW
  WHEN (new.USER_ID IS NULL) BEGIN
  SELECT TB_USER_1_USER_ID_SEQ.NEXTVAL
  INTO :new.USER_ID
  FROM dual;
END;
/
ALTER TRIGGER "TRIGGER_TB_USER_1" ENABLE;
--------------------------------------------------------
--  DDL for Function PERSON_TOTAL
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE FUNCTION "PERSON_TOTAL"
  RETURN NUMBER
  IS
  PERSONTOT NUMBER(10,2);
BEGIN
    FOR OBJ IN (select count(person_id) TOTAL from tb_PERSON) LOOP
    PERSONTOT:= OBJ.TOTAL;
     END LOOP;
  RETURN PERSONTOT;
END;

/
--------------------------------------------------------
--  DDL for Function PHONE_NUMBERS
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE FUNCTION "PHONE_NUMBERS"
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

/
--------------------------------------------------------
--  DDL for Procedure INSERT_USER
--------------------------------------------------------
set define off;

  CREATE OR REPLACE EDITIONABLE PROCEDURE "INSERT_USER"
(
  NAME IN VARCHAR2
, LOGIN IN VARCHAR2
, PASSWORD IN VARCHAR2
, EMAIL IN VARCHAR2
, KEY IN VARCHAR2
) AS
BEGIN
  INSERT INTO TB_USER_1(USE_NAME, USE_LOGIN, USE_PASSWORD, USE_EMAIL, AUTH_KEY)
  VALUES (NAME, LOGIN, PASSWORD, EMAIl, KEY);
END INSERT_USER;

/
--------------------------------------------------------
--  DDL for Procedure NEXT_EVENTS
--------------------------------------------------------
set define off;

  CREATE OR REPLACE EDITIONABLE PROCEDURE "NEXT_EVENTS"
(
  ID_PERSON IN NUMBER,
  rec_event OUT tb_event%ROWTYPE
) AS
BEGIN
  DECLARE
    CURSOR cur_event IS
      SELECT * FROM TB_EVENT WHERE USER_ID = ID_PERSON AND EVE_DATE_BEGIN
      BETWEEN TO_CHAR(CURRENT_DATE, 'DD-MM-YYYY') AND TO_CHAR(CURRENT_DATE+7, 'DD-MM-YYYY');
  BEGIN
     OPEN cur_event;
       LOOP
        FETCH cur_event INTO rec_event;
        EXIT WHEN cur_event%NOTFOUND;
      END LOOP;
  END;
END NEXT_EVENTS;

/
--------------------------------------------------------
--  DDL for Procedure PERSON_FULL_NAME
--------------------------------------------------------
set define off;

  CREATE OR REPLACE EDITIONABLE PROCEDURE "PERSON_FULL_NAME"
(
  ID_PERSON IN NUMBER
, FULL_NAME OUT VARCHAR2
) AS
  REC_PERSON TB_PERSON%ROWTYPE;
BEGIN
  SELECT P.* INTO REC_PERSON FROM TB_PERSON P WHERE P.PERSON_ID = ID_PERSON;
  FULL_NAME := REC_PERSON.PER_FIRST||' '||REC_PERSON.PER_MIDDLE||' '||REC_PERSON.PER_LAST;
END PERSON_FULL_NAME;

/
