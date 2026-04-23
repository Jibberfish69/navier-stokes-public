# MPP LCI.A Affine-Defect To First-Rung Bridge Note

## Status

Candidate theorem-facing note.

Role: close the missing bridge from the affine-frame defect package to the
first center rung on the current lower-carrier route.

## Installed Inputs

1. [mpp-lci-a-affine-frame-defect-note.md](/Users/thomasbirnie/Workspace/ToE/Research-Consolidation/problems/navier-stokes/theorem-construction/mpp-lci-a-affine-frame-defect-note.md)
2. [mpp-lower-carrier-interval-integrability-theorem-program.md](/Users/thomasbirnie/Workspace/ToE/Research-Consolidation/problems/navier-stokes/theorem-construction/mpp-lower-carrier-interval-integrability-theorem-program.md)
3. [mpp-lci-a-transported-center-residual-forcing-note.md](/Users/thomasbirnie/Workspace/ToE/Research-Consolidation/problems/navier-stokes/theorem-construction/mpp-lci-a-transported-center-residual-forcing-note.md)

## Purpose

```math
\boxed{
\text{use the affine frame itself, not a scalar coercivity theorem on }|U_1|,
\text{ to recover the first center rung from the affine-defect ledger.}
}
\tag{AFB.0}
```

## License Boundary

This note stays inside the installed affine-frame route
`LCI.B2g5k`--`LCI.B2g5q`.

It does **not** restore a bare comparison theorem on the full carrier
`|U_1(c_j(t),t)|`.
It does **not** claim the affine-defect package is unnecessary.
Its narrower claim is that once the affine defect is integrable, the first
center rung itself is recovered through the deformation frame acceleration law.

## Exact Frame-Acceleration Identity

For each transported center `c_j(t)=\Phi(a^j,t)`, write

```math
A_j(t):=U_1(c_j(t),t),
\qquad
\dot G_j(t)=A_j(t)\,G_j(t),
\qquad
G_j(t_0)=I,
\tag{AFB.1}
```

and retain the forcing matrix from `(LCI.3c3z19an)`:

```math
\mathcal E_j^{(1)}(t)
:=
-\nabla^2 p_j^{loc}(c_j(t),t)
-\nabla^2 h_j(c_j(t),t)
+\nu\Delta U_1(c_j(t),t).
\tag{AFB.2}
```

### Lemma `AFB.1a` (The affine frame sees only the residual forcing at second order)

For almost every `t\in I`,

```math
\ddot G_j(t)
=
\mathcal E_j^{(1)}(t)\,G_j(t).
\tag{AFB.3}
```

### Proof

Differentiate `(AFB.1)`:

```math
\ddot G_j
=
\dot A_j\,G_j
+
A_j\,\dot G_j.
\tag{AFB.4}
```

By the exact first-rung matrix law `(LCI.3c3z19ao)`,

```math
\dot A_j
=
-A_j^2
+
\mathcal E_j^{(1)}.
\tag{AFB.5}
```

Insert `(AFB.5)` into `(AFB.4)` and use `\dot G_j=A_jG_j` again:

```math
\ddot G_j
=
(-A_j^2+\mathcal E_j^{(1)})G_j
+
A_j(A_jG_j)
=
\mathcal E_j^{(1)}G_j.
\tag{AFB.6}
```

This is `(AFB.3)`. ∎

## Deformation-Frame Bridge

### Proposition `AFB.A` (Affine-defect integrability recovers the first center rung)

Assume:

1. finite seed center data at `t_0\in I`;
2. the bounded pack-side gauge `(LCI.3c3y0)`;
3. the affine-defect integrability statement

```math
\mathfrak D_{1,\rho,\psi}^{aff}\in L^1(I).
\tag{AFB.A0}
```

Then

```math
\sup_{t\in I}\mathfrak A_{1,\rho,\psi}^{ctr}(t)<\infty.
\tag{AFB.A1}
```

In particular,

```math
\mathfrak A_{1,\rho,\psi}^{ctr}\in L^2(I).
\tag{AFB.A2}
```

So the bridge demanded in `(AFD.5b)` holds, and in fact a stronger
`L^\infty(I)` conclusion is available on the current route.

### Proof

By definition of the affine defect `(LCI.3c3z19az4)`,

```math
\sum_{j=1}^{J}\big|\mathcal E_j^{(1)}(t)\big|
\le
\mathfrak D_{1,\rho,\psi}^{aff}(t)
\qquad
\text{for almost every }t\in I.
\tag{AFB.A3}
```

So `(AFB.A0)` implies

```math
\sum_{j=1}^{J}\big|\mathcal E_j^{(1)}\big|
\in L^1(I).
\tag{AFB.A4}
```

Next, `LCI.B2g5p` identifies `G_j` with the center deformation frame
`F_j(t)=F(a^j,t)F(a^j,t_0)^{-1}`, and under the bounded pack-side gauge
`(LCI.3c3y0)` it gives a uniform bound

```math
|G_j(t)|+|G_j(t)^{-1}|
\le
C_{\rho,\psi,I}
\qquad
(1\le j\le J,\ t\in I).
\tag{AFB.A5}
```

Combine `(AFB.3)`, `(AFB.A4)`, and `(AFB.A5)`:

```math
\sum_{j=1}^{J}|\ddot G_j(t)|
\le
C_{\rho,\psi,I}
\sum_{j=1}^{J}\big|\mathcal E_j^{(1)}(t)\big|
\in L^1(I).
\tag{AFB.A6}
```

Because `G_j(t_0)=I`, one has

```math
\dot G_j(t_0)=A_j(t_0)=U_1(c_j(t_0),t_0).
\tag{AFB.A7}
```

Finite seed center data therefore gives

```math
\sum_{j=1}^{J}|\dot G_j(t_0)|<\infty.
\tag{AFB.A8}
```

Integrating `(AFB.A6)` from `t_0` to `t` yields

```math
\sum_{j=1}^{J}|\dot G_j(t)|
\le
\sum_{j=1}^{J}|\dot G_j(t_0)|
+
\int_I\sum_{j=1}^{J}|\ddot G_j(s)|\,ds
\le
C_{\rho,\psi,I,t_0}
+
C_{\rho,\psi,I}
\int_I\mathfrak D_{1,\rho,\psi}^{aff}(s)\,ds.
\tag{AFB.A9}
```

So

```math
\sup_{t\in I}\sum_{j=1}^{J}|\dot G_j(t)|<\infty.
\tag{AFB.A10}
```

Finally, from `A_j=\dot G_j\,G_j^{-1}` and `(AFB.A5)`,

```math
|A_j(t)|
\le
C_{\rho,\psi,I}\,|\dot G_j(t)|.
\tag{AFB.A11}
```

Summing over `j` and using `(LCI.3c3z6a)` gives

```math
\mathfrak A_{1,\rho,\psi}^{ctr}(t)
=
\sum_{j=1}^{J}|A_j(t)|
\le
C_{\rho,\psi,I}
\sum_{j=1}^{J}|\dot G_j(t)|.
\tag{AFB.A12}
```

Insert `(AFB.A10)` into `(AFB.A12)` to obtain `(AFB.A1)`. Since `I` is finite,
`(AFB.A1)` implies `(AFB.A2)`. ∎

## Exact Consequence For The Residual Receiver Route

### Corollary `AFB.B` (The first-rung bridge no longer needs the frozen input `RCF.2`)

Assume the package of `AFD.A`, namely:

1. the enlarged-ball oscillation theorem `EOC.A`;
2. the bounded pack-side gauge `(LCI.3c3y0)`;
3. finite seed center data at `t_0\in I`;
4. the rung-0 center forcing
   `\mathfrak K_{0,\rho,\psi}^{ctr}\in L^1(I)`;
5. the explicit residual supplier pair
   `\mathfrak T_{1,\rho,\psi}^{press,far}
   +
   \mathfrak K_{1,\rho,\psi}^{visc,ctr}\in L^1(I)`.

Then `AFD.A` gives `\mathfrak D_{1,\rho,\psi}^{aff}\in L^1(I)`, and
Proposition `AFB.A` yields

```math
\sup_{t\in I}\mathfrak A_{1,\rho,\psi}^{ctr}(t)<\infty.
\tag{AFB.B0}
```

So the transported-center first-rung input frozen in the residual-forcing note
as `(RCF.2)` is recoverable from the affine-defect package on the current
route.

## Boundary

This note does **not** prove `AFD.A` itself. The enlarged-ball oscillation
supplier and the first-rung explicit forcing package still have to be supplied
there exactly as already recorded on disk.

Its narrower result is only the bridge:

```math
\mathfrak D_{1,\rho,\psi}^{aff}\in L^1(I)
\Longrightarrow
\mathfrak A_{1,\rho,\psi}^{ctr}\in L^\infty(I)\subset L^2(I).
\tag{AFB.7}
```
