;///// COLDFUSION / CODING /////
;  # = Windows Key
;  ^ = Control
;  ! = Alt
;  + = Shift

:*:;cfif::
	Send,  <cfif >{Enter}{Enter}<cfelse>{Enter}{Enter}</cfif>
	Send {UP 3}
	Send {LEFT 2}

	SetKeyDelay, 20 ;in millisceonds
	InputBox, attName, Attribute Prompt, Attribute Name..., , 300, 150
	If ErrorLevel = 1 ; They clicked cancel
		return
	InputBox, attValue, Attribute Prompt, Attribute Value..., , 300, 150
	If ErrorLevel = 1 ; They clicked cancel
		return
	Sleep, 100
	SendRaw, %attName% = %attValue%
return

;-- Wrap selected text in a href ---
!a::
  clipboard =
  send ^c
  clipwait, 1
  If ErrorLevel = 0
  {
    clipboard = <a href="" title="%clipboard%">%clipboard%</a>
    send ^v
  }
return

;-- Wrap selected text cfif/else with nbsp ---
!l::
  clipboard =
  send ^c
  clipwait, 1 
  StringReplace, clipboard, clipboard, #, , All
  If ErrorLevel = 0
  {
    clipboard = <cfif Len(%clipboard%)>#%clipboard%#<cfelse>&nbsp;</cfif>
    send ^v
  }
return

;-- Wrap selected text in Ucase() ---
^u::
  clipboard =
  send ^c
  clipwait, 1
  If ErrorLevel = 0
  {
    clipboard = Ucase(%clipboard%)
    send ^v
  }
return

;-- Wrap selected text in Upper() ---
!u::
  clipboard =
  send ^c
  clipwait, 1
  If ErrorLevel = 0
  {
    clipboard = Upper(%clipboard%)
    send ^v
  }
return


;-- Wrap selected text in Trim() ---
!t::
  clipboard =
  send ^c
  clipwait, 1
  If ErrorLevel = 0
  {
    clipboard = Trim(%clipboard%)
    send ^v
  }
return


;-- Wrap selected text in QueryParam (will first strip ' or ") ---
!q::
  clipboard =
  send ^c
  clipwait, 1
  If ErrorLevel = 0
  StringReplace, clipboard, clipboard, ', , All
  {
    clipboard = <cfqueryparam value="%clipboard%" cfsqltype="cf_sql_varchar">
    send ^v
  }
return

;-- Wrap selected text in QueryParam (will first strip ' or ") ---
#q::
  clipboard =
  send ^c
  clipwait, 1
  If ErrorLevel = 0
  StringReplace, clipboard, clipboard, ', , All
  {
    clipboard = <cfqueryparam value="%clipboard%" cfsqltype="cf_sql_numeric">
    send ^v
  }
return


;-- Wrap selected text in CFDump/CFAbort ---
SC03B::
  clipboard =
  send ^c
  clipwait, 1
  If ErrorLevel = 0
  {
    clipboard = <!--- TODO - for debugging --->`n<cfdump var="#%clipboard%#" top=5 label="My Dump">`n<cfabort>
    send ^v
  }
return


