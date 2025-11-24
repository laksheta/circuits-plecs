plecs('clc')
fsw	    = 10e3

V1		= 780
V2 	    = 780

P       = 10
D       = 0.5       %! Normalized phase shift ratio
L		= (V1*V2)*D*(1-D)/(2*fsw*P)

d       = 0.5
deg	    = d*(90/0.5)
phi	    = (deg/360)*(1/fsw)