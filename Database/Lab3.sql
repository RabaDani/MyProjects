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

prompt <task n="2.1">
prompt <![CDATA[

SELECT * FROM COMPANIES;

prompt ]]>
prompt </task>

prompt <task n="2.2">
prompt <![CDATA[

SELECT NAME, TAXNUMBER, CONTACT 
FROM COMPANIES
WHERE NAME LIKE '%Kft.';

prompt ]]>
prompt </task>

prompt <task n="2.3">
prompt <![CDATA[

SELECT NAME, FULFILLMENT_DATE, SATISFACTION 
FROM SERVICES INNER JOIN FULFILLMENTS ON
SERVICE_ID = SERVICES.ID
WHERE FULFILLMENT_DATE >= SYSDATE - 14
ORDER BY FULFILLMENT_DATE;

prompt ]]>
prompt </task>

prompt <task n="2.4">
prompt <![CDATA[

SELECT NAME, FULFILLMENT_DATE 
FROM FULFILLMENTS INNER JOIN COMPANIES ON
COMPANY_ID = COMPANIES.ID
WHERE COMPANIES.CONTACT IS NULL
ORDER BY FULFILLMENT_DATE;

prompt ]]>
prompt </task>

prompt <task n="2.5">
prompt <![CDATA[

SELECT SERVICES.NAME AS "service", NVL(COMPANIES.NAME, 'NOBODY') AS "company" 
FROM SERVICES LEFT JOIN OFFERS ON
SERVICES.ID = OFFERS.SERVICE_ID
LEFT JOIN COMPANIES ON
COMPANIES.ID = OFFERS.COMPANY_ID
ORDER BY SERVICES.NAME, COMPANIES.NAME;

prompt ]]>
prompt </task>

prompt <task n="2.6">
prompt <![CDATA[

SELECT SERVICES.NAME AS "service", NVL(COUNT(COMPANIES.NAME),0) AS "options" 
FROM SERVICES LEFT JOIN OFFERS ON
SERVICES.ID = OFFERS.SERVICE_ID
LEFT JOIN COMPANIES ON
COMPANIES.ID = OFFERS.COMPANY_ID
GROUP BY SERVICES.NAME
ORDER BY SERVICES.NAME;

prompt ]]>
prompt </task>

prompt <task n="2.7">
prompt <![CDATA[

SELECT SERVICES.NAME AS "service", NVL(COUNT(COMPANIES.NAME),0) AS "options" 
FROM SERVICES LEFT JOIN OFFERS ON
SERVICES.ID = OFFERS.SERVICE_ID
LEFT JOIN COMPANIES ON
COMPANIES.ID = OFFERS.COMPANY_ID
GROUP BY SERVICES.NAME
HAVING COUNT(COMPANIES.NAME)<=2
ORDER BY SERVICES.NAME; 

prompt ]]>
prompt </task>

prompt <task n="2.8">
prompt <![CDATA[

SELECT SERVICES.NAME 
FROM SERVICES 
WHERE SERVICES.ID NOT IN 
(SELECT SERVICE_ID FROM FULFILLMENTS)
ORDER BY SERVICES.NAME;

prompt ]]>
prompt </task>


prompt </tasks>
