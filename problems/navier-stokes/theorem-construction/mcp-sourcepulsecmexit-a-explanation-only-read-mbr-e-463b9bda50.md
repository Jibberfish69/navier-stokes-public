# Explanation-only note: source-pulse CM-exit proof sketch

This note records an explanatory read of the source-pulse CM-exit argument. It makes no new discharge claim.

Read surfaces:
- problems/navier-stokes/theorem-construction/mpp-retained-field-anchored-toweramp-sourcepulse-closure-20260503.md
- problems/navier-stokes/theorem-construction/mpp-sourcepulse-cm-three-exit-target-map-note-20260503.md
- theorem_work_brief for SourcePulseCMExit.A / MBR.E / retained Field tower closure

Mathematical spine:

Let P_n=(Q_n^Phi,j_n,I_n) be a terminal same-fluid source-pulse family used as the genuine nonsmooth PDE occurrence at (x_*,T_*). The retained CM branch is Pack_{Q_n}, Part_{N+2,Q_n}, and Field^{<=C}_{N+2,r,Q_n} on the same approaching family, with fixed r>0 and finite C after endpoint extraction.

The tower amplitude is A_{N,Q_n}(t)=sup_{x in Q_{n,t}} sum_{k=0}^N (|U_k(x,t)|+|K_k(x,t)|), where U_k=nabla^k u and K_k=-nabla^{k+1}p+nu Delta U_k.

The retained Field hypothesis supplies a fixed positive spatial scale and finite-difference coherence. Energy bounds the base rung U_0. Indeed, if |u(x_0,t)|=M and Field gives |u(x,t)-u(y,t)| <= C|x-y| for |x-y|<=r, then |u|>=M/2 on a ball of radius rho=min(r,M/(2C)). The energy bound gives E_0 >= c M^2 rho^3, so M is bounded. For M<=2Cr the bound is immediate; for M>2Cr, rho=r and M^2<=C_r E_0.

For k>=1, the finite-difference bound on U_{k-1} gives |nabla U_{k-1}|=|U_k|<=C on the preterminal smooth window. For force rungs, Part gives the base force envelope K_0, and Field gives |K_k|<=C through the finite-difference bound on K_{k-1}. Summing finitely many bounded U_k and K_k terms gives A_{N,Q_n} in L^infty(I_n), so tower-blown cannot occur on retained Pack+Part+Field.

The MBR.E routing says genuine PDE nonsmoothness must manifest as packing-detached, tower-blown, or Jump. packing-detached routes to Pack failure. Jump with Pack and Part retained routes to Field failure. tower-blown is eliminated on retained Pack+Part+Field by the retained-field tower closure. Therefore a terminal source-pulse genuine nonsmooth witness implies not Pack or not Part or not Field.

Boundary: this explanation concerns the manifestation-level SourcePulseCMExit.A closure. It does not prove absolute source-pulse exclusion from original smooth data, and it does not promote the full Navier-Stokes Millennium proof.