# MPP Same-Fluid Frozen Packet / Wrapped Sheet Theorem Surface

## Status

Theorem-facing development note.

Role: develop the same-fluid "frozen packet", "ice cube", and wrapped "ice
sheet" thought experiment as a Navier--Stokes class-membership surface.

This is not a state-of-matter model, not an injected external solid, and not a
phase-boundary problem. The object under test is still one Navier--Stokes fluid
object. The question is whether a packet whose internal degrees of freedom feel
rigid is still participating in the same pressure-viscosity field, and what
changes when that packet grows from a local cube into a topology-spanning sheet
or shell on `T^3`.

## Installed Inputs

Use the following installed surfaces.

1. [mpp-exact-class-membership-witness-theorem.md](/Users/thomasbirnie/Workspace/ToE/Research-Consolidation/problems/navier-stokes/theorem-construction/mpp-exact-class-membership-witness-theorem.md)
2. [mpp-ontic-incompatibility-of-autonomous-singular-geometry-theorem.md](/Users/thomasbirnie/Workspace/ToE/Research-Consolidation/problems/navier-stokes/theorem-construction/mpp-ontic-incompatibility-of-autonomous-singular-geometry-theorem.md)
3. [mpp-dead-tower-rigidity-reduction-note.md](/Users/thomasbirnie/Workspace/ToE/Research-Consolidation/problems/navier-stokes/theorem-construction/mpp-dead-tower-rigidity-reduction-note.md)
4. [mpp-torus-global-material-atlas-terminal-capture-20260526.md](/Users/thomasbirnie/Workspace/ToE/Research-Consolidation/problems/navier-stokes/theorem-construction/mpp-torus-global-material-atlas-terminal-capture-20260526.md)

The key inherited fact is `CMW.A`: under the exact class-membership witness,
every local tower, collar, transported segment, finite-difference packet, and
material packet built on `Q` is induced from the same restricted fluid object.

## Guiding Distinction

A same-fluid ice cube is a local coherent packet. A wrapped ice sheet is a
coherent packet plus topology.

The local cube can have a rigid-feeling internal law without becoming dead: the
interior can move as one packet while the boundary collar still transmits the
same pressure-viscosity response. The wrapped sheet adds a different issue. It
cannot carry arbitrary free rigid-body motion, because on `T^3` any exact rigid
mode must also be periodic along the directions in which the sheet wraps.

Thus the obstruction is not:

```text
rigid packet => nonsmoothness.
```

The theorem-surface obstruction is:

```text
wrapped same-fluid rigid packet + torus periodicity
=> loss of autonomous rigid degrees of freedom.
```

That degree loss is not itself `Dead`. It becomes a CM exit only if the packet
claims independent wall-like motion not induced from the same restricted
Navier--Stokes object, or if the collar/coherence needed to keep the packet in
one field fails.

## Definitions

Let `Q` be a still-live spacetime window for a smooth periodic Navier--Stokes
solution on `T^3`, and let

```math
\pi:\mathbf R^3\to\mathbf T^3
\tag{FSW.1}
```

be the covering projection. Let `S_t\subset T^3` be a finite-thickness material
packet or sheet, and let `\widetilde S_t` be a connected lift in `R^3`.

### Same-fluid frozen-feeling packet

`S_t` is a same-fluid frozen-feeling packet on `Q` when:

1. `S_t` is transported by the same Lagrangian flow `\Phi_t` used by the
   surrounding fluid;
2. the internal motion of `S_t` is constrained to a low-dimensional collective
   mode, with exact rigid motion as the model case;
3. the collar around `S_t` remains a same-field collar: the pressure-viscosity
   law and finite-difference tower coherence across the collar are still read
   from the same `u,p,\Phi`;
4. no external wall, phase law, or second material object is introduced.

This definition preserves the physical picture: the packet "feels frozen" while
still being made of, and moved by, the same fluid.

### Exact rigid mode

At a fixed time `t_0`, an exact rigid-mode branch on the lifted packet means that
there are a vector `a(t_0)`, a point `x_0`, and a skew matrix
`\Omega(t_0)\in\mathfrak{so}(3)` such that on `\widetilde S_{t_0}`,

```math
\widetilde u(x,t_0)
=
a(t_0)+\Omega(t_0)(x-x_0).
\tag{FSW.2}
```

Equivalently, writing `\Omega z=\omega\times z`, the rigid mode is translation
plus rotation. This is the exact model case for the frozen-feeling internal law;
near-rigid packet versions are recorded below as a quantitative strengthening
target.

### Wrapping lattice

The wrapping lattice of the lifted sheet is

```math
\Lambda_S
:=
\{n\in\mathbf Z^3:\ \widetilde S_t+n=\widetilde S_t\}.
\tag{FSW.3}
```

Its rank records how many independent torus directions the sheet spans.

Rank `0` is the ice-cube case. Rank `2` is the ordinary finite-thickness sheet
wrapping two torus directions. Rank `3` is the whole-torus or total-shell case.

### Autonomous frozen wall

A same-fluid packet is not autonomous. An autonomous frozen wall is the illegal
extra object one would get by claiming that the wrapped sheet has rigid-body
degrees of freedom not induced by the same periodic field `u,p,\Phi`, not
compatible with the covering periodicity, or not transmitted through the same
collar/tower law.

The purpose of the theorem is to remove this fourth branch.

## Theorem `FSW.A` (Wrapped rigid-mode degree loss on `T^3`)

Let `S_{t_0}\subset T^3` be a finite-thickness same-fluid packet with connected
lift `\widetilde S_{t_0}`. Assume that the global velocity has a periodic lift
`\widetilde u`, and that on `\widetilde S_{t_0}` the packet carries the exact
rigid mode `(FSW.2)`.

Then every wrapping vector kills the rotational part:

```math
\Omega(t_0)n=0
\qquad
\text{for every }n\in\Lambda_S.
\tag{FSW.4}
```

Consequently:

1. a local ice cube with `rank \Lambda_S=0` has no topological loss of rigid
   modes from this theorem alone;
2. a tube or sheet wrapping one torus direction can rotate only around the
   wrapped direction;
3. a finite-thickness sheet wrapping two independent torus directions has
   `\Omega(t_0)=0`;
4. a whole-torus frozen shell also has `\Omega(t_0)=0`, so only the common
   translational torus mode remains.

In plain terms: once the ice cube grows into a wrapped sheet over the torus, it
does not move like an ordinary free rigid body. The torus has taken away its
independent rotations.

### Proof

Fix `n\in\Lambda_S`. For every `x\in\widetilde S_{t_0}`, both `x` and `x+n`
lie in the same lifted sheet. Since `\widetilde u` is the lift of a periodic
velocity field,

```math
\widetilde u(x+n,t_0)=\widetilde u(x,t_0).
\tag{FSW.5}
```

Using the rigid representation `(FSW.2)` on both points gives

```math
a+\Omega(x+n-x_0)
=
a+\Omega(x-x_0).
\tag{FSW.6}
```

Subtracting yields `(FSW.4)`.

In three dimensions a nonzero skew matrix has a one-dimensional kernel: if
`\Omega z=\omega\times z` with `\omega\ne0`, then `\ker\Omega=\mathrm{span}
\{\omega\}`. Hence two independent wrapping directions in the kernel force
`\omega=0`, equivalently `\Omega=0`. Rank `3` is stronger. Rank `1` leaves only
rotation around the single wrapped axis. Rank `0` imposes no periodicity equation
on the rotational part. `\square`

## Corollary `FSW.A1` (When the remaining motion is stationary)

The mode left by `FSW.A` is not free solid-body drift. It is only the
translation read out by the same periodic velocity field.

On the active periodic zero-force branch with zero spatial mean, if the frozen
packet is the whole torus/total-fluid rigid mode and `FSW.A` has reduced the
exact rigid velocity to

```math
\widetilde u(x,t_0)=a(t_0),
\tag{FSW.6a}
```

then

```math
a(t_0)
=
\int_{\mathbf T^3}u(x,t_0)\,dx
=0.
\tag{FSW.6b}
```

So the whole-volume frozen mode is stationary in the zero-mean torus branch.

A proper finite-thickness wrapped sheet can still be advected by the common
fluid field, but that translation is not an independent solid-wall motion. It
must be the trace of the same `u,p,\Phi` and must pass through the same collar,
Pack, Part, and Field tests as the surrounding fluid.

## Corollary `FSW.B` (The wrapped sheet is constrained, not automatically dead)

Under the hypotheses of `FSW.A`, the loss of rotational degrees of freedom is
not a `Dead` classification by itself.

If the packet, its boundary collar, and its remaining translation/collective mode
are all induced from the same restricted fluid object on `Q`, and if the
class-membership witness

```math
\forall N\ \exists r_N>0:\ 
\mathrm{CM}_{N,r_N,Q}(u,p,\Phi)
\tag{FSW.7}
```

holds, then the wrapped frozen-feeling sheet is still inside

```math
\mathrm{Member}(Q;\mathfrak O_{\mathrm{NS}}^{\mathrm{work}}).
\tag{FSW.8}
```

The sheet can fail CM only through the existing faces:

```math
\neg\mathrm{Pack}_Q(u,\Phi)
\quad\text{or}\quad
\neg\mathrm{Part}_{N,Q}(u,p)
\quad\text{or}\quad
\neg\mathrm{Field}_{N,r,Q}(u,p).
\tag{FSW.9}
```

There is no fourth "ice sheet" class.

### Proof

The topological calculation in `FSW.A` only constrains the rigid-mode parameters
compatible with periodicity. It does not remove the packet from the same field.

Assume `(FSW.7)`. By `CMW.A`, `Member(Q;\mathfrak O_{\mathrm{NS}}^{\mathrm{work}})`
holds, and every local tower, collar, transported segment, finite-difference
packet, and material packet built on `Q` is induced from the same restricted
fluid object. Therefore the wrapped sheet, as long as it is one of those
same-fluid material packets with a same-field collar, is still a class-member
readout.

If the sheet nevertheless claims a dead endpoint, an autonomous wall, or any
other nonparticipating geometry, then the exact witness cannot remain installed.
By `CMW.A` and `OP.R`, the failure lands in Pack, Part, or Field. `\square`

## Proposition `FSW.C` (No autonomous frozen-wall fourth branch)

Let `Q` be a still-live window in the torus-first CM route. A topology-spanning
frozen-feeling sheet has exactly two legal statuses:

```math
\boxed{
\text{same-fluid constrained participation}
\quad\text{or}\quad
\text{Pack/Part/Field face failure.}
}
\tag{FSW.10}
```

It cannot be admitted as an autonomous solid wall inside the same Navier--Stokes
solution.

### Proof

The torus global material atlas surface says that the terminal object on `T^3`
is the whole transported same-fluid atlas. Its services are carrier/readout
packing, pressure-viscosity participation, and positive-scale one-field
coherence. Those are exactly Pack, Part, and Field.

A wrapped frozen-feeling sheet compatible with this atlas is a constrained
same-fluid packet. By `FSW.B`, it remains a class-member readout while the CM
witness holds.

An autonomous wall is different: it asserts motion, rigidity, or separation not
coming from the same restricted `u,p,\Phi`. That contradicts the induced-object
clause of `CMW.A` and the no-autonomous-local-sharpening conclusion of `OP.R`.
Hence it must be read as failure of at least one CM face, not as a fourth
solution type. `\square`

## Euclidean Infinite-Sheet Note

The `R^3` infinite-sheet variant is not the same theorem as the wrapped torus
sheet.

An exact infinite slab with a nonzero rigid rotation has velocity growing
linearly along the slab. An exact infinite slab with nonzero translation carries
nondecaying velocity on an infinite-volume region. Thus the whole-space version
must pay a separate admissibility or localization price before it can be tested
as a finite-energy Navier--Stokes object.

So the Euclidean branch splits as follows:

```math
\boxed{
\text{literal infinite same-amplitude sheet}
\Rightarrow
\text{whole-space admissibility / finite-energy problem,}
}
\tag{FSW.11}
```

while

```math
\boxed{
\text{localized or decaying sheet}
\Rightarrow
\text{ordinary material-packet/collar problem.}
}
\tag{FSW.12}
```

The torus theorem above is cleaner because the wrapping obstruction is purely
topological and does not first pass through spatial infinity.

## Near-Rigid Quantitative Strengthening Target

The exact rigid calculation should be upgraded to a packet estimate.

For a wrapped packet `S_t`, define a best rigid fit on the lifted sheet by

```math
\inf_{a,\Omega\in\mathfrak{so}(3)}
\int_{\widetilde S_t\cap\mathcal F}
|\widetilde u(x,t)-a-\Omega(x-x_0)|^2\,dx,
\tag{FSW.13}
```

where `\mathcal F` is a fundamental domain. A quantitative wrapped-packet theorem
would say that, when the packet wraps two independent torus directions, the best
rotational coefficient satisfies a bound of the form

```math
|\Omega(t)|^2
\lesssim
\text{periodic mismatch}
+
\text{collar Field defect}
+
\text{same-fluid Pack/Part defect}.
\tag{FSW.14}
```

In the exact CM pass case the right side is zero, recovering `\Omega=0`. In the
exit case, the right side identifies which face pays for the attempted frozen
wall:

1. Pack pays when the wrapped material address, finite carrier, or atlas readout
   cannot be kept;
2. Part pays when the same pressure-viscosity participation law fails across the
   sheet/collar;
3. Field pays when finite-difference coherence across neighboring towers or the
   melting collar fails.

This is the analytic version of the thought experiment: the ice cube is
permitted, the wrapped sheet is permitted only as a constrained same-fluid packet,
and autonomous solid-wall behavior is forced back into Pack/Part/Field exit.

## What This Surface Does And Does Not Prove

This note proves the exact topological rigid-mode obstruction for wrapped sheets
on `T^3` and installs its CM landing rule.

It does not prove global regularity. It does not exclude every possible
singularity mechanism. It isolates one proposed loophole: a frozen solid-feeling
packet that remains smooth and same-fluid locally, then grows into a topology
spanning sheet or shell. The result is that such an object is legal as a smooth
same-fluid constrained packet, but not legal as an autonomous nonparticipating
wall inside the same Navier--Stokes solution.
