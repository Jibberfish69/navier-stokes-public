# MPP ResponseResidualPair.A Direct Attempt

Date: 2026-05-06

Status: direct attempt; partially superseded by
`mpp-response-principal-strain-gauge-route-20260506.md`.

The pressure/cutoff/off-packet components are charged here.  The initial
claim that `ResponseStrainDecorrel.A` is unavoidable is superseded: the newer
principal-strain gauge route moves `S_{<j}(u)z_j` into the response principal
operator.

Depends on:

```text
mpp-response-square-mass-subatoms-proof-20260506.md
mpp-response-height-creation-control-proof-20260506.md
mpp-nonlinear-response-rotation-no-gain-proof-20260506.md
```

## 0. Target

The square-mass response drain needs:

```math
\boxed{
ResponseResidualPair.A:
\quad
\|R_{resp}\|_{L_t^2H_x^{-1}}^2
\le
CResponseCharge_N+o_N(1).
}
\tag{RRP.1}
```

The response residual is:

```math
R_{resp}
=
P_j\mathbb P(u\cdot\nabla z+z\cdot\nabla u)
+R_{press}^{resp}
+R_{cut}^{resp}
+R_{off}^{resp}
+R_{frame}^{resp}.
```

## 1. Legal Components

The following pieces are charged by the installed projected packet calculus,
with `z` replacing `u` and with response height used as the measuring charge:

```text
R_press_resp
R_cut_resp
R_off_resp
R_frame_resp
```

The estimates are:

```math
\|R_{press}^{resp}\|_{L_t^2H^{-1}}^2
+\|R_{cut}^{resp}\|_{L_t^2H^{-1}}^2
+\|R_{off}^{resp}\|_{L_t^2H^{-1}}^2
+\|R_{frame}^{resp}\|_{L_t^2H^{-1}}^2
\le
CLegalResponseCharge_N+o_N(1).
\tag{RRP.2}
```

Reason: Leray projection, cutoff commutators, off-packet shell leakage, and
frame perturbations are linear in the active packet field.  The same
`H^{-1}` residual estimates used for the installed source-drain route apply
with the active field `z_j^\perp`, as long as the response packet frame is
fixed by `SameFluidResponseFrame.A`.

Thus the only PDE part is:

```math
R_{mix}:=P_j\mathbb P(u\cdot\nabla z+z\cdot\nabla u).
```

## 2. Mixed Response Decomposition

Use Bony splitting relative to the active response shell `j`:

```math
u\cdot\nabla z
=
u_{<j-M}\cdot\nabla z_j
+u_j\cdot\nabla z_{<j-M}
+R_{hh}^{uz},
```

```math
z\cdot\nabla u
=
z_{<j-M}\cdot\nabla u_j
+z_j\cdot\nabla u_{<j-M}
+R_{hh}^{zu}.
```

The high-high remainders are finite-overlap and charged by response height plus
original height:

```math
\|R_{hh}^{uz}+R_{hh}^{zu}\|_{L_t^2H^{-1}}^2
\le
C(Height_N^z+Height_N^u)+o_N(1).
\tag{RRP.3}
```

The transport terms:

```math
u_{<j-M}\cdot\nabla z_j,
\qquad
z_{<j-M}\cdot\nabla u_j
```

are placed into the principal response packet operator or into the low-response
strain ledger.  Their commutators are legal under the same coefficient-stopping
rules as the adjoint packet calculus.

The remaining strain-production terms are:

```math
S_{<j}(u)z_j,
\qquad
S_{<j}(z)u_j.
\tag{RRP.4}
```

## 3. Principal Mixed Wall

The term:

```math
S_{<j}(z)u_j
```

is exactly the low-response-strain term already reduced to finite response norm
or response-height creation.

The term:

```math
S_{<j}(u)z_j
```

is response active-strain alignment:

```math
\left[
\langle S_{<j}(u)Z_j,Z_j\rangle
\right]_+.
```

If estimated by absolute values, this returns to response active-square
reserve.  Therefore the correct theorem is:

```math
\boxed{
ResponseStrainDecorrel.A.
}
```

Thus:

```math
\boxed{
LowResponseStrainCharge.A
+ResponseStrainDecorrel.A
+ResponseHeightCreationControl.A
\Longrightarrow
ResponseResidualPair.A.
}
\tag{RRP.5}
```

## 4. Can ResponseStrainDecorrel.A Be Avoided?

No, not by energy alone.

For a trace-free symmetric strain matrix `S`, choose `Z_j` polarized in an
expanding eigendirection.  Then:

```math
\langle SZ_j,Z_j\rangle_+>0.
```

The response equation does not prevent such alignment unless the response
packet has a no-incoming/parent-or-charge structure or an active decorrelation
theorem.  Cauchy gives:

```math
|\langle S_{<j}(u)Z_j,Z_j\rangle|
\le
\|S_{<j}(u)\|_\infty \|Z_j\|_2^2,
```

which is precisely the response active-square wall.

Therefore `ResponseStrainDecorrel.A` is unavoidable for an unconditional
response residual pair.

## 5. Verdict

Proved:

```text
legal response residual components are charged by projected packet calculus;
high-high response remainders are charged by original/response height;
ResponseResidualPair.A reduces to response strain/decorrelation plus
low-response-strain and response-height creation controls.
```

Initially left open in this note:

```text
ResponseStrainDecorrel.A
ResponseHeightCreationControl.A
```

Supersession:

```text
ResponseStrainDecorrel.A is removed by
mpp-response-principal-strain-gauge-route-20260506.md.
```

The corrected primitive is:

```text
CorrectedResponseResidualPair.A
```

with support:

```text
LowResponseStrainCharge.A
ResponseHeightCreationControl.A
NonlinearResponseRotationNoGain.A.
```
