# MPP Retained-Window Native Forcing Theorem

## Status

Installed theorem-facing retained-smoothness branch theorem.

Role: promote hypothesis `H1` of the installed retained-branch `ACT.KX`
conditional completion packet into a theorem-grade input.

This note is not the finite-energy-native receiver route. The averaged
replacement route is recorded in
[mpp-averaged-act-kx-scale-critical-forcing-packet-note.md](/Users/thomasbirnie/Workspace/ToE/Research-Consolidation/problems/navier-stokes/theorem-construction/mpp-averaged-act-kx-scale-critical-forcing-packet-note.md).

This note does not replace
`mpp-act-kx-conditional-route-completion-packet.md`. It proves the retained
smooth center-ball input consumed by that packet.

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
SCF_{\mathrm{base}}+SGC.A_{\mathrm{a.e.}}+ATD_m^\varepsilon
\Longrightarrow
SCF_{\mathrm{avg}}^m
\Longrightarrow
AACT.KX\text{ off }\mathcal B_{\varepsilon_m}^{\Phi}
\Longrightarrow
DTC.A_{\mathrm{avg}}.
```

The old pointwise `DTC.A` may be recovered only through a later `DTC.Read`
bridge.

## Audit Answer

`RSCB.NKF` is a retained local smoothness / center-ball forcing certificate.
It proves point-center forcing only after local smooth center-ball norms are
available. It must not be cited as a theorem from finite energy, bounded pack
gauge, same-fluid geometry, and pressure Poisson structure alone. The obstruction
is proved in
[mpp-finite-energy-point-pressure-derivative-obstruction-20260606.md](/Users/thomasbirnie/Workspace/ToE/Research-Consolidation/problems/navier-stokes/theorem-construction/mpp-finite-energy-point-pressure-derivative-obstruction-20260606.md).

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
derivatives at the retained centers; see
[mpp-finite-energy-point-pressure-derivative-obstruction-20260606.md](/Users/thomasbirnie/Workspace/ToE/Research-Consolidation/problems/navier-stokes/theorem-construction/mpp-finite-energy-point-pressure-derivative-obstruction-20260606.md).

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

Then the theorem target is to prove

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
RSCB.NKF:
\qquad
ACT.X\text{-}Scale
+
NKF.Moll
+
NKF.Point
+
NKF.Native
+
RWS.C_{scale}^{geom}.
```

Here `RWS.C_scale^{geom}` is the geometric finite-cover and bounded-overlap
half of `RWS.C_scale`: it supplies the fixed-readout cover on which the
post-`ACT.KX` packet bounds are transferred. The analytic readout half is the
conditional implication

```math
RWS.C_{scale}^{geom}
+
\{X_{exc,b}\in L^\infty,\ N_b\in L^1\}_{b=1}^{B}
\Longrightarrow
RWS.C_{scale}.
```

Consequently the installed conditional packet may spend `RSCB.NKF` as a
theorem-grade receiver input without spending `ACT.KX`, `LCI.A`, or endpoint
closure:

```math
RSCB.NKF
\Longrightarrow
NKF.Native
\Longrightarrow
ACT.KX.
```

This theorem does not prove global retained-window existence. It proves that
once the retained-window admission and local smooth center-ball regularity are
available, the native forcing, scale seed, point recovery, and geometric
fixed-readout compatibility inputs used by the `ACT.KX` packet are
theorem-grade consequences.

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
response plus the finite-energy far tail. On the retained ball, for
`0\le q\le m`,

```math
|\nabla^{q+1}p|*\varphi_{j,r}
\le
C
\|p(\cdot,t)\|_{C^{m+1}(B(c_j(t),2r_a))}
```

and the right side is in `L^1_t` after summing over the finite center/rung set.
The harmonic/far-tail contribution is bounded by the energy tail already
licensed in the conditional packet. For the viscous part,
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
mollifier-to-point convergence with that dominating norm gives

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
`NKF.Point`, the native point forcing ledger is in `L^1(I_a)`.

More explicitly, the retained smoothness and finite-energy far tail give

```math
\mathcal P_{\le m}^{ctr,nat}(t)
:=
\sum_j\left(
|\nabla\pi_j^{loc}(c_j)|
+
|\nabla^2\pi_j^{loc}(c_j)|
\right)
+
\sum_{q=2}^{m}\sum_j
|\mathcal C_{G_j}^{-1}\nabla^{q+1}\pi_j^{loc}(c_j)|
+
\mathcal T_{\le m}^{press,far}(t)
\in L^1(I_a).
```

The viscous parts are contractions of the retained smooth tower modes
`U_{q+2}` for the finite center-rung set, hence also lie in `L^1(I_a)`. The
bounded affine-frame conversion then gives

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

### Proof Block E: `RWS.C_scale^{geom}`

The finite same-fluid dynamic cover supplied by retained-window compactness and
the bounded pack gauge has bounded overlap:

```math
B(c_j(t),R_{fix})
\subset
\bigcup_{b=1}^{B}B(c_{j_b}(t),R_b).
```

This is the geometric half of `RWS.C_scale`: the cover is finite, same-fluid,
transported, and has a uniform overlap bound depending only on the retained
cover geometry and the bounded pack gauge.

After `ACT.KX` propagates the small restarted packets, each cover element gives

```math
X_{exc,b}\in L^\infty(I_a),
\qquad
N_b\in L^1(I_a).
```

Finite overlap then transfers the local Morrey, affine-defect, pressure-cell,
and top-viscous readouts to the fixed readout ball. Thus `RSCB.NKF` proves
`RWS.C_scale^{geom}`, and

```math
RWS.C_scale^{geom}
+
ACT.KX
\Longrightarrow
RWS.C_scale.
```

This is a finite-cover readout transfer theorem; it is not a fixed-radius
smallness claim.

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
RWS.C_{scale}^{geom}.
```

Together with the already-installed `ACT.KX` conditional packet, this promotes
`H1` from a route assumption into a theorem-grade retained-window receiver
input, conditional only on retained-window admission and local smooth
center-ball regularity.

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
pressure response, finite-energy far tails, bounded pack/affine-frame gauge,
and finite-cover compactness. It proves the `ACT.X-Scale` restart seed and
native forcing point recovery; it does not use `ACT.KX` conclusions.

## Handoff

Once `RSCB.NKF` is installed as a theorem-grade input, the receiver side runs

```math
RSCB.NKF
\Longrightarrow
NKF.Native
\Longrightarrow
ACT.KX
\quad\text{and}\quad
ACT.KX+RWS.C_{scale}^{geom}
\Longrightarrow
RWS.C_{scale}
\Longrightarrow
ACT.X\text{-Readout}
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
\text{Finite-energy-native branch: }SCF_{\mathrm{base}}+SGC.A_{\mathrm{a.e.}}+ATD_m^\varepsilon\to SCF_{\mathrm{avg}}^m\to AACT.KX\text{ off }\mathcal B_{\varepsilon_m}^{\Phi}\to DTC.A_{\mathrm{avg}}.
}
```
