set define off
set verify off
set serveroutput on size 1000000
set feedback off
WHENEVER SQLERROR EXIT SQL.SQLCODE ROLLBACK
begin wwv_flow.g_import_in_progress := true; end; 
/
 
--       AAAA       PPPPP   EEEEEE  XX      XX
--      AA  AA      PP  PP  EE       XX    XX
--     AA    AA     PP  PP  EE        XX  XX
--    AAAAAAAAAA    PPPPP   EEEE       XXXX
--   AA        AA   PP      EE        XX  XX
--  AA          AA  PP      EE       XX    XX
--  AA          AA  PP      EEEEEE  XX      XX
begin
select value into wwv_flow_api.g_nls_numeric_chars from nls_session_parameters where parameter='NLS_NUMERIC_CHARACTERS';
execute immediate 'alter session set nls_numeric_characters=''.,''';
end;
/
-- Workspace, user group, user and team development export
-- Generated 2022.11.16 17:29:22 by SIAD
-- This script can be run in sqlplus as the owner of the Oracle Apex owner.
begin
    wwv_flow_api.set_security_group_id(p_security_group_id=>4778315149162654);
end;
/
----------------
-- W O R K S P A C E
-- Creating a workspace will not create database schemas or objects.
-- This API creates only the meta data for this APEX workspace
prompt  Creating workspace SIAD...
begin
wwv_flow_fnd_user_api.create_company (
  p_id                           => 4778427490162693,
  p_provisioning_company_id      => 4778315149162654,
  p_short_name                   => 'SIAD',
  p_first_schema_provisioned     => 'SIAD',
  p_company_schemas              => 'SIAD',
  p_expire_fnd_user_accounts     => '',
  p_account_lifetime_days        => '',
  p_fnd_user_max_login_failures  => '',
  p_allow_plsql_editing          => 'Y',
  p_allow_app_building_yn        => 'Y',
  p_allow_sql_workshop_yn        => 'Y',
  p_allow_websheet_dev_yn        => 'Y',
  p_allow_team_development_yn    => 'Y',
  p_allow_to_be_purged_yn        => 'Y',
  p_source_identifier            => 'SIAD',
  p_builder_notification_message => '');
end;
/
----------------
-- G R O U P S
--
prompt  Creating Groups...
----------------
-- U S E R S
-- User repository for use with apex cookie based authenticaion.
--
prompt  Creating Users...
begin
wwv_flow_fnd_user_api.create_fnd_user (
  p_user_id      => '4796127388666596',
  p_user_name    => 'BI_USER',
  p_first_name   => 'BI',
  p_last_name    => 'user',
  p_description  => '',
  p_email_address=> 'anouarsfar023@gmail.com',
  p_web_password => 'C759572D08F975E118826248257E6FA7',
  p_web_password_format => 'HEX_ENCODED_DIGEST_V2',
  p_group_ids    => '',
  p_developer_privs=> 'CREATE:EDIT:HELP:MONITOR:SQL:MONITOR:DATA_LOADER',
  p_default_schema=> 'SIAD',
  p_account_locked=> 'N',
  p_account_expiry=> to_date('202211152137','YYYYMMDDHH24MI'),
  p_failed_access_attempts=> 0,
  p_change_password_on_first_use=> 'Y',
  p_first_password_use_occurred=> 'Y',
  p_allow_app_building_yn=> 'Y',
  p_allow_sql_workshop_yn=> 'Y',
  p_allow_websheet_dev_yn=> 'Y',
  p_allow_team_development_yn=> 'Y',
  p_allow_access_to_schemas => '');
end;
/
begin
wwv_flow_fnd_user_api.create_fnd_user (
  p_user_id      => '4795631628648889',
  p_user_name    => 'PRIVATE_SIAD',
  p_first_name   => 'anouar',
  p_last_name    => 'sfar',
  p_description  => '',
  p_email_address=> 'anouarsfar023@gmail.com',
  p_web_password => 'D9A626EDCC7796B66090DA3AF8C01BEF',
  p_web_password_format => 'HEX_ENCODED_DIGEST_V2',
  p_group_ids    => '',
  p_developer_privs=> 'CREATE:EDIT:HELP:MONITOR:SQL:MONITOR:DATA_LOADER',
  p_default_schema=> 'SIAD',
  p_account_locked=> 'Y',
  p_account_expiry=> to_date('202211150000','YYYYMMDDHH24MI'),
  p_failed_access_attempts=> 0,
  p_change_password_on_first_use=> 'Y',
  p_first_password_use_occurred=> 'N',
  p_allow_app_building_yn=> 'Y',
  p_allow_sql_workshop_yn=> 'Y',
  p_allow_websheet_dev_yn=> 'Y',
  p_allow_team_development_yn=> 'Y',
  p_allow_access_to_schemas => '');
end;
/
begin
wwv_flow_fnd_user_api.create_fnd_user (
  p_user_id      => '4778230193162654',
  p_user_name    => 'SIAD',
  p_first_name   => '',
  p_last_name    => '',
  p_description  => '',
  p_email_address=> '',
  p_web_password => '248A839F8FBDFADF0AF5F82011F32BC8',
  p_web_password_format => 'HEX_ENCODED_DIGEST_V2',
  p_group_ids    => '',
  p_developer_privs=> 'ADMIN:CREATE:DATA_LOADER:EDIT:HELP:MONITOR:SQL',
  p_default_schema=> 'SIAD',
  p_account_locked=> 'N',
  p_account_expiry=> to_date('202211101716','YYYYMMDDHH24MI'),
  p_failed_access_attempts=> 0,
  p_change_password_on_first_use=> 'N',
  p_first_password_use_occurred=> 'N',
  p_allow_app_building_yn=> 'Y',
  p_allow_sql_workshop_yn=> 'Y',
  p_allow_websheet_dev_yn=> 'Y',
  p_allow_team_development_yn=> 'Y',
  p_allow_access_to_schemas => '');
end;
/
prompt Check Compatibility...
begin
-- This date identifies the minimum version required to import this file.
wwv_flow_team_api.check_version(p_version_yyyy_mm_dd=>'2010.05.13');
end;
/
 
begin wwv_flow.g_import_in_progress := true; wwv_flow.g_user := USER; end; 
/
 
--
prompt ...news
--
begin
null;
end;
/
--
prompt ...links
--
begin
null;
end;
/
--
prompt ...bugs
--
begin
null;
end;
/
--
prompt ...events
--
begin
null;
end;
/
--
prompt ...features
--
begin
null;
end;
/
--
prompt ...tasks
--
begin
null;
end;
/
--
prompt ...feedback
--
begin
null;
end;
/
--
prompt ...task defaults
--
begin
null;
end;
/
commit;
begin 
execute immediate 'begin dbms_session.set_nls( param => ''NLS_NUMERIC_CHARACTERS'', value => '''''''' || replace(wwv_flow_api.g_nls_numeric_chars,'''''''','''''''''''') || ''''''''); end;';
end;
/
set verify on
set feedback on
prompt  ...done
