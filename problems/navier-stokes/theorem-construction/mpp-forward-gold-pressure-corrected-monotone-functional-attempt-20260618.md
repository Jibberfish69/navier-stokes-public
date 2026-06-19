# Forward-Gold Pressure-Corrected Monotone Functional Attempt

Date: 2026-06-18

Status: direct pressure-corrected functional attempt; not closed.  Leray
projection can remove the explicit pressure term from the tested equation, but
the price is a nonlocal localization/projection commutator and an indefinite
convective flux.  No positive monotone drop is produced from current inputs.

## Target

The child audit leaves the possible escape:

```math
\boxed{
\text{PressureCorrectedMonotoneFunctional.A}.
}
\tag{PCM.1}
```

The idea is to build the pressure correction into the functional so the
pressure-conormal term never appears.

## Projected quadratic functional

Let `P` be the Leray projection and let `A_s` be a positive self-adjoint
localized operator adapted to the terminal scale, for example a projected
cutoff or heat-kernel localization.  Consider

```math
M_A(s):={1\over2}\langle U(s),A_sU(s)\rangle.
\tag{PCM.2}
```

If `A_sU` is divergence-free, then pressure drops out:

```math
\langle\nabla\Pi,A_sU\rangle=0.
\tag{PCM.3}
```

This is the advantage over the raw local energy functional.

## Derivative

For the projected Navier-Stokes equation

```math
\partial_s U
=
\nu\Delta U
-P\nabla\cdot(U\otimes U)
+\text{renormalization terms},
\tag{PCM.4}
```

one obtains schematically

```math
{d\over ds}M_A(s)
=
{1\over2}\langle U,\partial_sA_sU\rangle
-\nu\langle\nabla U,A_s\nabla U\rangle
+\nu\,\mathrm{Comm}_{A_s,\nabla}(U)
-\langle P\nabla\cdot(U\otimes U),A_sU\rangle
+\mathrm{Mod}_{A_s}(U).
\tag{PCM.5}
```

The pressure is gone, but two new indefinite terms remain.

First, localization/projection does not commute cleanly with the viscous
operator:

```math
\mathrm{Comm}_{A_s,\nabla}(U)
\tag{PCM.6}
```

contains cutoff gradients, projected tails, and nonlocal pressure-like leakage.
These are the same terms previously named as cutoff, collar, and pressure trace
ledgers.

Second, the nonlinear projected convection term has no sign:

```math
\mathcal C_A(U)
:=
-\langle P\nabla\cdot(U\otimes U),A_sU\rangle.
\tag{PCM.7}
```

For the global energy functional `A_s=I`, incompressibility cancels it:

```math
\mathcal C_I(U)=0.
\tag{PCM.8}
```

For a localized or scale-adapted `A_s`, the cancellation is broken:

```math
\mathcal C_A(U)
=
\int (U\otimes U):\nabla(A_sU)
\tag{PCM.9}
```

plus projection commutators.  The term is a boundary/flux readout, not a
positive square.

## Why this does not produce monotonicity

The desired inequality would be

```math
-{d\over ds}M_A(s)
\ge
c\mathcal D_{\rm terminal}(s)
-
\mathcal R_{\rm legal}(s).
\tag{PCM.10}
```

But `(PCM.5)` gives instead

```math
-{d\over ds}M_A(s)
=
\nu\langle\nabla U,A_s\nabla U\rangle
-
\mathcal C_A(U)
-
\mathrm{Comm}_{A_s,\nabla}(U)
-
\mathrm{Mod}_{A_s}(U)
-
{1\over2}\langle U,\partial_sA_sU\rangle.
\tag{PCM.11}
```

The first term is positive.  The other terms are not controlled by sign.  They
are exactly the readout channels we were trying to avoid adding by hand:

```text
localized convection flux,
projected pressure leakage,
cutoff/collar commutator,
scale/center modulation,
nonlocal Leray tail.
```

Thus pressure correction does not remove the need for coercivity.  It moves it
from the explicit pressure-conormal term into commutator and localized
convection terms.

## Conditional closure

A projected monotone functional would close under a commutator domination
theorem:

```math
\boxed{
\text{ProjectedLocalizedFluxCommutatorCoercivity.A}
}
\tag{PCM.12}
```

meaning:

```math
|\mathcal C_A(U)|
+
|\mathrm{Comm}_{A_s,\nabla}(U)|
+
|\mathrm{Mod}_{A_s}(U)|
\le
\epsilon\langle\nabla U,A_s\nabla U\rangle
+
\mathcal R_{\rm legal}
+
\mathcal D_{\rm visible}.
\tag{PCM.13}
```

Current inputs do not supply this.  The existing projected/cutoff ledgers pay
specific packet errors after selection; they do not give a global positive
monotonicity inequality for `M_A`.

## Verdict

`PressureCorrectedMonotoneFunctional.A` does not close from current inputs.

The pressure-corrected route is still useful as a design constraint: any
successful monotone functional must not merely remove pressure.  It must also
make the localized convection/projection commutator coercive:

```math
\boxed{
\text{ProjectedLocalizedFluxCommutatorCoercivity.A}.
}
\tag{PCM.14}
```

Without that, the monotonicity branch remains a visibility framework rather
than a terminal anti-atom theorem.
