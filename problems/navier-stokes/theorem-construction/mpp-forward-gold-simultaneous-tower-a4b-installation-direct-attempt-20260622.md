---
theorem_id: forward-gold-simultaneous-tower-a4b-installation-direct-attempt-20260622
status: direct-attempt-reduces-to-participation-carrying-full-tower-fourbody-balance-not-installed
logical_landing_node: simultaneous_tower_a4b_installation
edge_effect: >-
  Tests SimultaneousTowerA4BInstallation.A directly from the pulled-back
  material Navier-Stokes law. The conditional four-body cancellation theorem is
  available: once one transported material packet has oriented S_N,Q_N,C_N,G_N
  balance lines and the whole-packet activity A_4B,N is tied to the Q-coordinate
  activity plus strict losses, summing cancels the exchange currents and gives
  finite A_4B,N. The direct Navier-Stokes installation is not proved by current
  inputs. Differentiating the material record produces the correct generated
  metric, coefficient, velocity, pressure, viscous, collar, compactness, and
  geometry channels, but those generated channels are controlled by A_4B,N only
  when they are carried as the oriented exchange currents of the same
  law-bearing packet. Thus the exact remaining theorem is
  ParticipationCarryingFullTowerFourBodyBalance.A, not a one-body admission,
  Body-IV drain estimate, or enlarged post-hoc ledger.
parents:
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-material-record-growth-quantization-to-fourbody-20260622.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-participation-carrying-material-record-correction-20260622.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-full-tower-a4b-cancellation-audit-20260622.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-material-record-log-growth-channel-identity-20260622.md
  - problems/navier-stokes/theorem-construction/mpp-four-body-remaining-arrows-and-cycle-closure-attempt-20260621.md
---

# Simultaneous Tower A4B Installation Direct Attempt

Date: 2026-06-22

## 0. Target

The live target is

```math
\boxed{
\texttt{SimultaneousTowerA4BInstallation.A}
}
\tag{STI.1}
```

for one transported material annulus carrying the pulled-back Navier--Stokes
participation law

```math
\partial_s v+A^\top\nabla_a q
=
\nu\,\operatorname{div}_a(G\nabla_a v),
\qquad
\operatorname{div}_a(Av)=0.
\tag{STI.2}
```

The desired estimate is

```math
d[\log(1+\mathfrak P_N^{mat})]_+
\le
C\,dA_{4B,N},
\tag{STI.3}
```

where \(A_{4B,N}\) is the already-oriented tower-level four-body activity of the
same material packet.  It is not a lower-order annular stress term and not an
activity added after the four-body loop.

## 1. Available conditional theorem

The conditional four-body cancellation theorem says this.

Assume the four simultaneous coordinates of the same transported packet,

```math
\mathcal P_{4B,N}^{mat}=(S_N,Q_N,C_N,G_N),
\tag{STI.4}
```

satisfy the oriented balance lines

```math
dL_S+dD_S+dJ_{SQ}
\le
dJ_{GS}+dR_S,
\tag{STI.5}
```

```math
dL_Q+dD_Q+c\,dA_{Q,N}+dJ_{QC}
\le
dJ_{SQ}+dR_Q,
\tag{STI.6}
```

```math
dL_C+dD_C+dJ_{CG}
\le
dJ_{QC}+dR_C,
\tag{STI.7}
```

and

```math
dL_G+dD_G+dJ_{GS}
\le
dJ_{CG}+dR_G.
\tag{STI.8}
```

Assume also that the selected activity of the whole tower packet is installed
inside those coordinates:

```math
dA_{4B,N}
\le
C\,dA_{Q,N}
C(dD_S+dD_C+dD_G).
\tag{STI.9}
```

Then summing `(STI.5)`--`(STI.8)` cancels

```math
dJ_{SQ},\quad dJ_{QC},\quad dJ_{CG},\quad dJ_{GS},
\tag{STI.10}
```

and gives

```math
dL_{4B}
+dD_{4B,N}
+c'\,dA_{4B,N}
\le
dR_{4B,N}.
\tag{STI.11}
```

If \(L_{4B}\) is bounded below and \(R_{4B,N}\) is summable, then

```math
\int_{\sigma_0}^{\infty}dA_{4B,N}<\infty.
\tag{STI.12}
```

This is an available conditional cancellation machine.  It is not yet the
Navier--Stokes installation of `(STI.3)`.

## 2. What differentiating the material record gives

Let the same-packet material record be

```math
\mathfrak P_N^{mat}
=
1+\Gamma+E_N^v+E_N^q+E_N^{A,G}+E^{collar}.
\tag{STI.13}
```

The exact material equations give the following generated channels.

Base metric and collar geometry come from

```math
\partial_s(F^\top F)=2F^\top S(V)F,
\qquad
\eta(s,y)=\zeta(X^{-1}(y,s)).
\tag{STI.14}
```

Coefficient growth comes from

```math
\partial_sA=-A(\nabla_xV)(X(a,s),s),
\qquad
G=AA^\top .
\tag{STI.15}
```

The velocity-pressure tower comes from the differentiated material equations

```math
\partial_sV_\alpha
+A^\top\nabla_aQ_\alpha
-\nu\,\operatorname{div}_a(G\nabla_aV_\alpha)
=
\mathcal C_\alpha^{mat},
\tag{STI.16}
```

and differentiated incompressibility

```math
\operatorname{div}_a(AV_\alpha)
=
-
\sum_{0<\beta\le\alpha}
{\alpha\choose\beta}
\operatorname{div}_a
\left(
(D_a^\beta A)D_a^{\alpha-\beta}v
\right).
\tag{STI.17}
```

Factorial weights absorb the binomial splitting in `(STI.16)`--`(STI.17)`.
They do not orient the generated channels by themselves.

The term-by-term differentiation gives a local generated-channel inequality:

```math
d[\log(1+\mathfrak P_N^{mat})]_+
\le
C\left(
d\mathcal A_N^{metric}
+d\mathcal A_N^{coeff}
+d\mathcal A_N^{comm}
+d\mathcal A_N^{press}
+d\mathcal A_N^{visc/collar}
+d\mathcal A_N^{geom}
+d\mathcal A_N^{rad}
+d\mathcal A_N^{selector/collar}
+d\mathcal A_N^{exchange}
\right).
\tag{STI.18}
```

This is useful only as a generated-channel identity.  It does not prove
`(STI.3)` unless the right-hand side is already the activity of the same
oriented four-body packet.

## 3. Exact point where the direct proof stops

The tempting shortcut is

```math
\text{generated by the material equations}
\Longrightarrow
\text{controlled by }A_{4B,N}.
\tag{STI.19}
```

That implication is not a theorem.  The correct required statement is stronger:

```math
\boxed{
\text{the generated channels in `(STI.18)` are the oriented adjacent-body
exchange currents and strict losses of the same law-bearing four-body packet.}
}
\tag{STI.20}
```

Equivalently, the direct proof requires the law-bearing full-tower balance

```math
\boxed{
\texttt{ParticipationCarryingFullTowerFourBodyBalance.A}.
}
\tag{STI.21}
```

This theorem must produce `(STI.5)`--`(STI.9)` from the same pulled-back
material Navier--Stokes law `(STI.2)`, with no post-hoc enlargement of the
activity after cancellation.

## 4. Why the current inputs do not prove it

The existing four-body notes prove the conditional cancellation shape for an
activity already carried by the loop.  The material log-growth note proves the
local generated-channel inequality `(STI.18)`.  The full-tower audit shows that
these two facts do not imply each other.

The missing orientation is not a notation issue.  For example:

```math
d\mathcal A_N^{comm},
\quad
d\mathcal A_N^{press},
\quad
d\mathcal A_N^{coeff}
\tag{STI.22}
```

are generated by differentiating the same law, but the current installed notes
do not prove that each generated positive part appears with the correct
adjacent exchange sign in `(STI.5)`--`(STI.8)`.  Estimating them by size would
return to the old detached channel ledger.  Routing them through only \(G_N\)
or only \(Q_N\) would revive the one-body supplier error.

Thus the direct attempt reaches the exact unsolved Navier--Stokes installation:

```math
\boxed{
\texttt{SimultaneousTowerA4BInstallation.A}
\Longleftrightarrow
\texttt{ParticipationCarryingFullTowerFourBodyBalance.A}
\text{ for the generated tower channels.}
}
\tag{STI.23}
```

The equivalence here is at the level of this route: proving the law-bearing
full-tower four-body balance installs `(STI.3)`, and `(STI.3)` with an
already-oriented \(A_{4B,N}\) is exactly the assertion that positive material
record growth is carried by that law-bearing packet.

## 5. Consequence if the installation is proved

If `(STI.21)` is proved, then `(STI.3)` and `(STI.12)` give

```math
\int_{\sigma_0}^{\infty}
d[\log(1+\mathfrak P_N^{mat})]_+
<\infty.
\tag{STI.24}
```

A terminal material-record doubling satisfies

```math
\int_I d[\log(1+\mathfrak P_N^{mat})]_+
\ge
\log 2.
\tag{STI.25}
```

So infinitely many retained terminal record losses are impossible.  The retained
outer annular material record survives, the center endpoint overlap remains
attached to its annular stress/strain history, and the terminal heat-scale pulse
is no longer hidden.

## 6. Current result

The current result is exact and conditional:

```math
\boxed{
\text{Conditional four-body cancellation}
+
\text{ParticipationCarryingFullTowerFourBodyBalance.A}
\Longrightarrow
\text{no infinite retained material-record loss.}
}
\tag{STI.26}
```

The theorem not proved here is exactly:

```math
\boxed{
\text{derive the oriented full-tower four-body inequalities from `(STI.2)` for
the generated channel list `(STI.18)`.}
}
\tag{STI.27}
```

Failure of `(STI.27)` is not a hidden last-time center pulse.  It is loss of the
same-material participation record:

```math
Pack_Q+\neg Part_{N,Q}.
\tag{STI.28}
```
