---
theorem_id: forward-gold-E4-record-closedness-compensated-compactness-20260706
status: filed-pending-codex-gate-E4-spatial-reduced-to-compensated-compactness-temporal-admission-open
created: 2026-07-06
problem: navier-stokes
route: forward-gold / c_0 endgame / E4 record closedness — the record is a null Lagrangian, so it passes to weak limits unless it concentrates, and the three bills forbid concentration
authorship: >-
  Derivation with physical reasoning throughout, per the owner's standing
  condition: Claude (Opus 4.8), 2026-07-06, building on Codex's three-channel
  visibility articulation of E4. Sits on the verified L1 identity
  (tr A^3 = 3 det A = div Phi, machine-verified this session) from
  mpp-forward-gold-marginal-relay-all-zero-payment-exclusion-20260706 and the
  Gate-1 identity from mpp-forward-gold-gate1-tower-defect-identity-derived-kernel-regrade-20260706.
completion_truth: >-
  E4's spatial escape is reduced to installed compensated-compactness
  technology; its temporal and same-parent-admission escapes remain open and
  Clay-hard. The argument: the relay record is a null-Lagrangian (Jacobian /
  det-type) quantity — a geometric volume-distortion flux — because record
  service is tr A^3 = 3 det(grad u) = div Phi (L1). Null Lagrangians are WEAKLY
  CONTINUOUS (Reshetnyak / Ball / Murat-Tartar) precisely when the sequence
  does not CONCENTRATE (det(grad u_j) equi-integrable). The three bills are
  exactly the three concentration channels: the viscous bill nu int|grad
  delta_h U_k|^2 forbids SCALE concentration (equi-integrability at small
  scale); the Field bill forbids SPATIAL decoherence concentration between
  towers; the four-body bill forbids the IRREVERSIBLE signed-defect
  concentration. Hence a unit-record vanishing-bill sequence has an
  equi-integrable, non-concentrating record core, so R passes to the weak
  limit: limsup R(W_j) <= R(W_infty) = 0 (kernel), contradicting R(W_j) = 1.
  This closes the SPATIAL escape (mode 1 flux + mode 2 lost-readout, spatial
  part) on installed technology. NOT closed: (i) the finite-difference TOWER
  version of the Jacobian weak-continuity theorem (owed transcription, plausible);
  (ii) TEMPORAL concentration — the record concentrating onto an instant — which
  compensated compactness in space does not see, routed to the RUC
  thickness-or-charge dichotomy in bill currency (open); (iii) SAME-PARENT
  ADMISSION — that the limit record is owned by a retained same-fluid parent,
  not a detached defect measure — the hardest, the open native-admission of the
  signed-height record note. No F2/F4/F5, Chapter-10, manuscript, or MPP closure
  is proved. Filed is not cleared.
---

# E4: the record is a null Lagrangian, so it cannot survive as a limiting artifact — unless it concentrates in time or loses its parent

## 1. Physical statement (Codex's three channels, made into the closedness engine)

A unit relay record is a one-way scale-translation event: reserve moved from
rung N to rung N+1 and did not come back. Codex's point: such an event has
three physical features, and each has a bill —

- it created a **smaller scale** (or it is a post-readout scalar spike with no
  parent) -> viscous bill;
- neighboring towers **failed to follow** (or it occupies a packet the
  pressure/four-body accounting sees) -> Field bill;
- the signed exchange became **irreversible** (a ratchet) -> four-body bill.

So the question "can a unit record survive while all three bills vanish?" is
the question "can the one-way scale-translation event survive after losing
scale, coherence, and irreversibility?" Physically no. The closedness theorem
is the mathematical spine of that "no": as the bills vanish along a sequence,
the record must pass to the limit of a limit-object that has none of the three
features, hence zero record.

## 2. Why the record is weakly stable: it is a null Lagrangian

The record's engine is not a generic cubic. By the verified identity (L1),
service is
\[
  \operatorname{tr}(A^3) = 3\det(\nabla u) = \partial_j\bigl(u_i\,\mathrm{cof}(\nabla u)_{ij}\bigr).
\]
`det(grad u)` is a NULL LAGRANGIAN — a Jacobian, a purely geometric
volume-distortion quantity whose integral is boundary data. The physical
meaning of "null Lagrangian" is exactly what we need: it is a topological /
geometric bookkeeping quantity, blind to smooth rearrangement, that CANNOT be
created or destroyed by ordinary weak wiggling of the field. The only way a
Jacobian jumps under a weak limit is CONCENTRATION — mass collapsing onto a
lower-dimensional set (a Dirac in det). This is the classical weak-continuity
of Jacobians (Reshetnyak; Ball; the div-curl lemma of Murat-Tartar):
\[
  \nabla u_j \rightharpoonup \nabla u \ \text{in } L^2
  \ \text{and } \{\det \nabla u_j\}\ \text{equi-integrable}
  \ \Longrightarrow\ \det \nabla u_j \rightharpoonup \det \nabla u .
\]

Physically: volume-distortion is conserved under weak limits unless the fluid
pinches to a filament/sheet. The record can only survive a vanishing-bill
limit by pinching.

## 3. The three bills forbid the three pinches

This is where the bills earn their physical identity — each kills one route to
concentration of `det`:

1. **Scale pinch (viscous bill).** `det(nabla u_j)` concentrates only if
   `nabla u_j` develops mass at ever-smaller scales inside the packet. The
   viscous bill `nu sum lambda_k int phi^2 |nabla delta_h U_k|^2 -> 0` is
   exactly the statement that no sub-`h` scale is created on the retained
   family — so `{det}` stays equi-integrable at the read scale. Viscosity is
   the anti-pinch: it heats and erases any filament the record would need.
2. **Coherence pinch (Field bill).** A record can also concentrate by the
   packet decohering — the tower differences `delta_h U_k` developing spatial
   spikes between towers. The Field bill
   `dE_{N,h}^{Field} = sum lambda_k int|delta_h U_k|^2 -> 0` forbids exactly
   this: the packet stays common-mode, the Jacobian's arguments stay
   horizontally regular, no spatial Dirac forms.
3. **Irreversibility pinch (four-body bill).** The remaining route is the
   signed one: `det` could survive as a net one-way accumulation even without
   scale or spatial pinch, IF the pair-field ratchets. The four-body bill
   `dA_{4B,N} = |delta_h(A\otimes A)|^2 -> 0` removes the retained positive
   total variation — the ratchet's fuel — so the signed accumulation cancels
   in the limit (FTR.20 in currency form).

With all three vanishing, `{det(nabla u_j)}` (and its finite-difference tower
analogue) is equi-integrable and non-concentrating in space. By Section 2 it
passes to the weak limit.

## 4. The closedness theorem and epsilon

**Claim (spatial closedness).** Let `W_j` be retained same-fluid relay windows
with `R(W_j) = 1` and `B(W_j) -> 0`, with NO temporal concentration (deferred
to Section 5). Then along a subsequence `W_j -> W_infty` retained same-fluid,
and
\[
  1 = \limsup_j R(W_j) \le R(W_\infty) = 0,
\]
a contradiction. Hence `B(W) >= eps > 0` on unit records; `q <= 1/2 - eps`,
`c_0 = 2 eps > 0`.

**Why the two inequalities hold.** The right one, `R(W_infty) = 0`, is the
zero-bill kernel: `W_infty` has all three features gone, so it is recordless
(the marginal-relay exclusion). The left one, `limsup R(W_j) <= R(W_infty)`, is
the weak upper-semicontinuity of Section 2-3: the record's null-Lagrangian core
passes to the limit because the bills forbade every spatial concentration
channel. The record cannot be a "limiting bookkeeping artifact" for the same
reason a Jacobian cannot be created by weak wiggling: it is geometric, not
bookkeeping, and geometry needs a pinch to jump — which the bills outlaw.

## 5. Honest residue — what compensated compactness does NOT see

Physical reasoning is the guide here too: spatial pinches are outlawed, but two
routes remain, and they are exactly the two hard escapes.

- **(Temporal concentration, escape 3.)** The record could be achieved in
  vanishing MATERIAL TIME — the one-way translation crammed into an instant.
  Spatial compensated compactness is blind to this: a temporal Dirac in the
  record measure survives. Physically Codex named the resolution: cramming the
  same critical record into less material time RAISES the acceleration of the
  tower readout, so either viscosity sees the sharper time-change (a bill) or it
  is a post-readout scalar spike with no parent address (not a retained relay
  record). Turning that into closedness needs the installed RUC dichotomy
  (temporal thickness `>= c*/lambda^2` or finite same-fluid charge) transcribed
  into bill currency, so a temporally-concentrating minimizer still posts a
  bill. OPEN.
- **(Same-parent admission, escape 4.)** Even with no pinch in space or time,
  the limit record must be OWNED by a retained same-fluid parent, not survive as
  a detached defect measure with no source address. This is the null-Lagrangian
  version of owner-and-charge: `det` passes to the limit, but does the limit's
  record stay attached to the same material history, or does it delaminate into
  a free Young-measure defect? This is the open native same-parent
  admission/storage of the signed-height record note. It is the hardest of the
  three, and the honest wall.
- **(Tower transcription.)** Sections 2-3 are stated for `det(grad u)`; the
  relay record is the finite-difference TOWER analogue. The Jacobian
  weak-continuity theorem must be transcribed to `delta_h`-differences of the
  tower reads (plausible — finite differences of null Lagrangians retain the
  div-curl structure — but owed).

## 6. Status and physical bottom line

- E4 SPATIAL escape (scale + coherence pinches): reduced to installed
  compensated-compactness technology, sitting on the verified null-Lagrangian
  identity. Real reduction.
- E4 TEMPORAL escape: reduced to RUC-in-bill-currency; open.
- E4 ADMISSION escape: the open same-parent record admission; the hard wall.

Physical bottom line: **the record is geometry, not bookkeeping — a
volume-distortion flux — so it cannot be conjured by a weak limit; it can only
survive by pinching in scale, space, or time, or by delaminating from its
parent. The three bills outlaw the scale and space pinches; the time pinch and
the delamination are the two things still standing between the participation
ledger and c_0.** That is a sharper wall than "prove closedness": it is two
named, physically-identified defects — temporal record concentration and
parent delamination — and nothing else.

Filed is not cleared. No closure claimed.
