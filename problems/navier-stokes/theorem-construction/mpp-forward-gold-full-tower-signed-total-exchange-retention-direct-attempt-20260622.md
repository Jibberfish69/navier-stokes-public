---
theorem_id: forward-gold-full-tower-signed-total-exchange-retention-direct-attempt-20260622
status: direct-attempt-reduces-to-strict-same-packet-cycle-exchange-coercivity-not-installed
logical_landing_node: full_tower_signed_total_exchange_retention
edge_effect: >-
  Tests FullTowerSignedTotalExchangeRetention.A after the simultaneous material
  four-body correction. The pulled-back material tower gives signed adjacent
  exchange currents, and the four-body sum cancels their net contribution. The
  positive material-record growth is a total-variation quantity, so net
  cancellation does not control it. The direct attempt proves the exact
  equivalence: signed-total retention holds only when every complete same-packet
  exchange cycle with nonzero positive tower-record variation has strict
  four-body loss, Q-coordinate activity, or already-enveloped residual. That
  strict same-packet cycle-exchange coercivity is not installed by the current
  inputs. Failure is the same-material Part-side record loss, not a new center
  pulse.
parents:
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-participation-carrying-full-tower-fourbody-balance-direct-attempt-20260622.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-four-body-same-carrier-orientation-defect-decomposition-20260621.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-bodyii-bodyiii-retained-participation-packet-criterion-20260621.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-total-strain-vorticity-exchange-retention-direct-attempt-20260622.md
---

# Full-Tower Signed/Total Exchange Retention Direct Attempt

Date: 2026-06-22

## 0. Target

The target is

```math
\boxed{
\texttt{FullTowerSignedTotalExchangeRetention.A}.
}
\tag{FTR.1}
```

It is the missing internal clause in
`ParticipationCarryingFullTowerFourBodyBalance.A`.

The same transported material law gives signed adjacent exchange currents
between the four simultaneous coordinates

```math
(S_N,Q_N,C_N,G_N).
\tag{FTR.2}
```

The question is whether those signed identities also retain the total positive
tower-record growth of the same packet.

## 1. Signed exchange supplied by the material tower

After differentiating the pulled-back material equation and testing with the
same transported cutoff and factorial weights, the four projections have the
form

```math
dL_S+dD_S+dJ_{SQ}
\le
dJ_{GS}+dR_S,
\tag{FTR.3}
```

```math
dL_Q+dD_Q+c\,dA_{Q,N}+dJ_{QC}
\le
dJ_{SQ}+dR_Q,
\tag{FTR.4}
```

```math
dL_C+dD_C+dJ_{CG}
\le
dJ_{QC}+dR_C,
\tag{FTR.5}
```

and

```math
dL_G+dD_G+dJ_{GS}
\le
dJ_{CG}+dR_G.
\tag{FTR.6}
```

These are four readings of one material participation law.  The exchange
currents are signed adjacent currents of the same packet, not external
accounts.

Summing `(FTR.3)`--`(FTR.6)` cancels the net exchange currents:

```math
dJ_{SQ},\quad dJ_{QC},\quad dJ_{CG},\quad dJ_{GS}.
\tag{FTR.7}
```

That proves net oriented cancellation only.

## 2. The material record asks for total positive variation

The material record is

```math
\mathfrak P_N^{mat}
=
1+\Gamma+E_N^v+E_N^q+E_N^{A,G}+E^{collar}.
\tag{FTR.8}
```

Its growth is measured by

```math
d[\log(1+\mathfrak P_N^{mat})]_+.
\tag{FTR.9}
```

Direct differentiation gives generated positive channel measures:

```math
d[\log(1+\mathfrak P_N^{mat})]_+
\le
C\sum_\kappa d\mathcal A_N^\kappa.
\tag{FTR.10}
```

Those channels are total positive variation of metric deformation, coefficient
growth, pressure-service growth, viscous/collar commutators, compactness/no-loss
defects, geometry-frame growth, and tower commutators.

Total positive variation is not the same object as signed net exchange.

## 3. The obstruction is exact

Let one adjacent exchange current move amount \(M>0\) from one coordinate to
the next and return the same amount through the neighboring coordinate.  The
signed sum sees

```math
M-M=0.
\tag{FTR.11}
```

The total exchange record sees

```math
[M]_+ + [-(-M)]_+ = 2M.
\tag{FTR.12}
```

So the four-body cancellation theorem does not by itself control
`(FTR.9)`.  It controls the signed net exchange after the four readings are
summed.

The needed theorem is stronger:

```math
\boxed{
\text{every complete same-packet exchange cycle with nonzero total positive}
\text{ tower-record variation has strict four-body payment.}
}
\tag{FTR.13}
```

Here "payment" means one of the coordinates of the same material packet records
actual strict loss, Q-coordinate selected activity, or an already-enveloped
residual:

```math
d\mathcal A_N^\kappa
\le
C\,dA_{Q,N}
+C(dD_S+dD_C+dD_G)
+dR_{4B,N}.
\tag{FTR.14}
```

This is the same theorem as signed-total retention, written in coercive cycle
language.  It is not a new external ledger.

## 4. What existing interface notes supply

The existing retained-packet interface notes prove the correct local criterion.
For the \(Q\to C\) interface, retaining

```math
\mathcal Q_n^{ret}
=
(\mu_n^A,\mu_n^N,\mu_n^J)
\tag{FTR.15}
```

on the same selected carrier preserves

```math
d\mu_n^J=d\mu_n^A-d\mu_n^N
\tag{FTR.16}
```

through compactness.  Missing negative partner, escaped positive carrier, and
misidentified signed current are charged as selector, compactness, or legal
defects.

This solves the compactness-retention interface after the signed/positive
three-measure packet has already been produced.

It does not prove that every generated tower-record positive term from
`(FTR.10)` is already such a retained three-measure packet.

## 5. Compactness-rigidity route check

There is an abstract route to `(FTR.13)`.  The compactness-rigidity principle
would give strict same-packet cycle payment if the full-tower packet space were
compact, the total positive exchange activity persisted under same-carrier
convergence, the loss were lower semicontinuous, and every zero-loss packet had
zero total tower-record activity.

The installed no-loss packet criterion proves this only after strong
same-carrier convergence of the full packet:

```math
V_n\to V\text{ in }L^3,
\qquad
Q_n\to Q\text{ in }L^{3/2},
\qquad
\nabla V_n\to\nabla V\text{ in }L^2,
\tag{FTR.16a}
```

with stabilized cutoffs, signs, labels, and legal residuals.  That is enough
to pass selected positive carriers through compactness.

It does not produce the full-tower total-exchange packet from the material
equation.  In particular, it does not prove that the generated measures
`(FTR.10)` have a retained positive carrier, retained negative partner, and
retained signed current before compactness is used.

So compactness-rigidity is a valid consumer for strict cycle coercivity, but it
does not install the missing signed-total exchange retention.

## 6. Direct attempt result

The pulled-back material Navier-Stokes tower proves:

```math
\text{signed adjacent exchange identities.}
\tag{FTR.17}
```

The retained-packet criteria prove:

```math
\text{once a positive carrier, negative partner, and signed current are retained,}
\text{ compactness does not lose them.}
\tag{FTR.18}
```

Current installed inputs do not prove:

```math
\boxed{
\text{every positive generated tower-record channel from }(FTR.10)
\text{ is retained as that three-measure packet, strict loss,}
\text{ or residual.}
}
\tag{FTR.19}
```

Therefore the direct attempt does not close
`FullTowerSignedTotalExchangeRetention.A`.

It reduces it to the strict same-packet cycle-exchange coercivity statement
`(FTR.13)`--`(FTR.14)`.

## 7. Consequence for the gold route

If `(FTR.13)` holds, then

```math
d[\log(1+\mathfrak P_N^{mat})]_+
\le
C\,dA_{4B,N},
\tag{FTR.20}
```

so finite four-body activity forbids infinite material-record loss.

If `(FTR.13)` fails, the failure is not a hidden endpoint pulse at the center.
It is loss of the same-material participation record:

```math
Pack_Q+\neg Part_{N,Q}.
\tag{FTR.21}
```

The branch is therefore exactly located.  The remaining pure gold theorem is
strict same-packet cycle-exchange coercivity for the full transported material
tower.
