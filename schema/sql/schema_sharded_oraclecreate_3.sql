/* tablelist: HLT_&SUFFIX,DEADTIME_&SUFFIX,PXL_&SUFFIX,HFOC_&SUFFIX,ONLINE_RESULT_&SUFFIX,PLT_RESULT_&SUFFIX,BCMF_RESULT_&SUFFIX,HFET_RESULT_&SUFFIX,HFOC_RESULT_&SUFFIX,TRG_&SUFFIX,BEAM_&SUFFIX,OFFLINE_RESULT_&SUFFIX,PLT_&SUFFIX,BCMF_&SUFFIX,HFET_&SUFFIX */
CREATE TABLE HLT_3(DATATAGID NUMBER(20) ,HLTPATHID NUMBER(10) ,PRESCIDX NUMBER(5) ,PRESCVAL NUMBER(10) ,L1PASS NUMBER(10) ,HLTACCEPT NUMBER(10) ,CONSTRAINT HLT_3_PK PRIMARY KEY(DATATAGID,HLTPATHID));
GRANT SELECT ON "HLT_3" TO PUBLIC;

CREATE TABLE DEADTIME_3(DATATAGID NUMBER(20) ,DEADTIMEFRAC BINARY_FLOAT ,CONSTRAINT DEADTIME_3_PK PRIMARY KEY(DATATAGID));
GRANT SELECT ON "DEADTIME_3" TO PUBLIC;

CREATE TABLE PXL_3(DATATAGID NUMBER(20) ,RAWLUMI BINARY_FLOAT ,CONSTRAINT PXL_3_PK PRIMARY KEY(DATATAGID));
GRANT SELECT ON "PXL_3" TO PUBLIC;

CREATE TABLE HFOC_3(DATATAGID NUMBER(20) ,RAWLUMI BINARY_FLOAT ,BXRAWLUMIBLOB BLOB ,CONSTRAINT HFOC_3_PK PRIMARY KEY(DATATAGID));
GRANT SELECT ON "HFOC_3" TO PUBLIC;

CREATE TABLE ONLINE_RESULT_3(RUNNUM NUMBER(10) ,LSNUM NUMBER(10) ,FILLNUM NUMBER(10) ,CMSON NUMBER(1) ,BEAMSTATUS VARCHAR2(4000) ,DELIVERED BINARY_FLOAT ,RECORDED BINARY_FLOAT ,BXDELIVEREDBLOB BLOB ,AVGPU BINARY_FLOAT ,DATASOURCE VARCHAR2(4000) ,NORMTAGID NUMBER(20) ,NORMTAG VARCHAR2(4000) ,CONSTRAINT ONLINE_RESULT_3_PK PRIMARY KEY(RUNNUM,LSNUM));
GRANT SELECT ON "ONLINE_RESULT_3" TO PUBLIC;

CREATE TABLE PLT_RESULT_3(DATATAGID NUMBER(20) ,NORMTAG VARCHAR2(4000) ,NORMTAGID NUMBER(20) ,AVGLUMI BINARY_FLOAT ,BXLUMIBLOB BLOB ,CONSTRAINT PLT_RESULT_3_PK PRIMARY KEY(DATATAGID,NORMTAGID));
GRANT SELECT ON "PLT_RESULT_3" TO PUBLIC;

CREATE TABLE BCMF_RESULT_3(DATATAGID NUMBER(20) ,NORMTAG VARCHAR2(4000) ,NORMTAGID NUMBER(20) ,AVGLUMI BINARY_FLOAT ,BXLUMIBLOB BLOB ,CONSTRAINT BCMF_RESULT_3_PK PRIMARY KEY(DATATAGID,NORMTAGID));
GRANT SELECT ON "BCMF_RESULT_3" TO PUBLIC;

CREATE TABLE HFET_RESULT_3(DATATAGID NUMBER(20) ,NORMTAG VARCHAR2(4000) ,NORMTAGID NUMBER(20) ,AVGLUMI BINARY_FLOAT ,BXLUMIBLOB BLOB ,CONSTRAINT HFET_RESULT_3_PK PRIMARY KEY(DATATAGID,NORMTAGID));
GRANT SELECT ON "HFET_RESULT_3" TO PUBLIC;

CREATE TABLE HFOC_RESULT_3(DATATAGID NUMBER(20) ,NORMTAG VARCHAR2(4000) ,NORMTAGID NUMBER(20) ,AVGLUMI BINARY_FLOAT ,BXLUMIBLOB BLOB ,CONSTRAINT HFOC_RESULT_3_PK PRIMARY KEY(DATATAGID,NORMTAGID));
GRANT SELECT ON "HFOC_RESULT_3" TO PUBLIC;

CREATE TABLE TRG_3(DATATAGID NUMBER(20) ,BITID NUMBER(5) ,BITNAME VARCHAR2(4000) ,PRESCIDX NUMBER(5) ,PRESCVAL NUMBER(10) ,MASK NUMBER(1) ,COUNTS NUMBER(10) ,CONSTRAINT TRG_3_PK PRIMARY KEY(DATATAGID,BITID));
GRANT SELECT ON "TRG_3" TO PUBLIC;

CREATE TABLE BEAM_3(DATATAGID NUMBER(20) ,EGEV BINARY_FLOAT ,INTENSITY1 BINARY_FLOAT ,INTENSITY2 BINARY_FLOAT ,BXIDXBLOB BLOB ,BXINTENSITY1BLOB BLOB ,BXINTENSITY2BLOB BLOB ,CONSTRAINT BEAM_3_PK PRIMARY KEY(DATATAGID));
GRANT SELECT ON "BEAM_3" TO PUBLIC;

CREATE TABLE OFFLINE_RESULT_3(RUNNUM NUMBER(10) ,LSNUM NUMBER(10) ,FILLNUM NUMBER(10) ,CMSON NUMBER(1) ,BEAMSTATUS VARCHAR2(4000) ,DELIVERED BINARY_FLOAT ,RECORDED BINARY_FLOAT ,BXDELIVEREDBLOB BLOB ,AVGPU BINARY_FLOAT ,DATASOURCE VARCHAR2(4000) ,DATATAGID NUMBER(20) ,NORMTAGID NUMBER(20) ,CONSTRAINT OFFLINE_RESULT_3_PK PRIMARY KEY(RUNNUM,LSNUM));
GRANT SELECT ON "OFFLINE_RESULT_3" TO PUBLIC;

CREATE TABLE PLT_3(DATATAGID NUMBER(20) ,RAWLUMI BINARY_FLOAT ,BXRAWLUMIBLOB BLOB ,CONSTRAINT PLT_3_PK PRIMARY KEY(DATATAGID));
GRANT SELECT ON "PLT_3" TO PUBLIC;

CREATE TABLE BCMF_3(DATATAGID NUMBER(20) ,RAWLUMI BINARY_FLOAT ,BXRAWLUMIBLOB BLOB ,BKGPLUSZ BINARY_FLOAT ,BKGMINUSZ BINARY_FLOAT ,CONSTRAINT BCMF_3_PK PRIMARY KEY(DATATAGID));
GRANT SELECT ON "BCMF_3" TO PUBLIC;

CREATE TABLE HFET_3(DATATAGID NUMBER(20) ,RAWLUMI BINARY_FLOAT ,BXRAWLUMIBLOB BLOB ,CONSTRAINT HFET_3_PK PRIMARY KEY(DATATAGID));
GRANT SELECT ON "HFET_3" TO PUBLIC;
