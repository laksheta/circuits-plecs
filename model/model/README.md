# Simulation


# Model 
<details>
<summary>Click to expand</summary>

## Plant Transfer Function

$$G_{VD} = \frac{G_{dc}}{\tau s + 1}$$

with

$$G_{dc} = \frac{R_{load}}{2V_0} \cdot \frac{V_i V'_2(1-2D)}{2 f_{sw} L}$$

$$\tau = \frac{C R_{load}}{2}$$

## Controller Transfer Function

$$G_c = K_p + \frac{K_i}{s}$$

$$G_c = \frac{K_p s + K_i}{s}$$

</details>
