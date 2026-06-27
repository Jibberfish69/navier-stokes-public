---
theorem_id: forward-gold-stopped-pressop-collar-graph-split-free-driver-audit-20260627
status: stopped-pressop-collar-hinge-reduced-to-stopped-free-material-graph-driver
created: 2026-06-27
problem: navier-stokes
route: forward-gold same-material selected-density / stopped graph-compatible carrier
logical_landing_node: GlobalSamePacketFullClockFromOriginalData.A
attacks_hinge:
  - StoppedPressOpCollarCarrierSymmetrizer.A
  - StoppedIndependentRootHilbertCarrierBound.A
  - PaidReselectionStoppingCarleson.A
  - FreshAffineMaterialTimeNoZeno.A
refined_hinge:
  - StoppedFreeMaterialGraphDriverCarleson.A
source_surfaces:
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-fresh-affine-nozeno-stopped-pressop-collar-symmetrizer-reduction-20260627.md
  - problems/navier-stokes/theorem-construction/mcp-graphcompatibleplsclockreadoutreplacement-a-globalsamepacketfullclockfromoriginaldata-a-4eb1f6562b.md
  - problems/navier-stokes/theorem-construction/mcp-materialellipticgraphdriversignedreduction-a-globalsamepacketfullclockfromoriginaldata-a-fe3cacea22.md
  - problems/navier-stokes/theorem-construction/mcp-relativeschurdefectcollapseandlocalizedinterfacesplit-a-globalsamepacketfullclockfromoriginaldata-a-0e99943057.md
  - problems/navier-stokes/theorem-construction/mcp-globalsamepacketfullclockcurrentreduction-a-globalsamepacketfullclockfromoriginaldata-a-d55398afc0.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-primitive-pls-driver-post-tangent-normal-closure-audit-20260625.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-selector-stopped-source-carrier-reduction-20260627.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-stopped-source-carrier-production-direct-test-20260627.md
---

# Stopped press/op-collar graph split free-driver audit

The previous reduction named:

```text
StoppedPressOpCollarCarrierSymmetrizer.A
```

as the next producer for `FreshAffineMaterialTimeNoZeno.A`.  That was the
right architecture but the wrong active noun.  The checked graph-compatible
source surfaces already split the pressure/operator-collar sector into:

```math
Z_N=(q,C_N)=\Gamma_N(Y_N)+W_N,
\tag{1}
```

where \(\Gamma_N(Y_N)\) is the forced material elliptic/collar graph and
\(W_N\) is the relative pressure/collar defect.

The stopped no-Zeno proof should therefore not chase the old pointwise
pressure/collar lobe clock.  It should chase the stopped free-material graph
driver that moves the graph.

## 1. What the pressure/collar graph split already gives

The material elliptic graph-driver reduction proves:

```math
d\Omega_N^{press/RHS}
+
d\Omega_N^{collar}
\le
C_N d\Omega_N^{rel.defect}
+
C_N\left(
d\Omega_N^{strain/frame}
+
d\Omega_N^{Hodge/Stokes}
+
d\Omega_N^{collar/base}
+
dD_N^{vis}
\right)
+
dR_N^{legal}.
\tag{2}
```

The relative Schur storage

```math
\widetilde{\mathscr A}_N^{press/op+collar}
=
-{1\over2}\|W_N\|_{pc,N}^2
\tag{3}
```

pays the relative defect component.  The relative defect collapse note then
says:

```math
W_N^{global}=0
\tag{4}
```

on the exact global material graph, while localized harmonic/collar memory is
annular interface or legal bookkeeping:

```math
\|W_N^{loc}\|_{pc,N}^2
\le
C_N d\Omega_N^{annular/interface}
+
dR_N^{legal}
+
\text{lower-rank terms}.
\tag{5}
```

Thus the pressure/collar normal-defect sector is not the remaining producer.
It is already graph-reduced and locally discharged modulo standard interface
bookkeeping.

## 2. What remains in the stopped carrier route

On a stopped selected interval \(S\), the fixed-carrier martingale route still
needs

```math
\sum_{S\subseteq P}
\|Z^S\|_{\mathcal H_{\rm src}}^2\mathcal R(S)
\le
C_N(u_0)\mathcal R(P)
+
R_{\rm stop}(P)
+
R_{\rm legal}(P),
\tag{6}
```

and

```math
\operatorname{Stop}(P)
+
\sum_{S\subseteq P}\sum_{Q\subseteq S}
|e_Q^S|^2\mathcal R(Q)
\le
C_N(u_0)\mathcal R(P)
+
R_{\rm legal}(P).
\tag{7}
```

After `(1)`--`(5)`, the source of `(6)` is not the old pressure/collar lobe
storage.  The source is the graph-compatible free-material driver:

```math
d\Omega_N^{PLS,graph}
=
d\Omega_N^{free\ material}
+
d\Omega_N^{rel.defect}
+
d\Omega_N^{recirc,finite}.
\tag{8}
```

The relative-defect and recirculation pieces are already classified.  The
unpaid stopped part is:

```math
d\Omega_N^{free,+}.
\tag{9}
```

Return is recirculation-paid.  Fresh events are the native stopped source
births.  Therefore the actual stopped producer is:

```text
StoppedFreeMaterialGraphDriverCarleson.A
```

Statement:

For one original smooth material history, after spent-source reuse,
selector/reselection jumps, silent-source zero-cost escape, relative Schur
defect, recirculation, entrance/legal, and subheat branches are removed, the
stopped free-material graph driver has finite Carleson/root mass:

```math
\sum_{S\subseteq P}
\Omega_N^{free,+}(S)
+
\operatorname{Stop}(P)
\le
C_N(u_0)\mathcal R(P)
+
R_{\rm legal}(P).
\tag{10}
```

Equivalently, `(10)` must imply `(6)` and `(7)` for the stopped original-history
source carrier, without defining \(Z^S\) or \(R_{\rm stop}\) from the future
selected tail.

## 3. Relation to the primitive PLS audit

The post tangent-normal audit identifies the primitive graph-compatible driver:

```math
d\Omega_N^{PLS,primitive}
\simeq
\sum_j w_j
\left[
\left\langle
H_{j,N},
\mathcal M_{<j-C,N}H_{j,N}
\right\rangle
\right]_+dt
+
dR_N^{paid}.
\tag{11}
```

Here \(\mathcal M_{<j-C,N}\) is the same low material coefficient made from
strain, pressure Hessian through the strain equation, coefficient/frame motion,
Hodge/Stokes projection motion, transported collar motion, and viscous graph
service.

The retained-coefficient compactness branch is closed.  The remaining way to
avoid the rigidity argument is escape or positive variation of that low
material coefficient:

```math
\int_{I_m}
\|\mathcal M_{<j-C,N,m}(t)\|_{\mathcal X_N}\,dt
\to\infty
\quad
\text{or concentrates without retained limit}.
\tag{12}
```

That is exactly the continuation-depth material record.  It is also the
fresh one-way affine no-Zeno chain read in graph-driver coordinates.

So `StoppedFreeMaterialGraphDriverCarleson.A` is not another local pressure
repair.  It is the stopped form of the primitive PLS positive-variation theorem.

## 4. Why this is a stricter target than the previous reduction

The previous note still allowed a misleading reading:

```text
prove a bounded-below pressure/operator plus collar symmetrizer.
```

The graph split says the normal pressure/collar symmetrizer already has the
right job.  It pays \(W_N\), and \(W_N\) is exact-zero globally or
interface/legal locally.  The tangent graph motion is not a defect to be paid
by Schur.  It is free-material PLS motion.

Therefore the corrected stopped route is:

```text
relative Schur defect:
  discharged by graph collapse / interface-legal split;

pressure/collar tangent motion:
  becomes free-material graph driver;

stopped no-Zeno burden:
  prove stopped free-material graph-driver Carleson + paid reselection.
```

## 5. Result

`StoppedPressOpCollarCarrierSymmetrizer.A` is reduced, not solved as the Gold
route.  Its pressure/collar normal-defect part is already graph-compatible
support.  The active nonduplicate hinge is:

```text
StoppedFreeMaterialGraphDriverCarleson.A
```

Proving it would produce the stopped-root carrier bound and paid reselection
Carleson estimate, activate the installed stopped martingale reverse-Holder
consumer, beat the selected half-tail, and close `FreshAffineMaterialTimeNoZeno.A`.
