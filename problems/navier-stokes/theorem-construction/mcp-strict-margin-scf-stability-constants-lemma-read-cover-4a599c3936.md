# Strict-Margin SCF Stability Constants Lemma

Status: conditional local stability theorem.

## Statement

Assume

```math
SCF_{base}(Q_r^\Phi(a,t))\le\varepsilon_m/2.
```

Then there are constants

```math
\theta\in(0,1),
\qquad
\delta_{ctr}>0,
```

such that whenever the material center `(a',t')` satisfies

```math
d_\Phi((a',t'),(a,t))<\delta_{ctr},
```

there is a same-fluid cylinder of radius

```math
r'=\theta r
```

with

```math
SCF_{base}(Q_{r'}^\Phi(a',t'))\le\varepsilon_m.
```

## Proof

Choose `theta` so that the shrunken cylinder has positive separation from the boundary of `Q_r^Phi(a,t)`. Bounded chart distortion gives `delta_ctr` small enough that

```math
Q_{\theta r}^\Phi(a',t')\subset Q_r^\Phi(a,t)
```

for all centers in the `delta_ctr` neighborhood.

Write `SCF_base` as the sum of three components:

```math
S_u+S_p+S_\nabla.
```

The original cylinder has total margin `epsilon_m/2`. Allocate `epsilon_m/6` to each component. Since the component densities are locally integrable, absolute continuity of the integral gives a smaller `delta_ctr` such that each component changes by at most its allocated margin under the domain perturbation.

The velocity and pressure normalizers are defined by the fixed CKN-compatible convention. Under radius shrink and small center perturbation, the normalized averages/minimizers vary continuously in the corresponding local `L^3` and `L^{3/2}` topologies. This contributes another allocated margin controlled by the same local integrability moduli.

Thus

```math
SCF_{base}(Q_{\theta r}^\Phi(a',t'))
\le
SCF_{base}(Q_r^\Phi(a,t))+\varepsilon_m/2
\le
\varepsilon_m.
```

## Output

The set of `epsilon_m/2`-good material centers is open after shrinking radii, and it supplies the finite positive-scale open cover used by `READ.COVER`.