#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
#Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

SetTimer, windowCheck, 1000 ; 2x a sec

;Ctrl+arrow key changes current tab in web explorers
#IfWinActive, ahk_exe chrome.exe
	^Left::
		Send, ^+{TAB}
	Return
	^Right::
		Send, ^{TAB}
	Return
#IfWinActive

;Right-click is shifted in explorer
#IfWinActive, ahk_exe explorer.exe
	RButton::
		Send, +{RButton}
	Return
#IfWinActive

windowCheck:
	;iTunes MiniPlayer is on top
	IfWinActive, ahk_exe iTunes.exe
	{
		WinSet, AlwaysOnTop, On
	}
return