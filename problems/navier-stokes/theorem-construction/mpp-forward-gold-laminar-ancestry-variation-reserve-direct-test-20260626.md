---
theorem_id: forward-gold-laminar-ancestry-variation-reserve-direct-test-20260626
status: direct-test-installed-laminar-tax-reduces-to-global-ancestry-variation-reserve
created: 2026-06-26
problem: navier-stokes
route: forward-gold
logical_landing_node: GlobalSamePacketFullClockFromOriginalData.A
source_surfaces:
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-high-ratio-laminar-ancestry-multiplicity-tax-20260626.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-high-ratio-goodlambda-half-barrier-20260626.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-critical-half-tail-profile-liouville-boundary-20260626.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-material-time-cauchy-green-storage-sign-test-20260626.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-local-state-action-storage-no-go-20260626.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-complete-frame-transverse-compression-ode-obstruction-20260626.md
---

# Laminar Ancestry Variation Reserve Direct Test

This note tests the refined hinge

```math
\text{HighRatioLaminarAncestryMultiplicityTax.A}.
```

The laminar idea is the right same-material structure.  It prevents the
critical half-tail from being treated as unrelated affine packets.  But
laminarity itself is not yet a finite-action theorem.  The remaining work is
to prove that the laminar ancestry has a finite total positive variation
reserve.

## 1. The object to pay

The half-barrier notes use

```math
d\mu_j(t)=2^{2j}e_j(t)\,dt,
\qquad
\rho_j(t)={\Theta_j^{mat}(t)\over 2^{2j}},
```

and ratio bands

```math
E_{j,\ell}=\{2^\ell\delta<\rho_j\le 2^{\ell+1}\delta\},
\qquad
\nu_\ell=\sum_j\mu_j(E_{j,\ell}).
```

The raw same-history ledgers give only

```math
\sum_{\ell\ge0}\nu_\ell<\infty.
```

The Gold action needs the first ratio moment

```math
\sum_{\ell\ge0}2^\ell\nu_\ell<\infty.
```

The critical obstruction is

```math
\nu_\ell\sim {2^{-\ell}\over \ell+1}.
```

So any laminar proof must pay the extra ratio factor \(2^\ell\).

Let a high-ratio visit be \(\gamma\).  Its Gold-weighted contribution is

```math
a_\gamma
\simeq
2^{\ell_\gamma}
\mu_{j_\gamma}(E_{j_\gamma,\ell_\gamma}\cap I_\gamma).
```

Then

```math
\sum_\gamma a_\gamma
\simeq
\sum_{\ell\ge0}2^\ell\nu_\ell.
```

## 2. What laminarity genuinely adds

All visits are sampled from one transported material history.  After paid
nonlaminar crossings are removed, the surviving visits must lie on material
ancestry lines.  On one ancestry line, the repeated visits reuse the same
deformation, pressure-Hodge frame, and transported collar.

The natural tax therefore has the form

```math
\sum_{\gamma\subset\mathcal A(a)}a_\gamma
\le
C\,\mathcal R_{\rm ancestry}(a),
```

where \(\mathcal R_{\rm ancestry}\) is built from positive Cauchy-Green
variation, Hodge-frame rotation, collar-normal separation, and annular
turnstile variation along the same material ancestry.

This is the correct target.  It is also exactly where proof strength is still
missing.

## 3. The Cauchy-Green tax is not automatically finite

For \(F=D_aX\) and \(C=F^TF\),

```math
\partial_t C=2F^TSF.
```

For a material direction \(\xi\),

```math
{d\over dt}\log |F\xi|
=
{F\xi\cdot S F\xi\over |F\xi|^2}.
```

Thus Cauchy-Green is the correct recorder of the laminar spike thinning and
annular return.  A repeated high-ratio ancestry line can be taxed by

```math
d[\log |F\xi|]_+
```

or by the corresponding positive variation of a condition number, frame angle,
or collar-normal separation.

But the installed sign tests show that the paying primitive

```math
-\log |F\xi|
```

is bounded below only when the stretch is already bounded.  Saturating it keeps
a lower bound only by losing full payment at large stretch.

So the desired estimate

```math
\sum_{\gamma\subset\mathcal A(a)}a_\gamma
\le
C\,{\rm Var}_+(\log |F\xi|)
```

is useful only after proving

```math
\int {\rm Var}_+(\log |F\xi|)\,da<\infty
```

or an equivalent global same-material history reserve.  That finite variation
is not supplied by laminarity alone.

## 4. Frame and collar alternatives have the same burden

The same test applies to the other proposed taxes.

Hodge-frame rotation can record transverse motion of the pressure-Hodge frame.
Collar-normal separation can record turnstile motion of the transported
annular collar.  Both are correct same-material records.

But to control the first ratio moment they must satisfy a global bound of the
form

```math
\int
\left(
{\rm Var}_+(\log\sigma_{\max}F)
+
{\rm Var}(F_{\rm Hodge})
+
{\rm Var}(n_{\rm collar})
+
{\rm Turnstile}_{ann}
\right)
\,d\mathcal R(a)
<\infty.
```

This is not a local algebraic consequence of incompressibility or the affine
normal form.  It is a global ancestry-variation theorem.

## 5. Direct conclusion

The laminar ancestry idea is a valid sharpening of the critical half-tail
problem.  It converts arbitrary packing into one-history multiplicity.

It does not by itself prove

```math
\sum_{\ell\ge0}2^\ell\nu_\ell<\infty.
```

The missing theorem is the finite global ancestry-variation reserve:

```math
\boxed{
\text{GlobalAncestryVariationReserve.A}
}
```

Statement:

For one original smooth material history, after paid nonlaminar crossings and
legal exits are removed, the total positive variation of the laminar
Cauchy-Green deformation, Hodge-frame rotation, collar-normal separation, and
annular turnstile records controls the Gold first ratio moment:

```math
\sum_{\ell\ge0}2^\ell\nu_\ell
\le
C_N(u_0)
+
R_{\rm legal}.
```

Equivalently, this is the precise finite-reserve form of
`HighRatioLaminarAncestryMultiplicityTax.A`.

Until this reserve is proved, the laminar note remains a correct structural
reduction, not a closed Gold proof.
