# Euler projective terminal Cauchy closure — no weights

Let

X_∞ := H^∞_σ = ⋂_{M≥0} H^M_σ = projlim_M H^M_σ,

with canonical seminorms p_M(f)=||f||_{H^M}. Let V_n=∂_t^n u and Q_n=∂_t^n p on one smooth incompressible Euler history.

## 1. Every rung has the same intersection

The differentiated Euler rows are

V_{n+1}+F_n+∇Q_n=0,
F_n:=Σ_{k=0}^n C(n,k)(V_k·∇)V_{n-k},
∇·V_n=0.

Leray gives

V_{n+1}=-P F_n,
∇Q_n=-(I-P)F_n.

Since differentiation, multiplication, P, and the Riesz transforms are continuous on X_∞ in the projective topology, if V_0,...,V_n∈X_∞ then F_n∈X_∞, V_{n+1}∈X_∞, and Q_n∈H^∞. Thus induction gives the same spatial intersection on every temporal rung.

## 2. Exact pressure-complete projective splitting

For every M, J^M=(1-Δ)^{M/2} commutes with P. P and I-P are orthogonal in L^2. Therefore

||F_n||_{H^M}^2
 = ||P F_n||_{H^M}^2 + ||(I-P)F_n||_{H^M}^2
 = ||V_{n+1}||_{H^M}^2 + ||∇Q_n||_{H^M}^2.

This holds for every M simultaneously, hence defines an exact compatible identity on the projective system. Pressure occupies the gradient component of the same H^M coordinate at every height, while V_{n+1} occupies the divergence-free component. In particular

||V_{n+1}||_{H^M} ≤ ||F_n||_{H^M},
||∇Q_n||_{H^M} ≤ ||F_n||_{H^M}

for every M, as coordinate projections of the intersection-level split.

## 3. Terminal limit entirely inside X_∞

Because X_∞ is a complete Fréchet/projective-limit space, a terminal field V_n(T_*)∈X_∞ exists exactly when V_n(t) is Cauchy in every projective coordinate:

for every M, ||V_n(t)-V_n(s)||_{H^M}→0 as t,s↑T_*.

Since ∂_tV_n=V_{n+1},

V_n(t)-V_n(s)=∫_s^t V_{n+1}(τ)dτ

in every H^M coordinate, so

||V_n(t)-V_n(s)||_{H^M}
 ≤ ∫_s^t ||V_{n+1}(τ)||_{H^M}dτ
 ≤ ∫_s^t ||F_n(τ)||_{H^M}dτ.

Thus the terminal intersection is obtained directly from the common intersection once the projective nonlinear current F_n has vanishing tails in every coordinate.

## 4. Estimates are projections of the intersection identity

For each M, the X_∞ product law projected to H^M gives, schematically,

||F_n||_{H^M}
 ≤ C_{n,M} Σ_{k=0}^n ||V_k||_{H^{M+2}} ||V_{n-k}||_{H^{M+3}}.

Hence

||V_n(t)-V_n(s)||_{H^M}
 ≤ C_{n,M} Σ_k ∫_s^t ||V_k||_{H^{M+2}} ||V_{n-k}||_{H^{M+3}} dτ.

The logical direction is intersection → pressure-complete projective identity → coordinate projection → finite-H^M estimate.

## 5. Exact boundary of what the projective algebra proves

Membership V_j(t)∈X_∞ for each strict t<T_* makes every integrand finite pointwise. Projective membership alone supplies no uniform upper relation among the seminorms p_M as t approaches T_*. A smooth curve in X_∞ can have every p_M finite for every strict time while p_M→∞ at the endpoint. The upward-shift product estimates therefore do not by themselves make the tail integrals vanish.

The exact no-weights terminal target is consequently the projective Cauchy statement

∀n,M:  lim_{s,t↑T_*} ||V_n(t)-V_n(s)||_{H^M}=0,

or equivalently a directly derived vanishing-tail estimate for the same pressure-complete nonlinear currents F_n. Once this holds, completeness of X_∞ gives one V_n(T_*) in every H^M simultaneously, and the already-closed intersection→C^∞→restart theorem applies.

This note establishes the exact pressure-complete projective splitting and the terminal Cauchy reduction without weighted scalarization. It does not claim the vanishing-tail estimate is proved from Euler at this step.