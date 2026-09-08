# Euler Sobolev intersection endpoint and same-history restart

## Conditional input
Assume the upstream all-height record theorem: for every finite M,

sup_{0≤t<T_*} ||u(t)||_{H^M}<∞,

with the records compatible in M and generated on one Euler history.

## 1. Terminal state
Fix any finite M. Choose K>M+2 with K>5/2. The uniform H^K bound gives, by the Euler equation and standard Sobolev product estimates,

||∂_t u(t)||_{H^{K-1}} ≤ C_K ||u(t)||_{H^K}^2.

Hence u is Lipschitz in time into H^{K-1}. In particular it is Cauchy as t↑T_* in H^{K-1}, so there exists a unique terminal trace u_* in H^{K-1}. Since K can be chosen arbitrarily large, the same terminal distribution belongs to H^M for every finite M.

Compatibility of the finite records implies one common terminal field

u_*∈⋂_{M<∞}H^M.

## 2. Smoothness
For every integer r≥0 choose M>r+3/2. Sobolev embedding gives

H^M(R^3)↪C^r_b(R^3).

Therefore u_*∈C^r for every finite r, hence

u_*∈C^∞.

The pressure trace is recovered from

p_*=R_iR_j(u_{*,i}u_{*,j}),

so the full pressure-complete spatial jet is smooth as well.

## 3. Restart
Choose any s>5/2. Since u_*∈H^s is divergence-free, standard local well-posedness for 3D Euler produces a unique H^s solution on [T_*,T_*+δ]. On [T_*−ε,T_*], the original history is also an H^s solution converging strongly to u_* at T_*. Uniqueness identifies the restarted solution with the continuation of the same history.

Thus a finite maximal smooth time T_* is impossible once the all-height records are uniformly whole-terminal.

## 4. Closed conditional pipeline
The Euler route therefore has a complete downstream finish:

same-history finite centered-generator-word bounds at every finite word
→ compatible finite H^M records for every M
→ u_*∈⋂_M H^M
→ u_*∈C^∞
→ local Euler restart from u_*
→ continuation past T_*.

The sole unresolved theorem remains upstream: obtain the same-history uniform centered-generator-domain estimate through T_* from genuinely Eulerian dynamics. Scaling symmetry supplies the spatial Lie algebra and pressure supplies covariance, while the required norm control is not furnished by those two facts alone.