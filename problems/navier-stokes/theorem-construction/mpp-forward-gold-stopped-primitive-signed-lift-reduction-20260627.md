---
theorem_id: forward-gold-stopped-primitive-signed-lift-reduction-20260627
status: signed-lift-reduced-to-primitive-commutator-identity-cocycle-boundary
created: 2026-06-27
problem: navier-stokes
route: forward-gold same-material selected-density / repeated-core record-return
attacks_hinge:
  - StoppedPrimitivePLSSignedScalePotentialLift.A
  - RepeatedCoreRecordReturnStorageBound.A
source_surfaces:
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-source-origin-support-to-record-return-live-edge-audit-20260627.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-record-return-branch-sharp-inputs-20260627.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-fresh-common-selector-refinement-identity-repair-20260627.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-selector-stratum-crossing-bv-closure-20260627.md
  - problems/navier-stokes/theorem-construction/signed-lifted-band-scale-descent-identity.md
  - problems/navier-stokes/theorem-construction/lifted-band-upper-boundary-packet.md
---

# Stopped primitive signed-lift reduction

The repeated-core record/return branch starts only after the selected positive
driver is lifted to a signed scale-density.  The target is:

```math
Y=\partial_\sigma\Psi+S^{spill}+E,
\qquad
Y_+=Y+Y_-.
\tag{1}
```

The source-origin fork and stopped common-selector repair remove two false
obstacles from `(1)`.

First, Schur-invisible pressure-Hodge sources are no longer being detected by
the boundary.  They are classified by origin: hidden-potential material is
unselected, and retained selected material is charged to same-material
strain/exchange.

Second, independent positive selectors are removed by stopped common selection.
On one stopped chamber the selected polar readout is fixed:

```math
\pi_S(t)\in\Pi_{\rm chamber}(S),
\qquad
t\in I_S.
\tag{2}
```

Crossing to another selector chamber is not part of the signed lift.  It is paid
by the selector-stratum BV estimate:

```math
R_{\rm stop}^{unpaid}(P)
\le
C_N
\sum_{S\subseteq P}
\left(
\Omega_S^{strain/ex}+D_S^{vis/rad}
\right)
+R_{\rm legal}(P).
\tag{3}
```

So the polar compatibility issue is reduced to one fixed stopped chamber.  In
that chamber, the selected positive primitive driver may be written as the
positive part of a scalar signed readout only if the signed readout itself is
identified before positive projection:

```math
d\Omega_{S}^{PLS,primitive,+}
=
[Y_S]_+\,d\sigma dt+dR_S^{paid}.
\tag{4}
```

The installed signed lifted-band note proves the correct signed layer:

```math
\mathfrak c_\ell
=
(\ell\partial_\ell)\Psi_\ell
+\nabla_x\cdot J_\ell
+\partial_tR_\ell
+\mathcal S_\ell^{spill}
+\mathcal E_\ell.
\tag{5}
```

But `(5)` is an identity for the signed lifted commutator density
\(\mathfrak c_\ell\).  It does not yet prove `(4)` for the stopped primitive
PLS driver.  The remaining pushdown is therefore not a selector problem; it is
a signed-channel identification problem.

The exact reduction is:

```text
StoppedPrimitivePLSSignedScalePotentialLift.A
```

is proved by the following three inputs.

## 1. Primitive driver equals signed commutator channel

On each retained stopped chamber, after source-origin, spent-source,
selector/reselection, collar/spill, donor/order-lock, legal, subheat, and
recirculation removals, prove

```math
d\Omega_{S}^{PLS,primitive,+}
=
[\mathfrak c_S]_+\,d\sigma dt
+dR_S^{paid},
\tag{6}
```

where \(\mathfrak c_S\) is the same signed lifted commutator channel appearing
in `(5)`.

This is the missing theorem:

```text
PrimitivePLSDriverToSignedCommutatorIdentity.A
```

It is the place where the stopped primitive driver must be shown to be the
selected reading of the signed low-high material interaction, not a separately
chosen positive lobe.

## 2. Signed scale cocycle triviality

The signed note constructs local potential triples

```math
A_\alpha=(\Psi_\alpha,J_\alpha,R_\alpha),
\tag{7}
```

with overlap mismatch

```math
\Theta_{\alpha\beta}=A_\beta-A_\alpha.
\tag{8}
```

The signed lift needs a global stopped potential.  Thus the transportable
mismatch class must vanish:

```math
[\Theta]=0
\tag{9}
```

on the retained stopped same-material chamber.

This is the missing theorem:

```text
SignedScaleCocycleTriviality.A
```

Without `(9)`, `(5)` remains local and cannot feed the one-line BV
record/return descent.

## 3. Signed boundary and remainder barrier

After the collar-class reductions, the top scale boundary packet is

```math
\mathfrak B_N^{upper}(t)
=
\int(\partial_s\chi_{mid})(s)\Psi(s,t)\,ds.
\tag{10}
```

The required barrier is:

```math
\int_0^T|\mathfrak B_N^{upper}(t)|\,dt
\le
{\eta\nu\over 8}\int_0^T D_N(t)\,dt
+C_*2^{-2\delta N}.
\tag{11}
```

The mesoscopic residual has also been reduced to a localized middle-band
stress-strain packet, but its matching barrier is not installed by the signed
identity alone.

This is the missing theorem:

```text
SignedBoundaryRemainderBarrier.A
```

## Result

The stopped common selector and selector-stratum BV closure handle polar
movement and reselection.  They do not prove the signed lift.

The live repeated-core input is now exactly:

```text
PrimitivePLSDriverToSignedCommutatorIdentity.A
+
SignedScaleCocycleTriviality.A
+
SignedBoundaryRemainderBarrier.A
```

Together these produce

```math
d\Omega_{S}^{PLS,primitive,+}
=
[Y_S]_+\,d\sigma dt+dR_S^{paid},
\qquad
Y_S=\partial_\sigma\Psi_S+S_S^{spill}+E_S,
\tag{12}
```

which is the signed-lift input needed before the record/return BV descent can
control repeated-core selected visits.
