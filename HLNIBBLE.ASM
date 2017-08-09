#ANFANG#

; Programmname  : HLNIBBLE
; Autor                 : Gerlando Caldara
; Datum               : 19.06.2005
; Funktion            : Sinnlos

     %  MOV P4,  #00000001b   %

     %  M1             %

     %  MOV A,   P1    %

     %  ANL  A, #11110000b          %

     % SWAP   A   %

     %  MOV R1,  A     %

     %  MOV A,   P1    %

     %  ANL  A,#00001111b   %

    %  MOV R0,      A %

     %  JB   P4.0,   M1    %

#ENDE#