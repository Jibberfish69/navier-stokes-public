# Whole Proof Skeleton Without Route Jargon

Status: conditional expository skeleton.

## Theorem

Let `u_0` be smooth, divergence-free, and zero-mean on `T^3`, with zero external force and viscosity `nu>0`. Let `(u,p)` be the maximal classical periodic Navier-Stokes solution on `[0,T_*)`. Under the averaged terminal-tail route lemmas, one has

```math
T_* = \infty.
```

## Proof

Assume for contradiction that the maximal classical lifespan is finite.

The solution has the finite-energy bounds up to the terminal time:
`u in L^\infty_t L^2_x` and `nabla u in L^2_t L^2_x`. At almost every material
spacetime point, the scale-critical local velocity, pressure, and gradient
quantities become small on sufficiently small parabolic cylinders. Local
epsilon-regularity then gives smooth finite-depth control on every cylinder
where this smallness holds.

The terminal tail is split into two possibilities. Either it has a finite positive-scale family of such good cylinders, or the available good scales degenerate. The degeneration case is recorded as an averaged endpoint face. On the good-cylinder branch, the local regularity estimates can be summed over a finite same-fluid cover, giving averaged control of the transported derivative and pressure packets.

This averaged control propagates through the receiver, source, collar, one-field, and class-invariance estimates. Thus the averaged class witness persists up to the terminal time. The averaged endpoint matrix excludes each possible averaged endpoint face: loss of participation, loss of packing, averaged tower blow-up, and averaged field jump.

Once the averaged endpoint package is obtained, a fixed finite good cover is recovered. On that fixed cover, averaged field coherence is read as pointwise field coherence, and averaged transported-center control is read as pointwise tower and pressure control. In particular, the pressure part of

```math
K_q=-\nabla^{q+1}p+\nu\Delta U_q
```

is recovered by the fixed-cover local Poisson estimate. This converts the averaged endpoint package into the old pointwise endpoint package.

The pointwise endpoint package says that no first finite class exit can occur: every possible endpoint face is excluded. Hence finite maximal time would imply a finite class exit, and the endpoint matrix would force an endpoint face, contradicting the pointwise endpoint package.

Therefore no finite maximal time exists. Equivalently, the retained class witness supplies a uniform terminal bound

```math
\sup_{t<T_*}\|u(t)\|_{H^s(T^3)}<\infty
```

for some `s>5/2`. The `H^s` local well-posedness/relaunch theorem gives a
lifespan controlled from below by that bound; relaunching from times
`t_j\uparrow T_*` and using uniqueness on overlaps extends the same solution
beyond any alleged finite `T_*`. Thus

```math
T_* = \infty.
```

## Route labels

The proof skeleton corresponds to

```text
TGC.A + AACT.Global.noJump + AVG.END.A + READ.END => PCTP.hard
```

followed by

```text
PCTP.hard + ECQ.A => T_* = infinity.
```
