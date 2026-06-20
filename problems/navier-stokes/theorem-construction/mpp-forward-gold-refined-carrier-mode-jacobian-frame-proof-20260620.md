# Refined Carrier Mode-Jacobian Frame Proof

Date: 2026-06-20

## Status

Relative frame proof complete.  The lobe refinement does not create a new
Jacobian obstruction if the full packet partition, including the nodal child, is
kept in the refined mode family.

The proof is relative to the original nondegenerate modulation Jacobian.  It
does not prove `NondegenerateModulationJacobian.A` or
`GaugeFunctionalSpectralGap.A`; it proves that packet-level lobe refinement does
not destroy whichever lower frame bound those original inputs provide.

## 1. Original lower frame

Let \(G_\beta U\), \(\beta=1,\dots,d\), be the finite modulation tangent
directions.  Let \(\Psi_i\), \(i=1,\dots,N_{mode}\), be the original finite
mode tests.  Write

```math
K_{i\beta}
:=
\left\langle G_\beta U,\Psi_i\right\rangle.
\tag{RCJ.1}
```

Assume the original lower frame bound

```math
\sum_{i=1}^{N_{mode}}
\left|
\sum_{\beta=1}^d a_\beta K_{i\beta}
\right|^2
\ge
c_0^2|a|^2
\qquad
\text{for all }a\in\mathbb R^d.
\tag{RCJ.2}
```

This is the lower singular value input from the original modulation/gauge
package.

## 2. Full lobe partition of each mode test

For each mode \(i\), split the packet-realized test into positive, negative,
and nodal packet pieces:

```math
\Psi_i
=
\Psi_{i,+}^{\kappa}
+
\Psi_{i,-}^{\kappa}
+
\Psi_{i,0}^{\kappa}.
\tag{RCJ.3}
```

Here the three pieces correspond to

```math
\psi_i(P)\ge\kappa,
\qquad
-\psi_i(P)\ge\kappa,
\qquad
|\psi_i(P)|<\kappa.
\tag{RCJ.4}
```

Define the refined Jacobian entries

```math
K_{i,\sigma,\beta}^{ref}
:=
\left\langle G_\beta U,\Psi_{i,\sigma}^{\kappa}\right\rangle,
\qquad
\sigma\in\{+, -, 0\}.
\tag{RCJ.5}
```

Then

```math
K_{i\beta}
=
K_{i,+,\beta}^{ref}
+
K_{i,-,\beta}^{ref}
+
K_{i,0,\beta}^{ref}.
\tag{RCJ.6}
```

Changing the orientation on the negative lobe only multiplies
\(K_{i,-,\beta}^{ref}\) by \(-1\), which does not affect squared frame bounds.

## 3. Frame lower bound after refinement

For any \(a\in\mathbb R^d\), set

```math
z_{i,\sigma}(a)
:=
\sum_{\beta=1}^d a_\beta K_{i,\sigma,\beta}^{ref}.
\tag{RCJ.7}
```

By `(RCJ.6)`,

```math
\sum_{\beta=1}^d a_\beta K_{i\beta}
=
z_{i,+}(a)+z_{i,-}(a)+z_{i,0}(a).
\tag{RCJ.8}
```

The elementary inequality

```math
|x+y+z|^2
\le
3\left(|x|^2+|y|^2+|z|^2\right)
\tag{RCJ.9}
```

gives

```math
\sum_{\sigma\in\{+, -, 0\}}
|z_{i,\sigma}(a)|^2
\ge
{1\over3}
\left|
\sum_{\beta=1}^d a_\beta K_{i\beta}
\right|^2.
\tag{RCJ.10}
```

Summing over \(i\) and using `(RCJ.2)`,

```math
\sum_{i=1}^{N_{mode}}
\sum_{\sigma\in\{+, -, 0\}}
|z_{i,\sigma}(a)|^2
\ge
{c_0^2\over3}|a|^2.
\tag{RCJ.11}
```

Thus the full lobe-refined mode family has a lower singular value at least
\(c_0/\sqrt3\).

## 4. Why the nodal child matters

The same conclusion is false for the non-nodal pieces alone.  A mode direction
can be carried entirely by the nodal packet piece:

```math
K_{i,0,\beta}^{ref}=K_{i\beta},
\qquad
K_{i,+,\beta}^{ref}=K_{i,-,\beta}^{ref}=0.
\tag{RCJ.12}
```

Then `(RCJ.2)` can hold for the original family, while the non-nodal refined
family has zero lower singular value.

So the discharged frame theorem is the full-partition theorem.  If the proof
deletes the nodal child from the mode family rather than only paying nodal
source mass, it needs an extra input:

```math
\boxed{
\text{NonNodalModeJacobianRetention.A}.
}
\tag{RCJ.13}
```

## 5. Discharged relative bridge

The proved implication is

```math
\boxed{
\text{NondegenerateModulationJacobian.A}
+
\text{FiniteModeLobeCarrierExpansion.A with the nodal child retained}
\Longrightarrow
\text{RefinedCarrierModeJacobian.A}.
}
\tag{RCJ.14}
```

with lower singular value degraded by at most the fixed factor \(\sqrt3\).

## 6. Remaining lobe-route obligations

After `(RCJ.14)`, `RefinedCarrierModeJacobian.A` is not a separate
lobe-specific obstruction for the full packet partition.  The route still needs:

```math
\boxed{
\text{NondegenerateModulationJacobian.A}
+
\text{ModeTestCompatibility.A}
+
\text{ModeProjectedMinimalChainResidueIdentity.A on the lobe shadows}
+
\text{NodalZoneSourceEvacuation.A}.
}
\tag{RCJ.15}
```

If the mode family keeps only non-nodal lobe tests, add
`NonNodalModeJacobianRetention.A`.  If the route uses spatial lobe cutoffs
inside packets, add `RefinedCarrierCommutatorLegal.A`.

## Verdict

`RefinedCarrierModeJacobian.A` is formally controlled by the original
nondegenerate modulation Jacobian for the full packet-level lobe partition.  The
rank can be lost only if the nodal child is discarded from the mode family, or
if the original modulation Jacobian was never installed.
