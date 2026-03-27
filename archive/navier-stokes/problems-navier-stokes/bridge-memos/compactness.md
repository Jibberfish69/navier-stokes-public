# Compactness Bridge Memo (Referee-Facing Audit)

## Bridge Target

Prove a compactness upgrade on the classical Navier-Stokes route strong enough to pass to the nonlinear term in the limit, not merely weak compactness.

## Exact Hypotheses Presently Used

- one fixed classical approximation scheme `u^(n)` for the Euclidean three-dimensional Navier-Stokes equation;
- uniform energy control on that scheme;
- time-derivative control in `L^2(0,T;H^(-1)_x)`;
- a classical high-frequency tail estimate on the same sequence.

The last item is the explicit upstream input coming from the scale-barrier side.

## Objects / Function Spaces / Convergence Surfaces

- approximation sequence: `u^(n)` on `(0,T) x R^3`;
- energy surface: `L^infty_t L^2_x cap L^2_t H^1_x`;
- time regularity: `partial_t u^(n) in L^2_t H^(-1)_x`;
- compactness operator:
  `\mathfrak{K}_{R,N}[u^(n),u] := \limsup_{n\to\infty}\|P_{<N}(u^(n)-u)\|_{L^2_tL^2(B_R)} + \sup_m \|P_{>=N}u^(m)\|_{L^2_tL^2(B_R)}`;
- local convergence target: `L^2(0,T;L^2(B_R))` for each radius `R`;
- nonlinear closure target: `u^(n) tensor u^(n) -> u tensor u` in `L^1_t L^1(B_R)`.

## What The Current Package Now Proves

The current package now contains an honest compactness proof on one fixed approximation scheme, conditional only on the named scale-barrier tail estimate.

### Proposition C.1 (Tail-Controlled Local Compactness)

If the approximation scheme satisfies the energy bound, the derivative bound, and the dyadic high-frequency tail estimate

`sup_n int_0^T ||P_(>= N) u^(n)(t)||_(L^2_x)^2 dt <= C_* 2^(-2 delta N),`

then `{u^(n)}` is precompact in `L^2(0,T;L^2(B_R))` for every radius `R > 0`.

### Proof

Split the sequence into low and high frequencies. The low-frequency slice is compact on each ball by Aubin-Lions, because bounded Fourier support upgrades the energy and time-derivative bounds to a compact `H^1(B_R) -> L^2(B_R)` setting. The high-frequency slice is made uniformly small by the tail estimate. The sum of those two facts gives local strong compactness.

### Proposition C.2 (Nonlinear Term Closure)

If `u^(n) -> u` strongly in `L^2(0,T;L^2(B_R))` for every `R`, then

`u^(n) tensor u^(n) -> u tensor u`

in `L^1(0,T;L^1(B_R))` for every `R`, hence in distributions.

### Proof

Write the tensor difference as

`(u^(n) - u) tensor u^(n) + u tensor (u^(n) - u)`,

and estimate it by Cauchy-Schwarz on `L^2_t L^2_x`. The strong convergence factor tends to zero and the energy bound controls the remaining factors.

## What Remains Conditional Or Unsupported

- the classical high-frequency tail estimate is still an upstream unresolved theorem input;
- the pressure recovery and divergence-free limit passage should be stated explicitly in the final paper even though they do not appear to be the decisive obstruction.

## Where Modified-Equation Dependence Must Be Excluded

- the tail estimate cannot be inherited from hyperviscous, morphic, filtered, or otherwise altered dynamics unless it is re-proved on the classical sequence;
- any smoothing or truncation used inside the proof must be removable and must not become a surrogate equation at the decisive step.

## Final Verdict

`discharged`

The compactness bridge is now a downstream proof package on one fixed classical approximation scheme. Its remaining dependence is explicit but upstream: it consumes the classical scale-barrier tail estimate and does not introduce a separate unresolved theorem invention of its own.
