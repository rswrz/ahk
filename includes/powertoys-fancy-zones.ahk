#NoEnv                         ; Recommended for performance and compatibility with future AutoHotkey releases.
;#Warn                         ; Enable warnings to assist with detecting common errors.
SendMode Input                 ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%    ; Ensures a consistent starting directory.

; WASD style arrow keys
#a::Send #{Left}
#s::Send #{Down}
#w::Send #{Up}
#d::Send #{Right}

; VIM style arrow keys
+#h::Send #{Left}
+#j::Send #{Down}
+#k::Send #{Up}
+#l::Send #{Right}
