# MPP Matched Field Finite-Difference Bound For H^{1/2}

## Status

Conditional Field-readout bridge. The readout implication is proved from the downstream `Field.TTU` package. Upstream production of `Field.TTU` from original data still runs through `GoodScale.TTU`.

## Statement

Let `v=\chi_a^{\mathcal W}u` be the same-witness localized velocity packet. Let `r_J\simeq 2^{-J}`. Assume the pointwise Field row is instantiated through

```math
READ.COVER+ATD_m^\varepsilon\Longrightarrow Field.
```

Assume the cover has finite overlap and positive same-fluid radius `r_*>0`, and that `ATD_m^\varepsilon` gives the velocity-gradient tower rung on each cover cylinder. Then, for all matched scales `r_J\le c r_*`,

```math
r_J^{-1}\fint_{|h|\simeq r_J}
\|v(\cdot+h)-v(\cdot)\|_{L^2}^2\,dh
\le
C\,\mathfrak C_{N(J),r_J,Q}(\mathcal W).
\tag{MFD.1}
```

Consequently, by `FieldCoherenceControlsCriticalShell.A`,

```math
2^J\|P_Jv\|_2^2
\le
C\,\mathfrak C_{N(J),r_J,Q}(\mathcal W).
\tag{MFD.2}
```

## Proof

The downstream Field chain supplies a finite positive-scale same-fluid cover:

```math
READ.COVER:
Q^\Phi([t_0,T_*),A_\sharp)
\subset
\bigcup_{i=1}^{M}Q_{r_i}^{\Phi}(a_i,t_i),
\qquad
r_*:=\min_i r_i>0.
```

On each cover element, `ATD_m^\varepsilon` supplies finite-depth tower control. In particular, the velocity-gradient rung is controlled by the Field/tower modulus.

For `|h|\simeq r_J\le c r_*`, same-fluid geometry and Pack-controlled overlap keep the segment from `x` to `x+h` inside a bounded enlargement of the same cover family. Hence

```math
v(x+h)-v(x)
=
\int_0^1 h\cdot\nabla v(x+\theta h)\,d\theta.
```

By Cauchy--Schwarz and finite overlap,

```math
\|v(\cdot+h)-v(\cdot)\|_2^2
\le
C|h|^2\|\nabla v\|_{L^2(\operatorname{Cov}_{r_*})}^2.
```

Averaging over `|h|\simeq r_J` and multiplying by `r_J^{-1}` gives

```math
r_J^{-1}\fint_{|h|\simeq r_J}
\|v(\cdot+h)-v(\cdot)\|_2^2\,dh
\le
C r_J\|\nabla v\|_{L^2(\operatorname{Cov}_{r_*})}^2.
```

The Field/tower modulus at the matched depth bounds the scale-normalized gradient packet on the cover, so the right side is bounded by

```math
C\,\mathfrak C_{N(J),r_J,Q}(\mathcal W).
```

This proves `(MFD.1)`. The shell estimate `(MFD.2)` follows from `FieldCoherenceControlsCriticalShell.A`.

## CM consequence

A same-ledger pure `H^{1/2}` oscillation branch under retained Pack and Part has only one remaining service to test: Field coherence at the matched scale. If `Field` is instantiated through `READ.COVER+ATD_m^\varepsilon`, the matched finite-difference bound controls the selected dyadic shell. Persistent terminal shell escape therefore selects `\neg Field_{N,r,Q}`.

## Boundary

This note certifies the Field-readout implication. The upstream production theorem remains `GoodScale.TTU`: every active terminal material point must have a positive SCF-good cylinder. Once `GoodScale.TTU` supplies `READ.COVER`, this note supplies the matched finite-difference bridge needed by the `H^{1/2}` class-exit route.