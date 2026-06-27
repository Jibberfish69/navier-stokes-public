---
theorem_id: forward-gold-silent-source-to-primitive-half-tail-integration-20260627
status: integration-installed-silent-source-local-escape-closed-global-half-tail-still-open
created: 2026-06-27
problem: navier-stokes
route: forward-gold same-material selected-density / primitive PLS high-ratio tail
logical_landing_node: GlobalSamePacketFullClockFromOriginalData.A
integrates:
  - SilentKernelSourceOriginNormalForm.A
  - BoundaryFlatSelectedCarrierExchangeCharge.A
  - InvisibleChildBlowupRigidity.A
  - StoppedSourceCarrierAndPaidReselection.A
  - MovingLowHighInterfaceSelectedAtom.A
  - MovingLowHighInterfaceLowerEdge.A
  - PrimitivePLSNoFreeUpcrossing.A
  - PrimitivePLSBoundedBelowLyapunov.A
  - WeightBeatingTailLaw.A
source_surfaces:
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-silent-source-zero-cost-rigidity-inclusion-20260627.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-silent-interior-source-normal-form-audit-20260627.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-selector-stopped-source-carrier-reduction-20260627.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-moving-lowhigh-interface-lower-edge-direct-test-20260627.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-complete-frame-tracefree-primitive-pls-payment-20260625.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-installed-support-axioms-half-tail-model-no-go-20260626.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-weighted-laminar-ancestry-reserve-audit-20260626.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-selected-capacity-goodlambda-weight-tail-equivalence-20260626.md
  - system/meta/research-os/proof-relay/state.yaml
verified_at: 2026-06-27T02:37:55Z
---

# Silent-source fork to primitive half-tail integration

The silent interior source attack is the right local correction.  A parent
Schur trace cannot see every interior source, because boundary-flat pressure
potentials exist:

```math
f=L_Aw,
\qquad
w|_{\partial Q}=0,
\qquad
\partial_{\nu_A}w|_{\partial Q}=0.
\tag{1}
```

So the proof cannot ask the boundary to detect all interior elliptic sources.
It must classify what the silent source is inside the retained same-material
packet.

## 1. Local silent-source escape is closed

The installed zero-cost rigidity statement is:

```math
\ker(\text{parent Schur trace})
\cap
\{\text{retained selected pressure-Hodge carriers}\}
\cap
\{\text{zero same-material strain/exchange charge}\}
=\{0\}.
\tag{2}
```

Equivalently, an invisible child is either an unselected pressure potential or
a selected source with same-material strain/exchange charge.

As a projected pressure force,

```math
\mathbb P_A(A^\top\nabla_aw)=0.
\tag{3}
```

So the silent pressure-potential branch is gauge/constraint material and has no
selected projected-force action.

If the same silent potential is genuinely selected, it is selected through the
strain Hessian.  In the material strain equation,

```math
D_tS+S^2+\Omega^2+\nabla_A^2q
=
\nu\Delta_AS+\mathcal C_A^{legal},
\tag{4}
```

the silent component \(q=w\) gives, for a selected direction \(e\),

```math
[-e\cdot\nabla_A^2w\,e]_+
\le
[D_t(e\cdot Se)]_+
+|S|^2
+|\Omega e|^2
+\nu|\Delta_AS|
+|\mathcal C_A^{legal}|.
\tag{5}
```

Thus a selected silent source is not zero-cost.  It is routed into the
top-strain, complete-frame exchange, viscous/radius, and legal channels of the
same packet.

The local parent-drop consequence is therefore the augmented law:

```math
\sum_{Q'\in ch(Q)}A(Q')
\le
C\langle U_Q,\mathsf S_QU_Q\rangle
+C\Omega_Q^{strain/ex}
+CD_Q^{vis/rad}
+CR_{\rm legal}(Q).
\tag{6}
```

The pressure-visible branch is paid by the parent Schur defect.  The
Schur-silent selected branch is paid by same-material strain/exchange.  This
removes the local invisible-child escape.

## 2. Why this is not global closure

The complete-frame primitive payment closes the orientation gap:

```math
[p\cdot Sp]_+
\le
[-\widehat\xi\cdot S\widehat\xi]_+
+[-n\cdot Sn]_+.
\tag{7}
```

This proves that a positive primitive selected pump has a same-packet
compression partner: either wave-covector compression or packet-normal
collar compression.

But `(7)` is an orientation/payment identity, not a finite-total theorem.  The
installed half-tail model satisfies the same orientation law while keeping
finite raw mass and infinite selected first-ratio action:

```math
\nu_\ell={2^{-\ell}\over \ell+1},
\qquad
\sum_{\ell\ge0}\nu_\ell<\infty,
\qquad
\sum_{\ell\ge0}2^\ell\nu_\ell=\infty.
\tag{8}
```

In that model every visit can be assigned a complete-frame compression payment,
but the total weighted compression/action still diverges.  Therefore local
silent-source routing and complete-frame orientation payment cannot be promoted
to Gold closure.

## 3. Selector and stopped-carrier surfaces are the same wall

The selector-correct Hilbert route is also a reduction, not an independent
closure.  On fixed retained carriers, stochastic-exponential martingale BMO is
available once the fixed-carrier Hilbert square function and paid error bounds
are supplied.

The unfrozen selector statement is false: a selector can change label, cutoff,
projection, rung, or packet while the physical Hilbert increment is zero.  The
stopped source-carrier reduction therefore replaces global selector
nondegeneracy with:

```text
StoppedIndependentRootHilbertCarrierBound.A
+
PaidReselectionStoppingCarleson.A.
```

Unpaid reselection is not a new fourth route.  It is the selected critical
half-tail in reselection coordinates.  The stopped Hilbert root bound is
noncircular only when the carrier is generated by the original visible/silent
/ exchange history, not by the future selected descendant density.

## 4. Joint low-high interface also reduces to the same wall

The selected-scale native reserve atom was reduced to the moving low-high
pressure-stress / cubic-collar interface.  The direct lower-edge test then
showed:

```text
MovingLowHighInterfaceSelectedAtom.A
+
MovingLowHighInterfaceLowerEdge.A
```

is still not the final lower edge.  Center-energy storage pays the positive
annular entrance only after opposite-sign return is paid.  Recirculation and
opposite-sign return have already been reduced/paid.  The remaining branch is
one-way positive material-record growth in the primitive same-material driver.

Thus the current proof-relay hinge is:

```text
PrimitivePLSNoFreeUpcrossing.A
+
PrimitivePLSBoundedBelowLyapunov.A.
```

In formulas, the unresolved strict absorption form is:

```math
d\Omega_N^{grow}
\le
\theta\,d\Omega_N^{PLS,primitive}
+dR_N,
\qquad
0\le\theta<1,
\qquad
\int dR_N<\infty.
\tag{9}
```

The equivalent lower-edge storage form is:

```math
d\mathscr A_N
+c_Nd\Omega_N^{PLS,primitive}
\le
dR_N,
\qquad
\mathscr A_N\ge -C_N(u_0),
\qquad
\int dR_N<\infty.
\tag{10}
```

## 5. Laminar ancestry is the skeleton, not the reserve

The high-ratio half-tail must live on one original transported material
history.  After paid nonlaminar exits, the surviving visits form a laminar
same-material ancestry forest.  On each ancestry line, repeated visits are
taxed by Cauchy-Green deformation, complete-frame projective variation,
collar-normal separation, and annular turnstile variation.

The remaining theorem is the global weighted reserve for that forest, not
bare laminarity:

```math
\sum_{\gamma}a_\gamma
\le
C
\int_{\mathcal F_{\rm lam}}
\bigl(V_C+V_F+V_{\rm collar}+V_{\rm turnstile}\bigr)
\,d\mathcal R_{\rm ancestry}
+R_{\rm legal},
\tag{11}
```

with the right side finite from original data and strong enough to dominate

```math
\sum_{\ell\ge0}2^\ell\nu_\ell.
\tag{12}
```

Ordinary material volume or raw dissipation only sees

```math
\sum_{\ell\ge0}\nu_\ell,
\tag{13}
```

and therefore misses the critical factor \(2^\ell\).

## 6. Integrated current state

The silent-source fork is now settled locally:

```math
\text{boundary-flat source}
\Longrightarrow
\text{unselected pressure potential}
\quad\text{or}\quad
\text{selected strain/exchange service}.
\tag{14}
```

The remaining Gold wall is global:

```math
\boxed{
\sum_{\ell\ge0}2^\ell\nu_\ell<\infty
}
\tag{15}
```

or any equivalent form:

```text
PrimitivePLSNoFreeUpcrossing.A,
PrimitivePLSBoundedBelowLyapunov.A,
StoppedSourceCarrierAndPaidReselection.A with noncircular root bound,
GlobalWeightedLaminarAncestryVariationReserve.A,
SelectedCriticalStrainCapacityGoodLambda.A.
```

These are not separate independent problems.  They are the same remaining
first-ratio / selected-density gain in different coordinates.

This note prevents three stale returns:

1. Do not return to Schur-only observability.  Silent sources can be boundary
   flat.
2. Do not claim complete-frame payment as finite total action.  It pays
   orientation and is satisfied by the critical half-tail model.
3. Do not treat moving selector, joint interface, stopped carrier, capacity,
   and laminar ancestry as independent frontiers.  After the installed
   reductions, all point to the same strict high-ratio tail gain.
