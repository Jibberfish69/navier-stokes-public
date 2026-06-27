---
theorem_id: forward-gold-reused-channel-return-service-no-recirculation-equivalence-20260627
status: reused-channel-return-service-equivalence-open-forward-reserve-needed
created: 2026-06-27
problem: navier-stokes
route: forward-gold same-material stopped routed participation current
logical_landing_node: GlobalSamePacketFullClockFromOriginalData.A
refines:
  - ReusedSameMaterialStressChannelReturnResetCharge.A
  - StressTestInheritedDirectionSignedScoreLift.A
  - NativeBirthChargePacking.A
  - FullSamePacketPLSNoRecirculationEquivalence.A
attacks_hinge:
  - StoppedReturnBVFiniteFromOriginalData.A
  - CriticalWeightedResetBVFromOriginalHistory.A
  - OriginalHistoryWeightedFreshCurrentCapacity.A
  - ForwardNativeReserveBirthPaysFullPLS.A
source_surfaces:
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-inherited-stress-direction-bv-quotient-compression-20260627.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-pls-no-recirculation-equivalence-20260626.md
  - problems/navier-stokes/theorem-construction/mcp-plsrecirculationpackingclosure-a-globalsamepacketfullclockfromoriginaldata-a-c3a73fe8f5.md
  - problems/navier-stokes/theorem-construction/mcp-onewaymaterialrecordgrowthadmittedtopls-a-globalsamepacketfullclockfromoriginaldata-a-20260625.md
  - problems/navier-stokes/theorem-construction/mcp-fullplsclockfinitefromgrowthpaidandrecirc-a-globalsamepacketfullclockfromoriginaldata-a-05ee63de6f.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-full-annular-density-prelimit-left-clock-circularity-test-20260625.md
  - problems/navier-stokes/theorem-construction/mcp-availableparticipationentropyconstruction-a-globalsamepacketfullclockfromoriginaldata-a-a85c6d09fe.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-stopped-current-square-packing-root-reserve-branch-lock-20260627.md
effect: >-
  Records the exact boundary around the inherited reused-channel BV theorem.
  The physical traction-current story and scalar BV give the right signed
  object, but finite reused-channel return/service is noncircular only when it
  is produced by a forward original-history reserve or bounded-below storage
  drop.  A minimal-cycle or no-free-reset argument is admissible only if it
  constructs such reserve atoms with bounded multiplicity before selected
  readout.  Otherwise it is equivalent to the full moving material clock.
  Partial, not Gold closed.
---

# Reused-channel return/service and no-recirculation equivalence

The inherited stress channel is now the correct place to state the obstruction.
Fresh stopped stress-test directions are already square-packed by the
divergence-free Bessel estimate.  The remaining branch is the same material
stress channel being read again.

## 1. Live inherited-channel theorem

On a stopped parent \(P\), set

```math
a_Q
=
\sqrt{\mathcal R(Q)}
1_{\operatorname{Hist}(Q)}
P_{\rm sym,tr}\nabla_Av_Q
```

and split

```math
a_Q=b_Q+d_Q
```

with \(d_Q\) parent-subtracted and \(b_Q\) inherited from the parent-known past.
The fresh part has the installed Bessel estimate

```math
\sum_{Q\subset P}
|\langle 2\nu S_A,d_Q\rangle|^2
\le C(u_0)+R_{\rm legal}+Stop .
\tag{1}
```

The live Gold estimate is the inherited part:

```math
\sum_{Q\subset P}
|\langle 2\nu S_A,b_Q\rangle|^2
\le C(u_0)+R_{\rm legal}+Stop .
\tag{2}
```

On one stopped ancestry line, quotient-compress a reused inherited channel to a
signed material flux potential \(\Psi\).  If

```math
Y=\partial_t\Psi
```

is the signed readout, then the selected positive readings satisfy

```math
Y_+\le Y+Y_-+Err .
\tag{3}
```

Scalar BV gives

```math
\int_I Y_+
\le
\operatorname{Rec}(\Psi;I)
+V_-(\Psi;I)
+Err(I).
\tag{4}
```

Thus `(2)` is reduced to the PDE payment

```math
\operatorname{Rec}(\Psi)+V_-(\Psi)
\le
C(u_0)+R_{\rm legal}+Stop .
\tag{5}
```

The identity

```math
V_+(\Psi;I)
=
\Psi(t_1)-\Psi(t_0)+V_-(\Psi;I)
\tag{6}
```

proves the scalar bookkeeping.  It does not prove `(5)`.

## 2. What would make the BV payment noncircular

The installed prelimit and no-recirculation notes give the admissibility test.
A positive clock can be placed on the left only when the smooth same-material
identity produces it as one of:

```math
\text{strict nonnegative loss},
\qquad
\text{positive part of a bounded-below storage drop},
\qquad
\text{independently summable legal residual}.
\tag{7}
```

For the inherited reused channel, this means `(5)` must come from a forward
same-material inequality of the form

```math
d\mathfrak R_N^{reuse}
+d\mathfrak L_N^{reuse}
+c\,d\Omega_N^{reuse}
\le
dR_N^{legal}+dStop_N,
\tag{8}
```

where

```math
\mathfrak R_N^{reuse}\ge0,
\qquad
\mathfrak L_N^{reuse}\ge -C_N(u_0),
\qquad
\int dR_N^{legal}<\infty,
\tag{9}
```

and \(d\Omega_N^{reuse}\) is the positive inherited-channel service measure
represented by either side of `(2)` / `(5)`.

Integrating `(8)` gives finite inherited service:

```math
\int d\Omega_N^{reuse}
\le
C_N(u_0)+R_{\rm legal}+Stop .
\tag{10}
```

This is the noncircular no-free-reset theorem in quotient form.

## 3. The equivalence trap

If `(10)` were already known, one could define a terminal reserve by

```math
\mathfrak R_N^{tail}(t)
=
c\int_t^{T_*}d\Omega_N^{reuse},
\qquad
\mathfrak L_N^{tail}=0,
\qquad
R_N^{tail}=0.
\tag{11}
```

Then

```math
d\mathfrak R_N^{tail}
+c\,d\Omega_N^{reuse}
=0.
\tag{12}
```

So a no-recirculation law is automatically true after assuming the target clock
finite.  That construction is not an a priori estimate.  It uses the future
selected tail.

Consequently, any proposed no-free-reset, return, reset, or minimal-cycle proof
has to build \(\mathfrak R_N^{reuse}\) and \(\mathfrak L_N^{reuse}\) forward from
original transported history.  Otherwise it is only a restatement of
`GlobalSamePacketFullClockFromOriginalData.A`.

## 4. Admissible descent shape

A descent proof can be smaller than the full clock only if it assigns every
unpaid reused-channel selected birth \(\gamma\) to a native reserve atom
\(\rho_{\iota(\gamma)}\) before selected readout:

```math
\iota:\Gamma_N^{reuse}(P)\to\mathcal R_N^{reuse,nat}(u_0;P),
\tag{13}
```

with

```math
\omega_\gamma
\le
C_N\rho_{\iota(\gamma)}
+R_{\rm legal}(\gamma)
+Stop(\gamma),
\qquad
\operatorname{mult}(\iota)\le C_N,
\tag{14}
```

and

```math
\sum_{\rho\in\mathcal R_N^{reuse,nat}(u_0;P)}\rho
\le
C_N(u_0)\mathcal R(P)+R_{\rm legal}(P)+Stop(P).
\tag{15}
```

The only noncircular well-founded order currently visible is the parent-known
first-birth order: a reused inherited channel is charged at its first selected
high-ratio read in a stopped parent frame, and a later read must be one of
fresh orthogonal work, legal/stop loss, paid reselection/reset, or a return to
an already spent reserve atom with bounded multiplicity.

This is not yet a proof.  The missing assertion is exactly that a later read of
the same material channel cannot restore selected high-ratio action without
creating one of the paid alternatives above.  In equations, the missing local
descent clause is

```math
\omega_{\gamma'}
\le
C_N\rho_{\iota(\gamma)}
+dR_{\rm legal}(\gamma')
+dStop(\gamma')
+d\Omega_N^{fresh}(\gamma')
+d\Omega_N^{reset/return}(\gamma'),
\tag{16}
```

with the reserve atom \(\rho_{\iota(\gamma)}\) spent only \(O_N(1)\) times.
No installed note proves `(16)`.

## 5. Relation to the older recirculation split

The installed recirculation note closes bounded-record oscillatory cycles and
accelerated recirculation subcases.  It leaves one-way positive material-record
growth.  The installed record-growth note admits that one-way growth to the PLS
clock:

```math
d[\log(1+\mathcal P_N^{mat})]_+
\le
C_N\,d\Omega_N^{PLS}+dR_N^0.
\tag{17}
```

This is an accounting arrow into the clock, not a producer of finite clock.
The inherited-channel theorem is the same boundary in a sharper coordinate:
the reused read is visible as \(V_-(\Psi)\), but the original-history estimate
for that negative return/service is still missing.

## 6. Heat-scale obstruction retained

The heat-scale half-tail profile remains the pressure test:

```math
\sum_m \ell_m<\infty,
\qquad
\sum_m 1=\infty .
\tag{18}
```

Ordinary energy, viscous \(L^2\) strain, pressure cancellation by
divergence-free tests, raw Bessel orthogonality, fixed-annulus BV, and scalar
BV all survive `(18)`.  They do not produce the normalized reserve atom in
`(13)`--`(15)`.

Therefore the next Gold theorem is not another attachment statement.  It is the
forward original-history reserve/storage construction `(8)`--`(15)` for reused
same-material inherited stress channels.

Gold remains partial, not closed.
