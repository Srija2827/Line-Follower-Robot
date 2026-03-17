ORG 0000H

MAIN:
    MOV P1, #0FFH      ; Sensors input
    MOV P2, #00H       ; Motors output

LOOP:
    JB P1.0, CHECK_RIGHT   ; Left sensor
    JB P1.2, TURN_LEFT     ; Right sensor
    SJMP STOP

CHECK_RIGHT:
    JB P1.2, FORWARD
    SJMP TURN_RIGHT

; -------- MOTOR CONTROL --------

; P2.0 P2.1 ? Motor 1
; P2.6 P2.7 ? Motor 2

FORWARD:
    MOV P2, #041H      ; 0100 0001
    SJMP LOOP

TURN_LEFT:
    MOV P2, #040H      ; Right motor only
    SJMP LOOP

TURN_RIGHT:
    MOV P2, #001H      ; Left motor only
    SJMP LOOP

STOP:
    MOV P2, #000H
    SJMP LOOP

END