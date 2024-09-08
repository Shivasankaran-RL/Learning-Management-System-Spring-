-- Oracle Application Express 4.0.2.00.09 SQL Script Export file
-- Exported 13:06 Friday July 19, 2024 by: SHIVASANKARAN
-- Scripts included:
--      SHIVASANKARAN
 
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
prompt  Set Credentials...
 
begin
 
  -- Assumes you are running the script connected to SQL*Plus as the Oracle user APEX_040000 or as the owner (parsing schema) of the application.
  wwv_flow_api.set_security_group_id(p_security_group_id=>nvl(wwv_flow_application_install.get_workspace_id,4776418109050600));
 
end;
/

begin wwv_flow.g_import_in_progress := true; end;
/
begin 

select value into wwv_flow_api.g_nls_numeric_chars from nls_session_parameters where parameter='NLS_NUMERIC_CHARACTERS';

end;

/
begin execute immediate 'alter session set nls_numeric_characters=''.,''';

end;

/
begin wwv_flow.g_browser_language := 'en'; end;
/
prompt  Check Compatibility...
 
begin
 
-- This date identifies the minimum version required to import this file.
wwv_flow_api.set_version(p_version_yyyy_mm_dd=>'2010.05.13');
 
end;
/

begin wwv_flow.g_user := nvl(wwv_flow.g_user,'SHIVASANKARAN'); end;
/
--application/sql/scripts
prompt ...exporting script file
--
begin
    wwv_flow_api.g_varchar2_table := wwv_flow_api.empty_varchar2_table;
    wwv_flow_api.g_varchar2_table(1) := '435245415445205441424C4520202241444D494E22200A202020280922555345524E414D4522205641524348415232283330292C200A092250415353574F524422205641524348415232283230292C200A09224E414D4522205641524348415232283235';
    wwv_flow_api.g_varchar2_table(2) := '35292C200A0922454D41494C2220564152434841523228323535292C200A092241444D494E494422204E554D4245522833382C30290A20202029203B435245415445205441424C452020225155455354494F4E22200A2020202809225155455354494F4E';
    wwv_flow_api.g_varchar2_table(3) := '494422204E554D4245522833382C30292C200A09225155455354494F4E222056415243484152322832303030292C200A09224F5054494F4E41222056415243484152322832303030292C200A0922414E53574552222056415243484152322831292C200A';
    wwv_flow_api.g_varchar2_table(4) := '09224153534553534D454E54494422204E554D4245522833382C30292C200A09224F5054494F4E42222056415243484152322832303030292C200A09224F5054494F4E43222056415243484152322832303030292C200A09224F5054494F4E4422205641';
    wwv_flow_api.g_varchar2_table(5) := '5243484152322832303030292C200A0920434F4E53545241494E54202251504B22205052494D415259204B45592028225155455354494F4E4944222920454E41424C450A20202029203B435245415445205441424C45202022414E5357455222200A2020';
    wwv_flow_api.g_varchar2_table(6) := '20280922414E53574552494422204E554D4245522833382C30292C200A092253545544454E54494422204E554D4245522833382C30292C200A09225155455354494F4E494422204E554D4245522833382C30292C200A092253545544454E54414E535745';
    wwv_flow_api.g_varchar2_table(7) := '52222056415243484152322831292C200A09224153534553534D454E54494422204E554D4245522833382C30292C200A0920434F4E53545241494E542022414E504B22205052494D415259204B4559202822414E535745524944222920454E41424C450A';
    wwv_flow_api.g_varchar2_table(8) := '20202029203B435245415445205441424C45202022544F50494322200A202020280922544F504943494422204E554D4245522833382C30292C200A0922544F5049434E414D452220564152434841523228323535292C200A09224D4F44554C4549442220';
    wwv_flow_api.g_varchar2_table(9) := '4E554D4245522833382C30292C200A0920434F4E53545241494E54202254504B22205052494D415259204B4559202822544F5049434944222920454E41424C452C200A0920434F4E53545241494E54202255544F5049434E414D452220554E4951554520';
    wwv_flow_api.g_varchar2_table(10) := '2822544F5049434E414D45222920454E41424C450A20202029203B435245415445205441424C452020224153534553534D454E5422200A2020202809224153534553534D454E54494422204E554D4245522833382C30292C200A09224153534553534D45';
    wwv_flow_api.g_varchar2_table(11) := '4E544E414D452220564152434841523228323535292C200A0922544F504943494422204E554D4245522833382C30292C200A0920434F4E53545241494E54202241504B22205052494D415259204B45592028224153534553534D454E544944222920454E';
    wwv_flow_api.g_varchar2_table(12) := '41424C452C200A0920434F4E53545241494E542022554153534553534D454E544E414D452220554E495155452028224153534553534D454E544E414D45222920454E41424C450A20202029203B435245415445205441424C45202022434F4E54454E5422';
    wwv_flow_api.g_varchar2_table(13) := '200A202020280922434F4E54454E54494422204E554D4245522833382C30292C200A0922434F4E54454E544E414D452220564152434841523228323535292C200A0922544F504943494422204E554D4245522833382C30292C200A0920434F4E53545241';
    wwv_flow_api.g_varchar2_table(14) := '494E542022434F4E54454E54504B22205052494D415259204B4559202822434F4E54454E544944222920454E41424C452C200A0920434F4E53545241494E54202255434F4E54454E544E414D452220554E49515545202822434F4E54454E544E414D4522';
    wwv_flow_api.g_varchar2_table(15) := '2920454E41424C450A20202029203B435245415445205441424C45202022494E5354525543544F5222200A202020280922494E5354525543544F52494422204E554D424552282A2C30292C200A092246495253544E414D45222056415243484152322835';
    wwv_flow_api.g_varchar2_table(16) := '30292C200A09224C4153544E414D4522205641524348415232283530292C200A0922454D41494C22205641524348415232283530292C200A09224445504152544D454E5422205641524348415232283530292C200A0922555345524E414D452220564152';
    wwv_flow_api.g_varchar2_table(17) := '434841523228323535292C200A092250415353574F52442220564152434841523228323535292C200A0922434F55525345494422204E554D4245522C200A09205052494D415259204B4559202822494E5354525543544F524944222920454E41424C452C';
    wwv_flow_api.g_varchar2_table(18) := '200A0920434F4E53545241494E54202249555345522220554E49515545202822555345524E414D45222920454E41424C450A20202029203B435245415445205441424C45202022434F555253455322200A202020280922434F55525345494422204E554D';
    wwv_flow_api.g_varchar2_table(19) := '424552282A2C30292C200A0922434F555253454E414D452220564152434841523228323535292C200A0922494E5354525543544F52494422204E554D424552282A2C30292C200A09225354415254444154452220444154452C200A0922454E4444415445';
    wwv_flow_api.g_varchar2_table(20) := '2220444154452C200A09205052494D415259204B4559202822434F555253454944222920454E41424C450A20202029203B435245415445205441424C452020224D4F44554C4522200A2020202809224D4F44554C45494422204E554D4245522C200A0922';
    wwv_flow_api.g_varchar2_table(21) := '4D4F44554C454E414D452220564152434841523228323535292C200A0922494E5354525543544F52494422204E554D4245522833382C30292C200A0922434F55525345494422204E554D4245522833382C30292C200A0920434F4E53545241494E542022';
    wwv_flow_api.g_varchar2_table(22) := '504B22205052494D415259204B45592028224D4F44554C454944222920454E41424C452C200A0920434F4E53545241494E542022554D4F44554C454E414D452220554E495155452028224D4F44554C454E414D45222920454E41424C450A20202029203B';
    wwv_flow_api.g_varchar2_table(23) := '435245415445205441424C4520202253545544454E5422200A20202028092253545544454E545F494422204E554D4245522C200A09224E414D4522205641524348415232283230292C200A0922444F4222205641524348415232283230292C200A092247';
    wwv_flow_api.g_varchar2_table(24) := '5241444522204E554D4245522C200A0922555345524E414D45222056415243484152322832353529204E4F54204E554C4C20454E41424C452C200A092250415353574F5244222056415243484152322832353529204E4F54204E554C4C20454E41424C45';
    wwv_flow_api.g_varchar2_table(25) := '2C200A0922454D41494C2220564152434841523228323535292C200A0922434F55525345494422204E554D4245522833382C30292C200A09224D414A4F522220564152434841523228323535292C200A0920434F4E53545241494E54202253504B222050';
    wwv_flow_api.g_varchar2_table(26) := '52494D415259204B455920282253545544454E545F4944222920454E41424C452C200A0920434F4E53545241494E54202253554E312220554E49515545202822555345524E414D45222920454E41424C452C200A0920434F4E53545241494E5420225355';
    wwv_flow_api.g_varchar2_table(27) := '4E322220554E49515545202822454D41494C222920454E41424C450A20202029203B414C544552205441424C452020224153534553534D454E54222041444420434F4E53545241494E54202241464B2220464F524549474E204B4559202822544F504943';
    wwv_flow_api.g_varchar2_table(28) := '494422290A0920205245464552454E434553202022544F50494322202822544F50494349442229204F4E2044454C455445204341534341444520454E41424C453B414C544552205441424C45202022414E53574552222041444420434F4E53545241494E';
    wwv_flow_api.g_varchar2_table(29) := '542022414E464B2220464F524549474E204B45592028225155455354494F4E494422290A0920205245464552454E4345532020225155455354494F4E222028225155455354494F4E49442229204F4E2044454C455445204341534341444520454E41424C';
    wwv_flow_api.g_varchar2_table(30) := '453B414C544552205441424C45202022434F5552534553222041444420434F4E53545241494E542022464B2220464F524549474E204B4559202822494E5354525543544F52494422290A0920205245464552454E434553202022494E5354525543544F52';
    wwv_flow_api.g_varchar2_table(31) := '22202822494E5354525543544F524944222920454E41424C453B414C544552205441424C452020224D4F44554C45222041444420434F4E53545241494E5420224D464B2220464F524549474E204B4559202822434F55525345494422290A092020524546';
    wwv_flow_api.g_varchar2_table(32) := '4552454E434553202022434F555253455322202822434F5552534549442229204F4E2044454C455445204341534341444520454E41424C453B414C544552205441424C452020225155455354494F4E222041444420434F4E53545241494E54202251464B';
    wwv_flow_api.g_varchar2_table(33) := '2220464F524549474E204B45592028224153534553534D454E54494422290A0920205245464552454E4345532020224153534553534D454E54222028224153534553534D454E5449442229204F4E2044454C455445204341534341444520454E41424C45';
    wwv_flow_api.g_varchar2_table(34) := '3B414C544552205441424C45202022544F504943222041444420434F4E53545241494E54202254464B2220464F524549474E204B45592028224D4F44554C45494422290A0920205245464552454E4345532020224D4F44554C45222028224D4F44554C45';
    wwv_flow_api.g_varchar2_table(35) := '49442229204F4E2044454C455445204341534341444520454E41424C453B414C544552205441424C45202022434F4E54454E54222041444420434F4E53545241494E542022544F504943464B2220464F524549474E204B4559202822544F504943494422';
    wwv_flow_api.g_varchar2_table(36) := '290A0920205245464552454E434553202022544F50494322202822544F5049434944222920454E41424C453B43524541544520554E4951554520494E444558202022414E504B22204F4E202022414E5357455222202822414E5357455249442229200A20';
    wwv_flow_api.g_varchar2_table(37) := '203B43524541544520554E4951554520494E44455820202241504B22204F4E2020224153534553534D454E54222028224153534553534D454E5449442229200A20203B43524541544520554E4951554520494E444558202022434F4E54454E54504B2220';
    wwv_flow_api.g_varchar2_table(38) := '4F4E202022434F4E54454E5422202822434F4E54454E5449442229200A20203B43524541544520554E4951554520494E444558202022495553455222204F4E202022494E5354525543544F5222202822555345524E414D452229200A20203B4352454154';
    wwv_flow_api.g_varchar2_table(39) := '4520554E4951554520494E444558202022504B22204F4E2020224D4F44554C45222028224D4F44554C4549442229200A20203B43524541544520554E4951554520494E44455820202251504B22204F4E2020225155455354494F4E222028225155455354';
    wwv_flow_api.g_varchar2_table(40) := '494F4E49442229200A20203B43524541544520554E4951554520494E44455820202253504B22204F4E20202253545544454E542220282253545544454E545F49442229200A20203B43524541544520554E4951554520494E44455820202253554E312220';
    wwv_flow_api.g_varchar2_table(41) := '4F4E20202253545544454E5422202822555345524E414D452229200A20203B43524541544520554E4951554520494E44455820202253554E3222204F4E20202253545544454E5422202822454D41494C2229200A20203B43524541544520554E49515545';
    wwv_flow_api.g_varchar2_table(42) := '20494E4445582020225359535F4330303732313922204F4E202022434F555253455322202822434F5552534549442229200A20203B43524541544520554E4951554520494E4445582020225359535F4330303732323022204F4E202022494E5354525543';
    wwv_flow_api.g_varchar2_table(43) := '544F5222202822494E5354525543544F5249442229200A20203B43524541544520554E4951554520494E44455820202254504B22204F4E202022544F50494322202822544F50494349442229200A20203B43524541544520554E4951554520494E444558';
    wwv_flow_api.g_varchar2_table(44) := '202022554153534553534D454E544E414D4522204F4E2020224153534553534D454E54222028224153534553534D454E544E414D452229200A20203B43524541544520554E4951554520494E44455820202255434F4E54454E544E414D4522204F4E2020';
    wwv_flow_api.g_varchar2_table(45) := '22434F4E54454E5422202822434F4E54454E544E414D452229200A20203B43524541544520554E4951554520494E444558202022554D4F44554C454E414D4522204F4E2020224D4F44554C45222028224D4F44554C454E414D452229200A20203B435245';
    wwv_flow_api.g_varchar2_table(46) := '41544520554E4951554520494E44455820202255544F5049434E414D4522204F4E202022544F50494322202822544F5049434E414D452229200A20203B204352454154452053455155454E434520202022544F5049435345512220204D494E56414C5545';
    wwv_flow_api.g_varchar2_table(47) := '2031204D415856414C5545203939393939393939393939393939393939393939393939393939393920494E4352454D454E5420425920312053544152542057495448203931204341434845203130204E4F4F5244455220204E4F4359434C45203B204352';
    wwv_flow_api.g_varchar2_table(48) := '454154452053455155454E43452020202253545544454E545345512220204D494E56414C55452037204D415856414C5545203939393939393939393939393939393939393939393939393939393920494E4352454D454E54204259203120535441525420';
    wwv_flow_api.g_varchar2_table(49) := '57495448203937204341434845203130204E4F4F5244455220204E4F4359434C45203B204352454154452053455155454E4345202020225155455354494F4E5345512220204D494E56414C55452031204D415856414C5545203939393939393939393939';
    wwv_flow_api.g_varchar2_table(50) := '393939393939393939393939393939393920494E4352454D454E5420425920312053544152542057495448203831204341434845203130204E4F4F5244455220204E4F4359434C45203B204352454154452053455155454E4345202020224D4F44554C45';
    wwv_flow_api.g_varchar2_table(51) := '53455155454E43452220204D494E56414C55452031204D415856414C5545203939393939393939393939393939393939393939393939393939393920494E4352454D454E54204259203120535441525420574954482031204341434845203130204E4F4F';
    wwv_flow_api.g_varchar2_table(52) := '5244455220204E4F4359434C45203B204352454154452053455155454E4345202020224D4F44554C455345512220204D494E56414C55452031204D415856414C5545203939393939393939393939393939393939393939393939393939393920494E4352';
    wwv_flow_api.g_varchar2_table(53) := '454D454E542042592031205354415254205749544820313331204341434845203130204E4F4F5244455220204E4F4359434C45203B204352454154452053455155454E434520202022494E5354525543544F525345512220204D494E56414C5545203120';
    wwv_flow_api.g_varchar2_table(54) := '4D415856414C5545203939393939393939393939393939393939393939393939393939393920494E4352454D454E5420425920312053544152542057495448203631204341434845203130204E4F4F5244455220204E4F4359434C45203B204352454154';
    wwv_flow_api.g_varchar2_table(55) := '452053455155454E434520202022434F55525345535345512220204D494E56414C55452031204D415856414C5545203939393939393939393939393939393939393939393939393939393920494E4352454D454E54204259203120535441525420574954';
    wwv_flow_api.g_varchar2_table(56) := '48203731204341434845203130204E4F4F5244455220204E4F4359434C45203B204352454154452053455155454E434520202022434F4E54454E545345512220204D494E56414C55452031204D415856414C554520393939393939393939393939393939';
    wwv_flow_api.g_varchar2_table(57) := '3939393939393939393939393920494E4352454D454E5420425920312053544152542057495448203531204341434845203130204E4F4F5244455220204E4F4359434C45203B204352454154452053455155454E4345202020224153534553534D454E54';
    wwv_flow_api.g_varchar2_table(58) := '5345512220204D494E56414C55452031204D415856414C5545203939393939393939393939393939393939393939393939393939393920494E4352454D454E5420425920312053544152542057495448203731204341434845203130204E4F4F52444552';
    wwv_flow_api.g_varchar2_table(59) := '20204E4F4359434C45203B204352454154452053455155454E434520202022414E535745525345512220204D494E56414C55452031204D415856414C5545203939393939393939393939393939393939393939393939393939393920494E4352454D454E';
    wwv_flow_api.g_varchar2_table(60) := '542042592031205354415254205749544820313031204341434845203130204E4F4F5244455220204E4F4359434C45203B204352454154452053455155454E43452020202241444D494E5345512220204D494E56414C55452031204D415856414C554520';
    wwv_flow_api.g_varchar2_table(61) := '3939393939393939393939393939393939393939393939393939393920494E4352454D454E5420425920312053544152542057495448203130204341434845203230204E4F4F5244455220204E4F4359434C45203B';
 
end;
/

 
declare
  l_name   varchar2(255);
begin
  l_name   := 'F5136303818277314/LMS';
  wwv_flow_api.import_script(
    p_name          => l_name,
    p_varchar2_table=> wwv_flow_api.g_varchar2_table,
    p_pathid=> null,
    p_filename=> 'LMS',
    p_title=> 'LMS',
    p_mime_type=> 'text/plain',
    p_dad_charset=> '',
    p_deleted_as_of=> to_date('00010101000000','YYYYMMDDHH24MISS'),
    p_content_type=> 'BLOB',
    p_language=> '',
    p_description=> 'Jamocha Console Project',
    p_file_type=> 'SCRIPT',
    p_file_charset=> 'utf-8');
 
end;
/

--commit;
begin 
execute immediate 'begin dbms_session.set_nls( param => ''NLS_NUMERIC_CHARACTERS'', value => '''''''' || replace(wwv_flow_api.g_nls_numeric_chars,'''''''','''''''''''') || ''''''''); end;';
end;
/
set verify on
set feedback on
prompt  ...done