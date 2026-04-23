# MPP LCI.A First-Rung U3 Center-Ball Reduction Note

## Status

Candidate theorem-facing reduction note.

Role: compress the stronger sufficient branch `VCR.B0` from the direct
first-rung center-ball readout note to the old center-plus-oscillation package
already visible on the lower-carrier surface.

## Installed Inputs

1. [mpp-lower-carrier-interval-integrability-theorem-program.md](/Users/thomasbirnie/Workspace/ToE/Research-Consolidation/problems/navier-stokes/theorem-construction/mpp-lower-carrier-interval-integrability-theorem-program.md)
2. [mpp-lci-a-first-rung-center-ball-readout-note.md](/Users/thomasbirnie/Workspace/ToE/Research-Consolidation/problems/navier-stokes/theorem-construction/mpp-lci-a-first-rung-center-ball-readout-note.md)

## Purpose

The direct center-ball readout note isolated two objects beneath `VCS.A`:

1. the exact Laplacian-ball readout `VCR.A0`;
2. the stronger one-rung-higher `U_3` ball readout `VCR.B0`.

The second one is only a sufficient realization. The exact question here is:

```math
\boxed{
\text{does the stronger }U_3\text{-ball readout still define a genuinely new external branch,}
\text{ or is it already downstream of the old center-plus-oscillation package?}
}
\tag{U3R.0}
```

## Main Reduction

Assume `m\ge 3`, so the rung `U_3` lies inside the installed lower-carrier
package. Retain

```math
\mathfrak R_{3,\rho,\psi}^{ctr,ball}(t)
:=
\sum_{j=1}^{J}
\sup_{x\in B(c_j(t),2R_\delta)}
\big|U_3(x,t)\big|
\tag{U3R.1}
```

from `(VCR.3)`, together with the rungwise center ledger

```math
\mathfrak A_{3,\rho,\psi}^{ctr}(t)
:=
\sum_{j=1}^{J}|U_3(c_j(t),t)|
\tag{U3R.2}
```

and the fixed-ball local Holder ledger

```math
\mathfrak H_{N,m,\rho,\psi}^{osc,\alpha}(t).
\tag{U3R.3}
```

### Proposition `U3R.A` (The stronger `U_3` center-ball readout is downstream of the old center-plus-oscillation package)

Fix `0<\alpha\le \tfrac12`. Then, for every `t\in I`,

```math
\mathfrak R_{3,\rho,\psi}^{ctr,ball}(t)
\le
\mathfrak A_{3,\rho,\psi}^{ctr}(t)
+
C_{\alpha,\rho,\psi,\delta,I}\,
\mathfrak H_{N,m,\rho,\psi}^{osc,\alpha}(t).
\tag{U3R.A0}
```

### Proof

Fix `j` and `x\in B(c_j(t),2R_\delta)`. Applying the basic local Holder bound
`(LCI.3c3z5)` with `q=3` gives

```math
|U_3(x,t)-U_3(c_j(t),t)|
\le
(2R_\delta)^\alpha
\big[
U_3(\cdot,t)
\big]_{C^{0,\alpha}(B(c_j(t),2R_\delta))}.
\tag{U3R.A1}
```

Hence

```math
|U_3(x,t)|
\le
|U_3(c_j(t),t)|
+
C_{\alpha,\rho,\psi,\delta,I}\,
\big[
U_3(\cdot,t)
\big]_{C^{0,\alpha}(B(c_j(t),2R_\delta))}.
\tag{U3R.A2}
```

Take the supremum over `x\in B(c_j(t),2R_\delta)`, sum over `j=1,\dots,J`, and
use the definition of `\mathfrak H_{N,m,\rho,\psi}^{osc,\alpha}`. This yields
`(U3R.A0)`. ∎

### Corollary `U3R.B` (The stronger sufficient readout creates no new external supplier family)

If

```math
\mathfrak A_{3,\rho,\psi}^{ctr}\in L^1(I)
\qquad\text{and}\qquad
\mathfrak H_{N,m,\rho,\psi}^{osc,\alpha}\in L^1(I),
\tag{U3R.B0}
```

then

```math
\mathfrak R_{3,\rho,\psi}^{ctr,ball}\in L^1(I).
\tag{U3R.B1}
```

So the stronger sufficient branch `(VCR.B0)` is already downstream of the old
center-plus-oscillation package and does not define a genuinely new external
theorem family beneath `VCS.A`.

### Proof

Integrate `(U3R.A0)` over `I`. ∎

## Route Position

After this reduction, the direct center-ball note separates into two layers:

1. the exact Laplacian-ball readout `(VCR.A0)`, still a genuinely distinct
   candidate discharge on disk;
2. the stronger one-rung-higher `U_3` ball readout `(VCR.B0)`, now reduced to
   the old center rung `\mathfrak A_{3,\rho,\psi}^{ctr}` plus the old
   oscillation ledger `\mathfrak H_{N,m,\rho,\psi}^{osc,\alpha}`.

So the surviving distinct branch beneath `VCS.A` is no longer the stronger
`U_3` readout. It is the exact Laplacian-ball readout `(VCR.A0)`.

## Boundary

This note does **not** prove:

1. `\mathfrak A_{3,\rho,\psi}^{ctr}\in L^1(I)`;
2. `\mathfrak H_{N,m,\rho,\psi}^{osc,\alpha}\in L^1(I)`;
3. the exact Laplacian-ball readout `(VCR.A0)`.

It proves only the sharp route statement:

```math
\text{the stronger sufficient branch }(VCR.B0)\text{ is already route-internal, so the exact surviving distinct alternative is }(VCR.A0).
\tag{U3R.4}
```
