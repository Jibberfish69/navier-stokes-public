# Euler whole-horizontal Fréchet closure test

## Fixed object
Let V_n=∂_t^n u and Q_n=∂_t^n p on one smooth 3D incompressible Euler history. Retain the full horizontal Sobolev intersection on every temporal rung. The endpoint theorem downstream is assumed established: terminal membership V_n(T*)∈H^M for every M implies V_n(T*)∈H^∞⊂C^∞ and restart.

## 1. Pressure-complete rung generating law
The differentiated equations are

V_{n+1}+Σ_{k=0}^n C(n,k)(V_k·∇)V_{n-k}+∇Q_n=0,
∇·V_n=0,
Q_n=R_iR_j Σ_{k=0}^n C(n,k)(V_k)_i(V_{n-k})_j.

Introduce formal exponential generating jets

U(z)=Σ_{n≥0} z^n V_n/n!,
P(z)=Σ_{n≥0} z^n Q_n/n!.

The binomial convolution reconstructs coefficientwise

∂_t U+(U·∇)U+∇P=0,
∇·U=0.

Thus pressure reaches the complete horizontal spatial system on every rung and remains pressure-complete after the entire temporal jet is assembled. No temporal rung is independent.

## 2. One positive Fréchet energy for the full spatial intersection
Choose positive weights w_M and W(r)=Σ_{M≥0}w_M r^M, with weights chosen so the datum has finite weighted energy. Set

E_W(U)=1/2 Σ_M w_M ||Λ^M U||_2^2
      =1/2 ∫ W(|ξ|^2)|Û(ξ)|^2 dξ.

Finiteness of E_W implies every individual H^M seminorm is finite because w_M>0.

Pressure and incompressibility give the exact whole-horizontal balance

d/dt E_W(U)
 = -1/2 ⟨[W(-Δ),U·∇]U,U⟩.

Equivalently, after triad symmetrization,

d/dt E_W(U)
 = 1/2 ∬_{η+ζ=ξ}[W(|ξ|^2)-W(|ζ|^2)] T_U(ξ←ζ;η) dη dζ,

where T_U is the pressure-complete incompressible triad transfer.

For W≡1 the bracket vanishes and kinetic energy is conserved. For any nonconstant positive W the bracket is generally nonzero. The production is cubic in U, so under U↦-U the weighted energy is unchanged while its instantaneous derivative changes sign. Hence no nonconstant positive all-height quadratic weighting has a universal monotone sign supplied by pressure/incompressibility.

## 3. Full rung sum adds no hidden coercivity
The generating jet U(z) obeys the same Euler equation coefficientwise. Therefore any positive average/sum over temporal rungs of the spatial Fréchet energy is an average/sum of the same sign-indefinite commutator production. The binomial cross-rung structure reconstructs the Euler nonlinearity exactly; it introduces no additional positive term beyond the pressure-complete spatial balance.

Energy differentiated in time does yield identities

Σ_{k=0}^n C(n,k)⟨V_k,V_{n-k}⟩=0,

but these are indefinite orthogonality/curvature identities. They do not bound Σ||V_n||^2 or the spatial seminorms.

## 4. Exact terminal distinction
For every strict t<T*, smoothness gives V_n(t),Q_n(t)∈H^∞ on every rung. The terminal intersection requires whole-terminal boundedness of each seminorm, e.g.

sup_{t<T*}||V_n(t)||_{H^M}<∞

for every n,M, followed by the established endpoint trace/intersection theorem.

The complete pressure/incompressibility/scaling algebra proves coherence of all horizontal coordinates and exact cancellation of direct pressure work and leading transport. Its positive Fréchet sum retains a sign-indefinite conservative transfer term. Therefore the all-height algebra alone does not furnish a coercive whole-terminal estimate.

## Verdict
The user's ontology is represented exactly by the generating system: pressure is present through the entire spatial intersection on every temporal rung, and the complete temporal jet reconstructs one pressure-complete Euler equation. The attempted direct closure by summing the full horizontal intersection fails at the remaining conservative triad-transfer term. A valid global proof must derive additional history-level control of that transfer from the Euler dynamics; covariance, pressure slaving, incompressibility cancellations, and the bare M→∞ sum do not by themselves yield terminal boundedness.