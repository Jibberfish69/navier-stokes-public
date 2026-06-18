# MPP LCI.A Weighted Center-Aggregate Reduction Note

## Status

Candidate theorem-facing note.

Role: isolate the exact weighted aggregate reduction beneath `RCF.A` that
absorbs the recycled lower-viscous `q\mapsto q+2` terms from `LCI.B2g4` while
keeping the transported-center package `(RCF.1)`--`(RCF.2)` frozen exactly as
installed.

## Installed Inputs

1. [mpp-lci-a-transported-center-residual-forcing-note.md](/Users/thomasbirnie/Workspace/ToE/Research-Consolidation/problems/navier-stokes/theorem-construction/mpp-lci-a-transported-center-residual-forcing-note.md)
2. [mpp-lower-carrier-interval-integrability-theorem-program.md](/Users/thomasbirnie/Workspace/ToE/Research-Consolidation/problems/navier-stokes/theorem-construction/mpp-lower-carrier-interval-integrability-theorem-program.md)
3. [mpp-lci-a-affine-frame-defect-note.md](/Users/thomasbirnie/Workspace/ToE/Research-Consolidation/problems/navier-stokes/theorem-construction/mpp-lci-a-affine-frame-defect-note.md)

## Purpose

```math
\boxed{
\text{replace the false rungwise induction beneath }RCF.A\text{ by one weighted center aggregate that absorbs the recycled lower-viscous forcing and leaves one residual higher-rung multilinear source.}
}
\tag{WCA.0}
```

## License Boundary

This note keeps the current `RCF.A` license exactly as written.

It treats:

1. the local Holder oscillation ledger `(RCF.1)`,
2. the first center-rung bound `(RCF.2)`,
3. the bounded pack-side gauge `(LCI.3c3y0)`,
4. the residual forcing hypothesis `(RCF.A0)`

as imported package inputs.

It does **not** replace `(RCF.2)` by the sharper affine-defect package from
[mpp-lci-a-affine-frame-defect-note.md](/Users/thomasbirnie/Workspace/ToE/Research-Consolidation/problems/navier-stokes/theorem-construction/mpp-lci-a-affine-frame-defect-note.md).
It does **not** return to the coarse scalar/Osgood collapse. Its narrower job
is only to expose the exact center-system reduction that still sits underneath
`RCF.A`.

## Why The Naive Rungwise Induction Fails

### Reduction `WCA.1` (After `LCI.B2g4`, the `q`-th center equation is not closed under lower-rung data)

For every `0\le q\le m-2`, combining `(LCI.3c3z8a)` with `(RCF.8)` yields

```math
\frac{d}{dt}\mathfrak A_{q,\rho,\psi}^{ctr}(t)
\le
\mathfrak K_{q,\rho,\psi}^{press,ctr}(t)
+
C_q\,\nu\,\mathfrak A_{q+2,\rho,\psi}^{ctr}(t)
+
\mathfrak N_{q,\rho,\psi}^{ctr}(t),
\tag{WCA.1a}
```

where `\mathfrak N_{q,\rho,\psi}^{ctr}` denotes the quadratic center terms
already present in `(LCI.3c3z16)`--`(LCI.3c3z17)`.

So the `q`-th equation depends on the higher rung `q+2`, and the direct
bottom-up replay of `LCI.B2g3` is false beneath `RCF.A`. Any correct closure
must absorb the recycled `q\mapsto q+2` family across the whole center system.

### Proof

Substitute the recycled-center identity `(RCF.8)` into the center ODE
`(LCI.3c3z15)`. The pressure term gives
`\mathfrak K_{q,\rho,\psi}^{press,ctr}`, the viscous recycled-center term gives
`C_q\nu\mathfrak A_{q+2,\rho,\psi}^{ctr}`, and the quadratic center terms are
the terms already listed in `(LCI.3c3z16)`--`(LCI.3c3z17)`. This is exactly
`(WCA.1a)`.
∎

## Weighted Center Aggregate

Choose positive weights `\omega_0,\dots,\omega_m` satisfying

```math
2C_q\,\nu\,\omega_q\le \omega_{q+2}
\qquad
(0\le q\le m-2).
\tag{WCA.2}
```

Such a finite family exists, for example by setting `\omega_0=\omega_1=1` and
choosing `\omega_{q+2}` recursively large enough to satisfy `(WCA.2)` at each
step.

Define the weighted center aggregate

```math
\mathfrak A_{N,m,\rho,\psi}^{ctr,w}(t)
:=
\sum_{q=0}^{m}\omega_q\,
\mathfrak A_{q,\rho,\psi}^{ctr}(t),
\tag{WCA.3}
```

the weighted higher-rung multilinear source

```math
\mathfrak Q_{N,m,\rho,\psi}^{ctr,w}(t)
:=
\sum_{q=3}^{m}\omega_q
\sum_{\ell=2}^{q-1}
\mathfrak A_{\ell,\rho,\psi}^{ctr}(t)\,
\mathfrak A_{q+1-\ell,\rho,\psi}^{ctr}(t),
\tag{WCA.4}
```

and the frozen first-rung constant

```math
M_{1,\rho,\psi}^{ctr}
:=
\sup_{t\in I}\mathfrak A_{1,\rho,\psi}^{ctr}(t)
<
\infty.
\tag{WCA.5}
```

## Main Weighted Reduction

### Proposition `WCA.A` (The weighted center aggregate absorbs the lower-viscous recycle)

Under `(RCF.2)` and `(RCF.2a)`, there is a constant
`C_{N,m,\rho,\psi,\nu,\omega}>0` such that for almost every `t\in I`,

```math
\frac{d}{dt}\mathfrak A_{N,m,\rho,\psi}^{ctr,w}(t)
\le
C_{N,m,\rho,\psi,\nu,\omega}\,
\mathfrak F_{N,m,\rho,\psi}^{ctr,res}(t)
+
C_{N,m,\rho,\psi,\nu,\omega}
\big(
1+M_{1,\rho,\psi}^{ctr}
\big)
\mathfrak A_{N,m,\rho,\psi}^{ctr,w}(t)
+
C_{N,m,\rho,\psi,\nu,\omega}\,
\mathfrak Q_{N,m,\rho,\psi}^{ctr,w}(t).
\tag{WCA.A0}
```

In particular, after the weight choice `(WCA.2)`, the lower-viscous
`q\mapsto q+2` recycle no longer appears as a separate unresolved source. The
only nonlinear source left outside the imported first-rung package is the
higher-rung multilinear ledger `\mathfrak Q_{N,m,\rho,\psi}^{ctr,w}`.

### Proof

Start from the rungwise system `(LCI.3c3z15)`--`(LCI.3c3z17)`.

For `q=0`, one has

```math
\frac{d}{dt}\mathfrak A_{0,\rho,\psi}^{ctr}
\le
\mathfrak K_{0,\rho,\psi}^{ctr}.
\tag{WCA.A1}
```

For `q=1`, `(LCI.3c3z16)` gives

```math
\frac{d}{dt}\mathfrak A_{1,\rho,\psi}^{ctr}
\le
\mathfrak K_{1,\rho,\psi}^{ctr}
+
C_1\,
\mathfrak A_{1,\rho,\psi}^{ctr\,2}.
\tag{WCA.A2}
```

Since `(RCF.2)` freezes
`\mathfrak A_{1,\rho,\psi}^{ctr}\le M_{1,\rho,\psi}^{ctr}`, the only genuinely
self-quadratic rung is converted into a linear contribution:

```math
\mathfrak A_{1,\rho,\psi}^{ctr\,2}
\le
M_{1,\rho,\psi}^{ctr}\,
\mathfrak A_{1,\rho,\psi}^{ctr}.
\tag{WCA.A3}
```

For every `2\le q\le m`, `(LCI.3c3z17)` gives

```math
\frac{d}{dt}\mathfrak A_{q,\rho,\psi}^{ctr}
\le
\mathfrak K_{q,\rho,\psi}^{ctr}
+
C_q\,
\mathfrak A_{1,\rho,\psi}^{ctr}\,
\mathfrak A_{q,\rho,\psi}^{ctr}
+
C_q\sum_{\ell=2}^{q-1}
\mathfrak A_{\ell,\rho,\psi}^{ctr}\,
\mathfrak A_{q+1-\ell,\rho,\psi}^{ctr}.
\tag{WCA.A4}
```

Use `(RCF.8)` for every `0\le q\le m-2` and the defining residual ledger
`(RCF.7)` for the pressure terms and the top two viscous terms. After weighting
by `\omega_q` and summing over `q=0,\dots,m`, the pressure-center readout and
the top-two viscous ledgers are bounded by a constant multiple of
`\mathfrak F_{N,m,\rho,\psi}^{ctr,res}`.

For the lower-viscous recycle, `(WCA.2)` gives

```math
\sum_{q=0}^{m-2}
\omega_q C_q\nu\,
\mathfrak A_{q+2,\rho,\psi}^{ctr}
\le
\frac12\sum_{q=0}^{m-2}
\omega_{q+2}\,
\mathfrak A_{q+2,\rho,\psi}^{ctr}
\le
\frac12\,
\mathfrak A_{N,m,\rho,\psi}^{ctr,w}.
\tag{WCA.A5}
```

For the first-rung coefficient, `(WCA.5)` yields

```math
\mathfrak A_{1,\rho,\psi}^{ctr}\,
\mathfrak A_{q,\rho,\psi}^{ctr}
\le
M_{1,\rho,\psi}^{ctr}\,
\mathfrak A_{q,\rho,\psi}^{ctr}
\qquad
(2\le q\le m),
\tag{WCA.A6}
```

and `(WCA.A3)` gives the same reduction for `q=1`.

The remaining sums with `2\le \ell\le q-1` are exactly the multilinear ledger
`\mathfrak Q_{N,m,\rho,\psi}^{ctr,w}` from `(WCA.4)`, with only the fixed
combinatorial constant change from the finite index ranges. Collecting these
bounds yields `(WCA.A0)`. ∎

## Exact Conditional Closure Beneath `RCF.A`

### Corollary `WCA.B` (Weighted multilinear-source integrability implies `RCF.A`)

Assume the frozen transported-center package `(RCF.1)`--`(RCF.2)` and the
residual forcing hypothesis `(RCF.A0)`. Assume in addition that

```math
\mathfrak Q_{N,m,\rho,\psi}^{ctr,w}\in L^1(I).
\tag{WCA.B0}
```

Then

```math
\sup_{t\in I}\mathfrak A_{N,m,\rho,\psi}^{ctr,w}(t)<\infty,
\tag{WCA.B1}
```

hence

```math
\sup_{t\in I}\mathfrak A_{q,\rho,\psi}^{ctr}(t)<\infty
\qquad
(0\le q\le m).
\tag{WCA.B2}
```

Consequently

```math
\mathfrak K_{q,\rho,\psi}^{ctr}\in L^1(I)
\qquad
(0\le q\le m),
\tag{WCA.B3}
```

and therefore the absolute-center side closes:

```math
\mathfrak A_{N,m,\rho,\psi}^{ctr}\in L^2(I).
\tag{WCA.B4}
```

So `(RCF.A1)` holds.

### Proof

Under `(RCF.A0)` and `(WCA.B0)`, the right-hand side of `(WCA.A0)` is an
`L^1` source plus an `L^1` coefficient multiplying
`\mathfrak A_{N,m,\rho,\psi}^{ctr,w}`. Gronwall on the finite interval `I`
therefore gives `(WCA.B1)`.

Because each weight `\omega_q` is positive,
`\mathfrak A_{q,\rho,\psi}^{ctr}\le \omega_q^{-1}
\mathfrak A_{N,m,\rho,\psi}^{ctr,w}`, so `(WCA.B1)` implies `(WCA.B2)`.
Since `I` is finite, every rung is then in `L^1(I)`.

For `0\le q\le m-2`, `(RCF.8)` together with `(RCF.A0)` and `(WCA.B2)` gives
`\mathfrak K_{q,\rho,\psi}^{ctr}\in L^1(I)`. For `q=m-1,m`, the same follows
from the definition of the residual ledger `(RCF.7)`, since the pressure-center
and top-two viscous pieces are nonnegative summands of
`\mathfrak F_{N,m,\rho,\psi}^{ctr,res}`. This proves `(WCA.B3)`.

Because `(RCF.2)` already gives
`\mathfrak A_{1,\rho,\psi}^{ctr}\in L^\infty(I)\subset L^1(I)`, Corollary
`LCI.B2g3` applies and yields boundedness of the higher center rungs again from
the installed route. On the finite interval `I`, boundedness of every rung
implies `\mathfrak A_{N,m,\rho,\psi}^{ctr}\in L^2(I)`, proving `(WCA.B4)`.
This is exactly `(RCF.A1)`. ∎

## Exact Remaining Debt

After the lower-viscous recycle is absorbed by `(WCA.2)` and the only genuinely
self-quadratic rung is neutralized by `(RCF.2)`, the exact remaining
center-system debt beneath `RCF.A` is no longer the old coarse scalar/Osgood
wall. It is the higher-rung multilinear-source integrability statement

```math
\mathfrak Q_{N,m,\rho,\psi}^{ctr,w}\in L^1(I).
\tag{WCA.C0}
```

This note does **not** prove `(WCA.C0)`. It only shows that `(WCA.C0)` is the
exact residual center-system statement left once the transported-center package
and the residual forcing ledger are kept in their current installed forms.

## Boundary

If `(WCA.C0)` cannot be closed under the frozen first-rung package `(RCF.2)`,
the honest next reopening is still upstream, not a return to the old rough
scalar route. The first theorem-facing upstream reopening remains the
first-center-rung handoff isolated in
[mpp-lci-a-affine-frame-defect-note.md](/Users/thomasbirnie/Workspace/ToE/Research-Consolidation/problems/navier-stokes/theorem-construction/mpp-lci-a-affine-frame-defect-note.md),
now with its bridge back to the frozen first-rung input already closed in
stronger form. The exact route-handoff explaining why `WCA.C0` is only the
direct-coordinate residue and not a new primitive wall is now isolated in
[mpp-lci-a-weighted-center-to-affine-handoff-note.md](/Users/thomasbirnie/Workspace/ToE/Research-Consolidation/problems/navier-stokes/theorem-construction/mpp-lci-a-weighted-center-to-affine-handoff-note.md).
On the sharper energy-conditioned halo-shell branch, the companion return note
[mpp-lci-a-halo-shell-first-rung-return-note.md](/Users/thomasbirnie/Workspace/ToE/Research-Consolidation/problems/navier-stokes/theorem-construction/mpp-lci-a-halo-shell-first-rung-return-note.md)
now makes the terminal continuation explicit as well: once `HSP.A0a` is taken
as the sharper next-form target and its FEI continuation is unpacked, that
branch reopens only returned lower-carrier reads and feeds back into the
already-installed `LCI.A` route. So `WCA.C0` is not a new descendant wall on
that sharper branch either.
