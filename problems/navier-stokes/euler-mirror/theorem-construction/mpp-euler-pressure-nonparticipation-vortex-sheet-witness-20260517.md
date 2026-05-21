# MPP Euler Pressure Nonparticipation Vortex-Sheet Witness

## Status

Theorem-facing proof note for the Euler membership ontology repair.

Role: prove the core claim used by the Euler mirror notes: pressure and
incompressibility do not imply Navier-Stokes-style one-field participation.

## Claim

There are weak incompressible Euler members that satisfy flux-volume balance and
momentum-pressure fidelity while failing one-field smooth coherence.

Equivalently, the base Euler pressure/incompressibility participation predicate

```math
\mathrm{EPart}^{press}
```

does not imply an Euler regularity or one-field predicate such as

```math
\mathrm{EReg}_{N,r,Q}.
```

## Witness

Work locally on a two-dimensional spacetime window crossing the flat interface
`\{y=0\}`. Fix two different constants `a\ne b` and define

```math
u(x,y,t)
=
\begin{cases}
(a,0),& y>0,\\
(b,0),& y<0,
\end{cases}
\qquad
p(x,y,t)=p_0
```

with constant pressure `p_0`.

This is a stationary tangential slip sheet. The normal velocity is zero on both
sides of the interface, and the pressure is the same on both sides.

## Proof Of Weak Euler Membership

First, `u\in L^\infty_{\mathrm{loc}}`, so the weak fluxes are meaningful.

For incompressibility,

```math
\nabla\cdot u=\partial_x u_1+\partial_y u_2=0.
```

There is no distributional delta in the divergence because the normal jump is

```math
[u\cdot n]=0,
\qquad n=(0,1).
```

For momentum, the solution is stationary, so `\partial_t u=0`. Also

```math
u\otimes u
=
\begin{cases}
\begin{pmatrix}a^2&0\\0&0\end{pmatrix},& y>0,\\
\begin{pmatrix}b^2&0\\0&0\end{pmatrix},& y<0.
\end{cases}
```

Taking the distributional divergence gives zero: the only discontinuous entry is
the `11` entry, and it is differentiated in `x`, not in `y`. Equivalently, the
Rankine-Hugoniot defect across the stationary interface is

```math
[(u\otimes u+pI)n]
=
[u(u\cdot n)+pn]
=
[p]n
=0.
```

Since `\nabla p=0`, the weak Euler momentum equation

```math
\partial_t u+\nabla\cdot(u\otimes u)+\nabla p=0
```

holds distributionally. Thus the witness satisfies `EVol` and `EMom`, hence it
is a base Euler member on the local window.

## Failure Of One-Field Coherence

If `a\ne b`, the tangential velocity jumps across `y=0`. The velocity is not
continuous, not classical, and not a single positive-scale smooth field across
the interface. It therefore fails any one-field regularity predicate that
requires continuity, smoothness, or positive-scale cross-interface coherence.

This proves:

```math
\mathrm{Member}_E+\mathrm{EPart}^{press}
\not\Rightarrow
\mathrm{EReg}_{N,r,Q}.
```

## Comparison With Navier-Stokes

For fixed `\nu>0`, the same discontinuous sheet is not an unforced
Navier-Stokes regular member. The viscous term sees the tangential jump:

```math
\nu\Delta u
```

contains an interface distribution rather than a locally integrable smooth
stress. In the Navier-Stokes class-membership route, this is exactly the kind of
defect handled by the pressure-viscosity participation and Field machinery.

Euler lacks that viscous shear participation. Pressure can enforce normal
compatibility and incompressibility, but it does not erase the tangential slip
sheet.

## Consequence For The Repo Claims

1. Shared flux-volume Pack failure exits both incompressible Euler and
   Navier-Stokes, because both equations require distributional
   incompressibility.
2. Euler pressure participation is strictly weaker than NS pressure-viscosity
   participation.
3. `Dead`-like carrier failure and `Jump`-like one-field failure are live
   stronger-class failures over `Member_E`; they are not contradictions of base
   weak Euler membership.
4. Any note that uses pressure alone to infer one-field coherence needs a new
   Euler regularity theorem. It cannot use membership alone.

## Smooth-Data Bridge

This witness is also the zero-thickness limit of smooth stationary shear-layer
Euler solutions, proved in
[mpp-smooth-data-to-euler-nonsmooth-bridge-20260517.md](/Users/thomasbirnie/Workspace/ToE/Research-Consolidation/problems/navier-stokes/euler-mirror/theorem-construction/mpp-smooth-data-to-euler-nonsmooth-bridge-20260517.md).

That bridge proves that smooth Euler one-field flows can approach this
nonsmooth weak member in local `L^p` and distributional topology. It does not
claim finite-time singularity from one fixed smooth datum.
