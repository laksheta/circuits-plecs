plecs('clc')

% --- Inputs & Constants ---
V_grid_peak = 220*sqrt(2);      % Standard peak phase voltage in Indonesia
F           = 50;
omega       = 2*pi*F;

R           = 1e-1;             % Internal resistance for damping
L           = 1e-3;

R_load      = 100;
C_out       = 10e-6;            % Smaller cap for faster settling time

% --- The "Free Variable" (Your Target) ---
V_dc_target = 780; 

% --- Step 1: Power Balance Calculation ---
% Calculate the power consumed by the load at the target voltage
P_load = (V_dc_target^2) / R_load;

% Calculate the required d-axis current (i_d) to supply that power
% i_d is negative because power flows from grid into the converter
i_d_req = -(2 * P_load) / (3 * V_grid_peak);
i_q_req = 0; % Assuming Unity Power Factor

% --- Step 2: Solve KVL for Rectifier Voltage (u_d, u_q) ---
% V_rect = V_grid - (R + jwL) * I
u_d = V_grid_peak - (R * i_d_req - omega * L * i_q_req);
u_q = 0 - (R * i_q_req + omega * L * i_d_req);

% --- Step 3: Extract Modulation Index and Phase Lag ---
U_rect_amp = sqrt(u_d^2 + u_q^2);
delta_rad  = atan2(u_q, u_d);   % This calculates the exact phase lag
delta      = delta_rad * (180/pi); % Convert to degrees for your phase array

% --- Step 4: Final Parameters for PLECS Blocks ---
m = U_rect_amp / V_dc_target;   % Resulting Modulation Index

% Update your phase array with the calculated delta
phase = [0+delta, -120+delta, 120+delta]; 

V_rect  = m*V_dc_target
% Note: Since delta from atan2(u_q, u_d) will be negative for a rectifier, 
% adding it directly shifts the phase lagging behind the grid.