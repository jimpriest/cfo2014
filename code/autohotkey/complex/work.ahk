; AutoHotkey Version: 1.x
; Language:       English
; Platform:       Win9x/NT/Win7
; Author:         Jim Priest (priest@thecrumb.com)
;
; // KEY SHORTCUTS //
;  # = Windows Key
;  ^ = Control
;  ! = Alt
;  + = Shift
;
; // SCRIPT FUNCTION //
#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.
; // END

;/// COLDFUSION RELATED SHORTCUTS
#Include %A_ScriptDir%\work\coldfusion.ahk

;/// FOR MICROSOFT ERGO KEYBRD FUNC KEYS
#Include %A_ScriptDir%\work\microsoftkeys.ahk

;/// DIARY POPUP TIMER
#Include %A_ScriptDir%\work\timer.ahk

;/// WORK TEXT REPLACE
#Include %A_ScriptDir%\work\work_txtreplace.ahk

;/// GLOBAL TEXT REPLACE
#Include %A_ScriptDir%\txtreplace.ahk