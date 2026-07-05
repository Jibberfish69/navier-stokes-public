---
theorem_id: forward-gold-chapter2-refereegrade-closedness-limit-20260705
status: codex-audit-open-varying-cone-boundary-rewrite-n3-finite-readout-only
created: 2026-07-05
problem: navier-stokes
route: forward-gold / goal item 4 / chapter 2 referee-grade draft
authorship: Claude (Fable), 2026-07-05. Builds strictly on the filed step3
  (patched) and step4 (corrected) notes and the Gate A three-residue
  payment; physical story Thomas Birnie - the cone's opening angle IS the
  tower readout, and the no-recount law is his first-admission discipline
  at PDE level.
completion_truth: >-
  CODEX AUDIT UPDATE, same date, with later T4 correction applied. This
  is a useful proof-shaped draft, not a cleared gate. N1's varying-cone
  structure is right, but the proof must be written through T4's
  good-level shell-exhaustion lemma, not through topological sublevel
  boundary nullity; arbitrary superlevel/sublevel boundaries are not
  automatically null. N3 is
  acceptable only as a finite-readout cone theorem plus silver routing on
  the infinite-readout complement, not as a cone theorem on all defect
  support. Original state being audited: Goal item 4, piece one: the L1 closedness limit written to referee
  shape. What is NEW here beyond the step4 note: (N1) the VARYING-CONE
  subtlety is handled - membership in K(kappa(x)) with x-dependent
  opening does not pass to limits naively; it passes via the monotone
  half-space representation plus superlevel localization on the upper-
  semicontinuous envelope of the readout, and that argument is written
  out; (N2) the eps-uniform local integrability of the energy flux is
  derived from the suitable-weak-solution class (interpolation places u
  in local L3, the CET-type commutator bound then gives uniform local L1
  for the mollified cubic, hence weak-star compactness in measures);
  (N3) the HELICITY-SIDE HAZARD is stated and routed, not hidden: the
  helicity cubic carries one extra wavenumber weight, so the defect pair
  is well-defined as a measure pair exactly on the set where the tower
  readout is finite - and on the complement the defect is a Silver-facing
  terminal-record candidate consumed by the CM test. The chapter-2
  theorem is therefore stated on the finite-readout set with the
  complement routed to chapter 9, which is not a loophole but the
  designed pass-or-exit architecture. CONDITIONALITY CARRIED HONESTLY:
  the fixed-eps oriented decomposition is Gate A input - proved-shaped on
  marginal bands, Reynolds-WEIGHTED in general (the I5 guard); both
  forms are carried as explicit hypotheses into the theorem statements.
  Remaining to full journal standard: transcription-grade lemmas (exact
  helicity increment representation; CET commutator estimates; R1
  measurable-selection details), all named, none mechanism-grade. Codex
  gate requested on N1 and N3. No closure claimed.
---

# Chapter 2 (referee shape): the defect pair lies in the flux cone

## 1. Objects

Suitable weak solution u on a space-time domain; mollifier at scale eps;
u_eps the mollified field. Duchon-Robert: the local energy balance of u
holds with a defect distribution D_E(u), realized as the distributional
limit of the mollified increment cubic Pi_E^eps. The helicity analogue
D_H(u) is defined channel-wise below. Helical Littlewood-Paley: each
band kappa and helicity sign s defines a channel; on a channel the
kinematic identity H = s kappa E holds identically (step3, patched).

The cone family: for 0 <= kappa < infinity,

  K(kappa) := { (e, h) : e >= 0 and |h| <= kappa e },

a closed convex cone, MONOTONE in kappa: K(kappa1) subset of K(kappa2)
whenever kappa1 <= kappa2. The quarantined exchange line E-line (same-
scale opposite-helicity, energy-free) is carried as an explicit summand
throughout and cannot fund downscale energy defect (step4, section 2).

The readout: kappa_eps(x,t) = the active-wavenumber readout of the
defect-carrying channels at scale eps; kappa-bar := the upper
semicontinuous envelope of limsup(eps -> 0) kappa_eps. R1 (measurable
selection) supplies measurability of the channel readouts;
upper-semicontinuity is by envelope construction.

## 2. Hypothesis (Gate A input, two forms - stated, not assumed silently)

(GA-m, marginal form; proved-shaped modulo the paid locality exponents)
On marginal bands, the mollified cubic admits, at each fixed eps, a
decomposition into nonnegative weights on oriented Manley-Rowe rays plus
E-line, with backscatter routed as previously-admitted debt (no
recount).

(GA-w, general weighted form; the I5 guard) On general bands the same
decomposition holds with the channel-signed total variation of the flux
controlled by the local Reynolds weight times the dissipation budget.
The weight M travels with the theorem; it is never dropped.

## 3. Lemma (eps-uniform integrability; energy side)

For a suitable weak solution, interpolation between the energy class and
the dissipation class places u in local L3 of space-time. The
Constantin-E-Titi commutator representation bounds the mollified cubic
Pi_E^eps in local L1, uniformly in eps, by increment integrals
controlled by the local L3 norm. Hence the family (Pi_E^eps) is
weak-star precompact in local measures, and every distributional limit
point of Pi_E^eps is a measure; by Duchon-Robert the limit is D_E.
(Transcription debt: the standard commutator lemma, named.)

## 4. Lemma (helicity side and its honest domain)

Each channel's helicity flux is the channel's energy flux times the
signed channel wavenumber (kinematic identity). Therefore the helicity
cubic carries ONE EXTRA WAVENUMBER WEIGHT, and the eps-uniform L1 bound
of section 3 lifts to the helicity side exactly on regions where the
defect-carrying readout is finite:

  on { kappa-bar <= Lambda }, the pair (Pi_E^eps, Pi_H^eps) is uniformly
  bounded in local measures, for every finite Lambda.

On { kappa-bar = infinity } the pair need not be a measure - and is not
claimed to be. That set is, by definition, defect support with unbounded
tower readout: a terminal-record candidate, routed to the CM test
(chapter 9, silver pass-or-exit). The routing is the architecture, not
a gap: EITHER the readout is finite and the cone theorem below applies,
OR the exit hypothesis of the silver route is triggered on that set.

## 5. Theorem (closedness limit with varying cone)

Assume GA-m (respectively GA-w). Then, pointwise as measures on the set
{ kappa-bar < infinity }:

  (D_E, D_H) belongs to K(kappa-bar) + E-line
  (respectively: the same membership with the Reynolds weight M carried
  on the total-variation side).

PROOF (audit-corrected shape, T4 shell version). Fix Lambda finite from
the T4 good-level set: for all but at most countably many Lambda, the
level set { kappa-bar = Lambda } is null for the limiting measures, and
the transition shells { Lambda - eta < kappa-bar < Lambda + eta } have
measure tending to zero as eta downarrow 0. Work first on compact
subsets of the inner finite-readout set { kappa-bar < Lambda - eta },
then enlarge to { kappa-bar < Lambda + eta } and let eta downarrow 0.
On the inner set,
upper semicontinuity gives eps_0 such that for eps < eps_0 the readout
satisfies kappa_eps < Lambda on the compact support (locally
uniformly). By GA at fixed eps, (Pi_E^eps, Pi_H^eps) lies in
K(kappa_eps) + E-line, hence by MONOTONICITY of the cone family in
K(Lambda) + E-line on that support.
Represent the fixed closed convex cone K(Lambda) by its half-spaces:
membership is the family of linear inequalities

  e >= 0,   Lambda e - h >= 0,   Lambda e + h >= 0,

tested against nonnegative test functions supported in the inner
finite-readout set. Each
inequality is a linear functional of the pair and passes to weak-star
limits of measures (sections 3-4 supply the compactness). Hence the
limit pair satisfies the same inequalities on the inner support. The
outer-shell error tends to zero by T4, so membership holds on the good
finite-readout level in measure sense. Let the good Lambda levels
increase to infinity through the finite-readout exhaustion to cover
{ kappa-bar < infinity }. To recover the exact varying opening rather
than only a finite cutoff, partition each finite-readout range by good
levels and use the upper endpoint on each strip
{ lambda_{i-1} <= kappa-bar < lambda_i }; T4's zero level-set/shell
property lets the strip cutoffs pass to the limit, and the endpoint
step functions decrease to kappa-bar as the mesh tends to zero. Thus
the limiting half-space inequalities are
h <= kappa-bar e and -h <= kappa-bar e in measure sense, i.e. the limit
pair lies in K(kappa-bar) + E-line on { kappa-bar < infinity }. Under GA-w the identical argument runs with
the weighted total-variation control carried as a side inequality of
the same linear type. QED, at referee shape.

REMARK (why this is not the naive interchange). The naive claim
"membership passes to limits" fails for x-DEPENDENT sets; the proof
above buys it back with exactly three purchases: monotonicity of the
cone family, upper semicontinuity of the envelope readout, and the
half-space (linear-inequality) representation - each structural, none
numerical. This is the lane law operating at PDE level.

## 6. What this chapter consumes and what it feeds

Consumes: Gate A (two forms, chapter 5's payer-1 machinery); paid
locality exponents (chapter 7); R1 measurable selection
(transcription). Feeds: the cone opening kappa-bar and the weight M to
campaign theorem 2 (chapter 5), exactly as the step4 note forecast: the
tower enters as both the opening angle and the weight; controlling both
IS the impedance estimate.

## 7. Transcription debts (named; exposition-grade only)

(T1) Exact helicity-defect increment representation (Chae-type
threshold calculus, transcribed to the channel decomposition).
(T2) CET commutator lemma with the local L3 interpolation, written out.
(T3) R1: measurable selection of defect-carrying channels and the usc
envelope construction.
(T4) Good-level shell exhaustion in the superlevel/sublevel readout
argument; topological boundary nullity is false for general usc
readouts and is replaced by zero level sets plus vanishing transition
shells.
Codex gate requested on: the varying-cone argument (section 5) and the
helicity-domain routing (section 4).
