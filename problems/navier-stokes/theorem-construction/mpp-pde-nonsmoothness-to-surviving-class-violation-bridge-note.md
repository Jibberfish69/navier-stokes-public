# MPP PDE Non-Smoothness To Open Shell-Program Bridge Note

## Status

Theorem-facing bridge note.

Role: state the exact bridge from genuine PDE non-smoothness to the strongest
open endpoint shell programs currently organized on disk.

This note does **not** widen into route menus, witness-bundle detours, or a
first-time failure wrapper. Its job is narrower:

```math
\boxed{
\text{show that genuine PDE non-smoothness must manifest open shell-violation on still-live windows.}
}
```

## Installed Inputs

Use only the following already-installed route surfaces.

1. [mpp-class-membership-endpoint-exclusion-note.md](/Users/thomasbirnie/Workspace/ToE/Research-Consolidation/problems/navier-stokes/theorem-construction/mpp-class-membership-endpoint-exclusion-note.md)
2. [mpp-exact-class-membership-witness-theorem.md](/Users/thomasbirnie/Workspace/ToE/Research-Consolidation/problems/navier-stokes/theorem-construction/mpp-exact-class-membership-witness-theorem.md)
3. [mpp-still-live-smooth-window-implies-class-membership-theorem.md](/Users/thomasbirnie/Workspace/ToE/Research-Consolidation/problems/navier-stokes/theorem-construction/mpp-still-live-smooth-window-implies-class-membership-theorem.md)
4. [mpp-shared-participation-no-drop-theorem.md](/Users/thomasbirnie/Workspace/ToE/Research-Consolidation/problems/navier-stokes/theorem-construction/mpp-shared-participation-no-drop-theorem.md)
5. [mpp-law-endpoint-proof-matrix-note.md](/Users/thomasbirnie/Workspace/ToE/Research-Consolidation/problems/navier-stokes/theorem-construction/mpp-law-endpoint-proof-matrix-note.md)
6. [mpp-law13-surviving-endpoint-exclusion-program.md](/Users/thomasbirnie/Workspace/ToE/Research-Consolidation/problems/navier-stokes/theorem-construction/mpp-law13-surviving-endpoint-exclusion-program.md)

The route consequence of those inputs is fixed:

```math
\boxed{
\text{`(Part, Dead)` is installed, while the pack-native blown branch `(Pack, packing-detached)` and `(Field, Jump)` are the strongest open shell programs on disk; `tower-blown` remains mixed open.}
}
\tag{MBR.0}
```

## Setup

Let `(u,p)` solve the classical incompressible Navier--Stokes equations on
`\Omega\times[0,T_\ast)` for some finite `T_\ast`, and suppose a purported PDE
non-smooth scenario is located at `(x_\ast,T_\ast)`.

Let `\mathcal Q_\ast` denote a family of still-live spacetime windows
approaching `(x_\ast,T_\ast)`.

The bridge is to be phrased only on such still-live windows.

For each finite depth `N`, write

```math
U_k:=\nabla^k u,
\qquad
K_k:=-\nabla^{k+1}p+\nu\Delta U_k,
\qquad 0\le k\le N.
\tag{MBR.S}
```

## Surviving Manifestation Language

On each individual still-live window `Q`, the smooth-window admission theorem
already installs

```math
\mathrm{CM}_{N,r_N(Q),Q}(u,p,\Phi)
\tag{MBR.1}
```

for every finite depth `N` and some positive scale `r_N(Q)`.

So manifestation cannot mean literal predicate failure on a single still-live
window. The right notion is degeneration of the open-shell witnesses along
the still-live approach family.

### Blown Manifestation

Write `\Gamma_{\mathrm{pack},Q}(t)` for the exact packing distortion gauge on
`Q`, and define the finite-order tower-amplitude gauge at depth `N` by

```math
\mathfrak A_{N,Q}(t)
:=
\sup_{x\in Q_t}\sum_{k=0}^{N}\big(|U_k(x,t)|+|K_k(x,t)|\big).
\tag{MBR.2}
```

Define the combined blown-side regime gauge by

```math
\mathfrak B_{N,Q}(t)
:=
\Gamma_{\mathrm{pack},Q}(t)
+
\mathfrak A_{N,Q}(t).
\tag{MBR.2a}
```

So the blown side already splits into two local faces:

```math
\text{packing-detached}
\quad\Longleftrightarrow\quad
\forall M<\infty,\ \exists Q\in\mathcal Q_\ast,\ \exists t\text{ meeting }Q
\text{ with }
\Gamma_{\mathrm{pack},Q}(t)>M,
\tag{MBR.2b}
```

and

```math
\text{tower-blown}
\quad\Longleftrightarrow\quad
\forall M<\infty,\ \exists Q\in\mathcal Q_\ast,\ \exists t\text{ meeting }Q
\text{ with }
\mathfrak A_{N,Q}(t)>M.
\tag{MBR.2c}
```

The first is the native pack-side blown face. The second is a mixed
tower-amplitude blown face.

We say that `blown` manifests on the approaching still-live family
`\mathcal Q_\ast` if at some finite depth the blown-side regime escapes every
finite bound:

```math
\exists N\ge 0\ \text{such that}\ \forall M<\infty,\
\exists Q\in\mathcal Q_\ast,\ \exists t\text{ meeting }Q
\text{ with }
\mathfrak B_{N,Q}(t)>M.
\tag{MBR.3}
```

### Lemma `MBR.A1` (Blown-shell split)

At a fixed depth `N`,

```math
\text{blown manifests}
\Longleftrightarrow
\text{packing-detached manifests or tower-blown manifests.}
\tag{MBR.3a}
```

#### Proof

If either `(MBR.2b)` or `(MBR.2c)` holds, then `(MBR.3)` holds because
`\mathfrak B_{N,Q}\ge \Gamma_{\mathrm{pack},Q}` and
`\mathfrak B_{N,Q}\ge \mathfrak A_{N,Q}`.

Conversely, assume `(MBR.3)` while neither `(MBR.2b)` nor `(MBR.2c)` holds.
Then there exist finite bounds `M_{\mathrm{pack}},M_{\mathrm{amp}}<\infty`
such that

```math
\Gamma_{\mathrm{pack},Q}(t)\le M_{\mathrm{pack}},
\qquad
\mathfrak A_{N,Q}(t)\le M_{\mathrm{amp}}
\tag{MBR.3b}
```

for every `Q\in\mathcal Q_\ast` and every time `t` meeting `Q`. Hence

```math
\mathfrak B_{N,Q}(t)\le M_{\mathrm{pack}}+M_{\mathrm{amp}},
\tag{MBR.3c}
```

contradicting `(MBR.3)`. `\square`

### Jump Manifestation

For a finite coherence bound `C<\infty`, write

```math
\mathrm{Field}^{\le C}_{N,\rho,Q}(u,p)
\tag{MBR.4a}
```

to mean that the finite-difference tower law holds on `Q` through depth `N`
and

```math
\sup_{t\text{ meeting }Q}\mathfrak C_{N,\rho,Q}(t)\le C.
\tag{MBR.4b}
```

We say that `jump` manifests on the approaching still-live family
`\mathcal Q_\ast` if, for some finite depth `N`, no single positive coherence
regime survives uniformly along the family:

```math
\exists N\ge 0\ \text{such that}\ \forall \rho>0,\ \forall C<\infty,\
\exists Q\in\mathcal Q_\ast:
\neg \mathrm{Field}^{\le C}_{N,\rho,Q}(u,p).
\tag{MBR.4}
```

This is not failure of `Field` on every fixed smooth window. It is collapse of
any single positive coherence regime as the windows shrink toward the purported
terminal point: either the scale cannot be held, or the coherence modulus
escapes every finite bound.

The route target is therefore:

```math
\boxed{
\text{genuine PDE non-smoothness}
\Longrightarrow
\text{blown manifestation or jump manifestation on }\mathcal Q_\ast.
}
\tag{MBR.5}
```

Equivalently, by `MBR.A1`,

```math
\boxed{
\text{genuine PDE non-smoothness}
\Longrightarrow
\text{packing-detached manifestation or tower-blown manifestation or jump manifestation on }\mathcal Q_\ast.
}
\tag{MBR.5a}
```

The preferred proof shell is the contrapositive:

```math
\boxed{
\text{if the blown-side regime stays finite at every finite depth and positive coherence regimes survive on }\mathcal Q_\ast,
\text{ then the purported PDE non-smooth scenario is not genuine in the one-sided local continuation sense visible from the still-live class law.}
}
\tag{MBR.6}
```

## Reconstitution Lemma

The middle statement to prove is:

### Definition `MBR.A0` (Genuine PDE non-smooth scenario)

The purported terminal scenario at `(x_\ast,T_\ast)` is called **genuine** if
there does **not** exist any spacetime neighborhood `U` of `(x_\ast,T_\ast)`
and any pair `(\widetilde u,\widetilde p)` such that:

```math
\widetilde u,\widetilde p
\text{ are classical on }U^\circ:=U\cap\{t<T_\ast\},
\tag{MBR.6a}
```

```math
\nabla^k\widetilde u
\text{ extends continuously from }U^\circ\text{ to }U
\qquad (k\ge 0),
\tag{MBR.6b}
```

and

```math
(\widetilde u,\widetilde p)=(u,p)
\quad\text{on }U^\circ.
\tag{MBR.6c}
```

So “not genuine” means: the approaching still-live field already reconstitutes
to one local classical Navier--Stokes field on the preterminal side, and all
finite spatial jets carry continuous terminal traces through `(x_\ast,T_\ast)`.
This is the strongest local continuation package visible from the still-live
class-membership side without an extra terminal pressure-trace theorem.

### Lemma `MBR.A` (Contrapositive local reconstitution)

Assume that on the approaching still-live windows `\mathcal Q_\ast` the blown
side stays in one finite regime at each finite depth:

```math
\forall N\ge 0,\ \exists M_N<\infty\ \text{such that}\ 
\sup_{t\text{ meeting }Q}\mathfrak B_{N,Q}(t)\le M_N
\quad\text{for all }Q\in\mathcal Q_\ast,
\tag{MBR.7}
```

and that positive coherence scales survive uniformly:

```math
\forall N\ge 0,\ \exists \rho_N>0,\ \exists C_N<\infty\ \text{such that}\ 
\mathrm{Field}^{\le C_N}_{N,\rho_N,Q}(u,p)
\quad\text{for all }Q\in\mathcal Q_\ast.
\tag{MBR.8}
```

Since every `Q\in\mathcal Q_\ast` is still-live, Theorem `SLC.A` already gives
full class membership on each such `Q`; the substantive extra content of
`(MBR.7)`--`(MBR.8)` is that the surviving-side witnesses do **not** degenerate
as the windows shrink.

Then the approaching local geometry remains in one common lawful regime, and
the only remaining bridge burden is:

```math
\boxed{
\text{upgrade uniform surviving-side non-degeneration on the approaching still-live windows to the statement that no genuine PDE non-smooth scenario is realized at }(x_\ast,T_\ast).
}
\tag{MBR.9}
```

In plain terms: if the approach still carries the common packing geometry, still
keeps all finite-order tower/carrier amplitudes inside finite blown-side
regimes, still avoids jump fracture at positive scales, and the windows stay
live all the way in, then there is nowhere left for genuine non-smoothness to
live.

## Formal Expansion Of The Bridge

The bridge should be proved through the following exact chain.

### Proposition `MBR.B` (Extraction of uniform non-degeneration)

Assume that blown does **not** manifest in the sense `(MBR.3)` and that jump
does **not** manifest in the sense `(MBR.4)`.

Then:

```math
\forall N\ge 0,\ \exists M_N<\infty\ \text{such that}\ 
\sup_{Q\in\mathcal Q_\ast}\sup_{t\text{ meeting }Q}\mathfrak B_{N,Q}(t)\le M_N,
\tag{MBR.10}
```

and

```math
\forall N\ge 0,\ \exists \rho_N>0,\ \exists C_N<\infty\ \text{such that}\ 
\mathrm{Field}^{\le C_N}_{N,\rho_N,Q}(u,p)
\quad\text{for all }Q\in\mathcal Q_\ast.
\tag{MBR.11}
```

#### Proof

Negating `(MBR.3)` gives

```math
\forall N\ge 0,\ \exists M_N<\infty\ \text{such that}\ 
\forall Q\in\mathcal Q_\ast,\ \forall t\text{ meeting }Q,\ 
\mathfrak B_{N,Q}(t)\le M_N,
\tag{MBR.12}
```

which is exactly `(MBR.10)`.

Negating `(MBR.4)` gives

```math
\forall N\ge 0,\ \exists \rho_N>0,\ \exists C_N<\infty\ \text{such that}\ 
\forall Q\in\mathcal Q_\ast,\ 
\mathrm{Field}^{\le C_N}_{N,\rho_N,Q}(u,p),
\tag{MBR.13}
```

which is exactly `(MBR.11)`. ∎

### Theorem `MBR.C` (Uniform non-degeneration implies local reconstitution)

Assume `(MBR.10)` and `(MBR.11)`.

Then there exists a spacetime neighborhood `U` of `(x_\ast,T_\ast)` and a pair
`(\widetilde u,\widetilde p)` satisfying `(MBR.6a)`--`(MBR.6c)`.

Equivalently,

```math
\text{uniform blown-side bounds}
\;+\;
\text{uniform coherence regimes}
\Longrightarrow
\text{one one-sided classical local NS continuation package reconstitutes up to }(x_\ast,T_\ast).
\tag{MBR.14}
```

This is the true middle theorem on the compactness / reconstitution route.

#### Proof structure for `MBR.C`

The proof runs through the following exact substeps.

##### Lemma `MBR.C1` (Nested still-live approach family)

Choose radii `r_0,\tau_0>0` such that

```math
\overline{B_{4r_0}(x_\ast)}\Subset\Omega,
\qquad
0<\tau_0<T_\ast,
\tag{MBR.14a}
```

choose times `t_j\uparrow T_\ast`, and set

```math
Q_j:=B_{4r_0}(x_\ast)\times[T_\ast-\tau_0,t_j].
\tag{MBR.14b}
```

Then each `Q_j` is still-live, the family is nested,

```math
Q_1\subset Q_2\subset\cdots,
\qquad
\bigcup_{j\ge 1}Q_j
=
B_{4r_0}(x_\ast)\times[T_\ast-\tau_0,T_\ast),
\tag{MBR.14c}
```

and every compact collar

```math
K\Subset B_{2r_0}(x_\ast)\times[T_\ast-\tfrac12\tau_0,T_\ast)
\tag{MBR.14d}
```

lies in `Q_j` for all sufficiently large `j`.

##### Lemma `MBR.C2` (Uniform finite tower bounds)

Fix `N\ge 0`. By `(MBR.10)`, for every `j` and every `0\le k\le N`,

```math
\sup_{(x,t)\in Q_j}\big(|U_k(x,t)|+|K_k(x,t)|\big)\le M_N.
\tag{MBR.15a}
```

Since `B_k` is a universal polynomial in derivatives of `u` of order at most
`k+1`, the same blown-side bounds at depth `N+1` give

```math
\sup_{(x,t)\in Q_j}|B_k(x,t)|
\le
P_{k,N}(M_{N+1})
\qquad (0\le k\le N),
\tag{MBR.15b}
```

for some polynomial `P_{k,N}` depending only on the differentiated
Navier--Stokes algebra.

##### Lemma `MBR.C3` (Uniform spatial equicontinuity)

Fix `N\ge 0` and a compact collar `K` as in `(MBR.14d)` with spatial thickness
less than `\rho_N/2`. Then `(MBR.11)` gives

```math
\sup_{t\text{ meeting }Q_j}\mathfrak C_{N,\rho_N,Q_j}(t)\le C_N
\qquad\text{for every }j.
\tag{MBR.16a}
```

Hence for every `0\le k\le N`, every `j`, every time-slice meeting `K`, and
every admissible `h` with `0<|h|\le \rho_N/2`,

```math
|\delta_hU_k(x,t)|+|\delta_hK_k(x,t)|
\le
C_N|h|.
\tag{MBR.16b}
```

So the families `\{U_k|_K\}_j` and `\{K_k|_K\}_j` are uniformly spatially
Lipschitz on `K`.

##### Lemma `MBR.C4` (Uniform time equicontinuity of the finite tower)

Fix `N\ge 0` and a compact collar `K` as above. For `0\le k\le N`, the
differentiated Navier--Stokes law gives

```math
\partial_tU_k

=
K_k+B_k-u\cdot\nabla U_k.
\tag{MBR.17a}
```

Using `(MBR.15a)` at depths `N` and `N+1` together with `(MBR.15b)`, there is
a constant `L_{N,K}<\infty` such that

```math
\sup_{(x,t)\in K}|\partial_tU_k(x,t)|\le L_{N,K}
\qquad (0\le k\le N).
\tag{MBR.17b}
```

Therefore

```math
|U_k(x,t)-U_k(x,s)|
\le
L_{N,K}|t-s|
\qquad
((x,s),(x,t)\in K).
\tag{MBR.17c}
```

So the finite tower is uniformly time-equicontinuous on every fixed compact
collar.

##### Lemma `MBR.C5` (Arzela--Ascoli and diagonal tower extraction)

Fix a compact collar

```math
K\Subset B_{2r_0}(x_\ast)\times[T_\ast-\tfrac12\tau_0,T_\ast].
\tag{MBR.18a}
```

For each `j` and each `0\le k\le N`, define the time-frozen extension

```math
\widehat U^{(j)}_k(x,t)
:=
U_k(x,\min\{t,t_j\})
\qquad\text{on }K.
\tag{MBR.18b}
```

By `(MBR.15a)` and `(MBR.16b)`, the frozen family is uniformly bounded and
uniformly spatially equicontinuous on `K`; by `(MBR.17c)`, the freezing
preserves the same time modulus up to the terminal face. Hence
`\{\widehat U^{(j)}_k|_K\}_j` is uniformly bounded and equicontinuous on `K`.
Arzela--Ascoli therefore yields, after passing to a subsequence depending on
`K` and `N`, limit functions

```math
\widetilde U^{K,N}_k\in C^0(K)
\qquad (0\le k\le N)
\tag{MBR.18c}
```

such that

```math
\widehat U^{(j)}_k|_K \to \widetilde U^{K,N}_k
\quad\text{uniformly on }K
\qquad (0\le k\le N).
\tag{MBR.18d}
```

Choosing an exhaustion `K_1\Subset K_2\Subset\cdots` of
`B_{2r_0}(x_\ast)\times[T_\ast-\tfrac12\tau_0,T_\ast]` by compact collars and
diagonalizing in both `m` and `N` yields compatible limit functions

```math
\widetilde U_k
\in
C^0_{\mathrm{loc}}\big(B_{2r_0}(x_\ast)\times[T_\ast-\tfrac12\tau_0,T_\ast]\big)
\qquad (k\ge 0).
\tag{MBR.18e}
```

##### Lemma `MBR.C6` (Compatibility and reconstruction of `(\widetilde u,\widetilde p)`)

Set

```math
\widetilde u:=\widetilde U_0.
\tag{MBR.19a}
```

Let

```math
U
:=
B_{2r_0}(x_\ast)\times[T_\ast-\tfrac12\tau_0,T_\ast].
\tag{MBR.19a'}
```

For every `k\ge 0`, every spatial index `i`, and every frozen field from
`(MBR.18b)`, one has

```math
\partial_i\widehat U_k^{(j)}=\widehat U_{k+1,i}^{(j)}
\quad\text{on every closed collar meeting }t=T_\ast,
\tag{MBR.19b}
```

because the freezing acts only in time. Passing to the limit in distributions
and using continuity of `\widetilde U_{k+1}` gives

```math
\partial_i\widetilde U_k=\widetilde U_{k+1,i}
\quad\text{pointwise on }U.
\tag{MBR.19c}
```

Inductively, the whole limit tower is compatible:

```math
\widetilde U_k=\nabla^k\widetilde u
\qquad (k\ge 0)
\quad\text{on }U.
\tag{MBR.19d}
```

By construction from the frozen family `(MBR.18b)`, the limit tower already
extends continuously to the terminal face `t=T_\ast`; thus it is defined on
all of `U`.

If `K'\Subset U^\circ:=U\cap\{t<T_\ast\}`, then for all sufficiently large `j`
one has `\widehat U_k^{(j)}=U_k` on `K'`. Therefore

```math
\widetilde U_k=U_k
\quad\text{on }U^\circ
\qquad (k\ge 0).
\tag{MBR.19f}
```

In particular,

```math
\widetilde u=u
\quad\text{on }U^\circ.
\tag{MBR.19g}
```

Set

```math
\widetilde p:=p
\quad\text{on }U^\circ.
\tag{MBR.19h}
```

Thus `(\widetilde u,\widetilde p)` is classical on `U^\circ`, agrees with the
original field there, and the finite spatial tower of `\widetilde u` extends
continuously to the terminal face.

##### Lemma `MBR.C7` (Passage of the differentiated laws to the limit)

On the preterminal region `U^\circ`, the differentiated laws

```math
D_tU_k=K_k+B_k,
\qquad
\nabla\cdot u=0,
\tag{MBR.20a}
```

hold identically. By `(MBR.19f)`, the limit tower coincides there with the
original tower, so the same differentiated laws hold identically for
`\widetilde U_k=\nabla^k\widetilde u` on `U^\circ`. Therefore

```math
\partial_t\widetilde u
+(\widetilde u\cdot\nabla)\widetilde u
+\nabla\widetilde p
=
\nu\Delta\widetilde u,
\qquad
\nabla\cdot\widetilde u=0
\quad\text{on }U^\circ.
\tag{MBR.20b}
```

By `(MBR.19d)`--`(MBR.19h)`, every finite spatial jet of `\widetilde u`
extends continuously from `U^\circ` to `U`, while `(\widetilde u,\widetilde p)`
agrees with `(u,p)` on `U^\circ`. Hence `(MBR.6a)`--`(MBR.6c)` hold.

This keeps the route on the class-membership surface: the proof uses only the
surviving-side non-degeneration data, and it avoids any uninstalled terminal
pressure-trace or terminal time-derivative theorem.

#### Proof of `MBR.C`

By `MBR.C1`, choose a nested still-live family `Q_j` exhausting a one-sided
preterminal neighborhood of `(x_\ast,T_\ast)`. By `MBR.C2`, the finite tower
and differentiated forcing remain uniformly bounded on that family at every
finite depth. By `MBR.C3` and `MBR.C4`, the same finite tower is uniformly
spatially and temporally equicontinuous on every compact collar. `MBR.C5` then
gives a diagonal local limit tower `\widetilde U_k` extending continuously to
the terminal face. `MBR.C6` reconstructs one field `\widetilde u` with
`\widetilde U_k=\nabla^k\widetilde u`, shows agreement with the original field
on the preterminal region, and produces the one-sided pair
`(\widetilde u,\widetilde p)`. Finally, `MBR.C7` passes the differentiated
Navier--Stokes laws to that reconstructed field on `U^\circ`, yielding
`(MBR.6a)`--`(MBR.6c)`. Therefore the required local reconstitution exists. ∎

### Corollary `MBR.D` (Local reconstitution contradicts genuine non-smoothness)

Under the hypotheses of Theorem `MBR.C`, the purported PDE non-smooth scenario at `(x_\ast,T_\ast)`
is not genuine in the sense of `MBR.A0`.

#### Proof

By Theorem `MBR.C`, there exists a neighborhood `U` and a one-sided classical pair
`(\widetilde u,\widetilde p)` satisfying `(MBR.6a)`--`(MBR.6c)`. But that is
exactly the negation of genuineness from `MBR.A0`. ∎

### Theorem `MBR.E` (Compactness-route bridge theorem)

Under the setup fixed above,

```math
\text{genuine PDE non-smoothness at }(x_\ast,T_\ast)
\Longrightarrow
\text{blown manifestation or jump manifestation on }\mathcal Q_\ast.
\tag{MBR.15}
```

#### Proof

Assume toward contradiction that the PDE non-smooth scenario is genuine, while
neither blown nor jump manifests.

By Proposition `MBR.B`, this implies `(MBR.10)` and `(MBR.11)`.
Applying Theorem `MBR.C` yields a one-sided classical local reconstitution up to
`(x_\ast,T_\ast)`, and Corollary `MBR.D` then says the scenario is not genuine.
Contradiction. Therefore genuine PDE non-smoothness forces blown manifestation
or jump manifestation. By `MBR.A1`, this is equivalently the split alternative:
packing-detached manifestation, tower-blown manifestation, or jump
manifestation. ∎

### Corollary `MBR.F` (Chronological first-remaining-exit shell)

Assume:

1. `T_\ast<\infty` is a first class-exit time for the installed route;
2. the separate Law 2 no-drop theorem `NDT.A` holds on still-live
   neighborhoods.

If a genuine PDE non-smooth scenario is located at `(x_\ast,T_\ast)`, then the
same bridge reads chronologically as:

```math
\text{genuine PDE non-smoothness at }(x_\ast,T_\ast)
\Longrightarrow
\text{first remaining class exit at }T_\ast
\Longrightarrow
\text{blown manifestation or jump manifestation on }\mathcal Q_\ast.
\tag{MBR.15a}
```

Moreover, this shell is existential rather than exclusive:

```math
\boxed{
\text{the route forces at least one surviving primitive failure channel at first remaining exit,}
\quad
\text{but it does not rule out simultaneous blown and jump realization there.}
}
\tag{MBR.15b}
```

#### Proof

By Theorem `MBR.E`, genuine PDE non-smoothness at `(x_\ast,T_\ast)` forces
blown manifestation or jump manifestation on the approaching still-live family
`\mathcal Q_\ast`. By `CMW.B`, first class exit is witnessed by first failure
of at least one primitive predicate family, and by `L2F.A` the dead channel is
already removed on still-live neighborhoods once `NDT.A` is granted. So the
first remaining class exit at `T_\ast` must lie on the surviving Law 1 / Law 3
side, hence on the blown/jump side. Nothing in `CMW.B`, `L2F.A`, or `MBR.E`
strengthens "at least one" to uniqueness, so simultaneous surviving primitive
failure is not excluded. ∎

## Execution Order

The execution order on the compactness route is:

1. fix the direct bridge target `(MBR.5)`;
2. fix the contrapositive bridge form `(MBR.6)`;
3. prove the extraction proposition `MBR.B`;
4. prove the local reconstitution theorem `MBR.C`;
5. apply the direct contradiction corollary `MBR.D`;
6. package the bridge as `MBR.E`;
7. read the same bridge chronologically as `MBR.F`.

## Exact Next Formal Move

On the compactness / reconstitution route, the next exact formal move is no
longer `MBR.C`.

It is now:

```math
\boxed{
\text{combine `MBR.F` with the open shell programs currently organized on disk, and do not infer from the installed `(Part, Dead)` entry that the whole frontier has collapsed to a surviving pair.}
}
\tag{MBR.21}
```

So the compactness bridge is now formal, and the remaining contradiction debt on
this branch lives in the unresolved law / endpoint matrix.

## Boundary

This note now proves the bridge theorem on the compactness / reconstitution
route.

It only fixes:

1. the exact manifestation target `(MBR.5)`;
2. the contrapositive bridge form `(MBR.6)`;
3. the extraction proposition `MBR.B`;
4. the local reconstitution theorem `MBR.C` as the true middle theorem;
5. the direct contradiction corollary `MBR.D`;
6. the compactness-route bridge theorem `MBR.E`;
7. the chronological first-remaining-exit corollary `MBR.F`.

What it does **not** yet prove is any open matrix entry:

1. `(Pack, packing-detached)`;
2. the mixed `tower-blown` branch;
3. `(Field, Jump)`;
4. any cross-entry not already installed in `PMX`;
5. the stronger forward-invariance compression `CFI.A`.
