;///// FOR MICROSOFT ERGO KEYBOARD - FUNCTION KEYS /////
;  # = Windows Key
;  ^ = Control
;  ! = Alt
;  + = Shift


;/// MICROSOFT FUNCTION KEYS  ///
;-------------------------------
; SC03B::
; MsgBox, %A_ThisHotKey%- F1 .. was pressed.
; return
;-------------------------------
; SC03C::
; MsgBox, %A_ThisHotKey%- F2 .. was pressed.
; return
;-------------------------------
;SC03D::
;MsgBox, %A_ThisHotKey%- F3 .. was pressed.
;return
;------------------------------
;SC03E::
;MsgBox, %A_ThisHotKey%- F4 .. was pressed.
;return

;F5------------------------------
;SC03F::
;don't program this - used for window refresh

;F6 CFECLIPSE -------------------
SC040::
ifwinexist, CFEclipse
   WinActivate
else
   Run C:\eclipse\eclipse.exe -vm "C:\Program Files\Java\jdk1.6.0_16\jre\bin\javaw" vmargs -Xms512m -Xmx512m -XX:PermSize=128m -XX:MaxPermSize=256m
return

;F7 SQL Developer----------------
SC041::
Run C:\Program Files\Oracle\sqldeveloper\sqldeveloper.exe
return

;F8 Powerbuilder-----------------
;SC042::
;Run C:\Program Files\Sybase\PowerBuilder 10.0\Pb100.exe
;return

;F9 - Run IIS Console -----------
SC043::
Run %SystemRoot%\system32\inetsrv\iis.msc
return

;------------------------------
;SC044::
;MsgBox, %A_ThisHotKey%- F10 .. was pressed.
;return
;------------------------------
;SC057::
;MsgBox, %A_ThisHotKey%- F11 .. was pressed.
;return
;------------------------------
;SC058::
;MsgBox, %A_ThisHotKey%- F12 .. was pressed.
;return
;------------------------------






