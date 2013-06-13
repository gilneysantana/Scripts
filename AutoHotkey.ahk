+Capslock::Capslock
Capslock::^[
;; ç::Shift

;;;;;;;;;;;;;;;

Pause::Media_Play_Pause

;;; Atalho para setas ;;;


;;; Abrir google translator no browser ;;;

#g::
Send ^c
Run http://translate.google.com/\#en|pt|%Clipboard%
Return

;;; FOCANDO JANELAS ABERTAS ;;;

^!v::
SetTitleMatchMode, RegEx
WinActivate, .*Visual Studio
return

^!f::
SetTitleMatchMode, RegEx
WinActivate, .*Mozilla Firefox
return

;;;;;;;;;;

^!m:: Send {0}
^!j:: Send {1}
^!k:: Send {2}
^!l:: Send {3}
