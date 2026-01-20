# Simulation
![](attachments/Pasted%20image%2020251205151236.png)

# Model 

## Plant Transfer Function

$$G_{VD} = \frac{G_{dc}}{\tau s + 1}$$

with

$$G_{dc} = \frac{R_{\text{load}}}{2V_{0}} \cdot \frac{V_{1}V_{2}'(1-2D)}{2f_{\text{sw}}L}$$

$$\tau = \frac{C R_{load}}{2}$$

## Controller Transfer Function

$$G_c = K_p + \frac{K_i}{s}$$

$$G_c = \frac{K_p s + K_i}{s}$$

with

$$K_p = \frac{\tau \omega_c}{G_{dc}}, \quad K_i = \frac{K_p}{\tau}$$

$$\omega_c = 2\pi f_{bw}$$

# Result
![](attachments/Pasted%20image%2020251205152539.png)