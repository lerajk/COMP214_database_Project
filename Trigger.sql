select * from event_experiment; 


CREATE TABLE event_proxy
(
   eventid number(10,2),
   name1 varchar(255) 
);

select * from event_proxy;

drop table event_proxy;

--ALTER TABLE event_experiment
--DROP COLUMN user_id;

delete from event_experiment where event_id = 503;

-- checking selecting username
DECLARE
v_username varchar2(50);
begin
SELECT user INTO v_username
           FROM dual;
DBMS_OUTPUT.PUT(v_username);
end;


CREATE OR REPLACE TRIGGER experiment
       before DELETE
            ON event_experiment
            FOR EACH ROW
  
        --DECLARE
            --v_username varchar2(50);
  
        BEGIN
 
           -- Find username of person performing the DELETE on the table
           --SELECT user INTO v_username
           --FROM dual;
 
           -- Insert record into audit table
           INSERT INTO event_proxy  (eventid, name1)
                               VALUES ( :old.event_id, :old.eve_name);
                               --VALUES ( 1, 'hi');
                               
       END;
       
select * from user_errors where type = 'TRIGGER' and name = 'experiment';

SHOW ERRORS TRIGGER experiment;

drop trigger experiemnt;