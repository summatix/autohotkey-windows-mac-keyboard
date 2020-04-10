;-----------------------------------------
; Mac keyboard to Windows Key Mappings
;=========================================

; --------------------------------------------------------------
; NOTES
; --------------------------------------------------------------
; ! = ALT
; ^ = CTRL
; + = SHIFT
; # = WIN
;
; Debug action snippet: MsgBox You pressed Control-A while Notepad is active.

#InstallKeybdHook
#SingleInstance force
SetTitleMatchMode 2
SendMode Input


; --------------------------------------------------------------
; media/function keys all mapped to the right option key
; --------------------------------------------------------------

RAlt & F7::SendInput {Media_Prev}
RAlt & F8::SendInput {Media_Play_Pause}
RAlt & F9::SendInput {Media_Next}
F10::SendInput {Volume_Mute}
F11::SendInput {Volume_Down}
F12::SendInput {Volume_Up}

; swap left command/windows key with left alt
;LWin::LAlt
;LAlt::LWin ; add a semicolon in front of this line if you want to disable the windows key

; Eject Key
;F20::SendInput {Insert} ; F20 doesn't show up on AHK anymore, see #3

; F13-15, standard windows mapping
F13::SendInput {PrintScreen}
F14::SendInput {ScrollLock}
F15::SendInput {Pause}

;F16-19 custom app launchers, see http://www.autohotkey.com/docs/Tutorial.htm for usage info
F16::Run http://twitter.com
F17::Run http://tumblr.com
F18::Run http://www.reddit.com
F19::Run https://facebook.com

; --------------------------------------------------------------
; OS X system shortcuts
; --------------------------------------------------------------

; Make Ctrl + S work with cmd (windows) key
#s::Send, ^s

; Selecting
#a::Send, ^a

; Copying
#c::Send, ^c

; Pasting
#v::Send, ^v

; Cutting
#x::Send, ^x

; Opening
#o::^o

; Finding
#f::Send ^f

; Undo
#z::Send, ^z

; Redo
#y::Send, ^y

; New tab
#t::^t

; close tab
#w::Send, ^{F4}

; New window
#n::Send, ^n

; Close windows (cmd + q to Alt + F4)
#q::Send !{F4}

; Remap Windows + Tab to Alt + Tab.
Lwin & Tab::AltTab
Lwin & Shift::ShiftAltTab

; Minimize windows
#m::WinMinimize,a

; Zoom in
LWin & +::Send ^{NumpadAdd}
RWin & +::Send ^{NumpadAdd}

; Zoom out
#-::Send, ^-

; Refresh
#r::Send, ^r

; Clear output
#k::Send, ^l


; --------------------------------------------------------------
; OS X keyboard mappings for special chars
; --------------------------------------------------------------

; Map Alt + L to @
!l::SendInput {@}

; Map Alt + N to \
+!7::SendInput {\}

; Map Alt + N to ©
!g::SendInput {©}

; Map Alt + o to ø
!o::SendInput {ø}

; Map Alt + 5 to [
!5::SendInput {[}

; Map Alt + 6 to ]
!6::SendInput {]}

; Map Alt + E to €
!e::SendInput {€}

; Map Alt + - to –
!-::SendInput {–}

; Map Alt + 8 to {
!8::SendInput {{}

; Map Alt + 9 to }
!9::SendInput {}}

; Map Alt + - to ±
!+::SendInput {±}

; Map Alt + R to ®
!r::SendInput {®}

; Map Alt + N to |
!7::SendInput {|}

; Map Alt + W to ∑
!w::SendInput {∑}

; Map Alt + N to ~
!n::SendInput {~}

; Map Alt + 3 to #
!3::SendInput {#}



; --------------------------------------------------------------
; Custom mappings for special chars
; --------------------------------------------------------------

;#ö::SendInput {[} 
;#ä::SendInput {]} 

;^ö::SendInput {{} 
;^ä::SendInput {}} 


; --------------------------------------------------------------
; Application specific
; --------------------------------------------------------------

; Google Chrome
#IfWinActive, ahk_class Chrome_WidgetWin_1

; Show Web Developer Tools with cmd + alt + i
#!i::Send {F12}

; Show source code with cmd + alt + u
#!u::Send ^u

#IfWinActive

; File explorer
#IfWinActive ahk_class CabinetWClass

#w::Send !{F4}

#IfWinActive

; Calculator
#IfWinActive Calculator

#w::Send !{F4}

#IfWinActive

; Firefox
#IfWinActive, ahk_class MozillaWindowClass

#u::Send ^u

#IfWinActive


; --------------------------------------------------------------
; OSX spotlight-like behavior
; --------------------------------------------------------------

LWin::return
RWin::return
#Space::LWin


; --------------------------------------------------------------
; CMD+Click -> CTRL+Click
; --------------------------------------------------------------

LWin & LButton::
  Send ^{LButton}
  Return

RWin & LButton::
  Send ^{LButton}
  Return


; --------------------------------------------------------------
; Text selection
; --------------------------------------------------------------

LWin & Left::
GetKeyState, state, Shift
If state = D
    Send +{Home}
Else Send {Home}
Return

LWin & Right::
GetKeyState, state, Shift
If state = D
    Send +{End}
Else Send {End}
Return

RWin & Left::
GetKeyState, state, Shift
If state = D
    Send +{Home}
Else Send {Home}
Return

RWin & Right::
GetKeyState, state, Shift
If state = D
    Send +{End}
Else Send {End}
Return

LAlt & Right::
GetKeyState, state, Shift
If state = D
    Send ^+{Right}
Else Send ^{Right}
Return

LAlt & Left::
GetKeyState, state, Shift
If state = D
    Send ^+{Left}
Else Send ^{Left}
Return

RAlt & Right::
GetKeyState, state, Shift
If state = D
    Send ^+{Right}
Else Send ^{Right}
Return

RAlt & Left::
GetKeyState, state, Shift
If state = D
    Send ^+{Left}
Else Send ^{Left}
Return
