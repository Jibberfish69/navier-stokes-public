# Euler terminal horizontal intersection producer — direct closure attempt

## Target
For one maximal smooth finite-energy 3D Euler history on [0,T_*), prove from u_0 in H^infty_sigma that for every n there exists one terminal field V_n(T_*) satisfying V_n(T_*) in H^M for every M>=0. Downstream intersection -> C^infty -> restart is already closed.

## 1. Strict-subterminal pressure-complete intersection
For every t<T_*, smooth local Euler theory gives u(t) in H^infty. Setting V_n=partial_t^n u and Q_n=partial_t^n p, the differentiated row is

V_{n+1}+sum_{k=0}^n C(n,k)(V_k dot grad)V_{n-k}+grad Q_n=0,

Q_n=R_iR_j sum_{k=0}^n C(n,k)(V_k)_i(V_{n-k})_j.

R_iR_j is order zero and commutes with Lambda^M. Thus pressure reaches every finite H^M coordinate and hence the spatial H^infty intersection on every rung at every strict time t<T_*.

## 2. Terminal retention is a separate projective-topology statement
The terminal conclusion requires, for each fixed M, enough whole-terminal control to make V_n(t) Cauchy in H^M as t approaches T_*. Pointwise membership V_n(t) in H^M for every t<T_* supplies finite values at each strict time and leaves the supremum over t<T_* unrestricted.

A model curve shows the distinction. Let phi be smooth, compactly supported, divergence-free and set f(t,x)=K(t)^{3/2}phi(K(t)x), with K(t) finite for t<T_* and K(t)->infinity as t->T_*. Then ||f(t)||_2 is constant and ||Lambda^M f(t)||_2=K(t)^M||Lambda^M phi||_2. Hence f(t) belongs to H^infty for every strict t, while every M>0 seminorm diverges at the terminal face. Applying any order-zero Riesz operator preserves the same strict-time H^infty property. This is a topology countertest to the inference strict-time intersection -> terminal intersection.

## 3. Euler energy identities at every height
For each M,

(1/2)d/dt ||Lambda^M u||_2^2 = -< [Lambda^M,u dot grad]u, Lambda^M u >.

Incompressibility cancels the leading transport pairing. Pressure contributes zero direct work in the H^M pairing. The surviving commutator has indefinite sign and transfers energy among spatial frequencies.

Summing all heights with positive weights w_M gives a generating energy E_W=(1/2)int W(|xi|^2)|u_hat|^2 and exact evolution

E_W' = -1/2 < [W(-Delta),u dot grad]u,u >.

Pressure/incompressibility therefore provide coherent all-height closure and conservative transfer. The summed law contains no positive coercive term controlling the terminal supremum of every Sobolev seminorm.

## 4. Scaling
Euler scaling transports every H^M coordinate covariantly and preserves the dimensionless deformation action. It supplies the unrestricted spatial labeling of each rung and no terminal compactness estimate for the original history.

## 5. Exact surviving theorem
The live theorem is a same-history terminal-retention estimate, for example

forall M: sup_{t<T_*} ||u(t)||_{H^M} < infinity,

or an equivalent H^M-Cauchy/compactness statement at the terminal face, derived from the pressure-complete Euler history itself. Once this holds, the established diagonal recurrences give every V_n(T_*) and Q_n(T_*) in every H^M, hence H^infty, C^infty, and restart.

## Verdict
The all-height pressure-complete intersection is proved on every strict subterminal slice. The endpoint theorem is proved downstream of terminal retention. The direct implication from strict-subterminal all-height pressure closure plus Euler scaling to whole-terminal retention remains the unresolved global 3D Euler regularity theorem. The exact missing object is terminal projective compactness / uniform Sobolev retention on the same Euler history.