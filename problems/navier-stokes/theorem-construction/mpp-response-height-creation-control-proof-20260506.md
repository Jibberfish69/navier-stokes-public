# MPP ResponseHeightCreationControl.A Proof Run

Date: 2026-05-06

Status: direct proof run; linear forcing branch reduced to original height
dissipation; nonlinear branch reduced to mixed response flux.

Depends on:

```text
mpp-low-response-strain-charge-proof-20260506.md
mpp-viscosity-homotopy-response-height-proof-20260506.md
```

## 0. Target

The low-response-strain branch is controlled under the finite-low-norm
hypothesis.
The only remaining low-response threat is high-frequency response-height
creation:

```math
\boxed{
ResponseHeightCreationControl.A.
}
```

Define:

```math
Z_j=P_jz,
\qquad
E_j^z=\|Z_j\|_2^2,
\qquad
D_j^z=2^{2j}E_j^z,
```

and:

```math
H_k^z(t):=2^k\sum_{j>k+4}D_j^z(t).
```

The target is:

```math
\left[
H_N^z(W)-H_N^z(Past(W))-Loss_N^z(W)
\right]_+
\le
ResponseCharge_N(W)+o_N(1).
\tag{RHC.1}
```

## 1. Response Shell Energy

The response equation is:

```math
\partial_t z+\mathbb P(u\cdot\nabla z+z\cdot\nabla u)
=
\nu\Delta z+\Delta u.
\tag{RHC.2}
```

Shell-localizing and taking the `L^2` inner product with `Z_j` gives:

```math
\frac12\frac{d}{dt}E_j^z
+c\nu2^{2j}E_j^z
\le
M_j^{uz}
+M_j^{zu}
+|\langle P_j\Delta u,Z_j\rangle|
+L_j^z,
\tag{RHC.3}
```

where:

```math
M_j^{uz}
:=
|\langle P_j\mathbb P(u\cdot\nabla z),Z_j\rangle|,
\qquad
M_j^{zu}
:=
|\langle P_j\mathbb P(z\cdot\nabla u),Z_j\rangle|.
```

The linear viscosity-forcing term is:

```math
|\langle P_j\Delta u,Z_j\rangle|
\le
C2^{2j}\|u_j\|_2\|Z_j\|_2.
```

Young with the response damping gives:

```math
|\langle P_j\Delta u,Z_j\rangle|
\le
\frac{c\nu}{4}2^{2j}E_j^z
+C\nu^{-1}D_j^u.
\tag{RHC.4}
```

Multiplying `(RHC.3)` by `2^{2j}` to obtain an inequality for `D_j^z` yields:

```math
\frac{d}{dt}D_j^z
+c\nu2^{2j}D_j^z
\le
2^{2j}M_j^{uz}
+2^{2j}M_j^{zu}
+C\nu^{-1}2^{2j}D_j^u
+2^{2j}L_j^z.
\tag{RHC.5}
```

## 2. Response Height Accounting

Summing `(RHC.5)` over `j>k+4` and multiplying by `2^k` gives:

```math
\begin{aligned}
\frac{d}{dt}H_k^z(t)
+c\nu2^k\sum_{j>k+4}2^{2j}D_j^z(t)
&\le
\mathcal M_k^{resp}(t)\\
&\quad
+C\nu^{-1}2^k\sum_{j>k+4}2^{2j}D_j^u(t)
+Legal_k^z(t),
\end{aligned}
\tag{RHC.6}
```

where:

```math
\mathcal M_k^{resp}
:=
2^k\sum_{j>k+4}2^{2j}(M_j^{uz}+M_j^{zu}).
```

Thus:

```math
\boxed{
ResponseHeightCreationControl.A
\Longleftarrow
OriginalHeightDissipationCharge.A
+MixedResponseFluxControl.A.
}
\tag{RHC.7}
```

with:

```math
OriginalHeightDissipationCharge.A:
\quad
\int_W\sup_{k>N}
2^k\sum_{j>k+4}2^{2j}D_j^u(t)\,dt
\le
LegalCharge_N(W)+o_N(1),
\tag{RHC.8}
```

and:

```math
MixedResponseFluxControl.A:
\quad
\int_W\sup_{k>N}[\mathcal M_k^{resp}(t)]_+dt
\le
ResponseCharge_N(W)+o_N(1).
\tag{RHC.9}
```

## 3. Direct Closure Test

`OriginalHeightDissipationCharge.A` is stronger than the installed
first-moment tail:

```math
\int_W\sum_{j>N}D_j^u(t)dt\to0.
```

It asks instead for:

```math
\int_W\sup_{k>N}
2^k\sum_{j>k+4}2^{2j}D_j^u(t)dt,
```

which is a high-derivative height-dissipation tail.  This is not supplied by
energy or ordinary dissipation.  It is essentially the derivative-level
version of the same donor-height source wall.

Therefore the linear response forcing `Delta u` is not automatically legal.
It says:

```text
if z develops high response height, then u already carries original
height-dissipation at the same high scales.
```

That is useful, but not a closure.

## 4. Mixed Response Flux

The nonlinear response flux contains:

```math
u\cdot\nabla z
\quad\text{and}\quad
z\cdot\nabla u.
```

The same low/high split as the native source wall gives model carriers:

```math
\langle S_{<j}(u)Z_j,Z_j\rangle,
\qquad
\langle S_{<j}(z)u_j,Z_j\rangle.
```

The first is a response-field copy of the native positive strain wall.  The
second is exactly the low-response-strain term already reduced in
`mpp-low-response-strain-charge-proof-20260506.md`.

Thus:

```math
\boxed{
MixedResponseFluxControl.A
\Longleftarrow
ResponseStrainDecorrel.A
+LowResponseStrainCharge.A.
}
\tag{RHC.10}
```

`LowResponseStrainCharge.A` is reduced to finite response-norm / response
height control.  `ResponseStrainDecorrel.A` is the response analogue of ASAC:
active `z_j` packets cannot stay positively aligned with low strain unless
they pay response-height charge or terminal no-incoming rigidity.

## 5. Verdict

Proved:

```text
ResponseShellEnergy.A
ResponseHeightAccounting.A
ResponseHeightCreationControl.A
  <= OriginalHeightDissipationCharge.A + MixedResponseFluxControl.A
MixedResponseFluxControl.A
  <= ResponseStrainDecorrel.A + LowResponseStrainCharge.A
```

Not proved:

```text
OriginalHeightDissipationCharge.A
ResponseStrainDecorrel.A
```

This shows that response-height creation is not a free new wall.  Its linear
forcing comes directly from original high-shell dissipation, and its nonlinear
part is a response-copy of the active strain/decorrelation problem.

Updated response route:

```text
OriginalHeightDissipationCharge.A
ResponseStrainDecorrel.A
NonlinearResponseRotationNoGain.A
HeightFluxControl.A / terminal rigidity-residue
```

The new idea has narrowed the problem, but unconditional closure still requires
a structural decorrelation/rigidity theorem.

## 6. Full-Coefficient Response Height Drain Replacement

The later full-coefficient adjoint drain in
`mpp-full-coefficient-response-height-drain-20260506.md` supersedes the
shell-energy route above for response height creation.

Key correction:

```text
Do not test high response height by shell energy if the forcing is Delta u.
Test terminal response mass by the full-coefficient adjoint packet.
```

Then:

```text
L_u z = Delta u
```

paired against the full adjoint has no coefficient residual, and `Delta u` is
paid in `H^{-1}` by ordinary dissipation:

```text
||Delta u_{>N}||_{L_t^2 H_x^{-1}}^2
lesssim int sum_{j>N} D_j(t) dt -> 0.
```

Installed replacement:

```text
ResponseHeightNoFirstPulse.A
=> ResponseHeightCreationControl.A.
```

Thus `OriginalHeightDissipationCharge.A` is superseded for this response-side
branch.
