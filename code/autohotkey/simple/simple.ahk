; SAMPLE HOTKEYS: Below are two sample hotkeys.  The first is Win+Z and it
; launches a web site in the default browser.  The second is Control+Alt+N
; and it launches a new Notepad window (or activates an existing one).  To
; try out these hotkeys, run AutoHotkey again, which will load this file.

; // KEY SHORTCUTS //
;  # = Windows Key
;  ^ = Control
;  ! = Alt
;  + = Shift

;***************************************************************************************
; go to the schedule page on CFUnited

^F1::Run http://cfunited.com/2010/schedule
return

;***************************************************************************************
; Control+Alt+N launches a new Notepad window or activates an existing one.
^!n::
IfWinExist Untitled - Notepad
	WinActivate
else
	Run Notepad
return

; this routine creates a basic timestamp
:*:;time::
FormatTime, CurrentDateTime,, yyyy-MM-dd HH:mm
SendInput %CurrentDateTime%
return

; this routine creates a timestamp and name
:*:;ts::
FormatTime, CurrentDateTime,, yyyy-MM-dd HH:mm
SendInput %CurrentDateTime%{space}-{space}Jim Priest{enter}
return

; this routine creates a coldfusion comment with name and timestamp
:*:;cfts::
FormatTime, CurrentDateTime,, yyyy-MM-dd HH:mm
SendInput, <{!}--- Note{:} %CurrentDateTime%{space}-{space}Jim Priest{enter}{enter}
SendInput, --->{enter}
SendInput, {left}{left}{left}{left}{left}{left}
return

; this routine creates a coldfusion comment break line

:*:;cfbk::
SendInput, <{!}---{space} 
SendInput, **********************************************************************
SendInput, {space}--->{enter}
return

; this types a standard ColdFusion function documentation text block

:*:;cfdc::
InputBox rName, Get Routine Name, Enter the name of the ColdFusion Routine
FormatTime, CurrentDateTime,, yyyy-MM-dd HH:mm
SendInput, <{!}---{enter}
SendInput, **********************************************************************{enter}
SendInput, {space 3}Name:{space}%rName%{enter 2}
SendInput, Purpose:{space}{enter 2}
SendInput, Created: %CurrentDateTime%{enter}{enter}
SendInput, {space}Author: Jim Priest priest@thecrumb.com{enter}{enter}
SendInput, {space}{space}Notes:{space}{enter 2}
SendInput, **********************************************************************{enter}
SendInput, {space}Params: Name - Description{space}{enter 2}
SendInput, **********************************************************************{enter}
SendInput, Changes:{space}{enter 2}
SendInput, **********************************************************************{enter}
SendInput, --->{enter 2}{up 16}{left}
return
