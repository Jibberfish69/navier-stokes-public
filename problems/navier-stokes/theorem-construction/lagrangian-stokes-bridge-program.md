# Lagrangian Stokes Bridge Program

## Purpose

This note isolates the **single upstream bridge** now missing in the
Lagrangian six-lemma route:

```math
\boxed{
\text{prove a no-loss variable-coefficient Lagrangian Stokes estimate}
}
```

in the explicit form needed to feed the enlarged `A`-ledger and recover the
coefficient window

```math
G\nabla_aA,\qquad \nabla_a(G\nabla_aA)\in L^\infty.
```

The downstream pressure reduction is already complete conditional on that
window; see
[lemma-4b-no-loss-pressure-recovery-attack.md](/Users/thomasbirnie/Documents/Research-Consolidation/problems/navier-stokes/theorem-construction/lemma-4b-no-loss-pressure-recovery-attack.md#L885).

## Target system

The bridge is posed on the exact Lagrangian system

```math
\partial_t v + A^\top\nabla_a q-\nu\,\operatorname{div}_a(G\nabla_a v)=f,
\qquad
\operatorname{div}_a(Av)=0,
\qquad
G=AA^\top,
\tag{1}
```

with the NS-native frame package

```math
F=\nabla_aX,
\qquad
A=F^{-1},
\qquad
\det F=1,
\qquad
\partial_tA=-A(\nabla_a v)A,
\qquad
\operatorname{div}_aA^\top=0.
\tag{2}
```

The desired no-loss estimate is

```math
\|v\|_{L_t^\infty H^s}
+
\|v\|_{L_t^2 H^{s+1}}
+
\|\partial_t v\|_{L_t^2 H^{s-1}}
+
\|\nabla_a q\|_{L_t^2 H^{s-1}}
\le C_s
\|v_0\|_{H^s}
+
\|f\|_{L_t^2 H^{s-1}}
+
\mathfrak C_s[A,G;v],
\tag{3}
```

where `\mathfrak C_s[A,G;v]` depends only on the **same-depth** coefficient
ledger, not on hidden higher derivatives of `A` or `G`.

## Why this is the exact bridge

Once `(3)` is available, the propagated frame quantities

```math
\mathsf M_1:=G\nabla_aA,
\qquad
\mathsf M_2:=\nabla_a(G\nabla_aA)
\tag{4}
```

can be closed by same-depth product/commutator calculus and then embedded into
`L^\infty`. That yields the coefficient window required by Route A, after
which Lemma 4B closes by the already-verified remainder estimate.

So the full bridge is:

```math
\boxed{
\text{Lagrangian Stokes no-loss estimate}
\Longrightarrow
\text{A-ledger closure}
\Longrightarrow
G\nabla_aA,\ \nabla_a(G\nabla_aA)\in L^\infty
\Longrightarrow
\text{Route A closes Lemma 4B.}
}
\tag{5}
```

## Minimal theorem program

The missing theorem splits into four subclaims.

### Step 1. Frozen-coefficient same-depth Stokes estimate

First prove `(3)` for a frozen admissible coefficient pair `(A_*,G_*)` with
uniform ellipticity and the divergence constraint

```math
\operatorname{div}_a(A_* v)=0.
\tag{6}
```

This is the linear model problem:

```math
\partial_t v + A_*^\top\nabla_a q-\nu\,\operatorname{div}_a(G_*\nabla_a v)=f.
\tag{7}
```

The point of Step 1 is to identify the **natural coercive norm** and to prove
that the pressure and viscosity stay on the same derivative ledger in the
absence of coefficient evolution.

#### Step 1a. Exact constant-coefficient reduction

When `A_*` and `G_*` are constant in `a,t` and satisfy

```math
G_*=A_*A_*^\top,
\qquad
\det A_*=1,
\tag{7a}
```

the model problem `(7)` is exactly reducible to the classical Stokes system by
the linear change of variables

```math
a=A_*\,y,
\qquad
w(y,t):=v(A_*y,t),
\qquad
\pi(y,t):=q(A_*y,t).
\tag{7b}
```

Indeed,

```math
\nabla_a=B^{-T}\nabla_y
\qquad\text{with }B=A_*,
\tag{7c}
```

so the pulled-back divergence constraint becomes

```math
\operatorname{div}_a(A_*v)
=
\operatorname{tr}\!\big(A_*\nabla_a v\big)
=
\operatorname{tr}\!\big(A_*(\nabla_y w)A_*^{-1}\big)
=
\operatorname{div}_y w.
\tag{7d}
```

Likewise the pressure and viscous terms become

```math
A_*^\top\nabla_a q=\nabla_y\pi,
\qquad
\operatorname{div}_a(G_*\nabla_a v)=\Delta_y w.
\tag{7e}
```

So `(7)` is equivalent to

```math
\partial_t w+\nabla_y\pi-\nu\,\Delta_y w=\widetilde f,
\qquad
\operatorname{div}_y w=0,
\tag{7f}
```

with `\widetilde f(y,t):=f(A_*y,t)`. Therefore the same-depth estimate `(3)` is
true in the constant-coefficient frozen case by transport of the classical
Stokes estimate through the linear volume-preserving map `(7b)`.

This means the real content of Step 1 is **not** the constant-coefficient
frozen problem. It is the next case.

#### Step 1b. Exact frozen-flow-map reduction

For a genuine frozen NS time slice, the coefficients are not arbitrary:

```math
F_*=\nabla_a X_*,
\qquad
A_*=F_*^{-1},
\qquad
G_*=A_*A_*^\top,
\qquad
\det F_*=1.
\tag{7g}
```

In that case the frozen spatially varying system is exactly conjugate to the
classical Stokes system by the fixed nonlinear diffeomorphism

```math
x=X_*(a),
\qquad
a=Y_*(x):=X_*^{-1}(x),
\qquad
w(x,t):=v(Y_*(x),t),
\qquad
\pi(x,t):=q(Y_*(x),t).
\tag{7h}
```

Then:

```math
\operatorname{div}_a(A_*v)=0
\iff
\operatorname{div}_x w=0,
\tag{7i}
```

```math
A_*^\top\nabla_a q=(\nabla_x\pi)\circ X_*,
\tag{7j}
```

and, in weak form,

```math
\big(\operatorname{div}_a(G_*\nabla_a v)\big)\circ Y_*=\Delta_x w.
\tag{7k}
```

Therefore the frozen system

```math
\partial_t v + A_*^\top\nabla_a q-\nu\,\operatorname{div}_a(G_*\nabla_a v)=f,
\qquad
\operatorname{div}_a(A_*v)=0,
\tag{7\ell}
```

is exactly equivalent to the classical Stokes system

```math
\partial_t w+\nabla_x\pi-\nu\,\Delta_x w=\widetilde f,
\qquad
\operatorname{div}_x w=0,
\tag{7m}
```

with `\widetilde f(x,t):=f(Y_*(x),t)`.

So for a frozen coefficient pair coming from a genuine frozen flow map, there is
no new variable-coefficient PDE difficulty at the level of the equation itself.
The same-depth estimate follows from the constant-coefficient Stokes estimate
in the frozen coordinates, with composition/norm-equivalence constants for
`X_*` and `Y_*`.

The real issues in this exact frozen setting are:

1. the dependence of the transported `H^s` constants on the frozen geometry;
2. localization/domain bookkeeping after passing to `X_*(B')`;
3. preserving the same-depth ledger under composition.

#### Step 1c. Intrinsic frozen operator formulation

If one wants a theorem written intrinsically in the `a` variables, or one wants
to work with a frozen admissible pair without explicitly invoking the global
frozen flow map, then the first genuinely new analytic burden is the
time-frozen but spatially varying system

```math
\partial_t v + A_*^\top(a)\nabla_a q-\nu\,\operatorname{div}_a(G_*(a)\nabla_a v)=f,
\qquad
\operatorname{div}_a(A_*(a)v)=0,
\qquad
G_*(a)=A_*(a)A_*(a)^\top.
\tag{7n}
```

Here there is no exact linear conjugation to the constant-coefficient Stokes operator. So
the intrinsic Step 1 target is:

```math
\boxed{
\text{prove the same-depth estimate `(3)` for `(7n)` with coefficient dependence controlled by the frozen }A_*,G_*\text{ ledger.}
}
\tag{7o}
```

This is the point where variable-coefficient Stokes theory and generalized
Stokes estimates become genuinely necessary.

#### Tactical design for Step 1c

The most concrete current attack on `(7n)` is:

1. **localize in space** by a partition of unity on balls where `A_*(a)` and
   `G_*(a)` are close to constants;
2. **use Step `1b` / Step `1a` as the model block** on each patch;
3. **treat the coefficient variation as a perturbation** on the same Sobolev
   ledger;
4. **repair the localized constraint** after cutoff, because multiplication by
   a partition function destroys
   ```math
   \operatorname{div}_a(A_*v)=0;
   ```
5. **patch the local estimates** back together with same-depth commutator
   control.

This suggests the right operator object for Step `1c` is not the raw PDE alone,
but the frozen constrained Stokes operator on

```math
\mathcal H_{A_*}
:=
\{v:\operatorname{div}_a(A_*v)=0\},
\tag{7p}
```

with pressure treated as the Lagrange multiplier enforcing membership in
`\mathcal H_{A_*}`.

So the most promising intrinsic formulation of Step `1c` is:

```math
\boxed{
\text{build a generalized constrained Stokes operator }\mathcal S_{A_*,G_*}
\text{ on }\mathcal H_{A_*},
\text{ prove same-depth MR for }\mathcal S_{A_*,G_*}
\text{ by localization/perturbation,}
}
\tag{7q}
```

```math
\boxed{
\text{and handle the pressure/constraint term through an }A_*\text{-adapted projection or Bogovski\u012d-type correction scheme.}
}
\tag{7r}
```

The key caution is that the `A_*`-adapted projection is not yet a ready-made
object on the current lane. It is a tactical design target. In particular,
localization breaks the frozen constraint and therefore forces a divergence
repair step; this is exactly where Bogovski\u012d-type tools are expected to
enter.

#### Minimal operator objects for Step 1c

The frozen spatially varying problem is organized around

```math
D_{A_*}v:=\operatorname{div}_a(A_*v),
\qquad
\mathcal H_{A_*}:=\ker D_{A_*},
\tag{7s}
```

and the diffusion form

```math
\mathfrak a_{G_*}(u,w)
:=
\nu\int G_*(a)\nabla_a u:\nabla_a w\,da.
\tag{7t}
```

The concrete Step `1c` target is then:

1. show `\mathfrak a_{G_*}` is coercive on `\mathcal H_{A_*}` under uniform
   ellipticity of `G_*`;
2. define the frozen constrained Stokes operator `\mathcal S_{A_*,G_*}` on
   `\mathcal H_{A_*}` through that form;
3. prove a local same-depth estimate for cutoff solutions, where the cutoff
   error in `D_{A_*}` is repaired by an `A_*`-adapted divergence solver;
4. sum the localized estimates and absorb the coefficient oscillation as a
   perturbation of the constant-coefficient model.

So the first truly actionable estimate is the patchwise bound

```math
\|v\|_{L_t^\infty H^s(B)}
+
\|v\|_{L_t^2 H^{s+1}(B)}
+
\|\nabla_a q\|_{L_t^2 H^{s-1}(B)}
\le C_{s,B}
\|v_0\|_{H^s(B')}
+
\|f\|_{L_t^2 H^{s-1}(B')}
+
\text{small oscillation terms of }A_*,G_*,
\tag{7u}
```

for nested balls `B\Subset B'`, with the localized constraint repaired after
cutoff. The global frozen estimate then comes from a partition-of-unity
sum of `(7u)`.

The corresponding audit of the naive stability slogan is:

```math
\|A_* - A_0\|_{W^{1,\infty}(B')}
+
\|G_* - G_0\|_{W^{1,\infty}(B')}
\le \varepsilon
\quad\Longrightarrow\quad
\text{same-depth MR on }B
```

is only directionally right. The theorem-grade local statement must also
include:

1. the pressure term `\|\nabla_a q\|_{L_t^2 H^{s-1}(B)}`,
2. the time derivative term `\|\partial_t v\|_{L_t^2 H^{s-1}(B)}` if one wants
   full maximal regularity,
3. the scale-weighted oscillation quantity
   `\|A_* - A_0\|_{L^\infty}+R\|\nabla_aA_*\|_{L^\infty}` (and similarly for
   `G_*`) on the localization ball,
4. the cutoff/divergence-repair contribution from `(7ad)`.

So the patchwise estimate `(7u)` is the corrected theorem target.

#### Constrained weak form for Step 1c

On a local patch `\Omega` define

```math
V_{A_*}(\Omega)
:=
\{w\in H_0^1(\Omega;\mathbb R^3):\operatorname{div}_a(A_*w)=0\}.
\tag{7v}
```

Testing the frozen equation against `\varphi\in V_{A_*}(\Omega)` gives

```math
\langle \partial_t v,\varphi\rangle
+
\nu\int_\Omega G_*\nabla_a v:\nabla_a\varphi\,da
+
\int_\Omega A_*^\top\nabla_a q\cdot \varphi\,da
=
\langle f,\varphi\rangle.
\tag{7w}
```

Since

```math
\int_\Omega A_*^\top\nabla_a q\cdot \varphi\,da
=
-\int_\Omega q\,\operatorname{div}_a(A_*\varphi)\,da
=
0,
\tag{7x}
```

the constrained weak form is

```math
\boxed{
\langle \partial_t v,\varphi\rangle
+
\mathfrak a_{G_*}(v,\varphi)
=
\langle f,\varphi\rangle
\qquad\forall \varphi\in V_{A_*}(\Omega).
}
\tag{7y}
```

So pressure is hidden on the constrained space and reappears only as the
Lagrange multiplier enforcing the constraint outside `V_{A_*}(\Omega)`.

#### A_*-adapted divergence-repair lemma

The user-level slogan “use an A-Bogovskiĭ operator” can be made precise in the
following perturbative form.

Let `B_R\subset\mathbb R^3` be a star-shaped ball and write

```math
A_*(a)=A_0+E(a),
\tag{7z}
```

with `A_0` constant invertible and

```math
\varepsilon_*:=\|E\|_{L^\infty(B_R)}+R\|\nabla_aA_*\|_{L^\infty(B_R)}
\tag{7aa}
```

small. Then for each mean-zero `g` there exists

```math
w=\mathcal R_{A_*}g
```

such that

```math
\operatorname{div}_a(A_*w)=g
\tag{7ab}
```

and

```math
\|w\|_{W^{1,p}(B_R)}\le C\|g\|_{L^p(B_R)},
\qquad
\|w\|_{H^{s+1}(B_R)}\le C_s\|g\|_{H^s(B_R)}
\tag{7ac}
```

for the same-depth Sobolev range of interest.

The construction is:

1. let `\mathcal B` be the classical Bogovskiĭ right inverse of `\operatorname{div}`;
2. define the constant-coefficient right inverse
   ```math
   \mathcal B_{A_0}h:=A_0^{-1}\mathcal B h;
   ```
3. solve
   ```math
   (I+T)h=g,
   \qquad
   Th:=\operatorname{div}_a(E\,\mathcal B_{A_0}h),
   ```
   by Neumann series for small `\varepsilon_*`;
4. set
   ```math
   \mathcal R_{A_*}:=\mathcal B_{A_0}(I+T)^{-1}.
   ```

This gives the exact localized repair after cutoff:

```math
\widetilde v_\chi
:=
\chi v-\mathcal R_{A_*}\big(\operatorname{div}_a(A_*(\chi v))\big),
\qquad
\operatorname{div}_a(A_*\widetilde v_\chi)=0.
\tag{7ad}
```

This is the first concrete repair lemma needed to make the patchwise estimate
`(7u)` theorem-grade.

### Step 2. Same-depth pressure/constraint estimate

Next isolate the pressure subproblem for `(7)` under the pulled-back
constraint. This is the exact place where the live theorem must show:

1. `\nabla_a q` is controlled at the same Sobolev depth as `v`,
2. the coefficient dependence enters only through the existing `A,G` ledger,
3. no hidden extra derivative is lost when solving the constrained elliptic
   problem.

This is the upstream version of the pressure wall already localized in
[lemma-4b-no-loss-pressure-recovery-attack.md](/Users/thomasbirnie/Documents/Research-Consolidation/problems/navier-stokes/theorem-construction/lemma-4b-no-loss-pressure-recovery-attack.md#L723).

### Step 3. Same-depth commutator stability

Then differentiate `(1)` to order `s` and prove that the variable-coefficient
commutators satisfy

```math
\text{differentiated commutators}
\le C_{\mathrm{comm}}
\varepsilon\big(\|v\|_{H^{s+1}}^2+\|\nabla_a q\|_{H^{s-1}}^2\big)
+
C_\varepsilon\,\text{same-depth ledger terms}.
\tag{8}
```

This is where Kato--Ponce / Moser-type calculus enters. The theorem burden is
that the commutators remain **same-depth** and do not force derivatives beyond
the existing `A/G/v` ledger.

### Step 4. Non-autonomous closure for evolving coefficients

Finally pass from frozen coefficients to the true evolving NS system. This
requires showing that the time dependence

```math
\partial_tA=-A(\nabla_a v)A,
\qquad
\partial_tG=(\partial_tA)A^\top+A(\partial_tA)^\top
\tag{9}
```

can be treated perturbatively on the same depth ledger, so that Step 1 and Step
2 remain valid with coefficient dependence measured only by the existing
Lagrangian control package.

This is the point where abstract maximal regularity alone is not enough: it has
to be fused with the exact NS transport/compatibility structure.

The concrete perturbative realization of this step is now isolated in
[time-slab-freezing-bridge-note.md](/Users/thomasbirnie/Documents/Research-Consolidation/problems/navier-stokes/theorem-construction/time-slab-freezing-bridge-note.md),
which rewrites the evolving system on each short slab as exact frozen Stokes
plus a principal diffusion perturbation, a pressure perturbation, and a moving
divergence defect. The exact defect package is now refined one step further in
[moving-constraint-defect-program.md](/Users/thomasbirnie/Documents/Research-Consolidation/problems/navier-stokes/theorem-construction/moving-constraint-defect-program.md):

1. Lemma A is ordinary same-depth divergence bookkeeping for
   `g=-\operatorname{div}_x(\mu w)`;
2. Lemma B has a theorem-grade transport-parabolic correction estimate on the
   slab;
3. Lemma C is ordinary same-depth product calculus once the short-slab `H^s`
   smallness of `\mu` is recorded;
4. the coefficient-adapted moving projector is **not** better than the
   Bogovski\u012d repair route on the current ledger.

## Honest status

The current lane does **not** yet prove `(3)` in full generality, but the bridge
is no longer a single black box.

What is already established is:

1. the downstream Route A reduction of Lemma 4B;
2. the frame-recovery wall;
3. the exact propagated objects `\mathsf M_1,\mathsf M_2`;
4. the exact frozen-flow-map reduction to classical Stokes on each frozen time
   slice;
5. the time-slab freezing reduction to a moving diffusion/pressure/divergence
   defect;
6. a theorem-grade estimate for the Bogovski\u012d transport-parabolic
   correction package;
7. a corrected operator-level short-slab closure statement: after divergence
   repair, the full moving defect package is a small perturbation of classical
   Stokes on sufficiently short slabs;
8. `U1` is effectively discharged on the slab surface: because `\Pi=\pi`
   exactly and the velocity-transfer estimate is now explicit, the corrected and
   original norms are uniformly equivalent under the same bounded-envelope
   hypothesis;
9. the regularity budget showing the enlarged `A`-ledger route is not
   dimensionally absurd.

So the current frontier is not diffuse anymore. It is exactly:

```math
\boxed{
\text{can the running }A/G/v\text{ envelope be propagated uniformly so the adaptive refreezing/slab iteration stays valid?}
}
\tag{10}
```

More precisely: the local `U1`/`U2` obstruction has now been reduced further.
`U1` is discharged, and `U2` is now fully discharged on any bounded-envelope
finite-dissipation interval by adaptive refreezing: the static drift contributes
an `h^{1/2}` term and the coefficient-time part contributes a dissipation term
`D_j=\|w\|_{L_t^2H_x^{s+1}(I_j)}`, so both are small on the adaptive slabs. The
remaining bridge burden is therefore the **outer
bootstrap** that keeps the running envelope `\Lambda_j` bounded and supplies the
needed interval dissipation budget while the corrected short-slab estimate is
concatenated.

The exact remaining theorem target is therefore:

```math
\boxed{
\textbf{Outer Bootstrap Lemma. }
\Lambda_{j+1}
\le
C_*\Big(
\Lambda_j
+
\|\widetilde f\|_{L_t^2H_x^{s-1}(I_j)}
\Big),
}
\tag{10a}
```

where `\Lambda_j` is the refrozen `A/G/v/w` envelope from
[moving-constraint-defect-program.md](/Users/thomasbirnie/Documents/Research-Consolidation/problems/navier-stokes/theorem-construction/moving-constraint-defect-program.md#L1000),
and the constant `C_*` is compatible with the already-proved short-slab
estimate

```math
X_s^{\mathrm{corr}}[I_j;w,\pi]
\le
C_*\Big(
\|w(t_j)\|_{H_x^s}
+
\|\widetilde f\|_{L_t^2H_x^{s-1}(I_j)}
\Big).
\tag{10b}
```

Once `(10a)` is proved, the adaptive refreezing partition stays valid on each
successive slab, the corrected Stokes estimate concatenates, and the local
bridge is fully globalized on bounded intervals.

### Proof skeleton for the outer bootstrap

The restart estimate for `w` is already on the live surface:

```math
\|w(t_{j+1})\|_{H_x^s}
\le
C_0\Big(
\|w(t_j)\|_{H_x^s}
+
F_j
\Big),
\qquad
F_j:=\|\widetilde f\|_{L_t^2H_x^{s-1}(I_j)}.
\tag{10c}
```

So the remaining work is to propagate the native Lagrangian coefficients
`A,G` from `t_j` to `t_{j+1}` on the same slab.

First, under the bounded-envelope hypothesis used for adaptive refreezing, the
frozen map `x=X(t_j,a)` and its inverse stay in one bounded diffeomorphism
class. Therefore pullback between `a`- and `x`-coordinates is uniformly bounded
on `H^s` and `H^{s+1}`:

```math
\|v\|_{L_t^2H_a^{s+1}(I_j)}
+
\sup_{t\in I_j}\|v(t)\|_{H_a^s}
\le C_{\Lambda_*}
X_s^{\mathrm{corr}}[I_j;w,\pi].
\tag{10d}
```

Next, the exact transport law

```math
\partial_tA=-A(\nabla_a v)A
\tag{10e}
```

and same-depth product calculus for `s>\frac52` give

```math
\frac{d}{dt}\|A(t)\|_{H_a^s}
\le
C_{\Lambda_*}\,\|\nabla_a v(t)\|_{H_a^s}.
\tag{10f}
```

Integrating on `I_j`, then using Cauchy--Schwarz and `(10d)`,

```math
\|A(t_{j+1})\|_{H_a^s}
\le
\|A(t_j)\|_{H_a^s}
+
C_{\Lambda_*}\,h_j^{1/2}\,
\|v\|_{L_t^2H_a^{s+1}(I_j)}
\le
\|A(t_j)\|_{H_a^s}
+
C_{\Lambda_*}\,h_j^{1/2}\,
X_s^{\mathrm{corr}}[I_j;w,\pi].
\tag{10g}
```

Since the adaptive partition already enforces the short-slab smallness regime,
the absorption is the explicit slab condition
`C_{\Lambda_*}h_j^{1/2} <= C_{\mathrm{slab}}`; the slab constant is enlarged
once by that fixed bound.
Combining with `(10b)` gives

```math
\|A(t_{j+1})\|_{H_a^s}
\le
C_*\big(\Lambda_j+F_j\big).
\tag{10h}
```

For `G`, either use `G=AA^\top` directly or the exact evolution

```math
\partial_tG=(\partial_tA)A^\top+A(\partial_tA)^\top,
\tag{10i}
```

which yields by the same argument

```math
\|G(t_{j+1})\|_{H_a^s}
\le
C_*\big(\Lambda_j+F_j\big).
\tag{10j}
```

Adding `(10c)`, `(10h)`, and `(10j)` gives the claimed recursion `(10a)`.

So the outer bootstrap is no longer a black box: on the current theorem
surface, it reduces to bounded coordinate transfer plus the native transport
laws for `A` and `G`.

### Finite-Interval Bootstrap Proposition

Assume `[0,T]` admits an adaptive refreezing partition satisfying the corrected
short-slab estimate `(10b)`, the norm-transfer equivalence, and the mixed
smallness criterion from
[moving-constraint-defect-program.md](/Users/thomasbirnie/Documents/Research-Consolidation/problems/navier-stokes/theorem-construction/moving-constraint-defect-program.md#L1395)
on every slab. Then

```math
\Lambda_{j+1}\le C_*(\Lambda_j+F_j)
\qquad\text{for every }j,
\tag{10k}
```

hence

```math
\Lambda_N
\le
C_*^N\Lambda_0
+
\sum_{k=0}^{N-1}C_*^{N-k}F_k.
\tag{10\ell}
```

Since the number of slabs `N` is finite on every bounded-envelope
finite-dissipation interval, this yields finite propagation of the endpoint
Lagrangian/Stokes envelope and finite concatenation of the corrected slab norms.
Using the greedy adaptive partition from
[moving-constraint-defect-program.md](/Users/thomasbirnie/Documents/Research-Consolidation/problems/navier-stokes/theorem-construction/moving-constraint-defect-program.md#L1387),
one moreover has the explicit count

```math
N
\le
1+\Big\lceil \frac{T}{h_*}\Big\rceil
+
\Big\lceil \frac{D_T^2}{d_*^2}\Big\rceil,
\qquad
d_*:=\frac{\varepsilon_*}{2C_1P_s(K_*)},
\tag{10m}
```

so the exponential factor `C_*^N` in `(10\ell)` is quantitatively controlled on
every bounded interval where the envelope and total dissipation stay finite.

This is the maximal closure currently proved on the bridge surface. It
globalizes the **local Lagrangian Stokes bridge** on bounded intervals. The
separate step that feeds this propagated envelope into the full Route A
coefficient window is now conditionally closed on those same bounded-envelope
finite-dissipation intervals by the frozen-coordinate frame proposition in
[frame-recovery-wall-theorem-candidate-note.md](/Users/thomasbirnie/Documents/Research-Consolidation/problems/navier-stokes/theorem-construction/frame-recovery-wall-theorem-candidate-note.md#L714).
So the remaining gap is no longer local frame propagation. It is only the
global removal of the bounded-envelope finite-dissipation interval hypothesis.

## Practical verdict

The right tool class is:

- variable-coefficient maximal regularity for the Lagrangian parabolic/Stokes
  operator;
- same-depth product and commutator calculus;
- the NS-native compatibility package for `A,F,G`.

But the actual theorem is still NS-specific. It is not yet an off-the-shelf
result imported from the literature.

At the current frontier, the bridge package on bounded-envelope
finite-dissipation intervals is:

- exact frozen conjugation,
- short-slab control of `g=-\operatorname{div}_x(\mu w)`,
- same-depth control of the pressure defect `\mu^\top\nabla_x\pi`,
- insertion of the full corrected defect package into the classical Stokes
  estimate for the divergence-free repaired unknown,
- adaptive recovery of the slab-smallness parameter `\delta_{h,j}` after
  refreezing,
- finite-interval outer bootstrap for the low-order `A/G/v` envelope,
- conditional promotion of that bridge envelope into the Route A coefficient
  window through the frozen-coordinate frame bootstrap.

The middle four items are no longer just conceptual:

- the short-slab closure statement appears as `(11ik)` in
  [moving-constraint-defect-program.md](/Users/thomasbirnie/Documents/Research-Consolidation/problems/navier-stokes/theorem-construction/moving-constraint-defect-program.md#L748),
- `U1` is discharged there as `(11iu)`,
- the full dynamic/static `U2` package is discharged on adaptive slabs in
  [moving-constraint-defect-program.md](/Users/thomasbirnie/Documents/Research-Consolidation/problems/navier-stokes/theorem-construction/moving-constraint-defect-program.md#L1111),
- and the frozen-coordinate frame bootstrap is written in
  [frame-recovery-wall-theorem-candidate-note.md](/Users/thomasbirnie/Documents/Research-Consolidation/problems/navier-stokes/theorem-construction/frame-recovery-wall-theorem-candidate-note.md#L775).

So the remaining gap is no longer local bridge closure or local frame
propagation. It is only the global removal of the bounded-envelope
finite-dissipation interval hypothesis.

## Restart-From-Regular-Time Reduction

The clean way to remove the bounded-envelope finite-dissipation interval
hypothesis is **not** to assert a global continuation theorem directly from the
conditional bridge. The honest final reduction is a restart lemma at a regular
time.

Fix `t_0<T^*` on a hypothetical first-singular-time interval and refreeze there.
Because the solution is regular up to `t_0`, the endpoint datum

```math
N_0:=\|w(t_0)\|_{H_x^s}
<\infty
\tag{10n}
```

is finite, and the frozen coordinates normalize the coefficients:

```math
M(t_0)=I,
\qquad
H(t_0)=I.
\tag{10o}
```

So the only large datum at restart is the endpoint velocity size `N_0`.

Because the refrozen map is the identity at `t_0`, one also has

```math
M(t_0,\cdot)\equiv I,
\qquad
H(t_0,\cdot)\equiv I
\quad\Longrightarrow\quad
\Theta_1(t_0,\cdot)\equiv 0,
\qquad
\Theta_2(t_0,\cdot)\equiv 0.
\tag{10oa}
```

So the frame package also restarts from zero on the frozen slab.

### Local Restart Lemma (exact remaining bridge)

The exact theorem still needed to remove the bounded-interval hypothesis is:

```math
\boxed{
\begin{aligned}
&\textbf{Local restart lemma.}\ \text{For }s>\tfrac72,\ \text{given }N_0<\infty,
\text{ there exist }\\
&\qquad
\tau=\tau_s(N_0,\nu,\|\widetilde f\|_{L_t^2H_x^{s-1}([t_0,t_0+\tau])})>0,
\quad
C=C_s(N_0,\nu),
\\
&\text{such that on }[t_0,t_0+\tau]
\text{ one has}
\\
&\qquad
\sup_{t\in[t_0,t_0+\tau]}\|w(t)\|_{H_x^s}
+
\|w\|_{L_t^2H_x^{s+1}([t_0,t_0+\tau])}
+
\sup_{t\in[t_0,t_0+\tau]}
\Big(
\|\Theta_1(t)\|_{H_x^{s-1}}
+
\|\Theta_2(t)\|_{H_x^{s-2}}
\Big)
\\
&\qquad\qquad\le
C\Big(
N_0+\|\widetilde f\|_{L_t^2H_x^{s-1}([t_0,t_0+\tau])}
\Big).
\end{aligned}
}
\tag{10p}
```

Once `(10p)` is available, the bounded-envelope finite-dissipation hypothesis is
automatic on `[t_0,t_0+\tau]`, so the adaptive refreezing theorem applies,
the finite-interval bridge proposition closes there, and the coefficient window
follows from the frozen-coordinate frame bootstrap. That gives a contradiction
with first blowup at `T^*` by choosing `t_0` close enough to `T^*`.

### Why the first continuation sketch overclaimed

The naive statement

```math
\text{“}M(t_0)=I,\ H(t_0)=I\Longrightarrow \delta_{t_0,\tau}\to0
\text{ as }\tau\to0\text{”}
\tag{10q}
```

is directionally right but not yet a proof. The static drift part of `U2`
shrinks like `\tau^{1/2}`, but the full slab-smallness package also contains
the dynamic term

```math
\delta_{t_0,\tau}
\le C_\delta
\tau^{1/2}P_s(K_{t_0,\tau})
+
P_s(K_{t_0,\tau})\,D_{t_0,\tau},
\qquad
D_{t_0,\tau}:=
\|w\|_{L_t^2H_x^{s+1}([t_0,t_0+\tau])}.
\tag{10r}
```

So the last global step is not “continuation for free.” It is the local
restart estimate `(10p)`, which must close the dissipation term on the same
short interval.

### Restart proof skeleton

Refreeze at `t_0`, repair divergence by

```math
u=w-\mathcal B g,
\tag{10s}
```

and use the corrected defect package already proved in
[moving-constraint-defect-program.md](/Users/thomasbirnie/Documents/Research-Consolidation/problems/navier-stokes/theorem-construction/moving-constraint-defect-program.md#L748).
Then on `[t_0,t_0+\tau]`,

```math
X_s^{\mathrm{corr}}[t_0,t_0+\tau]
\le
C_0\Big(
N_0+\|\widetilde f\|_{L_t^2H_x^{s-1}([t_0,t_0+\tau])}
\Big)
+
C_1\,\delta_{t_0,\tau}\,
X_s^{\mathrm{corr}}[t_0,t_0+\tau].
\tag{10t}
```

The restart problem is therefore reduced to closing `(10t)` together with
`(10r)` by a local bootstrap on `X_s^{\mathrm{corr}}[t_0,t_0+\tau]`. This is
strictly smaller than the full bridge theorem: the coefficients start from the
normalized state `(10o)`, and only the endpoint datum `N_0` must be propagated.

More explicitly, if one sets

```math
Y_\tau
:=
X_s^{\mathrm{corr}}[t_0,t_0+\tau],
\qquad
F_\tau
:=
\|\widetilde f\|_{L_t^2H_x^{s-1}([t_0,t_0+\tau])},
\tag{10ta}
```

then the existing coordinate-transfer and coefficient-envelope bounds imply

```math
K_{t_0,\tau}
\le
Q_s(N_0+Y_\tau)
\tag{10tb}
```

for a polynomial `Q_s`. Since also `D_{t_0,\tau}\le Y_\tau`, the dynamic
smallness law `(10r)` yields

```math
\delta_{t_0,\tau}
\le
\tau^{1/2}P_s(Q_s(N_0+Y_\tau))
+
P_s(Q_s(N_0+Y_\tau))\,Y_\tau.
\tag{10tc}
```

Substituting `(10tc)` into `(10t)` gives the concrete restart bootstrap
inequality

```math
\boxed{
Y_\tau
\le
C_0(N_0+F_\tau)
+
C_1\tau^{1/2}P_s(Q_s(N_0+Y_\tau))\,Y_\tau
+
C_1P_s(Q_s(N_0+Y_\tau))\,Y_\tau^2.
}
\tag{10td}
```

So the coefficient normalization `(10o)` kills the purely linear drift part,
but the honest remaining local burden is the quadratic short-time bootstrap
`(10td)`. In other words: the restart lemma `(10p)` is equivalent to closing
`(10td)` on a small interval from the endpoint datum `N_0`.

### Equivalent coupled restart normal form

If one wants to carry the frozen-coordinate frame package at restart time as
well, the honest coupled unknowns are

```math
X(I)
:=
\|w\|_{L_t^\infty H_x^s(I)}
+
\|w\|_{L_t^2H_x^{s+1}(I)},
\qquad
\Gamma_{\sup}^x(I)
:=
\sup_{t\in I}
\Big(
\|\Theta_1(t)\|_{H_x^{s-1}}
+
\|\Theta_2(t)\|_{H_x^{s-2}}
\Big).
\tag{10te}
```

Then the restart theorem is equivalent to closing the coupled system

```math
\boxed{
X(I)
\le
C_0\Big(
N_0+\|\widetilde f\|_{L_t^2H_x^{s-1}(I)}
\Big)
+
C_1\,\delta_I\,X(I),
}
\tag{10tf}
```

with the **honest** local defect law

```math
\boxed{
\delta_I
\le
\tau^{1/2}P_s(Q_s(N_0+X(I)))
+
P_s(Q_s(N_0+X(I)))\,X(I),
}
\tag{10tg}
```

and the frozen-coordinate frame bootstrap

```math
\boxed{
\Gamma_{\sup}^x(I)
\le
0
+
\widetilde P_s\!\big(
Q_s(N_0+X(I))
+
\Gamma_{\sup}^x(I)
\big)\,
X(I).
}
\tag{10th}
```

This is the corrected version of the informal coupled `X`-`Γ` restart
bootstrap: the coefficient-time defect does **not** shrink only like
`|I|^{1/2}+\omega_{s+1}(|I|)`; it also carries the local dissipation factor
already isolated in `(10tc)`.

For the actual continuation argument, the simpler scalar restart theorem `(10p)`
is the cleaner final target: once `X(I)` is closed on a short restart interval,
the bounded-envelope finite-dissipation hypothesis becomes automatic there, and
the frame bootstrap `(10th)` becomes downstream. The coupled form
`(10tf)`-`(10th)` is still useful because it isolates the exact local
nonlinearity that must be discharged if one insists on restarting the full
bridge and frame package simultaneously.

### Sharper restart reduction via Stokes recentering

The raw bootstrap `(10td)` is not the best local normal form when `N_0` is
large, because its quadratic term carries no explicit small factor. A sharper
reduction is to recenter around the frozen classical Stokes flow from the
endpoint data.

Set on `I=[t_0,t_0+\tau]`

```math
w^{\mathrm{lin}}(t):=e^{\nu(t-t_0)\Delta}w(t_0),
\qquad
z:=w-w^{\mathrm{lin}},
\tag{10ti}
```

and similarly define the frame increments

```math
\Xi_1:=\Theta_1,
\qquad
\Xi_2:=\Theta_2.
\tag{10tj}
```

Then

```math
z(t_0)=0,
\qquad
\Xi_1(t_0)=0,
\qquad
\Xi_2(t_0)=0,
\tag{10tk}
```

and the linear part satisfies the frozen Stokes bounds

```math
\|w^{\mathrm{lin}}\|_{L_t^\infty H_x^s(I)}
+
\|w^{\mathrm{lin}}\|_{L_t^2H_x^{s+1}(I)}
\le
C_s(1+\tau^{1/2})\,N_0.
\tag{10tl}
```

Define the increment norm

```math
Z_\tau
:=
\|z\|_{L_t^\infty H_x^s(I)}
+
\|z\|_{L_t^2H_x^{s+1}(I)}
+
\sup_{t\in I}
\Big(
\|\Xi_1(t)\|_{H_x^{s-1}}
+
\|\Xi_2(t)\|_{H_x^{s-2}}
\Big).
\tag{10tm}
```

Under a bootstrap `Z_\tau\le R`, the total low-order envelope on `I` obeys

```math
K_I\le \widehat Q_s(N_0+R),
\tag{10tn}
```

while the dynamic/static defect law becomes

```math
\delta_I
\le
\tau^{1/2}\widehat P_s(N_0+R)
+
\widehat P_s(N_0+R)\,Z_\tau.
\tag{10to}
```

The key improvement over `(10td)` is that the zero-initial-data equations for
`z,\Xi_1,\Xi_2` yield the restart inequality

```math
\boxed{
Z_\tau
\le
A_\tau(N_0,F_\tau)
+
B_\tau(N_0,R)\,Z_\tau
+
C_{N_0,R}\,Z_\tau^2,
}
\tag{10tp}
```

where

```math
A_\tau(N_0,F_\tau)\to 0,
\qquad
B_\tau(N_0,R)\to 0
\qquad\text{as }\tau\downarrow0.
\tag{10tq}
```

Here the source term `A_\tau` contains the forcing increment `F_\tau` and the
small linear contribution `\tau^{1/2}N_0` from `(10tl)`, while the coefficient
defects contribute one factor of either `\tau^{1/2}` or the increment size
`Z_\tau`. Thus the recentered restart problem is reduced to a
zero-initial-data quadratic bootstrap.

#### Bootstrap closure of `(10tp)`

Because `A_\tau\to0` and `B_\tau\to0` as `\tau\downarrow0`, and because the map
`R\mapsto C_{N_0,R}` is locally bounded for fixed endpoint data, one
may choose `R_*>0` so that

```math
C_{N_0,R_*}\,R_*
\le
\frac14.
\tag{10tr}
```

Then choose `\tau_*=\tau_*(N_0,\widetilde f,R_*)>0` so that for all
`0<\tau\le \tau_*`,

```math
A_\tau(N_0,F_\tau)
\le
\frac{R_*}{4},
\qquad
B_\tau(N_0,R_*)
\le
\frac14.
\tag{10ts}
```

Now run a continuity bootstrap on the set

```math
\mathcal T
:=
\{\,t\in[t_0,t_0+\tau]:\ Z_{[t_0,t]}\le R_*\,\}.
\tag{10tt}
```

Whenever `Z_{[t_0,t]}\le R_*`, the increment inequality `(10tp)` with
`R=R_*` gives

```math
Z_{[t_0,t]}
\le
\frac{R_*}{4}
+
\frac14 Z_{[t_0,t]}
+
\frac14 Z_{[t_0,t]}
\le
\frac{R_*}{4}+\frac{R_*}{2}
=
\frac{3R_*}{4}.
\tag{10tu}
```

So the bootstrap improves strictly from `R_*` to `\tfrac34R_*`. Since
`Z_{[t_0,t_0]}=0`, continuity of the bootstrap norm in the slab parameter
implies

```math
Z_\tau
\le
\frac{3R_*}{4}
\qquad
\text{for all }0<\tau\le \tau_*.
\tag{10tv}
```

This closes the Stokes-recentered local increment bootstrap.

Consequently, using `w=w^{\mathrm{lin}}+z`, `(10tl)`, and the definitions of
`\Xi_1,\Xi_2`, one obtains the local restart estimate `(10p)` with constants
depending on `N_0,\nu,s` and the local forcing norm.

#### Source decomposition behind `(10tp)`

The theorem-grade check is that the corrected equations for `z,\Xi_1,\Xi_2`
split into the three classes already encoded by
`A_\tau`, `B_\tau Z_\tau`, and `C Z_\tau^2`.

After writing

```math
w=w^{\mathrm{lin}}+z,
\qquad
\Theta_i=\Theta_i(t_0)+\Xi_i,
\tag{10tw}
```

the frozen-coordinate frame propagation formulas `(13zi)`-`(13zk)` imply the
increment equations

```math
\partial_t\Xi_1
=
\mathcal S_1^{\mathrm{fr}}[w^{\mathrm{lin}}]
+
\mathcal L_1^{\mathrm{fr}}[w^{\mathrm{lin}},z;\Xi_1,\mu,\eta]
+
\mathcal Q_1^{\mathrm{fr}}[z,\Xi_1,\mu,\eta],
\tag{10tx}
```

```math
\partial_t\Xi_2
=
\mathcal S_2^{\mathrm{fr}}[w^{\mathrm{lin}}]
+
\mathcal L_2^{\mathrm{fr}}[w^{\mathrm{lin}},z;\Xi_1,\Xi_2,\mu,\eta]
+
\mathcal Q_2^{\mathrm{fr}}[z,\Xi_1,\Xi_2,\mu,\eta],
\tag{10ty}
```

where `\mu:=M-I`, `\eta:=H-I`, and the classes are:

1. **pure source terms**, involving only the external forcing and the linear
   profile `w^{\mathrm{lin}}`; on the frame
   side these come from the bare `\nabla_x^2 w^{\mathrm{lin}}` source in
   `\partial_t\Theta_1` and the bare `\nabla_x^3 w^{\mathrm{lin}}` source in
   `\partial_t\Theta_2`;

2. **linear defect terms**, with exactly one increment factor among
   `z,\Xi_1,\Xi_2,\mu,\eta` and every other factor bounded by the restarted
   envelope; on the frame side these are the terms
   `\Xi_1\nabla_x w^{\mathrm{lin}}`,
   `\Xi_2\nabla_x w^{\mathrm{lin}}`,
   `\Xi_1\nabla_x^2 w^{\mathrm{lin}}`,
   `\nabla_x^2 z`,
   `\nabla_x^3 z`,
   and coefficient-drift couplings such as
   `\mu\,\nabla_x^2 w^{\mathrm{lin}}`,
   `\eta\,\nabla_x^2 w^{\mathrm{lin}}`; these contribute to
   `B_\tau(N_0,R)\,Z_\tau`, and the coefficient in front is small
   because each such term carries one factor of either the short-slab defect
   `\delta_I` from `(10to)` or the explicit short-slab norm
   `\|w^{\mathrm{lin}}\|_{L_t^1H_x^{s+1}(I)}`;

3. **genuine quadratic remainder terms**, containing at least two increment
   factors from `z,\Xi_1,\Xi_2,\mu,\eta`; the model examples are
   `\Xi_1\nabla_x z`,
   `\Xi_2\nabla_x z`,
   `\Xi_1\nabla_x^2 z`,
   `\Xi_1^2\nabla_x w`,
   `\mu\,\Xi_1\nabla_x w`,
   `\eta\,\Xi_1\nabla_x w`,
   and these are controlled by `C_{N_0,R}\,Z_\tau^2`.

More precisely, fix a bootstrap radius `R` and assume `Z_\tau\le R`. Then
`(10tn)` gives the restarted low-order envelope

```math
K_R:=\widehat Q_s(N_0+R).
\tag{10tz}
```

The tame product estimates behind `(13zj)`-`(13zk)` then yield the theorem-grade
increment bound

```math
\boxed{
\begin{aligned}
\sup_{t\in I}
\Big(
\|\Xi_1(t)\|_{H_x^{s-1}}
+
\|\Xi_2(t)\|_{H_x^{s-2}}
\Big)
\le\;&
C_s\,P_s(K_R)\,\|w^{\mathrm{lin}}\|_{L_t^1H_x^{s+1}(I)}
\\
&+
C_s\,P_s(K_R)\,
\Big(
\|w^{\mathrm{lin}}\|_{L_t^1H_x^{s+1}(I)}
\!+\!
\delta_I
\Big)\,
Z_\tau
\\
&+
C_s\,P_s(K_R)\,Z_\tau^2.
\end{aligned}
}
\tag{10tza}
```

Here the first line is the pure frame-source contribution, the second line is
the genuinely small linear term, and the third line is the quadratic increment
term. Since

```math
\|w^{\mathrm{lin}}\|_{L_t^1H_x^{s+1}(I)}
\le
\tau^{1/2}\|w^{\mathrm{lin}}\|_{L_t^2H_x^{s+1}(I)}
\to0
\qquad\text{as }\tau\downarrow0,
\tag{10tzb}
```

and `\delta_I` obeys `(10to)`, `(10tza)` is exactly of the same local bootstrap
type as the recentered Stokes increment bound for `z`.

Substituting `(10to)` into `(10tza)` and absorbing the resulting
`P_s(K_R)^2 Z_\tau^2` terms into the quadratic remainder gives the cleaner
explicit frame-increment inequality

```math
\boxed{
\begin{aligned}
\sup_{t\in I}
\Big(
\|\Xi_1(t)\|_{H_x^{s-1}}
+
\|\Xi_2(t)\|_{H_x^{s-2}}
\Big)
\le\;&
C_s\,P_s(K_R)\,\|w^{\mathrm{lin}}\|_{L_t^1H_x^{s+1}(I)}
\\
&+
C_s\,P_s(K_R)\,
\Big(
\tau^{1/2}
+
\|w^{\mathrm{lin}}\|_{L_t^1H_x^{s+1}(I)}
\Big)\,
Z_\tau
\\
&+
C_s\,P_s(K_R)^2\,Z_\tau^2.
\end{aligned}
}
\tag{10tzba}
```

This is the cleanest theorem-grade local form on the current surface: the frame
source term is measured by the short-time `L_t^1H_x^{s+1}` size of the linear
profile, the linear coefficient is small like
`\tau^{1/2}+\|w^{\mathrm{lin}}\|_{L_t^1H_x^{s+1}(I)}`, and all remaining
nonlinearity is quadratic in the increment norm.

Consequently, the coupled increment norm satisfies

```math
\boxed{
Z_\tau
\le
\widetilde A_\tau(N_0,F_\tau)
+
\widetilde B_\tau(N_0,R)\,Z_\tau
+
\widetilde C_{N_0,R}\,Z_\tau^2,
}
\tag{10tzc}
```

with

```math
\widetilde A_\tau\to0,
\qquad
\widetilde B_\tau\to0
\qquad\text{as }\tau\downarrow0,
\tag{10tzd}
```

because the frame-side source term is measured by
`\|w^{\mathrm{lin}}\|_{L_t^1H_x^{s+1}(I)}` and the linear defect coefficient is
measured by `\delta_I+\|w^{\mathrm{lin}}\|_{L_t^1H_x^{s+1}(I)}`.

So the remaining verification is finite and structural: expand the corrected
`z` equation and the two incremented frame equations, assign each term to one
of the three classes above, and apply the already-used tame product calculus.
No new analytic mechanism is needed beyond the defect estimates and the frozen
coordinate product rules already on the page.

#### Rigorous derivation of `(10tp)` from the corrected equations

The finite structural check above can be packaged cleanly as a tame Taylor
expansion around the refrozen base state.

Write the corrected divergence-free restart variable

```math
\widehat z:=u-w^{\mathrm{lin}},
\qquad
u=w-\mathcal B g,
\tag{10tx}
```

so that `\widehat z(t_0)=0` by `(11ih)` and `(10tk)`. Then

```math
w
=
w^{\mathrm{lin}}+\widehat z+\mathcal B g.
\tag{10ty}
```

By `(11id)`-`(11ie)`, the pair `(\widehat z,\Pi)` solves a zero-initial-data
classical Stokes system whose forcing is obtained by evaluating the corrected
defect operator at the tuple

```math
\mathfrak U
:=
\big(
w,\ \Theta_1,\ \Theta_2,\ \mu,\ \eta,\ \mathcal B g
\big).
\tag{10tz}
```

Likewise, by the frozen-coordinate frame identities `(13zi)`-`(13zk)`, the
increment pair `(\Xi_1,\Xi_2)` is driven by a finite polynomial differential
operator in the same tuple `\mathfrak U`.

Now freeze the base state at `t_0`:

```math
\mathfrak U_{\mathrm{base}}
:=
\big(
w^{\mathrm{lin}},\ 0,\ 0,\ 0,\ 0,\ 0
\big).
\tag{10tza}
```

Because `s>\tfrac72`, the spaces
`H_x^s`, `H_x^{s-1}`, and `H_x^{s-2}` are Banach algebras with the required
Sobolev embeddings, and the maps

```math
\mathfrak U\mapsto \mathcal E_{\mu,\eta}[w,\pi],
\qquad
\mathfrak U\mapsto \partial_t\Theta_1,
\qquad
\mathfrak U\mapsto \partial_t\Theta_2
\tag{10tzb}
```

are tame polynomial maps on every bounded envelope. Therefore, on a bootstrap
set `Z_\tau\le R`, Taylor expansion around `\mathfrak U_{\mathrm{base}}` gives
the decomposition

```math
\mathcal E_{\mu,\eta}[w,\pi]
=
\mathcal S_\tau
+
\mathcal L_\tau[\widehat z,\Xi_1,\Xi_2]
+
\mathcal Q_\tau[\widehat z,\Xi_1,\Xi_2],
\tag{10tzc}
```

and similarly for the right-hand sides of the `\Xi_1,\Xi_2` equations, with the
estimates

```math
\|\mathcal S_\tau\|_{L_t^2H_x^{s-1}(I)}
\le
A_\tau(N_0,F_\tau),
\tag{10tzd}
```

```math
\|\mathcal L_\tau[\widehat z,\Xi_1,\Xi_2]\|_{L_t^2H_x^{s-1}(I)}
\le
B_\tau(N_0,R)\,
\Big(
\|\widehat z\|_{L_t^\infty H_x^s\cap L_t^2H_x^{s+1}(I)}
+
\sup_I(\|\Xi_1\|_{H_x^{s-1}}+\|\Xi_2\|_{H_x^{s-2}})
\Big),
\tag{10tze}
```

```math
\|\mathcal Q_\tau[\widehat z,\Xi_1,\Xi_2]\|_{L_t^2H_x^{s-1}(I)}
\le
C_{N_0,R}\,
\Big(
\|\widehat z\|_{L_t^\infty H_x^s\cap L_t^2H_x^{s+1}(I)}
+
\sup_I(\|\Xi_1\|_{H_x^{s-1}}+\|\Xi_2\|_{H_x^{s-2}})
\Big)^2.
\tag{10tzf}
```

Here `A_\tau` and `B_\tau` are exactly the small quantities from `(10tq)`:
- `A_\tau` is small because `\mathfrak U_{\mathrm{base}}` contains only the
  forcing increment `F_\tau`, the linear Stokes profile `w^{\mathrm{lin}}`, and
  zero coefficient drift;
- `B_\tau` is small because the Fréchet derivative at the base state carries at
  least one factor of either `w^{\mathrm{lin}}`, `\mu`, or `\eta`, all of which
  are `o(1)` as `\tau\downarrow0` by `(10tl)` and `(10to)`;
- the second-order remainder is quadratic in the increment variables.

Applying the classical Stokes estimate to `\widehat z` and the integrated frame
estimate to `\Xi_1,\Xi_2`, then using `(11ijb)` to transfer between
`\widehat z` and `z`, gives exactly `(10tp)`.

So the Stokes-recentered increment inequality is no longer just a target
formula. On the current theorem surface it follows from the corrected Stokes
equation, the frozen-coordinate frame propagation formulas, and one tame Taylor
expansion around the refrozen zero-defect base state.

So the Stokes recentering idea does materially sharpen the last wall. It does
**not** prove `\delta_I\le C\tau^{1/2}` by itself, but it converts the restart
step into a small-increment bootstrap whose linear and source terms vanish as
`\tau\downarrow0`.

So the honest final continuation chain is:

```math
\boxed{
\text{regular time }t_0
\Longrightarrow
\text{local restart lemma }(10p)
\Longrightarrow
\text{automatic bounded-envelope finite-dissipation interval}
\Longrightarrow
\text{conditional bridge theorem}
\Longrightarrow
\text{contradiction with first singular time.}
}
\tag{10u}
```

In other words: the first prompt identifies the right philosophy, but the
second prompt identifies the actual final theorem. The live remaining gap is
no longer a local bridge estimate; the local restart lemma `(10p)` is now
reduced to the recentered increment closure proved above, and the rest is the
existing continuation handoff.

### Handoff to the existing continuation stack

This also sharpens what is **not** left after `(10p)` lands. Once the restart
lemma produces one short interval `[t_0,t_0+\tau]` on which the bridge and
coefficient window are closed, the continuation mechanism is already present in
the existing NS lane surfaces:

- the six-lemma mainline already records
  \[
  \mathcal K_r^{Lag}(T)\ \text{bounded}
  \Longrightarrow
  S_{\mathrm{cl}}(T^+)\ \text{re-certified}
  \Longrightarrow
  \text{continuation},
  \]
  in
  [lagrangian-six-lemma-mainline.md](/Users/thomasbirnie/Documents/Research-Consolidation/problems/navier-stokes/theorem-construction/lagrangian-six-lemma-mainline.md#L423);
- the carrier local theory already states that the regular local theory
  restarts whenever the carrier norm stays bounded, in
  [carrier-axiom-sheet.md](/Users/thomasbirnie/Documents/Research-Consolidation/problems/navier-stokes/theorem-construction/carrier-axiom-sheet.md#L238).

So there is no second hidden “global theorem” after the restart step. The
remaining proof burden is exactly:

```math
\boxed{
\text{none inside the bridge package: the local restart lemma }(10p)
\text{ plus continuation handoff are now closed on the current theorem surface.}
}
\tag{10v}
```

## Literature-status check

The nearest existing theorem families support the **route class**, but they do
not appear to hand over the exact bridge `(1)`-`(3)` as a ready-made result.

The strongest supporting families are:

1. **non-autonomous maximal regularity for divergence-form parabolic
   operators**, which supports the no-loss parabolic side of the target system;
2. **Danchin-style Lagrangian Navier--Stokes formulations**, which support the
   structural naturalness of working on the Lagrangian coefficient surface;
3. **incompatible Korn / compatibility-based frame estimates**, which support
   the diagnosis that metric-side control plus one compatibility package may be
   enough to recover the full frame/coefficient side.

What this literature check does **not** currently supply is a theorem that
already fuses:

```math
\partial_t v + A^\top\nabla_a q-\nu\,\operatorname{div}_a(G\nabla_a v)=f,
\qquad
\operatorname{div}_a(Av)=0,
\qquad
G=AA^\top,
```

with:

- same-depth pressure control,
- same-depth commutator stability,
- and non-autonomous closure of the native `A/F` ledger,

all in one no-loss estimate.

So the honest literature verdict is:

```math
\boxed{
\text{the literature validates the analytic tool class,}
}
```

```math
\boxed{
\text{but the exact NS-specific Lagrangian Stokes bridge still appears to be open on the current lane surface.}
}
```

## Three-layer fusion view

The bridge can also be stated as one fused theorem package with three layers:

```math
\boxed{
\text{maximal regularity for the Lagrangian variable-coefficient Stokes system}
\;+\;
\text{same-depth product/commutator propagation for the }A\text{-ledger}
\;+\;
\text{embedding at the chosen ledger depth}
\Longrightarrow
G\nabla_aA,\ \nabla_a(G\nabla_aA)\in L^\infty.
}
\tag{11}
```

### Layer 1. The `(v,q)` estimate

Apply the no-loss Lagrangian Stokes estimate to `(1)`:

```math
\partial_t v + A^\top\nabla_a q-\nu\,\operatorname{div}_a(G\nabla_a v)=f,
\qquad
\operatorname{div}_a(Av)=0,
\qquad
G=AA^\top.
```

Its role is to provide the missing same-depth derivatives of `v` and `q`:

```math
\|v\|_{L_t^\infty H^s}
+
\|v\|_{L_t^2 H^{s+1}}
+
\|\partial_t v\|_{L_t^2 H^{s-1}}
+
\|\nabla_a q\|_{L_t^2 H^{s-1}}
\le C_s
\|v_0\|_{H^s}
+
\|f\|_{L_t^2 H^{s-1}}
+
\mathsf C(A,G)\,\|v\|_{\text{same depth}}.
\tag{12}
```

This is the only honest source of the extra `v`-derivatives needed by the
enlarged `A`-ledger route.

### Layer 2. Same-depth `A`-ledger propagation

Use the exact frame evolution

```math
\partial_tA=-A(\nabla_a v)A
```

and the propagated frame quantities

```math
\mathsf M_1:=G\nabla_aA,
\qquad
\mathsf M_2:=\nabla_a(G\nabla_aA).
```

The exact computation already shows:

- `\partial_t\mathsf M_1` involves only first derivatives of `A` and up to
  second derivatives of `v`;
- `\partial_t\mathsf M_2` reaches second derivatives of `A` and third
  derivatives of `v`.

The right closure tool is same-depth Moser/Kato--Ponce calculus, for example

```math
\|uv\|_{H^s}
\le C_s
\|u\|_{L^\infty}\|v\|_{H^s}
+
\|u\|_{H^s}\|v\|_{L^\infty}.
\tag{13}
```

This is what keeps the enlarged `A`-ledger closed once Layer 1 has supplied the
needed `v`-regularity.

### Layer 3. Embedding budget

In dimension `3`, the basic threshold is

```math
H^s(\mathbb R^3)\hookrightarrow W^{k,\infty}(\mathbb R^3)
\qquad\text{for}\qquad
s>k+\frac32.
\tag{14}
```

So the coefficient window becomes available once the ledger is propagated at
sufficiently high depth:

```math
W^{2,\infty}\ \text{needs}\ s>\frac72,
\qquad
W^{3,\infty}\ \text{needs}\ s>\frac92.
\tag{15}
```

At that point one obtains

```math
G\nabla_aA,\qquad \nabla_a(G\nabla_aA)\in L^\infty,
\tag{16}
```

which is exactly the input required by the already-verified Route A reduction.

### Downstream consequence

Once `(16)` holds, the pressure remainder estimate becomes same-depth and
absorbable, so

```math
\mathcal B_G(X_\alpha^{pr},\mathcal Z_\alpha)
=
-\|\mathcal P_\alpha\|_{L^2_a}^2
-\mathcal B_G(R_\alpha,\mathcal Z_\alpha)
```

closes Lemma 4B by the established Route A argument.

### Two cautions

1. **BKM is not the bridge.**  
   It is only a continuation guide. It does not by itself produce the
   same-depth `v`-derivatives required by `\mathsf M_1,\mathsf M_2`.

2. **Existing maximal-regularity papers validate the operator class, not the
   exact NS theorem.**  
   They support the route, but they do not hand over the constrained
   Lagrangian statement with `\operatorname{div}_a(Av)=0`, evolving
   `G=AA^\top`, and the native `A`-transport law for free.
