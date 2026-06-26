---
theorem_id: forward-gold-root-reserve-minimal-bad-chain-compactness-test-20260626
status: direct-attack-installed-minimal-bad-chain-compactness-does-not-produce-root-reserve
created: 2026-06-26
problem: navier-stokes
route: forward-gold
logical_landing_node: GlobalSamePacketFullClockFromOriginalData.A
attacks_hinge: RootPositiveFluxReserveCoercivity.A
source_surfaces:
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-root-positive-flux-reserve-tail-equivalence-20260626.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-laminar-positive-flux-inheritance-direct-attack-20260626.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-full-action-superheat-compactness-nobypass-20260626.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-same-history-critical-sample-compactness-rigidity-test-20260625.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-localized-affine-global-matching-scaling-audit-20260626.md
---

# Root Reserve Minimal Bad Chain Compactness Test

This note tests whether the remaining root reserve can be obtained by a
minimal-bad-chain compactness argument.

The live hinge is:

```text
RootPositiveFluxReserveCoercivity.A
```

The previous tail-equivalence note shows that the canonical inheritable reserve
is the descendant action tail.  Hence root finiteness of that reserve is exactly
the missing first-ratio theorem.  A noncircular proof would have to construct a
different same-material reserve, finite from original data.

## 1. Minimal bad laminar chain

Assume the weight-beating tail fails on one retained same-material laminar
family.  After the already-installed paid nonlaminar exits, select a laminar
chain

```math
Q_0\supset Q_1\supset Q_2\supset\cdots
```

and normalize each bad child so that

```math
A(Q_k)\ge c_0>0,
\tag{MBC.1}
```

while its raw physical cost is radius-weighted:

```math
E_{\rm raw}(Q_k)+D_{\rm raw}(Q_k)+R_{\rm fixed\ collar}(Q_k)
\lesssim r_k,
\qquad
\sum_k r_k<\infty .
\tag{MBC.2}
```

This is exactly the localized affine half-tail scaling: raw mass is summable,
normalized same-material action is not.

## 2. What compactness gives

Rescale each \(Q_k\) to the unit heat packet:

```math
V_k(s,y)=r_k u(t_k+r_k^2s,x_k+r_ky),
\qquad
Q_k^{p}(s,y)=r_k^2 p(t_k+r_k^2s,x_k+r_ky).
\tag{MBC.3}
```

The normalized packet can have order-one local energy, strain, pressure, and
material-frame action.  Passing to a subsequence gives the same output as the
existing critical-sample compactness test:

```math
(V_k,Q_k^{p})
\rightharpoonup
(V,Q)
```

as a local suitable packet, possibly with a terminal boundary defect.

The unit lower bound `(MBC.1)` persists only as a normalized local action or
boundary-defect package.  Compactness does not automatically convert it into a
global finite-energy ancient solution, a no-waste critical element, or a
rigidity class.

## 3. Why the installed rigidity does not kill the limit

The local affine normal form remains admissible at the packet level.  On a
fixed normalized ball one may have

```math
V(s,y)=A(s)y,
\qquad
\operatorname{tr}A(s)=0,
```

with pressure chosen so that the local incompressible Navier--Stokes law holds.
The viscous Laplacian of the affine core is zero, while the strain and material
metric action are nonzero.

Global periodicity and divergence-free matching are present in the original
solution, but after zooming into one child packet their cost is pushed into the
collar/boundary-defect package.  The localized affine matching audit shows that
this global matching has raw cost \(O(r_k)\), hence it can remain summable while
the normalized child action remains order one.

Thus the minimal compactness limit is not contradicted by:

```text
zero local viscous core,
local pressure compatibility,
same-packet annular attachment,
or gauge/null rigidity of zero-loss packets.
```

The bad chain is not zero loss.  It carries unit normalized action in each
child while paying only radius-weighted raw physical cost.

## 4. Consequence for the root reserve

A compactness proof would need to show that the boundary/collar/global matching
defect retained from the ancestors has a finite root measure that still counts
the unweighted child actions:

```math
\sum_k A(Q_k)
\le
C_N(u_0)+R_{\rm legal}.
\tag{MBC.4}
```

But `(MBC.4)` is precisely the first-ratio tail theorem on the chain.  The
compactness argument supplies the normalized limit package; it does not supply
the finite unweighted root measure.

Equivalently, any Bellman reserve obtained by summing the future child action
is the descendant-tail reserve \(B_*\), whose root finiteness is already
equivalent to `(MBC.4)`.

## 5. Result

Minimal-bad-chain compactness is a useful audit, not a closure theorem.

It proves that a failed first-ratio tail produces a same-history local suitable
packet plus terminal/collar defect package.  Current installed rigidity does
not rule out that package, because localized affine material-time profiles
survive the local Navier--Stokes identities and global matching remains
radius-weighted.

Therefore the active Gold hinge is unchanged and sharper:

```math
\boxed{
\sum_{\ell\ge0}2^\ell\nu_\ell<\infty
}
```

or equivalently a bounded-below same-material storage / reserve whose root
value is finite from original smooth data and whose derivative pays the
unweighted high-ratio action.

