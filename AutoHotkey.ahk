;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;; Abrindo um arquivo com o Vim
; O Arquivo deve estar selecionado

F1::gst()

gst() {   ; GetSelectedText or FilePath in Windows Explorer  by Learning one 
	IsClipEmpty := (Clipboard = "") ? 1 : 0
	if !IsClipEmpty {
		ClipboardBackup := ClipboardAll
		While !(Clipboard = "") {
			Clipboard =
			Sleep, 10
		}
	}
	Send, ^c
	ClipWait, 0.1
	ToReturn := Clipboard, Clipboard := ClipboardBackup
	if !IsClipEmpty
	ClipWait, 0.5, 1
	Run, gvim %ToReturn%
}

;;;;;;;;;;;;;;;;;;;;


+Capslock::Capslock
Capslock::^[


; Hack para eclipse
#ifWinActive Java
Capslock::Esc

;;;;;;;;;;;;;;;

Pause::Media_Play_Pause

;;; Atalho para setas ;;;


;;; Abrir google translator no browser ;;;

^!g::
Send ^c
Run http://translate.google.com/\#en|pt|%Clipboard%
Return

;;; FOCANDO JANELAS ABERTAS ;;;

#v::
SetTitleMatchMode, RegEx
WinActivate, .*Visual Studio
return

#f::
SetTitleMatchMode, RegEx
WinActivate, .*Mozilla Firefox
return

#c::
SetTitleMatchMode, RegEx
WinActivate, .*cmd.exe
return

#g::
SetTitleMatchMode, RegEx
WinActivate, .*GVIM
return

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

^!n::
IfWinExist Untitled - Notepad
	WinActivate
else
	Run gvim
return

;;;;;;;;;;

^!m:: Send {0}
^!j:: Send {1}
^!k:: Send {2}
^!l:: Send {3}
