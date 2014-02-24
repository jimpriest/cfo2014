;///// TEXT REPLACEMENTS - GLOBAL /////
	;  # = Windows Key
	;  ^ = Control
	;  ! = Alt
	;  + = Shift


;/// SIGNATURES ///
	:*:;sig1::
	Send, 
	( LTrim
		Thanks,
		Jim
	)
	return

	:*:;sig2::
	Send, 
	( LTrim
		-- 
		Jim Priest - thecrumb.com
		Triangle Area ColdFusion User Group - tacfug.org
		--
		See me at:
		NCDevCon  (Raleigh, NC May 22-23)
		CFUnited    (Leesburg, VA July 28-31)
		--
		Without deviation from the norm, progress is not possible. ~ Frank Zappa
	)
	return
	
;/// TEXT REPLACEMENTS///
	::cf::
	SendInput, ColdFusion
	return