-- general settings
-- ================
-- do not echo
set echo off
-- do not print substitution before/after text
set verify off
-- set date format
alter session set NLS_DATE_FORMAT='YYYY-MM-DD';
-- allow PL/SQL output
set serveroutput on
-- disable feedback, eg. anonymous block completed
set feedback off

-- saját objektum-eldobások (pl. saját táblák) ide

prompt <tasks>

set feedback on

prompt <task n="3.1">
prompt <![CDATA[

INSERT INTO COMPANIES (NAME, TAXNUMBER, BANKACCOUNT, CONTACT)
    VALUES ('PrímaKlíma', 33425667921, '13134343-13134343-13134343', 'Rába Dániel');

prompt ]]>
prompt </task>


prompt <task n="3.2">
prompt <![CDATA[

UPDATE COMPANIES
SET CONTACT = 'Brian Hastings'
WHERE TAXNUMBER = 69563661143;

prompt ]]>
prompt </task>


prompt <task n="3.3">
prompt <![CDATA[

UPDATE SERVICES
SET REPLACEABLE = 0
WHERE DEPARTMENTS LIKE 'M%';

prompt ]]>
prompt </task>


prompt <task n="3.4">
prompt <![CDATA[

UPDATE 
(SELECT SATISFACTION
 FROM FULFILLMENTS
 LEFT OUTER JOIN COMPANIES 
 ON COMPANIES.ID = FULFILLMENTS.COMPANY_ID
 WHERE FULFILLMENTS.FULFILLMENT_DATE < (SYSDATE - 100) AND COMPANIES.NAME LIKE '%Kft.' 
) t
SET t.SATISFACTION = 2;

prompt ]]>
prompt </task>


prompt <task n="3.5">
prompt <![CDATA[

DELETE FROM FULFILLMENTS
WHERE PRICE > 300000;

prompt ]]>
prompt </task>


prompt <task n="3.6">
prompt <![CDATA[

INSERT INTO FULFILLMENTS (COMPANY_ID, SERVICE_ID, FULFILLMENT_DATE, SATISFACTION, PRICE)
    (SELECT COMPANIES.ID, SERVICES.ID, SYSDATE-1, 9, 999999
    FROM COMPANIES, SERVICES
    WHERE COMPANIES.CONTACT = 'Rába Dániel' AND SERVICES.NAME = 'Snow clearance');

prompt ]]>
prompt </task>

set feedback off

prompt </tasks>