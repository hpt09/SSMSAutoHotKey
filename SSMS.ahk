SetTitleMatchMode, REGEX
#IfWinActive, Remote

; Capitalize

::select::
Send, SELECT%A_Space%
return
::from::
Send, FROM%A_Space%
return
::inner::
Send, INNER%A_Space%
return
::join::
Send, JOIN%A_Space%
return
::on::
Send, ON%A_Space%
return
::insert into::
Send, INSERT INTO%A_Space%
return
::values::
Send, VALUES%A_Space%
return
::update::
Send, UPDATE%A_Space%
return
::set::
Send, SET%A_Space%
return
::delete::
Send, DELETE%A_Space%
return
::as::
Send, AS%A_Space%
return
::where::
Send, WHERE%A_Space%
return
::and::
Send, AND%A_Space%
return
::or::
Send, OR%A_Space%
return
::not::
Send, NOT%A_Space%
return
::is::
Send, IS%A_Space%
return
::in::
Send, IN%A_Space%
return
::like::
Send, LIKE%A_Space%
return
::if::
Send, IF%A_Space%
return
::exists::
Send, EXISTS%A_Space%
return
::declare::
Send, DECLARE%A_Space%
return
::as::
Send, AS%A_Space%
return
::begin::
Send, BEGIN%A_Space%
return
::end::
Send, END%A_Space%
return

; Common Phrase
 
::ssf::
Send, SELECT * FROM%A_Space%
return

::ij::
Send, INNER JOIN%A_Space%
return

::bt::
Send, BEGIN TRAN{enter}{enter}{enter}{enter}ROLLBACK{up}{up}
return


; Execute line


^3::
Send, {End}
Send, +{Home}
Send, ^e
return

; Open Stored Proc/Functions

^4::
Send, ^c
Send, {F8}
Send, %clipboard%
Send, {AppsKey}y
return