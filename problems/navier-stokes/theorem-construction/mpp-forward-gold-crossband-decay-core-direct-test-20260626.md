---
theorem_id: forward-gold-crossband-decay-core-direct-test-20260626
status: direct-test-installed-crossband-decay-reduces-to-epsilon-reserve
created: 2026-06-26
problem: navier-stokes
route: forward-gold
logical_landing_node: GlobalSamePacketFullClockFromOriginalData.A
attacks_hinge: GlobalSamePacketFullCrossBandTransferDecay.A.CoreSubprimitive
source_surfaces:
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-high-ratio-goodlambda-half-barrier-20260626.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-strict-goodlambda-requires-epsilon-reserve-20260626.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-superheat-ratio-tail-goodlambda-test-20260626.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-superheat-ratio-tail-frequency-transfer-test-20260626.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-high-ratio-one-way-transfer-minimal-bad-tail-test-20260626.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-critical-half-tail-profile-liouville-boundary-20260626.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-localized-affine-global-matching-scaling-audit-20260626.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-betchov-strain-vorticity-net-vs-rectified-clock-test-20260625.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-shell-transfer-reservoir-identity-and-rectified-recirculation-test-20260625.md
---

# Cross-Band Decay Core Direct Test

This note attacks the core estimate behind:

```text
GlobalSamePacketFullCrossBandTransferDecay.A
```

The intended estimate is a strict good-lambda contraction for the high-ratio
tail of the original transported material history:

```math
N_{L+1}\le \theta N_L+B_L,
\qquad
\theta<{1\over2},
\qquad
\sum_{L\ge0}2^LB_L<\infty.
\tag{CBD.1}
```

The strict coefficient is the whole issue.  A coefficient equal to \(1/2\)
still permits the critical half-tail.

## 1. The critical model fixes the required slack

The installed half-barrier tail is:

```math
\nu_\ell={2^{-\ell}\over \ell+1},
\qquad
N_L=\sum_{\ell\ge L}\nu_\ell
\simeq {2^{-L}\over L+1}.
\tag{CBD.2}
```

Then:

```math
{N_{L+1}\over N_L}\to {1\over2},
\tag{CBD.3}
```

while:

```math
\sum_\ell\nu_\ell<\infty,
\qquad
\sum_\ell2^\ell\nu_\ell=\infty.
\tag{CBD.4}
```

So any direct cross-band theorem has to find a genuine epsilon of Navier-Stokes
structure.  It cannot merely show that the tail descends dyadically at the
natural half rate.

## 2. Heat damping gives no high-ratio slack

On a high-ratio band,

```math
d\mu_j(t)=2^{2j}e_j(t)\,dt,
\qquad
\rho_j(t)={\Theta_j^{mat}(t)\over2^{2j}}
\simeq 2^\ell.
\tag{CBD.5}
```

In material time \(d\tau=\Theta_j^{mat}(t)\,dt\), the heat coefficient is:

```math
{2^{2j}\over \Theta_j^{mat}}\simeq 2^{-\ell}.
\tag{CBD.6}
```

Thus on the branch \(\ell\to\infty\), viscosity becomes small in the
normalized material-time equation.  The heat kernel closes entrance, subheat,
and return/recirculation pieces, but it does not create a strict contraction
for one-way high-ratio transfer.  Replacing the source by the Duhamel term
returns the same first-ratio action:

```math
\sum_j\int_{\{\rho_j>\delta\}}\rho_j\,d\mu_j.
\tag{CBD.7}
```

## 3. Laminarity gives ordering, not the epsilon

The laminar ancestry reduction is valid and installed.  After paid nonlaminar
exits, the critical half-tail is carried by one same-material ancestry forest,
and one line has the deterministic multiplicity tax:

```math
\sum_{\gamma\subset\mathcal A(a)}a_\gamma
\le
C\,V_C(\mathcal A(a))+C\,V_F(\mathcal A(a))+R_{\rm legal}.
\tag{CBD.8}
```

This is structural.  To become a cross-band contraction, the global weighted
variation reserve must still be proved:

```math
\int (V_C+V_F+V_{\rm collar}+V_{\rm turnstile})\,d\mathcal R_{\rm ancestry}
<\infty.
\tag{CBD.9}
```

Without `(CBD.9)`, laminarity can organize the critical half-tail but cannot
force \(\theta<1/2\).  The half-tail can sit on a one-child laminar chain
with dyadic ratio \(N_{L+1}/N_L\to1/2\).

## 4. Signed same-fluid identities attach the transfer but do not rectify it

Betchov and shell-transfer identities give exact same-fluid signed partners:

```math
\int \operatorname{tr}(S^3)
=
-{3\over4}\int \omega\cdot S\omega,
\tag{CBD.10}
```

and

```math
T_{j\leftarrow\ell}^{(k)}
+
T_{\ell\leftarrow j}^{(k)}
=0.
\tag{CBD.11}
```

These identities prove that the high-ratio action is not detached from the
fluid.  They do not control the positive tail after sign is discarded.  The
signed-to-rectified conversion requires temporal variation of the same service:

```math
\int_I[a(t)]_+\,dt
\le
\left[\int_Ia(t)\,dt\right]_+
+
|I|\,{\rm Var}_I(a).
\tag{CBD.12}
```

For the Betchov or shell service, this variation is the pressure-Hessian,
quartic strain-vorticity, viscous tower, coefficient, and collar action already
identified as the full same-material action.  Therefore the signed identities
do not supply the strict cross-band coefficient by themselves.

## 5. Nonlocal matching and point-multipole coercivity do not supply the root weight

The localized affine global-matching audit shows that the periodic
divergence-free collar, pressure force work, viscous work, convective work, raw
energy, and raw dissipation all remain radius-weighted:

```math
\text{raw cost on one critical packet}\lesssim r,
\qquad
\text{normalized material action}\simeq1.
\tag{CBD.13}
```

So a terminal chain can have:

```math
\sum_k r_k<\infty,
\qquad
\sum_k1=\infty.
\tag{CBD.14}
```

The Stokes multipole coercivity theorem excludes higher point-supported
projected spatial residues under a critical local-energy hypothesis.  The
current enemy is different: it is a material-time high-ratio affine/profile
action with vanishing raw heat mass.  It is not killed by point-multipole
coercivity.

## 6. Direct verdict

The direct cross-band decay proof is not installed.

The available mechanisms give:

```math
N_{L+1}\lesssim {1\over2}N_L+B_L
\tag{CBD.15}
```

at the sharp critical scale, with \(B_L\) containing only entrance, legal,
subheat, nonlaminar, and recirculation pieces already known to be summable.
They do not produce the strict margin:

```math
N_{L+1}\le \theta N_L+B_L,
\qquad
\theta<{1\over2}.
\tag{CBD.16}
```

To get `(CBD.16)`, one must add exactly one of the already identified epsilon
reserves:

```math
\sum_\ell2^{(1+\varepsilon)\ell}\nu_\ell<\infty,
\tag{CBD.17}
```

or

```math
\sum_j\int_{\{\rho_j>\delta\}}\rho_j^2\,d\mu_j<\infty,
\tag{CBD.18}
```

or a bounded-below same-material storage whose drop pays the first-ratio
action directly.

Thus:

```text
GlobalSamePacketFullCrossBandTransferDecay.A.CoreSubprimitive
```

is not a smaller installed theorem.  It is the good-lambda expression of the
same root-action problem.

The live Gold edge remains:

```text
RootPositiveFluxReserveCoercivity.A
```

or equivalently the first-ratio action estimate

```math
\sum_{\ell\ge0}2^\ell\nu_\ell<\infty.
\tag{CBD.19}
```
