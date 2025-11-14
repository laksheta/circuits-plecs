Ra 		= 0.43 %Terminal Resistance
La			= 0.9e-3 %Terminal Inductance

%i_f calculation
i_f 		= 1
Rf			= 1
Lf			= 0.1
vf 		= Rf*i_f

%kt		= Laf * i_f
%Laf


J			= 1.54e-5 %Rotor Inertia and unit conversion
F			= 9.549e-6 %Damping Factor and unit conversion
ia_rated = 8.20 %Rated Current
Te_max 	= 4.096	%Peak Torque || Max Electromagnetic Torque
w_m_rated= 282.74 %Rated Speed

%K			= 0.08 %Back EMF (V/rad/sec) || Laf * if