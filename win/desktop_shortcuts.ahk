; alt + shift + wheel -> volume

!+WheelUp::Volume_Up
!+WheelDown::Volume_Down

; super + shift + vim directions -> super + directions
;#+h::
;Send #{Left}
;return
;#+j::
;Send #{Down}
;return
;#+k::
;Send #{Up}
;return
;#+l::
;Send #{Right}
;return

; alt + shift + vim directions -> super + directions
; disable office shortcut: https://superuser.com/questions/1455857/how-to-disable-office-key-keyboard-shortcut-opening-office-app

!+h::
SendInput #{Left}
return

!+j::
SendInput #{Down}
return

!+k::
SendInput #{Up}
return

!+l::
SendInput #{Right}
return

; super + enter -> terminal

RWin & Enter::
Run, wt.exe
return

; win + q -> alt + f4

#q::
SendInput !{F4}
return