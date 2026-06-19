# Clay Target Route Reduction Note

## Purpose

This note extracts the exact route ingredients already present on the live
Navier--Stokes lane for the Clay whole-space target.

It does **not** add a new theorem claim.
Its job is to separate:

- the exact classical mixed-jet tower objects,
- the exact `NC` projection objects,
- the exact named leftovers still open on each route.

## Clay target

The target is the Clay whole-space existence-and-smoothness statement:

```math
\text{for every smooth divergence-free rapidly decaying }u^0\text{ on }\mathbb R^3,\quad f=0,
```

```math
\exists\,u,p\in C^\infty(\mathbb R^3\times[0,\infty))
```

solving 3D incompressible Navier--Stokes with

```math
\int_{\mathbb R^3}|u(x,t)|^2\,dx<C
\qquad
\forall t\ge 0.
```

Everything below is only about routes to that target.

## I. Classical mixed-jet tower

The common classical tower object is

```math
J_{m,\alpha}:=\partial_t^m\partial_x^\alpha u,
\qquad
\Pi_{m,\alpha}:=\partial_t^m\partial_x^\alpha p,
```

with master differentiated equations

```math
\partial_t J_{m,\alpha}
+
\sum_{a=0}^{m}\sum_{\beta\le\alpha}
\binom ma\binom{\alpha}{\beta}
(J_{a,\beta}\cdot\nabla)J_{m-a,\alpha-\beta}
+
\nabla \Pi_{m,\alpha}
=
\nu\Delta J_{m,\alpha},
```

and

```math
-\Delta \Pi_{m,\alpha}
=
\partial_i\partial_j
\sum_{a=0}^{m}\sum_{\beta\le\alpha}
\binom ma\binom{\alpha}{\beta}
(J_{a,\beta})_i(J_{m-a,\alpha-\beta})_j.
```

This is the full five-family mixed-jet system recorded in
[five-family-binomial-pipeline-note.md](/Users/thomasbirnie/Documents/Research-Consolidation/problems/navier-stokes/theorem-construction/five-family-binomial-pipeline-note.md).

### Exact rung-level energy output

The exact `L^2` pairing identities already on record are:

```math
\langle \nabla \Pi_{m,\alpha},J_{m,\alpha}\rangle=0,
```

```math
\langle (u\cdot\nabla)J_{m,\alpha},J_{m,\alpha}\rangle=0,
```

```math
\langle \nu\Delta J_{m,\alpha},J_{m,\alpha}\rangle
=
-\nu\|\nabla J_{m,\alpha}\|_{L_x^2}^2.
```

So the live burden at a rung is the off-diagonal Leibniz spread:

```math
\frac12\frac{d}{dt}\|J_{m,\alpha}\|_{L_x^2}^2
+
\nu\|\nabla J_{m,\alpha}\|_{L_x^2}^2
=
-\!\!\!\!\!\!\!\!\!
\sum_{\substack{0\le a\le m,\ \beta\le\alpha\\(a,\beta)\neq(0,0)}}
\binom{m}{a}\binom{\alpha}{\beta}\,
\left\langle
\big(J_{a,\beta}\cdot\nabla\big)J_{m-a,\alpha-\beta},
J_{m,\alpha}
\right\rangle.
```

This is the exact full-system form recorded in
[five-family-binomial-pipeline-note.md](/Users/thomasbirnie/Documents/Research-Consolidation/problems/navier-stokes/theorem-construction/five-family-binomial-pipeline-note.md)
and its pure-time slice in
[time-order-cross-balance-note.md](/Users/thomasbirnie/Documents/Research-Consolidation/problems/navier-stokes/theorem-construction/time-order-cross-balance-note.md).

### Pressure across the tower

The source notes support all four of the following at once:

1. pressure drops from the raw rung-level `L^2` pairing;
2. pressure is still part of the differentiated family system;
3. the differentiated pressure law preserves the same parabolic-order index
   identity;
4. pressure redistributes the same derivative splits nonlocally across the
   tower.

More concretely:

- [time-order-cross-balance-note.md](/Users/thomasbirnie/Documents/Research-Consolidation/problems/navier-stokes/theorem-construction/time-order-cross-balance-note.md)
  says pressure is not the live same-derivative-order forcing term in the rung-level
  `L^2` recursion.
- [parabolic-order-recursion-note.md](/Users/thomasbirnie/Documents/Research-Consolidation/problems/navier-stokes/theorem-construction/parabolic-order-recursion-note.md)
  says the pressure constraint preserves parabolic order and redistributes the
  same splits nonlocally.
- [five-family-binomial-pipeline-note.md](/Users/thomasbirnie/Documents/Research-Consolidation/problems/navier-stokes/theorem-construction/five-family-binomial-pipeline-note.md)
  says the differentiated pressure family is not the live source in the raw
  energy law.
- [jet-substitution-and-exponential-closure-note.md](/Users/thomasbirnie/Documents/Research-Consolidation/problems/navier-stokes/theorem-construction/jet-substitution-and-exponential-closure-note.md)
  packages pressure together with viscosity inside the matched carrier
  `L_n=\nu\Delta V_n-\nabla P_n`.

So the exact reduction here is:

```math
\boxed{
\text{pressure is not the live source in the raw rung energy law,}
}
```

```math
\boxed{
\text{but it remains part of the full cross-order tower bookkeeping.}
}
```

### Strongest classical closure candidates already written

The live classical source stack already contains three distinct whole-tower
candidate packages.

#### 1. Time-tower generating law

From
[time-order-cross-balance-note.md](/Users/thomasbirnie/Documents/Research-Consolidation/problems/navier-stokes/theorem-construction/time-order-cross-balance-note.md):

```math
\mathcal V(z):=\sum_{n\ge0}\frac{z^n}{n!}V_n,
\qquad
\mathcal P(z):=\sum_{n\ge0}\frac{z^n}{n!}P_n,
```

and the exact generating law

```math
\partial_t \mathcal V
+
(\mathcal V\cdot\nabla)\mathcal V
+
\nabla \mathcal P
=
\nu\Delta \mathcal V.
```

The exact unresolved condition stated there is:

```math
\boxed{
\text{does the infinite cross-order convolution law admit a global tame recursion?}
}
```

#### 2. Recursive defect plus exponential jet closure

From
[jet-substitution-and-exponential-closure-note.md](/Users/thomasbirnie/Documents/Research-Consolidation/problems/navier-stokes/theorem-construction/jet-substitution-and-exponential-closure-note.md):

```math
V_{n+1}=L_n-M_n,
```

with

```math
L_n=\nu\Delta V_n-\nabla P_n,
\qquad
M_n=\sum_{k=0}^{n}\binom{n}{k}(V_k\cdot\nabla)V_{n-k},
```

and recursive substitution

```math
V_{N+1}=R_{N+1}^{(d)}+D_{N+1}^{(d)}.
```

The same note then packages the tower as

```math
\mathcal V_\rho := \sum_{n\ge 0}\frac{\rho^n}{n!}V_n,
\qquad
\mathcal P_\rho := \sum_{n\ge 0}\frac{\rho^n}{n!}P_n,
```

with exact binomial collapse

```math
\sum_{n\ge0}\frac{\rho^n}{n!}
\sum_{k=0}^{n}\binom{n}{k}(V_k\cdot\nabla)V_{n-k}
=
(\mathcal V_\rho\cdot\nabla)\mathcal V_\rho.
```

For the full mixed tower, the same note proposes

```math
\mathcal J(\tau,\zeta)
:=
\sum_{m\ge0}\sum_{\alpha\in\mathbb N^3}
\frac{\tau^m\zeta^\alpha}{m!\,\alpha!}\,
J_{m,\alpha}.
```

The exact unresolved conditions stated there are:

```math
D_N^{(d)}\equiv 0,
\qquad
\text{or }D_N^{(d)}\text{ contractive,}
\qquad
\text{or }\sum_N\|D_N^{(d)}\|_\star\text{ summably tame.}
```

That note also explicitly proposes a weighted jet Banach algebra whose
multiplication law is exactly the transport convolution.

#### 3. Parabolic-order energy tower

From
[parabolic-order-recursion-note.md](/Users/thomasbirnie/Documents/Research-Consolidation/problems/navier-stokes/theorem-construction/parabolic-order-recursion-note.md):

```math
N:=2m+|\alpha|,
```

```math
\mathcal E_N(t)
:=
\sum_{2m+|\alpha|=N}
\|D^{m,\alpha}u(t)\|_{L_x^2}^2,
```

```math
\mathcal D_N(t)
:=
\sum_{2m+|\alpha|=N}
\|\nabla D^{m,\alpha}u(t)\|_{L_x^2}^2,
```

with family-level energy law

```math
\frac12\frac{d}{dt}\mathcal E_N
+
\nu\,\mathcal D_N
\le
\mathcal N_N+\mathcal P_N,
```

and cross-order spread

```math
\mathcal N_N
:=
\sum_{a+b=N+1}\mathcal B_{a,b,N},
```

where `\mathcal B_{a,b,N}` denotes the exact bilinear contribution from input
orders `a` and `b` to output order `N`.

The exact unresolved condition stated there is:

```math
\boxed{
\text{does the infinite sequence }(\mathcal E_N)_{N\ge0}
\text{ satisfy a closing recursive inequality?}
}
```

### Reduced classical obligation

Across these source notes, the exact classical burden has already been reduced
to:

```math
\boxed{
\text{control the family-wide binomial convolution on the mixed-jet tower.}
}
```

The live classical closure candidates already written are:

- generating-field closure;
- recursive defect contraction or summability;
- weighted jet Banach algebra closure;
- monotone / contractive / telescoping law on the parabolic-order tower.

One exact reduction step now added on top of that source stack is recorded in
[mixed-jet-hs-quadratic-convolution-reduction.md](/Users/thomasbirnie/Documents/Research-Consolidation/problems/navier-stokes/theorem-construction/mixed-jet-hs-quadratic-convolution-reduction.md):
in factorially weighted mixed-jet `H^s` norms, both the transport spread and
the pressure gradient satisfy the same quadratic convolution bound
`C_s\mathfrak A_s(\tau,r)^2`. So the remaining classical burden is
propagation/closure of the weighted mixed-jet norm itself.

## II. Parity helper only

Parity is only a sorting device on the tower.

Using parabolic order

```math
N=2m+|\alpha|,
\qquad
N\bmod 2=|\alpha|\bmod 2,
```

the only intended use here is:

- even sector = evolution/storage,
- odd sector = transfer/flux/interface.

So parity is used only to sort:

- which terms are state terms,
- which terms are transfer terms,
- where viscosity acts,
- where transfer feeds back into state,
- which cancellation identities must be tested.

It is **not** itself a closure theorem.

## III. Exact NC projection package

The exact source-backed projection package already present on the lane is:

```math
\mathcal C(\partial_t X)=\partial_t u,
\qquad
\mathcal C(\Delta_DX)=\Delta u,
\qquad
\mathcal C(\mathbb P_DX)=\mathbb P_{\mathrm{Leray}}u,
```

```math
\mathcal C\circ\mathbb P_D
=
\mathbb P_{\mathrm{Leray}}\circ\mathcal C.
```

These identities are written in
[ontic-projected-flow-exact-lift-package.md](/Users/thomasbirnie/Documents/Research-Consolidation/problems/navier-stokes/theorem-construction/ontic-projected-flow-exact-lift-package.md)
and
[d3-commutative-shadow-theorem.md](/Users/thomasbirnie/Documents/Research-Consolidation/problems/navier-stokes/theorem-construction/d3-commutative-shadow-theorem.md).

### Exact nonlinear shadow package

The exact nonlinear split used by the live notes is

```math
N_D(X)=\nabla_X X+\iota_X\Omega_D^{\mathrm{nc}}(X),
```

with

```math
\mathcal C(\nabla_X X)=(u\cdot\nabla)u,
\qquad
\mathcal C(\iota_X\Omega_D^{\mathrm{nc}}(X))=0
```

in the strict-shadow package.

So the exact nonlinear shadow identity is

```math
\mathcal C(N_D(X))=(u\cdot\nabla)u,
```

and hence

```math
\mathcal C(\mathbb P_DN_D(X))
=
\mathbb P_{\mathrm{Leray}}(u\cdot\nabla u).
```

This is recorded in
[ontic-projected-flow-exact-lift-package.md](/Users/thomasbirnie/Documents/Research-Consolidation/problems/navier-stokes/theorem-construction/ontic-projected-flow-exact-lift-package.md),
[d3-commutative-shadow-theorem.md](/Users/thomasbirnie/Documents/Research-Consolidation/problems/navier-stokes/theorem-construction/d3-commutative-shadow-theorem.md),
[ns-shadow-route-a-vs-b.md](/Users/thomasbirnie/Documents/Research-Consolidation/working-notes/ns-shadow-route-a-vs-b.md),
and
[theta-to-kd-and-exact-shadow-theorem.md](/Users/thomasbirnie/Documents/Research-Consolidation/working-notes/theta-to-kd-and-exact-shadow-theorem.md).

### What is killed under projection

The exact killed object is the pure `NC` interaction defect.

In the strict-shadow algebraic splitting note,

```math
XY=(XY)_{\mathrm{cl}}+(XY)_{\mathrm{nc}},
\qquad
\mathcal C((XY)_{\mathrm{nc}})=0.
```

The explicit phase-weighted remainder is

```math
R_\Theta(X)
=
\sum_{j,m,n}
n_j\sigma^j x_mx_n
\big(e^{-\pi i\,m\cdot\Theta n}-1\big)U^{m+n},
```

and the same note states

```math
\mathcal C(R_\Theta(X))=0.
```

So the exact reduction supported by the strict-shadow notes is:

```math
\boxed{
\text{ordinary transport survives projection,}
}
```

```math
\boxed{
\text{the pure }NC\text{ interaction defect is shadow-invisible.}
}
```

### Route A: smooth carrier then projection

The exact Route A package already written is:

1. ontic projected flow;
2. exact lift identities;
3. norm comparison
   ```math
   \|u\|_{H^s}\le C\|X\|_{H_D^s};
   ```
4. continuation-level ontic bound
   ```math
   \sup_{t\in[0,T)}\|X(t)\|_{H_D^s}<\infty,\qquad s>\frac52;
   ```
5. therefore
   ```math
   \sup_{t\in[0,T)}\|u(t)\|_{H^s}<\infty.
   ```

This is the route recorded in
[ontic-projected-flow-exact-lift-package.md](/Users/thomasbirnie/Documents/Research-Consolidation/problems/navier-stokes/theorem-construction/ontic-projected-flow-exact-lift-package.md).

### Route B: robustness / leftover package

The lane also contains a weaker robustness package with named leftovers.

In
[d3-commutative-shadow-theorem.md](/Users/thomasbirnie/Documents/Research-Consolidation/problems/navier-stokes/theorem-construction/d3-commutative-shadow-theorem.md),
the weak-form object is

```math
\mathcal C(\mathcal L_D(X))
=
\mathrm{classical\_NS}(u)+\mathrm{ShadowDef}(X),
```

with

```math
\mathrm{ShadowDef}(X)
=
\nabla p_{\mathrm{shadow}}
+
\mathrm{CurvShadow}(X)
+
\mathrm{TailShadow}(X).
```

In
[ns-shadow-route-a-vs-b.md](/Users/thomasbirnie/Documents/Research-Consolidation/working-notes/ns-shadow-route-a-vs-b.md),
the corresponding robustness errors are

```math
E_{\nabla}(X),
\qquad
E_{\Omega}(X),
\qquad
E_{\mathrm{sh}}(X)
:=
\mathbb P_{\mathrm{Leray}}\big(E_{\nabla}(X)+E_{\Omega}(X)\big).
```

So the exact leftover names already present on the route are:

- `ShadowDef(X)`,
- `\nabla p_shadow`,
- `CurvShadow(X)`,
- `TailShadow(X)`,
- `E_\nabla(X)`,
- `E_\Omega(X)`,
- `E_{\mathrm{sh}}(X)`,
- `N_{\mathrm{coh}}(X)`,
- `N_{\mathrm{rem}}(X)`,
- `R_\Theta(X)`.

### Reduced NC obligation

The source-backed split is:

1. an exact strict-shadow package in which the pure `NC` interaction defect is
   killed under projection;
2. a weaker robustness package in which named shadow leftovers remain and must
   be shown small or absorbable.

The exact no-remainder consequence of Route A is now isolated in
[strict-shadow-no-remainder-corollary.md](/Users/thomasbirnie/Workspace/ToE/Research-Consolidation/problems/navier-stokes/theorem-construction/strict-shadow-no-remainder-corollary.md).
The classical forcing inequality attached to the weaker Route B branch is now
isolated in
[shadow-remainder-hs-forcing-estimate.md](/Users/thomasbirnie/Documents/Research-Consolidation/problems/navier-stokes/theorem-construction/shadow-remainder-hs-forcing-estimate.md).

So the exact NC reduction is:

```math
\boxed{
\text{do not merge the exact strict-shadow package with the robustness placeholder package.}
}
```

## IV. Reduced work order

The source stack now reduces the live theorem work to the following exact
questions.

### Classical tower

1. Is there a weighted mixed-jet norm or Banach algebra on which the full
   binomial convolution closes?
2. Is the recursive defect `D_N^{(d)}` zero, contractive, or summably tame?
3. Does the parabolic-order sequence `(\mathcal E_N)` satisfy a closing
   recursive inequality?
4. Can the whole-tower cancellation pattern be made exact enough to close the
   Clay target?

### NC projection

1. Can the exact strict-shadow identity
   ```math
   \mathcal C(\iota_X\Omega_D^{\mathrm{nc}}(X))=0
   ```
   be proved on the active carrier class strongly enough to discharge the
   exact projection route?
2. If not, can the robustness leftovers
   `ShadowDef`, `CurvShadow`, `TailShadow`, and `E_{\mathrm{sh}}`
   be shown small or absorbable in the commutative shadow?
3. Can either route be coupled to a continuation-level bound strong enough to
   reach the Clay whole-space statement?

## Bottom line

The reduction already achieved by the source notes is:

```math
\boxed{
\text{classical route: control the full mixed-jet binomial convolution;}
}
```

```math
\boxed{
\text{NC route A: exact strict shadow plus carrier control;}
}
```

```math
\boxed{
\text{NC route B: robustness shadow with named leftover terms.}
}
```

That is the live route picture without flattening the notes into one story.
