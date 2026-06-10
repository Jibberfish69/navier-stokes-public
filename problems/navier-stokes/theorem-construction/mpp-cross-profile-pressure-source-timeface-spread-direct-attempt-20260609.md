---
theorem_id: cross-profile-pressure-source-timeface-spread-direct-attempt-20260609
status: direct_attempt_open_with_model_obstruction
created: 2026-06-09
updated: 2026-06-09
route_role: active-completion-loop proof pass after CrossProfilePressureCarrierLebesgueSplit.A
edge_effect: "Tests whether the source-absolutely-continuous pressure branch produces a terminal strip modulus for the native positive source marginal. The direct pass fails: spatial pressure/Leray structure and cross-profile minimality do not upgrade finite L1 terminal source mass to a super-L1 or anti-atom time modulus."
source_refs:
  - problems/navier-stokes/theorem-construction/mpp-cross-profile-pressure-source-tether-direct-attempt-20260609.md
  - problems/navier-stokes/theorem-construction/mpp-pressure-source-timeface-spread-cycle-breaker-reentry-20260609.md
  - problems/navier-stokes/theorem-construction/mpp-pressure-source-ac-basac-time-spread-attempt-20260609.md
  - problems/navier-stokes/theorem-construction/mpp-terminal-timeface-antiatom-native-source-reentry-20260609.md
  - problems/navier-stokes/theorem-construction/mpp-basac-atom-escape-dichotomy-direct-attempt-20260609.md
  - problems/navier-stokes/theorem-construction/mpp-new-terminal-source-residence-mechanism-reentry-20260609.md
new_live_criticism: NS-LIVE-20260609-178
downstream_consequence: "CrossProfilePressureSourceTimeFaceSpread.A is not proved from installed inputs. The next atom is CrossProfileTerminalPositiveSourceAtomEscape.A: forbid a native positive source atom from being simultaneously diffuse in parents, zero-thickness in time, and pressure/eigenframe sustained without a same-ledger Pack/Part/Field face failure."
---

# Cross-profile pressure source time-face spread direct attempt

## Target

The live source-AC pressure branch needs:

```text
CrossProfilePressureSourceTimeFaceSpread.A.
```

The theorem must produce a terminal strip modulus for the native positive source
measure:

```math
\nu_m^{src,+}(B_R\times[-\epsilon,0])
\le
\omega_R(\epsilon)+o_m(1),
\qquad
\omega_R(\epsilon)\downarrow0.
```

This is the anti-atom payment. A pressure/source carrier relation without this
modulus still permits the terminal source atom.

## What the previous pass installed

The pressure/source tether pass installed only:

```text
CrossProfilePressureCarrierLebesgueSplit.A.
```

Thus the pressure residue decomposes into a part absolutely continuous with
respect to the native positive source residue and a part singular to it. This
note attacks the absolutely continuous branch.

## Direct pressure-time test

Pressure and Leray projection are spatial operators at fixed heat time:

```math
-\Delta p=\partial_i\partial_j(u_i u_j),
\qquad
\nabla^2p=\mathcal R\mathcal R(\nabla u\otimes\nabla u).
```

They can organize pressure response on the selected terminal packets. They do
not change the time support of the native source marginal.

The terminal layer model remains compatible with the checked hypotheses:

```math
g_m(s)=m\,1_{(-1/m,0]}(s),
\qquad
g_m(s)\,ds\rightharpoonup\delta_0.
```

It has unit `L^1_s` mass and divergent `L^p_s` norm for every `p>1`. It defeats
the desired strip modulus:

```math
\int_{-\epsilon}^{0}g_m(s)\,ds
\to 1
\quad\text{for fixed }\epsilon>0,
```

while no function `\omega_R(\epsilon)\downarrow0` can dominate that limit.

Spatial pressure response can be attached to this same terminal layer at each
time slice. The source-AC pressure branch says the pressure residue and native
source residue may charge the same sets. It does not say the source mass leaves
the terminal time face.

## Cross-profile minimality does not add the missing modulus

The canonical minimal bad cross-profile ancestry object has:

```text
same-fluid terminal ancestry,
finite donor balance on finite truncations,
zero ASAC-paid defect,
removed legal exits,
removed non-Zeno refill,
no fixed earlier selected source slice,
local finite source mass.
```

Those clauses still allow a diffuse parent cloud feeding a zero-thickness
terminal source atom. Finite donor balance prevents unpaid finite donor loss.
It does not create super-`L^1_s` residence. Same-fluid ancestry preserves the
object under test. It does not force a fixed preterminal parent. Zero ASAC
defect removes an already-paid channel. It does not dominate the native
positive source marginal.

The minimality condition chooses a canonical obstruction; it supplies no
monotone time-depth decrement, no density floor on a fixed negative slice, no
uniform temporal integrability, and no pressure-to-source lower residence
bound.

## Why local-energy superintegrability still does not pay this branch

The local suitable class gives soft spacetime integrability for velocity. The
native source residue is not the soft cubic velocity marginal. It is the
selected one-sided product:

```math
\left[\langle S^{loc}_{<j}w_j,w_j\rangle\right]_+\,dxdt
```

after terminal active-window selection, same-fluid localization, weights,
cutoffs, and positive-part extraction.

Controlling this product by soft local energy would require a same-packet
coefficient estimate or positive active reserve theorem. Cauchy or Young
returns to active-square reserve; signed cancellation disappears after the
positive part. The source-time modulus is still a source-level theorem.

## Failed proof point

The attempted implication:

```text
source-AC pressure branch
=> terminal strip modulus for native positive source
```

fails. Absolute continuity says which measure charges which sets. It does not
upgrade terminal `L^1_s` concentration into a super-`L^1_s`, Orlicz, Morrey, or
anti-atom time modulus.

## New live criticism

`NS-LIVE-20260609-178`: `CrossProfilePressureSourceTimeFaceSpread.A` is not
proved. The source-absolutely-continuous pressure branch still permits the
terminal layer model `g_m(s)=m 1_{(-1/m,0]}`. Spatial pressure/Leray structure,
cross-profile minimality, finite donor balance, zero ASAC defect, and soft
local-energy integrability do not produce the terminal strip modulus needed to
remove the native positive source atom. The loop must attack the atom escape
theorem and keep `pdfs_final: false`.

## Next parent action

Attack:

```text
CrossProfileTerminalPositiveSourceAtomEscape.A.
```

The theorem must prove that a terminal native positive source atom in the
minimal bad cross-profile ancestry object cannot be simultaneously:

```text
diffuse in parents,
zero-thickness in time,
pressure/eigenframe sustained,
and free of same-ledger Pack/Part/Field face failure.
```

This target is smaller than broad pressure/source tether and smaller than the
whole source-pulse exclusion. It is the exact obstruction left after the
source-AC pressure time-face attempt.
