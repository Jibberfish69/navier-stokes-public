# MPP Field Coherence Remainder Note

## Status

Theorem-facing branch declaration note.

Role: fork a parallel primitive one-field branch without disturbing the current
transported-center supplier route

```math
VCB.A \Longrightarrow HSP.A \Longrightarrow FEI.A
\qquad\text{and}\qquad
AFD.A \Longrightarrow AFD.B \Longrightarrow RCF.A \Longrightarrow LCI.A.
```

This note isolates the exact leftover in the installed predicate
`\mathrm{Field}_{N,r,Q}` once `\mathrm{Part}_{N,Q}` is already granted.

## Purpose

The installed class-membership witness uses

```math
\mathrm{CM}_{N,r,Q}
:=
\mathrm{Pack}_Q
\wedge
\mathrm{Part}_{N,Q}
\wedge
\mathrm{Field}_{N,r,Q}.
```

But the current `Field` predicate bundles two different things:

1. the finite-difference tower law; and
2. bounded neighboring coherence through the modulus
   `\mathfrak C_{N,r,Q}(t)`.

The new branch starts from one exact question:

```math
\text{what does `Field` still add once `Part` is already installed?}
```

The answer on the present object surface is:

```math
\text{the law half is already downstream of `Part`; the real leftover is neighboring coherence.}
\tag{FCR.0}
```

## Installed Inputs

Use only the already-installed one-field and class-membership surfaces.

1. [mpp-primitive-class-laws-note.md](/Users/thomasbirnie/Workspace/ToE/Research-Consolidation/problems/navier-stokes/theorem-construction/mpp-primitive-class-laws-note.md)
2. [mpp-shared-participation-and-tower-coherence-law.md](/Users/thomasbirnie/Workspace/ToE/Research-Consolidation/problems/navier-stokes/theorem-construction/mpp-shared-participation-and-tower-coherence-law.md)
3. [mpp-exact-class-membership-witness-theorem.md](/Users/thomasbirnie/Workspace/ToE/Research-Consolidation/problems/navier-stokes/theorem-construction/mpp-exact-class-membership-witness-theorem.md)
4. [mpp-part-field-route-noncollapse-note.md](/Users/thomasbirnie/Workspace/ToE/Research-Consolidation/problems/navier-stokes/theorem-construction/mpp-part-field-route-noncollapse-note.md)
5. [mpp-part-field-triadicity-audit-note.md](/Users/thomasbirnie/Workspace/ToE/Research-Consolidation/problems/navier-stokes/theorem-construction/mpp-part-field-triadicity-audit-note.md)

## Installed Bundled Definition Of `Field`

The exact on-disk one-field predicate is:

```math
\mathfrak C_{N,r,Q}(t)
:=
\sup_{\substack{x,x+h\in Q_t\\0<|h|\le r}}
\sum_{k=0}^{N}
\frac{
|\delta_hU_k(x,t)|+|\delta_hK_k(x,t)|
}{|h|},
\tag{FCR.1}
```

and

```math
\mathrm{Field}_{N,r,Q}(u,p)
```

means:

1. the finite-difference tower law holds on `Q` for each `0\le k\le N`;
2. `\mathfrak C_{N,r,Q}(t)<\infty` on every time slice meeting `Q`.

For a finite bound `C<\infty`, write

```math
\mathrm{Field}^{\le C}_{N,\rho,Q}(u,p)
\tag{FCR.1a}
```

to mean that the finite-difference tower law holds on `Q` through depth `N`
and

```math
\sup_{t\text{ meeting }Q}\mathfrak C_{N,\rho,Q}(t)\le C.
\tag{FCR.1b}
```

This is the bounded-window one-field coherence regime already used by `MBR`.

## Lemma `FCR.A` (The law half of `Field` is already downstream of `Part`)

Assume `\mathrm{Part}_{N,Q}(u,p)`. Then for every `0\le k\le N` and every
increment `h` with `x,x+h\in Q_t`, the finite-difference tower law

```math
\big(\partial_t+u(x+h,t)\cdot\nabla\big)\delta_h U_k
+(\delta_h u)\cdot\nabla U_k(x,t)
+\delta_h\nabla^{k+1}p
-\nu\Delta\delta_h U_k
=
\delta_h B_k
\tag{FCR.2}
```

holds on `Q`.

### Proof

`Part_{N,Q}` gives the one-point tower law

```math
D_tU_k=K_k+B_k
\qquad (0\le k\le N).
\tag{FCR.3}
```

Write `(FCR.3)` at `x+h` and at `x`, subtract, and add/subtract
`u(x+h,t)\cdot\nabla U_k(x,t)`. This yields exactly `(FCR.2)`, which is the
installed finite-difference law `(TC.18)`. `\square`

## Corollary `FCR.B` (Under `Part`, `Field` reduces to bounded neighboring coherence)

Assume `\mathrm{Part}_{N,Q}(u,p)`. Then for every scale `r>0`,

```math
\mathrm{Field}_{N,r,Q}(u,p)
\Longleftrightarrow
\mathfrak C_{N,r,Q}(t)<\infty
\quad\text{on every time slice meeting }Q.
\tag{FCR.4}
```

So on the installed object surface the actual extra burden carried by `Field`
beyond `Part` is not the neighboring law itself. It is the bounded
neighboring-coherence regime.

## Boundary `FCR.B1` (Reverse Part-to-Field depends on terminal strength)

The implication in `FCR.A` is one-way:

```math
\mathrm{Part}_{N,Q}
\Longrightarrow
\text{the law half of }\mathrm{Field}_{N,r,Q}.
\tag{FCR.4a}
```

Its failure cannot be reversed without naming which part of participation has
failed. There are three different cases.

First, define the one-point participation residual

```math
R_k:=D_tU_k-K_k-B_k.
\tag{FCR.4b}
```

`Part` contains the assertion `R_k=0`. The law half of `Field` only sees
neighboring differences of this residual. In residual language:

```math
\text{Field-law holds}
\quad\Longleftrightarrow\quad
\delta_h R_k=0
\text{ on the comparison window.}
\tag{FCR.4c}
```

Therefore a localized or spatially varying participation-law defect breaks
`Field` on any positive-scale window that sees the variation:

```math
\delta_h R_k\ne 0
\Longrightarrow
\neg\text{Field-law}.
\tag{FCR.4d}
```

But a common-mode participation-law defect on the whole comparison component,

```math
R_k(x,t)=R_k(t)\ne 0
\quad\text{on every window connected by the Field comparisons,}
\tag{FCR.4e}
```

does not break `Field` by the finite-difference law alone, because neighboring
subtractions cancel the same wrong residual. It is still a `Part` failure: the
comparison component is coherently obeying the wrong carrier law.

A merely local bad block is not enough for this separation. If neighboring
blocks carry a different residual, then a positive-scale comparison across the
interface sees

```math
\delta_hR_k\ne 0,
\tag{FCR.4e'}
```

and the defect is Field-visible at that boundary.

Second, if `Part` fails because the participation envelope or terminal tower
readout is no longer finite,

```math
\mathfrak P_{N,Q}(t)=\infty
\quad\text{or the terminal tower/readout control is lost,}
\tag{FCR.4f}
```

then raw `Field` still need not fail as neighboring decoupling only if the
loss is common-mode across the whole comparison component. If the amplitude or
readout loss changes from one block to its neighbors, Field sees the boundary
contrast. The non-Field alternative is therefore a global/common-mode
calibration failure on the retained comparison component, not a single isolated
local block.

Thus the correct reverse statement is:

```math
\neg \mathrm{Part}_{N,Q}
\Longrightarrow
\big(
\text{spatially varying Field-law rupture}
\big)
\ \text{or}\
\big(
\text{common-mode carrier-law defect}
\big)
\ \text{or}\
\big(
\text{tower/participation-amplitude failure}
\big).
\tag{FCR.4g}
```

Only the first alternative is literally `\neg Field` by the law clause. The
second and third alternatives can coexist with retained `Field` as a
neighboring-coherence predicate only when they are common-mode across the whole
retained comparison component. They are still class-exit candidates through
`Part`, because `Field` compares nearby towers to each other while `Part` asks
whether those towers participate in the correct pressure-viscosity carrier law
with the needed absolute readout.

## Corollary `FCR.C` (Under `Pack + Part`, the surviving jump channel is coherence fracture)

Assume `\mathrm{Pack}_Q(u,\Phi)` and `\mathrm{Part}_{N,Q}(u,p)`. If

```math
\neg \mathrm{Field}_{N,r,Q}(u,p),
\tag{FCR.5}
```

then there exists a time slice `t` meeting `Q` such that

```math
\mathfrak C_{N,r,Q}(t)=\infty.
\tag{FCR.6}
```

Equivalently, once packing and one-point tower law are retained, the installed
`jump` channel is exactly neighboring-coherence fracture.

### Proof

By `FCR.A`, the law half of `\mathrm{Field}_{N,r,Q}` is already automatic under
`Part_{N,Q}`. So failure of `\mathrm{Field}_{N,r,Q}` can only come from failure
of the bounded-modulus clause. That is exactly `(FCR.6)`. `\square`

## Theorem `FCR.D` (Pack + Part + jump manifestation force shrinking-scale coherence fracture)

Fix one same-fluid still-live family `\mathcal Q_\ast` approaching a first
candidate class-exit point, and fix a depth `N` for which jump manifests in the
sense of `(MBR.4)`.

Assume:

1. `\mathrm{Pack}_Q(u,\Phi)` holds for every `Q\in\mathcal Q_\ast`;
2. `\mathrm{Part}_{N,Q}(u,p)` holds for every `Q\in\mathcal Q_\ast`;
3. jump manifests on `\mathcal Q_\ast`, equivalently

```math
\forall \rho>0,\ \forall C<\infty,\ \exists Q\in\mathcal Q_\ast:
\neg \mathrm{Field}^{\le C}_{N,\rho,Q}(u,p).
\tag{FCR.7a}
```

Then for every null scale sequence `\rho_n\downarrow 0` and every finite bound
sequence `C_n<\infty`, there exist windows `Q_n\in\mathcal Q_\ast` and times
`t_n` meeting `Q_n` such that

```math
\mathfrak C_{N,\rho_n,Q_n}(t_n)>C_n.
\tag{FCR.7b}
```

In particular, choosing `\rho_n=1/n` and `C_n=n`, there exist
`Q_n\in\mathcal Q_\ast` and times `t_n` meeting `Q_n` such that

```math
\mathfrak C_{N,1/n,Q_n}(t_n)>n,
\tag{FCR.7c}
```

hence the jump channel contains a shrinking-scale coherence fracture:

```math
\boxed{
\exists\, r_n\downarrow 0,\ \exists\, Q_n\in\mathcal Q_\ast,\ \exists\, t_n\text{ meeting }Q_n
\quad\text{such that}\quad
\mathfrak C_{N,r_n,Q_n}(t_n)\to\infty.
}
\tag{FCR.8}
```

### Proof

Fix any `\rho_n\downarrow 0` and any finite bound sequence `C_n`.
By jump manifestation `(FCR.7a)`, for each `n` there exists
`Q_n\in\mathcal Q_\ast` with

```math
\neg \mathrm{Field}^{\le C_n}_{N,\rho_n,Q_n}(u,p).
\tag{FCR.8a}
```

Because `\mathrm{Part}_{N,Q_n}(u,p)` holds, Lemma `FCR.A` makes the
finite-difference law clause in `\mathrm{Field}^{\le C_n}_{N,\rho_n,Q_n}`
automatic. Therefore `(FCR.8a)` can fail only through the bounded-modulus
condition `(FCR.1b)`. Hence for each `n` there exists a time `t_n` meeting
`Q_n` such that

```math
\mathfrak C_{N,\rho_n,Q_n}(t_n)>C_n,
\tag{FCR.8b}
```

which is exactly `(FCR.7b)`.

Choosing `\rho_n=1/n` and `C_n=n` gives `(FCR.7c)`. Setting
`r_n:=1/n` then yields `(FCR.8)`. `\square`

## Corollary `FCR.E` (Shrinking-scale coherence fracture yields a concrete bad rung witness)

Assume the shrinking-scale coherence fracture `(FCR.8)`. Then there exist:

1. scales `r_n\downarrow 0`;
2. windows `Q_n\in\mathcal Q_\ast`;
3. times `t_n` meeting `Q_n`;
4. points `x_n` and increments `h_n` with
   `x_n,x_n+h_n\in (Q_n)_{t_n}` and `0<|h_n|\le r_n`;
5. rung indices `k_n\in\{0,\dots,N\}`;

such that

```math
\frac{
|\delta_{h_n}U_{k_n}(x_n,t_n)|
+
|\delta_{h_n}K_{k_n}(x_n,t_n)|
}{|h_n|}
\to\infty.
\tag{FCR.10}
```

In particular, after passing to a subsequence there is one fixed rung
`k_\ast\in\{0,\dots,N\}` such that

```math
\frac{
|\delta_{h_n}U_{k_\ast}(x_n,t_n)|
+
|\delta_{h_n}K_{k_\ast}(x_n,t_n)|
}{|h_n|}
\to\infty.
\tag{FCR.11}
```

### Proof

By `(FCR.8)`, after possibly shrinking to a subsequence we may assume

```math
\mathfrak C_{N,r_n,Q_n}(t_n)\ge n.
\tag{FCR.12}
```

By the definition `(FCR.1)` of `\mathfrak C_{N,r_n,Q_n}(t_n)`, for each `n`
there exist `x_n`, `h_n` with `0<|h_n|\le r_n` such that

```math
\sum_{k=0}^{N}
\frac{
|\delta_{h_n}U_k(x_n,t_n)|+|\delta_{h_n}K_k(x_n,t_n)|
}{|h_n|}
\ge \frac{n}{2}.
\tag{FCR.13}
```

Hence for each `n` there is at least one rung `k_n\in\{0,\dots,N\}` with

```math
\frac{
|\delta_{h_n}U_{k_n}(x_n,t_n)|
+
|\delta_{h_n}K_{k_n}(x_n,t_n)|
}{|h_n|}
\ge \frac{n}{2(N+1)}.
\tag{FCR.14}
```

This proves `(FCR.10)`. Since the rung set `\{0,\dots,N\}` is finite, one rung
value occurs along an infinite subsequence; passing to that subsequence gives
the fixed-rung statement `(FCR.11)`. `\square`

## Corollary `FCR.F` (The concrete bad witness splits into tower-jump or carrier-jump)

Assume the fixed-rung witness `(FCR.11)`. Then, after passing to a subsequence,
at least one of the following holds:

### Tower-Jump Branch

```math
\frac{
|\delta_{h_n}U_{k_\ast}(x_n,t_n)|
}{|h_n|}
\to\infty;
\tag{FCR.15a}
```

### Carrier-Jump Branch

```math
\frac{
|\delta_{h_n}K_{k_\ast}(x_n,t_n)|
}{|h_n|}
\to\infty.
\tag{FCR.15b}
```

### Proof

Set

```math
a_n:=\frac{|\delta_{h_n}U_{k_\ast}(x_n,t_n)|}{|h_n|},
\qquad
b_n:=\frac{|\delta_{h_n}K_{k_\ast}(x_n,t_n)|}{|h_n|}.
\tag{FCR.16}
```

Then `(FCR.11)` says

```math
a_n+b_n\to\infty.
\tag{FCR.17}
```

If neither `(FCR.15a)` nor `(FCR.15b)` held on any subsequence, then both
`a_n` and `b_n` would be bounded along every tail, hence `a_n+b_n` would also
stay bounded along that tail, contradicting `(FCR.17)`. So one of the two
branches must occur after passing to a subsequence. `\square`

## Corollary `FCR.G` (The carrier-jump branch splits into pressure-jump or viscous-jump)

Assume the carrier-jump branch `(FCR.15b)`. Since

```math
K_{k_\ast}=-\nabla^{k_\ast+1}p+\nu\Delta U_{k_\ast},
\tag{FCR.18}
```

after passing to a subsequence at least one of the following holds:

### Pressure-Jump Carrier Branch

```math
\frac{
|\delta_{h_n}\nabla^{k_\ast+1}p(x_n,t_n)|
}{|h_n|}
\to\infty;
\tag{FCR.19a}
```

### Viscous-Jump Carrier Branch

```math
\frac{
|\delta_{h_n}\Delta U_{k_\ast}(x_n,t_n)|
}{|h_n|}
\to\infty.
\tag{FCR.19b}
```

### Proof

By `(FCR.18)` and the triangle inequality,

```math
\frac{
|\delta_{h_n}K_{k_\ast}(x_n,t_n)|
}{|h_n|}
\le
\frac{
|\delta_{h_n}\nabla^{k_\ast+1}p(x_n,t_n)|
}{|h_n|}
+
\nu\frac{
|\delta_{h_n}\Delta U_{k_\ast}(x_n,t_n)|
}{|h_n|}.
\tag{FCR.20}
```

If both `(FCR.19a)` and `(FCR.19b)` failed on every subsequence, then the
right-hand side of `(FCR.20)` would remain bounded along some tail, forcing the
left-hand side to stay bounded there as well, contradicting `(FCR.15b)`. So at
least one of `(FCR.19a)` or `(FCR.19b)` must occur after passing to a
subsequence. `\square`

## Corollary `FCR.H` (Jump manifestation routes into tower-jump or one of the two carrier-jump branches)

Assume the hypotheses of `FCR.D`: along one same-fluid still-live family
`\mathcal Q_\ast`, `Pack` survives, `Part` survives through depth `N`, and
jump manifests.

Then, after passing to a subsequence, at least one of the following three
branches occurs:

### Tower-Jump Branch

```math
\frac{
|\delta_{h_n}U_{k_\ast}(x_n,t_n)|
}{|h_n|}
\to\infty;
\tag{FCR.21a}
```

### Pressure-Carrier Jump Branch

```math
\frac{
|\delta_{h_n}\nabla^{k_\ast+1}p(x_n,t_n)|
}{|h_n|}
\to\infty;
\tag{FCR.21b}
```

### Viscous-Carrier Jump Branch

```math
\frac{
|\delta_{h_n}\Delta U_{k_\ast}(x_n,t_n)|
}{|h_n|}
\to\infty.
\tag{FCR.21c}
```

### Proof

`FCR.D` gives the shrinking-scale coherence fracture `(FCR.8)`. `FCR.E`
extracts from that one fixed-rung bad witness `(FCR.11)`. `FCR.F` splits that
fixed-rung witness into the tower-jump branch `(FCR.15a)` or the carrier-jump
branch `(FCR.15b)`. If the carrier-jump branch occurs, `FCR.G` splits it
further into the pressure-jump carrier branch `(FCR.19a)` or the
viscous-jump carrier branch `(FCR.19b)`. Relabeling these three terminal
branches as `(FCR.21a)`--`(FCR.21c)` gives the result. `\square`

## Route Reading

The point of `FCR.H` is not that the route is already closed on all three
branches. The point is that the new branch is no longer amorphous.

The theorem-facing routing is now:

1. `FCR.21a` is the genuinely new tower-compatibility branch. This is the
   branch that may upgrade further to a sharper shrinking-overlap jet witness.
2. `FCR.21b` and `FCR.21c` are not pure tower-compatibility events. They are
   pressure/viscosity carrier branches.

That is exactly the same carrier split already isolated on the old transported-
center receiver route:

```math
FEI.C7:
\qquad
\text{pressure increments}
\quad+\quad
\text{top viscous increment}.
\tag{FCR.22}
```

and, on the lower-carrier transported-center sufficient branch,

```math
RCF.A:
\qquad
\text{pressure-center readout}
\quad+\quad
\text{top viscous center ledgers}.
\tag{FCR.23}
```

So `FCR.H` gives the exact fork:

```math
\text{tower-jump}
\quad\text{or}\quad
\text{pressure-carrier jump}
\quad\text{or}\quad
\text{viscous-carrier jump}.
\tag{FCR.24}
```

The first branch stays on the new `Field Coherence Remainder` line. The last
two route back toward the old carrier/supplier side. On the installed route,
that carrier/supplier side is already nonterminal: the pressure/viscous split
is the old `FEI.C7` / `RCF.A` carrier queue, and the companion return notes now
record that, once those FEI continuations are unpacked, they reopen only
returned lower-carrier reads and feed back into the already-installed `LCI.A`
program rather than creating a new external theorem family.

## Definition `FCR.I0` (Same-rung compatibility witness)

For one rung `k\ge 0` and two same-time points `x\neq y`, define the
same-rung compatibility quotient

```math
\mathcal W_k^{same}(x,y,t)
:=
\frac{|U_k(y,t)-U_k(x,t)|}{|y-x|}.
\tag{FCR.25}
```

Equivalently, since the degree-zero Taylor polynomial of `U_k` at `x` is just
the constant value `U_k(x,t)`,

```math
\mathcal W_k^{same}(x,y,t)
=
\frac{
\left|
U_k(y,t)-\operatorname{Taylor}^{0}_{x\to y}(U_k)(x,t)
\right|
}{|y-x|}.
\tag{FCR.25a}
```

So `\mathcal W_k^{same}` is the lowest-order neighboring-jet mismatch on rung
`k`.

## Corollary `FCR.I` (Tower-jump yields shrinking-overlap same-rung compatibility failure)

Assume the tower-jump branch `(FCR.21a)`. Set

```math
y_n:=x_n+h_n.
\tag{FCR.26}
```

Then

```math
|y_n-x_n|=|h_n|\to 0
\tag{FCR.27}
```

and

```math
\mathcal W_{k_\ast}^{same}(x_n,y_n,t_n)
=
\frac{|\delta_{h_n}U_{k_\ast}(x_n,t_n)|}{|h_n|}
\to\infty.
\tag{FCR.28}
```

So the tower-jump branch is exactly a shrinking-overlap same-rung
compatibility failure.

### Proof

By definition,

```math
\delta_{h_n}U_{k_\ast}(x_n,t_n)
=
U_{k_\ast}(x_n+h_n,t_n)-U_{k_\ast}(x_n,t_n)
=
U_{k_\ast}(y_n,t_n)-U_{k_\ast}(x_n,t_n).
\tag{FCR.29}
```

Dividing by `|h_n|=|y_n-x_n|` gives `(FCR.28)` directly from `(FCR.21a)`.
`\square`

## Route Reading For The Tower Branch

`FCR.I` is the first genuinely new local witness on this line.

It is not a pressure/viscosity carrier event, and it is not a transported-center
supplier package. It is a direct neighboring-rung incompatibility statement:

```math
\text{one fixed rung }U_{k_\ast}\text{ stops fitting together across shrinking overlaps.}
\tag{FCR.30}
```

So the next honest debt on the new line is no longer “find a witness.” It is:

```math
\boxed{
\text{decide whether this same-rung compatibility failure already is the right jump object,}
\quad
\text{or upgrades further to a higher-order neighboring-jet / Whitney-type mismatch.}
}
\tag{FCR.31}
```

## Corollary `FCR.J` (The tower branch has a first bad neighboring-jet order)

Assume the tower-jump branch `(FCR.21a)`. Then, after passing to a subsequence,
there exists a minimal order `q_\ast\in\{0,\dots,N\}` such that

```math
\frac{
|\delta_{h_n}U_{q_\ast}(x_n,t_n)|
}{|h_n|}
\to\infty,
\tag{FCR.32}
```

while for every lower order `0\le j<q_\ast`,

```math
\sup_n
\frac{
|\delta_{h_n}U_j(x_n,t_n)|
}{|h_n|}
<\infty.
\tag{FCR.33}
```

So the tower branch does not just contain some bad rung. It contains a first
bad neighboring-jet order.

### Proof

Start from the tower-jump sequence in `(FCR.21a)`. Define

```math
\mathcal B
:=
\left\{
j\in\{0,\dots,N\}:
\exists\text{ a subsequence along which }
\frac{|\delta_{h_n}U_j(x_n,t_n)|}{|h_n|}\to\infty
\right\}.
\tag{FCR.34}
```

This set is nonempty because `k_\ast\in\mathcal B` by `(FCR.21a)`. Since
`\mathcal B\subseteq\{0,\dots,N\}` is finite, it has a minimal element
`q_\ast`.

By the definition of `\mathcal B`, after passing to a subsequence we get
`(FCR.32)`.

Now fix any `j<q_\ast`. Then `j\notin\mathcal B`. Hence there is no subsequence
along which

```math
\frac{|\delta_{h_n}U_j(x_n,t_n)|}{|h_n|}
\to\infty.
\tag{FCR.35}
```

If `(FCR.33)` failed for some `j<q_\ast`, then the nonnegative sequence

```math
\frac{|\delta_{h_n}U_j(x_n,t_n)|}{|h_n|}
\tag{FCR.36}
```

would be unbounded, and therefore would admit a subsequence diverging to
`\infty`, contradicting `j\notin\mathcal B`. So `(FCR.33)` holds for every
`j<q_\ast`. `\square`

## Corollary `FCR.K` (The first bad order is the first bad neighboring-jet order of `u`)

Under the hypotheses and notation of `FCR.J`, since

```math
U_q=\nabla^q u,
\tag{FCR.37}
```

the order `q_\ast` satisfies

```math
\frac{
|\nabla^{q_\ast}u(x_n+h_n,t_n)-\nabla^{q_\ast}u(x_n,t_n)|
}{|h_n|}
\to\infty,
\tag{FCR.38}
```

while for every `j<q_\ast`,

```math
\sup_n
\frac{
|\nabla^j u(x_n+h_n,t_n)-\nabla^j u(x_n,t_n)|
}{|h_n|}
<\infty.
\tag{FCR.39}
```

Equivalently, `q_\ast` is the first neighboring-jet order of `u` whose
same-rung compatibility quotient fails along the shrinking-overlap sequence.

### Proof

Substitute `U_q=\nabla^q u` into `(FCR.32)` and `(FCR.33)`. `\square`

## Obstruction `FCR.L` (The first bad neighboring-jet order does not automatically force Taylor-remainder blowup of `u`)

There is no general implication from `(FCR.38)`--`(FCR.39)` to

```math
\frac{
\left|
u(x_n+h_n,t_n)-\operatorname{Taylor}^{q_\ast}_{x_n\to x_n+h_n}u(x_n,t_n)
\right|
}{|h_n|^{q_\ast+1}}
\to\infty
\tag{FCR.40}
```

along the same shrinking-overlap sequence.

### Proof

This failure is already visible at the purely analytic level, before any
Navier--Stokes structure is used.

Choose any sequences `M_n\to\infty` and `r_n\downarrow 0`, and define smooth
divergence-free test fields on `\mathbf R^3` by

```math
u^{(n)}(x_1,x_2,x_3)
:=
M_n\Big(x_1x_2,\ -\tfrac12 x_2^2,\ 0\Big).
\tag{FCR.41}
```

Set

```math
x_n:=(0,0,0),
\qquad
h_n:=(r_n,0,0).
\tag{FCR.42}
```

Then

```math
u^{(n)}(x_n+h_n)-u^{(n)}(x_n)=0,
\tag{FCR.43}
```

so the order-zero compatibility quotient stays bounded:

```math
\frac{|u^{(n)}(x_n+h_n)-u^{(n)}(x_n)|}{|h_n|}=0.
\tag{FCR.44}
```

But

```math
\nabla u^{(n)}(x_1,x_2,x_3)
=
M_n
\begin{pmatrix}
x_2 & x_1 & 0\\
0   & -x_2& 0\\
0   & 0   & 0
\end{pmatrix},
\tag{FCR.45}
```

hence

```math
\nabla u^{(n)}(x_n+h_n)-\nabla u^{(n)}(x_n)
=
M_n
\begin{pmatrix}
0 & r_n & 0\\
0 & 0   & 0\\
0 & 0   & 0
\end{pmatrix},
\tag{FCR.46}
```

and therefore

```math
\frac{
\left|
\nabla u^{(n)}(x_n+h_n)-\nabla u^{(n)}(x_n)
\right|
}{|h_n|}
=
M_n\to\infty.
\tag{FCR.47}
```

So this family has first bad neighboring-jet order `q_\ast=1`.

However,

```math
u^{(n)}(x_n)=0,
\qquad
\nabla u^{(n)}(x_n)=0,
\qquad
u^{(n)}(x_n+h_n)=0,
\tag{FCR.48}
```

so the first-order Taylor remainder along the same chord vanishes identically:

```math
u^{(n)}(x_n+h_n)-\operatorname{Taylor}^{1}_{x_n\to x_n+h_n}u^{(n)}(x_n)=0.
\tag{FCR.49}
```

Hence the normalized first-order Taylor remainder is

```math
\frac{
\left|
u^{(n)}(x_n+h_n)-\operatorname{Taylor}^{1}_{x_n\to x_n+h_n}u^{(n)}(x_n)
\right|
}{|h_n|^2}
=0,
\tag{FCR.50}
```

not divergent. Therefore `(FCR.40)` is not a formal consequence of
`(FCR.38)`--`(FCR.39)`. `\square`

## Route Reading After `FCR.L`

`FCR.L` shows the exact missing ingredient: a bad neighboring-jet component can
be **transverse** to the shrinking chord and therefore invisible to the
one-chord Taylor remainder of `u`.

So the next honest split on the tower branch is:

1. **Taylor-visible branch**:
   the first bad neighboring-jet order survives after the chord contractions
   relevant to the Taylor remainder of `u`;
2. **transverse-jet branch**:
   the first bad neighboring-jet order is real but not seen by the one-chord
   Taylor remainder, so it needs a more genuinely Whitney-type or multi-point
   compatibility witness.

That is why the direct Taylor upgrade is not yet licensed.

## Definition `FCR.M0` (Taylor-visible versus transverse-jet subbranches)

Retain a shrinking-overlap sequence carrying a first bad neighboring-jet order
`q_\ast` as in `FCR.K`. Define the normalized order-`q_\ast` Taylor remainder
along the shrinking chord by

```math
\mathcal T_{q_\ast}(x_n,h_n,t_n)
:=
\frac{
\left|
u(x_n+h_n,t_n)-\operatorname{Taylor}^{q_\ast}_{x_n\to x_n+h_n}u(x_n,t_n)
\right|
}{|h_n|^{q_\ast+1}}.
\tag{FCR.51}
```

We say the sequence is on the **Taylor-visible** subbranch if

```math
\mathcal T_{q_\ast}(x_n,h_n,t_n)\to\infty.
\tag{FCR.52a}
```

We say it is on the **transverse-jet** subbranch if

```math
\sup_n \mathcal T_{q_\ast}(x_n,h_n,t_n)<\infty.
\tag{FCR.52b}
```

## Corollary `FCR.M` (After the first bad neighboring-jet order, the tower branch splits into Taylor-visible or transverse-jet)

Assume the hypotheses and notation of `FCR.K`. Then, after passing to a
subsequence, one of the two subbranches `(FCR.52a)` or `(FCR.52b)` holds.

### Proof

Apply the elementary dichotomy to the nonnegative sequence
`\mathcal T_{q_\ast}(x_n,h_n,t_n)`: either it is bounded along some tail, which
gives `(FCR.52b)`, or it is unbounded. In the unbounded case, choose a
subsequence along which it tends to `\infty`, giving `(FCR.52a)`. `\square`

## Relation To The Existing Receiver Route

This note does **not** weaken or replace the current receiver-side supplier
queue.

That queue remains:

```math
VCB.A \Longrightarrow HSP.A \Longrightarrow FEI.A
\Longrightarrow EOC.A \Longrightarrow AFD.A \Longrightarrow AFD.B
\Longrightarrow RCF.A \Longrightarrow LCI.A.
\tag{FCR.9}
```

Its role is now cleaner:

```math
\text{it is one supplier route for bounding the coherence burden isolated in }(FCR.4)\text{--}(FCR.8),
```

not the definition of `Field` itself.

## Boundary

This note does **not** yet prove any theorem that controls, prevents, or
contradicts the shrinking-scale coherence fracture `(FCR.8)`.

It proves only the exact fork point:

1. the transported-center supplier branch may continue untouched;
2. the primitive parallel one-field branch is now narrowed to the coherence
   remainder of `Field` under `Part`;
3. the first real theorem on this new branch is now the manifestation result
   `(FCR.7a)`--`(FCR.8)`;
4. the first concrete local witness has now been extracted in
   `(FCR.10)`--`(FCR.11)`;
5. that witness now splits exactly into the tower/carrier dichotomy
   `(FCR.15a)`--`(FCR.15b)`, and the carrier branch splits further into the
   pressure/viscous dichotomy `(FCR.19a)`--`(FCR.19b)`;
6. `FCR.H` now turns that split into an actual routing theorem:
   the tower branch stays on the new line, while the pressure/viscous carrier
   branches route back toward the old receiver/supplier side;
7. `FCR.I` turns the tower branch into an explicit shrinking-overlap same-rung
   compatibility failure;
8. `FCR.J`--`FCR.K` extract a first bad neighboring-jet order from that tower
   branch;
9. `FCR.L` shows that this first bad order does **not** automatically upgrade
   to one-chord Taylor-remainder blowup of `u`;
10. `FCR.M` now performs exactly that split:
    Taylor-visible versus transverse-jet;
11. the next honest debt is to decide which of those two tower-side subbranches
    is the sharper route-native jump object.
