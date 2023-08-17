# Badge Info Popup APEX Template Component Plug-In
The **Badge Info Popup** Template Component Plugin utilizes the standard APEX Badge Theme Component and adds the ability to show an icon on the right-hand side of the badge, which can be clicked on to show additional information about the badge.

The plug-in contains the same attributes as the standard APEX Badge Theme Component, plus additional attributes that allow you to include an optional Additional Information Popup for each badge. This can be useful when you want to keep the UI simple and allow your users to click an icon to see additional information quickly. This can be especially useful for badges where it may not be obvious why the badge is colored red, for example.

This Template Component Plug-in supports and 'Single (Partial)' and 'Multiple (Report)' usage.

# Options
There are various attributes available that allow you to. 
- Conditionally show an Additional Info button on the right hand side of the badge.
- Choose which icon should indicate additional information is available.
- Choose the icon and styling for the Additional Info Popup.
- Choose a title and body text for the Additional Info Popup.

# Dependencies
The Additional Info Popup message is displayed using the APEX `apex.message.alert` JavaScript API. The badge is based on a copy of the standard APEX Badge Theme Component. There are no external library dependencies.

# Demonstration
![Country_Flags_Plugin_Screenshot](https://github.com/jon-dixon/badge_info_popup_tcp/blob/main/assets/Badge%20Info%20Popup%20Demo.gif?raw=true)

[Link to Demo Application](https://apex.oracle.com/pls/apex/r/jdd/tc/badge-info-popup) to Demo Application.

# Examples

## Example Multiple (Report)
![image](https://github.com/jon-dixon/badge_info_popup_tcp/blob/main/assets/Example%20Multiple%20(Report)%20Usage.png?raw=true)

![image](https://github.com/jon-dixon/badge_info_popup_tcp/blob/main/assets/Miltiple%20(Report)%20Setup%201.png?raw=true)

![image](https://github.com/jon-dixon/badge_info_popup_tcp/blob/main/assets/Miltiple%20(Report)%20Setup%202.png?raw=true)

## Example Interactive Report Column Single (Partial)
![image](https://github.com/jon-dixon/badge_info_popup_tcp/blob/main/assets/Example%20Single%20(Partial)%20Usage.png?raw=true)

![image](https://github.com/jon-dixon/badge_info_popup_tcp/blob/main/assets/Single%20(Partial)%20Setup%201.png?raw=true)

![image](https://github.com/jon-dixon/badge_info_popup_tcp/blob/main/assets/Single%20(Partial)%20Setup%202.png?raw=true)

## Example Template Directive Usage
Reference the plugin as follows to use it anywhere that Template Directives can be used:
![image](https://github.com/jon-dixon/badge_info_popup_tcp/blob/main/assets/Template%20Directive%20Setup%201.png?raw=true)
![image](https://github.com/jon-dixon/badge_info_popup_tcp/blob/main/assets/Template%20Directive%20Setup%202.png?raw=true)

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