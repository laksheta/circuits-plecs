plecs('clc')
fsw	    = 10e3

ts      = 1%100*1/fsw
V1		= 780
V2 	    = 780
C       = 1e-6

P       = 10e3
D       = 0.5       %! Normalized phase shift ratio
L		= (V1*V2)*D*(1-D)/(2*fsw*P)

d       = 0.5
deg	    = d*(90/0.5)
phi	    = (deg/360)*(1/fsw)

I       = V1*D*(1-D)/(2*fsw*L)  %! Current calculation
R_load  = V1/I