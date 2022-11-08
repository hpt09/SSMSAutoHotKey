SetTitleMatchMode, REGEX
#IfWinActive, SQL

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
::else::
Send, ELSE%A_Space%
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
::order by::
Send, ORDER BY%A_Space%
return
::asc::
Send, ASC%A_Space%
return
::desc::
Send, DESC%A_Space%
return
::group by::
Send, GROUP BY%A_Space%
return
::exec::
Send, EXEC%A_Space%
return
::case::
Send, CASE%A_Space%
return
::when::
Send, WHEN%A_Space%
return
::then::
Send, THEN%A_Space%
return

; Common Phrase
 
::ssf::
Send, SELECT * FROM%A_Space%
return

::ij::
Send, INNER JOIN%A_Space%
return

::lj::
Send, LEFT JOIN%A_Space%
return

::bt::
Send, BEGIN TRAN{enter}{enter}{enter}{enter}ROLLBACK{up}{up}
return

::om::
Send, INNER JOIN oe.ObjectMark ON ObjectMark.ObjectID = Vehicle.VehicleID {enter}INNER JOIN oe.Mark ON Mark.MarkID = ObjectMark.MarkID
return


; Execute line


^3::
Send, {End}
Send, +{Home}
Send, ^e
return



; Open Stored Proc/Functions

^4::
Send, ^w
Send, {right}
Send, ^+{left}^+{left}^+{left}
SavedClip := ClipboardAll
Send, ^c
Send, {F8}
Send, %clipboard%
Send, {AppsKey}y
Clipboard := SavedClip
return
