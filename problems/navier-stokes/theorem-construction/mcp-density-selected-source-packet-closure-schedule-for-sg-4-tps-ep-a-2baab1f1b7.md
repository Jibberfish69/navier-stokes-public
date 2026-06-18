# Density-Selected Source-Packet Closure Schedule For SG.4/TPS

## Status

Conditional closure schedule. Several source packets close after changing the selection rules. The remaining work is to prove that the selected objects retain enough mass and stay synchronized on one strip.

## 1. Density-selected parent center

Let `delta_{j,Q}` be a nonnegative integrable diagonal density on a parent stopped cell `Q` with positive average

```math
\bar\delta_j(Q)=\frac{1}{\mu_j(Q)}\int_Q\delta_{j,Q}\,d\mu_j.
```

The set

```math
E_Q:=\{a\in Q:\delta_{j,Q}(a)\ge \bar\delta_j(Q)\}
```

has positive measure. Choose `a_Q` as a Lebesgue point in `E_Q`. Then

```math
\delta_{j,Q}(a_Q)\ge \bar\delta_j(Q).
```

So the center lower-density packet closes with `c=1` under the density-selected center rule.

## 2. Diagonal-density Holder / oscillation

If the parent density obeys

```math
[\delta_{j,Q}]_{C^\alpha(Q)}\operatorname{diam}(Q)^\alpha
\le \gamma\bar\delta_j(Q),
```

then the parent-cell Holder packet is the next packet to record.

Equivalently, if parent cells are stopped or refined until

```math
\operatorname{diam}(Q)
\le
\left(\frac{\gamma\bar\delta_j(Q)}{[\delta_{j,Q}]_{C^\alpha(Q)}}\right)^{1/\alpha},
```

when `[\delta_{j,Q}]_{C^\alpha(Q)}>0`, then

```math
[\delta_{j,Q}]_{C^\alpha(Q)}\operatorname{diam}(Q)^\alpha
\le \gamma\bar\delta_j(Q).
```

If `[\delta_{j,Q}]_{C^\alpha(Q)}=0`, the left side is already zero. Thus this
packet closes under a density-adapted stopping rule, provided the density has
finite local Holder seminorm and the refinement keeps the active family usable.

## 3. Finite shell comparability

For a finite shell family, choose inner and outer shell boundaries so the active averaged directional measure gives zero mass to those boundaries. Let shell thickness tend to zero. Then the spherical shell mass tends to zero and the active averaged shell mass tends to zero. Hence

```math
\int_{G_J}|\delta_{J,r}^{\pm}(a)-s_{\pm,r}^{shell}|\,d\mu_j(a)
\le
\int_{G_J}\delta_{J,r}^{\pm}(a)d\mu_j(a)+s_{\pm,r}^{shell}\mu_j(G_J)
\to0.
```

This closes the shell-leakage form used by the downstream finite-shell comparability packet, under regular-shell boundary control.

## 4. Regular-window C2 collar control

Assume on the selected frame collars over `I=[t_0,t_1]`

```math
\sup_I\|\nabla v_J\|_{L^\infty}\le M,
\qquad
\sup_I\|\nabla^2v_J\|_{L^\infty}\le H.
```

The flow variational equations give

```math
\|D_aX_t\|_{op}\le e^{M\tau},
\qquad
\|D_a^2X_t\|_{op}\le H\tau e^{2M\tau},
\qquad \tau=|I|.
```

For segment scale `h_J`,

```math
\rho_{J,lin}\le h_JH\tau e^{2M\tau}.
```

Choose the frame scale schedule so this tends to zero. Then segment-collar derivative continuity and finite-frame `PTC-Lin` follow.

## 5. Exact-potential tensor comparison

If the CG reference tensor on the selected finite-frame branch is defined by

```math
\mathcal C_J^{CG}:=W_J^{coc}\Pi_{N_a}(W_J^{coc})^* ,
```

the comparison is exact. If the branch keeps an independently defined CG tensor, the source theorem must instead prove a bound

```math
\left\|
W_J^{coc}\Pi_{N_a}(W_J^{coc})^*
-\mathcal C_J^{CG}
\right\|_{op}
\le
\varepsilon_J
```

with an explicit acceptable error scale `\varepsilon_J`.

## 6. Reference CG simple-top gap

The restricted CG gap note proves persistence, not creation. If the entrance tensor has gap

```math
g_0=\lambda_1(\mathcal C_J^N(t_0,a))-\lambda_2(\mathcal C_J^N(t_0,a))>0
```

and the persistence budget satisfies

```math
E_{J,t_0}^{CG}\le g_0/4,
```

then the strip carries

```math
g_J^{CG}(t,a)
\ge g_0/2.
```

Thus the strip gap closes under an entrance simple-top selection plus the CG persistence budget.

## 7. Same-strip synchronization

Define the branch strip as the common intersection of the good sets for:

```text
density-selected centers,
Holder-controlled parent cells,
regular shell boundaries,
C2 frame collars,
tensor comparison,
CG entrance gap and persistence,
selector-strain compatibility.
```

The final handoff fires when this common intersection retains the required selector-good mass and carries the same core-cap family, entrance-sector refinement, finite frame, and CG reference object.

## Final branch handoff

Under the selection and retained-mass conditions above,

```text
QSP.11r + shell comparability + C2 transport
=> PTC-Shape + PTC-Lin
=> D.7mq

D.7mq + SSC-EP.A
=> D.7mr2
=> RPC.3
=> SG.4B
```

## Remaining irreducible checks

```text
retained mass after density/cell/shell/strip selection,
Holder regularity of the diagonal density or admissibility of density-adapted stopping,
active shell-boundary regularity,
compatibility of h_J with the finite-frame geometry,
choice of CG reference object,
positive-mass entrance CG simple-top selection,
common-strip synchronization.
```
