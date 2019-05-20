--WARNING! ERRORS ENCOUNTERED DURING SQL PARSING!
--system用户执行
--创建表空间：
CREATE tablespace SCHEDUAL_JOB datafile '/storage/oradata/SCHEDUAL_JOB.DBF' size 512 M autoextend ON NEXT 512 M maxsize unlimited extent management LOCAL segment space management auto;

--创建用户
CREATE user SCHEDUAL_JOB identified BY SCHEDUAL_JOB DEFAULT tablespace SCHEDUAL_JOB TEMPORARY tablespace TEMP;

ALTER user SCHEDUAL_JOB quota Unlimited ON SCHEDUAL_JOB;

---授权
GRANT CREATE SESSION
	,CONNECT
	,RESOURCE
	,DBA
	,CREATE PROCEDURE
	,CREATE TABLE
	,CREATE VIEW
	TO "SCHEDUAL_JOB";
