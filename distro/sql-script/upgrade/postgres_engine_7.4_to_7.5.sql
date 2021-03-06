-- tenant id --

ALTER TABLE ACT_RE_DEPLOYMENT
  ADD TENANT_ID_ varchar(64);

create index ACT_IDX_DEPLOYMENT_TENANT_ID on ACT_RE_DEPLOYMENT(TENANT_ID_);

ALTER TABLE ACT_RE_PROCDEF
  ADD TENANT_ID_ varchar(64);

ALTER TABLE ACT_RE_PROCDEF
    DROP CONSTRAINT ACT_UNIQ_PROCDEF;

create index ACT_IDX_PROCDEF_TENANT_ID ON ACT_RE_PROCDEF(TENANT_ID_);

ALTER TABLE ACT_RU_EXECUTION
  ADD TENANT_ID_ varchar(64);

create index ACT_IDX_EXEC_TENANT_ID on ACT_RU_EXECUTION(TENANT_ID_);

ALTER TABLE ACT_RU_TASK
  ADD TENANT_ID_ varchar(64);

create index ACT_IDX_TASK_TENANT_ID on ACT_RU_TASK(TENANT_ID_);

ALTER TABLE ACT_RU_VARIABLE
  ADD TENANT_ID_ varchar(64);

create index ACT_IDX_VARIABLE_TENANT_ID on ACT_RU_VARIABLE(TENANT_ID_);

ALTER TABLE ACT_RU_EVENT_SUBSCR
  ADD TENANT_ID_ varchar(64);

create index ACT_IDX_EVENT_SUBSCR_TENANT_ID on ACT_RU_EVENT_SUBSCR(TENANT_ID_);  

ALTER TABLE ACT_RU_JOB
  ADD TENANT_ID_ varchar(64);

create index ACT_IDX_JOB_TENANT_ID on ACT_RU_JOB(TENANT_ID_); 

ALTER TABLE ACT_RU_JOBDEF
  ADD TENANT_ID_ varchar(64);

create index ACT_IDX_JOBDEF_TENANT_ID on ACT_RU_JOBDEF(TENANT_ID_); 

ALTER TABLE ACT_RU_INCIDENT
  ADD TENANT_ID_ varchar(64);

create index ACT_IDX_INC_TENANT_ID on ACT_RU_INCIDENT(TENANT_ID_); 

ALTER TABLE ACT_RU_EXT_TASK
  ADD TENANT_ID_ varchar(64);

create index ACT_IDX_EXT_TASK_TENANT_ID on ACT_RU_EXT_TASK(TENANT_ID_); 

ALTER TABLE ACT_RE_DECISION_DEF
       DROP CONSTRAINT ACT_UNIQ_DECISION_DEF;

ALTER TABLE ACT_RE_DECISION_DEF
  ADD TENANT_ID_ varchar(64);

create index ACT_IDX_DEC_DEF_TENANT_ID on ACT_RE_DECISION_DEF(TENANT_ID_);

ALTER TABLE ACT_RE_CASE_DEF
       DROP CONSTRAINT ACT_UNIQ_CASE_DEF;

ALTER TABLE ACT_RE_CASE_DEF
  ADD TENANT_ID_ varchar(64);

create index ACT_IDX_CASE_DEF_TENANT_ID on ACT_RE_CASE_DEF(TENANT_ID_);

-- user on historic decision instance --

ALTER TABLE ACT_HI_DECINST
  ADD USER_ID_ varchar(255);

-- tenant id on history --

ALTER TABLE ACT_HI_PROCINST
  ADD TENANT_ID_ varchar(64);

create index ACT_IDX_HI_PRO_INST_TENANT_ID on ACT_HI_PROCINST(TENANT_ID_);

ALTER TABLE ACT_HI_ACTINST
  ADD TENANT_ID_ varchar(64);

create index ACT_IDX_HI_ACT_INST_TENANT_ID on ACT_HI_ACTINST(TENANT_ID_);

ALTER TABLE ACT_HI_TASKINST
  ADD TENANT_ID_ varchar(64);

create index ACT_IDX_HI_TASK_INST_TENANT_ID on ACT_HI_TASKINST(TENANT_ID_);

ALTER TABLE ACT_HI_VARINST
  ADD TENANT_ID_ varchar(64);

create index ACT_IDX_HI_VAR_INST_TENANT_ID on ACT_HI_VARINST(TENANT_ID_);

ALTER TABLE ACT_HI_DETAIL
  ADD TENANT_ID_ varchar(64);

create index ACT_IDX_HI_DETAIL_TENANT_ID on ACT_HI_DETAIL(TENANT_ID_);

ALTER TABLE ACT_HI_INCIDENT
  ADD TENANT_ID_ varchar(64);

create index ACT_IDX_HI_INCIDENT_TENANT_ID on ACT_HI_INCIDENT(TENANT_ID_);

ALTER TABLE ACT_HI_JOB_LOG
  ADD TENANT_ID_ varchar(64);

create index ACT_IDX_HI_JOB_LOG_TENANT_ID on ACT_HI_JOB_LOG(TENANT_ID_);
