%% Model Parameters %%

Vin     = 30
fsw     = 10e3

ts      = 10%1/fsw * 0.5

Ra 		    = 0.43 %Terminal Resistance
La			= 0.9e-3 %Terminal Inductance

%% Control Parameters %%

%% Current Control
f_bw_c    = fsw/10
w_bw_c    = 2*pi*f_bw_c

Kp_c    = w_bw_c * La
Ki_c    = w_bw_c * Ra