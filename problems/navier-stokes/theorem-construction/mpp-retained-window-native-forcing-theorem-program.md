# MPP Retained-Window Native Forcing Theorem Program

## Status

Theorem-facing next-frontier note.

Role: promote hypothesis `H1` of the installed `ACT.KX` conditional completion
packet into a theorem-grade input.

This note does not replace
`mpp-act-kx-conditional-route-completion-packet.md`. It isolates the next
analytic wall beneath that packet.

## Frontier Position

The installed packet is now a conditional terminal closure contract. The live
frontier is no longer route cleanup inside that packet. The live frontier is
theorem-grade promotion of its hypotheses, with priority order

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

It is not the first theorem wall anymore.

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
\text{The live frontier is theorem-grade installation of }RSCB.NKF
\text{ and the endpoint tower/certificate side.}
}
```
