# MPP Working Ontic Object Package

## Status

Foundational theorem-facing note.

Role: define the full working ontic package that can actually be carried
forward when restarting the Navier--Stokes logic from one single fluid object.

This note is not a branch theorem and not a consumer packet. Its job is to fix
the object together with the live laws and induced structures that later
arguments are allowed to use.

## Working Package

Fix one theorem surface `\Omega\in\{\mathbf T^3,\mathbf R^3\}`, one lifetime
`[0,T)`, one viscosity `\nu>0`, and one divergence-free initial datum `u_0`.

The full working ontic package is

```math
\boxed{
\mathfrak O_{\mathrm{NS}}^{\mathrm{work}}
:=
(\Omega,[0,T),\nu,u_0,u,p,\Phi;\ F,h,\mathcal T;\ \mathscr L_{\mathrm{NS}}).
}
\tag{OP.0}
```

Here:

```math
u:\Omega\times[0,T)\to\mathbf R^3,
\qquad
p:\Omega\times[0,T)\to\mathbf R,
\tag{OP.1}
```

```math
\Phi:\Omega\times[0,T)\to\Omega,
\qquad
F:=\nabla_a\Phi,
\tag{OP.2}
```

```math
h(a,r,t):=\Phi(a+r,t)-\Phi(a,t),
\tag{OP.3}
```

and

```math
\mathcal T
:=
\{J_{m,\alpha},\Pi_{m,\alpha}\}_{m,\alpha},
\qquad
J_{m,\alpha}:=\partial_t^m\partial_x^\alpha u,
\qquad
\Pi_{m,\alpha}:=\partial_t^m\partial_x^\alpha p.
\tag{OP.4}
```

The first block is the realized fluid state. The second block is the canonical
induced structure carried explicitly because later proofs actually use it. The
third block is the live law-bundle that makes this a genuine one-fluid object
rather than a flat tuple of symbols.

## Law Bundle

### 1. Base Navier--Stokes law

```math
\partial_t u+(u\cdot\nabla)u+\nabla p=\nu\Delta u,
\qquad
\nabla\cdot u=0,
\qquad
u(\cdot,0)=u_0.
\tag{OP.5}
```

### 2. Pressure closure and normalization law

Pressure is not carried as a free symbol. It is tied to incompressibility by

```math
-\Delta p=\partial_i\partial_j(u_i u_j)=\partial_i u_j\,\partial_j u_i,
\tag{OP.6}
```

together with the theorem-surface-compatible normalization on `\Omega`
fixing the pressure gauge: on `\mathbf T^3` use mean-zero pressure, and on
`\mathbf R^3` use the canonical surface-compatible decay / tempered
normalization.

### 3. Flow-map law

```math
\partial_t\Phi(a,t)=u(\Phi(a,t),t),
\qquad
\Phi(a,0)=a.
\tag{OP.7}
```

### 4. Infinitesimal deformation law

```math
F(a,t)=\nabla_a\Phi(a,t),
\qquad
\partial_t F(a,t)=(\nabla u)(\Phi(a,t),t)\,F(a,t),
\qquad
F(a,0)=I.
\tag{OP.8}
```

### 5. Volume-preservation law

```math
\det F(a,t)=1.
\tag{OP.9}
```

This is the first-order material deformation law. It governs how infinitesimal
label displacements are transported by the same fluid.

### 6. Finite separation law

```math
h(a,r,t):=\Phi(a+r,t)-\Phi(a,t),
\qquad
h(a,r,0)=r,
\tag{OP.10}
```

and

```math
\partial_t h(a,r,t)
=
u(\Phi(a+r,t),t)-u(\Phi(a,t),t).
\tag{OP.11}
```

This is the exact law for the separation of two material particles. It is not a
second deformation object; it is the finite-separation form of the same
material geometry.

The infinitesimal and finite laws are related by

```math
h(a,r,t)=\int_0^1 F(a+s r,t)\,r\,ds,
\tag{OP.11a}
```

so

```math
h(a,r,t)=F(a,t)\,r+R_h(a,r,t),
\qquad
R_h(a,r,t):=\int_0^1\bigl(F(a+s r,t)-F(a,t)\bigr)\,r\,ds.
\tag{OP.11b}
```

So neighboring geometry is carried as true finite separation evolution inside
the same fluid, while `F` is its infinitesimal first-order form.

### 7. Differentiated tower law

For every mixed rung `(m,\alpha)`,

```math
\partial_t J_{m,\alpha}
+
\sum_{a\le m,\ \beta\le\alpha}
\binom{m}{a}\binom{\alpha}{\beta}
\big(J_{a,\beta}\cdot\nabla\big)J_{m-a,\alpha-\beta}
+
\nabla \Pi_{m,\alpha}
=
\nu\Delta J_{m,\alpha}.
\tag{OP.12}
```

and

```math
\nabla\cdot J_{m,\alpha}=0.
\tag{OP.13}
```

So the full derivative tower is carried inside the object as one coupled
differential hierarchy of the same field.

### 8. Finite-difference tower coherence law

For `U_k:=\nabla^k u` and `\delta_h f(x):=f(x+h)-f(x)`,

```math
\big(\partial_t+u(x+h,t)\cdot\nabla\big)\delta_h U_k
+(\delta_h u)\cdot\nabla U_k(x,t)
+\delta_h\nabla^{k+1}p
-\nu\Delta\delta_h U_k
=
\delta_h B_k.
\tag{OP.14}
```

This is the canonical neighboring-response law already carried by the same
object. It makes cross-rung and cross-neighbor coupling an explicit law-level
constraint rather than a semantic analogy.

### 9. Rung-energy law

For every mixed rung `(m,\alpha)`,

```math
\frac12\frac{d}{dt}\|J_{m,\alpha}\|_{L^2}^2
+\nu\|\nabla J_{m,\alpha}\|_{L^2}^2
=
-\!\!\!\sum_{\substack{0\le a\le m,\ \beta\le\alpha\\(a,\beta)\neq(0,0)}}
\binom ma\binom{\alpha}{\beta}\,
I_{a,\beta}^{m,\alpha}.
\tag{OP.15}
```

This identity is part of the carried object because it is the exact rung-level
place where viscosity acts as dissipative conduction through the tower, with
pressure already absorbed by the incompressible structure.

### 10. Admissibility target

A local tower, transported region, collar, segment, or packet is admissible on
the current route only if it is induced from
`\mathfrak O_{\mathrm{NS}}^{\mathrm{work}}` and obeys the same law-bundle on
its window.

Exact admissibility target:

```math
\boxed{
\text{every later local object must embed back into one } \mathfrak O_{\mathrm{NS}}^{\mathrm{work}}
\text{ on the same theorem surface.}
}
\tag{OP.16}
```

This is the carry-forward admissibility target. It is not yet the final closed
analytic witness for class membership.

## Local Working Restriction

The present route does not use the whole object only globally. It also uses
still-live localized windows.

So for any still-live spacetime window

```math
Q\Subset \Omega\times[0,T),
\tag{OP.16a}
```

the actual working restriction is

```math
\mathfrak O_{\mathrm{NS}}^{\mathrm{work}}|_Q,
\tag{OP.16b}
```

together with the same laws `(OP.5)`--`(OP.15)` holding on `Q` as inherited
from the same global object.

This does **not** mean that `Q` is treated as an autonomous local fluid. The
restriction `\mathfrak O_{\mathrm{NS}}^{\mathrm{work}}|_Q` is a local view of
the same global fluid, with `p|_Q`, `\Phi|_Q`, `F|_Q`, `h|_Q`, and
`\mathcal T|_Q` inherited from the full object on `\Omega\times[0,T)`.

So the outside fluid is not forgotten. The point of `Q` is only to say where
the argument is being evaluated. The object still carries the global
incompressible-pressure-viscosity coupling, and the local window remains
answerable to that whole-fluid structure.

This local restriction is part of the carried package because neighboring
response, participation tethering, and class-exit arguments are currently
stated on still-live windows, but always as statements about one global fluid
seen locally rather than a detached local model.

## Primitive Local Membership And Exit

The route needs one middle layer between the restricted object
`\mathfrak O_{\mathrm{NS}}^{\mathrm{work}}|_Q` and any later analytic witness.

Write

```math
\mathrm{Member}(Q;\mathfrak O_{\mathrm{NS}}^{\mathrm{work}})
:\Longleftrightarrow
(u,p,\Phi,F,h,\mathcal T)|_Q
\text{ is still a lawful restriction of the same one-fluid Navier--Stokes object.}
\tag{OP.16d}
```

Meaning:

1. the restricted data on `Q` is inherited from the same global object
   `\mathfrak O_{\mathrm{NS}}^{\mathrm{work}}`;
2. the same law bundle `(OP.5)`--`(OP.15)` still holds on `Q`.

So primitive local membership is not a later witness bundle. It is the direct
statement that the local window is still answerable to the same global object
and the same governing laws.

Write

```math
\mathrm{Exit}(Q;\mathfrak O_{\mathrm{NS}}^{\mathrm{work}})
:=
\neg \mathrm{Member}(Q;\mathfrak O_{\mathrm{NS}}^{\mathrm{work}}).
\tag{OP.16e}
```

So the logical chain is:

```math
\mathfrak O_{\mathrm{NS}}^{\mathrm{work}}
\longrightarrow
\mathfrak O_{\mathrm{NS}}^{\mathrm{work}}|_Q
\longrightarrow
\mathrm{Member}(Q;\mathfrak O_{\mathrm{NS}}^{\mathrm{work}})
\ /\ 
\mathrm{Exit}(Q;\mathfrak O_{\mathrm{NS}}^{\mathrm{work}})
\longrightarrow
\text{later analytic witnesses / factorizations.}
\tag{OP.16f}
```

## Meaning

The package `\mathfrak O_{\mathrm{NS}}^{\mathrm{work}}` means:

1. there is one realized incompressible Navier--Stokes fluid on one fixed
   theorem surface and one fixed lifetime;
2. the fluid is carried both Eulerianly by `(u,p)` and materially by `\Phi`;
3. its infinitesimal deformation geometry `F` and exact finite separation
   geometry `h` are already live inside the same object and describe the same
   material geometry at different scales;
4. its full derivative tower `\mathcal T` is already live inside the same
   object;
5. pressure, viscosity, incompressibility, flow transport, deformation,
   neighboring response, and rung energy are not optional decorations but part
   of the law bundle that defines the working object.

The survivor-equivalence atlas in
[mpp-survivor-equivalence-atlas-note.md](/Users/thomasbirnie/Workspace/ToE/Research-Consolidation/problems/navier-stokes/theorem-construction/mpp-survivor-equivalence-atlas-note.md)
uses this same object package as the carrier-identity guard: branch readouts may
be compared only when they remain readouts of the same
`\mathfrak O_{\mathrm{NS}}^{\mathrm{work}}|_Q` / `M_Q(u,p)` object.

The keeper doctrine inside this package is the joint

```math
(\text{incompressibility},\ \text{pressure},\ \text{viscosity})
\tag{OP.16c}
```

triple on still-live neighborhoods, not viscosity alone.

So this package is thick enough to carry:

1. class-membership contradiction;
2. pressure-viscosity coupling;
3. viscosity as neighboring tethering rather than only a damping slogan;
4. cross-rung and cross-neighbor tower relations;
5. later packet/readout constructions as true descendants of one fluid.

## Audit

### What had to be refined

The thinner tuple

```math
(\Omega,[0,T),\nu,u,p,\Phi)
\tag{OP.17}
```

was not enough. It named the object but did not yet carry the structures later
arguments actually use.

The following refinements were necessary:

1. `u_0` must be carried to anchor the realized evolution and the initial
   identity of the flow map;
2. pressure must be carried with its closure and gauge law, otherwise `p`
   remains underdetermined;
3. `F` must be carried with its evolution law, not only as notation;
4. `h` must be carried explicitly because neighboring participation response is
   stated on true separations, not only on abstract flow;
5. the full differentiated tower law must be carried, otherwise cross-rung
   relations stay implicit;
6. the finite-difference coherence law must be carried, otherwise neighboring
   response is not formally present;
7. the rung-energy law must be carried, otherwise viscosity remains too easy to
   flatten into “damping only”.

### What had to be weakened

Three draft assumptions were too strong and had to be corrected.

1. class membership cannot be carried as if its exact analytic witness were
   already closed; primitive local membership / exit must be carried first, and
   the later exact witness remains open on the current route;
2. `F`, `h`, and `\mathcal T` are carried explicitly, but as induced
   structures of the same fluid rather than as co-primitive added bodies;
3. the neighboring-response layer cannot be stated only globally; the package
   must carry still-live localized windows `Q` because that is how the current
   tethering burden is actually formulated.

### Assumption check

The package above is robust, but one discipline matters:

```math
F,\ h,\ \mathcal T
```

are carried explicitly because later proofs need them live, but they remain
structures of the same fluid object rather than separate added substances.

### Final judgment

This is the best robust package currently available to carry forward on the
present route.

It is minimal in the sense that every symbol or law in it is actually used by
the current object-law / tethering / continuation logic.

It is strong enough that later local branches can be audited by a single test:

```math
\text{does this claimed local behavior still satisfy }
\mathrm{Member}(Q;\mathfrak O_{\mathrm{NS}}^{\mathrm{work}})
\text{ for the relevant still-live window }Q\ ?
\tag{OP.18}
```

That is the correct carry-forward standard.

### Installed carry-forward closures

The package now carries its three former bridge debts explicitly through:

1. [mpp-exact-class-membership-witness-theorem.md](/Users/thomasbirnie/Workspace/ToE/Research-Consolidation/problems/navier-stokes/theorem-construction/mpp-exact-class-membership-witness-theorem.md)
2. [mpp-jet-to-finite-difference-bridge-theorem.md](/Users/thomasbirnie/Workspace/ToE/Research-Consolidation/problems/navier-stokes/theorem-construction/mpp-jet-to-finite-difference-bridge-theorem.md)
3. [mpp-quantitative-neighboring-response-witness-theorem.md](/Users/thomasbirnie/Workspace/ToE/Research-Consolidation/problems/navier-stokes/theorem-construction/mpp-quantitative-neighboring-response-witness-theorem.md)

So the package no longer carries those three items as open constitutive
ambiguities.

What remains open after these closures is downstream theorem work:

1. the separate no-detach / no-jump exclusions on the surviving packing /
   one-field side;
2. branch-specific witness-to-readout theorems;
3. the surviving selector-adapted consumer wall.

So the best final read is:

```math
\boxed{
\mathfrak O_{\mathrm{NS}}^{\mathrm{work}}
\text{ is the best robust carried-forward object package available now,}
}
\tag{OP.19a}
```

```math
\boxed{
\text{with primitive local membership / exit fixed at object level, and with exact class-membership witness,}
```

```math
\boxed{
\text{jet-to-difference bridge, and neighboring-response witness now installed as constitutive theorem surfaces.}
}
\tag{OP.19b}
```
