#NoEnv                         ; Recommended for performance and compatibility with future AutoHotkey releases.
;#Warn                         ; Enable warnings to assist with detecting common errors.
SendMode Input                 ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%    ; Ensures a consistent starting directory.

; Center active Window
#c::
WinExist("A")
WinGetPos,,, sizeX, sizeY
WinGet MX, MinMax, A
If MX = 1
  WinRestore, A
WinMove, (A_ScreenWidth/2)-(sizeX/2), (A_ScreenHeight/2)-(sizeY/2)
return


; Minimize Active Window
#q::WinMinimize, A


; Close Active Window
#+q::WinClose, A


; Maximize Active Window
#w::
#+w::
WinGet MX, MinMax, A
If (MX = 0) {
  WinMaximize, A
}
Else {
; else does not work couse of MaxTo Tool
  WinRestore, A
  WinMaximize, A
}
return
