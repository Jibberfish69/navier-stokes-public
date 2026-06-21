# MPP First CM-Exit Packet Reduction

## Status

Theorem-facing proof attempt.

Purpose: do the first-exit mathematics behind the non-Euler surface turnover.
The surface sweep is useful only after the first-exit packet says which
continuation slot a failure can actually break.

## Setup

Let `(u,p)` be a maximal smooth incompressible Navier--Stokes solution on
`[0,T_*)`, with `T_*<\infty` assumed for contradiction.  Work on a retained
same-fluid terminal window `Q` and at a depth `N` dominating a classical
continuation index `s>5/2`.

The CM witness is

```math
CM_{N,r,Q}:=Part_{N,Q}\wedge Field_{N,r,Q}.
```

The installed continuation packet says:

```math
Part_{N,Q} plus Field-window evidence + Field_{N,r,Q}
\Longrightarrow
\sup_{t<T_*}\|u(t)\|_{H^s}<\infty
\Longrightarrow
\text{continuation past }T_*.
\tag{FCP.1}
```

So finite terminal non-continuation forces failure of at least one packet slot:

```math
T_*<\infty
\Longrightarrow
\neg Pack_Q\vee\neg Part_{N,Q}\vee\neg Field_{N,r,Q}
```

on some retained terminal window and witness depth.

This is the start of the proof, not the end of it.

## The Three Possible Breaks

### 1. Pack

Let `A_\sharp` be the common label collar and

```math
\Gamma_\sharp(t)
:=
\sup_{a\in A_\sharp}
\max\{|D_a\Phi(a,t)|,\ |D_a\Phi(a,t)^{-1}|\}.
```

The flow-gradient law gives

```math
\frac{d}{dt}\log\Gamma_\sharp(t)
\le
C_{\mathrm{flow}}
\|\nabla u(\cdot,t)\|_{L^\infty(\Phi(A_\sharp,t))}.
\tag{FCP.2}
```

Therefore

```math
\int_I
\|\nabla u(\cdot,t)\|_{L^\infty(\Phi(A_\sharp,t))}\,dt<\infty
\Longrightarrow
Pack_Q \text{ persists on }I.
\tag{FCP.3}
```

So a genuine Pack break is exactly a same-fluid strain-integrability break.
It is not removed by the Carleson/Zeno source diagnostics.  To rule it out one
needs either the classical continuation estimate
`\int\|\nabla u\|_\infty<\infty`, or a route-native theorem producing that
collar strain ledger.

### 2. Part

The participation law is exact while the solution is smooth:

```math
D_tU_k=K_k+B_k,
\qquad
K_k=-\nabla^{k+1}p+\nu\Delta U_k.
\tag{FCP.4}
```

The installed Part-row theorem says:

```math
Part_{N,Q}\text{ preterminal}
\wedge
Field_{N,r,Q}\text{ with }r\ge r_*
\wedge
\mathfrak A_{N+1,Q}\le M_A
\Longrightarrow
Part_{N,Q}\text{ persists on the terminal tail.}
\tag{FCP.5}
```

Thus Part can break independently only by losing one of those closedness inputs:
positive field scale, next-rung tower amplitude, or the forcing/pressure readout
inside `K_k`.  In a retained Field/tower regime, Part is not a separate first
failure.

### 3. Field

If Pack and Part survive at the witness depth, the continuation packet has only
one remaining place to fail:

```math
T_*<\infty
\wedge Pack_Q
\wedge Part_{N,Q}
\Longrightarrow
\forall r>0:\neg Field_{N,r,Q}.
\tag{FCP.6}
```

This is the precise role of the Carleson and Zeno turnover.  Their selected
failure branches do not prove smoothness.  They say:

```math
\text{selected retained source-reserve / terminal-atom failure}
\wedge Pack_Q
\wedge Part_{N,Q}
\Longrightarrow
\neg Field_{N,r,Q}.
\tag{FCP.7}
```

So they land a source-type failure in the Field face once the carrier and
participation slots have not already broken.

There is one important local bypass on the Field side.  If the receiver sets
used by the enlarged-ball / collar argument stay inside one compact still-live
collar, then the still-live receiver-admission theorem supplies the pre-`CSP.A`
receiver inputs directly:

```math
\mathcal R_{\rho,\psi}^{pre}(t)\subset Q_t^{rec,+}
\quad\text{and}\quad
\sup_{Q^{rec,+}}\sum_{\ell\le N+m+6}|\nabla^\ell u|<\infty
\Longrightarrow
EOC.A.
\tag{FCP.7a}
```

Thus the retained Field obstruction is not an ordinary local regularity
problem.  If the relevant receiver packets remain inside a compact smooth
same-fluid collar, the oscillation receiver closes there.  A terminal Field
break can only persist by escaping that still-live collar, or by failing one of
the remaining explicit non-oscillation/source inputs in the lower-carrier
chain.

## First-Exit Reduction

Combining the three rows gives the actual first-exit theorem now supported by
the route:

```math
\boxed{
T_*<\infty
\Longrightarrow
\text{Pack strain-integrability failure}
\ \vee\
\text{Part closedness-input failure}
\ \vee\
\text{Field coherence/source-wall failure}.
}
\tag{FCP.A}
```

More explicitly:

```math
T_*<\infty
\Longrightarrow
\left[
\int^{T_*}\|\nabla u\|_{L^\infty(\Phi(A_\sharp,t))}\,dt=\infty
\right]
\vee
\left[
\text{loss of }r_*,\ \mathfrak A_{N+1,Q},\text{ or }K_k\text{ readout}
\right]
\vee
\left[
\forall r>0:\neg Field_{N,r,Q}
\right].
\tag{FCP.B}
```

This is sharper than the earlier surface bookkeeping.  It says Pack, Part, and
Field are not interchangeable targets:

1. Pack is a deformation/strain-integrability problem.
2. Part is a terminal closedness problem conditional on Field and next-rung
   amplitude.
3. Field is the one-field coherence/source-wall problem where Carleson and Zeno
   selected failures land.

## Attempted No-Exit Closure

To prove smoothness by this route, one must rule out all three alternatives in
`(FCP.B)`.

Pack does not close from the current facts. The argument next asks for
the `L_t^1L_x^\infty` strain ledger `(FCP.3)`, which is a classical
continuation-level estimate.

Part does not close independently from the current facts.  The installed
theorem `(FCP.5)` closes it only after positive Field scale and next-rung tower
amplitude are already retained.

Field is the live one-field branch.  The current packet route reduces its
closure to the collar/packet propagation stack:

```math
FCI.5f + CSP.A
\Longrightarrow
\text{packet-local closure}
\Longrightarrow
Field_{N,r,Q}.
\tag{FCP.8}
```

Inside `CSP.A`, the present reduction reaches the lower same-fluid carrier
ledger:

```math
\Gamma_{N,m,\rho,\psi}^{low}\in L^1(I),
\tag{FCP.9}
```

with the lower-carrier theorem surface recording the remaining center-ball /
affine-defect / residual-forcing supplier debt.

Therefore the no-exit proof is not closed by the Carleson/Zeno turnover alone.
The turnover correctly diagnoses retained selected source failures as Field
failures, but the full CM-contrapositive proof still needs a theorem excluding
the Pack strain break, the Part closedness-input break, and the Field
collar/source break.

## Mathematical Consequence

The refined method is valid, but its current theorem content is the reduction
`(FCP.A)`, not a completed Navier--Stokes smoothness proof.

The next object-level theorem is not another surface sweep.  It is one of:

```math
\text{Pack strain integrability on the terminal collar,}
\tag{FCP.10}
```

```math
\text{Part closedness without importing the Field conclusion,}
\tag{FCP.11}
```

or

```math
CSP.A + FCI.5f
\quad\text{with the lower-carrier/source supplier debts closed.}
\tag{FCP.12}
```

Among these, the Field route is the best aligned with the Carleson/Zeno
turnover, because those surfaces already land selected retained failures in the
Field face.  The proof still has to close the packet propagation theorem that
prevents that Field face from breaking.
