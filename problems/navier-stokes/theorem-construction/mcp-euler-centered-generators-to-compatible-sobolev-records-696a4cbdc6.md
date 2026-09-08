# Euler centered-generator algebra to compatible all-height Sobolev records

## Conditional input
Fix one temporal rung V_n on [0,T_*). Choose one center c and the three shifted centers c+e_j. Let

L_c=(x-c)·∇-1,

so that

∂_j=L_c-L_{c+e_j}.

Assume the missing same-history analytic estimate has been supplied in the following finite-word form: for every finite word W=L_{c_1}...L_{c_k} built from the four centers {c,c+e_1,c+e_2,c+e_3},

sup_{t<T_*} ||W V_n(t)||_2 < ∞.

No uniformity in word length is required.

## 1. Cartesian derivatives are finite combinations of generator words
For a multi-index β=(β_1,β_2,β_3),

∂^β = Π_{j=1}^3 (L_c-L_{c+e_j})^{β_j}.

Expanding the finite product gives a sum of at most 2^{|β|} centered-generator words, each of length |β|. Hence

||∂^β V_n(t)||_2
≤ Σ_{W∈Exp(β)} ||W V_n(t)||_2,

and therefore

sup_{t<T_*} ||∂^β V_n(t)||_2<∞

for every finite β.

## 2. Finite Sobolev records
For every finite M define

R_{n,M}(T_*):={sup_{t<T_*}||∂^βV_n(t)||_2<∞ for all |β|≤M}.

The generator-word hypothesis implies R_{n,M}(T_*) for every finite M. Equivalently,

sup_{t<T_*}||V_n(t)||_{H^M}<∞

for every finite M.

The constants may depend on n,M,u_0,T_*, and the chosen finite center set. The projective construction requires only finiteness at each finite M.

## 3. Compatibility is automatic
The records are restrictions of one same-history derivative family. Hence

R_{n,M+1}|_{|β|≤M}=R_{n,M}.

No separate compatibility theorem is needed once the generator-domain estimate is established on one physical history.

## 4. Terminal traces
For each finite M, a uniform H^M bound alone gives weak-* precompactness in L^∞(0,T_*;H^M). To obtain a strong terminal H^M trace from the Euler equation, use one additional finite order. If V_n is uniformly bounded in H^{M+1} and the pressure-complete right-hand side for ∂_tV_n is uniformly bounded in H^{M-1} (available from sufficiently high finite records and standard Sobolev product estimates), then V_n is uniformly continuous into H^{M-1}. Iterating with arbitrarily high finite records yields a unique compatible terminal distribution V_n(T_*) whose restrictions belong to every H^M.

Thus the all-height generator-word estimate produces

V_n(T_*)∈⋂_{M<∞}H^M.

## Verdict
The algebraic conversion from a same-history centered-generator bound to compatible all-height Sobolev records is complete. The only missing analytic payment lies upstream: uniform control of the finite generator words through T_*. Once that is supplied, the projective Sobolev finish proceeds without any further Euler-specific obstruction.