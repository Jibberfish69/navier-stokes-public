# Localized Projector Kernel Mismatch Implies Overlap Surrogate

## Status

Active theorem-facing reduction note for the localized-projector exact-potential
branch.

Role: collapse the abstract overlap-surrogate theorem from
[localized-projector-overlap-mismatch-globalization.md](/Users/thomasbirnie/Workspace/ToE/Research-Consolidation/problems/navier-stokes/theorem-construction/localized-projector-overlap-mismatch-globalization.md)
to one normalized kernel-mismatch estimate for local PSD sections built from
the same pair-projector field.

## Purpose

The globalization note already reduced the localized-projector branch to

```math
\boxed{
\texttt{one maximal-envelope theorem for the entrance scalars}
}
\quad+\quad
\boxed{
\texttt{one overlap-surrogate mismatch theorem}
}
\quad+\quad
\boxed{
\texttt{the installed pair-family forcing ledger }D.7ie1
\texttt{ or }D.7ie3
}.
\tag{KMG.0}
```

The second box is still abstract. On the actual localized-projector route, each
local PSD section is a positive weighted average of the same rank-one
projectors. So overlap mismatch is not a new spectral phenomenon. It is a
kernel-mismatch problem.

This note makes that reduction exact.

## Common Packet Representation on an Overlap

Fix one active overlap point `z` and abbreviate `z=(a,b,t)`. Assume that on the
overlap of two active local windows `\Lambda_\ell` and `\Lambda_{\ell'}` there
is one common packet space `\mathcal P_J(z)` with fixed reference measure
`\bar\nu_{J,z}` and one common measurable rank-one projector field

```math
P_J(z,p),
\qquad
\|P_J(z,p)\|_{\mathrm{op}}=1
\qquad
\text{for }\bar\nu_{J,z}\text{-a.e. }p\in\mathcal P_J(z).
\tag{KMG.1}
```

Assume the two local PSD sections admit the raw kernel representations

```math
\widetilde S_{J,\ell}(z)
=
\int_{\mathcal P_J(z)}
\lambda_{J,\ell}(z,p)\,P_J(z,p)\,d\bar\nu_{J,z}(p),
\tag{KMG.2}
```

```math
\widetilde S_{J,\ell'}(z)
=
\int_{\mathcal P_J(z)}
\lambda_{J,\ell'}(z,p)\,P_J(z,p)\,d\bar\nu_{J,z}(p),
\tag{KMG.3}
```

with nonnegative kernels `\lambda_{J,\ell},\lambda_{J,\ell'}\ge 0`. Define the
local masses

```math
m_{J,\ell}(z)
:=
\int_{\mathcal P_J(z)}\lambda_{J,\ell}(z,p)\,d\bar\nu_{J,z}(p),
\qquad
m_{J,\ell'}(z)
:=
\int_{\mathcal P_J(z)}\lambda_{J,\ell'}(z,p)\,d\bar\nu_{J,z}(p),
\tag{KMG.4}
```

and assume both are positive on the active overlap.

Now normalize:

```math
\vartheta_{J,\ell}(z,p):=\frac{\lambda_{J,\ell}(z,p)}{m_{J,\ell}(z)},
\qquad
\vartheta_{J,\ell'}(z,p):=\frac{\lambda_{J,\ell'}(z,p)}{m_{J,\ell'}(z)},
\tag{KMG.5}
```

so that

```math
\int_{\mathcal P_J(z)}\vartheta_{J,\ell}(z,p)\,d\bar\nu_{J,z}(p)
=
\int_{\mathcal P_J(z)}\vartheta_{J,\ell'}(z,p)\,d\bar\nu_{J,z}(p)
=1.
\tag{KMG.6}
```

Define the normalized local PSD sections

```math
\overline S_{J,\ell}(z)
:=
\frac{\widetilde S_{J,\ell}(z)}{m_{J,\ell}(z)}
=
\int_{\mathcal P_J(z)}
\vartheta_{J,\ell}(z,p)\,P_J(z,p)\,d\bar\nu_{J,z}(p),
\tag{KMG.7}
```

```math
\overline S_{J,\ell'}(z)
:=
\frac{\widetilde S_{J,\ell'}(z)}{m_{J,\ell'}(z)}
=
\int_{\mathcal P_J(z)}
\vartheta_{J,\ell'}(z,p)\,P_J(z,p)\,d\bar\nu_{J,z}(p).
\tag{KMG.8}
```

Because positive scalar rescaling does not change the top eigenprojector,

```math
\Pi_{\max}(\overline S_{J,\ell})=\Pi_{\max}(\widetilde S_{J,\ell}),
\qquad
\Pi_{\max}(\overline S_{J,\ell'})=\Pi_{\max}(\widetilde S_{J,\ell'}).
\tag{KMG.9}
```

So the overlap projector comparison may be done on the normalized surrogates.

## Proposition `KMG.A` (normalized kernel mismatch controls surrogate mismatch)

Define the normalized kernel-distance

```math
\kappa_{J,\ell\ell'}^{ker}(z)
:=
\int_{\mathcal P_J(z)}
\bigl|
\vartheta_{J,\ell}(z,p)-\vartheta_{J,\ell'}(z,p)
\bigr|
\,d\bar\nu_{J,z}(p).
\tag{KMG.10}
```

Then

```math
\bigl\|
\overline S_{J,\ell}(z)-\overline S_{J,\ell'}(z)
\bigr\|_{\mathrm{op}}
\le
\kappa_{J,\ell\ell'}^{ker}(z).
\tag{KMG.11}
```

### Proof

Subtract `(KMG.7)` and `(KMG.8)`:

```math
\overline S_{J,\ell}-\overline S_{J,\ell'}
=
\int_{\mathcal P_J(z)}
\bigl(\vartheta_{J,\ell}-\vartheta_{J,\ell'}\bigr)\,
P_J(z,p)\,d\bar\nu_{J,z}(p).
\tag{KMG.12}
```

Take operator norm and use `\|P_J(z,p)\|_{\mathrm{op}}=1`:

```math
\bigl\|
\overline S_{J,\ell}-\overline S_{J,\ell'}
\bigr\|_{\mathrm{op}}
\le
\int_{\mathcal P_J(z)}
\bigl|
\vartheta_{J,\ell}-\vartheta_{J,\ell'}
\bigr|
\,
\|P_J(z,p)\|_{\mathrm{op}}
\,d\bar\nu_{J,z}(p)
=
\kappa_{J,\ell\ell'}^{ker}(z).
\tag{KMG.13}
```

∎

## Corollary `KMG.B` (kernel mismatch implies the overlap-surrogate theorem)

Assume on every active overlap:

1. the normalized local PSD sections `\overline S_{J,\ell}` and
   `\overline S_{J,\ell'}` have simple top gaps bounded below by
   `\overline\gamma_\ast>0`;
2. the normalized kernel-distance obeys

```math
\kappa_{J,\ell\ell'}^{ker}(z)\le \mathfrak k_J(z).
\tag{KMG.14}
```

Then

```math
d_{\mathrm{proj}}\!\bigl(
\Pi_{\max}(\widetilde S_{J,\ell}(z)),
\Pi_{\max}(\widetilde S_{J,\ell'}(z))
\bigr)^2
\le
\frac{4\,\mathfrak k_J(z)^2}{\overline\gamma_\ast^2}.
\tag{KMG.15}
```

Consequently the overlap-surrogate theorem `OMG.B` holds with

```math
\mathfrak s_J(z):=\mathfrak k_J(z),
\qquad
\gamma_\ast:=\overline\gamma_\ast.
\tag{KMG.16}
```

### Proof

Apply `KMG.A` and then Davis-Kahan to the symmetric pair
`\bigl(\overline S_{J,\ell},\overline S_{J,\ell'}\bigr)`. Use `(KMG.9)` to
replace their top projectors by those of the raw sections. ∎

## Corollary `KMG.C` (raw kernel mismatch with a local mass floor)

Assume in addition that on every active overlap

```math
m_{J,\ell}(z)\ge m_\ast>0,
\qquad
m_{J,\ell'}(z)\ge m_\ast>0.
\tag{KMG.17}
```

Define the raw kernel mismatch

```math
\Delta_{J,\ell\ell'}^{raw}(z)
:=
\int_{\mathcal P_J(z)}
\bigl|
\lambda_{J,\ell}(z,p)-\lambda_{J,\ell'}(z,p)
\bigr|
\,d\bar\nu_{J,z}(p).
\tag{KMG.18}
```

Then

```math
\kappa_{J,\ell\ell'}^{ker}(z)
\le
\frac{2\,\Delta_{J,\ell\ell'}^{raw}(z)}{m_\ast}.
\tag{KMG.19}
```

Hence, if

```math
\Delta_{J,\ell\ell'}^{raw}(z)\le \mathfrak r_J(z)
\tag{KMG.20}
```

on every active overlap, then `KMG.B` applies with

```math
\mathfrak k_J(z):=\frac{2\,\mathfrak r_J(z)}{m_\ast}.
\tag{KMG.21}
```

### Proof

Let `\Delta:=\Delta_{J,\ell\ell'}^{raw}(z)`. Since
`\vartheta_{J,\ell}=\lambda_{J,\ell}/m_{J,\ell}` and
`\vartheta_{J,\ell'}=\lambda_{J,\ell'}/m_{J,\ell'}`,

```math
\bigl|
\vartheta_{J,\ell}-\vartheta_{J,\ell'}
\bigr|
\le
\frac{|\lambda_{J,\ell}-\lambda_{J,\ell'}|}{m_{J,\ell}}
+
\lambda_{J,\ell'}
\Bigl|
\frac1{m_{J,\ell}}-\frac1{m_{J,\ell'}}
\Bigr|.
\tag{KMG.22}
```

Integrate and use `(KMG.17)`:

```math
\kappa_{J,\ell\ell'}^{ker}
\le
\frac{\Delta}{m_\ast}
+
\Bigl|
\frac1{m_{J,\ell}}-\frac1{m_{J,\ell'}}
\Bigr|
\int_{\mathcal P_J(z)}\lambda_{J,\ell'}\,d\bar\nu_{J,z}.
\tag{KMG.23}
```

But

```math
|m_{J,\ell}-m_{J,\ell'}|
\le
\int_{\mathcal P_J(z)}
\bigl|
\lambda_{J,\ell}-\lambda_{J,\ell'}
\bigr|
\,d\bar\nu_{J,z}
=
\Delta,
\tag{KMG.24}
```

and `\int \lambda_{J,\ell'}\,d\bar\nu_{J,z}=m_{J,\ell'}`. Therefore

```math
\kappa_{J,\ell\ell'}^{ker}
\le
\frac{\Delta}{m_\ast}
+
\frac{|m_{J,\ell}-m_{J,\ell'}|}{m_{J,\ell}}
\le
\frac{2\Delta}{m_\ast}.
\tag{KMG.25}
```

∎

## Corollary `KMG.D` (exact `PSJ+.1` packet specialization)

On the exact localized-projector realization `(PSJ+.1)`, suppose the two
overlapping local packets use the same selector `\chi_J`, the same pair-length
window `\psi_\rho`, and the same confidence weight `\alpha`, while differing
only through their spatial kernels `\phi_\ell` and `\phi_{\ell'}`. Then

```math
\lambda_{J,\ell}(z,p)-\lambda_{J,\ell'}(z,p)
=
\chi_J(z,p)\,
\psi_\rho(z,p)\,
\alpha(z,p)\,
\bigl(\phi_\ell(z,p)-\phi_{\ell'}(z,p)\bigr),
\tag{KMG.26}
```

so

```math
\Delta_{J,\ell\ell'}^{raw}(z)
\le
\int_{\mathcal P_J(z)}
\chi_J(z,p)\,\psi_\rho(z,p)\,\alpha(z,p)\,
\bigl|
\phi_\ell(z,p)-\phi_{\ell'}(z,p)
\bigr|
\,d\bar\nu_{J,z}(p).
\tag{KMG.27}
```

Therefore, under the mass floor `(KMG.17)`, the overlap-surrogate theorem is
reduced further to one weighted localizer-overlap estimate:

```math
\boxed{
\int_I\int_{\mathcal J}
\frac{1}{m_\ast^2\,\overline\gamma_\ast^2}
\Bigl(
\int_{\mathcal P_J(z)}
\chi_J\,\psi_\rho\,\alpha\,
|\phi_\ell-\phi_{\ell'}|
\,d\bar\nu_{J,z}
\Bigr)^2
d\mu_J^{pair}(a,b)\,dt
\le
C\bigl(\mathcal E_J^{obs}+\mathrm{Err}_{J,\mathrm{pair}}\bigr).
}
\tag{KMG.28}
```

### Proof

`(KMG.27)` is `(PSJ+.1)` rewritten in the present notation. Combine it with
`KMG.C` and `KMG.B`. ∎

## Interpretation

The abstract overlap-surrogate mismatch theorem from
[localized-projector-overlap-mismatch-globalization.md](/Users/thomasbirnie/Workspace/ToE/Research-Consolidation/problems/navier-stokes/theorem-construction/localized-projector-overlap-mismatch-globalization.md)
has now been reduced one more honest step:

```math
\boxed{
\texttt{one normalized kernel-mismatch theorem for the local packet densities}
}
\tag{KMG.29}
```

and, under a local mass floor,

```math
\boxed{
\texttt{one raw-kernel overlap theorem}
}
\tag{KMG.30}
```

For the exact `PSJ+.1` localized-projector realization, this becomes

```math
\boxed{
\texttt{one weighted localizer-overlap theorem}
}.
\tag{KMG.31}
```

That exact `PSJ+.1` localizer theorem is then reduced once more in
[localized-projector-localizer-modulus-overlap-reduction.md](/Users/thomasbirnie/Workspace/ToE/Research-Consolidation/problems/navier-stokes/theorem-construction/localized-projector-localizer-modulus-overlap-reduction.md):
the remaining geometric gluing debt is one modulus-of-continuity theorem for
the localizer family, or under a Lipschitz localizer design one weighted
center-spacing theorem on window overlaps.

So the sharp localized-projector globalization wall is no longer:

```math
\texttt{maximal envelope}+\texttt{overlap-surrogate mismatch}.
\tag{KMG.32}
```

It is now:

1. one maximal-envelope theorem for the explicit entrance scalars;
2. the installed pair-family angular-forcing ledger `D.7ie1` or `D.7ie3`;
3. one normalized kernel-mismatch theorem, or on the exact `PSJ+.1`
   realization one localizer-modulus theorem, and under a Lipschitz localizer
   design one weighted center-spacing theorem on overlaps.
