---
theorem_id: forward-gold-selected-participation-linear-source-pulse-identity-direct-test-20260620
status: direct-linear-source-pulse-identity-test-complete-not-proved
logical_landing_node: selected_participation_linear_source_pulse_identity
edge_effect: "Tests the bridge left open by the product-throttle trichotomy: whether nonzero linear residence of the selected positive participation carrier is automatically a source-pulse residue seen by the source-drain selector. It is not a formal consequence of the installed source-drain package. Source-drain pays the localized positive pre-Cauchy source residue; selected participation can be positive because of principal-flow gain already moved into the packet propagator."
parents:
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-product-throttle-failure-trichotomy-20260620.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-selected-square-budget-parent-drain-production-test-20260620.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-square-carrier-adjoint-localization-direct-test-20260620.md
  - problems/navier-stokes/theorem-construction/mpp-source-drain-definition-alignment-and-discharge-20260504.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-linear-participation-parent-or-charge-direct-test-20260620.md
downstream_consequence: "The product-throttle trichotomy must keep branch 2 in two subcases: actual nonzero source-pulse residue, which parent-drain/source-drain pays, and nonzero selected participation residence not identified with source-pulse residue, which becomes normalized endpoint-energy transport in the principal-gain normal form. The square-only branch remains the separate height-blowup obstruction."
---

# MPP Forward-Gold Selected Participation Linear Source-Pulse Identity Direct Test

Date: 2026-06-20

## Status

Direct identity test complete.  The bridge is not proved from current inputs.

The tested bridge is the nonzero-linear-residence clause exposed in the
product-throttle trichotomy:

```math
\boxed{
\text{selected positive participation mass on }J
\Longrightarrow
\text{same source-pulse residue seen by the source-drain selector}.
}
\tag{LSP.1}
```

This is exactly the clause `(PTT.12)`.

## 1. The two linear objects

The product-throttle trichotomy works with the normalized selected
participation marginal

```math
a_m(s)=\lambda_m^{-1/2}
\Pi_m^{part,+}(t_m+\lambda_m^{-2}s),
\qquad
s\in[-1,0].
\tag{LSP.2}
```

The nonzero linear residence branch is

```math
\limsup_m\int_J a_m(s)\,ds>0
\tag{LSP.3}
```

for some \(J\Subset[-1,0)\).

The source-drain selector, by contrast, measures the localized positive
pre-Cauchy source residue

```math
\mathcal P(Q_r(x,t))
:=
r^{-1}
\int_{Q_r(x,t)}
[F^{src}_{>1/r}]_+.
\tag{LSP.4}
```

The installed source-drain theorem is a theorem for `(LSP.4)`.  It is not
stated for `(LSP.2)`.

## 2. What would close the bridge

A sufficient same-carrier linear identity would be a domination of the form

```math
\sum_{T\in\mathcal F_m}
\int_{J_T} a_{m,T}(s)\,ds
\le
C
\sum_{T\in\mathcal F_m}
\mathcal P_T(J_T)
+Parent_m^{lin}(J)
+Legal_m(J)
+o_m(1),
\tag{LSP.5}
```

where

```math
\mathcal P_T(J_T)
=
r_T^{-1}
\int_{Q_T(J_T)}
[F^{src}_{>1/r_T}]_+.
\tag{LSP.6}
```

If `(LSP.5)` were installed with a first-pulse/no-parent rule for the same
linear participation carrier, the nonzero linear residence branch would be
paid by the existing source-drain package.

The current inputs install the source-drain part for `(LSP.6)`.  They do not
install `(LSP.5)`.

## 3. Principal-gain obstruction

The obstruction is already present in the scalar principal-flow normal form.
On a heat window

```math
I_\lambda=[0,\lambda^{-2}],
\tag{LSP.7}
```

take

```math
{d\over dt}w(t)-a_\lambda w(t)=0,
\qquad
a_\lambda=\lambda^2.
\tag{LSP.8}
```

This is the scalar analogue of the packet equation after the principal strain
has been moved into the operator.  The residual is zero:

```math
R_\lambda=0.
\tag{LSP.9}
```

With

```math
w(0)=\lambda^{-3/4},
\qquad
w(t)=\lambda^{-3/4}e^{\lambda^2t},
\tag{LSP.10}
```

the selected positive participation current is

```math
\Pi_\lambda^{part,+}(t)
=
a_\lambda w(t)^2
=
\lambda^{1/2}e^{2\lambda^2t}.
\tag{LSP.11}
```

In normalized heat time \(s=\lambda^2t\),

```math
a_\lambda^{norm}(s)
=
\lambda^{-1/2}\Pi_\lambda^{part,+}(\lambda^{-2}s)
=
e^{2s},
\qquad
s\in[0,1].
\tag{LSP.12}
```

Hence the selected participation has nonzero linear residence:

```math
\int_0^1 a_\lambda^{norm}(s)\,ds
=
{e^2-1\over2}.
\tag{LSP.13}
```

But the source-drain residual charge is zero because \(R_\lambda=0\), and no
source-pulse residue `(LSP.4)` is produced by residual creation in this normal
form.

This example is not presented as a Navier--Stokes solution.  It is the exact
normal form of the bookkeeping mismatch in the installed packet calculus:
selected participation can record principal-flow gain, while source-drain
records residual source creation after that gain has already been placed in
the propagator.

Therefore `(LSP.1)` is not a formal consequence of the installed source-drain
package.

## 4. Correct branch split

The nonzero linear residence branch splits into two subbranches.

First, the selected participation residence is identified with the same
localized positive source residue:

```math
\int_J a_m(s)\,ds>c_0
\quad\text{and}\quad
\sum_T\mathcal P_T(J_T)>c_1.
\tag{LSP.14}
```

That branch is paid by source-drain/parent-drain.

Second, the selected participation residence is not identified with a
source-pulse residue:

```math
\int_J a_m(s)\,ds>c_0,
\qquad
\sum_T\mathcal P_T(J_T)\to0.
\tag{LSP.15}
```

That branch is not paid by the linear source-drain theorem.  It requires
normalized endpoint-energy trace accounting:

```math
\boxed{
SelectedParticipationLinearSourcePulseIdentity.A
\quad\text{or}\quad
LinearParticipationParentOrCharge.A.
}
\tag{LSP.16}
```

The direct parent/gain test
`mpp-forward-gold-linear-participation-parent-or-charge-direct-test-20260620.md`
sharpens this point.  In the pure principal-gain normal form, non-source-residue
linear participation is exactly normalized endpoint-energy transport.  The
installed source-drain theorem does not discharge it unless the selected
positive energy trace is polar-saturated and the terminal normalized-energy
parent chain is proved non-free.  The direct test
`mpp-forward-gold-linear-positive-energy-trace-saturation-direct-test-20260620.md`
shows that signed endpoint-energy accounting alone does not give that
polar-saturation step.  The follow-up
`mpp-forward-gold-no-free-terminal-normalized-energy-trace-direct-test-20260620.md`
shows that finite physical energy also does not give the no-free terminal
normalized-energy trace step.

The square-strength descendants are the already isolated square objects

```math
\boxed{
SelectedParticipationToWeightedResidualSquare.A
\quad/\quad
SquareParentDrainProduction.A
\quad/\quad
SquareParentOrChargeForReserve.A.
}
\tag{LSP.17}
```

## Verdict

Source-drain remains a real supplier for actual source-pulse residue.  It does
not prove that every nonzero selected participation residence is a source-pulse
residue.

The exact correction is:

```math
\boxed{
\text{nonzero selected participation residence}
\not\Rightarrow
\text{nonzero source-pulse residue}
}
\tag{LSP.18}
```

from the installed inputs.

Thus branch 2 of the product-throttle trichotomy is removed only after the
same-carrier linear source-pulse identity `(LSP.5)` is proved or after the
non-source-residue participation branch is paid by a linear parent/gain theorem.
