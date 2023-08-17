# Badge Info Popup APEX Template Component Plug-In
The **Badge Info Popup** Template Component Plugin utilizes the standard Badge Template Component and adds the ability to show an icon on the right-hand side of the badge, which can be clicked on to show additional information about the badge.

The plug-in contains the same attributes as the standard APEX Badge Theme Component, plus additional attributes that allow you to include an optional Additional Information Popup for each badge. This can be useful when you want to keep the UI simple and allow the user to click an icon to see additional information quickly. This can be especially useful for badges where it may not be obvious why the badge is colored red, for example.

This Template Component Plug-in supports and 'Single (Partial)' and Multiple (Report) usage.

# Options
There are various attributes available that allow you to:
- Conditionally show an Additional Info button on the right hand side of the badge.
- Choose which icon should indicate additional information is available.
- Choose the icon and styling of the Info Popup.
- Choose a title and body text for the Info Popup.

# Dependencies
The Popup message is displayed using the `apex.message.alert` JavaScript API. The plugin is based on a copy of the standard APEX Badge Theme Component, and there are no external library dependencies.

# Examples
![Country_Flags_Plugin_Screenshot](https://github.com/jon-dixon/country_flags_apex_tcp/assets/107701070/37cb27cc-d3c6-4ba5-bdae-a22c29071231)
[Link to Demo Application](https://apex.oracle.com/pls/apex/r/jdd/flags/home) to Demo Application.

# Usage
The plugin renders a country flag based on a <b>Lower Case</b> 2-character ISO 3166-1-alpha-2 code. You can find a complete list of codes [here](https://www.iso.org/obp/ui/#search)

## Single Row Query in Region
![image](https://github.com/jon-dixon/country_flags_apex_tcp/assets/107701070/c3c7ace0-ca87-4160-bc09-621ea5ef1684)

## Interactive Report Column
![image](https://github.com/jon-dixon/country_flags_apex_tcp/assets/107701070/d6c81d7f-8829-46c1-8ca5-0663ce9074bd)

## Usage in a Template Directive
Reference the plugin as follows to use it anywhere that Template Directives can be used:
![image](https://github.com/jon-dixon/country_flags_apex_tcp/assets/107701070/8d9495a1-2dde-4110-9b26-0c749698c6cf)
```
{with/}
  LABEL:=On Hand
  VALUE:=#ON_HAND_QUANTITY#
  STATE:=#BADGE_STATE#
  ICON:=fa-cart-full
  LABEL_DISPLAY:=
  STYLE:=
  SHAPE:=t-Badge--circle
  SIZE:=t-Badge--md
  INFO_ICON:=fa-info-circle
  INFO_TITLE:=Re-Order Now - Lead Time: #LEAD_TIME_DAYS# Days
  INFO_BODY:=#INFO_BODY#
  INFO_POPUP_ICON:=#POPUP_ICON# fa-2x
  INFO_STYLE:=#BADGE_STATE#
  INFO_POPUP_WIDTH:=cn-alert-width-400px
{apply COM.CLOUDNUEVA.BADGEINFO/}
```
# Installation
- Download the plug-in file 'template_component_plugin_com_cloudnueva_badgeinfo.sql' from the latest release.
- Import the plug-in file into your application.