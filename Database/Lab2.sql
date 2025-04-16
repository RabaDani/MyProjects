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
DROP TABLE NYUJT;
DROP TABLE SZOLGALTATAS;
DROP TABLE CEG;

prompt <tasks>

prompt <task n="2">
prompt <![CDATA[

CREATE TABLE SZOLGALTATAS (
    SZOLGALTATAS_ID NUMBER(10) NOT NULL PRIMARY KEY,
    SZ_NEV VARCHAR(40) UNIQUE NOT NULL,
    SZ_GYAK INT CHECK(SZ_GYAK >=1 AND SZ_GYAK <= 600) NOT NULL,
    SZ_RESZLEGEK VARCHAR(5) DEFAULT 'Mxxxx' NOT NULL,
    SZ_BELSO_ER NUMBER(1) DEFAULT 0 NOT NULL,
    CONSTRAINT SZOLG_BELSOER_CK CHECK (SZ_BELSO_ER in (0, 1))
    );

CREATE TABLE CEG (
    CEG_ID NUMBER(10)PRIMARY KEY NOT NULL,
    C_ADOSZ NUMBER(11) UNIQUE NOT NULL,
    C_NEV VARCHAR(40) NOT NULL,
    C_BANKSZ NUMBER(24) NOT NULL,
    C_KAPCS_TAR VARCHAR(40)
    );
    
CREATE TABLE NYUJT (
    NYUJT_ID NUMBER(10)PRIMARY KEY NOT NULL,
    SZOLGALTATAS_ID NUMBER(10)NOT NULL,
    CEG_ID NUMBER(10)NOT NULL,
    CONSTRAINT SZOLG_ID_FK
       FOREIGN KEY (SZOLGALTATAS_ID)
       REFERENCES SZOLGALTATAS(SZOLGALTATAS_ID),
     CONSTRAINT CEG_ID_FK
       FOREIGN KEY (CEG_ID)
       REFERENCES CEG(CEG_ID),
    DATUM DATE NOT NULL,
    AR NUMBER(8) CHECK(AR >=2000 AND AR <= 15000000) NOT NULL,
    ELEGEDETTSEG INT CHECK(ELEGEDETTSEG >=1 AND ELEGEDETTSEG <= 10) NOT NULL,
    NY_AZON VARCHAR(10) NOT NULL
    );

prompt ]]>
prompt </task>

prompt </tasks>
