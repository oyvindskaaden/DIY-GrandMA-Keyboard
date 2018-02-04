; AHK Script for use with GrandMA2 maybe series 1
; Made by Øyvind Skaaden

#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.
#SingleInstance force

SetNumLockState, Off 				; Forces the numlock off when using, makes the keyboard more stable

#if (getKeyState("F23", "P"))
F23::return

;;;;; F-keys ;;;;;

F1::
F2::
F3::
F4::
F5::
F6::
F7::
F9::
F8::
F10::SendInput, {%A_thishotkey%} 	; x buttons
F11::SendInput, ^{F1}				; x buttons
F12::SendInput, ^{F2}				; x buttons

;;;;; First row ;;;;;

|::SendInput, ^t 					; Time
1::Return
2::SendInput, b 						; Blind
3::SendInput, !f 					; Freeze
4::SendInput, ^!p 					; Prvw

5::SendInput, ^!f 					; Fix
6::SendInput, ^s 					; Select
7::SendInput, o 					; Off
8::Return
9::SendInput, v 					; View
0::SendInput, !e 					; Effect
+::SendInput, !g 					; Goto
\::Return
backspace::SendInput, {Delete}

;;;;; Second row;;;;;

tab::SendInput, e 					; Edit
q::Return
w::SendInput, !a 					; Assign
e::SendInput, ^a 					; Align
r::Return
t::SendInput, ^!t 					; Temp
y::SendInput, !t 					; Top
u::SendInput, ^o 					; On
i::Return
o::SendInput, !p 					; Page
p::SendInput, m 					; Macro
;å::
SC01A::SendInput, p 				; Preset
;¨::
SC01B::return
enter::SendInput, {Enter} 			; Please

;;;;; Third row ;;;;;

capslock::SendInput, u 				; Update
a::Return
s::Return
d::Return

f::SendInput, !< 					; <<<
g::SendInput, ^l 					; Learn
h::SendInput, ^!< 					; >>>

j::Return

k::SendInput, !s 					; Sequ
l::SendInput, !c 					; Cue 
;ø::
SC027:: SendInput, x 				; Exec

;æ::
SC028::Return
'::Return

;;;;; Fourth row ;;;;;

Lshift::SendInput, {BackSpace} 		; Oops

<::Return
z::SendInput, ^{F12} 				; Tools
x::SendInput, {F12}					; Setup
c::Return

v::SendInput, < 					; Go -
b::SendInput, ^p 					; Pause
n::SendInput, ^< 					; Go +

m::Return

,::SendInput, c 					; Channel
.::SendInput, f 					; Fixture
-::SendInput, g 					; Group
Rshift::SendInput, {Shift} 			; Please



;;;;; System keys ;;;;;

Lctrl::SendInput, s 				; Store

Lwin::SendInput, {Delete} 			; Clear

Lalt::SendInput, ^{Space} 			; GO - (Generic GO -)
space::SendInput, {Space} 			; GO + (Generic GO +)
Ralt::SendInput, !{Space} 			; PAUSE (Generic Pause)

Rwin::Return

appskey::SendInput, ^b 				; B.O.
Rctrl::SendInput, {End}				; Set

;;;;; Function keys ;;;;;

PrintScreen::Return
ScrollLock::SendInput, ^!b 			; Backup

;;;;; Unused keys ;;;;;
SC061::Return
SC07E::Return
CtrlBreak::Return
pause::Return
Break::Return
SC045::Return

;;;;; Second function keys ;;;;;
insert::SendInput, ^d 				; Delete
home::SendInput, ^c 				; Copy
pgup::SendInput, ^m 				; Move
delete:: SendInput, ^f 				; Full
end::SendInput, h 					; Highlt
pgdn::SendInput, ^!s 				; Solo

;;;;; Arrow keys ;;;;;
Up::
Down::
Left::
Right::SendInput, {%A_thishotkey%}

;;;;; Numpad ;;;;;

Numpad0::
NumpadIns::SendInput, 0 			; Zero
Numpad1::
NumpadEnd::SendInput, 1 			; One
Numpad2::
NumpadDown::SendInput, 2 			; Two
Numpad3::
NumpadPgdn::SendInput, 3 			; Three
Numpad4::
NumpadLeft::SendInput, 4 			; Four
Numpad5::
NumpadClear::SendInput, 5 			; Five
Numpad6::
NumpadRight::SendInput, 6 			; Six
Numpad7::
NumpadHome::SendInput, 7 			; Seven
Numpad8::
NumpadUp::SendInput, 8 				; Eight
Numpad9::
NumpadPgup::SendInput, 9 			; Nine
Numlock::SendInput, i 				; If
NumpadDiv::SendInput, {+} 			; Pluss
NumpadMult::SendInput, {-} 			; Minus
NumpadSub::SendInput, t 			; Thru
NumpadAdd::SendInput, a 			; At
NumpadEnter::SendInput, {Enter}		; Please
NumpadDot::
NumpadDel::SendInput, . 			; Comma

return
#if
;-------------------------
