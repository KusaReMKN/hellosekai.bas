10 CLEAR,&H8000
20 DEF SEG=&H8000
30 FOR P=0 TO 49
40   READ C
50   POKE P,C
60 NEXT P
70 F%=0
80 CALL F%
90 ' --- 機械語プログラム（笑） --- '
100 DATA &H60                       ' PUSHA
110 DATA &H06                       ' PUSH  ES
120 DATA &H1E                       ' PUSH  DS
130 DATA &H0E                       ' PUSH  CS
140 DATA &H1F                       ' POP   DS
150 DATA &HC4, &H3E, &H16, &H00     ' LES   DI, [0016]
160 DATA &HBE, &H1A, &H00           ' MOV   SI, 001A
170 DATA &HB9, &H0C, &H00           ' MOV   CX, 000C
180 DATA &HFC                       ' CLD
190 DATA &HF3, &HA5                 ' REP   MOVSW
200 DATA &H1F                       ' POP   DS
210 DATA &H07                       ' POP   ES
220 DATA &H61                       ' POPA
230 DATA &HCF                       ' IRET
240 DATA &H00, &H00, &H00, &HA0     ' VRAM ADDR.: A000:0000
250 DATA &H68, &H00, &H65, &H00, &H6C, &H00, &H6C, &H00     ' hell
260 DATA &H6F, &H00, &H20, &H00, &H20, &H24, &HA0, &H24     ' o 世
270 DATA &H13, &H26, &H93, &H26, &H01, &H2A, &H81, &H2A     ' 界！

