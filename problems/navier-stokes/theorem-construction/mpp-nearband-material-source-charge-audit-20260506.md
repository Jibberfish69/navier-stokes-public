# MPP NearBandMaterialSourceCharge.A Audit

Date: 2026-05-06

Status: route-convergence audit; not installed as a theorem.

Purpose: test whether the material-source remainder left by
`NearBandBVToBurstOrSource.A` is an independent lower theorem or the same
active source wall already isolated by the signed-current / weighted-lifted
commutator route.

## 0. Target

The near-band BV attempt left:

```text
NearBandMaterialSourceCharge.A.
```

In packet notation the target is:

```math
\boxed{
\sum_{P\in F_N(W)}
\omega_PE_P\tau_P
\int_{I_P}
\|\mathcal N^{near}_{j_P,L}
+\mathcal P^{near}_{j_P,L}
+\mathcal C^{near}_{j_P,L}\|_\infty\,dt
\le
\mathrm{Legal}_{N,Q}(W)+o_N(1).
}
\tag{NMS.1}
```

Here:

```text
N^{near} = near-band projection of -(S^2+Omega^2),
P^{near} = near-band projection of -nabla^2 p,
C^{near} = cutoff / material-commutator / localization errors.
```

## 1. Absolute estimates are circular

A crude Calderon--Zygmund / Bernstein estimate gives:

```math
\|\mathcal N^{near}_{j,L}+\mathcal P^{near}_{j,L}\|_\infty
\le
C_{CZB}
\|\nabla u\|_\infty\,\|\nabla u\|_\infty
```

or, after frequency localization, a sum of low-near and near-high quadratic
products.  Testing this against `E_P tau_P` on the retained high packet yields
exactly a scale-critical active multiplier:

```math
E_P\tau_P\,|\nabla u|^2.
```

On terminal high packets this is not lower than the source wall.  It is a
positive active coefficient estimate.  Spending it by absolute value returns to
`ScaleCriticalTreeCarleson.A` / active-square reserve control.

So `(NMS.1)` is not proved by generic pressure bounds.

## 2. Time-integration test

One might try to integrate the near-band material derivative by parts in time.
For a signed term:

```math
\int_{I_P}e_P(t)\tau_P D_tS^{near}(t)\,dt
=
\left[e_P\tau_PS^{near}\right]_{\partial I_P}
-\int_{I_P}\tau_P(D_te_P)S^{near}\,dt.
\tag{NMS.2}
```

The boundary term is a Pack/endpoint term if the packet is admitted.  But the
second term contains `D_te_P`.  The high packet energy equation has the form:

```math
D_te_P
=
2\sigma_Pe_P
-c\tau_P^{-1}e_P
+Source_P^{loc}
+Legal_P.
\tag{NMS.3}
```

Substituting `(NMS.3)` into `(NMS.2)` reintroduces:

```math
S^{near}\sigma_Pe_P
\quad\text{and}\quad
S^{near}Source_P^{loc}.
```

The first term is active strain alignment; the second is the localized
source/commutator term.  Thus time integration does not remove the source wall
unless the source term has a signed-current or no-incoming cancellation theorem.

This is the same obstruction as the weighted-lifted route: positive terminal
selection strands the active source term after weights, cutoffs, and packet
localization.

## 3. Comparison with WeightedLiftedSkewDefectLegal.A

The signed-current audit identifies the principal lifted defect:

```math
2^{2j}
\sum_P
\langle S_k(x_P,t)e_P,e_P\rangle |c_P(t)|^2.
\tag{NMS.4}
```

`NearBandMaterialSourceCharge.A` contains the time/material derivative of the
same near-band coefficient field.  After one time integration by parts, it
feeds back into `(NMS.4)` plus boundary and legal terms.

Therefore the two gates are not independent:

```text
NearBandMaterialSourceCharge.A
needs the same signed positive-source balance as
WeightedLiftedSkewDefectLegal.A.
```

The common noncircular closure options are:

```text
TerminalSignedSaturation.A,
ActiveStrainAlignmentCost.A + TPNI.A,
TangentWeightRigidity.A plus active alignment depletion,
or a direct donor-depletion reserve.
```

## 3.1 Update after ASAC parent-drain assembly

The active-alignment option above has now been consumed by
`mpp-asac-parent-drain-assembly-20260506.md`.  That assembly proves `ASAC.A`
from the native terminal parent-drain route:

```text
PacketNormalForm.A
+ SourceTether.A
+ LimitPass.A
+ TerminalTangentNoParent.A
+ TPNI.A
=> ASAC.A.
```

Therefore the near-band audit should no longer list active alignment as an
unresolved independent branch.  After time integration by parts, the
`D_tE_P` term still splits into active alignment plus localized source-current
pieces, but the active alignment piece is now legal by `ASAC.A`.

The theorem-facing update is recorded in
`mpp-nearband-material-source-after-asac-reduction-20260506.md`:

```text
ASAC.A
+ NearBandBoundaryPack.A
+ ProjectedCutoffLedger.A
+ TerminalWeightedNoFreeSink.A
=> NearBandMaterialSourceCharge.A.
```

The remaining hard carrier is the signed terminal source-current under
one-sided weights:

```text
TerminalWeightedNoFreeSink.A,
```

equivalently the existing pair:

```text
TerminalSignedSaturation.A + TwoTowerDonorDepletion.A
```

with the donor theorem still routed through `RefillTreeWellFounded.A` / Zeno
source-residue rigidity rather than through `ScaleCriticalTreeCarleson.A`.

## 4. Bridge statement

The honest bridge is:

```math
\boxed{
WeightedLiftedSkewDefectLegal.A
+ FrameBVCharge.A
+ NearBandBoundaryPack.A
\Longrightarrow
NearBandMaterialSourceCharge.A.
}
\tag{NMS.5}
```

The `NearBandBoundaryPack.A` term is the endpoint term in `(NMS.2)` and should
be a net Pack / heat-window boundary ledger, not an accumulated-positive-strain
ledger.

Conversely, a theorem-grade proof of `NearBandMaterialSourceCharge.A` strong
enough to survive terminal positive selection would supply the missing signed
positive-source balance needed by `WeightedLiftedSkewDefectLegal.A`, modulo the
standard packetization and coefficient-freezing ledgers.

So this is a route convergence, not a new independent branch.

## 5. Verdict

`NearBandMaterialSourceCharge.A` is not discharged.  It sharpens the height-flux
route to the same primitive carried by the signed-current route:

```text
signed positive-source balance under one-sided terminal weights.
```

Current common hard gate after the ASAC update:

```text
TerminalSignedSaturation.A
or
TerminalWeightedNoFreeSink.A
or
TwoTowerDonorDepletion.A plus terminal signed saturation.
```

This is progress because the height-flux route and signed-current route now
meet at the same exact obstruction instead of producing two unrelated
frontiers.
