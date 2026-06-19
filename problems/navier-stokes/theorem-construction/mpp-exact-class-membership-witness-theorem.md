# MPP Exact Class-Membership Witness Theorem

## Status

Theorem-facing constitutive theorem.

Role: turn the three primitive class laws into one exact analytic
predicate-family on still-live windows without replacing the governing object by
a generic substitute.

This note is not a branch theorem and not a downstream readout packet. Its job
is narrower: close the exact analytic witness debt that the working ontic object
package was still carrying.

## Purpose

The governing object is already fixed by
[mpp-formal-ontic-object-package.md](/Users/thomasbirnie/Workspace/ToE/Research-Consolidation/problems/navier-stokes/theorem-construction/mpp-formal-ontic-object-package.md):

```math
\mathfrak O_{\mathrm{NS}}^{\mathrm{work}}
=
(\Omega,[0,T),\nu,u_0,u,p,\Phi;\ F,h,\mathcal T;\ \mathscr L_{\mathrm{NS}}).
\tag{CMW.0}
```

The primitive local membership relation is now fixed at object level by

```math
\mathrm{Member}(Q;\mathfrak O_{\mathrm{NS}}^{\mathrm{work}})
\tag{CMW.0a}
```

and primitive class exit is

```math
\mathrm{Exit}(Q;\mathfrak O_{\mathrm{NS}}^{\mathrm{work}})
:=
\neg \mathrm{Member}(Q;\mathfrak O_{\mathrm{NS}}^{\mathrm{work}}).
\tag{CMW.0b}
```

What remained open was not primitive membership itself, but the exact analytic
witness family for the statement

```math
\boxed{
\text{what does it mean, on a still-live window, for a local configuration to remain inside that one fluid?}
}
\tag{CMW.1}
```

The answer must track three theorem-level witness components:

1. shared packing;
2. shared participation;
3. shared one-field coherence.

On the present route these stay distinct primitive witness components. No
endpoint shell is allowed to own any one of them by default.

So the analytic witness is organized as:

```math
\boxed{
\mathrm{Pack}_Q(u,\Phi)
\quad\wedge\quad
\mathrm{Part}_{N,Q}(u,p)
\quad\wedge\quad
\mathrm{Field}_{N,r,Q}(u,p).
}
\tag{CMW.1a}
```

## Setup

Fix a still-live spacetime window

```math
Q\Subset \Omega\times[0,T).
\tag{CMW.2}
```

Write

```math
Q_t:=\{x\in\Omega:(x,t)\in Q\},
\qquad
A_Q(t):=\{a\in\Omega:\Phi(a,t)\in Q_t\}.
\tag{CMW.3}
```

For each rung `k\ge 0`, write

```math
U_k:=\nabla^k u,
\qquad
K_k:=-\nabla^{k+1}p+\nu\Delta U_k,
\qquad
D_t:=\partial_t+u\cdot\nabla.
\tag{CMW.4}
```

The transported tower law is

```math
D_tU_k=K_k+B_k.
\tag{CMW.5}
```

Fix a finite depth `N` and a finite coherence scale `r>0`.

## 1. Shared Packing Predicate

Define the packing distortion gauge on `Q` by

```math
\Gamma_{\mathrm{pack},Q}(t)
:=
\sup_{a\in A_Q(t)}
\max\Big\{|F(a,t)|,\ |F(a,t)^{-1}|\Big\}.
\tag{CMW.6}
```

Write

```math
\mathrm{Pack}_Q(u,\Phi)
\tag{CMW.7}
```

to mean that for every time-slice meeting `Q`:

1. `\Phi_t` restricts to one `C^1` diffeomorphic motion on `A_Q(t)`;
2. `\det F(a,t)=1` on `A_Q(t)`;
3. `\Gamma_{\mathrm{pack},Q}(t)<\infty`.

This is the exact analytic predicate for the shared packing law on `Q`.

## 2. Shared Participation Predicate

Define the rung-carried participation envelope on `Q` by

```math
\mathfrak P_{N,Q}(t)
:=
\sup_{x\in Q_t}\sum_{k=0}^{N}|K_k(x,t)|.
\tag{CMW.8}
```

Write

```math
\mathrm{Part}_{N,Q}(u,p)
\tag{CMW.9}
```

to mean that on `Q`:

1. the shared participation law `(CMW.5)` holds for each `0\le k\le N`;
2. `\mathfrak P_{N,Q}(t)<\infty` on every time-slice meeting `Q`.

This is the exact analytic predicate for the shared participation law through
depth `N`.

## 3. Exact One-Field Predicate

For `0<|h|\le r`, define

```math
\delta_h f(x,t):=f(x+h,t)-f(x,t).
\tag{CMW.10}
```

Define the one-field coherence modulus on `Q` by

```math
\mathfrak C_{N,r,Q}(t)
:=
\sup_{\substack{x,x+h\in Q_t\\0<|h|\le r}}
\sum_{k=0}^{N}
\frac{
|\delta_hU_k(x,t)|+|\delta_hK_k(x,t)|
}{|h|}.
\tag{CMW.11}
```

Write

```math
\mathrm{Field}_{N,r,Q}(u,p)
\tag{CMW.12}
```

to mean that:

1. the finite-difference tower law holds on `Q` for each `0\le k\le N`;
2. `\mathfrak C_{N,r,Q}(t)<\infty` on every time-slice meeting `Q`.

This is the exact analytic predicate for one shared field coherence through
depth `N` at scale `r`.

## 4. Combined Class-Membership Witness

Define the exact class-membership witness at depth `N` and scale `r` on `Q` by

```math
\mathrm{CM}_{N,r,Q}(u,p,\Phi)
:=
\mathrm{Pack}_Q(u,\Phi)
\wedge
\mathrm{Part}_{N,Q}(u,p)
\wedge
\mathrm{Field}_{N,r,Q}(u,p).
\tag{CMW.13}
```

This is not primitive local membership itself. It is the exact analytic witness
family currently used on the route to certify
`\mathrm{Member}(Q;\mathfrak O_{\mathrm{NS}}^{\mathrm{work}})`.

## Theorem `CMW.A` (Exact class-membership witness)

Assume that for every finite depth `N` there exists some finite scale `r_N>0`
such that

```math
\mathrm{CM}_{N,r_N,Q}(u,p,\Phi)
\tag{CMW.14}
```

holds on the still-live window `Q`.

Then:

1. `\mathrm{Member}(Q;\mathfrak O_{\mathrm{NS}}^{\mathrm{work}})` holds;
2. every local tower, collar, transported segment, and material packet built on
   `Q` is induced from the same restricted fluid object
   `\mathfrak O_{\mathrm{NS}}^{\mathrm{work}}|_Q`;
3. if dead manifests on `Q`, then at least one of
   `\mathrm{Pack}_Q`, `\mathrm{Part}_{N,Q}`, `\mathrm{Field}_{N,r_N,Q}` fails on `Q`;
4. if blown manifests on `Q`, then at least one of
   `\mathrm{Pack}_Q`, `\mathrm{Part}_{N,Q}`, `\mathrm{Field}_{N,r_N,Q}` fails on `Q`;
5. if jump manifests on `Q`, then at least one of
   `\mathrm{Pack}_Q`, `\mathrm{Part}_{N,Q}`, `\mathrm{Field}_{N,r_N,Q}` fails on `Q`.

Equivalently,

```math
\boxed{
\forall N\ \exists r_N>0:\ \mathrm{CM}_{N,r_N,Q}(u,p,\Phi)
\Longrightarrow
\mathrm{Member}(Q;\mathfrak O_{\mathrm{NS}}^{\mathrm{work}}).
}
\tag{CMW.15}
```

### Proof

Fix a finite depth `N` and take `r_N>0` so that `(CMW.14)` holds. By
definition `(CMW.13)`, the three constituent predicates are simultaneously
true on `Q`.

`Pack_Q(u,\Phi)` installs the exact shared packing predicate on `Q`: the flow
map `\Phi` is defined there, its deformation `F=\nabla_a\Phi` remains finite
there, and the transported separation geometry comes from that same carrier.

`Part_{N,Q}(u,p)` installs the exact shared participation predicate through
depth `N`: for each `0\le k\le N`, the rung `U_k=\nabla^k u` obeys the same
differentiated Navier--Stokes law and the same rung-energy law on `Q`.

`Field_{N,r_N,Q}(u,p)` supplies the finite-difference coherence law through
depth `N` at scale `r_N`: the neighboring finite-difference tower is finite and
obeys the same induced transport law on `Q`. So neighboring collars and segment
comparisons remain induced from the same one field on `Q`.

Because this holds for every finite depth `N`, the local restriction to `Q`
still carries the same inherited data and the same law bundle from
`\mathfrak O_{\mathrm{NS}}^{\mathrm{work}}`. By definition, this is exactly
`\mathrm{Member}(Q;\mathfrak O_{\mathrm{NS}}^{\mathrm{work}})`. The statement
about induced towers, collars, segment families, and material packets is just
the inherited-data clause unpacked. Statements `3` through `5` then follow
because `\mathrm{Exit}(Q;\mathfrak O_{\mathrm{NS}}^{\mathrm{work}})` is the
negation of `\mathrm{Member}(Q;\mathfrak O_{\mathrm{NS}}^{\mathrm{work}})`: if
full membership is still witnessed on `Q`, then no endpoint shell can already
be realized there. This theorem does not identify which primitive witness an
endpoint shell would have had to break.

## Corollary `CMW.B` (First-exit decomposition)

Let `T_\ast<\infty` be a first class-exit time. Then for every still-live window
`Q` approaching `T_\ast`, at least one of the following fails first:

```math
\mathrm{Pack}_Q,
\qquad
\mathrm{Part}_{N,Q},
\qquad
\mathrm{Field}_{N,r,Q}.
\tag{CMW.16}
```

So first exit is not a single opaque event. On the installed route it is
detected by first failure of at least one of the three witness predicates.

### Proof

Assume instead that a first class-exit time `T_\ast` exists while none of the
three predicate families in `(CMW.16)` fails first on still-live windows
approaching `T_\ast`. Then on each such window `Q` and for every finite depth
`N` there is some scale `r_N>0` for which `(CMW.14)` still holds. By
Theorem `CMW.A`, the witness family therefore installs
`\mathrm{Member}(Q;\mathfrak O_{\mathrm{NS}}^{\mathrm{work}})` all the way up
to `T_\ast`, contradicting the definition of `T_\ast` as a first class-exit
time. Hence first exit must be witnessed by first failure of at least one
primitive predicate family.

## What This Closes

This note closes the exact analytic witness debt carried by
[mpp-formal-ontic-object-package.md](/Users/thomasbirnie/Workspace/ToE/Research-Consolidation/problems/navier-stokes/theorem-construction/mpp-formal-ontic-object-package.md).

The installed witness is not a generic amplitude bundle. It is the direct
predicate-family

```math
\mathrm{Pack}_Q
\;+\;
\mathrm{Part}_{N,Q}
\;+\;
\mathrm{Field}_{N,r,Q}
\tag{CMW.17}
```

attached to the three primitive laws themselves.

## Boundary

This note does **not** prove that the predicates stay true for all finite
times. That is the continuation burden.

What it does settle is narrower and exact:

```math
\boxed{
\text{class membership on a still-live window now has a fixed exact analytic witness family.}
}
\tag{CMW.18}
```
