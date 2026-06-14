# Source-Packet Nonclosure And Exact Primitive Boundary

## Status

Failed as an unconditional proof from the current canonical surfaces.

The existing repo surfaces prove the implication chain after the source packets are supplied. The seven source packets listed below remain independent mathematical inputs under the current hypotheses.

## 1. Parent stopped-cell center lower density

This cannot be derived from positivity and parent average alone. On a parent cell `Q=[0,1]` with Lebesgue measure, take the center `a_Q=1/2` and a nonnegative density `delta` with positive integral but `delta(1/2)=0`. Then

```math
\bar\delta(Q)>0,
\qquad
\delta(a_Q)=0.
```

So an estimate of the form

```math
\delta(a_Q)\ge c\bar\delta(Q)
```

requires an additional theorem: either choose the center by a density-maximizing or density-regular rule, or prove a lower-oscillation theorem that forbids center collapse.

## 2. Parent-cell Holder control

An `L^1` diagonal density can oscillate arbitrarily inside a parent cell. Holder control requires a separate regularity theorem for the diagonal density. The needed packet is genuinely:

```math
[\delta_{j,Q}]_{C^\alpha(Q)}\operatorname{diam}(Q)^\alpha
\le \gamma\bar\delta_j(Q).
```

Current surfaces use this as a sufficient input; they do not derive it.

## 3. Finite shell comparability

Finite shell geometry alone gives shell sizes `s_{r}^{shell}`. It does not force the active directional measure to distribute according to those sizes. A measure may concentrate entirely inside a selected shell or entirely outside it. Therefore

```math
\int |\delta_{J,r}^{shell}(a)-s_r^{shell}|d\mu(a)\to0
```

requires an equidistribution, bump-comparability, or shell-density theorem on the chosen core-cap family.

## 4. Regular-window C2 collar control

The finite-frame derivative-continuity proof needs control of `D_a^2X_t`. A `C^1` flow or a bound on `\nabla v_J` controls `D_aX_t`, while the difference

```math
D_aX_t(a+s\omega)-D_aX_t(a)
```

is controlled by `D_a^2X_t`. The canonical sufficient estimate is

```math
\|D_a^2X_t\|_{op}\le H_*\tau e^{2M_*\tau},
```

which follows from a regular-window `\nabla^2v_J` bound. That bound is a source estimate.

## 5. Exact-potential comparison

The tensor comparison

```math
\left\|
W_J^{coc}\Pi_{N_a}(W_J^{coc})^*
-C_J^{CG}
\right\|_{op}
\le
\varepsilon_J
```

is not a definition unless `C_J^{CG}` is defined to be the left-hand tensor.
Two positive semidefinite tensors can be arbitrarily far apart unless a
comparison theorem links the cocycle tensor and the Cauchy--Green reference
tensor on the same frame. This remains a source packet.

## 6. Reference CG simple-top gap

The observable-surrogate projector has unit spectral gap when it is rank one. The reference CG tensor used in the `D.7mq` Davis--Kahan step can have a repeated top eigenvalue. For example, a symmetric tensor with eigenvalues `(1,1,0)` has zero simple-top gap. Thus

```math
g_J^{CG}\ge g_*>0
```

requires a selector-good spectral separation theorem on the chosen strip.

## 7. Same-strip synchronization

All packets must live on the same selector-good family, core-cap family, entrance-sector refinement, time strip, and finite frame. Separate proofs on different strips or frames do not compose. A common-strip selection theorem is required.

## Exact remaining primitive list

To turn the branch-local chain into a proved theorem, add these source theorems:

```text
center-selection or center-lower-density theorem,
diagonal-density Holder theorem,
shell equidistribution / finite shell-comparability theorem,
regular-window C2 collar theorem or equivalent derivative-continuity modulus,
exact-potential tensor comparison theorem,
reference CG simple-top spectral-gap theorem,
common-strip synchronization theorem.
```

Once those are supplied, the existing chain fires:

```text
QSP.11r + shell comparability + C2 transport
=> PTC-Shape + PTC-Lin
=> D.7mq
=> D.7mr2
=> RPC.3
=> SG.4B
```
