# SCF Strict-Margin Stability Lemma

Status: conditional local stability theorem.

## Statement

Assume a bounded-distortion same-fluid chart and the fixed CKN-compatible `SCF_base` normalization. If

```math
SCF_{base}(Q_r^\Phi(a,t))\le \varepsilon_m/2,
```

then, after possibly shrinking to a radius `r' in (0,r)`, there is a material neighborhood `U` of `(a,t)` such that every center `(a',t') in U` has an admissible same-fluid cylinder with

```math
SCF_{base}(Q_{r'}^\Phi(a',t'))\le \varepsilon_m.
```

## Proof

Choose `r'<r` so that the shrunken cylinder has positive separation from the boundary of the original admissible cylinder. Bounded same-fluid distortion gives a uniform inclusion: for all centers `(a',t')` sufficiently close to `(a,t)`,

```math
Q_{r'}^\Phi(a',t')\subset Q_r^\Phi(a,t).
```

The three components of `SCF_base` are local integrals of

```math
|u-u^{norm}|^3,
\qquad
|p-p^{norm}|^{3/2},
\qquad
|\nabla u|^2.
```

These functions are locally integrable in the bounded chart. Absolute continuity of local integrals gives stability of the integral values under small domain perturbations. The fixed normalization convention gives stability of the chosen velocity and pressure normalizers under small center and radius changes, with constants controlled by the same bounded frame coefficients.

The original cylinder has margin `epsilon_m/2`. The perturbation and shrink can be chosen so that the change in each component of `SCF_base` is at most its allocated share of `epsilon_m/2`. Therefore the nearby cylinders satisfy

```math
SCF_{base}\le \varepsilon_m.
```

## Role in READ.COVER

This lemma turns pointwise strict-margin goodness into an open material cover. Combined with compactness, it gives a finite positive-scale SCF-good cover from

```math
\mathcal B_{\varepsilon_m/2}^{\Phi}=\varnothing.
```

## Boundary

The strict-margin input comes from `End_NS_avg` plus `CAVG.J_{epsilon_m/2}`. This lemma supplies the open-cover stability step used after that endpoint conclusion.