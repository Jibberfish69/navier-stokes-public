---
theorem_id: forward-gold-wkb-constant-strain-angular-entropy-service-identity-20260706
status: exact-constant-strain-angular-service-equals-entropy-creation
created: 2026-07-06
problem: navier-stokes
route: forward-gold / confinement constant / crowd cell / WKB material-time bath
target_object:
  - ConstantStrainAngularBath.ServiceEntropyIdentity
  - MaterialCovectorProjectivePushforward.EXACT
  - UniformAngularBath.PersistentServiceRoutesToProfile
source_refs:
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-wkb-angular-liouville-shear-minimal-row-distance-20260706.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-codex-material-time-liouville-bath-reduction-20260706.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-overlap-bath-bounded-custody-wkb-no-neutral-persistence-20260706.md
completion_truth: >-
  Exact constant-affine-strain subcase only. If S is fixed, symmetric, and
  trace-free, material WKB covectors obey k(t)=e^{-tS}k_0, and the angular
  direction map Phi_t(n)=e^{-tS}n/|e^{-tS}n| pushes the uniform sphere density
  to f_t with f_t(Phi_t n)=|e^{-tS}n|^3. The cumulative active scalar service
  obeys the exact identity int_0^T S:K(f_t) dt =
  int_{S^2} log |e^{-TS}n| d sigma(n) = (1/3) int f_T log f_T d sigma. Thus
  a constant-strain uniform angular bath cannot provide sign-coherent active
  service while staying entropy-neutral: persistent service is exactly angular
  entropy / profile formation / endpoint carrier-room in this subcase. This
  proves no variable-strain Liouville theorem, no legal same-solution profile
  admission/exclusion, no crowd theorem, no confinement constant, and no MPP
  closure.
---

# Constant-strain angular service equals entropy creation

## 1. Question

The angular Liouville row proved the infinitesimal identity
\[
  D_t f\big|_{f=1}=3S:Q_n,
  \qquad
  D_tK\big|_{f=1}={2\over5}S.
  \tag{CSA.1}
\]

The remaining subcase tested here is finite time under one fixed affine
producer strain. Can a material angular WKB bath keep giving active scalar
service while staying neutral as an angular population?

For constant strain, no. The active service is exactly one third of the
angular relative entropy produced from the uniform density.

## 2. Projective material covector map

Let
\[
  S=S^T,\qquad \operatorname{tr}S=0,
  \tag{CSA.2}
\]
be fixed. Material WKB covectors satisfy
\[
  k(t)=L_t k_0,\qquad L_t=e^{-tS}.
  \tag{CSA.3}
\]

For a unit initial direction \(n\in S^2\), the angular map is
\[
  \Phi_t(n)={L_tn\over |L_tn|}.
  \tag{CSA.4}
\]

Since \(\det L_t=1\), the standard projective-sphere Jacobian is
\[
  J_t(n)={1\over |L_tn|^3},
  \tag{CSA.5}
\]
meaning
\[
  d\sigma(\Phi_t n)=J_t(n)\,d\sigma(n),
  \tag{CSA.6}
\]
for normalized surface measure \(d\sigma\).

Thus the pushforward of the uniform angular density has density \(f_t\)
satisfying
\[
  f_t(\Phi_t n)
  =
  {1\over J_t(n)}
  =
  |L_tn|^3.
  \tag{CSA.7}
\]

Equivalently, at the current direction \(m\),
\[
  f_t(m)=|L_t^{-1}m|^{-3}=|e^{tS}m|^{-3}.
  \tag{CSA.8}
\]

Expanding (CSA.8) at \(t=0\) gives
\[
  \partial_t f_t\big|_{t=0}
  =
  -3\,n\cdot Sn
  =
  3S:Q_n,
  \tag{CSA.9}
\]
which agrees with the filed angular Liouville row.

## 3. Service as carrier log-room

For a current WKB covector direction \(m(t)\),
\[
  {d\over dt}\log |k(t)|
  =
  -\,m(t)\cdot S m(t)
  =
  S:Q_{m(t)}.
  \tag{CSA.10}
\]

Therefore the active scalar service of the angular bath is
\[
  S:K(f_t)
  =
  \int_{S^2}S:Q_m\,f_t(m)\,d\sigma(m).
  \tag{CSA.11}
\]

Using the pushforward representation, its cumulative service is
\[
  A(T)
  :=
  \int_0^T S:K(f_t)\,dt
  =
  \int_{S^2}\log |L_Tn|\,d\sigma(n).
  \tag{CSA.12}
\]

This is exactly the endpoint carrier log-room created by the material covector
flow.

## 4. Service as angular entropy

The relative entropy of the current angular density against the uniform sphere
measure is
\[
  H(f_T)=\int_{S^2}f_T(m)\log f_T(m)\,d\sigma(m).
  \tag{CSA.13}
\]

Change variables \(m=\Phi_T n\). By (CSA.7),
\[
  H(f_T)
  =
  \int_{S^2}\log f_T(\Phi_T n)\,d\sigma(n)
  =
  \int_{S^2}3\log |L_Tn|\,d\sigma(n).
  \tag{CSA.14}
\]

Combining (CSA.12) and (CSA.14) gives the exact identity
\[
  \boxed{
  \int_0^T S:K(f_t)\,dt
  =
  {1\over3}H(f_T).
  }
  \tag{CSA.15}
\]

So the active service is not stored in a neutral angular bath. In the
constant-strain subcase, the service is exactly the entropy created by the
material projective deformation.

## 5. Long-time profile route

Let the eigenvalues of \(S\) be
\[
  \lambda_1<\lambda_2\le\lambda_3,
  \qquad
  \lambda_1+\lambda_2+\lambda_3=0,
  \tag{CSA.16}
\]
with eigenvector \(e_1\). Then
\[
  f_T
  \rightharpoonup
  {1\over2}\delta_{e_1}+{1\over2}\delta_{-e_1}
  \tag{CSA.17}
\]
as \(T\to\infty\), and
\[
  K(f_T)\rightharpoonup Q_{e_1},
  \qquad
  S:K(f_T)\to -\lambda_1.
  \tag{CSA.18}
\]

Thus persistent service under fixed strain becomes angular concentration on
the most compressive covector eigendirection. In the WKB branch this is a
profile/admission object, not a near-uniform neutral bath.

If the lowest eigenspace is not simple, the limit is the normalized projective
image on that lowest eigenspace; the same conclusion holds with concentration
onto that eigenspace.

## 6. Consequence for the bath problem

The constant-affine-strain angular bath has only two readings:
\[
\begin{array}{ll}
\hbox{small strain-time} &\Rightarrow
  \hbox{beta-small row-distance service},\\[1mm]
\hbox{persistent sign-coherent service} &\Rightarrow
  \hbox{angular entropy, carrier log-room, and profile formation}.
\end{array}
\tag{CSA.19}
\]

Therefore this subcase cannot be the missing no-eviction crowd. It routes to
the already named endpoint-room / high-Re persistence row, or to the
microlocal/profile admission and material-time Liouville branch.

What remains is the variable-strain same-fluid theorem: a real NS branch can
rotate, refill, mix, and localize the bath while the producer frame changes.
This note does not exclude that branch.

## 7. Four-sentence result

For fixed trace-free strain \(S\), material covectors obey
\(k(t)=e^{-tS}k_0\), so the angular map sends the uniform sphere density to
\(f_t(\Phi_t n)=|e^{-tS}n|^3\). The cumulative active scalar service is
\[
  \int_0^T S:K(f_t)\,dt
  =
  \int_{S^2}\log |e^{-TS}n|\,d\sigma(n)
  =
  {1\over3}\int_{S^2}f_T\log f_T\,d\sigma.
\]
Thus constant-strain angular service is exactly angular entropy creation /
carrier log-room, not neutral persistence. Persistent service concentrates the
angular bath into an eigendirection profile, so this subcase routes to profile
admission/Liouville or endpoint-room pricing rather than a free dense-crowd
evasion.

## 8. State

This proves the exact finite-time constant-strain angular identity and routes
the fixed-affine angular bath out of the near-uniform neutral-persistence
class.

It proves no variable-strain material-time Liouville theorem, no same-solution
profile admission/exclusion theorem, no crowd theorem, no confinement constant,
and no MPP closure.
