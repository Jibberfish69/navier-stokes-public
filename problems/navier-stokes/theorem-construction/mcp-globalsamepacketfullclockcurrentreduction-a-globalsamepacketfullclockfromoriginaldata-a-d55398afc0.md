# GlobalSamePacketFullClockCurrentReduction.A

Status: refined after center-to-annulus tail identification.  The rigid
terminal source residue is a full-clock tail readout, not a separate theorem.

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

The material elliptic graph-driver reduction closes the pressure/collar sector
of this graph-compatible clock.  Differentiating

```math
q=L_G^{-1}R(Y_N)
```

gives

```math
\dot q=L_G^{-1}\dot R-L_G^{-1}(\dot L_G)q.
```

The operator term is strain/frame service because

```math
\dot G=-2ASA^\top.
```

The RHS term

```math
R=A_{\ell i}A_{kj}\partial_\ell v_j\partial_kv_i
```

differentiates into coefficient terms, viscous terms, and the pressure-Hessian
feedback.  The coefficient terms are strain/frame service, the viscous terms
are \(dD_N^{vis}\) plus legal collar residue, and the pressure-Hessian feedback
is the strain-equation coordinate

```math
D_tS+S^2+\Omega^2+\nabla^2p=\nu\Delta S.
```

The collar graph differentiates through \(A,G,\phi,\mathbb P_A\); transported
cutoff motion is base collar/frame service and projector motion is
Helmholtz--Leray/Stokes service.  Therefore

```math
d\Omega_N^{press/RHS}+d\Omega_N^{collar}
\le
C_N d\Omega_N^{rel.defect}
+C_N(d\Omega_N^{strain/frame}
+d\Omega_N^{Helmholtz--Leray/Stokes}
+d\Omega_N^{collar/base}
+dD_N^{vis})
+dR_N^{legal}.
```

So pressure/collar is no longer a standalone frontier after graph replacement.

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
That terminal concentration is not an independent clock theorem.  It is the
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
consumer/readout of the finite-action theorem, not a smaller replacement
theorem.

The model

```math
g_m(s)=m\mathbf 1_{(-1/m,0]}(s)
```

still explains why a mere finite \(L^1_s\) endpoint source measure is too weak.
It does not define the live route after annular attachment.  The live route is
the finite tail of \(d\Omega_N^{PLS,graph}\) itself.

## Live equivalent targets

The remaining theorem is the finite rectified action statement for the existing
full clock:

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
Helmholtz--Leray/Stokes projection, collar, annular Cauchy stress, and strain kept as one
packet.

## Verdict

`GlobalSamePacketFullClockFromOriginalData.A` remains open.  The active strict
Gold theorem is finite rectified action of the full same-material PLS record,
equivalently a bounded-below same-material PLS entropy or primitive graph-driver
no-free-upcrossing law.  The rigid strain-aligned terminal atom is downstream
evidence of failure of that clock tail, not a separate endpoint theorem that can
close the route by itself.
