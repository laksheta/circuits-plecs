# Phase Shift Calculation
$$P = \frac{n \cdot V_1 \cdot V_2 \cdot d \cdot (1 - d)}{2 \cdot f_{sw} \cdot L}$$
$$ P = K \cdot d \cdot (1-d) $$
$$ \frac{P}{K} = d\cdot (1-d) $$
$$ d-d^2-\frac{P}{K}=0 $$
$$ d^2 - d + \frac{P}{K} =0$$

## Solve $d$
$$x = \frac{-b \pm \sqrt{b^2 - 4ac}}{2a}$$
$$ d = \frac{1 \pm \sqrt{(-1)^2 - 4 (1)(\frac{P}{K})}}{2(1)}$$
$$d=\frac{1}{2}\pm \frac{\sqrt{1-4(\frac{P}{K})}}{2}$$
$$d=0.5\pm \sqrt{0.25-\frac{P}{K}} $$

# Case: Sized Inductor ($L$ is fixed by $P_{design}$ at $\phi_{max}=0.5$)
$$ L = \frac{V_1 \cdot V_2 \cdot \phi(1-\phi)}{2\cdot f_{sw} \cdot P_{design}}$$

$$ L = \frac{V_1 \cdot V_2 \cdot 0.5(1-0.5)}{2\cdot f_{sw} \cdot P_{design}}$$
$$ L = \frac{V_1 \cdot V_2 \cdot 0.25}{2\cdot f_{sw} \cdot P_{design}}$$
Under this condition, the term $\frac{P}{K}$ become
$$ \frac{P}{K}=\frac{P_{set}}{P_{design}}\cdot 0.25 $$

## Simplified Solution for $d$
$$ d=0.5-\sqrt{0.25-(\frac{P_{set}}{P_{design}})\cdot 0.25}$$
