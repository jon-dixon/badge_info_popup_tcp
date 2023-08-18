prompt --application/set_environment
set define off verify off feedback off
whenever sqlerror exit sql.sqlcode rollback
--------------------------------------------------------------------------------
--
-- Oracle APEX export file
--
-- You should run this script using a SQL client connected to the database as
-- the owner (parsing schema) of the application or as a database user with the
-- APEX_ADMINISTRATOR_ROLE role.
--
-- This export file has been automatically generated. Modifying this file is not
-- supported by Oracle and can lead to unexpected application and/or instance
-- behavior now or in the future.
--
-- NOTE: Calls to apex_application_install override the defaults below.
--
--------------------------------------------------------------------------------
begin
wwv_flow_imp.import_begin (
 p_version_yyyy_mm_dd=>'2023.04.28'
,p_release=>'23.1.3'
,p_default_workspace_id=>5077748497100773421
,p_default_application_id=>249259
,p_default_id_offset=>52331137922910554438
,p_default_owner=>'JDIXON'
);
end;
/
 
prompt APPLICATION 249259 - Sample Template Component Plugins
--
-- Application Export:
--   Application:     249259
--   Name:            Sample Template Component Plugins
--   Date and Time:   14:51 Friday August 18, 2023
--   Exported By:     JON_DIXON_US@YAHOO.COM
--   Flashback:       0
--   Export Type:     Component Export
--   Manifest
--     PLUGIN: 52347047567772346224
--   Manifest End
--   Version:         23.1.3
--   Instance ID:     63113759365424
--

begin
  -- replace components
  wwv_flow_imp.g_mode := 'REPLACE';
end;
/
prompt --application/shared_components/plugins/template_component/com_cloudnueva_badgeinfo
begin
wwv_flow_imp_shared.create_plugin(
 p_id=>wwv_flow_imp.id(52347047567772346224)
,p_plugin_type=>'TEMPLATE COMPONENT'
,p_theme_id=>nvl(wwv_flow_application_install.get_theme_id, '')
,p_name=>'COM.CLOUDNUEVA.BADGEINFO'
,p_display_name=>'Badge Info Popup'
,p_supported_component_types=>'PARTIAL:REPORT'
,p_css_file_urls=>'#PLUGIN_FILES#cn_badge_info#MIN#.css'
,p_partial_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'{if APEX$IS_LAZY_LOADING/}',
'  <span class="t-Badge is-placeholder{if ?SIZE/} #SIZE!ATTR#{endif/}{if ?SHAPE/} #SHAPE!ATTR#{endif/}"></span>',
'{else/}',
'  <span class="t-Badge {if ?STATE/}t-Badge--#STATE!ATTR#{endif/} {if ?STYLE/}#STYLE!ATTR#{endif/} {if ?SIZE/}#SIZE!ATTR#{endif/} {if ?SHAPE/}#SHAPE!ATTR#{endif/}" role="status" aria-label="#LABEL!ATTR# #VALUE!ATTR#" title="#LABEL!ATTR# #VALUE!ATTR#">',
'    {if ?ICON/}<span class="t-Badge-icon #ICON!ATTR#" aria-hidden="true"></span>{endif/}',
'    {if LABEL_DISPLAY/}<span class="t-Badge-label">#LABEL!RAW#</span>{endif/}',
'    <span class="t-Badge-value">#VALUE!RAW#</span>',
'    {if INFO_BODY/}<href="javascript:void(0)" title="Click for More Information" onclick="apex.message.alert(''#INFO_BODY#'', function(){null;}, {title:''#INFO_TITLE#'', dialogClasses:''cn-alert-popup #INFO_POPUP_WIDTH#'', style:''#INFO_STYLE#'', iconClasses'
||':''fa #INFO_POPUP_ICON#'', okLabel:''Close''})"><span aria-hidden="true" class="t-Badge-icon margin-left-sm cn-info-badge-icon #INFO_ICON#"></span></a>{endif/}',
'  </span>',
'{endif/}'))
,p_default_escape_mode=>'HTML'
,p_translate_this_template=>true
,p_api_version=>2
,p_report_body_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'{if !APEX$HAS_MESSAGE/}',
'  <ul class="t-Badges #APEX$COMPONENT_CSS_CLASSES#">#APEX$ROWS#</ul>',
'{endif/}'))
,p_report_row_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li class="t-Badges-item" #APEX$ROW_IDENTIFICATION#>#APEX$PARTIAL#</li>',
''))
,p_report_placeholder_count=>1
,p_substitute_attributes=>true
,p_subscribe_plugin_settings=>true
,p_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<p>This Template Component Plugin utilizes the standard Badge Template Component and adds the ability to show an icon on the right-hand side of the badge, which can be clicked on to show additional information about the badge.</p>',
'',
'<p>The plug-in contains the same attributes as the standard Badge Component, plus additional attributes that allow you to include an optional Additional Information Popup. This can be useful when you want to keep the UI simple and allow the user to c'
||'lick an icon to see additional information quickly. This can be especially useful for badges where it may not be obvious why the badge is colored red, for example.</p>',
'',
'There are various attributes available that allow you to:',
'<ul>',
'<li>Conditionally show the Additional Info Button on the badge.</li>',
'<li>Choose which icon should indicate additional information is available</li>',
'<li>Choose the icon and styling of the Popup</li>',
'<li>Choose a title and body text for the Popup</li>',
'</ul>',
'',
'<p>The Popup message is displayed using the <code>apex.message.alert</code> JavaScript API. The plugin is based on the standard APEX Badge Template Component, and there are no external library dependencies.</p>'))
,p_version_identifier=>'1.0'
,p_about_url=>'https://github.com/jon-dixon/badge_info_popup_tcp'
,p_files_version=>58
);
wwv_flow_imp_shared.create_plugin_attr_group(
 p_id=>wwv_flow_imp.id(52347102498592925366)
,p_plugin_id=>wwv_flow_imp.id(52347047567772346224)
,p_title=>'Information'
,p_display_sequence=>20
);
wwv_flow_imp_shared.create_plugin_attr_group(
 p_id=>wwv_flow_imp.id(52347102082528925366)
,p_plugin_id=>wwv_flow_imp.id(52347047567772346224)
,p_title=>'Badge'
,p_display_sequence=>10
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(52347047876202346227)
,p_plugin_id=>wwv_flow_imp.id(52347047567772346224)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>1
,p_display_sequence=>10
,p_static_id=>'LABEL'
,p_prompt=>'Label'
,p_attribute_type=>'TEXT'
,p_is_required=>true
,p_escape_mode=>'STRIPHTML'
,p_is_translatable=>true
,p_attribute_group_id=>wwv_flow_imp.id(52347102082528925366)
,p_help_text=>'Enter a value for the badge label or select a source column from the quick pick options.'
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(52347048181174346227)
,p_plugin_id=>wwv_flow_imp.id(52347047567772346224)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>2
,p_display_sequence=>20
,p_static_id=>'VALUE'
,p_prompt=>'Value'
,p_attribute_type=>'SESSION STATE VALUE'
,p_is_required=>true
,p_escape_mode=>'STRIPHTML'
,p_column_data_types=>'VARCHAR2:NUMBER:DATE:INTERVAL_Y2M:INTERVAL_D2S'
,p_is_translatable=>false
,p_attribute_group_id=>wwv_flow_imp.id(52347102082528925366)
,p_help_text=>'Select a source column for the badge value.'
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(52347048603521346228)
,p_plugin_id=>wwv_flow_imp.id(52347047567772346224)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>3
,p_display_sequence=>30
,p_static_id=>'STATE'
,p_prompt=>'State'
,p_attribute_type=>'SESSION STATE VALUE'
,p_is_required=>false
,p_escape_mode=>'ATTR'
,p_column_data_types=>'VARCHAR2'
,p_is_translatable=>false
,p_attribute_group_id=>wwv_flow_imp.id(52347102082528925366)
,p_help_text=>'Select the source column for the state of the badge. Substitute column value with "danger", "warning", "success" or "info" for default styling.'
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(52347048978837346228)
,p_plugin_id=>wwv_flow_imp.id(52347047567772346224)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>4
,p_display_sequence=>40
,p_static_id=>'ICON'
,p_prompt=>'Icon'
,p_attribute_type=>'ICON'
,p_is_required=>false
,p_escape_mode=>'ATTR'
,p_is_translatable=>false
,p_attribute_group_id=>wwv_flow_imp.id(52347102082528925366)
,p_help_text=>'Enter an icon class or use the Pick Icon dialog to select the icon you want to add to display in the badge.'
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(52347049400463346228)
,p_plugin_id=>wwv_flow_imp.id(52347047567772346224)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>5
,p_display_sequence=>50
,p_static_id=>'LABEL_DISPLAY'
,p_prompt=>'Display Label'
,p_attribute_type=>'CHECKBOX'
,p_is_required=>false
,p_default_value=>'N'
,p_escape_mode=>'ATTR'
,p_is_translatable=>false
,p_attribute_group_id=>wwv_flow_imp.id(52347102082528925366)
,p_help_text=>'Specify whether to display or hide the badge label. When set to Yes, the badge label will be displayed in addition to the badge value. When set to No, only the badge value will be displayed.'
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(52347049717819346228)
,p_plugin_id=>wwv_flow_imp.id(52347047567772346224)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>6
,p_display_sequence=>60
,p_static_id=>'STYLE'
,p_prompt=>'Style'
,p_attribute_type=>'SELECT LIST'
,p_is_required=>false
,p_escape_mode=>'ATTR'
,p_is_translatable=>false
,p_lov_type=>'STATIC'
,p_attribute_group_id=>wwv_flow_imp.id(52347102082528925366)
,p_null_text=>'Default'
,p_help_text=>'Select the badge style. Default inherits the style set by the containing template.'
);
wwv_flow_imp_shared.create_plugin_attr_value(
 p_id=>wwv_flow_imp.id(52347050658223346229)
,p_plugin_attribute_id=>wwv_flow_imp.id(52347049717819346228)
,p_display_sequence=>10
,p_display_value=>'Subtle'
,p_return_value=>'t-Badge--subtle'
);
wwv_flow_imp_shared.create_plugin_attr_value(
 p_id=>wwv_flow_imp.id(52347050160861346228)
,p_plugin_attribute_id=>wwv_flow_imp.id(52347049717819346228)
,p_display_sequence=>20
,p_display_value=>'Outline'
,p_return_value=>'t-Badge--outline'
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(52347051202336346229)
,p_plugin_id=>wwv_flow_imp.id(52347047567772346224)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>7
,p_display_sequence=>70
,p_static_id=>'SHAPE'
,p_prompt=>'Shape'
,p_attribute_type=>'SELECT LIST'
,p_is_required=>false
,p_escape_mode=>'ATTR'
,p_is_translatable=>false
,p_lov_type=>'STATIC'
,p_attribute_group_id=>wwv_flow_imp.id(52347102082528925366)
,p_null_text=>'Default'
,p_help_text=>'Select the shape of the badge. Default inherits the shape set by the containing template.'
);
wwv_flow_imp_shared.create_plugin_attr_value(
 p_id=>wwv_flow_imp.id(52347051534053346229)
,p_plugin_attribute_id=>wwv_flow_imp.id(52347051202336346229)
,p_display_sequence=>10
,p_display_value=>'Rounded'
,p_return_value=>'t-Badge--rounded'
,p_help_text=>'Displayed with rounded corners.'
);
wwv_flow_imp_shared.create_plugin_attr_value(
 p_id=>wwv_flow_imp.id(52347052103612346229)
,p_plugin_attribute_id=>wwv_flow_imp.id(52347051202336346229)
,p_display_sequence=>20
,p_display_value=>'Circular'
,p_return_value=>'t-Badge--circle'
,p_help_text=>'Displayed with circular edges.'
);
wwv_flow_imp_shared.create_plugin_attr_value(
 p_id=>wwv_flow_imp.id(52347052564674346229)
,p_plugin_attribute_id=>wwv_flow_imp.id(52347051202336346229)
,p_display_sequence=>30
,p_display_value=>'Square'
,p_return_value=>'t-Badge--square'
,p_help_text=>'Displayed with squared edges.'
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(52347053102158346229)
,p_plugin_id=>wwv_flow_imp.id(52347047567772346224)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>8
,p_display_sequence=>80
,p_static_id=>'SIZE'
,p_prompt=>'Size'
,p_attribute_type=>'SELECT LIST'
,p_is_required=>false
,p_escape_mode=>'ATTR'
,p_is_translatable=>false
,p_lov_type=>'STATIC'
,p_attribute_group_id=>wwv_flow_imp.id(52347102082528925366)
,p_null_text=>'Default'
,p_help_text=>'Set the size of the badge. The default inherits the sizing set by the containing template.'
);
wwv_flow_imp_shared.create_plugin_attr_value(
 p_id=>wwv_flow_imp.id(52347053466371346230)
,p_plugin_attribute_id=>wwv_flow_imp.id(52347053102158346229)
,p_display_sequence=>10
,p_display_value=>'Small'
,p_return_value=>'t-Badge--sm'
);
wwv_flow_imp_shared.create_plugin_attr_value(
 p_id=>wwv_flow_imp.id(52347053963578346230)
,p_plugin_attribute_id=>wwv_flow_imp.id(52347053102158346229)
,p_display_sequence=>20
,p_display_value=>'Medium'
,p_return_value=>'t-Badge--md'
);
wwv_flow_imp_shared.create_plugin_attr_value(
 p_id=>wwv_flow_imp.id(52347054502281346230)
,p_plugin_attribute_id=>wwv_flow_imp.id(52347053102158346229)
,p_display_sequence=>30
,p_display_value=>'Large'
,p_return_value=>'t-Badge--lg'
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(52347088077074741369)
,p_plugin_id=>wwv_flow_imp.id(52347047567772346224)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>10
,p_display_sequence=>100
,p_static_id=>'INFO_BODY'
,p_prompt=>'Popup Body'
,p_attribute_type=>'TEXT'
,p_is_required=>true
,p_escape_mode=>'STRIPHTML'
,p_is_translatable=>false
,p_attribute_group_id=>wwv_flow_imp.id(52347102498592925366)
,p_examples=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<ul>',
'<li>Detailed Item Description</li>',
'<li>Detailed Instructions</li>',
'<li>Additional Information to indicate why the badge is in a certain state</li>',
'</li>'))
,p_help_text=>'Text to use for the body of the Popup. If you leave this attribute empty, then the additional info icon will not be displayed.'
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(52347096283628744666)
,p_plugin_id=>wwv_flow_imp.id(52347047567772346224)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>11
,p_display_sequence=>90
,p_static_id=>'INFO_TITLE'
,p_prompt=>'Popup Title'
,p_attribute_type=>'TEXT'
,p_is_required=>false
,p_default_value=>'Additional Information'
,p_escape_mode=>'HTML'
,p_is_translatable=>false
,p_attribute_group_id=>wwv_flow_imp.id(52347102498592925366)
,p_examples=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<ul>',
'<li>Additional Information</li>',
'<li>Description for Item A100</li>',
'</ul>'))
,p_help_text=>'Text used for the Popup Title. Enter a value in the attribute, or source the icon name from your SQL Statement. Leave this field empty to exclude the title.'
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(52339364020823101518)
,p_plugin_id=>wwv_flow_imp.id(52347047567772346224)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>12
,p_display_sequence=>120
,p_static_id=>'INFO_POPUP_ICON'
,p_prompt=>'Popup Icon'
,p_attribute_type=>'TEXT'
,p_is_required=>false
,p_default_value=>'fa-info-circle fa-2x'
,p_escape_mode=>'HTML'
,p_is_translatable=>false
,p_attribute_group_id=>wwv_flow_imp.id(52347102498592925366)
,p_examples=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<ul>',
'<li>fa-alarm-clock fa-2x</li>',
'<li>fa-info-circle fa-2x</li>',
'</ul>'))
,p_help_text=>'Icon to show in the Information Popup. Enter a value in the attribute, or source the icon name from your SQL Statement. Use Universal theme icon modifiers to style the icon. e.g., fa-2x'
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(52339361083429057998)
,p_plugin_id=>wwv_flow_imp.id(52347047567772346224)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>13
,p_display_sequence=>130
,p_static_id=>'INFO_STYLE'
,p_prompt=>'Popup Style'
,p_attribute_type=>'TEXT'
,p_is_required=>false
,p_default_value=>'information'
,p_escape_mode=>'HTML'
,p_is_translatable=>false
,p_attribute_group_id=>wwv_flow_imp.id(52347102498592925366)
,p_examples=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<ul>',
'<li>information</li>',
'<li>warning</li>',
'<li>danger</li>',
'<li>success</li>',
'</ul>'))
,p_help_text=>'This option will set the style of the Popup button and colors. The styles are the same ones used in the <code>apex.message.alert</code> JavaScript API. Options include: "information", "warning", "danger", or "success". Enter a value in the attribute,'
||' or source the icon name from your SQL Statement.'
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(52347114248007079868)
,p_plugin_id=>wwv_flow_imp.id(52347047567772346224)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>14
,p_display_sequence=>140
,p_static_id=>'INFO_POPUP_WIDTH'
,p_prompt=>'Popup Width'
,p_attribute_type=>'SELECT LIST'
,p_is_required=>false
,p_default_value=>'standard'
,p_escape_mode=>'HTML'
,p_is_translatable=>false
,p_lov_type=>'STATIC'
,p_attribute_group_id=>wwv_flow_imp.id(52347102498592925366)
,p_examples=>'Select from the List of Values.'
,p_help_text=>'Determines the width of the Information Popup. Select a value from the List of Values. If you know that you need to show a lot of information, picking a wider popup window will allow you to show more information. The default is 300 pixels.'
);
wwv_flow_imp_shared.create_plugin_attr_value(
 p_id=>wwv_flow_imp.id(52347115743805103827)
,p_plugin_attribute_id=>wwv_flow_imp.id(52347114248007079868)
,p_display_sequence=>5
,p_display_value=>'300 Pixels'
,p_return_value=>'standard'
,p_is_quick_pick=>true
);
wwv_flow_imp_shared.create_plugin_attr_value(
 p_id=>wwv_flow_imp.id(52347114557616085040)
,p_plugin_attribute_id=>wwv_flow_imp.id(52347114248007079868)
,p_display_sequence=>10
,p_display_value=>'400 Pixels'
,p_return_value=>'cn-alert-width-400px'
,p_is_quick_pick=>true
);
wwv_flow_imp_shared.create_plugin_attr_value(
 p_id=>wwv_flow_imp.id(52347114949948086499)
,p_plugin_attribute_id=>wwv_flow_imp.id(52347114248007079868)
,p_display_sequence=>20
,p_display_value=>'500 Pixels'
,p_return_value=>'cn-alert-width-500px'
,p_is_quick_pick=>true
);
wwv_flow_imp_shared.create_plugin_attr_value(
 p_id=>wwv_flow_imp.id(52347115371185087915)
,p_plugin_attribute_id=>wwv_flow_imp.id(52347114248007079868)
,p_display_sequence=>30
,p_display_value=>'600 Pixels'
,p_return_value=>'cn-alert-width-600px'
,p_is_quick_pick=>true
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(52339365792465133214)
,p_plugin_id=>wwv_flow_imp.id(52347047567772346224)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>15
,p_display_sequence=>85
,p_static_id=>'INFO_ICON'
,p_prompt=>'Badge Info Icon'
,p_attribute_type=>'ICON'
,p_is_required=>true
,p_default_value=>'fa-info-circle'
,p_escape_mode=>'ATTR'
,p_is_translatable=>false
,p_attribute_group_id=>wwv_flow_imp.id(52347102498592925366)
,p_examples=>'fa-info-circle'
,p_help_text=>'The icon selected here is displayed on the right-hand side of the badge to indicate that additional information is available. This icon will only appear if the attribute ''Popup Body'' is NOT NULL. Enter a value in the attribute, or source the icon nam'
||'e from your SQL Statement.'
);
end;
/
begin
wwv_flow_imp.g_varchar2_table := wwv_flow_imp.empty_varchar2_table;
wwv_flow_imp.g_varchar2_table(1) := '2E636E2D616C6572742D77696474682D3430307078207B77696474683A2034303070782021696D706F7274616E743B7D0A2E636E2D616C6572742D77696474682D3530307078207B77696474683A2035303070782021696D706F7274616E743B7D0A2E63';
wwv_flow_imp.g_varchar2_table(2) := '6E2D616C6572742D77696474682D3630307078207B77696474683A2036303070782021696D706F7274616E743B7D0A0A2F2A205374796C652074686520506F707570202A2F0A2E636E2D616C6572742D706F707570207B0A20202D2D612D616C6572742D';
wwv_flow_imp.g_varchar2_table(3) := '6D6573736167652D666F6E742D73697A653A20313470783B0A20202D2D612D616C6572742D6D6573736167652D6C696E652D6865696768743A20323070783B0A7D0A0A2E636E2D696E666F2D62616467652D69636F6E207B0A2020637572736F723A2070';
wwv_flow_imp.g_varchar2_table(4) := '6F696E7465723B0A7D';
null;
end;
/
begin
wwv_flow_imp_shared.create_plugin_file(
 p_id=>wwv_flow_imp.id(52347111276138041846)
,p_plugin_id=>wwv_flow_imp.id(52347047567772346224)
,p_file_name=>'cn_badge_info.css'
,p_mime_type=>'text/css'
,p_file_charset=>'utf-8'
,p_file_content=>wwv_flow_imp.varchar2_to_blob(wwv_flow_imp.g_varchar2_table)
);
end;
/
begin
wwv_flow_imp.g_varchar2_table := wwv_flow_imp.empty_varchar2_table;
wwv_flow_imp.g_varchar2_table(1) := '2E636E2D616C6572742D77696474682D34303070787B77696474683A343030707821696D706F7274616E747D2E636E2D616C6572742D77696474682D35303070787B77696474683A353030707821696D706F7274616E747D2E636E2D616C6572742D7769';
wwv_flow_imp.g_varchar2_table(2) := '6474682D36303070787B77696474683A363030707821696D706F7274616E747D2E636E2D616C6572742D706F7075707B2D2D612D616C6572742D6D6573736167652D666F6E742D73697A653A313470783B2D2D612D616C6572742D6D6573736167652D6C';
wwv_flow_imp.g_varchar2_table(3) := '696E652D6865696768743A323070787D2E636E2D696E666F2D62616467652D69636F6E7B637572736F723A706F696E7465727D';
null;
end;
/
begin
wwv_flow_imp_shared.create_plugin_file(
 p_id=>wwv_flow_imp.id(52648226765192632818)
,p_plugin_id=>wwv_flow_imp.id(52347047567772346224)
,p_file_name=>'cn_badge_info.min.css'
,p_mime_type=>'text/css'
,p_file_charset=>'utf-8'
,p_file_content=>wwv_flow_imp.varchar2_to_blob(wwv_flow_imp.g_varchar2_table)
);
end;
/
prompt --application/end_environment
begin
wwv_flow_imp.import_end(p_auto_install_sup_obj => nvl(wwv_flow_application_install.get_auto_install_sup_obj, false));
commit;
end;
/
set verify on feedback on define on
prompt  ...done
