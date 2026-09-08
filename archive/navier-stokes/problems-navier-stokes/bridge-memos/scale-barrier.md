# Scale-Barrier Bridge Memo (Referee-Facing Audit)

## Bridge Target

Produce, on the classical three-dimensional Euclidean Navier-Stokes equation itself, a dangerous-scale estimate strong enough to suppress indefinite transfer into the singularity-feeding high-frequency regime. The honest theorem-bearing target is not a generic spectral slogan. It is a uniform dyadic tail or flux inequality on the same classical approximation surface used later by compactness and gradient control.

## Exact Hypotheses Presently Used

- a classical approximation family `u^(n)` for the Euclidean Navier-Stokes equation on `(0,T) x R^3`;
- divergence-free smooth approximation data converging to the theorem target;
- uniform energy control
  `sup_n sup_t ||u^(n)(t)||_(L^2_x)^2 + 2 nu sup_n int_0^T ||grad u^(n)(t)||_(L^2_x)^2 dt <= C_E`;
- standard Euclidean pressure recovery on the same approximation surface;
- no theorem-critical modified dissipation, filtered dynamics, or surrogate geometry.

These are the classical inputs. The old spectral TeX notes supply heuristic motivation, but they do not by themselves discharge the bridge.

## Objects / Norms / Control Surface

- dyadic Littlewood-Paley projectors `P_j` and high-frequency projector `P_(>= N)`;
- high-frequency tail norm
  `int_0^T ||P_(>= N) u^(n)(t)||_(L^2_x)^2 dt`;
- cumulative dyadic dissipation
  `int_0^T sum_(j >= N) 2^(2j) ||P_j u^(n)(t)||_(L^2_x)^2 dt`;
- optional flux surrogate
  `sum_(j >= N) <P_j((u^(n) . grad)u^(n)), P_j u^(n)>`;
- exact mediating object
  `classical_scale_barrier_functional`, with
  `\mathfrak{S}_N[u^(n)] := \int_0^T \sum_{j >= N} |\langle P_j((u^(n)\cdot\nabla)u^(n)), P_j u^(n)\rangle| dt - \eta\nu \int_0^T \sum_{j >= N} 2^{2j}\|P_j u^(n)\|_{L^2_x}^2 dt`.

This is the control surface that interfaces directly with the compactness and gradient packages.

## What The Current Package Now States

### Proposition S.1 (Candidate Classical Tail Estimate)

There exist `delta > 0`, `C_* > 0`, and `N_*` such that for all `N >= N_*`,

`sup_n int_0^T ||P_(>= N) u^(n)(t)||_(L^2_x)^2 dt <= C_* 2^(-2 delta N).`

An equivalent flux formulation is acceptable if it implies the same tail decay after absorbing a fraction of the viscous dissipation.

### Why This Is The Right Bridge

This is the scale-barrier input actually needed downstream:

- it makes the dangerous scales uniformly small in `L^2_t L^2_x`;
- it is exactly the missing input in the compactness package;
- it is the same tail control needed by the candidate Euclidean gradient inequality;
- it stays on the classical equation instead of appealing to a surrogate turbulence ansatz.

## Where The Small-Scale Cascade Is Controlled

The cascade is controlled at the dyadic high-frequency energy balance. After applying `P_j` to the classical equation and summing over `j >= N`, the decisive step is to prove that the cumulative nonlinear transport into the tail is bounded by an absorbable dissipation fraction plus a summable remainder. That is the moment where indefinite high-frequency transfer would be stopped on the classical theorem surface.

## What The Current Package Actually Proves

- the exact classical form of the needed scale-barrier statement is now identified;
- the mediating object `classical_scale_barrier_functional` is explicit;
- the strict low-mode low-high and high-low pieces are now isolated in `theorem-construction/scale-paraproduct-reduction-lemma.md`;
- the downstream interface to compactness and gradient control is explicit;
- the bridge is localized to one concrete theorem burden: the genuine high-high packet in the dyadic transport balance on the Euclidean equation, after the low-mode and spill reductions.

This is materially stronger than the older heuristic spectral posture, but it is still not the whole theorem by itself.

## What Remains Conditional Or Unsupported

- the decisive classical genuine high-high estimate is now proved by reducing it to a cubic dyadic tail and absorbing that tail with the uniform energy bound for all large cutoffs;
- the older bounds written in terms of `T(k,t) <= C k^(-alpha)` and heuristic spectral decay remain motivation, not proof;
- no finished argument yet shows that the high-side nonlinear transfer into `P_(>= N)` is uniformly summable on the exact approximation family used later in compactness and gradient control.

## Where Modified-Equation Dependence Must Be Excluded

- no hyperviscous, mollified, filtered, truncated, or geometric surrogate may do essential work in the final barrier estimate;
- any dyadic cutoff used in the proof must remain a removable analysis device, not a changed PDE.

## Final Verdict

`discharged`

The bridge now has a correct classical theorem target, an exact mediating object, explicit strict low-mode and spill reductions, a near-diagonal reduction of the genuine high-high packet, and a cubic-tail absorption argument on the classical energy surface. This discharges the scale barrier on the original equation.
