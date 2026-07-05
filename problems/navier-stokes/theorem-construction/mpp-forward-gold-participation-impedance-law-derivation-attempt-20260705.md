---
theorem_id: forward-gold-participation-impedance-law-derivation-attempt-20260705
status: impedance-structure-derived-collar-loading-divergence-shown-schedule-clearing-open
created: 2026-07-05
problem: navier-stokes
route: forward-gold / participation impedance / storage-not-drainage accounting
logical_landing_node: participation throttle law (Thomas Birnie, 2026-06-10 open ask)
authorship: >-
  Physical story and currency: Thomas Birnie (2026-06-10/11 participation-as-
  combined-law; 2026-06-22 annular later-debt; 2026-07-05 correction that
  viscosity is penny-tax/tether, not primary drain, and that blowup is
  resisted by stress/strain storage at later times in higher rungs of
  neighbouring packets). Derivation attempt: Claude (Fable).
completion_truth: >-
  Not a closure. Three pieces derived honestly: (1) the reaction identity -
  redistribution structure of transport+pressure means center gain is
  neighbor-transmitted, never private; (2) the collar-loading law - each rung
  of concentration on the marginal line necessarily loads the immediate
  neighbor collar with rung-1 tower content of size nu^2/r_k, a DIVERGING
  sequence of stored reactions, confirming the storage picture quantitatively;
  (3) the accounting inversion - energy delivered to the center vanishes per
  rung while reaction stored in collars diverges per rung, so the energy
  ledger and the storage ledger genuinely differ, and only the second sees
  the resistance. Crude global audits (dissipation integral, kinetic budget)
  remain finite on the marginal line, as they must. The remaining theorem is
  the SCHEDULE-CLEARING impossibility: the diverging collar loads must each
  discharge through the same shared throttled medium, discharge traffic
  itself loads the next shells' higher rungs (debt migrates outward and
  up-tower, binomially weighted), and the claim to prove is that this
  compounded discharge traffic cannot clear inside any finite terminal
  window. Viscosity enters only as tether-enforcement (no free slip) and as
  the hourglass guaranteeing eventual unwind.
---

# Participation impedance: derivation attempt in the storage currency

## 1. Reaction identity (derived; exact)

Transport plus pressure redistribute; they do not create. For the packet in
its co-moving frame, the work that steepens the center is extracted through
the collar: the same bilinear term appears with opposite sign in the
neighbors' ledger, and the pressure that transmits it is determined
instantly and nonlocally by the whole packet. No private events. This is the
zero-marginal structure read as Newton's third law inside the fluid.

## 2. Collar-loading law (derived on the marginal line; the storage is real
and diverging)

Let the concentration ladder run r_k = 2^{-k} with increments on the
marginal line delta-u_k ~ nu / r_k (the cheapest possible enemy). For the
center to advance rung k, the immediate collar (thickness ~ r_k) must carry
the transit motion: increment delta-u_k across thickness r_k, hence rung-1
tower content (enstrophy) loaded into the collar:

    integral over collar of |grad u|^2  ~  (delta-u_k / r_k)^2 r_k^3
                                        =  (delta-u_k)^2 r_k
                                        =  nu^2 / r_k    -> DIVERGES.

Meanwhile the kinetic energy delivered to the center at rung k is
(delta-u_k)^2 r_k^3 = nu^2 r_k -> 0. The two ledgers separate exactly as
the physical story says: vanishing cost in energy currency, diverging cost
in stored-reaction currency. The stress/strain "required to make the blowup
happen" is real, quantifiable, and grows without bound - it is parked in
the neighbors, payable later, precisely the annular later-debt.

## 3. Why crude global audits still pass (honest)

Each collar discharges on its own viscous clock r_k^2/nu, so the
dissipation integral of the whole ladder is sum over k of
nu * (nu^2/r_k) * (r_k^2/nu) = nu^2 * sum r_k < infinity. The demon
survives every single-ledger scaling audit, as it must or the problem would
be arithmetic. The divergence lives only in the SIMULTANEOUS storage and
its schedule, not in any time-integrated budget.

## 4. The remaining theorem: schedule clearing (open; stated exactly)

Near the alleged terminal time, collars at all active scales are loaded
within their own discharge windows simultaneously; total parked reaction at
active scale r grows like nu^2 / r. Discharge is not free evaporation:
unwinding a collar's stored strain is itself a transfer through the same
participating medium - it must transit the NEXT shells, loading THEIR
higher tower rungs (differentiating the transit field: rung-j loading
scales with r^{-j}, binomially coupled). The debt migrates outward and
up-tower as it clears, on the annular schedule, while the source field
drains and while new loading continues inside.

The impedance theorem to prove:

    the compounded discharge traffic of a diverging family of collar loads,
    each throttled by the same participation law, each writing its transit
    into higher rungs of the next shells with binomial weights, cannot
    clear within any finite terminal window - the required schedule length
    diverges even though every single-rung clock is fast.

Equivalently: concentration is infinitely expensive through the coupling
(the resistance integral diverges in schedule-time), no matter how cheap it
is in place. Viscosity appears twice, in character: as the no-slip tether
that makes the transit non-evadable, and as the hourglass that fixes each
collar's unwind clock. It is never the muscle.

## 5. Status classification

Derived: reaction identity; collar-loading divergence nu^2/r_k on the
marginal line; ledger separation (energy vs storage).

Open: the schedule-clearing impossibility (Section 4) - the quantitative
traffic/impedance law for simultaneous multi-scale discharge through one
throttled medium, including the up-tower binomial migration of transiting
debt. This is the exact formal residue of the 2026-06-10 open ask, restated
in the corrected currency.
