# Cycle-Exact Projective Synchronization Packet

## Status

Alternative terminal theorem packet for the preferred exact-potential branch of
the live selector route.

Role: downstream projective synchronization / projector-recovery packet on the
exact-potential simple-top branch.

This note is slightly cleaner than
`cycle-exact-angular-observability-packet.md` because it works directly with
unoriented lines and rank-one projectors, matching the signless target on the
simple-top branch.

For the exact distinction between what a spectral gap can legitimately do
(rigidity / stable projector recovery) and the deeper identification theorem the
route still owes, see
[spectral-gap-rigidity-and-projector-identification-note.md](/Users/thomasbirnie/Workspace/ToE/Research-Consolidation/problems/navier-stokes/theorem-construction/spectral-gap-rigidity-and-projector-identification-note.md).

For the cross-lane braid harvest that explains why this slot should be treated
as local-to-global projective gluing rather than direct orientation recovery
from `W_J` alone, see
[pair-to-cocycle-synchronization-braid-harvest.md](/Users/thomasbirnie/Workspace/ToE/Research-Consolidation/problems/navier-stokes/theorem-construction/pair-to-cocycle-synchronization-braid-harvest.md).

Its lawful branch start is upstream:
`EWI.A` in
[mpp-exact-potential-witness-to-readout-theorem.md](/Users/thomasbirnie/Workspace/ToE/Research-Consolidation/problems/navier-stokes/theorem-construction/mpp-exact-potential-witness-to-readout-theorem.md).
This note is a downstream projective synchronization / projector-recovery packet
on that exact-potential branch; it is not the constitutive import surface.

## Purpose

The live exact-potential target on the simple-top branch is already projective:

```math
\Xi_J^{ang}(a,b,t)
:=
1-\big(e_{ab}(t)\cdot n_J(a,b,t)\big)^2.
\tag{CPS.0}
```

The sign of neither `e_{ab}` nor `n_J` matters. So the last missing geometric
step does not have to be phrased as recovery of an oriented direction field or
polarity map. It can be phrased as recovery of a line field, equivalently a
rank-one orthogonal projector field.

Set

```math
P_{ab}(t):=e_{ab}(t)\otimes e_{ab}(t),
\qquad
P_{J,\top}^{seg}(a,b,t):=n_J(a,b,t)\otimes n_J(a,b,t).
\tag{CPS.0a}
```

Then

```math
1-\big(e_{ab}(t)\cdot n_J(a,b,t)\big)^2
=
\frac12
\big\|
P_{ab}(t)-P_{J,\top}^{seg}(a,b,t)
\big\|_F^2.
\tag{CPS.0b}
```

So the final missing step may be isolated as:

```text
exact-potential witness-to-readout splice (EWI.A)
-> signless pair-defect packet on the same transported family
-> projective synchronization / projector recovery
-> expanding-projector comparison
-> angular ledger
-> PD.70z.
```

## Live branch position

Installed already:

1. pair-defect PDE closure on the torus-first branch;
2. the residual splice
   `pair-defect PDE -> PD.70 -> PD.70aa -> SG.4B`
   once the cycle-exact directional estimate is granted;
3. the simple-top angle reduction and the projector identities in
   `tps-alignment-to-strain-production-lemma.md`;
4. the concrete cycle-exact angular ledger
   `\Xi_J^{ang}=1-(e_{ab}\cdot n_J)^2`;
5. the finite-strip square-root upgrade on the normal-covector route.

Still missing:

1. selector-adapted observability from signless `W_J` to a projective
   rank-one object attached to the transported good family;
2. comparison of that recovered projector to the top strain projector on the
   simple-top branch.

## Downstream projective input to isolate below `EWI.A`

### Hypothesis `TCJ` (transport coherence on the good family)

After `EWI.A` has already installed the transported family and the CM-paid
packing/transport ledgers on that family, use the same downstream
transport-coherence packet as in `cycle-exact-angular-observability-packet.md`:
a transported good family `G_J^{pair}(I)` on the strip `I=[t_0,t_1]`, a
measurable transported pair direction field `e_{ab}(t)`,
almost-everywhere trajectory uniqueness, and an asymmetric Lusin-Lipschitz
transport control absorbed into a strip coherence ledger
`\mathcal E_{J,\mathrm{coh}}(I)`.

### Theorem `TCJ'` (a.e. transport coherence from regular Lagrangian flow)

Assume the coarse transport field lies in a regular-Lagrangian-flow regime on
the strip `I=[t_0,t_1]` with the following properties:

1. there is a measurable flow map `X(t,a)` uniquely defined for Lebesgue a.e.
   initial datum `a`;
2. the associated pair transport is defined for Lebesgue a.e. active pair;
3. one has an asymmetric Lusin-Lipschitz control on the a.e.-unique flow set.

Then there exists a measurable active pair family
`G_{J,\mathrm{rlf}}^{pair}(I)\subseteq G_J^{pair}(I)` of full pair-measure in
the active family such that for a.e. `(a,b)\in G_{J,\mathrm{rlf}}^{pair}(I)`
and a.e. `t\in I`,

```math
P_{ab}(t)
:=
e_{ab}(t)e_{ab}(t)^\top,
\qquad
e_{ab}(t)
:=
\frac{X(t,a)-X(t,b)}{|X(t,a)-X(t,b)|},
\tag{TCJ'.1}
```

is measurable whenever the pair separation is non-zero, and all transport
coherence defects coming from the exceptional flow set, pair collisions, and
the asymmetric distortion bound are absorbed into a strip coherence ledger
`\mathcal E_{J,\mathrm{coh}}(I)`.

**Proof.**
Choose `G_{J,\mathrm{rlf}}^{pair}(I)` inside the full pair-measure subset on
which the regular Lagrangian flow is uniquely defined for both endpoints of the
pair. Measurability of `(a,t)\mapsto X(t,a)` gives measurability of
`(a,b,t)\mapsto P_{ab}(t)` wherever `X(t,a)\neq X(t,b)`. The transport
exception set and any pair-collision exceptional set are then placed directly
into the strip ledger `\mathcal E_{J,\mathrm{coh}}(I)`. The asymmetric
Lusin-Lipschitz estimate supplies the quantitative distortion term that is
likewise absorbed into that ledger. This is exactly the level of transport
coherence needed by the projective packet.

For the external support of this step, see Galeati’s theorem that Leray
solutions admit deterministic and stochastic Lagrangian trajectories unique for
Lebesgue-a.e. initial data, with a key asymmetric Lusin-Lipschitz property in
the framework of regular Lagrangian flows. ∎

### Hypothesis `PSJ` (projective synchronization from the signless pair packet)

There exists a measurable rank-one orthogonal projector field

```math
\widehat P_J(a,b,t)
\qquad
\text{for }(a,b,t)\in G_J^{pair}(I)\times I,
\tag{PSJ.1}
```

constructed from signless local packet data or pairwise correlations derived
from `W_J`, such that

```math
\big\|
P_{ab}(t)-\widehat P_J(a,b,t)
\big\|_F^2
\le
C_{\mathrm{sync}}\,
\big|W_J(a,b,t)\big|^2
+
\operatorname{err}_{J,\mathrm{sync}}(a,b,t)
\tag{PSJ.2}
```

for almost every active pair and time, with integrated error budget

```math
\int_I\!\!\int_{G_J^{pair}(I)}
\operatorname{err}_{J,\mathrm{sync}}(a,b,t)
\,d\mu_J^{pair}(a,b)\,dt
\le
C\Big(
\mathcal E_{J,\mathrm{coh}}(I)
+
\mathcal E_{J,\mathrm{sync}}^{\mathrm{err}}(I)
\Big).
\tag{PSJ.3}
```

Interpretation:

1. this is the sign-compatible analog of recovering phase or line data from
   magnitude-only local measurements;
2. the target object is a line field in projective space, not an oriented
   vector field;
3. this is the slot where angular-synchronization / common-line type ideas
   would enter.

### Proposition `PSJ.0` (projector recovery does not follow from `W_J` alone)

There is no theorem of the form `(PSJ.2)`-`(PSJ.3)` whose assumptions involve
only the current local signless packet `W_J`, the transport-coherence packet
`TCJ`, and the existing PDE coercive bounds.

**Proof.**
Suppose such a recovery theorem existed. Consider two admissible configurations
on the same active pair family with identical signless packet data

```math
W_J^{(1)}(a,b,t)=W_J^{(2)}(a,b,t)\equiv 0,
\tag{PSJ.0a}
```

and the same transport-coherence ledger, but with different true projective
pair fields, for example

```math
P_{ab}^{(1)}(t)\equiv e_1e_1^\top,
\qquad
P_{ab}^{(2)}(t)\equiv e_2e_2^\top
\tag{PSJ.0b}
```

on a positive-measure subset of the active family. Any construction
`\widehat P_J=\widehat P_J[W_J]` depending only on the installed signless input
must produce the same output in the two configurations, because the input data
are identical. But the projector discrepancy
`d_{\mathrm{proj}}(\widehat P_J,P_{ab})^2` cannot vanish in both
configurations on that positive-measure subset. Hence projector recovery does
not follow from `W_J` alone.

So the genuine missing datum is not merely “small local defect”: one must also
specify a synchronization observable, graph, or kernel built from the packet.
This matches the external synchronization literature, which assumes noisy
pairwise ratios on a measurement graph rather than a scalar local defect alone.
∎

### Hypothesis `PPCJ` (expanding-projector comparison)

On the simple-top branch, let `P_{J,\top}^{seg}` be the top segment strain
projector from `(CPS.0a)`. Assume the synchronized projector obeys

```math
\big\|
\widehat P_J(a,b,t)-P_{J,\top}^{seg}(a,b,t)
\big\|_F^2
\le
\operatorname{err}_{J,\mathrm{top}}(a,b,t)
\tag{PPCJ.1}
```

for almost every active pair and time, with integrated bound

```math
\int_I\!\!\int_{G_J^{pair}(I)}
\operatorname{err}_{J,\mathrm{top}}(a,b,t)
\,d\mu_J^{pair}(a,b)\,dt
\le
C\Big(
\mathcal E_{J,\mathrm{coh}}(I)
+
\mathcal E_{J,\mathrm{top}}^{\mathrm{err}}(I)
\Big).
\tag{PPCJ.2}
```

Interpretation:

1. this is the place where a Davis-Kahan style perturbation theorem, a
   common-line recovery theorem, or another projector-identification argument
   would enter;
2. it is strictly sign-compatible, because it compares rank-one projectors
   rather than oriented vectors.

### Theorem `PPCJ'` (Davis-Kahan projector comparison from an observable symmetric surrogate)

Assume the simple-top branch and let `S_J^{seg}(a,b,t)` be the symmetric segment
strain tensor with top spectral projector `P_{J,\top}^{seg}(a,b,t)`. Write

```math
\gamma_J(a,b,t)
:=
\lambda_{J,1}^{seg}(a,b,t)-\lambda_{J,2}^{seg}(a,b,t)
>0.
\tag{PPCJ'.1}
```

Assume there exists a measurable symmetric observable surrogate
`\widetilde S_J(a,b,t)` with top spectral projector `\widetilde N_J(a,b,t)`
such that

```math
\big\|
\widetilde S_J(a,b,t)-S_J^{seg}(a,b,t)
\big\|_{\mathrm{op}}
\le
\varepsilon_J^{obs}(a,b,t),
\qquad
2\varepsilon_J^{obs}(a,b,t)\le \gamma_J(a,b,t).
\tag{PPCJ'.2}
```

Then

```math
d_{\mathrm{proj}}\!\big(
\widetilde N_J(a,b,t),P_{J,\top}^{seg}(a,b,t)
\big)^2
\le
\frac{4\,\varepsilon_J^{obs}(a,b,t)^2}{\gamma_J(a,b,t)^2},
\tag{PPCJ'.3}
```

where

```math
d_{\mathrm{proj}}(P,Q)^2
:=
\frac12\|P-Q\|_F^2.
\tag{PPCJ'.4}
```

Consequently, if

```math
\int_I\!\!\int_{G_J^{pair}(I)}
\frac{\varepsilon_J^{obs}(a,b,t)^2}{\gamma_J(a,b,t)^2}
\,d\mu_J^{pair}(a,b)\,dt
\le
\mathcal E_{J,\mathrm{spec}}^{\mathrm{err}}(I),
\tag{PPCJ'.5}
```

then

```math
\int_I\!\!\int_{G_J^{pair}(I)}
d_{\mathrm{proj}}\!\big(
\widetilde N_J,P_{J,\top}^{seg}
\big)^2
\,d\mu_J^{pair}\,dt
\le
4\,\mathcal E_{J,\mathrm{spec}}^{\mathrm{err}}(I).
\tag{PPCJ'.6}
```

**Proof.**
Apply the one-dimensional Davis-Kahan sin-Theta theorem to the symmetric pair
`(S_J^{seg},\widetilde S_J)` with population gap `\gamma_J`. The
population-gap version gives

```math
\sin\angle\!\big(
\widetilde N_J,P_{J,\top}^{seg}
\big)
\le
\frac{2\,\varepsilon_J^{obs}}{\gamma_J}.
\tag{PPCJ'.7}
```

For rank-one orthogonal projectors,

```math
d_{\mathrm{proj}}(P,Q)^2
=
\sin^2\angle(P,Q),
\tag{PPCJ'.8}
```

substituting `(PPCJ'.8)` into the Davis-Kahan bound `(PPCJ'.7)` gives
`(PPCJ'.3)`. Integrating gives `(PPCJ'.6)`. ∎

## Cycle-exact projective synchronization theorem

### Theorem `CPS.1` (projective synchronization implies angular observability)

Assume `EWI.A` has already installed the exact-potential constitutive import on
the same transported good family. Assume also:

1. the cycle-exact branch, so `\mathcal E_J^{loop}(I)=0`;
2. the installed simple-top spectral-gap and angle-reduction packet;
3. Theorem `TCJ'`;
4. Hypothesis `PSJ`;
5. there exists a measurable symmetric observable surrogate
   `\widetilde S_J(a,b,t)` whose top spectral projector agrees with the
   synchronized projector from `PSJ`,
   `\widetilde N_J(a,b,t)=\widehat P_J(a,b,t)`, and for which the hypotheses
   of `PPCJ'` hold;
6. the installed observed-packet bound

```math
\int_I\!\!\int_{G_J^{pair}(I)}
\big|W_J(a,b,t)\big|^2
\,d\mu_J^{pair}(a,b)\,dt
\le
C_{\mathrm{obs}}\,
\mathcal E_J^{obs}(I).
\tag{CPS.1}
```

Then the angular directional ledger satisfies

```math
\mathcal E_J^{dir,ang}(I)
:=
\int_I\!\!\int_{G_J^{pair}(I)}
\Big(
1-\big|e_{ab}(t)\cdot n_J(a,b,t)\big|^2
\Big)
\,d\mu_J^{pair}(a,b)\,dt
\le
C\Big(
\mathcal E_J^{obs}(I)
+
\mathcal E_{J,\mathrm{coh}}(I)
+
\mathcal E_{J,\mathrm{sync}}^{\mathrm{err}}(I)
+
\mathcal E_{J,\mathrm{spec}}^{\mathrm{err}}(I)
\Big).
\tag{CPS.2}
```

In particular, if the coherence and projector-comparison errors are absorbed
into the installed strip error budget, then

```math
\mathcal E_J^{dir,ang}(I)
\le
C\Big(
\mathcal E_J^{obs}(I)
+
\mathcal E_{J,\mathrm{strip}}^{\mathrm{err}}(I)
\Big).
\tag{CPS.3}
```

**Proof.**
By `(CPS.0b)`,

```math
1-\big|e_{ab}\cdot n_J\big|^2
=
\frac12\big\|P_{ab}-P_{J,\top}^{seg}\big\|_F^2.
```

Insert the synchronized projector `\widehat P_J` and use the Frobenius triangle
inequality:

```math
\big\|P_{ab}-P_{J,\top}^{seg}\big\|_F^2
\le
2\big\|P_{ab}-\widehat P_J\big\|_F^2
+
2\big\|\widehat P_J-P_{J,\top}^{seg}\big\|_F^2.
\tag{CPS.4}
```

By assumption `5`, the synchronized projector is itself the top projector of
the observable surrogate entering `PPCJ'`, so `(PPCJ'.3)` gives

```math
\big\|\widehat P_J-P_{J,\top}^{seg}\big\|_F^2
\le
C\,\frac{\varepsilon_J^{obs}(a,b,t)^2}{\gamma_J(a,b,t)^2}.
\tag{CPS.5a}
```

Combine `(CPS.0b)` with `(PSJ.2)` and `(CPS.5a)` to obtain

```math
1-\big|e_{ab}\cdot n_J\big|^2
\le
C\big|W_J\big|^2
+
C\,\operatorname{err}_{J,\mathrm{sync}}
+
C\,\frac{\varepsilon_J^{obs}(a,b,t)^2}{\gamma_J(a,b,t)^2}.
\tag{CPS.5}
```

Integrate over `G_J^{pair}(I)\times I` and apply `(CPS.1)`, `(PSJ.3)`, and
`(PPCJ'.6)` to conclude `(CPS.2)`. The absorbed form `(CPS.3)` is obtained by
moving the last term of `(CPS.2)` to the left and using the smallness allowance
in `(PSJ.3)`. ∎

## Splice to the installed cycle-exact branch

### Corollary `CPS.2` (projective synchronization implies `PD.70z`)

Assume the hypotheses of `CPS.1` and the installed simple-top angle reduction

```math
[\lambda_J(t)-\mathfrak s_J(a,b,t)]_+
\le
\varepsilon_J^{spec}(a,b,t)
+
\Gamma_J^{seg}(a,b,t)\,\alpha_J(a,b,t),
\tag{CPS.6}
```

with `\alpha_J=1-(e_{ab}\cdot n_J)^2` on the same selector-good family.

Then

```math
\mathcal E_J^{dir}(I)
\le
C\Big(
\mathcal E_J^{obs}(I)
+
\mathcal E_{J,\mathrm{strip}}^{\mathrm{err}}(I)
\Big),
\tag{CPS.7}
```

which is exactly the desired cycle-exact directional estimate `PD.70z` on the
simple-top branch.

**Proof.**
Substitute `(CPS.3)` into the already installed simple-top reduction `(CPS.6)`.
This yields `(CPS.7)`. ∎

### Corollary `CPS.3` (`PD.70z` closes the exact-potential branch)

Assume the hypotheses of `CPS.2`. Then the exact-potential branch closes
through the already installed on-disk splices:

```math
\text{cycle-exact projective synchronization}
\Longrightarrow
PD.70z
\Longrightarrow
PD.70
\Longrightarrow
PD.70aa
\Longrightarrow
SG.4B.
\tag{CPS.8}
```

**Proof.**
This is exactly the existing downstream packet and requires no new geometry
beyond `CPS.2`. ∎

## Why this route is slightly better than `TEA`

Relative to the direct trajectorywise alignment hypothesis `TEA`, this packet
has three advantages.

1. It is sign-compatible: the target defect already lives on `\mathbf{RP}^2`,
   so the theorem is phrased on projectors instead of oriented vectors.
2. It splits the missing input into two independently checkable slots:
   synchronization from signless local data, and comparison with the expanding
   projector.
3. It exposes exactly where a perturbative theorem would enter if one can build
   a correlation operator or synchronized line field from `W_J`.

What it does **not** do is remove the need for new geometry. The transport step
is now supportable as `TCJ'`, and the projector-comparison step is a
conditional `PPCJ'` consequence once an observable symmetric surrogate is
supplied. The genuinely open theorem is still `PSJ`: recovering a
synchronization observable from the signless packet itself.

## Relation to external ideas

This packet is motivated by three external-style roles.

1. `TCJ` is the transport-coherence role suggested by asymmetric
   Lusin-Lipschitz / almost-everywhere trajectory-uniqueness work.
2. `PSJ` is the signless line-recovery role suggested by magnitude-only phase
   retrieval and angular synchronization.
3. `PPCJ` is the projector-comparison role suggested by spectral perturbation
   and synchronization-over-groups frameworks.

These roles are used only as templates for the missing theorem shape. No
unsupported import into the Navier-Stokes packet is made.

## Theorem family `PSJ+` (observable projective surrogate from transported pair geometry)

The formal no-go proposition `PSJ.0` shows that the current signless defect
packet cannot by itself determine the transported projective line field.
The smallest honest upgrade is therefore to augment the packet by the
transported pair geometry itself and to build a local symmetric PSD surrogate
from the transported pair projectors.

Fix a localization radius `r`, a pair-length window `\rho`, a bounded
measurable active-pair selector `0\le \chi_J\le 1`, a bounded nonnegative
spatial kernel `\phi_r`, a bounded nonnegative scale window `\psi_\rho`, and a
bounded nonnegative confidence weight `\alpha`. For
`(x,t)\in \mathbf R^3\times I`, write

```math
m_{ab}(t):=\frac{X(t,a)+X(t,b)}{2},
\qquad
w_{J,x,t}(a,b)
:=
\chi_J(a,b,t)\,
\phi_r\!\bigl(x-m_{ab}(t)\bigr)\,
\psi_\rho\!\bigl(|X(t,a)-X(t,b)|\bigr)\,
\alpha\!\bigl(W_J(a,b,t)\bigr),
\tag{PSJ+.1}
```
and define the localized projector-moment tensor

```math
\widetilde S_J(x,t)
:=
\int_{G_{J,\mathrm{rlf}}^{pair}(I)}
w_{J,x,t}(a,b)\,P_{ab}(t)\,d\mu_J^{pair}(a,b).
\tag{PSJ+.2}
```

### Theorem `PSJ+.1` (observable projective surrogate construction)

Assume `TCJ'` and that the transported pair positions
`(X(t,a),X(t,b))` are available on `G_{J,\mathrm{rlf}}^{pair}(I)`. Then
`\widetilde S_J(x,t)` is measurable, symmetric, and positive semidefinite for
almost every `(x,t)`. On the simple-gap set

```math
\Omega_{J,\mathrm{gap}}
:=
\Bigl\{
(x,t):
\lambda_1\bigl(\widetilde S_J(x,t)\bigr)
>
\lambda_2\bigl(\widetilde S_J(x,t)\bigr)
\Bigr\},
\tag{PSJ+.3}
```

the top spectral projector

```math
\widehat P_J(x,t):=\Pi_{\max}\bigl(\widetilde S_J(x,t)\bigr)
\tag{PSJ+.4}
```

is measurable.

**Proof.**
By `TCJ'`, `(a,b,t)\mapsto P_{ab}(t)` is measurable on the a.e.-transport-good
family. The weight `w_{J,x,t}(a,b)` is measurable and bounded by construction,
so `(x,t,a,b)\mapsto w_{J,x,t}(a,b)P_{ab}(t)` is measurable and integrable on
the localized active family. Therefore `(x,t)\mapsto \widetilde S_J(x,t)` is a
measurable matrix field.

Each `P_{ab}(t)` is a symmetric positive semidefinite rank-one projector, and
the weight is nonnegative. Hence `\widetilde S_J(x,t)` is symmetric
positive semidefinite as a nonnegative integral combination of such
projectors.

On `\Omega_{J,\mathrm{gap}}`, the top eigenvalue is simple. The map sending a
symmetric matrix with simple top eigenvalue to its top spectral projector is a
Borel function of the matrix entries, so `(x,t)\mapsto \widehat P_J(x,t)` is
measurable there. ∎

### Theorem `PSJ+.2` (localized projector concentration implies projective recovery)

Let `N_J(x,t)` be a measurable rank-one projector field on the simple-top set,
and define the local mass

```math
m_J(x,t)
:=
\int_{G_{J,\mathrm{rlf}}^{pair}(I)}
w_{J,x,t}(a,b)\,d\mu_J^{pair}(a,b).
\tag{PSJ+.5}
```

Assume `m_J(x,t)>0` and

```math
\frac{1}{m_J(x,t)}
\int_{G_{J,\mathrm{rlf}}^{pair}(I)}
w_{J,x,t}(a,b)\,
d_{\mathrm{proj}}\!\bigl(P_{ab}(t),N_J(x,t)\bigr)^2
\,d\mu_J^{pair}(a,b)
\le
\varepsilon_J(x,t).
\tag{PSJ+.6}
```

Then

```math
\bigl\|
\widetilde S_J(x,t)-m_J(x,t)N_J(x,t)
\bigr\|_{\mathrm{op}}
\le
\sqrt{2}\,m_J(x,t)\,\varepsilon_J(x,t)^{1/2}.
\tag{PSJ+.7}
```

If in addition `\varepsilon_J(x,t)\le 1/8`, then `(x,t)\in\Omega_{J,\mathrm{gap}}`
and

```math
d_{\mathrm{proj}}\!\bigl(\widehat P_J(x,t),N_J(x,t)\bigr)^2
\le
8\,\varepsilon_J(x,t).
\tag{PSJ+.8}
```

**Proof.**
Write

```math
\widetilde S_J-m_JN_J
=
\int_{G_{J,\mathrm{rlf}}^{pair}(I)}
w_{J,x,t}(a,b)\,\bigl(P_{ab}(t)-N_J(x,t)\bigr)\,d\mu_J^{pair}(a,b).
\tag{PSJ+.9}
```

Hence

```math
\bigl\|
\widetilde S_J-m_JN_J
\bigr\|_{\mathrm{op}}
\le
\int
w_{J,x,t}\,
\bigl\|
P_{ab}-N_J
\bigr\|_{F}\,d\mu_J^{pair}.
\tag{PSJ+.10}
```

Apply Cauchy-Schwarz:

```math
\bigl\|
\widetilde S_J-m_JN_J
\bigr\|_{\mathrm{op}}
\le
\Bigl(\int w_{J,x,t}\,d\mu_J^{pair}\Bigr)^{1/2}
\Bigl(
\int
w_{J,x,t}\,
\bigl\|
P_{ab}-N_J
\bigr\|_F^2\,d\mu_J^{pair}
\Bigr)^{1/2}.
\tag{PSJ+.11}
```

Since `\|P-Q\|_F^2=2\,d_{\mathrm{proj}}(P,Q)^2`, `(PSJ+.6)` gives `(PSJ+.7)`.

Now set `A:=m_JN_J` and `E:=\widetilde S_J-A`. The eigenvalues of `A` are
`m_J,0,0`, so the population gap is `\gamma_J^{loc}=m_J`. By `(PSJ+.7)`,

```math
\|E\|_{\mathrm{op}}
\le
\sqrt{2}\,m_J\,\varepsilon_J^{1/2}.
\tag{PSJ+.12}
```

If `\varepsilon_J\le 1/8`, then
`2\|E\|_{\mathrm{op}}\le \gamma_J^{loc}`. Applying the same rank-one
Davis-Kahan estimate used in `PPCJ'` to the symmetric pair
`(A,\widetilde S_J)` yields `(PSJ+.8)`. In particular the top eigenspace is
simple, so `(x,t)\in\Omega_{J,\mathrm{gap}}`. ∎

### Corollary `PSJ+.3` (concentration closes the projective-surrogate side)

Assume the installed simple-top identification of the local top strain
projector with `N_J(x,t)`, and suppose the concentration estimate `(PSJ+.6)`
holds with an integrated budget absorbed into the strip ledger. Then the
localized surrogate `\widetilde S_J` furnishes the observable symmetric
surrogate required by `PPCJ'`, and the projective-surrogate side of the
cycle-exact branch closes conditionally through `PPCJ'`.

**Proof.**
By `PSJ+.1`, the surrogate exists and is measurable. By `PSJ+.2`, its top
projector is quantitatively close to `N_J` under the localized concentration
hypothesis. This is exactly the projector-comparison input required to feed the
existing `PPCJ' -> CPS.1 -> PD.70z` splice. ∎

### Assumption `PSJ+.SST` (persistent simple-top strain packet)

Fix `(x,t)` and a backward window `[t-\tau,t]`. Assume there exist measurable
matrix fields

```math
A_{x,t}(s)=S_{x,t}(s)+\Omega_{x,t}(s),
\qquad
N_{x,t}(s),
\qquad s\in[t-\tau,t],
\tag{PSJ+.13}
```

with `S_{x,t}(s)` symmetric, `\Omega_{x,t}(s)` skew, and `N_{x,t}(s)` a
rank-one projector, such that for `w_{J,x,t}`-almost every active pair:

1. the pair separation `\xi_{ab}(s):=X(s,a)-X(s,b)` obeys

```math
\dot \xi_{ab}(s)=A_{x,t}(s)\,\xi_{ab}(s)+r_{ab}(s),
\qquad
|r_{ab}(s)|\le \eta\,|\xi_{ab}(s)|;
\tag{PSJ+.14}
```

2. `N_{x,t}(s)` is the top spectral projector of `S_{x,t}(s)` and

```math
\lambda_1\bigl(S_{x,t}(s)\bigr)-\lambda_2\bigl(S_{x,t}(s)\bigr)\ge \gamma>0;
\tag{PSJ+.15}
```

3. the corotational variation of the top projector is small:

```math
\bigl\|
\dot N_{x,t}(s)-[\Omega_{x,t}(s),N_{x,t}(s)]
\bigr\|_{\mathrm{op}}
\le \kappa;
\tag{PSJ+.16}
```

4. the initial misalignment satisfies

```math
q_{ab}(t-\tau)
:=
d_{\mathrm{proj}}\!\bigl(
P_{ab}(t-\tau),N_{x,t}(t-\tau)
\bigr)^2
\le q_\ast<1;
\tag{PSJ+.17}
```

5. the forcing is small enough that

```math
C_0(\kappa+\eta)\le \gamma q_\ast(1-q_\ast)
\tag{PSJ+.18}
```

for a universal constant `C_0`.

This is a named sufficient simple-top input packet on the exact-potential
branch. It is not claimed to follow from the installed selector packet alone;
the current route still treats projector synchronization / selector-strain
comparison as the downstream open burden.

### Theorem `PSJ+.4` (localized projector concentration under Assumption `PSJ+.SST`)

Assume `PSJ+.SST`. Then for every such pair and every `s\in[t-\tau,t]`,

```math
q_{ab}(s)\le q_\ast,
\tag{PSJ+.19}
```

and with

```math
\Gamma:=\gamma(1-q_\ast),
\tag{PSJ+.20}
```

one has

```math
q_{ab}(t)
\le
e^{-2\Gamma\tau}\,q_{ab}(t-\tau)
+
\frac{C(\kappa+\eta)}{2\Gamma}
\bigl(1-e^{-2\Gamma\tau}\bigr).
\tag{PSJ+.21}
```

Consequently,

```math
\frac1{m_J(x,t)}
\int_{G_{J,\mathrm{rlf}}^{pair}(I)}
w_{J,x,t}(a,b)\,
d_{\mathrm{proj}}\!\bigl(P_{ab}(t),N_{x,t}(t)\bigr)^2
\,d\mu_J^{pair}(a,b)
\le
e^{-2\Gamma\tau}\,q_\ast
+
\frac{C(\kappa+\eta)}{2\Gamma},
\tag{PSJ+.22}
```

and therefore

```math
\bigl\|
\widetilde S_J(x,t)-m_J(x,t)N_{x,t}(t)
\bigr\|_{\mathrm{op}}
\le
\sqrt{2}\,m_J(x,t)\,
\Bigl(
e^{-2\Gamma\tau}\,q_\ast
+
\frac{C(\kappa+\eta)}{2\Gamma}
\Bigr)^{1/2}.
\tag{PSJ+.23}
```

**Proof.**
For one active pair, set
`e_{ab}(s):=\xi_{ab}(s)/|\xi_{ab}(s)|` and `P_{ab}(s):=e_{ab}(s)e_{ab}(s)^\top`.
From `(PSJ+.14)`,

```math
\dot e_{ab}
=
(I-P_{ab})A_{x,t}e_{ab}+\varepsilon_{ab},
\qquad
|\varepsilon_{ab}|\le C\eta,
\tag{PSJ+.24}
```

and hence

```math
\dot P_{ab}
=
[\Omega_{x,t},P_{ab}]
+
S_{x,t}P_{ab}+P_{ab}S_{x,t}
-2\,\mathrm{tr}(S_{x,t}P_{ab})\,P_{ab}
+E_{ab},
\qquad
\|E_{ab}\|_{\mathrm{op}}\le C\eta.
\tag{PSJ+.25}
```

Choose an orthogonal frame `R(s)` solving `\dot R=\Omega_{x,t}R` and define
`\widetilde P_{ab}=R^\top P_{ab}R`, `\widetilde S_{x,t}=R^\top S_{x,t}R`,
`\widetilde N_{x,t}=R^\top N_{x,t}R`. Then `d_{\mathrm{proj}}` is invariant
under conjugation and `(PSJ+.16)` becomes

```math
\bigl\|
\dot{\widetilde N}_{x,t}
\bigr\|_{\mathrm{op}}
\le \kappa.
\tag{PSJ+.26}
```

In this frame,

```math
\dot{\widetilde P}_{ab}
=
\widetilde S_{x,t}\widetilde P_{ab}
+\widetilde P_{ab}\widetilde S_{x,t}
-2\,\mathrm{tr}(\widetilde S_{x,t}\widetilde P_{ab})\,\widetilde P_{ab}
+\widetilde E_{ab}.
\tag{PSJ+.27}
```

Now set

```math
q_{ab}(s):=
d_{\mathrm{proj}}\!\bigl(
\widetilde P_{ab}(s),\widetilde N_{x,t}(s)
\bigr)^2
=
1-\mathrm{tr}\!\bigl(
\widetilde P_{ab}(s)\widetilde N_{x,t}(s)
\bigr).
\tag{PSJ+.28}
```

At each time diagonalize `\widetilde S_{x,t}` in an orthonormal basis with
first vector spanning `\widetilde N_{x,t}`. For the exact symmetric flow
`(\widetilde E_{ab}=0)` and frozen `\widetilde N_{x,t}`, one computes

```math
\dot q_{ab}
\le
-2\gamma\,q_{ab}(1-q_{ab}).
\tag{PSJ+.29}
```

The perturbation terms coming from `\widetilde E_{ab}` and
`\dot{\widetilde N}_{x,t}` contribute at most `C(\eta+\kappa)`, so

```math
\dot q_{ab}
\le
-2\gamma\,q_{ab}(1-q_{ab})+C(\eta+\kappa).
\tag{PSJ+.30}
```

By `(PSJ+.18)`, the first time at which `q_{ab}` could hit `q_\ast` would
satisfy `\dot q_{ab}<0`, contradiction. Hence `(PSJ+.19)` holds on the whole
window. Using `1-q_{ab}\ge 1-q_\ast` in `(PSJ+.30)` gives

```math
\dot q_{ab}
\le
-2\Gamma q_{ab}+C(\eta+\kappa),
\tag{PSJ+.31}
```

with `\Gamma` from `(PSJ+.20)`. Gronwall yields `(PSJ+.21)`.

Average `(PSJ+.21)` against the nonnegative weight `w_{J,x,t}` and divide by
`m_J(x,t)` to obtain `(PSJ+.22)`. Finally,

```math
\widetilde S_J(x,t)-m_J(x,t)N_{x,t}(t)
=
\int
w_{J,x,t}(a,b)\,
\bigl(
P_{ab}(t)-N_{x,t}(t)
\bigr)\,d\mu_J^{pair}(a,b),
\tag{PSJ+.32}
```

so Cauchy-Schwarz and `\|P-Q\|_F^2=2d_{\mathrm{proj}}(P,Q)^2` give
`(PSJ+.23)`. ∎

### Proposition `PSJ+.5` (existing strip-local bridge data reduce the justification of `PSJ+.SST` to explicit window budgets)

Fix one localized packet point `(x,t)` and one backward window
`I=[t-\tau,t]` on the a.e.-transport-good active family. Assume that for
`w_{J,x,t}`-almost every active pair `(a,b)`:

1. the coarse pair separation
   `\xi_{ab}(s):=\delta_{ab}^{coarse}(s)=X_{\le J}(b,s)-X_{\le J}(a,s)`
   obeys the exact segment transport law from Proposition `AS.1`,

```math
\partial_s \xi_{ab}(s)
=
\mathcal M_J(a,b,s)\,\xi_{ab}(s),
\qquad
\mathcal M_J(a,b,s)=\mathcal S_J(a,b,s)+K_J^{seg}(a,b,s);
\tag{PSJ+.33}
```

2. on `I`, the top eigenspace of the segment strain
   `\mathcal S_J(a,b,s)` is simple with measurable projector
   `N_{x,t}(s):=P_{J,\top}^{seg}(a,b,s)=n_J(a,b,s)\otimes n_J(a,b,s)` and
   uniform gap floor

```math
g_J(a,b,s)
:=
\lambda_{J,\top}^{seg}(a,b,s)-\lambda_{J,2}^{seg}(a,b,s)
\ge \gamma_\ast>0;
\tag{PSJ+.34}
```

3. `A_J^{seg}(a,b,\cdot)=\mathcal S_J(a,b,\cdot)` is absolutely continuous on
   `I`, the gauge `(AS.33)` is used, and the corotational drift budget is
   uniformly bounded by

```math
2\Bigl(
|K_J^{seg}(a,b,s)n_J(a,b,s)|
+
\frac{\|\partial_s A_J^{seg}(a,b,s)\|_{\mathrm{op}}}{g_J(a,b,s)}
\Bigr)
\le
\kappa_\ast
\qquad\text{for a.e. }s\in I;
\tag{PSJ+.35}
```

4. the strip entrance misalignment is controlled by one theorem-safe entrance
   ledger

```math
\alpha_J(a,b,t-\tau)
=
d_{\mathrm{proj}}\!\bigl(
P_{ab}(t-\tau),N_{x,t}(t-\tau)
\bigr)^2
\le
q_\ast
<1;
\tag{PSJ+.36}
```

5. the drift is small relative to the gap and the entrance cone:

```math
C_0\kappa_\ast
\le
\gamma_\ast q_\ast(1-q_\ast).
\tag{PSJ+.37}
```

Then Assumption `PSJ+.SST` holds on that window with

```math
S_{x,t}(s):=\mathcal S_J(a,b,s),
\qquad
\Omega_{x,t}(s):=K_J^{seg}(a,b,s),
\qquad
\eta:=0,
\qquad
\gamma:=\gamma_\ast,
\qquad
\kappa:=\kappa_\ast.
\tag{PSJ+.38}
```

In particular, the current repo does justify `PSJ+.SST` on the intended active
family once one supplies only three explicit local inputs on that family:

1. a simple-top gap floor `g_J\ge\gamma_\ast`;
2. a corotational drift bound `(PSJ+.35)`;
3. a theorem-safe entrance bound `(PSJ+.36)`.

Two installed sources for `(PSJ+.36)` are already on disk:

```math
q_\ast
\;\ge\;
2e^{-2G_J^{mat}(a,b,t-\tau;t_-)}
\frac{1-c_{J,0}(a,b,t-\tau;t_-)^2}{c_{J,0}(a,b,t-\tau;t_-)^2}
+
2\delta_J^{car}(a,b,t-\tau;t_-)
\tag{PSJ+.39}
```

from Corollary `D.7ic`, and

```math
q_\ast
\;\ge\;
2\widetilde\alpha_J^{aux}(a,b;t-\tau;I)
+
\eta_J^{aux}(a,b;I),
\tag{PSJ+.40}
```

with the Cauchy-Green specialization
`\eta_J^{aux}=2|m_J(t-\tau,a,b)|^2/\operatorname{gap}_J^{CG}(t-\tau,a)^2` from
Corollary `D.7ig`.

**Proof.**
Set `\xi_{ab}:=\delta_{ab}^{coarse}`. Proposition `AS.1` gives
`\partial_s\xi_{ab}=\mathcal M_J\xi_{ab}`, so `(PSJ+.14)` holds with
`r_{ab}\equiv 0`, hence `\eta=0`. The gap floor `(PSJ+.34)` is exactly
`(PSJ+.15)` with `S_{x,t}=\mathcal S_J` and `\gamma=\gamma_\ast`.

For the top projector `N_{x,t}=n_J\otimes n_J`,

```math
\partial_s N_{x,t}-[\Omega_{x,t},N_{x,t}]
=
\bigl(\partial_s n_J-K_J^{seg}n_J\bigr)\otimes n_J
+
n_J\otimes\bigl(\partial_s n_J-K_J^{seg}n_J\bigr),
\tag{PSJ+.41}
```

so

```math
\bigl\|
\partial_s N_{x,t}-[\Omega_{x,t},N_{x,t}]
\bigr\|_{\mathrm{op}}
\le
2\bigl|\partial_s n_J-K_J^{seg}n_J\bigr|
=
2\beta_J(a,b,s).
\tag{PSJ+.42}
```

By Corollary `AS.6`,

```math
\beta_J(a,b,s)
\le
|K_J^{seg}(a,b,s)n_J(a,b,s)|
+
\frac{\|\partial_s A_J^{seg}(a,b,s)\|_{\mathrm{op}}}{g_J(a,b,s)},
\tag{PSJ+.43}
```

so `(PSJ+.35)` implies `(PSJ+.16)` with `\kappa=\kappa_\ast`. The entrance
bound `(PSJ+.36)` is exactly `(PSJ+.17)`, and `(PSJ+.37)` is exactly
`(PSJ+.18)` with `\eta=0`. Therefore all clauses of Assumption `PSJ+.SST` are
verified on `I`. Bounds `(PSJ+.39)` and `(PSJ+.40)` are precisely Corollaries
`D.7ic` and `D.7ig3`. ∎

## Minimal remaining burden after this packet

After closing the downstream exact-potential transport step below `EWI.A` as
`TCJ'`, the surrogate-construction step as
`PSJ+.1`, the abstract concentration-to-projector step as `PSJ+.2`, the
persistent-simple-top conditional reduction `PSJ+.4`, and the formal
projector-comparison splice as `PPCJ'`, the exact remaining unproved content is
now narrower:

1. justify on a quantitatively large intended active family the explicit local
   window packet isolated in Proposition `PSJ+.5`: a simple-top gap floor, a
   corotational drift budget, and a theorem-safe entrance bound coming from the
   material-gap transfer packet `D.7ic` or the auxiliary-projector restart
   packet `D.7ig`; the current selector packet does not derive those inputs by
   itself, so `PSJ+.4` remains a conditional reduction that yields `(PSJ+.6)`
   once that window data are supplied;
2. prove the broader selector-adapted defect-to-strain theorem that forces
   those window ledgers from the signless pair packet on the same active
   family, namely the exact-potential `\mathcal E_J^{dir}\le C_{PSJ}
   \mathcal E_J^{obs}` cut of `PSJ+` and, outside the exact-potential branch,
   the full residual pairwise closure `(PD.70q)` / `(PD.70s)` controlling
   `\mathcal E_J^{dir}+\mathcal E_J^{loop}` by `\mathcal E_J^{obs}`;
3. verify that the chosen confidence weight `\alpha(W_J)` and localization
   windows produce a nondegenerate local mass `m_J` and an integrated
   concentration budget compatible with the strip error ledger.

Everything else on the exact-potential simple-top branch is downstream
bookkeeping already recorded as explicit conditional implications on disk.
