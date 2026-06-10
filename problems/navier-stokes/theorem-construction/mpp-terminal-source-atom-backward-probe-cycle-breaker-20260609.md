# Terminal source atom backward-probe cycle breaker

Date: 2026-06-09

## Target

Test an independent way out of the reserve/source-residence cycle:

```text
BackwardProbeEarlierSlice.A.
```

Claim to test: a nonzero terminal positive source atom in the produced
`B_ASAC` class should be detected by a backward heat/adjoint probe in a way
that forces either an earlier same-ledger source slice or a charge-ledger
payment.

## Setup

Let the terminal source residue have a positive time-face component:

```math
d\mu_*^{src,+}(y,s)=\rho(y)\,dy\otimes\delta_{s=0}.
```

Let `\phi` solve a backward heat-adjoint equation with terminal data
`\phi(\cdot,0)=\psi\ge0` supported near the atom. The terminal source pair is:

```math
\langle \mu_*^{src,+},\phi\rangle
=\int \rho(y)\psi(y)\,dy.
```

This detects the atom.

## Direct test

Detection at the terminal trace is not the same as earlier-time residence. The
atom is boundary data for the backward problem. Backward smoothing runs into
the terminal boundary, and the source pair can be carried entirely by the
terminal trace term.

To force an earlier slice, the proof would need one of these extra facts:

- trace absolute continuity of the native positive source primitive;
- a terminal strip modulus;
- reverse Holder / super-`L^1_t` residence;
- a balance identity that forbids a positive terminal boundary source measure
  after all legal, ASAC, donor, cutoff, pressure, and projection ledgers are
  removed.

Those are exactly the uninstalled source-residence theorems. The adjoint probe
alone sees the terminal atom but does not move it into the interior.

## Relation to capacity route

This agrees with the backward-adjoint / parabolic-capacity reentry. The terminal
time face has positive boundary trace capacity for this measure class. A test
with nonzero terminal trace detects the measure; a test with zero terminal trace
hides it. Neither choice proves temporal anti-concentration.

## Judgment

`BackwardProbeEarlierSlice.A` is not proved from the current inputs. It is a
failed independent cycle-breaker.

The result is useful because it rules out a tempting shortcut: the loop cannot
use adjoint detection of the terminal atom as proof that the atom had earlier
source residence. The next independent target must use equation structure
beyond terminal trace detection, most likely a zero-ASAC equality-rigidity or
pressure/Leray time-face spread theorem for the produced `B_ASAC` residue.

## New live criticism

`NS-LIVE-20260609-056`: the backward/adjoint probe detects a terminal source
atom only through terminal trace data. It does not force an earlier same-ledger
source slice or charge-ledger injection without the same missing trace
regularity or terminal strip modulus. The loop still needs an independent
terminal-source anti-atom theorem.
