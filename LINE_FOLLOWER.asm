ORG 0000H

MAIN:
    MOV P0, #0FFH      ; P0 as input (sensors)
    MOV P1, #00H       ; P1 as output (motors)

LOOP:
    JB P0.0, CHECK_RIGHT   ; Left sensor
    JB P0.1, TURN_LEFT     ; Right sensor
    SJMP STOP

CHECK_RIGHT:
    JB P0.1, FORWARD
    SJMP TURN_RIGHT

; -------- MOTOR CONTROL --------
; P1.0 P1.1 → Left motor
; P1.2 P1.3 → Right motor

FORWARD:
    MOV P1, #05H       ; 0000 0101 → both forward
    SJMP LOOP

TURN_LEFT:
    MOV P1, #06H       ; 0000 0110 → left reverse, right forward
    SJMP LOOP

TURN_RIGHT:
    MOV P1, #09H       ; 0000 1001 → left forward, right reverse
    SJMP LOOP

STOP:
    MOV P1, #00H
    SJMP LOOP

END
