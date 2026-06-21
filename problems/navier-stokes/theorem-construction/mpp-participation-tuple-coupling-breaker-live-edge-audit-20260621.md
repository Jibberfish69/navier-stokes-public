# Participation-Tuple Coupling Breaker Live-Edge Audit

Date: 2026-06-21

Status: audit-installed-no-proof-claim

Scope:

- Direct live edge: `problems/navier-stokes/live-theorem-edge.yaml`, `problems/navier-stokes/live-theorem-edge.md`.
- Primary live-edge support surfaces: `problems/navier-stokes/source-frontier.yaml`, `problems/navier-stokes/theorem-packet.yaml`.
- Primary theorem-construction surfaces named by the live edge or carrying current forward-gold/CM frontier work.

Governing tuple:

```text
(viscosity, pressure, incompressibility)
```

The participation tuple is treated here as one coupled property of the same local
Navier-Stokes carrier. A surface breaks the tuple when it prices selected source
activity through only one leg, hides one leg by projection, or applies scalar
size estimates before the local NS packet has carried pressure, viscosity, and
incompressibility together.

This audit is not a regularity proof. It is a custody map for where the current
proof edge still loses the coupled carrier.

## Breaker Test

A live-edge surface is a coupling breaker when it does one of the following.

1. Replaces the tuple with viscosity-only damping, dissipation drain, enstrophy,
   shell energy, or heat-scale square reserve.
2. Replaces the tuple with pressure-only spread, Calderon-Zygmund recovery,
   conormal pressure control, pressure memory, or harmonic pressure tail.
3. Replaces the tuple with incompressibility-only cancellation, trace-free
   strain structure, commutator legality, orientation, or signed decorrelation.
4. Uses Leray projection as the main carrier before pressure participation has
   been paid.
5. Uses Cauchy, Young, Holder, Bernstein, or absolute-value commutator control
   before the full local balance has been split into legal payment channels.
6. Converts selected terminal source activity into source-square, active-square,
   Carleson, critical-density, or no-waste scalar currency.
7. Uses exterior tails, Duhamel tails, finite-band tails, or lower-carrier tails
   as mass/readout currency without preserving the same pressure-viscosity-
   incompressibility carrier.

The safe replacement is:

```text
selected packet first carries (R,N,P,V,I);
scalar estimates are allowed only after the payment channel is already legal.
```

## Direct Hard Breakers

### 1. Cauchy/Young Source-Square Scalarization

Break:

```text
selected source activity
  -> Cauchy/Young
  -> epsilon * dissipation + source-square residue
```

This is the central coupling break. It separates the nonlinear activity from the
same local pressure-viscosity-incompressibility law and prices it as a scalar
source size.

Live surfaces:

- `source-frontier.yaml`
  - `source-square-dominance`
  - `source-square-reserve`
  - `SelectedSourceSquareCarrierDomination`
  - `SourceSquareReserve`
  - `HeatScaleSquareSource`
  - `SquareSourceEstimate`
  - `UniformTemporalSourceIntegrability -> HeatScaleSquareSource -> ScaleCriticalTreeCarleson`
- `live-theorem-edge.yaml`
  - `ScaleCriticalTreeCarleson.A`
  - `LocalPositiveSourceCarleson.A`
  - `ParentSquareEmbed.A`
  - `SquareReserveEvolution.A`
  - `SourcePulseExclusion.A`
  - `QDrain.A`
- `mpp-terminal-class-membership-six-burden-closure-note.md`
  - finite-difference Young payment against energy.
- `mpp-one-field-forward-preservation-theorem-program.md`
  - Cauchy-Schwarz / Cauchy-Young source payment.
- `mpp-lower-carrier-interval-integrability-theorem-program.md`
  - repeated epsilon-Young and Cauchy/Young closure steps.

Repair type:

```text
source-square route becomes support-only unless retyped as full-balance packet
payment:

A_{j,Q} <= T_{j,Q} + P_{j,Q} + V_{j,Q} + I_{j,Q} + L_{j,Q}.
```

### 2. Viscosity-Only Dissipation Drain

Break:

```text
selected activity
  -> dissipation / shell damping / q-drain
```

This loses pressure participation and incompressibility orientation by making
viscosity the only payment carrier.

Live surfaces:

- `live-theorem-edge.yaml`
  - `QDrain.A`
  - `SourcePulseExclusion.A`
  - `DonorHeightCreation.A`
  - `HeightFluxControl.A`
  - scalar shell damping does not close.
  - q-dissipation dominance source recovery.
- `source-frontier.yaml`
  - `selected-source-dissipation-tether`
  - `lower-prefix active-square global drain`
  - active-square amplitude/thickness gates.
- `mpp-one-field-forward-preservation-theorem-program.md`
  - top-two viscous center / pressure-center readout split.
- `mpp-lower-carrier-interval-integrability-theorem-program.md`
  - pressure-viscosity split of center-carrier forcing.

Repair type:

```text
viscous payment must remain one term inside the local tuple;
it cannot be the price of selected source activity by itself.
```

### 3. Global or Shell Energy Cancellation

Break:

```text
local participation question
  -> global energy inequality
  -> cancellation / energy-dissipation scheduler
```

The global energy identity is legal as background, but it is not a local
participation carrier. Pairing a shell against `u_j` also collapses the tuple to
shell energy unless the pressure and incompressibility faces are retained.

Live surfaces:

- `live-theorem-edge.yaml`
  - localized LP flux estimates.
  - `CriticalFluxAmplitudeSmall.A + LegalLossLedger.A -> ParabolicEdgeResistance.A`.
  - active-square/tree-Carleson remainder still missing.
- `source-frontier.yaml`
  - mixed-shell scheduler.
  - energy-dissipation scheduler.
  - global product `D_j D_l` after global Cauchy multiplication.
- `cascade-to-scale-barrier-bridge-lemma.md`
  - transport compared against viscous shell damping.
- `all-scale-frequency-transfer-inefficiency-theorem.md`
  - upward transfer efficiency formulated as transport-versus-dissipation.
- `body1-kernelized-lifted-band-integration-audit.md`
  - gap kernel survives, then residual lower-shell weight remains.

Repair type:

```text
LP may choose scale;
it may not reduce the selected packet to shell energy before full balance is carried.
```

### 4. Leray Projection as Main Carrier

Break:

```text
full NS law
  -> Leray-projected equation
  -> pressure hidden in projection
```

Projection is legal for analysis, but it breaks tuple custody when the projected
equation becomes the payment object. The pressure leg has been hidden before the
selected activity is forced to show its local pressure participation.

Live surfaces:

- `live-theorem-edge.yaml`
  - `TerminalLerayCommutatorLegal_L3.A`
  - `TerminalLeraySaturation_L3.A`
  - `TerminalLerayParaproductCoefficientIdentification.A`
  - conditional Leray/suitable-weak endpoint.
- `theorem-packet.yaml`
  - graph-first projection / fallback projection.
  - compatibility projection.
  - conditional Leray/suitable weak endpoint.
  - terminal Leray L3 paraproduct and commutator rows.
- `live-frontier-honest-cut-reduction.md`
  - conditional Leray/suitable weak endpoint retained as preserved context.
- `source-frontier.yaml`
  - projected local precauchy residue identity.
  - projected stress-test compatibility.
  - notes that projecting away pressure moves the sign problem into localized
    convection/projection.

Repair type:

```text
Leray estimates can remain cleanup tools;
they cannot be the first carrier for selected source payment.
```

### 5. Pressure-Only Recovery or Pressure-Spread Supplier

Break:

```text
selected source activity
  -> pressure recovery / CZ / conormal pressure / pressure memory
```

Pressure is a participation leg, not a standalone supplier. A pressure-only
bound breaks the tuple unless it is explicitly paid inside the same local packet.

Live surfaces:

- `source-frontier.yaml`
  - pressure-source variation.
  - pressure-strain depletion.
  - pressure/convection supplier.
  - pressure memory.
  - pressure conormal obstruction.
  - pressure spatial spread without temporal smoothing.
  - pressure recovery under strain equation / source-current gates.
- `mpp-class-membership-contradiction-frontier-packet.md`
  - pressure-channel reductions.
  - pressure branch separated from nonpressure sibling.
- `mpp-class-membership-forward-invariance-theorem-program.md`
  - pressure side split.
  - pressure-tail supplier note.
  - frozen pressure channel reductions.
- `mpp-one-field-forward-preservation-theorem-program.md`
  - pressure channel reductions.
  - pressure-center readout.
- `mpp-lower-carrier-interval-integrability-theorem-program.md`
  - local pressure-center response theorem.
  - source-plus-harmonic-tail decomposition.

Repair type:

```text
pressure spread is legal only as P_{j,Q} inside the packet identity;
it is not an independent source-reserve supplier.
```

### 6. Incompressibility-Only Cancellation or Orientation

Break:

```text
selected activity
  -> divergence-free cancellation / trace-free strain / signed orientation
```

Incompressibility supplies structure, orientation, and saturation constraints.
It breaks tuple custody when it is promoted to an independent payment channel
without simultaneous pressure and viscosity participation.

Live surfaces:

- `source-frontier.yaml`
  - trace-free strain/incompressibility gives structure but not spread.
  - signed-decorrelation collapse.
  - strict no-waste / selected positive polar saturation when read as scalar
    selected-source currency.
- `live-theorem-edge.yaml`
  - `WeightedLiftedSkewDefectLegal.A`
  - tangent rigidity / active-square reserve alternatives.
  - lifted commutator principal strain-production term with variable sign.
- `mpp-forward-gold-*`
  - no-waste, polar saturation, and signed-current variants when detached from
    full packet payment.

Repair type:

```text
incompressibility appears as I_{j,Q};
orientation cannot replace the full pressure-viscosity-incompressibility carrier.
```

### 7. Absolute-Value Commutator and Legal-Ledger Cleanup Too Early

Break:

```text
localized full balance
  -> absolute-value commutator bound
  -> legal leakage / tail cleanup
```

Commutators and collars are legal leakage only after the selected packet has
already retained the tuple. Used earlier, they erase sign and participation.

Live surfaces:

- `live-theorem-edge.yaml`
  - `WeightedLiftedSkewDefectLegal.A`.
  - `LegalLossLedger.A`.
  - lifted commutator rows.
- `source-frontier.yaml`
  - localized commutator estimates as non-suppliers.
  - Holder/CZ/Leray commutator estimates not independent supplier.
- `body1-kernelized-lifted-band-integration-audit.md`
  - lifted-band gap kernel with residual lower-shell weight.

Repair type:

```text
commutator estimates are L_{j,Q};
they are not allowed to price N_{j,Q} before tuple participation is split.
```

### 8. Bernstein, Critical Density, CKN, and Amplitude Currency

Break:

```text
selected packet
  -> amplitude / critical density / CKN / Bernstein scaling
```

These are scale tools. They break coupling when promoted into payment carriers.

Live surfaces:

- `source-frontier.yaml`
  - `SelectedCriticalStrainCarleson`
  - `NormalizedCKN`
  - critical-density doors.
  - active-shell amplitude gain.
  - active-window Carleson.
  - non-Carleson Zeno anti-concentration entrances.
- `live-theorem-edge.yaml`
  - active-square/tree-Carleson remainder.
  - `MSC.BadAC`.
  - active-square reserve alternatives.

Repair type:

```text
scale and density estimates may classify packets;
they cannot replace the local tuple payment.
```

### 9. Tail, Exterior, Duhamel, Finite-Band, and Lower-Carrier Readout

Break:

```text
same local carrier
  -> tail mass / exterior source / lower-carrier interval / finite-band residue
```

Tail estimates are safe only as tuple-tail reserves. They break coupling when
the proof reads high-frequency or exterior mass as the payment object.

Live surfaces:

- `live-theorem-edge.yaml`
  - `R3.WholeSpaceCMCompletion.A`.
  - exterior Duhamel tail vanishing.
  - surviving exterior nonlinear source enters same CM test.
  - `NoZeroHeatTimeResidueInsideNSClass.A`.
  - endpoint time-marginal witness under fixed viscosity and local energy.
- `mpp-lower-carrier-interval-integrability-theorem-program.md`
  - lower-carrier interval integrability.
  - local pressure-center response.
  - source-plus-harmonic-tail decomposition.
- `source-frontier.yaml`
  - finite-band and terminal trace sink rows.
  - source residence / terminal source production gates.

Repair type:

```text
tail control must say which tuple carrier survives or exits;
mass/readout alone is not payment.
```

### 10. Euler Mirror and Fixed-Viscosity Comparison Surfaces

Break:

```text
NS participation tuple
  -> comparison after removing or varying viscosity
```

Euler comparison can be useful as mirror or contrast, but it is not the same
pressure-viscosity-incompressibility tuple because viscosity is missing or moved
outside the carrier.

Live surfaces:

- `theorem-packet.yaml`
  - `viscosity_removed_comparison`.
  - Euler mirror rows.
  - warning that NS mechanisms do not become Euler pressure-participation laws.
- `source-frontier.yaml`
  - fixed-positive-viscosity source pulse and heat-residue routes.

Repair type:

```text
Euler/fixed-viscosity comparison remains quarantine/support;
it cannot certify the NS tuple payment by itself.
```

## Conditional Breakers

These surfaces are legal when carried after the full packet, and coupling
breakers when promoted before it.

### Littlewood-Paley Shells

Safe:

```text
LP chooses the scale and carries (R_j,N_j,P_j,V_j,I_j).
```

Breaker:

```text
LP chooses the scale and then pairs only shell transport against shell damping.
```

Affected surfaces:

- `cascade-to-scale-barrier-bridge-lemma.md`
- `all-scale-frequency-transfer-inefficiency-theorem.md`
- `body1-kernelized-lifted-band-integration-audit.md`
- `mpp-forward-gold-lp-full-balance-payment-20260621.md`

Required custody:

```text
LPFullBalancePayment.A
```

### Bony / Paraproduct Decomposition

Safe:

```text
Bony decomposition is applied to the tuple packet.
```

Breaker:

```text
Bony decomposition isolates N_j as source size before pressure and
incompressibility participation are retained.
```

Affected surfaces:

- terminal Leray L3 paraproduct rows in `theorem-packet.yaml`.
- lifted-band and flux rows in `live-theorem-edge.yaml`.

### Compactness and Same-Carrier Retention

Safe:

```text
compactness retains the same local pressure-viscosity-incompressibility carrier.
```

Breaker:

```text
compactness retains only scalar activity, source mass, or terminal trace.
```

Affected surfaces:

- source-pulse compactness branches in `live-theorem-edge.yaml`.
- diagonal-dominance / local-source no-pulse rows in `source-frontier.yaml`.

## Preserving Surfaces

These should not be marked as coupling breakers in their current role.

### Original NS Participation Law

Installed live-edge rule:

```text
one smooth incompressible NS evolution;
the shared law is the original pressure-viscosity-source participation law.
```

This preserves the tuple.

### Weak Part as Carrier Law

The live edge explicitly allows weak `Part` to remain a pressure-viscosity carrier
law. That is not a coupling break unless the surface later prices the source by
viscosity or pressure alone.

### Terminal Source Residue as CM Exit

When the live edge says the original NS law is applied first and unpaid source
residue is already a failure of the shared pressure-viscosity/source
participation ledger, that is a preserving read. It becomes a breaker only if
the residue is later converted back into scalar source-square payment.

### LP Full-Balance Payment

`mpp-forward-gold-lp-full-balance-payment-20260621.md` is the installed repair
surface. It keeps LP scale selection but forces selected source activity to pay
through:

```text
time + pressure + viscosity + incompressibility + legal leakage
```

## Live-Edge Breaker Index

Hard breaker families found on the live edge:

1. Cauchy/Young source-square scalarization.
2. Viscosity-only dissipation drain.
3. Global or shell energy cancellation.
4. Leray projection as main carrier.
5. Pressure-only recovery or pressure-spread supplier.
6. Incompressibility-only cancellation or orientation.
7. Absolute-value commutator and legal-ledger cleanup too early.
8. Bernstein, critical density, CKN, and amplitude currency.
9. Tail, exterior, Duhamel, finite-band, and lower-carrier readout.
10. Euler mirror and fixed-viscosity comparison surfaces.

Conditional breaker families:

1. Littlewood-Paley shells.
2. Bony / paraproduct decomposition.
3. Compactness and same-carrier retention.

Current repair theorem surface:

```text
LPFullBalancePayment.A
DyadicParticipationNoFreeSource.A
```

## Repo-Facing Rule

Every retained selected source packet must be typed before estimate:

```text
R_{j,Q} + N_{j,Q} + P_{j,Q} + V_{j,Q} = L_{j,Q},
I_{j,Q} retained as the incompressibility constraint on the same packet.
```

The selected source activity

```text
A_{j,Q} = [<N_{j,Q}, Phi_{j,Q}>]_+
```

may not be paid first by:

```text
dissipation,
pressure recovery,
projection,
source-square,
energy,
amplitude,
tail mass,
or commutator absolute values.
```

It must first be assigned to:

```text
time-face / terminal capacity,
pressure participation,
viscous participation,
incompressibility orientation/saturation,
or legal collar/tail leakage.
```

Only after that split may Cauchy, Young, Bernstein, CZ, Leray, commutator, or
tail estimates be used as cleanup estimates.

