# GlobalSamePacketFullClockCurrentReduction.A

Status: refined after center-to-annulus tail identification.  The rigid
terminal source residue is a full-clock tail readout, not a separate producer.

## Target

Prove finite graph-compatible full material clock:

```math
\int_0^{T^*}d\Omega_N^{PLS,graph}<\infty,
\qquad
d\Omega_N^{PLS,graph}
=
d\Omega_N^{free\ material}+d\Omega_N^{rel.defect}+d\Omega_N^{recirc,finite}.
```

## Installed reductions

Pressure/collar pointwise lobe action is no longer the active obstruction.  The graph-compatible split

```math
Z_N=(q,C_N)=\Gamma_N(Y_N)+W_N
```

keeps the pressure/collar material record controlled by free material graph drivers plus the Schur relative defect.  The exact global graph makes \(W_N=0\); localized harmonic/collar pieces are interface/legal bookkeeping.

Coefficient-frame service is paid by top-strain log storage.  Annular stress-work has bounded-below storage.  Wrong-sign recirculation is finite.

## Remaining free-material branch

The free positive PLS action splits into return and fresh parts:

```math
d\Omega_N^{free,+}=d\Omega_N^{return,+}+d\Omega_N^{fresh,+}.
```

Return is covered by the installed recirculation closure.  Fresh events require a native birth-packing/no-reuse theorem.  Existing reductions pay inherited reserve, visible reserve, finite donor trees, non-Zeno refill, legal/projector/cutoff/boundary/off-family exits, angular/ASAC turnover, and already-counted recirculation.

The older reduction named the unresolved branch as a rigid strain-aligned
terminal concentration with finite \(L^1_s\) mass and no installed temporal
thickness estimate.  The center-to-annulus identity sharpens that statement.
That terminal concentration is not an independent clock producer.  It is the
terminal tail readout of the same transported annular PLS clock.

For the transported center cutoff,

```math
{d\over dt}M_C(t)
+2\nu\int\phi_C|S|^2\,dx
=
-\int u\cdot(-pI+2\nu S)\nabla\phi_C\,dx,
```

and the right-hand side is supported on the same transported annulus.  Hence
the center endpoint defect satisfies

```math
\mu_C((T_*-\theta,T_*])
\le
C\int_{T_*-\Theta(\theta)}^{T_*}d\Omega_N^{PLS,graph}.
```

Therefore finite full graph-compatible PLS clock implies the terminal
anti-atom immediately.  Conversely, a surviving rigid terminal atom is exactly
a failure of absolute continuity for the tail of the same full clock.  It is a
consumer/readout of the missing producer, not a smaller replacement producer.

The model

```math
g_m(s)=m\mathbf 1_{(-1/m,0]}(s)
```

still explains why a mere finite \(L^1_s\) endpoint source measure is too weak.
It does not define the live route after annular attachment.  The live route is
the finite tail of \(d\Omega_N^{PLS,graph}\) itself.

## Live equivalent targets

The remaining theorem must supply the full-clock producer directly:

```math
\int_0^{T^*}d\Omega_N^{PLS,graph}<\infty,
```

or an equivalent bounded-below same-material entropy:

```math
\exists\,\mathscr A_N(t)\ge -C_N(u_0)
\quad\text{with}\quad
d\mathscr A_N+c_Nd\Omega_N^{PLS,graph}\le dR_N^{legal},
\qquad
\int_0^{T^*}dR_N^{legal}<\infty.
```

At the current primitive-driver level this is the same as finite positive
variation of the low material coefficient itself:

```math
\int_0^{T^*}
\|\mathcal M_{<j-C,N}(t)\|_{\mathcal X_N}^{+,\mathrm{rect}}\,dt
<\infty,
```

with pressure, viscosity, incompressibility, velocity, material frame,
Hodge/Stokes projection, collar, annular Cauchy stress, and strain kept as one
packet.

## Verdict

`GlobalSamePacketFullClockFromOriginalData.A` remains open.  The active strict
Gold producer is the bounded-below full same-material PLS entropy / primitive
graph-driver no-free-upcrossing theorem.  The rigid strain-aligned terminal
atom is downstream evidence of failure of that clock tail, not a separate
endpoint theorem that can close the route by itself.
