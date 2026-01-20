plecs('clc')
fsw     = 10e3

ts      = 100*1/fsw
V1      = 780
V2      = 780
V_in    = V1
V_out   = V1
C       = 1e-5%1e-6

P_c     = 5e3
P_set   = 10e3
P_design       = 15e3
D       = 0.5       %! Normalized phase shift ratio
L       = (V1*V2)*D*(1-D)/(2*fsw*P_design)

phi       = 0.5
phi       = phi*0.5
deg     = phi*(90/0.5)
phi_time     = (deg/360)*(1/fsw)

I       = V1*D*(1-D)/(2*fsw*L)  %! Current calculation
R_load_c  = (V_out^2) / P_c 
R_load  = (V_out^2) / P_set

%* PI Controller

Gdc     = ((R_load_c)/(2*V_out))*((V1*V2*(1-2*phi)/(2*fsw*L)))
tau     = (C*R_load_c)/2

f_bw    = 0.05*fsw
omega_c = 2*pi*f_bw

Kp      = (tau*omega_c)/Gdc
Ki      = Kp/tau

%* Open Loop Verification

ratio_phi = (P_set / P_design) * 0.25
phi_theory = 0.5 - sqrt(0.25 - ratio_phi)
phi_test = phi_theory / 2

phi_theory_verification = phi_test * 2

I_predicted = (V1 * phi_theory_verification * (1 - phi_theory_verification)) / (2 * fsw * L)
V_predicted = I_predicted * R_load