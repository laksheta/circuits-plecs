%% Model Parameters %%

Vin     = 100
fsw     = 10e3

ts      = 10%1/fsw * 0.5

Ra 		    = 0.43 %Terminal Resistance
La			= 0.9e-3 %Terminal Inductance

%i_f calculation
i_f 		= 1
Rf			= 1
Lf			= 0.1
vf 		    = Rf*i_f



J			= 2.118e-4%1.54e-5 %Rotor Inertia and unit conversion
F			= 1.909e-4%9.549e-6 %Damping Factor and unit conversion
Laf         = 0.08%0.0187 %Torque Sensitivity

ia_rated    = 8.20 %Rated Current
Te_max 	    = 4.096	%Peak Torque || Max Electromagnetic Torque
w_m_rated   = 282.74 %Rated Speed

%% Control Parameters %%

%% Current Control
f_bw_c    = fsw/10
w_bw_c    = 2*pi*f_bw_c

Kp_c    = w_bw_c * La
Ki_c    = w_bw_c * Ra

%% Speed Control
f_bw_s  = 0.01*f_bw_c
w_bw_s  = 2*pi*f_bw_s

Kp_s    = (w_bw_s * J)/(Laf*i_f)
Ki_s    = (w_bw_s * F)/(Laf*i_f)