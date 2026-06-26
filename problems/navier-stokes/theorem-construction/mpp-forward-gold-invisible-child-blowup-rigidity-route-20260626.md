# Invisible-child blow-up rigidity route

Status: better route proposed; proof open.

## 1. Current hinge

The live Gold hinge is now the full monotone laminar adjoint selected-capacity gain:

```math
0\le \alpha_{child}\le \alpha_{parent}\le 1,
\qquad \alpha\equiv 1 \text{ admissible}.
```

So the target is not a sparse-subtree estimate. It must pay the full selected first-ratio action, equivalently break the high-ratio half-tail barrier for the retained laminar ancestry.

Directly proving this as a positive capacity estimate keeps cycling through the same obstruction: raw capacity is finite, but selected critical-strain action is scale invariant.

## 2. Better route

Use contradiction and compactness instead of direct reserve construction.

Assume the monotone selected-capacity gain fails. Then there is a sequence of retained laminar parent-child configurations with

```math
A(Q')=1,
\qquad
\langle U_Q,(\Lambda_Q-\oplus_{Q'}\Lambda_{Q'})U_Q\rangle+R_{legal}(Q)\to 0.
```

That is: the child carries unit selected critical-strain action but is asymptotically invisible to the parent-child pressure-Hodge Dirichlet-to-Neumann Schur complement.

After rescaling on the child material scale and using the same-packet laminar ancestry structure, one should obtain a limiting packet with:

1. nonzero selected critical-strain action;
2. zero parent Schur-complement defect;
3. legal pressure-Hodge equation in the material coordinates;
4. no nonlaminar exit or collar leakage.

## 3. Exact rigidity target

The missing theorem becomes:

```math
\boxed{\text{InvisibleChildBlowupRigidity.A}}
```

Statement:

There is no nontrivial limiting laminar material packet carrying unit selected critical-strain action whose pressure-Hodge trace is invisible to the parent-child Dirichlet-to-Neumann Schur complement.

Equivalently, if the Schur-complement defect vanishes in the blow-up limit, then the selected critical-strain carrier vanishes.

## 4. Why this is better

This route does not try to estimate the selected capacity directly. It asks for a zero-defect rigidity theorem.

That is better because the obstruction is binary:

- either invisible children exist, in which case the capacity/Bellman route is genuinely false;
- or invisible children are impossible, in which case compactness gives a positive coercivity constant and hence the selected-capacity gain.

The proof tools become specific:

```math
\text{zero Schur defect}
\Rightarrow
\text{matching parent/child pressure-Hodge harmonic extensions}
\Rightarrow
\text{no interior pressure-Hodge source jump}
\Rightarrow
\text{zero selected critical-strain carrier}.
```

The analytic core is a Rellich/unique-continuation statement for the material pressure-Hodge operator coupled to the selected strain carrier.

## 5. Result

The next stronger target is not another Bellman reserve name. It is a rigidity theorem:

```math
\boxed{\text{InvisibleChildBlowupRigidity.A}}
```

If proved, it supplies the positive lower coercivity behind `SelectedActionTraceCoercivity.A`; by compactness, a failure of coercivity would generate exactly the forbidden invisible-child limit.

This is the cleanest alternative route currently visible: turn the missing quantitative lower bound into a qualitative zero-defect rigidity theorem plus compactness.