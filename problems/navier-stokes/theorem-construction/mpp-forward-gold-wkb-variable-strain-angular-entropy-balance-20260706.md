---
theorem_id: forward-gold-wkb-variable-strain-angular-entropy-balance-20260706
status: exact-variable-strain-angular-service-entropy-balance
created: 2026-07-06
problem: navier-stokes
route: forward-gold / confinement constant / crowd cell / WKB material-time bath
target_object:
  - VariableStrainAngularBath.EntropyBalance
  - MaterialCovectorLiouville.ActiveServiceEndpointRoom
  - NearUniformWKBBath.SignedServiceNotEntropyNeutral
source_refs:
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-wkb-angular-liouville-shear-minimal-row-distance-20260706.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-wkb-constant-strain-angular-entropy-service-identity-20260706.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-codex-material-time-liouville-bath-reduction-20260706.md
completion_truth: >-
  Exact material angular balance only. For any smooth time-dependent
  trace-free symmetric strain S(t), a positive angular density f transported by
  the material WKB covector direction field satisfies
  d/dt int f log f d sigma = 3 S(t):K(f_t), where
  K(f)=int Q_n f d sigma. Hence on every interval, signed coherent active
  angular service equals one third of the endpoint entropy increase. Starting
  from a uniform angular bath, cumulative signed service is exactly endpoint
  angular entropy / profile formation, not neutral persistence, even when the
  producer strain rotates in time. Rectified or cyclic service is not closed by
  endpoint entropy alone; it is entropy variation / refresh / frame-custody
  currency. This proves no full material-time Liouville exclusion, no legal
  same-solution profile admission theorem, no crowd theorem, no confinement
  constant, and no MPP closure.
---

# Variable-strain angular service is entropy balance

## 1. Question

The constant-strain note proved
\[
  \int_0^T S:K(f_t)\,dt
  =
  {1\over3}\int_{S^2} f_T\log f_T\,d\sigma
  \tag{VAE.1}
\]
when \(S\) is fixed and \(f_0\equiv1\).

The live question is whether that was a frozen-frame artifact. A real
same-fluid producer can rotate its strain frame, and the WKB angular bath sees
a time-dependent material covector flow.

The identity survives unchanged in differential form. Time-dependent strain
does not create a neutral angular-service channel; it turns signed service into
angular entropy change.

## 2. Material angular equation

Let
\[
  S(t)=S(t)^T,
  \qquad
  \operatorname{tr}S(t)=0.
  \tag{VAE.2}
\]

The material WKB covector direction \(n\in S^2\) obeys
\[
  \dot n
  =
  V_{S(t)}(n)
  :=
  -S(t)n+\bigl(n\cdot S(t)n\bigr)n.
  \tag{VAE.3}
\]

As in the angular Liouville note,
\[
  \operatorname{div}_{S^2}V_{S(t)}(n)
  =
  3\,n\cdot S(t)n
  =
  -3\,S(t):Q_n,
  \tag{VAE.4}
\]
where
\[
  Q_n={1\over3}I-n\otimes n.
  \tag{VAE.5}
\]

Let \(f(t,n)\ge0\) be the angular density relative to normalized sphere measure,
transported by this flow:
\[
  \partial_t f+\operatorname{div}_{S^2}(fV_{S(t)})=0.
  \tag{VAE.6}
\]

The angular pressure moment is
\[
  K(f_t)=\int_{S^2}Q_n f(t,n)\,d\sigma(n).
  \tag{VAE.7}
\]

## 3. Entropy identity

Define the angular relative entropy
\[
  H(t)=\int_{S^2}f(t,n)\log f(t,n)\,d\sigma(n).
  \tag{VAE.8}
\]

Since the sphere has no boundary,
\[
\begin{aligned}
  {dH\over dt}
  &=
  \int_{S^2}(1+\log f)\,\partial_t f\,d\sigma \\
  &=
  -\int_{S^2}(1+\log f)\,\operatorname{div}(fV)\,d\sigma \\
  &=
  \int_{S^2} fV\cdot\nabla\log f\,d\sigma \\
  &=
  \int_{S^2} V\cdot\nabla f\,d\sigma \\
  &=
  -\int_{S^2} f\,\operatorname{div}V\,d\sigma .
\end{aligned}
  \tag{VAE.9}
\]

Using (VAE.4),
\[
  {dH\over dt}
  =
  3\int_{S^2}S(t):Q_n\, f(t,n)\,d\sigma(n)
  =
  3\,S(t):K(f_t).
  \tag{VAE.10}
\]

Thus, for every interval \([t_0,t_1]\),
\[
  \boxed{
  \int_{t_0}^{t_1} S(t):K(f_t)\,dt
  =
  {H(t_1)-H(t_0)\over3}.
  }
  \tag{VAE.11}
\]

This is the variable-strain entropy balance.

## 4. Fundamental-map reading

Equivalently, let \(L(t,t_0)\) solve
\[
  \partial_tL(t,t_0)=-S(t)L(t,t_0),
  \qquad
  L(t_0,t_0)=I.
  \tag{VAE.12}
\]

Since \(\operatorname{tr}S(t)=0\),
\[
  \det L(t,t_0)=1.
  \tag{VAE.13}
\]

The angular map
\[
  \Phi_{t,t_0}(n)={L(t,t_0)n\over |L(t,t_0)n|}
  \tag{VAE.14}
\]
has projective-sphere Jacobian
\[
  J_{t,t_0}(n)={1\over |L(t,t_0)n|^3}.
  \tag{VAE.15}
\]

For a density that is uniform at \(t_0\),
\[
  f_t(\Phi_{t,t_0}n)=|L(t,t_0)n|^3.
  \tag{VAE.16}
\]

Then (VAE.11) becomes
\[
  \int_{t_0}^{t_1} S(t):K(f_t)\,dt
  =
  \int_{S^2}\log |L(t_1,t_0)n|\,d\sigma(n)
  =
  {1\over3}H(t_1).
  \tag{VAE.17}
\]

This is the noncommuting, variable-strain version of the constant-strain
formula.

## 5. Consequence for near-uniform WKB baths

The balance has a direct branch meaning.

If an angular WKB bath starts near uniform and supplies sign-coherent active
service over an interval, then by (VAE.11) the bath must create angular entropy
of the same size:
\[
  H(t_1)-H(t_0)=3A_{[t_0,t_1]}.
  \tag{VAE.18}
\]

So signed coherent service is endpoint entropy room, carrier log-room, or
profile formation. It is not a neutral near-uniform persistence channel.

This statement is stronger than the infinitesimal row-distance identity but
narrower than the full crowd theorem. It prices the angular material
population itself. It does not prove that the corresponding high-entropy or
concentrated profile is legally admitted as a same-solution terminal witness,
and it does not exclude a real NS construction that repeatedly refreshes,
mixes, or cycles the angular density.

## 6. Rectified service caveat

Endpoint entropy controls signed service:
\[
  \int_{t_0}^{t_1}S(t):K(f_t)\,dt.
  \tag{VAE.19}
\]

It does not by itself control the rectified clock
\[
  \int_{t_0}^{t_1}|S(t):K(f_t)|\,dt.
  \tag{VAE.20}
\]

If entropy is raised and lowered repeatedly, (VAE.10) gives
\[
  \int_{t_0}^{t_1}|S(t):K(f_t)|\,dt
  =
  {1\over3}\operatorname{Var}_{[t_0,t_1]} H.
  \tag{VAE.21}
\]

Thus cyclic angular service is entropy variation / refresh / frame-custody
currency. It is not invisible, but it is not killed by endpoint entropy alone.

## 7. Relation to material-time Liouville

The material-time WKB bath reduction asks for a certified same-solution profile
with persistent service and vanishing native heat/square charge. In the angular
subcoordinate, the identity above says exactly what such a profile must carry:
endpoint entropy/profile mass for signed service, or entropy variation for
cyclic service.

Therefore the remaining Liouville problem has been localized one level further.
It is not the question of whether a time-dependent strain can keep the angular
bath neutral while extracting signed service. It is the question of whether the
entropy/profile/variation object produced by the same-fluid angular flow is
legally admitted and then consumed by the existing Field/Pack/Part/custody
rows, or whether a real same-fluid construction evades those rows.

## 8. Four-sentence result

For any time-dependent trace-free strain \(S(t)\), the material WKB angular
density satisfies
\[
  {d\over dt}\int f\log f\,d\sigma=3S(t):K(f_t).
\]
Thus signed coherent angular service is exactly endpoint angular entropy
creation, even when the producer frame rotates. A near-uniform material angular
bath cannot supply signed active service while staying entropy-neutral; it must
form carrier log-room, angular profile mass, or entropy variation. This does
not close the full crowd cell, because profile admission/exclusion and cyclic
refresh/custody remain same-solution questions.

## 9. State

This proves the exact variable-strain angular entropy balance and strictly
extends the constant-strain angular subcase.

It proves no full material-time Liouville exclusion, no same-solution terminal
profile admission theorem, no cyclic-refresh custody theorem, no crowd theorem,
no confinement constant, and no MPP closure.
