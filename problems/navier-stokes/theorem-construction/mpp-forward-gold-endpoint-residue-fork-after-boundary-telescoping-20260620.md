# Endpoint Residue Fork After Boundary Telescoping

Date: 2026-06-20

## Status

Reduction proof complete.  After finite donor-chain boundary telescoping, the
remaining endpoint residue is no longer an edge-travel problem.  The unpaid
endpoint residue has exactly three non-aliased forms:

```math
\boxed{
\text{gauge endpoint mismatch}
}
\tag{ERF.1}
```

```math
\boxed{
\text{source-active endpoint residue}
}
\tag{ERF.2}
```

```math
\boxed{
\text{source-null endpoint motion}
}
\tag{ERF.3}
```

The first form is the no-drift/same-endpoint-normalization burden.  The second
form is the Door 1 positive-carrier identification burden.  The third form is
the unweighted action/no-waste or exact profile-production burden.

## 1. Endpoint residue after legal finite pieces

After legal exits, entrance leaves, and finite internal donor cancellations are
removed, the endpoint residue has the form

```math
dE_m^{end}
=
\sum_\beta
a_\beta
(\delta_{R_\beta}-\delta_{D_\beta})
+dE_m^{legal}
+dE_m^{Zeno}
+o_m(1),
\qquad
a_\beta>0.
\tag{ERF.4}
```

Here the index `beta` includes finite donor-forest boundary endpoints and
finite truncations of infinite terminal Zeno chains.  For a bounded test
`phi`,

```math
\langle dE_m^{end},\phi\rangle
=
\sum_\beta
a_\beta
\bigl(
\phi(R_\beta)-\phi(D_\beta)
\bigr)
+\operatorname{Legal}_{m,\phi}
+\langle dE_m^{Zeno},\phi\rangle
+o_m(1).
\tag{ERF.5}
```

Thus every remaining donor-chain problem is an endpoint problem.

## 2. First fork: common endpoint chart or gauge failure

If the endpoint pair cannot be compared in one parabolic quotient chart, then
the failure is exactly same-endpoint normalization failure:

```math
\left(
{r_D\over r_R},
{x_D-x_R\over r_R},
{t_D-t_R\over r_R^2},
O_R^{-1}O_D
\right)
\not\to
(1,0,0,I)
\tag{ERF.6}
```

modulo declared legal stabilizers.  This is not hidden source.  It is the
coordinate form of no-drift failure:

```math
\boxed{
\text{SameEndpointNormalization.A fails}
\Longrightarrow
\text{ZenoNoDriftUniqueTangent.A / endpoint gauge-lock burden.}
}
\tag{ERF.7}
```

A direct source-weighted endpoint charge or strict no-waste theorem can pay
`(ERF.6)` without proving gauge convergence.

## 3. Second fork: source-trace split inside the common chart

On the common-chart branch, write the endpoint profile difference in the
quotient tangent space:

```math
Z_\beta
:=
\Pi_q\bigl(U(R_\beta)-U(D_\beta)\bigr)
\in E_U.
\tag{ERF.8}
```

Let the native source-trace map be

```math
\Gamma_U:E_U\to L^2(\mu_U^{src}),
\qquad
K_U^{src}:=\ker\Gamma_U.
\tag{ERF.9}
```

Use the orthogonal split

```math
Z_\beta
=
Z_\beta^{act}
+
Z_\beta^{null},
\qquad
Z_\beta^{null}\in K_U^{src},
\qquad
Z_\beta^{act}\in(K_U^{src})^\perp.
\tag{ERF.10}
```

For each finite mode test,

```math
\psi_i(R_\beta)-\psi_i(D_\beta)
=
\langle Z_\beta^{act},\Psi_i\rangle
+
\langle Z_\beta^{null},\Psi_i\rangle
+o_m(1).
\tag{ERF.11}
```

Thus the endpoint residue splits into source-active and source-null terms.

## 4. Source-active branch

Under `SourceTraceCompleteness.A + UniformSourceTraceRank.A`, a nonzero
source-active endpoint contribution is read by a finite native source-test
family:

```math
\sum_i
\left|
\left\langle
\sum_\beta a_\beta Z_\beta^{act},
\Psi_i^{src}
\right\rangle
\right|^2
\ge
c_{src}^2
\left\|
\sum_\beta a_\beta Z_\beta^{act}
\right\|_{E_U}^2.
\tag{ERF.12}
```

This creates a signed native source readout.  To become a gold contradiction it
still needs the selected positive carrier bridge:

```math
\boxed{
\text{SourceResolvedNativeModeReadout.A}
+
\text{SelectedPositivePolarSaturation.A}.
}
\tag{ERF.13}
```

The source-active endpoint branch is therefore the same Door 1 bridge in mode
language, not a separate Door 2 obstruction.

## 5. Source-null branch

If the source-active contribution vanishes while the endpoint residue remains,
then the residue lies in the source-null kernel:

```math
\sum_\beta a_\beta Z_\beta^{null}\ne0,
\qquad
\Gamma_U
\left(
\sum_\beta a_\beta Z_\beta^{null}
\right)
=0.
\tag{ERF.14}
```

The selected positive source carrier cannot see `(ERF.14)` by definition.  This
branch is paid only by

```math
\boxed{
\text{SourceNullTangentEvacuation.A}
}
\tag{ERF.15}
```

which has already reduced to

```math
\text{NoSourceNullProfileTangent.A},
\tag{ERF.16}
```

or

```math
\text{CompleteAnnularNoEscapeReadout.A}
+
\text{StrictRescaledNoWasteLyapunov.A},
\tag{ERF.17}
```

or

```math
\text{MinimalZenoProfileProduction.A}
+
\text{ZeroFluxLandauClassLiouville.A}.
\tag{ERF.18}
```

## 6. Exact theorem shape

The endpoint residue theorem now has the following exact conditional form:

```math
\boxed{
\begin{gathered}
\text{TerminalDonorGraphDecomposition.A}
+
\text{UniformEndpointMassBound.A}
+
\text{SourceTraceCompleteness.A}
+
\text{UniformSourceTraceRank.A}
\\
\Longrightarrow
\text{every unpaid endpoint residue is gauge-mismatched, source-active,
or source-null.}
\end{gathered}
}
\tag{ERF.19}
```

The three branches close only with

```math
\boxed{
\text{SameEndpointNormalization.A}
}
\tag{ERF.20}
```

on the gauge branch,

```math
\boxed{
\text{SourceResolvedNativeModeReadout.A}
+
\text{SelectedPositivePolarSaturation.A}
}
\tag{ERF.21}
```

on the source-active branch, and

```math
\boxed{
\text{SourceNullTangentEvacuation.A}
}
\tag{ERF.22}
```

on the source-null branch.

## Verdict

The donor-chain endpoint branch is exhausted as an independent label.  Finite
chains, retained endpoint pairs, and infinite Zeno endpoint pairs all reduce to
the same endpoint fork:

```math
\boxed{
\text{no-drift endpoint gauge}
\quad\text{/}\quad
\text{native positive source-carrier visibility}
\quad\text{/}\quad
\text{source-null no-waste or profile production}.
}
\tag{ERF.23}
```

No current input proves all three branches.  The forward-gold route still needs
one actual supplier: same-carrier source visibility with polar saturation, or
strict unweighted no-waste/action, or exact Zeno profile production.
