# Clay Discharge Ladder From Current Reductions

## Purpose

This note records the exact implication ladders from the current local
reductions to a full Clay discharge.

It does **not** claim any ladder is complete.
It records what still has to be proved, and what would formally follow if that
remaining theorem step were discharged.

## Clay target

The target is:

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

The current route stack would discharge the MPP after one ladder below closes
without changing the theorem target.

## I. Classical weighted mixed-jet ladder

The current classical reductions already give:

1. the full tower is measured by the weighted mixed-jet norm
   ```math
   \mathfrak A_s(\tau,r,t);
   ```
2. transport and pressure satisfy the same quadratic convolution bound
   ```math
   \mathfrak T_s+\mathfrak P_s\le C_s\mathfrak A_s^2;
   ```
3. after squaring the factorial weights, the tower satisfies the radius-loss
   energy inequality
   ```math
   \frac12\frac{d}{dt}\mathfrak E_s(\tau_0,r_0)
   +
   \frac{3\nu}{4}\mathfrak D_s(\tau_0,r_0)
   \le
   C\big(1+\mathfrak E_s(\tau_1,r_1)\big)\mathfrak E_s(\tau_0,r_0)
   ```
   whenever `0\le\tau_0<\tau_1` and `0\le r_0<r_1`;
4. if `\mathfrak A_s` stays bounded, then the base classical `H^s` norm stays
   bounded;
5. if the base classical `H^s` norm stays bounded by `M` for `s>\frac52`, the
   local wellposedness restart time is bounded below by
   `\tau_{\mathrm{lwp}}(M,\nu)>0`; choosing
   `t_0>T-\tau_{\mathrm{lwp}}(M,\nu)/2` continues the same classical solution
   past `T`.

So the exact remaining theorem on this branch is:

```math
\boxed{
\text{prove uniform propagation / closure of one weighted mixed-jet norm }
\mathfrak A_s(\tau_0,r_0,t)
}
\tag{C1}
```

for some fixed `s>\frac52` and one nontrivial weighted slice
`(\tau_0,r_0)`.

If `(C1)` is proved, then the ladder is:

```math
\sup_{t<T}\mathfrak A_s(\tau_0,r_0,t)<\infty
```

```math
\Longrightarrow
\sup_{t<T}\|u(t)\|_{H^s}<\infty
```

```math
\Longrightarrow
u\text{ extends past }T
```

```math
\Longrightarrow
\text{no finite-time blowup}
```

```math
\Longrightarrow
\text{the Clay whole-space statement.}
```

So the exact unresolved burden on the classical tower route is **not** the
binomial combinatorics anymore.
It is the no-loss / globally propagated weighted-scale theorem `(C1)`.

## II. Classical generating-field ladder

The current notes also give:

1. if the mixed-jet generating field
   ```math
   \mathcal J(\tau,\zeta)
   ```
   exists on an `H^s` slice, then it satisfies the ordinary `H^s`
   Navier--Stokes energy inequality;
2. the weighted mixed-jet norm controls the size of that generating field.

So the exact remaining theorem on this branch is:

```math
\boxed{
\text{prove existence and propagation of one genuine }H^s\text{ generating-field slice.}
}
\tag{C2}
```

If `(C2)` is proved, then:

```math
\mathcal J(\tau_0,\zeta_0)\in H^s
\text{ exists and stays bounded}
```

```math
\Longrightarrow
\mathfrak A_s(|\tau_0|,|\zeta_0|,t)<\infty
```

```math
\Longrightarrow
\sup_{t<T}\|u(t)\|_{H^s}<\infty
```

```math
\Longrightarrow
\text{the Clay whole-space statement.}
```

This is a variant of the classical ladder, but phrased through the generating
field rather than directly through the weighted sequence norm.

## III. NC exact strict-shadow ladder

The current `NC` reductions already give:

1. exact projection/intertwining identities;
2. exact nonlinear shadow identity
   ```math
   \mathcal C(\mathbb P_DN_D(X))
   =
   \mathbb P_{\mathrm{Leray}}(u\cdot\nabla u);
   ```
3. strict-shadow no-remainder corollary
   ```math
   \mathrm{ShadowDef}(X)=0,\quad E_{\mathrm{sh}}(X)=0
   ```
   once the strict-shadow hypotheses hold;
4. norm comparison
   ```math
   \|u\|_{H^s}\le C\|X\|_{H_D^s}.
   ```

So the exact remaining theorem on this branch is more precisely:

```math
\boxed{
\text{prove full-data Euclidean lift coverage, exact strict shadow, and global ontic }H_D^s\text{ control}
}
\tag{A1}
```

The datum-side component `(A1a)` is now isolated formally in
[a1a-full-data-euclidean-lift-coverage.md](/Users/thomasbirnie/Workspace/ToE/Research-Consolidation/problems/navier-stokes/theorem-construction/a1a-full-data-euclidean-lift-coverage.md).

on the actual whole-space / Euclidean readout surface needed for the Clay
statement.

Equivalently, `(A1)` splits into the three exact burdens:

```math
\text{(A1a) lift/readout coverage of the full Clay datum class,}
```

```math
\text{(A1b) exact strict-shadow descent on the Euclidean window,}
```

```math
\text{(A1c) global carrier }H_D^s\text{ control on that Euclidean surface.}
```

If `(A1)` is proved, then the ladder is:

```math
\text{full-data lift coverage}
\Longrightarrow
\text{strict-shadow package on the Euclidean window}
\Longrightarrow
\mathrm{ShadowDef}=0
```

```math
\Longrightarrow
u=\mathcal C(X)\text{ solves exact classical NS}
```

```math
\Longrightarrow
\|u\|_{H^s}\le C\|X\|_{H_D^s}
```

```math
\Longrightarrow
\sup_{t<T}\|u(t)\|_{H^s}<\infty
```

```math
\Longrightarrow
\text{the Clay whole-space statement.}
```

So the exact unresolved burden on Route A is the theorem `(A1)`, not an
additional classical remainder analysis.

On the already realized classical carrier, Theorem `R4` makes the readout the
identity, so `(A1a)` full-data lift coverage and `(A1b)` exact strict shadow
collapse automatically. On that realized subbranch, Route `A` reduces to the
single burden `(A1c)` global carrier control.

## IV. NC weaker shadow ladder

The weaker `NC` branch now has a clean classical forcing interface:

1. the projected equation is classical NS with forcing
   ```math
   F=E_{\mathrm{sh}}(X);
   ```
2. the exact Gronwall continuation bridge says
   ```math
   \int_0^T \|\nabla u\|_{L^\infty}\,dt < \infty
   \quad\text{and}\quad
   \int_0^T \|E_{\mathrm{sh}}(X)\|_{H^{s-1}}\,dt < \infty
   ```
   imply no `H^{s-1}` blowup on `[0,T)`.

So the exact remaining theorem on this branch is:

```math
\boxed{
\text{prove time-integrability of the shadow error and couple it to a classical strain criterion.}
}
\tag{B1}
```

This weaker-route burden is now isolated formally in
[route-b-b1-integrable-shadow-error-continuation-coupling.md](/Users/thomasbirnie/Workspace/ToE/Research-Consolidation/problems/navier-stokes/theorem-construction/route-b-b1-integrable-shadow-error-continuation-coupling.md).

If `(B1)` is proved, then:

```math
\int_0^T \|E_{\mathrm{sh}}(X)\|_{H^{s-1}}\,dt < \infty
```

together with a classical continuation package yielding

```math
\int_0^T \|\nabla u\|_{L^\infty}\,dt < \infty
```

implies

```math
\sup_{t<T}\|u(t)\|_{H^{s-1}}<\infty
```

and therefore continuation past `T`.

So Route B does **not** need a new projected PDE.
It needs the theorem `(B1)`.

## V. Minimal exact theorem list from here

From the current reductions, the MPP will be discharged if **any one** of the
following is proved on the correct whole-space theorem surface:

1. `(C1)` weighted mixed-jet propagation;
2. `(C2)` generating-field slice existence and propagation;
3. `(A1)` full-data Euclidean lift coverage plus exact strict-shadow plus global ontic control;
4. `(B1)` integrable shadow error plus classical continuation coupling.

Everything else now feeds one of these four exact theorems.

## VI. Exact route status

At the end of the current pass, the route stack is reduced to:

```math
\boxed{
\text{Classical route} = \text{prove one weighted tower propagation theorem.}
}
```

```math
\boxed{
\text{NC Route A} = \text{prove full-data Euclidean lift coverage, exact strict shadow, and global carrier control.}
}
```

```math
\boxed{
\text{NC Route B} = \text{prove integrable shadow error and couple it to continuation.}
}
```

That is the exact closure map from the current local math reductions to a full
Clay discharge.
