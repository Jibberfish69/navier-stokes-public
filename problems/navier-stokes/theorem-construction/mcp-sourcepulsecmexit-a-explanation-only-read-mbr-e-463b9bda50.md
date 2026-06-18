# Explanation-only note: source-pulse CM-exit proof sketch

This note records an explanatory read of the source-pulse CM-exit argument. It makes no new discharge claim.

Read surfaces:
- problems/navier-stokes/theorem-construction/mpp-retained-field-anchored-toweramp-sourcepulse-closure-20260503.md
- problems/navier-stokes/theorem-construction/mpp-sourcepulse-cm-three-exit-target-map-note-20260503.md
- theorem_work_brief for SourcePulseCMExit.A / MBR.E / retained Field tower closure

Mathematical spine:

Let P_n=(Q_n^Phi,j_n,I_n) be a terminal same-fluid source-pulse family used as the genuine nonsmooth PDE occurrence at (x_*,T_*). The retained CM branch is Pack_{Q_n}, Part_{N+2,Q_n}, and Field^{<=C}_{N+2,r,Q_n} on the same approaching family, with fixed r>0 and finite C after endpoint extraction.

The tower amplitude is A_{N,Q_n}(t)=sup_{x in Q_{n,t}} sum_{k=0}^N (|U_k(x,t)|+|K_k(x,t)|), where U_k=nabla^k u and K_k=-nabla^{k+1}p+nu Delta U_k.

The retained Field hypothesis supplies a fixed positive spatial scale and
finite-difference coherence. The base rung is anchored by oscillation plus
energy, not by a profile model. On a retained cover ball `B(c(t),r)`, set

```math
\Omega_q(r/2,t):=
\sup_{x,y\in B(c(t),r/2)} |U_q(x,t)-U_q(y,t)|.
```

If `x_0 in B(c(t),r/4)` and `M=|u(x_0,t)|`, then

```math
M
\le
\Omega_0(r/2,t)
+
|B(c(t),r/2)|^{-1/2}
\|u(\cdot,t)\|_{L^2(B(c(t),r/2))}.
```

This follows from `|u(x_0,t)| <= |u(y,t)|+\Omega_0(r/2,t)` for every
`y in B(c(t),r/2)`, followed by integration in `y`. The energy inequality
bounds the local `L^2` term, and retained Field bounds `\Omega_0`, so `U_0` is
bounded on the retained cover.

For `k>=1`, use the compatibility `U_q=\nabla^q u` on the same retained field
window and the finite-order anchoring inequality

```math
\|U_k(\cdot,t)\|_{L^\infty(B(c(t),r/4))}
\le
C_{k,r}
\left(
\|u(\cdot,t)\|_{L^2(B(c(t),r/2))}
+
\sum_{q=0}^{k} r^q\Omega_q(r/2,t)
\right).
```

Thus every finite velocity rung through the retained depth is bounded from the
same Field oscillation moduli and the same energy bound. For force rungs, Part
supplies the shared pressure-viscosity carrier envelope; escape of that envelope
is a Part-face failure rather than a retained Pack+Part+Field branch. On the
retained branch, the finite `K_k` envelope is bounded on the same cover
elements. Summing finitely many `U_k` and `K_k` terms gives
`A_{N,Q_n} in L^infty(I_n)`, so tower-blown cannot occur on retained
Pack+Part+Field.

The MBR.E routing says genuine PDE nonsmoothness must manifest as packing-detached, tower-blown, or Jump. packing-detached routes to Pack failure. Jump with Pack and Part retained routes to Field failure. tower-blown is eliminated on retained Pack+Part+Field by the retained-field tower closure. Therefore a terminal source-pulse genuine nonsmooth witness implies not Pack or not Part or not Field.

Boundary: this explanation concerns the manifestation-level SourcePulseCMExit.A closure. It does not prove absolute source-pulse exclusion from original smooth data, and it does not promote the full Navier-Stokes Millennium proof.
