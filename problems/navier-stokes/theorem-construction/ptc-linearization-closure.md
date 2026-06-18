# PTC Linearization Closure

## Status

Active theorem-facing upstream debt note.

Role: isolate the exact `PTC-Lin` theorem needed to close the linearization side
of the `D.7mn -> D.7mq` reduction on the exact-potential branch.

## Purpose

Discharge the linearization packet:

```math
\boxed{
\mathcal P_{J,\varepsilon}^{pair}
=
\mathcal P_{J,\mathrm{lin}}^{pair}
+
\operatorname{Err}_{J,\mathrm{lin}}^{pair,\varepsilon},
\qquad
\operatorname{Err}_{J,\mathrm{lin}}^{pair,\varepsilon}\to 0.
}
\tag{PTCL.0}
```

This is the first genuinely new upstream theorem in the exact-potential
closure route.

## Exact Target

### Theorem PTC-Lin.A

Construct a pair-linearization theorem that closes the linearization side of
`D.7mn1`:

```math
\left\|
c_{J,\varepsilon}(t,a)^{-1}\mathcal K_{J,\varepsilon}^{pair}(t,a)
-
\bigl(\mathbf W_J^{coc}(t,a)\bigr)^*
M_{J,\varepsilon}^{shape}(t,a)
\mathbf W_J^{coc}(t,a)
\right\|_{\mathrm{op}}
\le
\operatorname{Err}_{J,\varepsilon}^{lin}(t,a),
\tag{PTCL.1}
```

with

```math
\operatorname{Err}_{J,\varepsilon}^{lin}(t,a)\to 0
\quad\text{on the selector-good family.}
\tag{PTCL.2}
```

Equivalently, at the packet level,

```math
\mathcal P_{J,\varepsilon}^{pair}
=
\mathcal P_{J,\mathrm{lin}}^{pair}
+
\operatorname{Err}_{J,\mathrm{lin}}^{pair,\varepsilon}.
\tag{PTCL.3}
```

### Exact Algebraic Reduction

Let the selector-good pair tensor be

```math
\mathcal K_{J,\varepsilon}^{pair}(t,a)
:=
\int z_{ab}(t)\otimes z_{ab}(t)\,
d\mu_{J,\varepsilon}^{pair}(a,t;b),
\tag{PTCL.3a}
```

where `z_{ab}(t)` is the transported pair vector in the branch coordinates.
Let

```math
W:=\mathbf W_J^{coc}(t,a),
\qquad
\xi_{ab}\in N_a,
\qquad
r_{ab}(t):=z_{ab}(t)-W\,\xi_{ab}.
\tag{PTCL.3b}
```

Define

```math
M_{J,\varepsilon}^{shape}(t,a)
:=
\int \xi_{ab}\otimes \xi_{ab}\,d\mu,
\tag{PTCL.3c}
```

```math
B_{J,\varepsilon}(t,a)
:=
\int r_{ab}(t)\otimes \xi_{ab}\,d\mu,
\tag{PTCL.3d}
```

```math
R_{J,\varepsilon}(t,a)
:=
\int r_{ab}(t)\otimes r_{ab}(t)\,d\mu.
\tag{PTCL.3e}
```

Then there is an exact tensor identity

```math
\mathcal K_{J,\varepsilon}^{pair}(t,a)
=
W\,M_{J,\varepsilon}^{shape}(t,a)\,W^{*}
+
W\,B_{J,\varepsilon}(t,a)^{*}
+
B_{J,\varepsilon}(t,a)\,W^{*}
+
R_{J,\varepsilon}(t,a).
\tag{PTCL.3f}
```

So the real content of `PTC-Lin.A` is an averaged differentiability theorem for
the transported pair vector.

### Corollary PTCL.B (averaged differentiability implies tensor linearization)

Assume

```math
\int |r_{ab}(t)|^2\,d\mu_{J,\varepsilon}^{pair}(a,t;b)
\le
\epsilon_{J,\varepsilon}^{lin}(t,a)^2.
\tag{PTCL.3g}
```

Set

```math
\mathfrak m_{J,\varepsilon}^{shape}(t,a)
:=
\left(
\int |\xi_{ab}|^2\,d\mu_{J,\varepsilon}^{pair}(a,t;b)
\right)^{1/2}.
\tag{PTCL.3h}
```

Then

```math
\|B_{J,\varepsilon}(t,a)\|_{\mathrm{op}}
\le
\mathfrak m_{J,\varepsilon}^{shape}(t,a)\,
\epsilon_{J,\varepsilon}^{lin}(t,a),
\tag{PTCL.3i}
```

```math
\|R_{J,\varepsilon}(t,a)\|_{\mathrm{op}}
\le
\epsilon_{J,\varepsilon}^{lin}(t,a)^2,
\tag{PTCL.3j}
```

and therefore

```math
\bigl\|
\mathcal K_{J,\varepsilon}^{pair}(t,a)
-
W\,M_{J,\varepsilon}^{shape}(t,a)\,W^{*}
\bigr\|_{\mathrm{op}}
\le
2\,\|W\|_{\mathrm{op}}\,
\mathfrak m_{J,\varepsilon}^{shape}(t,a)\,
\epsilon_{J,\varepsilon}^{lin}(t,a)
+
\epsilon_{J,\varepsilon}^{lin}(t,a)^2.
\tag{PTCL.3k}
```

So once `(PTCL.3g)` is proved, the rest of `PTC-Lin.A` is algebra.

**Proof.**
The identity `(PTCL.3f)` is obtained by expanding
`z_{ab}=W\xi_{ab}+r_{ab}` inside `z_{ab}\otimes z_{ab}` and integrating.
For `(PTCL.3i)`, let `u,v` be unit vectors. Then

```math
|\langle u,B_{J,\varepsilon}v\rangle|
=
\left|
\int \langle u,r_{ab}\rangle\,\langle \xi_{ab},v\rangle\,d\mu
\right|
\le
\left(\int |r_{ab}|^2\,d\mu\right)^{1/2}
\left(\int |\xi_{ab}|^2\,d\mu\right)^{1/2},
```

by Cauchy--Schwarz, which gives `(PTCL.3i)`. The bound `(PTCL.3j)` is
the operator identity
`\|r\otimes r\|_{\mathrm{op}}=|r|^2`, and `(PTCL.3k)` follows from
`(PTCL.3f)` together with
`\|WB^*\|_{\mathrm{op}},\|BW^*\|_{\mathrm{op}}\le \|W\|_{\mathrm{op}}\|B\|_{\mathrm{op}}`. ∎

### Lemma PTCL.C (selector-small exceptional set implies averaged differentiability)

Assume there is a measurable exceptional pair family
`E_{J,\varepsilon}(t,a)\subseteq \operatorname{supp}\mu_{J,\varepsilon}^{pair}(a,t;\cdot)`
such that

```math
|r_{ab}(t)|
\le
\delta_{J,\varepsilon}^{lin}(t,a)\,|\xi_{ab}|
\qquad\text{for }b\notin E_{J,\varepsilon}(t,a),
\tag{PTCL.3l}
```

and globally

```math
|r_{ab}(t)|
\le
L_{J,\varepsilon}^{lin}(t,a)\,|\xi_{ab}|.
\tag{PTCL.3m}
```

Then

```math
\int |r_{ab}(t)|^2\,d\mu_{J,\varepsilon}^{pair}(a,t;b)
\le
\delta_{J,\varepsilon}^{lin}(t,a)^2
\int |\xi_{ab}|^2\,d\mu_{J,\varepsilon}^{pair}(a,t;b)
+
\bigl(L_{J,\varepsilon}^{lin}(t,a)\bigr)^2
\int_{E_{J,\varepsilon}(t,a)} |\xi_{ab}|^2\,d\mu_{J,\varepsilon}^{pair}(a,t;b).
\tag{PTCL.3n}
```

In particular, if

```math
\delta_{J,\varepsilon}^{lin}(t,a)\to 0,
\qquad
\int_{E_{J,\varepsilon}(t,a)} |\xi_{ab}|^2\,d\mu_{J,\varepsilon}^{pair}(a,t;b)\to 0,
\tag{PTCL.3o}
```

and the second-moment packet

```math
\int |\xi_{ab}|^2\,d\mu_{J,\varepsilon}^{pair}(a,t;b)\le C_{J}^{shape}(t,a)
\tag{PTCL.3p}
```

is uniformly controlled, then `(PTCL.3g)` holds with

```math
\epsilon_{J,\varepsilon}^{lin}(t,a)^2
:=
\delta_{J,\varepsilon}^{lin}(t,a)^2\,C_J^{shape}(t,a)
+
\bigl(L_{J,\varepsilon}^{lin}(t,a)\bigr)^2
\int_{E_{J,\varepsilon}(t,a)} |\xi_{ab}|^2\,d\mu_{J,\varepsilon}^{pair}(a,t;b).
\tag{PTCL.3q}
```

So `PTC-Lin.A` is reduced further to one selector-good exceptional-set
upgrading theorem: pointwise linearization away from a selector-small bad set,
plus a controlled second moment for the reference coordinates, implies the
averaged differentiability packet.

**Proof.**
Split the integral of `|r_{ab}(t)|^2` over
`E_{J,\varepsilon}(t,a)` and its complement. On the complement, use
`(PTCL.3l)`; on the exceptional set, use `(PTCL.3m)`. This gives `(PTCL.3n)`,
and `(PTCL.3q)` follows from the same split. ∎

### Proposition PTCL.D (weighted pricing of differentiability-in-measure exceptional sets implies `PTC-Lin.A`)

For each tolerance `\eta>0`, define the selector-good exceptional pair family

```math
E_{J,\varepsilon,\eta}^{diff}(t,a)
:=
\left\{
b:
|z_{ab}(t)-W\,\xi_{ab}|>\eta\,|\xi_{ab}|
\right\}.
\tag{PTCL.3r}
```

Assume the transported pair family lies in an a.e.-defined regular-Lagrangian
flow regime with trajectory derivative `W(t,a)` on the selector-good carrier,
and assume:

1. for every fixed `\eta>0`, the flow-side differentiability packet gives

```math
\mu_{J,\varepsilon}^{pair}\bigl(E_{J,\varepsilon,\eta}^{diff}(t,a)\bigr)\to 0
\quad\text{on the selector-good family;}
\tag{PTCL.3s}
```

2. the global slope packet is uniformly controlled:

```math
|z_{ab}(t)-W\,\xi_{ab}|
\le
L_*\,|\xi_{ab}|;
\tag{PTCL.3t}
```

3. the selector pair second moment is uniformly bounded:

```math
\int |\xi_{ab}|^2\,d\mu_{J,\varepsilon}^{pair}(a,t;b)\le C_*;
\tag{PTCL.3u}
```

4. the selector pair measure prices the differentiability exceptional sets in
weighted second moment:

```math
\Theta_{J,\varepsilon,\eta}(t,a)
:=
\int_{E_{J,\varepsilon,\eta}^{diff}(t,a)}
|\xi_{ab}|^2\,d\mu_{J,\varepsilon}^{pair}(a,t;b)
\to 0
\quad\text{for every fixed }\eta>0.
\tag{PTCL.3v}
```

Then there exists a tolerance schedule `\eta_{J,\varepsilon}(t,a)\to 0` such
that

```math
\int |z_{ab}(t)-W\,\xi_{ab}|^2\,d\mu_{J,\varepsilon}^{pair}(a,t;b)\to 0,
\tag{PTCL.3w}
```

hence `PTC-Lin.A` holds.

So the exact remaining selector-local content of `PTC-Lin.A` is not the
tensor algebra and not the flow-side derivative object itself. It is the
weighted pricing theorem `(PTCL.3v)` for the differentiability-in-measure
exceptional family.

**Proof.**
Apply Lemma `PTCL.C` with
`E_{J,\varepsilon}(t,a)=E_{J,\varepsilon,\eta}^{diff}(t,a)`,
`\delta_{J,\varepsilon}^{lin}(t,a)=\eta`, and
`L_{J,\varepsilon}^{lin}(t,a)=L_*`. Then `(PTCL.3q)` becomes

```math
\epsilon_{J,\varepsilon}^{lin}(t,a)^2
\le
\eta^2 C_*
+
L_*^2\,\Theta_{J,\varepsilon,\eta}(t,a).
\tag{PTCL.3x}
```

Because `(PTCL.3v)` holds for every fixed `\eta>0`, choose a tolerance
schedule `\eta_{J,\varepsilon}(t,a)\to 0` slowly enough that
`\Theta_{J,\varepsilon,\eta_{J,\varepsilon}}(t,a)\to 0` as well. Then the
right-hand side of `(PTCL.3x)` tends to zero, which is exactly `(PTCL.3w)`.
Corollary `PTCL.B` then yields `(PTCL.1)`-`(PTCL.3)`. ∎

### Proposition PTCL.E (uniform integrability upgrades measure-small differentiability exceptional sets to `(PTCL.3v)`)

Assume that for each fixed tolerance `\eta>0`, the differentiability-in-measure
exceptional family satisfies the selector-good measure estimate `(PTCL.3s)`.
Assume also that the family of weights `|\xi_{ab}|^2` is uniformly integrable
with respect to the selector pair measures in the sense that for every
`\delta>0` there exists `K_\delta>0` with

```math
\sup_{J,\varepsilon,t,a}
\int_{\{|\xi_{ab}|^2>K_\delta\}}
|\xi_{ab}|^2\,d\mu_{J,\varepsilon}^{pair}(a,t;b)
\le
\delta.
\tag{PTCL.3y}
```

Then for every fixed `\eta>0`,

```math
\Theta_{J,\varepsilon,\eta}(t,a)
=
\int_{E_{J,\varepsilon,\eta}^{diff}(t,a)}
|\xi_{ab}|^2\,d\mu_{J,\varepsilon}^{pair}(a,t;b)
\to 0,
\tag{PTCL.3z}
```

that is, `(PTCL.3v)` holds.

So the weighted exceptional-set pricing needed in `PTCL.D` is reduced to one
pure selector-pair measure theorem: uniform integrability of the quadratic
reference coordinates under the active pair packet.

**Proof.**
Fix `\delta>0` and choose `K_\delta` from `(PTCL.3y)`. Then

```math
\Theta_{J,\varepsilon,\eta}(t,a)
\le
K_\delta\,
\mu_{J,\varepsilon}^{pair}\bigl(E_{J,\varepsilon,\eta}^{diff}(t,a)\bigr)
+
\int_{\{|\xi_{ab}|^2>K_\delta\}}
|\xi_{ab}|^2\,d\mu_{J,\varepsilon}^{pair}(a,t;b).
\tag{PTCL.3aa}
```

By `(PTCL.3s)`, the first term tends to zero for fixed `\delta`. By
`(PTCL.3y)`, the second term is at most `\delta`. Taking limsup gives

```math
\limsup_{J,\varepsilon}\Theta_{J,\varepsilon,\eta}(t,a)\le \delta.
\tag{PTCL.3ab}
```

Since `\delta>0` is arbitrary, `(PTCL.3z)` follows. ∎

### Corollary PTCL.F (bounded collar support is one exact sufficient realization of `PTCL.3v`)

Assume that on the selector-good pair family there exists a collar scale
`R_*(t,a)` such that

```math
|\xi_{ab}|\le R_*(t,a)
\qquad\text{for }\mu_{J,\varepsilon}^{pair}(a,t;\cdot)\text{-a.e. }b.
\tag{PTCL.3ac}
```

Then for every fixed tolerance `\eta>0`,

```math
\Theta_{J,\varepsilon,\eta}(t,a)
\le
R_*(t,a)^2\,
\mu_{J,\varepsilon}^{pair}\bigl(E_{J,\varepsilon,\eta}^{diff}(t,a)\bigr).
\tag{PTCL.3ad}
```

In particular, if `(PTCL.3s)` holds, then `(PTCL.3v)` follows.

So one exact sufficient realization of the weighted pricing theorem in `PTCL.D`
is simply: the selector-good pair packet lives in a uniformly bounded collar in
the reference coordinates.

**Proof.**
On `E_{J,\varepsilon,\eta}^{diff}(t,a)`, use `(PTCL.3ac)` to bound
`|\xi_{ab}|^2` by `R_*(t,a)^2`, then integrate. This gives `(PTCL.3ad)`.
Combine with `(PTCL.3s)`. ∎

### Corollary PTCL.G (de la Vallée-Poussin control is another exact sufficient realization of `PTCL.3v`)

Assume the selector pair measures form a finite family and there exists an
increasing convex function `\Phi:[0,\infty)\to[0,\infty)` with

```math
\frac{\Phi(s)}{s}\to\infty
\qquad\text{as }s\to\infty,
\tag{PTCL.3ae}
```

such that

```math
\sup_{J,\varepsilon,t,a}
\int
\Phi\!\bigl(|\xi_{ab}|^2\bigr)\,
d\mu_{J,\varepsilon}^{pair}(a,t;b)
\le
C_\Phi.
\tag{PTCL.3af}
```

Then the family `|\xi_{ab}|^2` is uniformly integrable in the sense of
`(PTCL.3y)`. Hence, together with `(PTCL.3s)`, Proposition `PTCL.E` yields
`(PTCL.3v)`.

So the weighted pricing theorem in `PTCL.D` also admits a pure Orlicz-tail
realization: one superlinear selector-pair moment packet is enough.

**Proof.**
Fix `\delta>0`. By `(PTCL.3ae)`, choose `K_\delta` so large that

```math
s\ge K_\delta
\Longrightarrow
s\le \frac{\delta}{C_\Phi}\,\Phi(s).
\tag{PTCL.3ag}
```

Then

```math
\int_{\{|\xi_{ab}|^2>K_\delta\}}
|\xi_{ab}|^2\,d\mu_{J,\varepsilon}^{pair}(a,t;b)
\le
\frac{\delta}{C_\Phi}
\int
\Phi\!\bigl(|\xi_{ab}|^2\bigr)\,d\mu_{J,\varepsilon}^{pair}(a,t;b)
\le
\delta,
\tag{PTCL.3ah}
```

uniformly in `(J,\varepsilon,t,a)`. This is exactly `(PTCL.3y)`, so
Proposition `PTCL.E` applies. ∎

### Corollary PTCL.H (the selector-scale coordinate realization makes bounded collar support automatic)

Assume the selector-good pair family is realized in the reference coordinates

```math
\xi_{ab}:=b-a
\qquad\text{or}\qquad
\xi_{ab}:=\frac{b-a}{\ell_J},
\tag{PTCL.3ai}
```

and the active-pair scale packet from the selector-good transport notes holds:

```math
a-b\in N_a,
\qquad
 c_a\ell_J\le |a-b|\le C_a\ell_J
\qquad
\text{for every active pair }(a,b)\in\mathcal A_J^{act}.
\tag{PTCL.3aj}
```

Then bounded collar support `(PTCL.3ac)` is automatic. More precisely:

1. in the unnormalized realization `\xi_{ab}=b-a`, one has

```math
|\xi_{ab}|\le C_*\,\ell_J;
\tag{PTCL.3ak}
```

2. in the normalized realization `\xi_{ab}=(b-a)/\ell_J`, one has

```math
|\xi_{ab}|\le C_*.
\tag{PTCL.3al}
```

Therefore, under the selector-scale coordinate choice `(PTCL.3ai)`, `PTCL.F` is
not an additional theorem burden: it is a direct consequence of the already
installed active-pair scale selection.

**Proof.**
The upper bound in `(PTCL.3aj)` gives `|b-a|\le C_*\,\ell_J` on the active
pair family. Substituting the two realizations in `(PTCL.3ai)` yields
`(PTCL.3ak)` and `(PTCL.3al)`, which are exactly the bounded-support forms
required in `PTCL.F`. ∎

### Corollary PTCL.I (under the selector-scale coordinate realization, `PTC-Lin.A` reduces to measure-small differentiability exceptional sets)

Assume the selector-scale coordinate choice `(PTCL.3ai)` and the
active-pair scale packet `(PTCL.3aj)`. Assume moreover that for every fixed
tolerance `\eta>0`,

```math
\mu_{J,\varepsilon}^{pair}\bigl(E_{J,\varepsilon,\eta}^{diff}(t,a)\bigr)\to 0
\quad\text{on the selector-good family.}
\tag{PTCL.3am}
```

Then `(PTCL.3v)` holds, hence `PTCL.D` applies and `PTC-Lin.A` is discharged.

So on the selector-scale branch, the live linearization burden is
reduced all the way to one theorem:

```math
\text{differentiability-in-measure exceptional sets are selector-small in pair measure.}
\tag{PTCL.3an}
```

Everything else in `PTC-Lin.A` is now downstream algebra or a consequence of
the already installed active-pair scale packet.

**Proof.**
By Corollary `PTCL.H`, the active-pair scale packet implies bounded collar
support `(PTCL.3ac)`. Corollary `PTCL.F` then upgrades `(PTCL.3am)` to
`(PTCL.3v)`. Proposition `PTCL.D` converts `(PTCL.3v)` into averaged
differentiability `(PTCL.3w)`, and Corollary `PTCL.B` yields `PTC-Lin.A`. ∎

### Corollary PTCL.J (`TPS.4u` is one exact sufficient realization of `DiffExc` on the selector-scale branch)

Assume the selector-scale coordinate choice `(PTCL.3ai)` and the
active-pair scale packet `(PTCL.3aj)`. Assume also that the selector-good
transport packet supplies

```math
X(t,b)-X(t,a)=D_aX(t,a)(b-a)+r_J(t,a,b),
\tag{PTCL.3ao}
```

with `r_J` negligible in pair measure relative to `|a-b|` on the selector-good
family in the sense of `(TPS.4u)`.

Then `DiffExc` holds, i.e. `(PTCL.3am)` is satisfied. Consequently, on the
selector-scale branch,

```math
\texttt{TPS.4u}
\Longrightarrow
\texttt{DiffExc}
\Longrightarrow
\texttt{PTC-Lin.A}.
\tag{PTCL.3ap}
```

So the linearization side of the projective exact-potential branch admits one
source-backed imported descendant: the good-set differentiability-in-measure
packet already isolated in the selector transport note.

**Proof.**
In the unnormalized realization `\xi_{ab}=b-a`, the exceptional set
`E_{J,\varepsilon,\eta}^{diff}(t,a)` is exactly the set where
`|r_J(t,a,b)|>\eta|a-b|`. In the normalized realization
`\xi_{ab}=(b-a)/\ell_J`, the same inequality is equivalent up to the fixed
selector scale `\ell_J`. Since `(TPS.4u)` states that the remainder is
negligible in pair measure relative to `|a-b|`, the exceptional-set measure
vanishes for every fixed `\eta>0`. This is precisely `(PTCL.3am)`. ∎

### Audit Note PTCL.K (the frozen linearization wall is stronger than bare `DiffExc`)

The qualitative selector-good theorem `DiffExc` from `PTCL.I` is enough to
discharge `PTC-Lin.A` in the branch-local averaged differentiability form.
But on the frozen measurable-derivative splice recorded in
[psj-plus-d7mb-residual-budget-route.md](/Users/thomasbirnie/Workspace/ToE/Research-Consolidation/problems/navier-stokes/theorem-construction/psj-plus-d7mb-residual-budget-route.md),
the live linearization wall is sharper:

```math
\text{geometric frozen wall }=\texttt{FrozenDiffMeasLoc}_{\mu,p/2},
\qquad
\text{auxiliary scalar wall }=\texttt{FrozenTolLoc}_{\mu,p}.
\tag{PTCL.3aq}
```

That frozen packet is stronger than bare `DiffExc`, because it asks for
localization and `L^{p/2}` control of the thresholded exceptional-set measure
at the J-dependent schedule `\vartheta_{J,\tau}^{lin}(a)`, not only vanishing
for each fixed tolerance `\eta`.

So the selector-scale implication

```math
\texttt{TPS.4u}
\Longrightarrow
\texttt{DiffExc}
\tag{PTCL.3ar}
```

is still only the qualitative upstream source of the frozen geometric side; it
does not by itself cross the synchronized frozen wall.

### Corollary PTCL.L (one exact stronger realization of the frozen geometric wall)

On the selector-scale branch, the frozen geometric wall admits the
exact stronger sufficient realization

```math
\texttt{SyncDiffQuad}_{\tau}
\;+\;
\texttt{FrozenTolLoc}_{\mu,p}
\Longrightarrow
\texttt{FrozenDiffMeasLoc}_{\mu,p/2},
\tag{PTCL.3as}
```

and one stronger sufficient realization of `\texttt{SyncDiffQuad}_{\tau}` is
the threshold-vs-linearization synchronization law written in
[frozen-threshold-vs-linearization-synchronization.md](/Users/thomasbirnie/Workspace/ToE/Research-Consolidation/problems/navier-stokes/theorem-construction/frozen-threshold-vs-linearization-synchronization.md)

```math
\texttt{SyncThreshSq}_{\tau}
\Longrightarrow
\texttt{SyncDiffQuad}_{\tau}.
\tag{PTCL.3at}
```

So if one tracks the frozen measurable-derivative splice rather than only the
qualitative averaged differentiability packet, the honest remaining
linearization debt is not just `DiffExc`; it is the synchronized threshold
modulus behind `\texttt{SyncDiffQuad}_{\tau}` together with the auxiliary
scalar tolerance packet.
No sharper standalone theorem-facing descendant is currently exposed on disk
below `\texttt{SyncThreshSq}_{\tau}` itself.

## Proof Program

The theorem burden is exactly:

```math
\text{selector-good pair family}
\Longrightarrow
\text{pair-average cocycle linearizes to leading order.}
\tag{PTCL.4}
```

The intended proof decomposition is:

1. define the selector-good pair-average cocycle exactly;
2. define the linearized pair model exactly;
3. prove quantitative pair-cocycle linearization on the selector-good strip;
4. prove selector-weighted averaging of the oscillation error.

So the primitive output is a tensor-level linearization packet, not yet a
projector theorem. After `PTCL.D`, the exact closure target is now reduced to a
selector-weighted pricing theorem for the differentiability-in-measure
exceptional family. After `PTCL.E`, this becomes a selector-pair uniform
integrability theorem for `|\xi_{ab}|^2`, with bounded collar support
`(PTCL.3ac)` or de la Vallée-Poussin control `(PTCL.3af)` as exact sufficient
realizations. Under the selector-scale coordinate choice `(PTCL.3ai)`,
the bounded-collar route is already implied by the installed active-pair scale
packet `(PTCL.3aj)`, so the live burden reduces further to selector-smallness
of the differentiability exceptional family `(PTCL.3am)`. One exact sufficient
realization of that selector-smallness packet is the imported selector-good
transport law `(TPS.4u)` through `PTCL.J`. Equivalently, the closure target is
the averaged
differentiability statement

```math
z_{ab}(t)=W(t,a)\,\xi_{ab}+r_{ab}(t),
\qquad
\int |r_{ab}(t)|^2\,d\mu_{J,\varepsilon}^{pair}(a,t;b)\to 0.
\tag{PTCL.5}
```

with the understanding that the flow-side derivative object is already the
source-backed part of the route and the remaining theorem debt is to keep the
selector pair measure from concentrating weighted second moment on the
exceptional family. That is the real mathematical work inside `PTC-Lin.A`.

If one instead tracks the frozen measurable-derivative splice, the live
linearization burden sharpens further to the paired packet
`\texttt{FrozenDiffMeasLoc}_{\mu,p/2} + \texttt{FrozenTolLoc}_{\mu,p}`,
with `\texttt{DiffExc}` only the qualitative upstream source of the geometric
side and `\texttt{SyncDiffQuad}_{\tau}` from `(PTCL.3as)` as one exact
sufficient synchronized realization. In that sharper sense, the honest
remaining transport theorem is the synchronized threshold modulus behind
`(PTCL.3at)`, not merely fixed-threshold exceptional-set smallness.

There is also a sharper finite-frame variant: instead of proving averaged
differentiability over the whole selector-good pair family, one may prove
uniform linearization on a finitely many selected balanced-frame directions.
That alternate route is written in
[finite-frame-linearization-on-selector-good-strips.md](/Users/thomasbirnie/Workspace/ToE/Research-Consolidation/problems/navier-stokes/theorem-construction/finite-frame-linearization-on-selector-good-strips.md),
with the concrete supplier theorem reduced further in
[segment-collar-derivative-continuity-on-balanced-frame.md](/Users/thomasbirnie/Workspace/ToE/Research-Consolidation/problems/navier-stokes/theorem-construction/segment-collar-derivative-continuity-on-balanced-frame.md).

## Downstream Use

This note only closes the linearization side of `D.7mn`.
It must be paired with
[ptc-shape-normalization-closure.md](/Users/thomasbirnie/Workspace/ToE/Research-Consolidation/problems/navier-stokes/theorem-construction/ptc-shape-normalization-closure.md)
to obtain `D.7mq`.

Under the selector-scale coordinate choice `(PTCL.3ai)`, Corollary
`PTCL.J` gives one installed source-backed supplier for the linearization side:

```math
\texttt{TPS.4u}
\Longrightarrow
\texttt{DiffExc}
\Longrightarrow
\texttt{PTC-Lin.A}.
\tag{PTCL.6}
```

Therefore, together with
[ptc-linearization-and-shape-closure.md](/Users/thomasbirnie/Workspace/ToE/Research-Consolidation/problems/navier-stokes/theorem-construction/ptc-linearization-and-shape-closure.md)
and
[sg4-and-br-lambda2-handoff.md](/Users/thomasbirnie/Workspace/ToE/Research-Consolidation/problems/navier-stokes/theorem-construction/sg4-and-br-lambda2-handoff.md),
the selector-scale exact-potential branch now reads:

```math
\texttt{TPS.4u}
+
\texttt{PTC-Shape.A}
+
\texttt{SSD.A}
\Longrightarrow
\texttt{SG.4}
\Longrightarrow
\texttt{BR.lambda2}
\Longrightarrow
\texttt{continuation}.
\tag{PTCL.7}
```

This terminal read is branch-local: it uses `TPS.4u` only through the
qualitative `DiffExc` supplier in `PTCL.J`, and does not claim the stronger
quantitative synchronized-threshold descendants isolated elsewhere in the
measurable-derivative route.

More sharply, on that frozen measurable-derivative splice the live
linearization stop line is:

```math
\texttt{FrozenDiffMeasLoc}_{\mu,p/2}
\;+\;
\texttt{FrozenTolLoc}_{\mu,p},
\tag{PTCL.8}
```

These two packets are now isolated separately in
[frozen-exceptional-set-measure-localization.md](/Users/thomasbirnie/Workspace/ToE/Research-Consolidation/problems/navier-stokes/theorem-construction/frozen-exceptional-set-measure-localization.md)
and
[frozen-tolerance-localization-packet.md](/Users/thomasbirnie/Workspace/ToE/Research-Consolidation/problems/navier-stokes/theorem-construction/frozen-tolerance-localization-packet.md).

with `\texttt{SyncDiffQuad}_{\tau}` from `(PTCL.3as)` as one exact stronger
sufficient realization of the geometric side, and
`\texttt{SyncThreshSq}_{\tau}` from `(PTCL.3at)` as a stronger sufficient
realization of that synchronized modulus packet, now isolated separately in
[frozen-threshold-vs-linearization-synchronization.md](/Users/thomasbirnie/Workspace/ToE/Research-Consolidation/problems/navier-stokes/theorem-construction/frozen-threshold-vs-linearization-synchronization.md).
