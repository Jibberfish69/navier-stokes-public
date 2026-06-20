# MPP Forward-Gold Donor Reserve Adjoint Trace Amplitude / Null Test

Date: 2026-06-19

## Status

Direct amplitude and lower-frame test complete.

The installed terminal response lower-frame theorem does not prove
`DonorReserveAdjointTrace.A`.  It lower-bounds an already-formed terminal
response vector in the response packet subspace.  The donor-reserve bridge
requires an inverse estimate for the selected source coefficient cloud before
it has been observed by that terminal response frame.

So the donor-adjoint route remains conditional on a genuine no-null-source /
selected-polar-saturation theorem.

## 1. The bridge under test

The donor square reserve has the abstract form

```math
\mathcal R_N(W)
=
\int_W
\|A(t)\|_{\ell^2(\mathcal P^-)}^2\,dt ,
\tag{DAT.1}
```

where `A(t)` is the selected donor/source coefficient cloud.  The child analysis
map is a bounded packet map

```math
B(t):\ell^2(\mathcal P^-)\longrightarrow \ell^2(\mathcal T).
\tag{DAT.2}
```

`ParentSquareEmbed.A` supplies only the Bessel direction

```math
\|B(t)A(t)\|_{\ell^2(\mathcal T)}^2
\le
C_B\|A(t)\|_{\ell^2(\mathcal P^-)}^2
+o_N(1).
\tag{DAT.3}
```

The desired donor trace theorem needs the inverse direction on the selected
terminal cloud:

```math
\int_W\|A(t)\|_{\ell^2(\mathcal P^-)}^2\,dt
\le
C_{\rm inv}
\int_W\|B(t)A(t)\|_{\ell^2(\mathcal T)}^2\,dt
+Loss_{\rm legal}(W)+o_N(1).
\tag{DAT.4}
```

The normalized-adjoint parent-or-charge law then controls the child-side mass.
But without `(DAT.4)`, the dynamic child mass is not a dynamic law for
`\mathcal R_N`.

## 2. What the installed lower frame actually proves

`FullLinearizedTerminalLowerFrame.A` has the form

```math
\|f\|_2^2
\le
C
\sum_{a\in A_T}
|\langle f,\chi_{T,a}(t_+)\rangle|^2
+Err_{\rm frame}(T),
\qquad f\in H_T^{rot}.
\tag{DAT.5}
```

This is a lower frame on the terminal response subspace.  It applies after a
response vector `f` has already landed in `H_T^{rot}`.

It does not imply `(DAT.4)`.  To use `(DAT.5)` for the donor reserve one would
need an additional identification

```math
f(t_+)=B(t)A(t)
\quad\text{and}\quad
\|A(t)\|_{\ell^2}^2
\lesssim
\|B(t)A(t)\|_{\ell^2}^2+Loss(t)
\tag{DAT.6}
```

on the same selected packet family.  The second inequality in `(DAT.6)` is
exactly the missing no-null-source theorem.

## 3. Finite-dimensional null model

The obstruction is already visible in the smallest packet algebra.  Let

```math
\ell^2(\mathcal P^-)=\mathbb R^2,
\qquad
\ell^2(\mathcal T)=\mathbb R,
\qquad
B(a_1,a_2)=a_1-a_2.
\tag{DAT.7}
```

Then the Bessel direction holds:

```math
|B(a_1,a_2)|^2
=
|a_1-a_2|^2
\le
2(a_1^2+a_2^2).
\tag{DAT.8}
```

But the inverse direction fails.  For

```math
A=(1,1),
\tag{DAT.9}
```

one has

```math
\|A\|_{\ell^2}^2=2,
\qquad
BA=0.
\tag{DAT.10}
```

Thus no estimate of the form

```math
\|A\|_{\ell^2}^2
\le
C\|BA\|_{\ell^2}^2+Loss
\tag{DAT.11}
```

can follow from Bessel bounds and terminal lower-frame detection unless `Loss`
charges the null configuration or the selected class excludes it.

Time localization does not repair this.  On a heat window `I_j` of length
`h_j`, set

```math
A_j(t)=h_j^{-1/2}(1,1){\bf 1}_{I_j}(t).
\tag{DAT.12}
```

Then

```math
\int_{I_j}\|A_j(t)\|_{\ell^2}^2\,dt=2,
\qquad
\int_{I_j}\|B A_j(t)\|_{\ell^2}^2\,dt=0.
\tag{DAT.13}
```

So an order-one donor reserve can be invisible to the selected child trace even
on exactly the terminal heat-scale interval.

## 4. Relation to the heat-scale pulse

In the native energy-currency source-square test, a heat-scale source-balanced
packet has

```math
|I_j|=2^{-2j},
\qquad
D_j(t)=2^{3j/2}{\bf 1}_{I_j}(t),
\tag{DAT.14}
```

so

```math
\int_{I_j}D_j(t)\,dt=2^{-j/2}\to0,
\qquad
\int_{I_j}2^{-j}D_j(t)^2\,dt=1.
\tag{DAT.15}
```

`DonorReserveAdjointTrace.A` would be a way to make the order-one square in
`(DAT.15)` visible to the dynamic adjoint packet ledger.  The null model
`(DAT.7)`--`(DAT.13)` shows that visibility is not a consequence of the
installed lower-frame theorem.  It requires one more Navier-Stokes-specific
fact:

```math
\boxed{
\text{selected terminal donor clouds have no uncharged null direction under }
B.
}
\tag{DAT.16}
```

Equivalently, every cancellation, image loss, phase mismatch, or
outside-ledger child image produced by a selected donor cloud must be charged to
an existing legal ledger.

## 5. Consequence

The exact implication that remains open is

```math
\boxed{
NoNullSourceParentCloud.A
+
SelectedPositivePolarSaturation.A
\Longrightarrow
DonorReserveAdjointTrace.A.
}
\tag{DAT.17}
```

The currently installed response lower frame supplies only terminal response
detection.  It cannot be reused as `(DAT.17)`.

Thus the donor-adjoint branch does not close the heat-scale time-face pulse.
It returns to one of the genuine source-square suppliers:

```math
\text{SourceSquareReserve.A},
\qquad
\text{ActiveWindowHeight.A / ReserveCreationCharge.A},
\qquad
\text{SelectedCriticalStrainCarleson.A},
\qquad
\text{StrictRescaledNoWasteLyapunov.A},
\tag{DAT.18}
```

or to the no-null theorem `(DAT.17)` itself.

