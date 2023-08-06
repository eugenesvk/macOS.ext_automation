<p align="center">
A few macOS automation scripts
<br>
</p>

<p align="center">  
</p>


## Introduction

## Install
  (saving folders like `.workflow` save [repo as a zip](https://github.com/eugenesvk/macOS.ext_automation/archive/refs/heads/main.zip) and unzip it locally)
  - add all files from the [libraries](./lib) folder to `~/Library/Script Libraries` (or `/Library/Script Libraries` for all users)` 
  - Open [saveURLactive](./saveURLactive.workflow) in Automator, adjust browsers in which it will be active (defaults to Safari and Vivaldi, Firefox not supported) and optionally edit variables at the top of the script

    |Variable            	|Default      	| Description                                              	|
    |:-                  	|:-           	|:-                                                        	|
    |`directory`         	|`~/Downloads`	| Path to the folder to save urls to                       	|
    |`extension`         	|`url`        	| File extension                                           	|
    |`path_max`          	|`120`        	| Cut off very long urls at this many unicode codepoints   	|
    |`host_title_sep`    	|` `          	| Separator between _host.com_ and _Tab Title_             	|
    |`illegal_fs_symbols`	|`'/':'⧸'`... 	| Table of illegal file name symbols and their replacements	|
  - Open [saveURLall_activeBrowser](./saveURLall_activeBrowser.workflow) in Automator, adjust browsers in which it will be active (defaults to Safari and Vivaldi, Firefox not supported) and optionally edit variables at the top of the script, same as in [saveURLactive](./saveURLactive.workflow) except for one:

    |Variable     	|Default	| Description                                              	|
    |:-           	|:-     	|:-                                                        	|
    |`prefixWinID`	|`true` 	| Add a numeric prefix to the url name to indicate a window	|


## Use
  - [saveURLactive](./saveURLactive.workflow): set a keybind in `System Settings`›`Keyboard`›`Keyboard shortcuts`›`Services`›`General` (or in an active app `App Name`›`Services`›`Services Settings...`) and then save links from the current tab in a browser to `~/Downloads` in the URL format instead of Webloc. No more tedious dragging!
  - [saveURLall_activeBrowser](./saveURLall_activeBrowser.workflow): saves all link from all tabs from all windows in a browser to user selected folder in the URL format instead of Webloc

## Known issues
  - [saveURLactive](./saveURLactive.workflow)
    - Firefox doesn't support automation (there is an accessibility workaround, but it's not implemented)
    - quickly switching to another app after activating the workflow might raise an `not a supported browser` error
  - [saveURLall_activeBrowser](./saveURLall_activeBrowser.workflow)
    - Firefox doesn't support automation (there is an accessibility workaround, but it's not implemented)

## JavaScript‹›AppleScript interop for macOS automation libraries
  - JavaScript can use any bundle
  - AppleScript can use any AppleScript

  |↓script</br>            can load library→	|JavaScript</br>bundle.scpt _d_	|AppleScript</br>bundle.scpt _d_	|AppleScript</br>script.scpt	|JavaScript</br>script.scpt	|
  |:-                                       	|:-:                           	|:-:                            	|:-:                        	|:-:                       	|
  |JavaScript                               	|         ✓                    	|         ✓                     	|         ✗                 	|         ✗                	|
  |AppleScript                              	|         ✗                    	|         ✓                     	|         ✓                 	|         ✗                	|

`JXA` = JavaScript for Automation, referred to as JavaScript or JS for simplicity

`AS` = AppleScript

## Credits
  - [Get Title and URL.applescript](https://gist.github.com/vitorgalvao/5392178)
  - [SO answer on interop](https://stackoverflow.com/a/69897108/20361194)
