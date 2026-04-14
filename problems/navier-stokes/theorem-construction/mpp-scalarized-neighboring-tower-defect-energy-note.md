# MPP Scalarized Neighboring-Tower Defect Energy Note

## Status

Candidate leading-edge update.

This note does **not** claim a closure theorem. Its job is narrower: identify
the exact proof surface suggested by the current class-membership discussion,
without collapsing the route into a generic continuation criterion.

## Purpose

The class-membership route already isolates three primitive laws:

1. shared packing;
2. shared participation;
3. shared one-field coherence.

What was still missing was one scalar PDE-facing object that simultaneously:

1. sees neighboring-tower coherence as a real defect energy;
2. stays attached to the pressure-viscosity-incompressibility triad;
3. can be carried together with the packing/deformation ledger from the flow
   map.

The present note records the candidate object for that role.

## Existing Split On Disk

The current repository already contains the three ingredients, but still in
separate notes.

### 1. Primitive class-law side

The route-faithful class object is already fixed by:

- one common packing law;
- one common pressure-viscosity participation law;
- one common smooth field law across neighboring towers.

### 2. Mixed-jet matrix side

The exact tower-side pairing law already says:

- pressure cancels in every jet-vs-jet `L^2` pairing;
- base transport is skew across pairings;
- viscosity damps the full cross-rung correlation matrix;
- the live source is the mixed remainder matrix.

### 3. Honest obstruction side

The current tower notes also say explicitly that there is **not yet** any
proved cross-rung telescoping or global cancellation law across the full tower.

So the missing bridge is not conceptual. It is the missing scalar energy surface
that sits between local tower coherence and the exact PDE algebra.

## Candidate Scalarized Defect Energy

Let

```math
U_k := \nabla^k u,
\qquad
\delta_h f(x) := f(x+h)-f(x),
```

and let `\phi` be a fixed compactly supported cutoff. For a finite depth `N`,
choose positive scalar weights `\lambda_0,\dots,\lambda_N`.

Define the scalarized neighboring-tower defect energy

```math
E_N(h,t)
:=
\sum_{k=0}^{N}
\lambda_k
\int
\phi(x)^2\,|\delta_h U_k(x,t)|^2\,dx.
\tag{SD.1}
```

This is the first scalar object on the class-membership side that directly
records:

1. how neighboring towers separate;
2. how that separation is distributed across rung depth;
3. how much one-field coherence is still present at finite depth.

In particular, this is not a raw continuation norm. It is a neighboring-tower
defect ledger.

## Packing Ledger

Let `X(a,t)` be the Lagrangian flow map and

```math
F(a,t):=D_aX(a,t),
\qquad
A(a,t):=F(a,t)^{-1},
\qquad
\det F(a,t)=1.
\tag{SD.2}
```

The packing side should be carried by local distortion variables built from
`F` and `A`, for example the local bi-Lipschitz/distortion ledger on the
cutoff-support region.

The mathematical point is simple:

```math
\boxed{
\text{the scalar defect energy }E_N(h,t)\text{ sees tower coherence,}
}
```

```math
\boxed{
\text{while }F\text{ and }A\text{ carry the packing law.}
}
\tag{SD.3}
```

So the proof surface is not tower-only and not packing-only. It is the coupled
surface

```math
\text{packing distortion from }F
\quad+\quad
\text{neighboring-tower defect energy }E_N(h,t).
\tag{SD.4}
```

## Why This Is Closer To The Source Idea

The earlier route-native witness bundle used sup-amplitudes and coherence
moduli. That preserved the language of the source idea, but it was still too
generic.

The present scalarized energy is sharper because:

1. it turns one-field coherence into an actual localizable PDE energy;
2. it keeps neighboring towers, rather than isolated pointwise amplitudes, as
   the primitive defect object;
3. it leaves packing visible through `F` instead of replacing it by a generic
   continuation norm;
4. it keeps the pressure-viscosity carrier inside the differentiated
   finite-difference equations rather than demoting it to a side remark.

## Exact Missing Theorem Shape

The real next theorem is now visible.

For each finite depth `N`, derive a localized defect-energy inequality of the
form

```math
\frac{d}{dt}E_N(h,t)
+
\nu\,D_N(h,t)
\le
\mathcal C_N(h,t;F,A,\phi)\,E_N(h,t)
+
\mathcal R_N(h,t),
\tag{SD.5}
```

where:

1. `D_N(h,t)` is the viscous dissipation coming from gradients of
   `\delta_h U_k`;
2. `\mathcal C_N` is the coefficient/packing ledger carried by the deformation
   variables and the local field;
3. `\mathcal R_N` is the residual cross-rung feed remainder.

The triad should appear inside `(SD.5)` in the following exact way:

1. incompressibility controls the packing side through `\det F=1` and the
   shared deformation class;
2. pressure enters only through the coherent pressure-correction / flux side of
   the neighboring-tower equations;
3. viscosity provides the coercive dissipation on `\delta_h U_k`.

This is the right place to test whether the class-membership route has a real
analytic engine.

## Updated Leading Edge

The leading edge should therefore be read as:

```math
\boxed{
\text{shared packing law} \Longleftrightarrow \text{flow-map distortion ledger;}
}
```

```math
\boxed{
\text{shared one-field law} \Longleftrightarrow \text{scalarized neighboring-tower defect energy;}
}
```

```math
\boxed{
\text{shared participation law} \Longleftrightarrow \text{pressure-viscosity carrier inside the defect-energy evolution.}
}
\tag{SD.6}
```

So the candidate proof surface is:

```math
\boxed{
\text{packing distortion from }F
\quad+\quad
E_N(h,t)
\quad+\quad
\text{the carrier terms generated by }K=-\nabla p+\nu\Delta u.
}
\tag{SD.7}
```

## Exact Boundary

This note does **not** yet claim:

1. a proved defect-energy identity for `(SD.5)`;
2. a proved closure theorem for `E_N(h,t)`;
3. a proved contradiction theorem excluding every class-exit channel;
4. that finite-depth closure automatically upgrades to full regularity.

It records only the sharpened leading-edge claim:

```math
\boxed{
\text{the right update is to replace generic coherence moduli by a scalarized neighboring-tower defect energy,}
}
```

```math
\boxed{
\text{and to carry it together with the flow-map distortion ledger rather than collapsing the route into a sterile continuation norm.}
}
\tag{SD.8}
```

## Source Surfaces

Primary source surfaces behind this update:

1. `problems/navier-stokes/theorem-construction/mpp-class-membership-contradiction-frontier-packet.md`
2. `problems/navier-stokes/theorem-construction/mpp-primitive-class-laws-note.md`
3. `problems/navier-stokes/theorem-construction/mpp-route-native-witness-bundle-note.md`
4. `problems/navier-stokes/theorem-construction/mixed-jet-cross-rung-pairing-matrix.md`
5. `problems/navier-stokes/theorem-construction/mixed-jet-across-rung-feed-picture.md`
6. `problems/navier-stokes/theorem-construction/lagrangian-stokes-bridge-program.md`
