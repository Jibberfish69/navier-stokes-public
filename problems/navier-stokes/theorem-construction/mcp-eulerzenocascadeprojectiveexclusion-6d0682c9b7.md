# Euler Zeno-cascade projective exclusion — exact shell formulation

Let u solve 3D incompressible Euler on R^3 and let the smooth finite-energy datum be one divergence-free velocity field

u(0)=u_0 in I_sigma := intersection_{M>=0} H^M_sigma.

Pressure is not independent initial data: -Delta p_0 = partial_i partial_j(u_{0i}u_{0j}), up to an additive constant. The whole temporal jet is recursively generated from u_0 by V_{n+1}=-P F_n and Q_n=R_iR_j sum_k C(n,k)(V_k)_i(V_{n-k})_j.

For a Littlewood-Paley decomposition u_j=P_j u at dyadic frequency K_j=2^j, define shell energy e_j(t)=1/2 ||u_j(t)||_2^2. Smooth finite-energy Euler conserves E_0=sum_j e_j. Membership u(t) in I_sigma is equivalent, at the level of dyadic moments, to

for every M: sum_j K_j^{2M} e_j(t) < infinity.

Thus the intersection means super-polynomial decay of the shell-energy tail at each fixed time.

Define u_{<=J}=P_{<=J}u and E_{<=J}=1/2||u_{<=J}||_2^2. Leray projection and incompressibility eliminate pressure work and give the exact flux identity

d/dt E_{<=J}(t) = -Pi_J(t),
Pi_J(t)=<u . grad u, u_{<=J}> = -<u . grad u,u_{>J}> up to the chosen sign convention.

Consequently

|Pi_J(t)| <= ||u_{>J}(t)||_2 ||u(t).grad u(t)||_2.

For every projective coordinate M,

||u_{>J}||_2 <= C 2^{-MJ}||u||_{H^M},

hence

|Pi_J(t)| <= C_M 2^{-MJ} ||u(t)||_{H^M} ||u(t)||_{H^2} ||u(t)||_{H^1}.

This estimate is derived from the intersection and holds for every M separately; no weighting across M is used. It proves that at every strict smooth time the energy flux toward infinite frequency decays faster than every fixed power of the cutoff.

The exact Zeno-exclusion target is therefore uniform projective tail tightness:

for every finite T and every M,
lim_{J->infinity} sup_{0<=t<T} sum_{j>J} K_j^{2M} e_j(t)=0.

This condition gives whole-terminal boundedness in every H^M and hence the already-proved terminal intersection/restart theorem.

Two structural cautions are part of the formulation. First, finite total energy distributed among infinitely many simultaneous packets only implies e_j->0; it does not imply projective smoothness, since K_j^{2M}e_j can diverge. Second, a cascade can transfer the same energy sequentially from shell to shell rather than divide it irreversibly among all shells. Smooth Euler conserves total kinetic energy, so any Zeno mechanism relevant to regularity must be a no-finite-time-transfer-to-infinite-frequency theorem, rather than global energy dissipation.

Absence of a unique Euler scaling-critical Sobolev height removes a universal distinguished height, but a moving cascade can still generate an effective scale-amplitude trajectory. The proof burden is to use the full pressure-complete Euler dynamics to establish uniform projective tail tightness and thereby exclude that trajectory.

Finally, global regularity should be separated from decay to rest. Nontrivial smooth compactly supported steady 3D Euler solutions exist, so T_*=infinity means infinite smooth lifespan, not u(t)->0. The useful NS/Euler comparison is at the balance-law level: NS has conservative nonlinear flux plus viscous high-frequency damping; Euler has the same conservative transfer architecture without the viscous damping term. No general pointwise ordering of their Sobolev norms is asserted.