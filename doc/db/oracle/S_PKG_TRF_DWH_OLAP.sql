prompt
prompt Creating table XXL_JOB_QRTZ_BLOB_TRIGGERS
prompt =========================================
prompt
create table XXL_JOB_QRTZ_BLOB_TRIGGERS
(
  sched_name    VARCHAR2(360) not null,
  trigger_name  VARCHAR2(600) not null,
  trigger_group VARCHAR2(600) not null,
  blob_data     BLOB
)
;
alter table XXL_JOB_QRTZ_BLOB_TRIGGERS
  add constraint PRIMARYKEY4 primary key (SCHED_NAME, TRIGGER_NAME, TRIGGER_GROUP);

prompt
prompt Creating table XXL_JOB_QRTZ_CRON_TRIGGERS
prompt =========================================
prompt
create table XXL_JOB_QRTZ_CRON_TRIGGERS
(
  sched_name      VARCHAR2(360) not null,
  trigger_name    VARCHAR2(600) not null,
  trigger_group   VARCHAR2(600) not null,
  cron_expression VARCHAR2(600) not null,
  time_zone_id    VARCHAR2(240)
)
;
alter table XXL_JOB_QRTZ_CRON_TRIGGERS
  add constraint PRIMARYKEY6 primary key (SCHED_NAME, TRIGGER_NAME, TRIGGER_GROUP);

prompt
prompt Creating table XXL_JOB_QRTZ_FIRED_TRIGGERS
prompt ==========================================
prompt
create table XXL_JOB_QRTZ_FIRED_TRIGGERS
(
  sched_name        VARCHAR2(360) not null,
  entry_id          VARCHAR2(300) not null,
  trigger_name      VARCHAR2(600) not null,
  trigger_group     VARCHAR2(600) not null,
  instance_name     VARCHAR2(600) not null,
  fired_time        NUMBER(13),
  sched_time        NUMBER(13) not null,
  priority          NUMBER(11) not null,
  state             VARCHAR2(48) not null,
  job_name          VARCHAR2(600),
  job_group         VARCHAR2(600),
  is_nonconcurrent  VARCHAR2(1),
  requests_recovery VARCHAR2(1)
)
;
alter table XXL_JOB_QRTZ_FIRED_TRIGGERS
  add constraint PRIMAYKEY7 primary key (SCHED_NAME, ENTRY_ID);

prompt
prompt Creating table XXL_JOB_QRTZ_JOB_DETAILS
prompt =======================================
prompt
create table XXL_JOB_QRTZ_JOB_DETAILS
(
  sched_name        VARCHAR2(360) not null,
  job_name          VARCHAR2(600) not null,
  job_group         VARCHAR2(600) not null,
  description       VARCHAR2(750),
  job_class_name    VARCHAR2(750) not null,
  is_durable        VARCHAR2(1) not null,
  is_nonconcurrent  VARCHAR2(1) not null,
  is_update_data    VARCHAR2(1) not null,
  requests_recovery VARCHAR2(1) not null,
  job_data          BLOB
)
;
alter table XXL_JOB_QRTZ_JOB_DETAILS
  add constraint PRIMARYKEY8 primary key (SCHED_NAME, JOB_NAME, JOB_GROUP);

prompt
prompt Creating table XXL_JOB_QRTZ_LOCKS
prompt =================================
prompt
create table XXL_JOB_QRTZ_LOCKS
(
  sched_name VARCHAR2(360) not null,
  lock_name  VARCHAR2(120) not null
)
;
alter table XXL_JOB_QRTZ_LOCKS
  add constraint PRIMARYKEY9 primary key (SCHED_NAME, LOCK_NAME);

prompt
prompt Creating table XXL_JOB_QRTZ_PAUSED_TRIGGER_GRPS
prompt ===============================================
prompt
create table XXL_JOB_QRTZ_PAUSED_TRIGGER_GRPS
(
  sched_name    VARCHAR2(360) not null,
  trigger_group VARCHAR2(600) not null
)
;
alter table XXL_JOB_QRTZ_PAUSED_TRIGGER_GRPS
  add constraint PRIMARYKEY11 primary key (SCHED_NAME, TRIGGER_GROUP);

prompt
prompt Creating table XXL_JOB_QRTZ_SCHEDULER_STATE
prompt ===========================================
prompt
create table XXL_JOB_QRTZ_SCHEDULER_STATE
(
  sched_name        VARCHAR2(360) not null,
  instance_name     VARCHAR2(600) not null,
  last_checkin_time NUMBER(13) not null,
  checkin_interval  NUMBER(13) not null
)
;
alter table XXL_JOB_QRTZ_SCHEDULER_STATE
  add constraint PRIMARYKEY10 primary key (SCHED_NAME, INSTANCE_NAME);

prompt
prompt Creating table XXL_JOB_QRTZ_SIMPLE_TRIGGERS
prompt ===========================================
prompt
create table XXL_JOB_QRTZ_SIMPLE_TRIGGERS
(
  sched_name      VARCHAR2(360) not null,
  trigger_name    VARCHAR2(600) not null,
  trigger_group   VARCHAR2(600) not null,
  repeat_count    NUMBER(7) not null,
  repeat_interval NUMBER(12) not null,
  times_triggered NUMBER(10) not null
)
;
alter table XXL_JOB_QRTZ_SIMPLE_TRIGGERS
  add constraint PRIMARYKEY primary key (SCHED_NAME, TRIGGER_NAME, TRIGGER_GROUP);

prompt
prompt Creating table XXL_JOB_QRTZ_SIMPROP_TRIGGERS
prompt ============================================
prompt
create table XXL_JOB_QRTZ_SIMPROP_TRIGGERS
(
  sched_name    VARCHAR2(360) not null,
  trigger_name  VARCHAR2(600) not null,
  trigger_group VARCHAR2(600) not null,
  str_prop_1    VARCHAR2(1536),
  str_prop_2    VARCHAR2(1536),
  str_prop_3    VARCHAR2(1536),
  int_prop_1    NUMBER(11),
  int_prop_2    NUMBER(11),
  long_prop_1   NUMBER(20),
  long_prop_2   NUMBER(20),
  dec_prop_1    NUMBER(13,4),
  dec_prop_2    NUMBER(13,4),
  bool_prop_1   VARCHAR2(1),
  bool_prop_2   VARCHAR2(1)
)
;
alter table XXL_JOB_QRTZ_SIMPROP_TRIGGERS
  add constraint PRIMARYKEY2 primary key (SCHED_NAME, TRIGGER_NAME, TRIGGER_GROUP);

prompt
prompt Creating table XXL_JOB_QRTZ_TRIGGERS
prompt ====================================
prompt
create table XXL_JOB_QRTZ_TRIGGERS
(
  sched_name     VARCHAR2(360) not null,
  trigger_name   VARCHAR2(600) not null,
  trigger_group  VARCHAR2(600) not null,
  job_name       VARCHAR2(600) not null,
  job_group      VARCHAR2(600) not null,
  description    VARCHAR2(750),
  next_fire_time NUMBER(13),
  prev_fire_time NUMBER(13),
  priority       NUMBER(11),
  trigger_state  VARCHAR2(48) not null,
  trigger_type   VARCHAR2(24) not null,
  start_time     NUMBER(13),
  end_time       NUMBER(13),
  calendar_name  VARCHAR2(600),
  misfire_instr  NUMBER(2),
  job_data       BLOB
)
;
alter table XXL_JOB_QRTZ_TRIGGERS
  add constraint PRIMARYKEY3 primary key (SCHED_NAME, TRIGGER_GROUP, TRIGGER_NAME);

prompt
prompt Creating table XXL_JOB_QRTZ_TRIGGER_GROUP
prompt =========================================
prompt
create table XXL_JOB_QRTZ_TRIGGER_GROUP
(
  id           NUMBER(11) not null,
  app_name     VARCHAR2(192) not null,
  title        VARCHAR2(36) not null,
  group_order  NUMBER(4) default 0,
  address_type NUMBER(4) default 0 not null,
  address_list VARCHAR2(1536)
)
;
comment on column XXL_JOB_QRTZ_TRIGGER_GROUP.app_name
  is '执行器AppName';
comment on column XXL_JOB_QRTZ_TRIGGER_GROUP.title
  is '执行器名称';
comment on column XXL_JOB_QRTZ_TRIGGER_GROUP.group_order
  is '排序';
comment on column XXL_JOB_QRTZ_TRIGGER_GROUP.address_type
  is '执行器地址类型：0=自动注册、1=手动录入';
comment on column XXL_JOB_QRTZ_TRIGGER_GROUP.address_list
  is '执行器地址列表，多地址逗号分隔';
alter table XXL_JOB_QRTZ_TRIGGER_GROUP
  add primary key (ID);

prompt
prompt Creating table XXL_JOB_QRTZ_TRIGGER_INFO
prompt ========================================
prompt
create table XXL_JOB_QRTZ_TRIGGER_INFO
(
  id                        NUMBER(11) not null,
  job_group                 NUMBER(11) not null,
  job_cron                  VARCHAR2(384) not null,
  job_desc                  VARCHAR2(765) not null,
  add_time                  DATE,
  update_time               DATE,
  author                    VARCHAR2(192),
  alarm_email               VARCHAR2(765),
  executor_route_strategy   VARCHAR2(150),
  executor_handler          VARCHAR2(765),
  executor_param            VARCHAR2(1536),
  executor_block_strategy   VARCHAR2(150),
  executor_timeout          NUMBER(11) default 0 not null,
  executor_fail_retry_count NUMBER(11) default 0 not null,
  glue_type                 VARCHAR2(150) not null,
  glue_source               CLOB,
  glue_remark               VARCHAR2(384),
  glue_updatetime           DATE,
  child_jobid               VARCHAR2(765)
)
;
comment on column XXL_JOB_QRTZ_TRIGGER_INFO.job_group
  is '执行器主键ID';
comment on column XXL_JOB_QRTZ_TRIGGER_INFO.job_cron
  is '任务执行CRON';
comment on column XXL_JOB_QRTZ_TRIGGER_INFO.author
  is '作者';
comment on column XXL_JOB_QRTZ_TRIGGER_INFO.alarm_email
  is '报警邮件';
comment on column XXL_JOB_QRTZ_TRIGGER_INFO.executor_route_strategy
  is '执行器路由策略';
comment on column XXL_JOB_QRTZ_TRIGGER_INFO.executor_handler
  is '执行器任务handler';
comment on column XXL_JOB_QRTZ_TRIGGER_INFO.executor_param
  is '执行器任务参数';
comment on column XXL_JOB_QRTZ_TRIGGER_INFO.executor_block_strategy
  is '阻塞处理策略';
comment on column XXL_JOB_QRTZ_TRIGGER_INFO.executor_timeout
  is '任务执行超时时间，单位秒';
comment on column XXL_JOB_QRTZ_TRIGGER_INFO.executor_fail_retry_count
  is '失败重试次数';
comment on column XXL_JOB_QRTZ_TRIGGER_INFO.glue_type
  is 'GLUE类型';
comment on column XXL_JOB_QRTZ_TRIGGER_INFO.glue_source
  is 'GLUE源代码';
comment on column XXL_JOB_QRTZ_TRIGGER_INFO.glue_remark
  is 'GLUE备注';
comment on column XXL_JOB_QRTZ_TRIGGER_INFO.glue_updatetime
  is 'GLUE更新时间';
comment on column XXL_JOB_QRTZ_TRIGGER_INFO.child_jobid
  is '子任务ID，多个逗号分隔';
alter table XXL_JOB_QRTZ_TRIGGER_INFO
  add primary key (ID);

prompt
prompt Creating table XXL_JOB_QRTZ_TRIGGER_LOG
prompt =======================================
prompt
create table XXL_JOB_QRTZ_TRIGGER_LOG
(
  id                        NUMBER(11) not null,
  job_group                 NUMBER(11) not null,
  job_id                    NUMBER(11) not null,
  executor_address          VARCHAR2(765),
  executor_handler          VARCHAR2(765),
  executor_param            VARCHAR2(1536),
  executor_sharding_param   VARCHAR2(60),
  executor_fail_retry_count NUMBER(11) default 0 not null,
  trigger_time              DATE,
  trigger_code              VARCHAR2(765) default 0 not null,
  trigger_msg               CLOB,
  handle_time               DATE,
  handle_code               VARCHAR2(765) default 0 not null,
  handle_msg                CLOB,
  alarm_status              NUMBER(4) default 0 not null
)
;
comment on column XXL_JOB_QRTZ_TRIGGER_LOG.job_group
  is '执行器主键ID';
comment on column XXL_JOB_QRTZ_TRIGGER_LOG.job_id
  is '任务，主键ID';
comment on column XXL_JOB_QRTZ_TRIGGER_LOG.executor_address
  is '执行器地址，本次执行的地址';
comment on column XXL_JOB_QRTZ_TRIGGER_LOG.executor_handler
  is '执行器任务handler';
comment on column XXL_JOB_QRTZ_TRIGGER_LOG.executor_param
  is '执行器任务参数';
comment on column XXL_JOB_QRTZ_TRIGGER_LOG.executor_sharding_param
  is '执行器任务分片参数，格式如 1/2';
comment on column XXL_JOB_QRTZ_TRIGGER_LOG.executor_fail_retry_count
  is '失败重试次数';
comment on column XXL_JOB_QRTZ_TRIGGER_LOG.trigger_time
  is '调度-时间';
comment on column XXL_JOB_QRTZ_TRIGGER_LOG.trigger_code
  is '调度-结果';
comment on column XXL_JOB_QRTZ_TRIGGER_LOG.trigger_msg
  is '调度-日志';
comment on column XXL_JOB_QRTZ_TRIGGER_LOG.handle_time
  is '执行-时间';
comment on column XXL_JOB_QRTZ_TRIGGER_LOG.handle_code
  is '执行-状态';
comment on column XXL_JOB_QRTZ_TRIGGER_LOG.handle_msg
  is '执行-日志';
comment on column XXL_JOB_QRTZ_TRIGGER_LOG.alarm_status
  is '告警状态：0-默认、1-无需告警、2-告警成功、3-告警失败';
alter table XXL_JOB_QRTZ_TRIGGER_LOG
  add primary key (ID);

prompt
prompt Creating table XXL_JOB_QRTZ_TRIGGER_LOGGLUE
prompt ===========================================
prompt
create table XXL_JOB_QRTZ_TRIGGER_LOGGLUE
(
  id          NUMBER(11) not null,
  job_id      NUMBER(11) not null,
  glue_type   VARCHAR2(150),
  glue_source CLOB,
  glue_remark VARCHAR2(384),
  add_time    DATE,
  update_time DATE
)
;
comment on column XXL_JOB_QRTZ_TRIGGER_LOGGLUE.job_id
  is '任务，主键ID';
comment on column XXL_JOB_QRTZ_TRIGGER_LOGGLUE.glue_type
  is 'GLUE类型';
comment on column XXL_JOB_QRTZ_TRIGGER_LOGGLUE.glue_source
  is 'GLUE源代码';
comment on column XXL_JOB_QRTZ_TRIGGER_LOGGLUE.glue_remark
  is 'GLUE备注';
alter table XXL_JOB_QRTZ_TRIGGER_LOGGLUE
  add primary key (ID);

prompt
prompt Creating table XXL_JOB_QRTZ_TRIGGER_REGISTRY
prompt ============================================
prompt
create table XXL_JOB_QRTZ_TRIGGER_REGISTRY
(
  id             NUMBER(11) not null,
  registry_group VARCHAR2(765) not null,
  registry_key   VARCHAR2(765) not null,
  registry_value VARCHAR2(765) not null,
  update_time    DATE
)
;
alter table XXL_JOB_QRTZ_TRIGGER_REGISTRY
  add primary key (ID);

prompt
prompt Creating sequence JOB_KEY_SEQUENCE
prompt ==================================
prompt
create sequence JOB_KEY_SEQUENCE
minvalue 1
maxvalue 999999999
start with 21
increment by 1
cache 20;

