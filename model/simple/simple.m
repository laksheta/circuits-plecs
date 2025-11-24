fsw	    = 10e3

V1		= 780
V2 	    = 780

P       = 10e3
D       = 0.25       %! Normalized phase shift ratio
L		= (V1*V2)*D*(1-D)/(2*fsw*P)

deg	    = D*(90/0.5)
phi	    = (deg/360)*(1/fsw)