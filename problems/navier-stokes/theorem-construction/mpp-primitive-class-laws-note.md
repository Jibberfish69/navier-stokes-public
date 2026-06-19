# MPP Primitive Class Laws Note

## Status

Separate theorem-facing note.

Role: primitive statement surface for the class-membership route.

This note is the route-faithful primitive surface for the current
class-membership contradiction program. It does **not** replace the live
selector/defect route. It does **not** introduce an unspecified witness bundle. Its
job is simpler: write down the primitive class laws the user is actually trying
to build for the classical incompressible Navier--Stokes equations.

For the exact theorem status of whether this `Pack / Part / Field` triad is
merely the current route factorization or a canonically forced primitive
decomposition, see
[mpp-pack-part-field-triadicity-audit-note.md](/Users/thomasbirnie/Workspace/ToE/Research-Consolidation/problems/navier-stokes/theorem-construction/mpp-pack-part-field-triadicity-audit-note.md).

## Fixed Problem

The PDE is unchanged:

```math
\partial_t u+(u\cdot\nabla)u+\nabla p=\nu\Delta u,
\qquad
\nabla\cdot u=0,
\qquad
\nu>0.
\tag{PL.0}
```

The target is unchanged:

```math
\text{global smoothness for the classical incompressible Navier--Stokes problem.}
\tag{PL.1}
```

What changes here is only the proof architecture:

```math
\boxed{
\text{attack singularity as class-exit from the NS fluid object.}
}
\tag{PL.2}
```

## Primitive Triple

The governing triple is:

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
\tag{PL.3}
```

So the primitive question is not "which norm blows up first?" The primitive
question is:

```math
\boxed{
\text{what must fail before the solution stops being one shared incompressible-pressure-viscosity field?}
}
\tag{PL.4}
```

## Primitive Class Laws

The route uses three primitive laws.

### Law 1. Shared Packing Law

Let `\Phi(a,t)` be the Lagrangian flow map:

```math
\partial_t\Phi(a,t)=u(\Phi(a,t),t),
\qquad
\Phi(a,0)=a.
\tag{PL.5}
```

The shared packing law says:

```math
\boxed{
\text{the solution evolves through one common smooth volume-preserving motion map.}
}
\tag{PL.6}
```

Formally,

```math
\det D_a\Phi(a,t)=1
\tag{PL.7}
```

and the same `\Phi_t` carries the whole field.

This law is what the route means by "one common incompressible packing class."

### Law 1a. Fixed Box / Material Packet Boundary

There are two lawful ways to read the packing law, and this note must not
silently exchange them.

The fixed-box reading is Eulerian: keep a spatial control volume in place and
use incompressibility as flux balance through its faces. This is the clean
local control-volume meaning of "a cube stays a cube." It records that the
field is not creating or destroying volume inside the box.

The material-packet reading is Lagrangian: follow the same fluid labels by
`\Phi_t` and use `D_a\Phi_t` only as finite-window coordinate bookkeeping for
the same fluid parcel. This is useful for identity and comparison of the same
carried packet, but it is not a demand that a tracked blob keep a nice shape
for all time.

Thus `Pack` has the following custody boundary:

```math
\boxed{
\text{infinite smooth distortion over an infinite time tail is not a Pack exit by itself.}
}
\tag{PL.7a}
```

The pack-side geometric exit is finite-endpoint loss of usable common packing
coordinates or fixed-box flux bookkeeping:

```math
\boxed{
\text{at a finite terminal edge, no common controlled packing/flux chart remains for the selected packet.}
}
\tag{PL.7b}
```

So `Pack` should not be narrated as "the material cube must remain a cube."
It should be narrated as the incompressible packing / control-volume law
remaining usable in the proof.

### Law 2. Shared Participation Law

The momentum equation is read as

```math
D_tu:=\partial_t u+(u\cdot\nabla)u=-\nabla p+\nu\Delta u.
\tag{PL.8}
```

The shared participation law says:

```math
\boxed{
\text{inside a still-live smooth neighborhood, points remain dynamically carried by one common pressure-viscosity participation law.}
}
\tag{PL.9}
```

This is the route's exact reading of "kept in motion." It does **not** mean
every point has large speed. It means the point has not dropped out of the same
pressure-viscosity carrier that is acting on the surrounding field.

### Law 2a. Fixed-Viscosity Carrier Law

Within the shared participation law, the viscosity slot is not free to mutate.
It is the fixed classical term from `(PL.0)`:

```math
\operatorname{Visc}^{fix}_{\nu}(Q)
:\Longleftrightarrow
D_tu+\nabla p=\nu\Delta u,
\qquad
\nabla\cdot u=0,
\qquad
\nu>0
\text{ fixed.}
\tag{PL.9a}
```

The route-level class law is:

```math
\boxed{
Member(Q;\mathfrak O^{work}_{NS})
\Longrightarrow
\operatorname{Visc}^{fix}_{\nu}(Q).
}
\tag{PL.9b}
```

Therefore the viscosity-side class-exit readout is:

```math
\boxed{
\neg\operatorname{Visc}^{fix}_{\nu}(Q)
\Longrightarrow
Exit(Q;\mathfrak O^{work}_{NS})
:=
\neg Member(Q;\mathfrak O^{work}_{NS}).
}
\tag{PL.9c}
```

This is a discharged definitional theorem, not the analytic exclusion theorem.
It says that if the evolution stops obeying the fixed law `\nu\Delta u` inside
the same pressure-viscosity carrier, then it has left the working class. It
does not yet prove that such a viscosity-side break cannot be approached from
smooth initial data:

```math
OriginalSmoothData
\Longrightarrow
\operatorname{Visc}^{fix}_{\nu}
\quad
\text{up to the alleged terminal time}
\tag{PL.9d}
```

remains an exclusion burden for the surrounding program.

### Law 3. Shared One-Field Law

The third law says:

```math
\boxed{
\text{neighboring regions belong to one common smooth field, not to different local laws patched together.}
}
\tag{PL.10}
```

Equivalently, there is one common smooth velocity/pressure field whose local
towers are compatible from point to point.

This is the primitive "no jump / no split field" law.

## Endpoint Readout Words

The primitive content lives in the laws. The endpoint words do not.

The source class-membership claim names dead / jump / runaway as visible
non-smooth examples and explicitly leaves room for "any other genuinely
non-smooth situation." So this note must not promote the three labels into a
closed primitive ontology.

### Dead Endpoint

```math
\boxed{
\text{`dead endpoint' is the legacy participation-side class-exit label, not a primitive law identity.}
}
\tag{PL.11}
```

This is intentionally stronger than raw stagnation.

```math
u(x,t)=0
\not\Rightarrow
\text{dead endpoint.}
\tag{PL.12}
```

The route means class nonparticipation, not merely zero speed.

### Blown Endpoint

```math
\boxed{
\text{`blown endpoint' is the legacy blown-side class-exit label, not a primitive law identity.}
}
\tag{PL.13}
```

Its native pack-side face is `packing-detached`. Its tower-amplitude face is
`tower-blown`, which is not yet owned by a single law row.

### Jump Endpoint

```math
\boxed{
\text{`jump endpoint' is the legacy one-field-side class-exit label, not a primitive law identity.}
}
\tag{PL.14}
```

This is the route's exact meaning of neighboring regions no longer belonging to
one common smooth field.

## Legacy Endpoint Label Policy

The route may still use the historical trio as shorthand:

```math
\boxed{
\text{dead endpoint},\qquad
\text{blown endpoint},\qquad
\text{jump endpoint}.
}
\tag{PL.14a}
```

But this note no longer treats that trio as proved primitive, canonical, or
exhaustive. The phrases below are only local readout words currently attached to
the three sides:

```math
\text{transport-dead / tower-dead}
\Longrightarrow
\text{dead endpoint in participation-side local form,}
\tag{PL.14b}
```

```math
\text{packing-detached}
\Longrightarrow
\text{blown endpoint in packing-side local form,}
\tag{PL.14c}
```

```math
\text{tower-blown}
\Longrightarrow
\text{blown endpoint in tower-amplitude local form,}
\tag{PL.14ca}
```

```math
\text{velocity-jump / derivative-jump / tower-jump}
\Longrightarrow
\text{jump endpoint in base-rung or higher-rung local form.}
\tag{PL.14d}
```

In particular, `velocity-jump` is reserved for the base velocity rung, while
`tower-jump` or `derivative-jump` names the same endpoint type on higher jet
rungs.

Tangential slip is a `velocity-jump` subtype whenever the normal component
remains compatible but the tangential trace does not:

```math
[u\cdot n]=0,\qquad [u_{\tan}]\ne0
\Longrightarrow
\text{jump endpoint in base-rung local form.}
\tag{PL.14d-slip}
```

So slip has native `Jump` readout: it is visible failure of one-field
coherence, not raw stagnation. If the same slip is used as evidence of local
participation failure, that is a cross-entry / mechanism reading and must be
reduced through the endpoint matrix rather than treated as a disjoint
primitive door.

### Endpoint Overlap Boundary

The endpoint words are readouts, not mutually exclusive doors. A finite
terminal event may activate more than one readout:

```math
\boxed{
\text{packing-detached, tower-blown, dead, and jump are endpoint readings of class exit, not disjoint primitive laws.}
}
\tag{PL.14e}
```

In particular, finite-time material-packet distortion is pack-facing because it
breaks the usable common packing chart. Its analytic driver is the strain /
tower channel, so the same event can also touch the Field/tower side. It does
not automatically mean the pressure-viscosity participation law has changed.

## Primitive Contradiction Schema

The primitive contradiction schema is then:

```math
\boxed{
\text{if the three primitive class laws hold, the solution is still an internal NS class member.}
}
\tag{PL.15}
```

Therefore,

```math
\text{dead endpoint}
\Longrightarrow
\text{class exit,}
\tag{PL.16}
```

```math
\text{blown endpoint}
\Longrightarrow
\text{class exit,}
\tag{PL.17}
```

```math
\text{jump endpoint}
\Longrightarrow
\text{class exit.}
\tag{PL.18}
```

So the route's theorem burden is:

```math
\boxed{
\text{every candidate singularity must violate one of the primitive class laws before it can count as an internal NS event.}
}
\tag{PL.19}
```

This is the class-membership contradiction program in its primitive form.

## What This Note Refuses To Do

This note deliberately does **not**:

1. collapse the route into the plain `H^s` continuation wall
   `\int_0^T \|\nabla u\|_{L^\infty}\,dt`;
2. over-compose the route into a generic bundle of amplitudes, coherence
   moduli, and carrier norms;
3. replace the primitive class laws with a cleaner but less faithful theorem
   package.

Those moves may become useful later, but they are not the primitive route.

## Exact Next Burden

The next sharpening step is now explicit:

```math
\boxed{
\text{derive the primitive class laws directly from the PDE-generated packing and tower carriers,}
}
```

```math
\boxed{
\text{and lead the proof engine with finite-difference tower coherence rather than an unspecified witness bundle.}
}
\tag{PL.20}
```

That PDE-native sharpening is recorded separately in
`mpp-shared-participation-and-tower-coherence-law.md`. The role of that note is:

1. flow-map / deformation law for shared packing;
2. tower carrier law `D_t U_k = K_k + B_k` for shared participation;
3. finite-difference tower law for one shared field coherence;
4. localized tower-defect energy as the current proof-engine surface.

So the present note remains the primitive statement surface, while the new note
pushes the route one layer deeper into PDE-generated structure without
collapsing it into a plain continuation package.

Inside this primitive surface, the remaining burden is:

```math
\boxed{
\text{turn each primitive class law into an exact analytic predicate without replacing the law by a generic substitute.}
}
\tag{PL.21}
```

Meaning:

1. make "shared packing law" exact;
2. make "shared participation law" exact;
3. make "shared one-field law" exact;
4. then prove a candidate singularity forces one of those exact predicates to
   fail first.

That is what this route should do next.
