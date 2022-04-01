#NoEnv                         ; Recommended for performance and compatibility with future AutoHotkey releases.
;#Warn                         ; Enable warnings to assist with detecting common errors.
SendMode Input                 ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%    ; Ensures a consistent starting directory.


;=====================================================================o
;                       CapsLock Initializer                         ;|
;---------------------------------------------------------------------o
SetCapsLockState, AlwaysOff                                          ;|
;---------------------------------------------------------------------o


;=====================================================================o
;                       CapsLock Switcher:                           ;|
;---------------------------------o-----------------------------------o
;                   CapsLock + `  |  {CapsLock}                      ;|
;---------------------------------o-----------------------------------o
CapsLock & `::                                                       ;|
GetKeyState, CapsLockState, CapsLock, T                              ;|
if CapsLockState = D                                                 ;|
    SetCapsLockState, AlwaysOff                                      ;|
else                                                                 ;|
    SetCapsLockState, AlwaysOn
KeyWait, ``                                                          ;|
return                                                               ;|
;---------------------------------------------------------------------o


;=====================================================================o
;                         CapsLock Escaper:                          ;|
;----------------------------------o----------------------------------o
;                        CapsLock  |  {ESC}                          ;|
;----------------------------------o----------------------------------o
CapsLock::Send, {ESC}                                                ;|
;---------------------------------------------------------------------o


;=====================================================================o
;                    CapsLock Direction Navigator                    ;|
;----------------------------------o----------------------------------o
;                    CapsLock + h  |  Left                           ;|
;                    CapsLock + j  |  Down                           ;|
;                    CapsLock + k  |  Up                             ;|
;                    CapsLock + l  |  Right                          ;|
;                      Ctrl, Alt Compatible                          ;|
;----------------------------------o----------------------------------o
CapsLock & h::                                                       ;|
if GetKeyState("control") = 0                                        ;|
{                                                                    ;|
    if GetKeyState("alt") = 0                                        ;|
        Send, {Left}                                                 ;|
    else                                                             ;|
        Send, +{Left}                                                ;|
    return                                                           ;|
}                                                                    ;|
else {                                                               ;|
    if GetKeyState("alt") = 0                                        ;|
        Send, ^{Left}                                                ;|
    else                                                             ;|
        Send, +^{Left}                                               ;|
    return                                                           ;|
}                                                                    ;|
return                                                               ;|
;----------------------------------o                                 ;|
CapsLock & j::                                                       ;|
if GetKeyState("control") = 0                                        ;|
{                                                                    ;|
    if GetKeyState("alt") = 0                                        ;|
        Send, {Down}                                                 ;|
    else                                                             ;|
        Send, +{Down}                                                ;|
    return                                                           ;|
}                                                                    ;|
else {                                                               ;|
    if GetKeyState("alt") = 0                                        ;|
        Send, ^{Down}                                                ;|
    else                                                             ;|
        Send, +^{Down}                                               ;|
    return                                                           ;|
}                                                                    ;|
return                                                               ;|
;----------------------------------o                                 ;|
CapsLock & k::                                                       ;|
if GetKeyState("control") = 0                                        ;|
{                                                                    ;|
    if GetKeyState("alt") = 0                                        ;|
        Send, {Up}                                                   ;|
    else                                                             ;|
        Send, +{Up}                                                  ;|
    return                                                           ;|
}                                                                    ;|
else {                                                               ;|
    if GetKeyState("alt") = 0                                        ;|
        Send, ^{Up}                                                  ;|
    else                                                             ;|
        Send, +^{Up}                                                 ;|
    return                                                           ;|
}                                                                    ;|
return                                                               ;|
;----------------------------------o                                 ;|
CapsLock & l::                                                       ;|
if GetKeyState("control") = 0                                        ;|
{                                                                    ;|
    if GetKeyState("alt") = 0                                        ;|
        Send, {Right}                                                ;|
    else                                                             ;|
        Send, +{Right}                                               ;|
    return                                                           ;|
}                                                                    ;|
else {                                                               ;|
    if GetKeyState("alt") = 0                                        ;|
        Send, ^{Right}                                               ;|
    else                                                             ;|
        Send, +^{Right}                                              ;|
    return                                                           ;|
}                                                                    ;|
return                                                               ;|
;---------------------------------------------------------------------o


;=====================================================================o
;                       CapsLock Word Navigator                      ;|
;----------------------------------o----------------------------------o
;                    CapsLock + w  |  Ctrl + Right(Move as [vim: w]) ;|
;                    CapsLock + b  |  Ctrl + Left (Move as [vim: b]) ;|
;----------------------------------o----------------------------------o
CapsLock & w:: Send, ^{Right}                                        ;|
CapsLock & b:: Send, ^{Left}                                         ;|
;---------------------------------------------------------------------o


;=====================================================================o
;                     CapsLock Home/End Navigator                    ;|
;----------------------------------o----------------------------------o
;                    CapsLock + i  |  Home                           ;|
;                    CapsLock + o  |  End                            ;|
;                      Ctrl, Alt Compatible                          ;|
;----------------------------------o----------------------------------o
CapsLock & i::                                                       ;|
if GetKeyState("control") = 0                                        ;|
{                                                                    ;|
    if GetKeyState("alt") = 0                                        ;|
        Send, {Home}                                                 ;|
    else                                                             ;|
        Send, +{Home}                                                ;|
    return                                                           ;|
}                                                                    ;|
else {                                                               ;|
    if GetKeyState("alt") = 0                                        ;|
        Send, ^{Home}                                                ;|
    else                                                             ;|
        Send, +^{Home}                                               ;|
    return                                                           ;|
}                                                                    ;|
return                                                               ;|
;----------------------------------o                                 ;|
CapsLock & o::                                                       ;|
if GetKeyState("control") = 0                                        ;|
{                                                                    ;|
    if GetKeyState("alt") = 0                                        ;|
        Send, {End}                                                  ;|
    else                                                             ;|
        Send, +{End}                                                 ;|
    return                                                           ;|
}                                                                    ;|
else {                                                               ;|
    if GetKeyState("alt") = 0                                        ;|
        Send, ^{End}                                                 ;|
    else                                                             ;|
        Send, +^{End}                                                ;|
    return                                                           ;|
}                                                                    ;|
return                                                               ;|
;---------------------------------------------------------------------o


;=====================================================================o
;                      CapsLock Page Navigator                       ;|
;----------------------------------o----------------------------------o
;                    CapsLock + u  |  PageUp                         ;|
;                    CapsLock + p  |  PageDown                       ;|
;                      Ctrl, Alt Compatible                          ;|
;----------------------------------o----------------------------------o
CapsLock & u::                                                       ;|
if GetKeyState("control") = 0                                        ;|
{                                                                    ;|
    if GetKeyState("alt") = 0                                        ;|
        Send, {PgUp}                                                 ;|
    else                                                             ;|
        Send, +{PgUp}                                                ;|
    return                                                           ;|
}                                                                    ;|
else {                                                               ;|
    if GetKeyState("alt") = 0                                        ;|
        Send, ^{PgUp}                                                ;|
    else                                                             ;|
        Send, +^{PgUp}                                               ;|
    return                                                           ;|
}                                                                    ;|
return                                                               ;|
;----------------------------------o                                 ;|
CapsLock & p::                                                       ;|
if GetKeyState("control") = 0                                        ;|
{                                                                    ;|
    if GetKeyState("alt") = 0                                        ;|
        Send, {PgDn}                                                 ;|
    else                                                             ;|
        Send, +{PgDn}                                                ;|
    return                                                           ;|
}                                                                    ;|
else {                                                               ;|
    if GetKeyState("alt") = 0                                        ;|
        Send, ^{PgDn}                                                ;|
    else                                                             ;|
        Send, +^{PgDn}                                               ;|
    return                                                           ;|
}                                                                    ;|
return                                                               ;|
;---------------------------------------------------------------------o


;=====================================================================o
;                     CapsLock Mouse Controller                      ;|
;----------------------------------o----------------------------------o
;                  CapsLock + Up   |  Mouse Up                       ;|
;                 CapsLock + Down  |  Mouse Down                     ;|
;                 CapsLock + Left  |  Mouse Left                     ;|
;                CapsLock + Right  |  Mouse Right                    ;|
;  CapsLock + Enter(Push Release)  |  Mouse Left Push(Release)       ;|
;----------------------------------o----------------------------------o
CapsLock & Up::    MouseMove, 0, -10, 0, R                           ;|
CapsLock & Down::  MouseMove, 0, 10, 0, R                            ;|
CapsLock & Left::  MouseMove, -10, 0, 0, R                           ;|
CapsLock & Right:: MouseMove, 10, 0, 0, R                            ;|
;----------------------------------o                                 ;|
CapsLock & Enter::                                                   ;|
SendEvent {Blind}{LButton down}                                      ;|
KeyWait Enter                                                        ;|
SendEvent {Blind}{LButton up}                                        ;|
return                                                               ;|
;---------------------------------------------------------------------o


;=====================================================================o
;                           CapsLock Deletor                         ;|
;----------------------------------o----------------------------------o
;                    CapsLock + n  |  Ctrl + Delete (Delete a Word)  ;|
;                    CapsLock + m  |  Delete                         ;|
;                    CapsLock + ,  |  BackSpace                      ;|
;                    CapsLock + .  |  Ctrl + BackSpace               ;|
;----------------------------------o----------------------------------o
CapsLock & ,:: Send, {Del}                                           ;|
CapsLock & .:: Send, ^{Del}                                          ;|
CapsLock & m:: Send, {BS}                                            ;|
CapsLock & n:: Send, ^{BS}                                           ;|
;---------------------------------------------------------------------o


;=====================================================================o
;                       CapsLock Media Controller                    ;|
;----------------------------------o----------------------------------o
;                   CapsLock + F1  |  Volume_Mute                    ;|
;                   CapsLock + F2  |  Volume_Down                    ;|
;                   CapsLock + F3  |  Volume_Up                      ;|
;----------------------------------o----------------------------------o
;CapsLock & F1:: Send, {Volume_Mute}                                 ;|
;CapsLock & F2:: Send, {Volume_Down}                                 ;|
;CapsLock & F3:: Send, {Volume_Up}                                   ;|
;---------------------------------------------------------------------o


;=====================================================================o
;                      CapsLock Window Controller                    ;|
;----------------------------------o----------------------------------o
;                    CapsLock + s  |  Ctrl + Tab (Swith Tab)         ;|
;                    CapsLock + q  |  Ctrl + W   (Close Tab)         ;|
;              Alt + CapsLock + s  |  Alt + Ecs  (Switch Windows)    ;|
;              Alt + CapsLock + q  |  Alt + F4   (Close Windows)     ;|
;                    CapsLock + g  |  AppsKey    (Menu Key)          ;|
;----------------------------------o----------------------------------o
CapsLock & s::                                                       ;|
if GetKeyState("alt") = 0                                            ;|
{                                                                    ;|
    Send, ^{Tab}                                                     ;|
}                                                                    ;|
else {                                                               ;|
    Send, !{Esc}                                                     ;|
    return                                                           ;|
}                                                                    ;|
return                                                               ;|
;----------------------------------o                                 ;|
CapsLock & q::                                                       ;|
if GetKeyState("alt") = 0                                            ;|
{                                                                    ;|
    Send, ^w                                                         ;|
}                                                                    ;|
else {                                                               ;|
    Send, !{F4}                                                      ;|
    return                                                           ;|
}                                                                    ;|
return                                                               ;|
;----------------------------------o                                 ;|
CapsLock & g:: Send, {AppsKey}                                       ;|
;---------------------------------------------------------------------o


;=====================================================================o
;                        CapsLock Char Mapping                       ;|
;----------------------------------o----------------------------------o
;                    CapsLock + ;  |  Enter (Cancel)                 ;|
;                    CapsLock + '  |  =                              ;|
;                    CapsLock + /  |  |                              ;|
;----------------------------------o----------------------------------o
CapsLock & `;:: Send, {Enter}                                        ;|
CapsLock & '::                                                       ;|
if GetKeyState("alt") = 0                                            ;|
{                                                                    ;|
     Send, -                                                         ;|
}                                                                    ;|
else {                                                               ;|
    Send, _                                                          ;|
    return                                                           ;|
}                                                                    ;|
return                                                               ;|
;----------------------------------o                                 ;|
CapsLock & /:: Send, |                                               ;|
;---------------------------------------------------------------------o


;=====================================================================o
;                      CapsLock Ctrl Key Replacement                 ;|
;----------------------------------o----------------------------------o
;                    CapsLock + d  |  Ctrl + d                       ;|
;                    CapsLock + r  |  Ctrl + r                       ;|
;                    CapsLock + t  |  Ctrl + t                       ;|
;                    CapsLock + z  |  Ctrl + z                       ;|
;                    CapsLock + x  |  Ctrl + x                       ;|
;                    CapsLock + c  |  Ctrl + c                       ;|
;                    CapsLock + v  |  Ctrl + v                       ;|
;                    CapsLock + a  |  Ctrl + a                       ;|
;                    CapsLock + f  |  Ctrl + f                       ;|
;                    CapsLock + y  |  Ctrl + y                       ;|
;----------------------------------o----------------------------------o
CapsLock & d:: Send, ^d                                              ;|
CapsLock & r:: Send, ^r                                              ;|
CapsLock & t:: Send, ^t                                              ;|
CapsLock & z:: Send, ^z                                              ;|
CapsLock & x:: Send, ^x                                              ;|
CapsLock & c:: Send, ^c                                              ;|
CapsLock & v:: Send, ^v                                              ;|
CapsLock & a:: Send, ^a                                              ;|
CapsLock & y:: Send, ^y                                              ;|
;---------------------------------------------------------------------o


;=====================================================================o
;                          CapsLock VSCode                           ;|
;----------------------------------o----------------------------------o
;                    CapsLock + f  |  Format Document                ;|
;              CapsLock + Alt + f  |  Sort Import + Format Document  ;|
;                    CapsLock + [  |  Fold                           ;|
;                    CapsLock + ]  |  Unfold                         ;|
;              CapsLock + Alt + [  |  Fold recursivly                ;|
;              CapsLock + Alt + [  |  Fold recursivly                ;|
;----------------------------------o----------------------------------o
CapsLock & f::                                                       ;|
if GetKeyState("alt") = 0                                            ;|
{                                                                    ;|
    Send, +!f                                                        ;|
}                                                                    ;|
else {                                                               ;|
    Send, +!o                                                        ;|
    Sleep, 100                                                       ;|
    Send, +!f                                                        ;|
    return                                                           ;|
}                                                                    ;|
return                                                               ;|
;----------------------------------o                                 ;|
CapsLock & [::                                                       ;|
if GetKeyState("alt") = 0                                            ;|
{                                                                    ;|
    Send, ^+[                                                        ;|
}                                                                    ;|
else {                                                               ;|
    Send, ^k                                                         ;|
    Sleep, 100                                                       ;|
    Send, ^[                                                         ;|
    return                                                           ;|
}                                                                    ;|
return                                                               ;|
;----------------------------------o                                 ;|
CapsLock & ]::                                                       ;|
if GetKeyState("alt") = 0                                            ;|
{                                                                    ;|
    Send, ^+]                                                        ;|
}                                                                    ;|
else {                                                               ;|
    Send, ^k                                                         ;|
    Sleep, 100                                                       ;|
    Send, ^]                                                         ;|
    return                                                           ;|
}                                                                    ;|
return                                                               ;|
;----------------------------------o                                 ;|
CapsLock & -::                                                       ;|
Send, ^k                                                             ;|
Sleep, 100                                                           ;|
Send, ^0                                                             ;|
return                                                               ;|
;----------------------------------o                                 ;|
CapsLock & =::                                                       ;|
Send, ^k                                                             ;|
Sleep, 100                                                           ;|
Send, ^j                                                             ;|
return                                                               ;|
;---------------------------------------------------------------------o
