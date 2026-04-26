# MPP Retained-Window Native Forcing Theorem Program

## Status

Theorem-facing retained-smoothness branch note.

Role: promote hypothesis `H1` of the installed retained-branch `ACT.KX`
conditional completion packet into a theorem-grade input.

This note is not the finite-energy-native receiver route. The averaged
replacement route is recorded in
[mpp-averaged-act-kx-scale-critical-forcing-packet-note.md](/Users/thomasbirnie/Workspace/ToE/Research-Consolidation/problems/navier-stokes/theorem-construction/mpp-averaged-act-kx-scale-critical-forcing-packet-note.md).

This note does not replace
`mpp-act-kx-conditional-route-completion-packet.md`. It isolates the next
analytic wall beneath that packet.

## Branch Position

The installed retained packet is a conditional terminal closure contract. On
the retained-smoothness branch, the frontier is theorem-grade promotion of its
hypotheses, with priority order

```math
RSCB.NKF
+
DTC\text{-to-TowerBound}
+
END.Exh
+
END.Cross
+
END.Pack
+
END.Field.
```

The source side remains downstream:

```math
LCI.A
\Longrightarrow
FCC.C1+FSCR.C+FPCR.C
\Longrightarrow
FCI.5f.
```

It is not the first theorem wall on this retained branch anymore.

For the finite-energy-native branch, this route is the wrong object. The new
receiver target is not

```math
NKF.Native,
```

but

```math
SCF_{\mathrm{avg}}
\Longrightarrow
AACT.KX
\Longrightarrow
DTC.A_{\mathrm{avg}}.
```

The old pointwise `DTC.A` may be recovered only through a later `DTC.Read`
bridge.

## Audit Answer

`RSCB.NKF` is a retained local smoothness / center-ball forcing certificate.
It proves point-center forcing only after local smooth center-ball norms are
available. It must not be cited as a theorem from finite energy, bounded pack
gauge, same-fluid geometry, and pressure Poisson structure alone.

The point-recovery step

```math
NKF.Moll\Longrightarrow NKF.Point\Longrightarrow NKF.Native
```

is exactly where retained smoothness is spent. If retained smoothness is not an
allowed input, this branch is unavailable and the receiver side must use the
averaged scale-critical packet route.

## Governing Target

The target of this note is the retained-window native forcing theorem

```math
RSCB.NKF.
```

Its exact route job is:

```math
RSCB.NKF
\Longrightarrow
NKF.Moll+NKF.Point
\Longrightarrow
NKF.Native
\Longrightarrow
ACT.KX.
```

Equivalently, the theorem to install is:

```math
\text{retained same-fluid center-ball windows}
+
\text{local smooth forcing recovery}
+
\text{point recovery from mollified ledgers}
\Longrightarrow
NKF.Native.
```

This is the deepest analytic frontier on the receiver side because finite
energy and the pressure Poisson law alone do not control point pressure
derivatives at the retained centers.

## Route Statement

Fix a retained window family

```math
I_a=[s_a,s_{a+1}],
\qquad
c_j(t)=\Phi(a^j,t),
```

with admissible retained center balls

```math
B(c_j(t),2r_a)\subset Q_t^{rec,+}.
```

Assume the retained same-fluid balls carry the local smooth norms needed by the
installed affine packet:

```math
\sum_{q\le m+2}
\|U_q\|_{L^\infty_t C_x^2(B(c_j(t),2r_a))}
+
\|p\|_{L^1_t C_x^{m+1,\alpha}(B(c_j(t),2r_a))}
<\infty.
```

Then the program target is to prove

```math
RSCB.NKF:
\qquad
\mathcal P_{\le m}^{ctr,nat}\in L^1(I),
```

for the native center forcing packet, and therefore

```math
NKF.Native:
\qquad
K0.Core+E1.Aff+Kmid.Core
\Longrightarrow
\mathcal K_{\le m}^{ctr}\in L^1(I),
```

inside the installed `ACT.KX` route.

## Subtheorem Stack

The retained-window theorem must be installed through the following named
subtheorems.

## Theorem-Grade Promotion Statement

**Theorem 1 (`RSCB.NKF` retained-window native forcing).** Assume a finite
retained same-fluid center-ball family on `I`,

```math
I=\bigcup_a I_a,
\qquad
I_a=[s_a,s_{a+1}],
\qquad
c_j(t)=\Phi(a^j,t),
```

with admissible balls

```math
B(c_j(t),2r_a)\subset Q_t^{rec,+}.
```

Assume the retained local smoothness bounds

```math
\sum_j\sum_{q\le m+2}
\|U_q\|_{L^\infty_t C_x^2(B(c_j(t),2r_a))}
+
\sum_j
\|p\|_{L^1_t C_x^{m+1,\alpha}(B(c_j(t),2r_a))}
<\infty,
```

the bounded affine-frame/pack gauge, the finite required parameter set, the
local Poisson split, and the finite-energy pressure far-tail bound. Then:

```math
RSCB.NKF
\Longrightarrow
ACT.X\text{-}Scale
+
NKF.Moll
+
NKF.Point
+
NKF.Native
+
RWS.C_{scale}.
```

Consequently the installed conditional packet may spend `RSCB.NKF` as a
theorem-grade receiver input:

```math
RSCB.NKF
\Longrightarrow
NKF.Native
\Longrightarrow
ACT.KX.
```

This theorem does not prove global retained-window existence. It proves that
once the retained-window admission and local smooth center-ball regularity are
available, the native forcing, scale seed, point recovery, and fixed-readout
compatibility inputs used by the `ACT.KX` packet are theorem-grade consequences.

### Proof Block A: `ACT.X-Scale`

At a retained restart time `s_a`, reset the affine packet at the current
transported center and affine frame. For every retained rung and center, the
affine remainder has the form

```math
R_{q,j}(y,s_a)
=
\mathcal C_{G_j(s_a)}^{-1}
\big(
U_q(c_j(s_a)+G_j(s_a)y,s_a)-U_q(c_j(s_a),s_a)
\big),
```

with the first velocity rung using the installed affine-defect convention of the
`ACT.KX` packet. Retained smoothness gives continuity of the finite family of
fields and derivatives used by `X_{exc}` at each retained center. Therefore

```math
X_{exc}(s_a;R)\to0
\qquad(R\downarrow0)
```

for every shrink-admissible excess slot. Since the center set, rung set, and
derivative set are finite, one admissible radius `R_a` can be chosen so that

```math
B(c_j(s_a),2R_a)\subset Q_{s_a}^{rec,+},
\qquad
X_{exc}(s_a;R_a)\le\eta_X
```

for every retained packet on that restart. This proves `ACT.X-Scale`.

### Proof Block B: `NKF.Moll`

Let

```math
\varphi_{j,r}(x,t)=r^{-3}\varphi((x-c_j(t))/r),
\qquad
0<r<r_a,
```

with support inside the retained ball. Define mollified center forcing
functionals by testing the pressure and viscous pieces of the center equation
against `\varphi_{j,r}` and the corresponding finite tower derivatives.

For the pressure part, the local Poisson split gives the retained local
response plus the finite-energy far tail. On the retained ball,

```math
|\nabla^{q+1}p|*\varphi_{j,r}
\le
C
\|p(\cdot,t)\|_{C^{m+1}(B(c_j(t),2r_a))}
```

for `0\le q\le m`. The harmonic/far-tail contribution is bounded by the energy
tail already licensed in the conditional packet. For the viscous part,
integration by parts against the transported mollifier and retained local
smoothness give

```math
|\Delta U_q|*\varphi_{j,r}
\le
C_q
\|u(\cdot,t)\|_{C^{m+2}(B(c_j(t),2r_a))}.
```

The finite sum over centers and rungs is therefore dominated by an `L^1_t`
function supplied by the retained smoothness norms and the energy far tail.
Thus

```math
\mathcal K_{\le m}^{ctr,[r]}\in L^1(I_a)
```

uniformly for the retained mollifier family. This proves `NKF.Moll`.

### Proof Block C: `NKF.Point`

For each retained center, each finite rung, and each retained forcing component,
the local smoothness assumptions make the tested field continuous in space on
`B(c_j(t),2r_a)` for almost every `t`, with an `L^1_t` dominating norm. Hence
standard approximate-identity convergence gives

```math
K_{q,j}^{[r]}(t)\to K_q(c_j(t),t)
```

for almost every `t`, and the same retained smoothness bounds dominate the
convergence in time. Dominated convergence yields

```math
\mathcal K_{\le m}^{ctr,[r]}
\to
\mathcal K_{\le m}^{ctr}
\qquad\text{in }L^1(I_a).
```

This proves `NKF.Point`.

### Proof Block D: `NKF.Native`

The native pressure normal form defines `p_j^{aff}` by matching the finite
center-cell pressure functionals of the affine and affine-linear source modes.
Therefore, by linearity of the localized Poisson response,

```math
\Lambda_{r,j}\pi_j^{loc}
=
\Lambda_{r,j}(-\Delta)^{-1}\partial_a\partial_b(\eta_j w_j\otimes w_j)
+
\Lambda_{r,j}\Pi_j^{ann}.
```

The affine and affine-linear pressure modes are absent from the residual
center-cell functionals by construction. Combining `NKF.Moll` with
`NKF.Point`, the native point forcing ledger is in `L^1(I_a)`. The bounded
affine-frame conversion then gives

```math
K0.Core+E1.Aff+Kmid.Core
\le
C_\sharp \mathcal P_{\le m}^{ctr,nat},
```

and therefore

```math
\mathcal K_{\le m}^{ctr}\in L^1(I_a).
```

This is exactly the pre-`LCI.A` input to the core line of `ACT.KX`. It proves
`NKF.Native`.

### Proof Block E: `RWS.C_scale`

The finite same-fluid dynamic cover supplied by retained-window compactness and
the bounded pack gauge has bounded overlap:

```math
B(c_j(t),R_{fix})
\subset
\bigcup_{b=1}^{B}B(c_{j_b}(t),R_b).
```

Each small restarted packet supplied by `ACT.X-Scale` and propagated by
`ACT.KX` gives

```math
X_{exc,b}\in L^\infty(I_a),
\qquad
N_b\in L^1(I_a).
```

Finite overlap transfers the local Morrey, affine-defect, pressure-cell, and
top-viscous readouts to the fixed readout ball. This proves `RWS.C_scale`. It is
a finite-cover readout transfer theorem; it is not a fixed-radius smallness
claim.

### Theorem 1 Conclusion

The five proof blocks give

```math
RSCB.NKF
\Longrightarrow
ACT.X\text{-}Scale
+
NKF.Moll
+
NKF.Point
+
NKF.Native
+
RWS.C_{scale}.
```

Together with the already-installed `ACT.KX` conditional packet, this promotes
`H1` from a route assumption into a theorem-grade retained-window receiver
input, conditional only on retained-window admission and local smooth
center-ball regularity.

### 1. `ACT.X-Scale`

Prove the restart seed theorem:

```math
\forall s_a\in I,\ \forall \eta_X>0,\ \exists R_a>0
\quad\text{such that}\quad
X_{exc}(s_a;R_a)\le\eta_X
```

with admissibility

```math
B(c_j(s_a),2R_a)\subset Q_{s_a}^{rec,+}.
```

This uses retained smooth center-ball regularity. It is the exact seed consumed
by `ACT.KX`; it is not a fixed-radius smallness theorem.

### 2. `ACT.KX` budget realization

On each retained interval, the joint excess/core scheduler must be licensed
with the installed budget:

```math
dX+c_\nu N
\le
(L_0+C A_{core})X+C_X X^{1/2}N+F_0,
```

```math
dA_{core}\le \mathcal K_{\le m}^{ctr}+\mathcal T_{tri}(A_{core}),
```

```math
\mathcal K_{\le m}^{ctr}
\le
C(X^{1/2}N^{1/2}+X)+F_K.
```

The retained scheduler must realize the absorption budget on every retained
window. This is the budget side of `RSCB.NKF`.

### 3. `NKF.Moll`

Construct transported mollifiers

```math
\varphi_{j,r}(x,t)=r^{-3}\varphi((x-c_j(t))/r)
```

and prove the mollified forcing ledger

```math
\mathcal K_{\le m}^{ctr,[r]}\in L^1(I_a)
```

from:

- local Poisson response on retained affine balls,
- finite-energy far-tail pressure control,
- viscous integration by parts against the transported mollifier.

This is the non-pointwise forcing theorem.

### 4. `NKF.Point`

Prove retained smooth point recovery:

```math
\mathcal K_{\le m}^{ctr,[r]}
\to
\mathcal K_{\le m}^{ctr}
\quad\text{in }L^1(I_a)
```

as `r\downarrow0`.

This is where retained smoothness does real work. It is the step that licenses
native center forcing rather than merely mollified forcing.

### 5. `RWS.C_scale`

Prove the fixed-readout compatibility theorem:

```math
RWS.C_{scale}:
\quad
\text{finite same-fluid dynamic small-radius cover}
\Longrightarrow
\text{fixed-radius readout compatibility}.
```

This theorem transfers the small restarted packets to the fixed-radius readout
surface. It does not assert fixed-radius smallness.

## Non-Spending Guardrail

`RSCB.NKF` is a pre-`LCI.A` receiver theorem.

It must not spend

```text
LCI.A
CSP.A
OFP.A
Field
End_NS
FPCR.C
FSCR.C
FCC.C1
FCI.5f
```

Its allowed inputs are only retained-window geometry, local smoothness on the
retained same-fluid center balls, transported mollifier identities, local
pressure response, finite-energy far tails, the `ACT.X-Scale` restart seed, and
the `ACT.KX` scheduler budgets.

## Handoff

Once `RSCB.NKF` is installed as a theorem-grade input, the receiver side runs

```math
RSCB.NKF
\Longrightarrow
NKF.Native
\Longrightarrow
ACT.KX
\Longrightarrow
ACT.A
\Longrightarrow
RCF.A
\Longrightarrow
LCI.A.
```

At that point the source side remains the downstream channel

```math
LCI.A
\Longrightarrow
FCI.5f,
```

while the endpoint side remains the separate tower/certificate stack

```math
DTC\text{-to-TowerBound}
+
END.Exh
+
END.Cross
+
END.Pack
+
END.Field
\Longrightarrow
End_{NS}.
```

## Adjacent Frontier After `RSCB.NKF`

After this theorem, the next two theorem-grade promotion targets are:

1. `DTC-to-TowerBound`: finite transported-center cover of `Q_t`, depth at least
   `N+2`, and local pressure/viscous readout for `K_k`.
2. The endpoint certificate theorem:

```math
END.Exh+END.Cross+END.Pack+END.Field+END.TowerBound
\Longrightarrow
End_{NS}.
```

Those are secondary to `RSCB.NKF`, not replacements for it.

## Net Frontier Statement

```math
\boxed{
\text{Retained branch: theorem-grade installation of }RSCB.NKF.
\quad
\text{Finite-energy-native branch: }SCF_{\mathrm{base}}+ATD_m\to SCF_{\mathrm{avg}}^m\to AACT.KX\to DTC.A_{\mathrm{avg}}.
}
```
