---
theorem_id: forward-gold-participation-carrying-full-tower-fourbody-balance-direct-attempt-20260622
status: direct-attempt-reduces-to-full-tower-signed-total-exchange-retention-not-installed
logical_landing_node: participation_carrying_full_tower_fourbody_balance
edge_effect: >-
  Tests ParticipationCarryingFullTowerFourBodyBalance.A as the installation
  theorem behind SimultaneousTowerA4BInstallation.A. The pulled-back material
  Navier-Stokes tower gives signed same-packet exchange identities. Summing
  those identities cancels net exchange currents. That is not enough to control
  positive logarithmic material-record growth, because record growth is a total
  positive variation readout. A signed current can cancel in the four-body sum
  while its positive and negative sides carry large total exchange. Therefore
  the exact missing internal theorem is FullTowerSignedTotalExchangeRetention.A:
  every positive generated tower-record growth term must retain its same-packet
  signed partner as an adjacent exchange current, become strict loss in one of
  the four coordinates, or enter the already-enveloped residual. Without that
  retention theorem, the law-bearing four-body balance is conditional only.
parents:
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-simultaneous-tower-a4b-installation-direct-attempt-20260622.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-participation-carrying-material-record-correction-20260622.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-material-record-log-growth-channel-identity-20260622.md
  - problems/navier-stokes/theorem-construction/mpp-four-body-remaining-arrows-and-cycle-closure-attempt-20260621.md
---

# Participation-Carrying Full-Tower Four-Body Balance Direct Attempt

Date: 2026-06-22

## 0. Target

The target is

```math
\boxed{
\texttt{ParticipationCarryingFullTowerFourBodyBalance.A}.
}
\tag{PFT.1}
```

It must prove that the same transported material law

```math
\partial_s v+A^\top\nabla_a q
=
\nu\,\operatorname{div}_a(G\nabla_a v),
\qquad
\operatorname{div}_a(Av)=0
\tag{PFT.2}
```

generates the four oriented full-tower balances whose internal exchange
currents cancel, while also carrying the positive logarithmic material-record
growth.

The point to test is exact:

```math
\boxed{
\text{signed exchange cancellation}
\quad\text{is not automatically}
\quad
\text{total positive record-growth control.}
}
\tag{PFT.3}
```

## 1. What the material law gives formally

For a finite tower rung,

```math
V_\alpha=D_a^\alpha v,\qquad Q_\alpha=D_a^\alpha q,
\tag{PFT.4}
```

the differentiated material law is

```math
\partial_sV_\alpha
+A^\top\nabla_aQ_\alpha
-\nu\,\operatorname{div}_a(G\nabla_aV_\alpha)
=
\mathcal C_\alpha^{mat},
\tag{PFT.5}
```

with differentiated incompressibility

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
\tag{PFT.6}
```

Testing `(PFT.5)` with the same transported cutoff and factorial weights gives
signed tower identities.  At the four-body level these have the schematic form

```math
dL_S+dD_S+dJ_{SQ}
\le
dJ_{GS}+dR_S,
\tag{PFT.7}
```

```math
dL_Q+dD_Q+c\,dA_{Q,N}+dJ_{QC}
\le
dJ_{SQ}+dR_Q,
\tag{PFT.8}
```

```math
dL_C+dD_C+dJ_{CG}
\le
dJ_{QC}+dR_C,
\tag{PFT.9}
```

and

```math
dL_G+dD_G+dJ_{GS}
\le
dJ_{CG}+dR_G.
\tag{PFT.10}
```

These identities preserve the one-fluid packet: pressure, viscosity,
incompressibility, velocity, material coefficients, and collar transport are
all still attached to `(PFT.2)`.

Summing `(PFT.7)`--`(PFT.10)` cancels the signed exchange currents:

```math
dJ_{SQ},\quad dJ_{QC},\quad dJ_{CG},\quad dJ_{GS}.
\tag{PFT.11}
```

This gives the conditional cancellation inequality for net oriented exchange.

## 2. What record growth asks for

The material record is

```math
\mathfrak P_N^{mat}
=
1+\Gamma+E_N^v+E_N^q+E_N^{A,G}+E^{collar}.
\tag{PFT.12}
```

Its positive logarithmic growth is a total positive readout:

```math
d[\log(1+\mathfrak P_N^{mat})]_+.
\tag{PFT.13}
```

Term-by-term differentiation produces generated positive channel measures:

```math
d[\log(1+\mathfrak P_N^{mat})]_+
\le
C\sum_\kappa d\mathcal A_N^\kappa.
\tag{PFT.14}
```

Here \(\kappa\) ranges over metric, coefficient, commutator, pressure,
viscous/collar, compactness, geometry, radius, selector/collar, and exchange
channels.

The desired installation is

```math
d[\log(1+\mathfrak P_N^{mat})]_+
\le
C\,dA_{4B,N}.
\tag{PFT.15}
```

Thus the generated positive measures in `(PFT.14)` must be the same positive
activity controlled by the oriented four-body packet.

## 3. The exact obstruction: signed net versus total exchange

The four-body sum cancels signed currents.  The material record sees positive
growth.  These are different objects.

A finite-dimensional model shows the obstruction without changing the PDE
logic.  Let one exchange current carry a signed amount \(+M\) in one coordinate
and \(-M\) in the adjacent coordinate.  Then the net four-body exchange cancels:

```math
+M-M=0.
\tag{PFT.16}
```

But the total positive activity is still

```math
[M]_+ + [-(-M)]_+ = 2M.
\tag{PFT.17}
```

So signed cancellation alone cannot prove total positive record-growth control.
The proof needs same-packet retention of the signed partner, not only a net
identity.

## 4. Missing theorem inside the same packet

The required internal theorem is

```math
\boxed{
\texttt{FullTowerSignedTotalExchangeRetention.A}.
}
\tag{PFT.18}
```

For every generated positive tower-record channel \(d\mathcal A_N^\kappa\), it
must prove one of the following inside the same transported material packet:

```math
d\mathcal A_N^\kappa
\le
C\,dA_{Q,N}
C(dD_S+dD_C+dD_G)
dR_{4B,N},
\tag{PFT.19}
```

or the term is retained as an adjacent signed exchange current whose partner
appears with the opposite orientation in the neighboring coordinate before the
four-body sum.

Equivalently, the whole-packet activity installation

```math
dA_{4B,N}
\le
C\,dA_{Q,N}
C(dD_S+dD_C+dD_G)
dR_{4B,N}
\tag{PFT.20}
```

must be proved as a signed-total retention theorem, not as a size estimate and
not as a definition of \(A_{4B,N}\).

## 5. Direct attempt result

The direct material-law calculation proves the signed identities
`(PFT.7)`--`(PFT.10)` only conditionally, with the usual same-carrier legal
residuals.  It also gives the local generated-channel inequality `(PFT.14)`.

Current installed inputs do not prove `(PFT.18)` or `(PFT.20)`.  The gap is
exactly the same-packet conversion from signed exchange identities to total
positive generated-record activity.

Therefore

```math
\boxed{
\texttt{ParticipationCarryingFullTowerFourBodyBalance.A}
\Leftarrow
\texttt{FullTowerSignedTotalExchangeRetention.A}
\text{ plus the signed four-body identities.}
}
\tag{PFT.21}
```

and the current direct attempt does not close the theorem.

## 6. Consequence

If `(PFT.18)` is proved, then `SimultaneousTowerA4BInstallation.A` follows:

```math
d[\log(1+\mathfrak P_N^{mat})]_+
\le
C\,dA_{4B,N}.
\tag{PFT.22}
```

Together with conditional four-body cancellation this gives

```math
\int_{\sigma_0}^{\infty}
d[\log(1+\mathfrak P_N^{mat})]_+
<\infty,
\tag{PFT.23}
```

so the retained material record cannot double infinitely often.

If `(PFT.18)` fails, the route has not found a hidden center pulse.  It has
found loss of the same-material participation record:

```math
Pack_Q+\neg Part_{N,Q}.
\tag{PFT.24}
```
