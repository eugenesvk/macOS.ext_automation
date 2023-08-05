<p align="center">
Brief description
<br>
(description continued)
</p>

<p align="center">  
description continued
</p>


## Introduction

## Install
  (saving folders like `.workflow` save [repo as a zip](https://github.com/eugenesvk/macOS.ext_automation/archive/refs/heads/main.zip) and unzip it locally)
  - Open [saveURLactive](./saveURLactive.workflow) in Automator, adjust browsers in which it will be active (defaults to Safari and Vivaldi, Firefox not supported) and optionally edit variables at the top of the script

    |Variable            	|Default      	| Description                                              	|
    |:-                  	|:-           	|:-                                                        	|
    |`directory`         	|`~/Downloads`	| Path to the folder to save urls to                       	|
    |`extension`         	|`url`        	| File extension                                           	|
    |`path_max`          	|`120`        	| Cut off very long urls at this many unicode codepoints   	|
    |`host_title_sep`    	|` `          	| Separator between _host.com_ and _Tab Title_             	|
    |`illegal_fs_symbols`	|`'/':'⧸'`... 	| Table of illegal file name symbols and their replacements	|

## Use
  - [saveURLactive](./saveURLactive.workflow): set a keybind in `System Settings`›`Keyboard`›`Keyboard shortcuts`›`Services`›`General` (or in an active app `App Name`›`Services`›`Services Settings...`) and then save links from the current tab in a browser to `~/Downloads` in the URL format instead of Webloc. No more tedious dragging!

## Known issues
  - [saveURLactive](./saveURLactive.workflow)
    - Firefox doesn't support automation (there is an accessibility workaround, but it's not implemented)
    - quickly switching to another app after activating the workflow might raise an `not a supported browser` error

## Credits
  - [Get Title and URL.applescript](https://gist.github.com/vitorgalvao/5392178)
