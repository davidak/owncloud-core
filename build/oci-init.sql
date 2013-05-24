-- drop the database
drop user oc_autotest cascade;

-- create the database
create user oc_autotest identified by owncloud;
alter user oc_autotest default tablespace users
temporary tablespace temp
quota unlimited on users;
grant create session
, create table
, create procedure
, create sequence
, create trigger
, create view
, create synonym
, alter session
to oc_autotest;