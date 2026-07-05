---
theorem_id: forward-gold-impedance-theorem-critical-branching-reduction-20260705
status: impedance-theorem-reduced-to-unit-reynolds-retention-constant-not-proof
created: 2026-07-05
problem: navier-stokes
route: forward-gold / participation impedance / schedule clearing
logical_landing_node: participation throttle law (storage currency)
authorship: >-
  Physical story: Thomas Birnie. Derivation and reduction: Claude (Fable),
  2026-07-05. Continuation of the impedance-law note of the same date.
completion_truth: >-
  Not a proof of the impedance theorem. Honest outcome of the attempt: (1)
  the simultaneity count of parked collar loads reproduces the classical
  Leray blowup rate exactly - calibration passed, no contradiction there;
  (2) the genuinely new mechanism is the discharge-traffic branching law:
  a relaxing collar at unit local Reynolds number splits its parked load
  into dissipated, outward-exported, and inward-retained fractions, and on
  the marginal ladder the branching is EXACTLY critical - retention 1/2 is
  the borderline, and it is the same 1/2 as the repo's strict half-barrier
  theta < 1/2 and the same borderline as Re ~ 1; (3) if retention is
  strictly below 1/2, reflected debt accumulates log-divergently on every
  fixed shell, drives the shells super-marginal, and the reflected stress
  opposes further winding (the spring paying back) - the inward ladder is
  destroyed by its own echo, which IS the impedance theorem; (4) the whole
  problem therefore compresses to one constant: prove that a unit-Reynolds
  strained collar coherently passes inward strictly less than half of its
  load. Because Re ~ 1 configurations are uniformly smooth and compact,
  this constant lives in a regime where rigorous computer-assisted
  certification is genuinely feasible. Open: the retention bound itself and
  the sign/coherence statement that reflected debt opposes the winding.
---

# The impedance theorem reduces to a unit-Reynolds retention constant

## 1. Calibration: the simultaneity count reproduces Leray

Marginal ladder r_k = 2^{-k}, du_k ~ nu/r_k, collar loads nu^2/r_k, each
discharging on its own clock r_k^2/nu. At time t with s = T* - t, the still-
loaded collars are those with r_k > sqrt(nu s); summing their loads gives

    parked enstrophy(t) ~ nu^{3/2} s^{-1/2},

which is exactly the classical Leray blowup lower bound. The storage
accounting is therefore correctly calibrated against known necessary
conditions, and - honestly - produces no contradiction by itself: Leray's
rate is consistent with the equations.

## 2. The discharge-traffic branching law (the new object)

Discharge is not evaporation. A strained collar at local Reynolds number
Re(r) = du(r) r / nu relaxes by three channels: viscous dissipation in
place, outward export (doing work on the next shell - the reflected wave of
the spring), and inward coherent hand-off (feeding the ladder). Write the
inward retained fraction as c_ret. On the marginal line Re ~ 1, transfer
and dissipation rates are equal by definition of marginality, so the split
is order one in every channel and no scaling argument can decide c_ret.

The ladder doubles critical currency per rung. Therefore:

    c_ret > 1/2  : retained debt compounds inward - ladder self-finances;
    c_ret = 1/2  : exactly critical branching - the borderline;
    c_ret < 1/2  : reflected debt accumulates on every fixed shell like the
                   number of active inner rungs (log-divergent), pushing
                   each shell super-marginal; the echo arrives as
                   opposite-signed stress (the payback phase of the spring)
                   and destroys the inward winding.

This 1/2 is not new to the lane: it is the SAME constant as the strict
half-barrier theta < 1/2 in the TFE layer-count law, and the same
borderline as unit local Reynolds. Three independently-derived faces of the
program name the identical critical constant. The impedance theorem IS the
statement c_ret < 1/2 uniformly on the marginal family, together with the
coherence clause that the reflected fraction opposes (does not feed) the
winding.

## 3. Why this is provable in principle where everything else was not

The constant c_ret is evaluated on unit-Reynolds collar configurations:
velocity increments du ~ nu/r on scale r - uniformly smooth, scale-
normalizable to a compact family with all derivatives bounded. No singular
regime enters the domain of the constant. Quantitative bounds on smooth
compact families are exactly what rigorous computer-assisted certification
(interval arithmetic, Hou-discipline) can deliver, and the lane already
imports that certification standard. The supercritical demon lives in the
limit r -> 0; the constant that kills it lives at Re ~ 1, where the demon
is not singular yet. That mismatch - singular conclusion, non-singular
input - is the honest reason this reduction has more hope than another
norm estimate.

## 4. Open burdens, exactly two

(B-ret) The retention bound: for every unit-Reynolds strained collar
configuration in the normalized family, the coherently-inward-passed
fraction of the parked load is strictly below 1/2, uniformly.

(B-coh) The echo-sign clause: the outward-exported fraction arrives at the
outer shells as stress opposing further inward transfer (spring payback,
his no-self-tightening), not as additional fuel.

Both live on smooth compact configuration families. Neither is a scaling
statement. Both are exactly the kind of claim the physical story has been
making since the bathtub: the eddy cannot keep more than half of what it
borrows, because the medium it borrows through takes its cut and sends the
rest back with opposite sign.

## 5. Status

Derived: Leray-rate calibration; the branching trichotomy; the identity of
the three 1/2's (branching criticality = strict half-barrier = unit
Reynolds); the reduction of the impedance theorem to (B-ret) + (B-coh).

Open: (B-ret), (B-coh). Proposed route: normalize the collar family,
formulate c_ret as a functional on it, and pursue certified bounds -
analytically where possible, computer-assisted where constants at Re ~ 1
resist pen and paper. No closure is claimed. The theorem is now one
constant and one sign.
