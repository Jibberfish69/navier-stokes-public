# Candidate: universal longitudinal share lock for pair-energy marginals

Date: 2026-07-12.

**Record status:** pre-candidate working note. OPEN CANDIDATE — carries no
ontology premise weight. The ontology-feedback hook was not activated this
session (owner-directed); no `ontology-feedback.yaml` record exists for this
candidate, and the gate-VI candidate/validation/promotion choreography has not
started. This file is discovery evidence only.

**Provenance:** proposed by Claude in-session 2026-07-12; owner audit the same
day verified the kernel reduction, the rigorous lower bound \(1/5\), and the
numerical supremum \(0.38606218968\ldots\) at \(s\approx7.35315\). The
outstanding mathematical item before any sharp-constant installation is a
certified one-variable global-maximum proof for the upper constant.

**Proposed parent location:** F1.9 (critical pair height separation width) /
F2.5 (pair space constrained by one-field integrability). The fact is an exact
operator property of solenoidal fields, F2-flavor; no evolution is used.

## Declared surface

One fixed time. \(u\) divergence-free in \(L^2(\mathbb R^3)\), or mean-free
divergence-free in \(L^2(\mathbb T^3)\) with every Fourier integral read as a
lattice sum. Pure kinematics: the statement applies to any Navier–Stokes
snapshot on the canonical surfaces but does not use the equation.

## Statement

With F1.9's radial pair-energy density and its longitudinal part

\[
q(r)=\frac1{4\pi^2r^2}\int_{S^2}\|u(\cdot+r\theta)-u\|_2^2\,d\theta,
\qquad
q_L(r)=\frac1{4\pi^2r^2}\int_{S^2}
\|\theta\cdot(u(\cdot+r\theta)-u)\|_2^2\,d\theta,
\]

for every \(r>0\) at which \(q(r)>0\):

\[
\boxed{
\frac15
\;\le\;
\frac{q_L(r)}{q(r)}
\;\le\;
s_*,
\qquad
s_*=\sup_{s>0}\rho(s)=0.38606218968\ldots
\ \text{(numerical, at }s\approx7.35315\text{)}.
}
\]

The lower constant \(1/5\) is an infimum over the kernel ratio, approached
only in the \(s\to0\) kernel limit. Positive radial averaging preserves both
bounds, so the same constants bound the longitudinal share of \(H_{<r}\) and
of every positively weighted radial aggregate of \(q\).

## Derivation

Plancherel gives, for \(h=r\theta\),

\[
\|u(\cdot+h)-u\|_2^2
=\int 2\bigl(1-\cos(\xi\cdot h)\bigr)|\widehat u(\xi)|^2\,d\xi,
\qquad
\|\theta\cdot(u(\cdot+h)-u)\|_2^2
=\int 2\bigl(1-\cos(\xi\cdot h)\bigr)|\theta\cdot\widehat u(\xi)|^2\,d\xi.
\]

Incompressibility is used once: \(\widehat u(\xi)\perp\xi\). Decompose
\(\theta=\mu\widehat\xi+\sqrt{1-\mu^2}\,\omega\) with \(\omega\perp\widehat\xi\)
a unit azimuth vector. Then \(\theta\cdot\widehat u=\sqrt{1-\mu^2}\,
(\omega\cdot\widehat u)\) and the azimuth average is
\(\langle|\omega\cdot\widehat u|^2\rangle=|\widehat u|^2/2\). With
\(s=r|\xi|\), the sphere averages reduce to radial multipliers of the energy
spectrum:

\[
T(s)=2\left(1-\frac{\sin s}{s}\right),
\qquad
L(s)
=\frac12\int_{-1}^{1}\bigl(1-\cos(s\mu)\bigr)(1-\mu^2)\,d\mu
=\frac23-2\,\frac{\sin s-s\cos s}{s^3},
\]

so that

\[
\frac{q_L(r)}{q(r)}
=\frac{\int L(r|\xi|)\,|\widehat u(\xi)|^2\,d\xi}
{\int T(r|\xi|)\,|\widehat u(\xi)|^2\,d\xi}
\]

is a positive weighted average of \(\rho(s)=L(s)/T(s)\) and therefore lies in
\([\inf_{s>0}\rho,\ \sup_{s>0}\rho]\).

## Endpoints and bounds

- Small \(s\): \(\rho(s)=\tfrac15\left(1+\tfrac{s^2}{70}\right)+O(s^6)\),
  increasing from \(1/5\).
- Large \(s\): \(\rho(s)\to1/3\) (decorrelated limit:
  \(\langle|\theta\cdot u|^2\rangle_\theta=|u|^2/3\)).
- Rigorous lower bound (owner-verified):
  \(5L(s)-T(s)\ge0\) for all \(s>0\), equivalently

  \[
  f(s):=\tfrac43s^3+2s^2\sin s+10s\cos s-10\sin s\ \ge\ 0,
  \]

  with Taylor expansion \(f(s)=s^7/210+O(s^9)\) (the \(s^3\) and \(s^5\)
  coefficients vanish exactly). For \(s\ge4\) the cubic dominates:
  \(\tfrac43s^3\ge 2s^2+10s+10\); the compact remainder \((0,4]\) is a finite
  interval check.
- Upper bound: numerical global optimization of \(\rho\) gives
  \(s_*=0.38606218968\ldots\) at \(s\approx7.35315\). Installing this sharp
  constant requires a certified global-maximum proof; until then only
  "\(\rho\) is bounded above by an absolute constant \(<1/2\)" should be
  quoted at proof strength appropriate to its verification.

**Sharpness.** A field with spectrum concentrated on a single shell
\(|\xi|=\rho_0\) realizes \(q_L(r)/q(r)=\rho(r\rho_0)\) exactly at every
\(r\), so the range of \(\rho\) is attained pointwise in \(r\) by shell data.

**Sanity anchors.** The \(s\to0\) kernel limit reproduces the classical
isotropic dissipation-range ratio
\(\langle(\delta u_L)^2\rangle/\langle|\delta u|^2\rangle=1/5\) — here derived
with no isotropy hypothesis, as a universal floor. Cross-checked directly via
\(\langle\theta_i\theta_j\theta_k\theta_l\rangle
=(\delta_{ij}\delta_{kl}+\delta_{ik}\delta_{jl}+\delta_{il}\delta_{jk})/15\)
together with the exact \(\int\operatorname{tr}((\nabla u)^2)\,dx=0\) on the
declared surfaces (F6.2). The \(s\to\infty\) limit \(1/3\) is the
decorrelated value.

## Scope corrections (owner audit 2026-07-12)

- The ratio is read only where \(r>0\) and \(q(r)>0\); the zero field and the
  pure-mean field give \(0/0\) and are excluded.
- The \(1/5\) endpoint is a kernel limit. A field-level \(r\to0\) limit of
  \(q_L/q\) requires regularity beyond \(L^2\); arbitrary \(L^2\) data need
  not realize that endpoint.
- On \(\mathbb T^3\), state for the mean-free field with lattice-shell sums.

## Typing per the gate

COORDINATE / READOUT fact. T-even, sign-free, sphere-and-center averaged.

- It controls the quadratic longitudinal marginal
  \(|\theta\cdot\delta u|^2\) only. The signed critical current
  \(j=-4e\alpha\) contains the cubic correlation
  \((\theta\cdot\delta u)\,|\delta u|^2\)-type object, which this bound does
  not control.
- It supplies no production sign, no current activation, no ancestry, no
  bounded-fibre or no-recount law, and no per-direction or per-cohort
  control. F7.1's warning stands: averaging erases exactly the anisotropy
  that owns the sign.

## Nonredundant content if promoted

By exact kinematics it deletes every scenario class in which pair energy at a
scale is carried entirely transversally (compression channel starved below a
\(1/5\) share) or predominantly longitudinally (above the \(s_*\) share)
after center-and-sphere averaging. F1.9's half-height separation band
automatically carries proportional longitudinal quadratic capacity; no
additional theorem is needed for that capacity, while its sign and activation
remain fully open.

## Outstanding before gate-VI candidacy

1. Certified global-maximum proof for \(s_*\) (one-variable, mechanizable).
2. Hook-owned candidate record with digests, on a turn where the hook is
   activated.
3. Independent re-derivation of the kernels and the \((0,4]\) interval check.
