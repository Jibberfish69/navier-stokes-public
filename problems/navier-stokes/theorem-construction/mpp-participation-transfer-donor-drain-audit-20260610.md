---
ns_viewer:
  theorem_id: participation-transfer-donor-drain-audit-20260610
  status: proved-local-accounting-identity-open-pressure-flux-throttle
  proof_role: active_completion_payment_clock_donor_attenuation
  logical_landing_node: participation_transfer_donor_drain_accounting
  edge_effect: "Refines GlobalDonationPath.A, ParticipationTransferThrottle.A, and DonorDrainCompetition.A into localized energy/pressure-work accounting, while explicitly discarding the false finite-speed pressure reading."
  upstream_origin:
    - /Users/thomasbirnie/.codex/attachments/9bf84840-083e-49fc-b943-7844429d4713/pasted-text.txt
    - problems/navier-stokes/theorem-construction/mpp-participation-debt-mechanism-reentry-20260610.md
  downstream_consequence: "Gives the payment clock a lawful accounting identity: packet energy/load can increase only through transport flux, pressure work, viscous boundary exchange, or source terms, while donors and shells are charged by the same identity."
---

# MPP ParticipationTransferDonorDrainAccounting.A

Date: 2026-06-10

Status: proved local accounting identity and refined donor-throttle target. The
closed pressure/flux estimate needed for public finality remains open.

## Target

This note refines these prompt objects:

```text
GlobalDonationPath.A
ParticipationTransferThrottle.A
DonorDrainCompetition.A
SingularityDebtPayability.A
```

It also corrects one unsafe reading. The phrase "donation must pass through
neighbor chains" should not be read as a finite-speed theorem. Navier-Stokes
pressure is nonlocal. The correct theorem object is local accounting:

```text
local packet increase
= transport flux
 + pressure work
 + viscous boundary exchange
 - interior dissipation
 + any lawful source term.
```

No packet receives private load outside that accounting.

## Local Energy Identity

For a smooth unforced incompressible Navier-Stokes solution on `R^3`,

```text
partial_t u + u dot grad u + grad p = nu Delta u,
div u = 0.
```

The pointwise kinetic-energy identity is:

```text
partial_t (|u|^2/2)
 + nu |grad u|^2
 + div((|u|^2/2 + p)u)
 = (nu/2) Delta |u|^2.
```

Let `phi >= 0` be a smooth packet cutoff. Multiplying by `phi` and integrating
over space gives:

```text
d/dt integral phi |u|^2/2
 + nu integral phi |grad u|^2
= integral ((|u|^2/2 + p)u) dot grad phi
 + (nu/2) integral |u|^2 Delta phi.
```

This is the base accounting identity.

## ParticipationTransferThrottle.A

For a packet `P` with cutoff `phi_P`, define:

```text
E_P(t) = integral phi_P |u|^2/2,
D_P(I) = nu integral_I integral phi_P |grad u|^2,
F_P(I) = integral_I integral ((|u|^2/2 + p)u) dot grad phi_P,
V_P(I) = (nu/2) integral_I integral |u|^2 Delta phi_P.
```

Then on an interval `I=(a,b)`:

```text
E_P(b) - E_P(a) + D_P(I)
 = F_P(I) + V_P(I).
```

Equivalently:

```text
E_P(b) - E_P(a)
 <= |F_P(I)| + |V_P(I)| - D_P(I)
```

with the sign-sensitive version retained when incoming and outgoing flux are
separated.

This proves the accounting part of the transfer throttle. A packet's stored
energy cannot increase without flux or viscous boundary exchange appearing.

## What This Does Not Prove

This identity does not by itself bound `F_P(I)` sharply enough to close the
singularity payability problem. The pressure term is nonlocal:

```text
integral p u dot grad phi_P.
```

A closed throttle theorem must estimate that term at the packet scale and in
the correct readout. Finite energy alone does not supply enough control.

So the current status is:

```text
proved accounting identity,
open pressure/flux throttle estimate.
```

## DonorDrainCompetition.A

Let `phi_0, phi_1, ..., phi_K` be a nested packet / annular-shell partition
from the target packet outward into donor regions. Applying the same localized
energy identity to each shell gives:

```text
E_j(b) - E_j(a) + D_j(I)
 = F_j(I) + V_j(I)
```

for every shell.

When adjacent shell fluxes are summed with compatible cutoffs, internal
transport terms cancel in pairs up to cutoff error, while pressure-work and
viscous boundary terms remain explicitly visible. The donor field is charged
by:

```text
loss of donor energy,
interior donor dissipation,
pressure work across shell boundaries,
viscous leakage across shell boundaries,
cutoff-scale errors.
```

This is Thomas's redshift idea in accounting form. Delivered load is not
measured only at arrival. It must be compared against what survived transfer
after donor dissipation and boundary work.

## Refined GlobalDonationPath.A

Discarded literal form:

```text
pressure and energy must travel by finite-speed neighbor chains.
```

Refined theorem form:

```text
material packet energy and packet load cannot increase without the increase
appearing in a localized balance law; pressure may act nonlocally, but pressure
work is still an accounted term and not a private donation.
```

This keeps the ontological point without making a false PDE claim.

## SingularityDebtPayability.A

Let `Cost_sing(P,r;Q)` be supplied by a cost theorem, such as the low-high
source strip cost:

```text
Cost_p >= M0^p tau^(1-p).
```

The payability problem becomes:

```text
Cost_sing(P,r;Q)
<= lawful transport flux
 + lawful pressure work
 + lawful viscous boundary exchange
 - donor dissipation
 - transfer losses
```

in the same packet readout `Q`.

This note supplies the lawful accounting skeleton. It does not yet supply the
sharp inequality in every `Q`.

## Relation To Terminal Source Strip

For the terminal low-high source strip, the existing cost notes already prove:

```text
positive source mass in windows tau_n -> 0
has infinite p>1 temporal residence cost.
```

The transfer/donor theorem needed next is the branch:

```text
can pressure/transport/viscous boundary work lawfully deliver that
super-L1 residence into a vanishing terminal strip?
```

If yes, the ontology lane must classify the resulting fluid object. If no, the
singularity cannot be paid. If the branch survives only as an endpoint atom, it
lands as the Pack-first limit artifact already proved in the low-high notes.

## Output

The repo should treat this note as:

```text
proved local payment accounting,
open pressure-flux throttle supplier,
open donor attenuation estimate,
not public finality.
```

It prevents the false alternatives:

```text
private packet donation,
finite-speed pressure story,
static donor reservoir,
or free terminal source refill.
```
