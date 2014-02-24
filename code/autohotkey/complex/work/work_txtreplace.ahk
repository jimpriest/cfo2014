;///// TEXT REPLACEMENTS - WORK /////
;  # = Windows Key
;  ^ = Control
;  ! = Alt
;  + = Shift

;/// SHORTCUTS ///
::msm::
SendInput, MSMANAGER-
return

::apol::
SendInput, I apologize for the inconvenience.
return

::jr::
SendInput, JIRA 
return

::conf::
SendInput, Confluence 
return

::;scrum::
SendInput,Yesterday{Enter}
SendInput,*{Enter}
SendInput,*{Enter}
SendInput,*{Enter}
SendInput,{Enter}
SendInput,Today{Enter}
SendInput,*{Enter}
SendInput,*{Enter}
SendInput,*{Enter}
SendInput,{Enter}
return

:*:;cmt::
	FormatTime, TimeString, ShortDate
	SendInput,  %TimeString% - Jim Priest - priestj@niehs.nih.gov
return

:*:;sdate::
	FormatTime, TimeString,, LongDate
	SendInput,  %TimeString%
return

;/// SIGNATURES ///
:*:;sra::
SendInput, Thanks,{Enter}
SendInput, Jim Priest{Enter}
SendInput, ........................{Enter}
SendInput, Configuration Manager{Enter}
SendInput, NIEHS Tech Services Team{Enter}
SendInput, SRA International Contractor{Enter}
SendInput, Voice: (919)313-7661{Enter}
SendInput, Email: priestj@niehs.nih.gov{Enter}
return


;/// STANDARD HEADERS ///
:*:;sql::
FormatTime, TimeString, ShortDate
SendInput, /************************************************************************************{Enter}
SendInput, *** SCRIPT NAME: fileName.sql{Enter}
SendInput, *** DESCRIPTION: This is the description for the SQL file.{Enter}
SendInput, *** DEVELOPER:   Jim Priest - priestj@niehs.nih.gov
SendInput, *** CREATE DATE: %TimeString% {Enter}
SendInput, ************************************************************************************/{Enter}
return

;// FUSEDOC //
:*:;fd::
FormatTime, TimeString, ShortDate
SetKeyDelay, 20 ;in millisceonds
InputBox, fuseDocResponsibility, Attribute Prompt, Responsibility..., , 300, 150
If ErrorLevel = 1 ; They clicked cancel
	return
Sleep, 100

//fetch window title and parse out filename
WinGetActiveTitle, Title
StringReplace, Title, Title, % " - Eclipse"
StringReplace, Title, Title, % "CFEclipse - "
StringReplace, Title, Title, /, \, All
SplitPath, Title, Title
clipboard =
clipboard = %clipboard% <!--- `r`n
clipboard = %clipboard% <fusedoc fuse="%Title%" language="ColdFusion" specification="2.0">`r`n
clipboard = %clipboard%	<responsibilities>%fuseDocResponsibility%</responsibilities>`r`n
clipboard = %clipboard% <properties>`r`n
clipboard = %clipboard%	<history type="Create" author="Jim Priest" comments="" date="%TimeString%" role="Developer" email="priestj@niehs.nih.gov"></history>`r`n
clipboard = %clipboard% </properties>`r`n
clipboard = %clipboard% <io>`r`n
clipboard = %clipboard%	<in></in>`r`n
clipboard = %clipboard%	<out></out>`r`n
clipboard = %clipboard% </io>`r`n
clipboard = %clipboard% </fusedoc>`r`n
clipboard = %clipboard% ---> `r`n
send ^v
return

;/// JIRA / CONFLUENCE ///
:*:;quote::
Send, {{}quote{}}{enter}{enter}{{}quote{}}
Send {UP 1}
return

:*:;code::
Send, {{}code{}}{enter}{enter}{{}code{}}
Send {UP 1}
return

:*:;noformat::
Send, {{}noformat{}}{enter}{enter}{{}noformat{}}
Send {UP 1}
return
