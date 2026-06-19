# Frozen Transported Localized Projector Packet Eliminates Coefficient Drift

## Status

Active theorem-facing redesign note for the localized-projector exact-potential
subbranch.

Role: show that the coefficient-drift slot is a packet-design artifact and
vanishes on a frozen transported packet realization.

## Audit Result

The coefficient-drift term arose only because the localized projector moment was
rewritten against a fixed reference measure while leaving all localization and
confidence factors inside a time-dependent density `a_J(x,p,t)`.

But the current exact-potential route already works on a fixed transported strip
`(\Omega_J,\bar\mu_J)` with fixed local packet spaces `\mathcal P_J(x)`. On
that fixed transported packet, one may absorb all selector/localization weights
into a time-independent packet weight.

This is not a new theorem mechanism. It is a stricter packet realization of the
same localized-projector route.

## Frozen Transported Packet Realization

Fix the transported strip `\Omega_J\times I` and, for each `x\in\Omega_J`, a
fixed local packet space `\mathcal P_J(x)` with fixed reference measure
`\bar\nu_{J,x}`.

Choose a frozen nonnegative packet weight

```math
\lambda_J(x,p)\ge 0,
\qquad
\lambda_J\in L^\infty(\Omega_J\times\mathcal P_J),
\tag{FTL.1}
```

and define the localized projector moment by

```math
\widetilde S_J^{fr}(x,t)
:=
\int_{\mathcal P_J(x)}
\lambda_J(x,p)\,P_J(x,p,t)\,d\bar\nu_{J,x}(p).
\tag{FTL.2}
```

Let

```math
m_J^{fr}(x)
:=
\int_{\mathcal P_J(x)}\lambda_J(x,p)\,d\bar\nu_{J,x}(p).
\tag{FTL.3}
```

Then `m_J^{fr}` is independent of time.

## Admissibility

The localized concentration-to-projector arguments `PSJ+.2` and `PSJ+.4` only
use:

1. nonnegativity of the packet weight,
2. finiteness of the local mass,
3. the weighted average projector misalignment bound.

Their proofs do not use the specific Eulerian formula `(PSJ+.1)` beyond those
facts. So the frozen transported packet `(FTL.2)` is an admissible localized
projector surrogate on the same branch once the corresponding weighted
concentration bound is stated with `\lambda_J`.

## Proposition `FTL.A` (frozen packet kills coefficient drift)

For the frozen transported packet `(FTL.2)`,

```math
\partial_t\widetilde S_J^{fr}(x,t)
=
\int_{\mathcal P_J(x)}
\lambda_J(x,p)\,\partial_t P_J(x,p,t)\,d\bar\nu_{J,x}(p),
\tag{FTL.4}
```

so the coefficient-drift contribution vanishes identically:

```math
R_{J,\mathrm{coeff}}^{fr}\equiv 0.
\tag{FTL.5}
```

### Proof

Differentiate `(FTL.2)`. The weight `\lambda_J(x,p)` and the packet measure
`\bar\nu_{J,x}` are time-independent, so only `P_J` contributes. ∎

## Corollary `FTL.B` (exact local dynamics packet on the frozen realization)

Assume:

1. the exact segment-transport subbranch of Proposition `PSJ+.5`, so
   `E_J^{pair}\equiv 0`;
2. the tail-free realization from
   [exact-psj-plus-1-construction-eliminates-localization-tail.md](/Users/thomasbirnie/Workspace/ToE/Research-Consolidation/problems/navier-stokes/theorem-construction/exact-psj-plus-1-construction-eliminates-localization-tail.md),
   so `R_J^{tail}\equiv 0`.

Then the localized-projector dynamics on the frozen realization reduce to

```math
\partial_t\widetilde S_J^{fr}
=
[\Omega_J^{seg},\widetilde S_J^{fr}]
+
S_J^{seg}\widetilde S_J^{fr}
+
\widetilde S_J^{fr}S_J^{seg}
-2\,\mathcal M_J^{fr}
+
R_{J,\mathrm{mc}}^{fr},
\tag{FTL.6}
```

where the only remaining nontrivial error slot is the moment-closure term
controlled by localized projector concentration.

### Proof

Start from the exact averaged-projector dynamics note
[localized-projector-moment-dynamics-and-moment-closure.md](/Users/thomasbirnie/Workspace/ToE/Research-Consolidation/problems/navier-stokes/theorem-construction/localized-projector-moment-dynamics-and-moment-closure.md).
Apply `FTL.A` to remove `R_J^{coeff}`, the exact-segment-transport note to
remove `R_J^{pair}`, and the tail-free `PSJ+.1` realization to remove
`R_J^{tail}`. ∎

## Corollary `FTL.C` (the frozen local wall)

Assume the weighted `PSJ+.22` supplier note
[localized-projector-weighted-psj-plus-22-suppliers.md](/Users/thomasbirnie/Workspace/ToE/Research-Consolidation/problems/navier-stokes/theorem-construction/localized-projector-weighted-psj-plus-22-suppliers.md)
is applied to the frozen packet weights `\lambda_J`.

Then the honest local theorem wall on this redesigned exact-potential
subbranch is

```math
\boxed{
\texttt{Weighted theorem-safe entrance}
+
\texttt{Weighted corotational drift}.
}
\tag{FTL.7}
```

Equivalently,

```math
\texttt{weighted entrance}
+
\texttt{weighted corotational drift}
\Longrightarrow
\texttt{PSJ+.22}
\Longrightarrow
\texttt{localized projector concentration}
\Longrightarrow
\texttt{LPMC.26}.
\tag{FTL.8}
```

The drift side can be sharpened further by replacing the uniform drift majorant
with the exact time-dependent forcing profile from
[localized-projector-time-dependent-psj-plus-22-forcing-variant.md](/Users/thomasbirnie/Workspace/ToE/Research-Consolidation/problems/navier-stokes/theorem-construction/localized-projector-time-dependent-psj-plus-22-forcing-variant.md),
and then further by the exact angular-forcing reduction in
[localized-projector-angular-forcing-ledger-reduction.md](/Users/thomasbirnie/Workspace/ToE/Research-Consolidation/problems/navier-stokes/theorem-construction/localized-projector-angular-forcing-ledger-reduction.md).
So the sharp local forcing side is no longer a linear `\beta_J` convolution; it
is the installed pair-family ledger `D.7ie1`, or on the adiabatic subbranch the
ledger `D.7ie3`.  The globalization side is the exact interface isolated in
the angular-forcing note: after maximal-envelope promotion, one
maximal-envelope theorem for the local entrance scalars and the installed
pair-family forcing ledger. The final gluing split is
then isolated in
[localized-projector-overlap-mismatch-globalization.md](/Users/thomasbirnie/Workspace/ToE/Research-Consolidation/problems/navier-stokes/theorem-construction/localized-projector-overlap-mismatch-globalization.md):
one maximal-envelope theorem for the explicit entrance scalars, plus one
overlap-surrogate mismatch theorem for the local PSD sections. That gluing wall
is then sharpened again in
[localized-projector-kernel-mismatch-implies-overlap-surrogate.md](/Users/thomasbirnie/Workspace/ToE/Research-Consolidation/problems/navier-stokes/theorem-construction/localized-projector-kernel-mismatch-implies-overlap-surrogate.md):
the overlap-surrogate theorem reduces to one normalized kernel-mismatch theorem
for the local packet densities, or under a local mass floor to one raw-kernel
overlap theorem. On the exact `PSJ+.1` realization this becomes one weighted
localizer-overlap theorem, and then in
[localized-projector-localizer-modulus-overlap-reduction.md](/Users/thomasbirnie/Workspace/ToE/Research-Consolidation/problems/navier-stokes/theorem-construction/localized-projector-localizer-modulus-overlap-reduction.md)
one localizer-modulus theorem, or under a Lipschitz localizer design one
weighted center-spacing theorem on overlaps. The stronger canonical-center
redesign note
[canonical-center-localized-projector-atlas-eliminates-overlap-mismatch.md](/Users/thomasbirnie/Workspace/ToE/Research-Consolidation/problems/navier-stokes/theorem-construction/canonical-center-localized-projector-atlas-eliminates-overlap-mismatch.md)
removes pairwise overlap mismatch, but only after the atlas-admissibility
theorem isolated in
[canonical-center-atlas-admissibility-reduction.md](/Users/thomasbirnie/Workspace/ToE/Research-Consolidation/problems/navier-stokes/theorem-construction/canonical-center-atlas-admissibility-reduction.md).

## Boundary

This note does **not** prove that the original Eulerian weight `(PSJ+.1)` is
itself frozen. It proves something narrower and honest:

1. the coefficient-drift slot is not structurally unavoidable;
2. there is a clean transported packet realization on which it vanishes exactly;
3. if one adopts that realization, the exact local wall shrinks to weighted
   entrance plus weighted corotational drift, and the latter sharpens further to
   the exact angular-forcing ledger reduction above.

So the remaining debt is now a route choice:

1. stay with the original moving-weight realization and pay
   `CoefficientDrift`, or
2. adopt the frozen transported packet realization and remove
   `CoefficientDrift` from the local wall.
