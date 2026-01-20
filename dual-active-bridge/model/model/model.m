plecs('clc')
fsw	    = 10e3

ts      = 100*1/fsw
V1		= 780
V2 	    = 780
V_out   = V1
C       = 1e-5%1e-6

P       = 10e3
D       = 0.5       %! Normalized phase shift ratio
L		= (V1*V2)*D*(1-D)/(2*fsw*P)

d       = 0.5
d       = d*0.5
deg	    = d*(90/0.5)
phi	    = (deg/360)*(1/fsw)

I       = V1*D*(1-D)/(2*fsw*L)  %! Current calculation
R_load  = V1/I

%* PI Controller

Gdc     = ((R_load)/(2*V_out))*((V1*V2*(1-2*d)/(2*fsw*L)))
tau     = (C*R_load)/2

f_bw    = 0.1*fsw
omega_c = 2*pi*f_bw

Kp      = (tau*omega_c)/Gdc
Ki      = Kp/tau