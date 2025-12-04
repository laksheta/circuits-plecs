# Simulation


# Model 
<details>
<summary>Click to expand</summary>

## Plant Transfer Function

$$G_{VD} = \frac{G_{dc}}{\tau s + 1}$$

with

$$G_{dc} = \frac{R_{\text{load}}}{2V_{0}} \cdot \frac{V_{i}V_{2}'(1-2D)}{2f_{\text{sw}}L}$$

$$\tau = \frac{C R_{load}}{2}$$

## Controller Transfer Function

$$G_c = K_p + \frac{K_i}{s}$$

$$G_c = \frac{K_p s + K_i}{s}$$

</details>
