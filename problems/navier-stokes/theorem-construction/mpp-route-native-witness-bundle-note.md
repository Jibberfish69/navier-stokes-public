# MPP Route-Native Witness Bundle Note

## Status

Exploratory over-formalization note.

This note is **not** the route-faithful leading edge of the current
class-membership program. It records one attempted witness bundle that
over-composes the route into a generic analytic package. It should therefore be
treated as a bounded detour, not as the primary expression of the present
approach.

## Purpose

The present route is:

```math
\text{classical NS equations}
\quad+\quad
\text{a new class-membership contradiction program.}
\tag{RW.0}
```

So the missing object is not a new PDE. The missing object is a new witness:

```math
\boxed{
\text{a quantitative witness that the solution still belongs to one shared incompressible-pressure-viscosity field.}
}
\tag{RW.1}
```

This note proposes one concrete witness bundle and records exactly what it does
and does not yet achieve. It also records the risk that this bundle is already
too far from the source idea because it imports a generic amplitude/coherence
package before the route-native primitive class laws have been isolated sharply
enough.

## Route-Faithfulness Warning

The governing risk of this note is:

```math
\boxed{
\text{the witness bundle below may be mathematically serviceable while still failing to match the source class-membership idea closely enough.}
}
\tag{RW.1a}
```

More bluntly: this note may have moved too quickly from the user's primitive
class-language

```math
\text{one shared incompressible-pressure-viscosity field}
\Longrightarrow
\text{dead / blown / jump are class-exit events}
```

into a generic bundle of amplitudes, coherence moduli, and carrier
quantities. If so, the note should be read as an exploratory detour rather than
as the route itself.

## The Triple Doctrine

The route-native witness is meant to encode the triple doctrine:

```math
\boxed{
\text{incompressibility gives the common packing law,}
}
```

```math
\boxed{
\text{pressure enforces that law across the field,}
}
```

```math
\boxed{
\text{and viscosity carries the local force-coupling that keeps points dynamically participating.}
}
\tag{RW.2}
```

So the witness must see three possible class-exit modes:

1. `dead endpoint`, in its local participation-side faces
   `tower-dead / transport-dead`:
   failure of dynamic participation in a still-live neighborhood;
2. `blown endpoint`, in its local faces
   `packing-detached` and `tower-blown`:
   native pack-side geometric failure in the first case, mixed tower-amplitude
   escape in the second;
3. `jump endpoint`, in its local coherence-side face `tower-jump`:
   failure of one common smooth field.

## Candidate Witness Bundle

Let `(u,p)` solve

```math
\partial_t u+(u\cdot\nabla)u+\nabla p=\nu\Delta u,
\qquad
\nabla\cdot u=0
\tag{RW.3}
```

smoothly on `\Omega\times[0,T)`, with `\Omega=\mathbf R^3` or `\mathbf T^3`.

Let `\Phi(a,t)` be the Lagrangian flow map:

```math
\partial_t\Phi(a,t)=u(\Phi(a,t),t),
\qquad
\Phi(a,0)=a.
\tag{RW.4}
```

Fix an order `N\ge 0` and a spatial scale `r>0`.

### 1. Packing Witness

Define

```math
\Gamma(t):=
\max\Big\{
\|D_a\Phi(t)\|_{L^\infty_a},
\|D_a\Phi(t)^{-1}\|_{L^\infty_a}
\Big\}.
\tag{RW.5}
```

This is the deformation-side class witness. If `\Gamma(t)<\infty`, then the
flow map remains bi-Lipschitz. Together with incompressibility,

```math
\det D_a\Phi(a,t)=1,
\tag{RW.6}
```

this is the route-native witness of common packing membership.

### 2. Tower Amplitude Witness

For each point-time `(x,t)`, define the truncated tower

```math
\mathcal J^N_{x,t}(u,p)
:=
\left\{
\partial_t^m\partial_x^\alpha u(x,t),
\partial_t^m\partial_x^\alpha p(x,t)
:\ 2m+|\alpha|\le N
\right\}.
\tag{RW.7}
```

Define the tower-amplitude envelope

```math
\mathfrak T_N(t)
:=
\sup_{x\in\Omega}
\sum_{2m+|\alpha|\le N}
\Big(
|\partial_t^m\partial_x^\alpha u(x,t)|
+
|\partial_t^m\partial_x^\alpha p(x,t)|
\Big).
\tag{RW.8}
```

This is the local finite-tower witness.

### 3. Tower Coherence Witness

Define the local tower-coherence modulus at scale `r` by

```math
\mathfrak C_N(r,t)
:=
\sup_{0<|x-y|\le r}
\frac{
\sum_{2m+|\alpha|\le N}
\Big(
|\partial_t^m\partial_x^\alpha u(x,t)-\partial_t^m\partial_x^\alpha u(y,t)|
+
|\partial_t^m\partial_x^\alpha p(x,t)-\partial_t^m\partial_x^\alpha p(y,t)|
\Big)
}{
|x-y|
}.
\tag{RW.9}
```

This is the one-field coherence witness. It is designed to detect jump-endpoint
behavior in its local tower form and loss of local tower compatibility across
neighboring points.

### 4. Participation-Carrier Witness

Define the participation carrier

```math
K:=-\nabla p+\nu\Delta u.
\tag{RW.10}
```

Since the equation gives

```math
D_tu:=\partial_t u+(u\cdot\nabla)u=K,
\tag{RW.11}
```

the field `K` is the class-internal pressure-viscosity carrier of dynamic
participation.

Define its local jet envelope

```math
\mathfrak P_N(t)
:=
\sup_{x\in\Omega}
\sum_{2m+|\alpha|\le N}
|\partial_t^m\partial_x^\alpha K(x,t)|
\tag{RW.12}
```

and its local coherence modulus

```math
\mathfrak Q_N(r,t)
:=
\sup_{0<|x-y|\le r}
\frac{
\sum_{2m+|\alpha|\le N}
|\partial_t^m\partial_x^\alpha K(x,t)-\partial_t^m\partial_x^\alpha K(y,t)|
}{
|x-y|
}.
\tag{RW.13}
```

This is the route-native participation witness: it does not ask whether
velocity is positive, but whether the same pressure-viscosity carrier still acts
coherently across a live neighborhood.

### 5. Combined Bundle

The candidate witness bundle is

```math
\mathfrak W_{N,r}(t)
:=
\Gamma(t)+\mathfrak T_N(t)+\mathfrak C_N(r,t)+\mathfrak P_N(t)+\mathfrak Q_N(r,t).
\tag{RW.14}
```

This is not yet claimed to be the final best witness. It is the first concrete
bundle that matches the route's own language.

## Formal Consequences

The next logical consequences are:

### Packing Consequence

If `\Gamma(t)<\infty`, then the solution still belongs to one common
volume-preserving deformation class. So:

```math
\Gamma(t)<\infty
\Longrightarrow
\text{no blown endpoint at time }t.
\tag{RW.15}
```

### One-Field Consequence

If `\mathfrak C_N(r,t)<\infty` for every finite `N` and some fixed `r>0`, then
the finite local tower remains coherent across neighboring points. So:

```math
\forall N,\ \mathfrak C_N(r,t)<\infty
\Longrightarrow
\text{no jump endpoint at time }t.
\tag{RW.16}
```

### Participation Consequence

If `\mathfrak P_N(t)+\mathfrak Q_N(r,t)<\infty` for every finite `N`, then the
pressure-viscosity participation carrier remains a single coherent local field.
In the present route, this is the formal witness that a point has not dropped
out of the common pressure-viscosity participation law. So:

```math
\forall N,\ \mathfrak P_N(t)+\mathfrak Q_N(r,t)<\infty
\Longrightarrow
\text{no dead endpoint at time }t
\text{ in the strong class-membership sense.}
\tag{RW.17}
```

Hence the bundle implication is:

```math
\boxed{
\forall N,\ \mathfrak W_{N,r}(t)<\infty
\Longrightarrow
\text{the solution still belongs to the MPP class at time }t.
}
\tag{RW.18}
```

## Comparison With The PDE

The bundle is route-native, but it still sits inside the classical NS system.

First, the packing piece is controlled by

```math
\partial_t D_a\Phi=(\nabla u)(\Phi,t)\,D_a\Phi.
\tag{RW.19}
```

So the classical continuation criterion gives

```math
\Gamma(t)\le C_{\Gamma,0}
\exp\!\Big(\int_0^t \|\nabla u(\tau)\|_{L^\infty}\,d\tau\Big).
\tag{RW.20}
```

Second, the participation carrier is not a new external field. It is exactly

```math
K=D_tu=-\nabla p+\nu\Delta u.
\tag{RW.21}
```

Pressure is recovered by the elliptic law

```math
-\Delta p=\partial_i\partial_j(u_i u_j),
\tag{RW.22}
```

so the carrier is globally tied to `u`.

Third, the carrier witness requires the following higher-tower control estimate:

```math
\mathfrak P_N(t)+\mathfrak Q_N(r,t)
\le C_{N,r}
\mathfrak T_{N+2}(t)+\mathfrak C_{N+2}(r,t)
+
\text{nonlinear lower-order tower products.}
\tag{RW.23}
```

So the participation witness is not independent of the tower witness. It is a
distinguished re-reading of part of the same classical field.

This is both a strength and a weakness:

1. strength:
   the witness really is internal to the classical NS equations;
2. weakness:
   at the moment it still leans on high-order regularity data rather than
   producing a genuinely new coercive estimate.

## Route-Native Wall

The witness bundle clarifies the wall.

The wall is **not merely**:

```math
\int_0^T \|\nabla u(\tau)\|_{L^\infty}\,d\tau<\infty.
\tag{RW.24}
```

That is one classical sufficient closure route, but the witness bundle exposes
the broader route-native wall:

```math
\boxed{
\text{find a coercive estimate that keeps }\mathfrak W_{N,r}(t)\text{ finite directly from the triple doctrine.}
}
\tag{RW.25}
```

Concretely, the unsolved burdens are:

1. prove a genuine no-drop theorem for the participation carrier:
   ```math
   \text{still-live neighborhood}
   \Longrightarrow
   \text{no class-exit drop of }\mathfrak P_N+\mathfrak Q_N;
   \tag{RW.26}
   ```
2. prove a packing theorem that upgrades `\det D\Phi=1` plus carrier coherence
   into a true obstruction to the blown endpoint in its packing-side form:
   ```math
   \text{shared packing + coherent participation}
   \Longrightarrow
   \text{no blown endpoint;}
   \tag{RW.27}
   ```
3. prove a one-field theorem turning tower/carrier coherence into a true
   exclusion of jump-endpoint and dead-endpoint local forms:
   ```math
   \mathfrak C_N+\mathfrak Q_N<\infty
   \Longrightarrow
   \text{no class exit through local field-splitting.}
   \tag{RW.28}
   ```

These are the actual burdens of the new approach.

## Honest Verdict

This note pushes the route farther than a slogan:

1. it defines a concrete witness bundle `\mathfrak W_{N,r}`;
2. it shows what each bundle component is supposed to witness;
3. it shows that the bundle is genuinely internal to classical NS;
4. it also shows that the bundle is not yet coercive enough to close the
   problem.

So the current honest status is:

```math
\boxed{
\text{the class-membership contradiction program now has a concrete witness candidate,}
}
```

```math
\boxed{
\text{but the new route still needs the first genuinely new a priori estimate that controls that witness directly.}
}
\tag{RW.29}
```
