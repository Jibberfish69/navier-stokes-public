# Localized Projector-Moment Weighted Residual Suppliers

## Status

Candidate theorem-facing supplier note for the exact-potential simple-top
branch.

Role: unpack the moment-closure dynamics packet from
[localized-projector-moment-dynamics-and-moment-closure.md](/Users/thomasbirnie/Workspace/ToE/Research-Consolidation/problems/navier-stokes/theorem-construction/localized-projector-moment-dynamics-and-moment-closure.md)
into explicit weighted spacetime supplier lemmas.

## Purpose

The honest localized-projector dynamics packet on disk is

```math
\texttt{Projector concentration }(PSJ+.6)
+
\texttt{CoefficientDrift}
+
\texttt{PairProjectorError}
+
\texttt{LocalizationTail}
\Longrightarrow
\text{closed residual-controlled projector-moment dynamics.}
\tag{LPMR.0}
```

This note turns the three residual terms and the moment-closure term into exact
weighted inequalities.

## Setup

Work on a transported strip `\Omega_J\times I` with fixed packet measures
`\bar\nu_{J,x}` and weight

```math
w_J(x,t):=\frac{M_J(x,t)^2}{g_J^{str}(x,t)^2}.
\tag{LPMR.1}
```

Keep the notation of
[localized-projector-moment-dynamics-and-moment-closure.md](/Users/thomasbirnie/Workspace/ToE/Research-Consolidation/problems/navier-stokes/theorem-construction/localized-projector-moment-dynamics-and-moment-closure.md):

```math
\widetilde S_J
=
\int a_JP_J\,d\bar\nu_{J,x}
+
\mathrm{Tail}_J,
\qquad
m_J:=\int a_J\,d\bar\nu_{J,x},
\tag{LPMR.2}
```

and residuals

```math
R_J^{coeff}
:=
\int (\partial_t a_J)P_J\,d\bar\nu_{J,x},
\tag{LPMR.3}
```

```math
R_J^{pair}
:=
\int a_JE_J^{pair}\,d\bar\nu_{J,x},
\tag{LPMR.4}
```

```math
R_J^{tail}:=\partial_t\mathrm{Tail}_J,
\tag{LPMR.5}
```

```math
\|R_J^{mc}\|_{\mathrm{op}}
\le
4\,\|S_J^{seg}\|_{\mathrm{op}}\,m_J\,\varepsilon_J^{1/2}.
\tag{LPMR.6}
```

Assume the structural bounds

```math
\sup_x \bar\nu_{J,x}(\mathcal P_J(x))\le \nu_\ast,
\tag{LPMR.7}
```

```math
\sup_{(x,t)\in\Omega_J\times I} m_J(x,t)\le m_\ast,
\tag{LPMR.8}
```

```math
\sup_{(x,t)\in\Omega_J\times I}
\frac{\|S_J^{seg}(x,t)\|_{\mathrm{op}}}{g_J^{str}(x,t)}
\le
C_{seg}.
\tag{LPMR.9}
```

## Supplier Lemmas

### Lemma `CoeffSupplier`

Pointwise,

```math
\|R_J^{coeff}(x,t)\|_{\mathrm{op}}^2
\le
\nu_\ast
\int_{\mathcal P_J(x)}
|\partial_t a_J(x,p,t)|^2\,d\bar\nu_{J,x}(p).
\tag{LPMR.10}
```

#### Proof

Since `\|P_J\|_{\mathrm{op}}=1`,

```math
\|R_J^{coeff}\|_{\mathrm{op}}
\le
\int |\partial_t a_J|\,d\bar\nu_{J,x}.
\tag{LPMR.11}
```

Cauchy-Schwarz with `(LPMR.7)` gives `(LPMR.10)`. ∎

### Lemma `PairProjectorErrorSupplier`

Pointwise,

```math
\|R_J^{pair}(x,t)\|_{\mathrm{op}}^2
\le
m_J(x,t)
\int_{\mathcal P_J(x)}
a_J(x,p,t)\,\|E_J^{pair}(x,p,t)\|_{\mathrm{op}}^2\,d\bar\nu_{J,x}(p)
\tag{LPMR.12}
```

and therefore, by `(LPMR.8)`,

```math
\|R_J^{pair}(x,t)\|_{\mathrm{op}}^2
\le
m_\ast
\int_{\mathcal P_J(x)}
a_J(x,p,t)\,\|E_J^{pair}(x,p,t)\|_{\mathrm{op}}^2\,d\bar\nu_{J,x}(p).
\tag{LPMR.13}
```

#### Proof

Apply Cauchy-Schwarz with weight `a_J`:

```math
\|R_J^{pair}\|_{\mathrm{op}}
\le
\int a_J\|E_J^{pair}\|_{\mathrm{op}}\,d\bar\nu_{J,x}
\le
\Bigl(\int a_J\,d\bar\nu_{J,x}\Bigr)^{1/2}
\Bigl(\int a_J\|E_J^{pair}\|_{\mathrm{op}}^2\,d\bar\nu_{J,x}\Bigr)^{1/2}.
\tag{LPMR.14}
```

Squaring gives `(LPMR.12)`, and `(LPMR.13)` follows from `(LPMR.8)`. ∎

### Lemma `MomentClosureSupplier`

Pointwise,

```math
w_J(x,t)\,\|R_J^{mc}(x,t)\|_{\mathrm{op}}^2
\le
16\,C_{seg}^2\,m_\ast^2\,M_J(x,t)^2\,\varepsilon_J(x,t).
\tag{LPMR.15}
```

#### Proof

From `(LPMR.6)`,

```math
\|R_J^{mc}\|_{\mathrm{op}}^2
\le
16\,\|S_J^{seg}\|_{\mathrm{op}}^2\,m_J^2\,\varepsilon_J.
\tag{LPMR.16}
```

Multiply by `w_J=M_J^2/(g_J^{str})^2` and use `(LPMR.8)`-`(LPMR.9)`. ∎

### Lemma `TailSupplier`

This slot is already exact:

```math
\int_I\!\!\int_{\Omega_J}
w_J(x,t)\,\|R_J^{tail}(x,t)\|_{\mathrm{op}}^2\,dx\,dt
=
\int_I\!\!\int_{\Omega_J}
w_J(x,t)\,\|\partial_t\mathrm{Tail}_J(x,t)\|_{\mathrm{op}}^2\,dx\,dt.
\tag{LPMR.17}
```

So weighted localization-tail decay is precisely the tail supplier theorem.

## Proposition `Weighted suppliers => localized projector dynamics`

### Candidate Theorem LPMR.A

Assume `(LPMR.7)`-`(LPMR.9)` and the weighted budgets

```math
\int_I\!\!\int_{\Omega_J}
w_J
\int_{\mathcal P_J(x)}
|\partial_t a_J|^2\,d\bar\nu_{J,x}\,dx\,dt
=
o_J(1),
\tag{LPMR.18}
```

```math
\int_I\!\!\int_{\Omega_J}
w_J
\int_{\mathcal P_J(x)}
a_J\|E_J^{pair}\|_{\mathrm{op}}^2\,d\bar\nu_{J,x}\,dx\,dt
=
o_J(1),
\tag{LPMR.19}
```

```math
\int_I\!\!\int_{\Omega_J}
M_J(x,t)^2\,\varepsilon_J(x,t)\,dx\,dt
=
o_J(1),
\tag{LPMR.20}
```

```math
\int_I\!\!\int_{\Omega_J}
w_J(x,t)\,\|\partial_t\mathrm{Tail}_J(x,t)\|_{\mathrm{op}}^2\,dx\,dt
=
o_J(1).
\tag{LPMR.21}
```

Then

```math
\int_I\!\!\int_{\Omega_J}
w_J\Big(
\|R_J^{coeff}\|_{\mathrm{op}}^2
+
\|R_J^{pair}\|_{\mathrm{op}}^2
+
\|R_J^{mc}\|_{\mathrm{op}}^2
+
\|R_J^{tail}\|_{\mathrm{op}}^2
\Big)\,dx\,dt
=
o_J(1).
\tag{LPMR.22}
```

Hence the residual-controlled localized projector-moment dynamics `(LPMC.24)` closes in
weighted `L^2`.

#### Proof

Integrate `(LPMR.10)`, `(LPMR.13)`, `(LPMR.15)`, and `(LPMR.17)` against the
spacetime weight. The four assumed budgets give `(LPMR.22)`. ∎

## Interpretation

This note pushes the localized-projector branch one deterministic step further.

The honest local wall recorded here is the four weighted suppliers

```math
\boxed{
\texttt{Weighted coefficient drift}
+
\texttt{Weighted pair-projector error}
+
\texttt{Weighted projector concentration}
+
\texttt{Weighted localization tail}.
}
\tag{LPMR.23}
```

The only genuinely nonlinear part of that list is the projector concentration
budget `(LPMR.20)`, which is exactly the weighted form of the installed
localized concentration theorem `PSJ+.6`. The follow-on reduction in
[localized-projector-weighted-psj-plus-22-suppliers.md](/Users/thomasbirnie/Workspace/ToE/Research-Consolidation/problems/navier-stokes/theorem-construction/localized-projector-weighted-psj-plus-22-suppliers.md)
shows that on the exact-potential simple-top branch, `(LPMR.20)` itself is
reduced further to a weighted theorem-safe entrance supplier together with a
weighted corotational drift supplier from `PSJ+.5 / PSJ+.22`. On the same
exact-potential subbranch,
[exact-segment-transport-collapses-pair-projector-error.md](/Users/thomasbirnie/Workspace/ToE/Research-Consolidation/problems/navier-stokes/theorem-construction/exact-segment-transport-collapses-pair-projector-error.md)
shows that the pair-projector error slot `(LPMR.19)` vanishes identically, so
the live local wall shrinks further to weighted coefficient drift, weighted
localization tail, weighted theorem-safe entrance, and weighted corotational
drift. The coefficient-drift side has also now been pushed to its honest local
endpoint in
[localized-projector-coefficient-drift-chain-rule-reduction.md](/Users/thomasbirnie/Workspace/ToE/Research-Consolidation/problems/navier-stokes/theorem-construction/localized-projector-coefficient-drift-chain-rule-reduction.md):
it is reducible under a strengthened time-regular packet, but remains open
under the current bounded-measurable selector packet. Finally,
[exact-psj-plus-1-construction-eliminates-localization-tail.md](/Users/thomasbirnie/Workspace/ToE/Research-Consolidation/problems/navier-stokes/theorem-construction/exact-psj-plus-1-construction-eliminates-localization-tail.md)
shows that the localization-tail slot can be taken identically zero on the
exact `PSJ+.1` realization, so the honest local wall on that subbranch is now
coefficient drift plus weighted entrance plus weighted corotational drift. The
alternative redesign note
[frozen-transported-localized-projector-packet-eliminates-coefficient-drift.md](/Users/thomasbirnie/Workspace/ToE/Research-Consolidation/problems/navier-stokes/theorem-construction/frozen-transported-localized-projector-packet-eliminates-coefficient-drift.md)
shows that on a frozen transported packet realization, even the
coefficient-drift slot vanishes, leaving only weighted entrance plus weighted
corotational drift. Finally, the sharper angular-forcing note
[localized-projector-angular-forcing-ledger-reduction.md](/Users/thomasbirnie/Workspace/ToE/Research-Consolidation/problems/navier-stokes/theorem-construction/localized-projector-angular-forcing-ledger-reduction.md)
shows that this remaining local forcing side is itself not a new linear
`\beta_J` supplier: on the cone it collapses to the already-installed
pair-family ledger `\int \beta_J^2/g_J`, or to `D.7ie3` on the adiabatic
subbranch. The globalization side at that stage is not a generic coverage
step: after the maximal-envelope promotion `AFR.G`, the exact remaining
localized-projector globalization debt is one maximal-envelope theorem for the
explicit local entrance scalars `q_\ell^{mat}` or `q_\ell^{aux}`, plus the
installed pair-family forcing ledger. The further gluing note
[localized-projector-overlap-mismatch-globalization.md](/Users/thomasbirnie/Workspace/ToE/Research-Consolidation/problems/navier-stokes/theorem-construction/localized-projector-overlap-mismatch-globalization.md)
shows that the exact remaining globalization wall is now the pair

```math
\boxed{\texttt{maximal-envelope entrance theorem}}
\quad+\quad
\boxed{\texttt{overlap-surrogate mismatch theorem}},
```

with the pair-family forcing ledger already installed. The next reduction in
[localized-projector-kernel-mismatch-implies-overlap-surrogate.md](/Users/thomasbirnie/Workspace/ToE/Research-Consolidation/problems/navier-stokes/theorem-construction/localized-projector-kernel-mismatch-implies-overlap-surrogate.md)
shows that the second box is itself one normalized kernel-mismatch theorem for
the local packet densities, or on the exact `PSJ+.1` realization one weighted
localizer-overlap theorem. The exact `PSJ+.1` case then sharpens once more in
[localized-projector-localizer-modulus-overlap-reduction.md](/Users/thomasbirnie/Workspace/ToE/Research-Consolidation/problems/navier-stokes/theorem-construction/localized-projector-localizer-modulus-overlap-reduction.md)
to one localizer-modulus theorem, and under a Lipschitz localizer design to one
weighted center-spacing theorem on overlaps. A stronger sufficient redesign is
also on disk in
[canonical-center-localized-projector-atlas-eliminates-overlap-mismatch.md](/Users/thomasbirnie/Workspace/ToE/Research-Consolidation/problems/navier-stokes/theorem-construction/canonical-center-localized-projector-atlas-eliminates-overlap-mismatch.md),
but its honest remaining debt is now the atlas-admissibility theorem isolated
in
[canonical-center-atlas-admissibility-reduction.md](/Users/thomasbirnie/Workspace/ToE/Research-Consolidation/problems/navier-stokes/theorem-construction/canonical-center-atlas-admissibility-reduction.md).
