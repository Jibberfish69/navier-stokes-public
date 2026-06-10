# MPP RetainedCarrierNoDefectParticipation Direct Attempt

Date: 2026-06-09

Status: active-completion proof attempt; not proved from retained Pack plus existing
compactness support.

## Target

This pass attacks the active loop target:

```text
RetainedCarrierNoDefectParticipation.A.
```

The desired theorem is:

```text
ClayAdmissibleFiniteBreakdown(W_*)
+ canonical same-solution terminal packet Q
+ Pack_Q
+ same original preterminal Navier-Stokes solution
=> Part_{N,Q}.
```

Equivalently, a retained Pack carrier from the original smooth solution would
have no unpaid terminal stress, pressure, viscosity, commutator, or source-ledger
defect through depth `N`.

## Method

Proof program: Navier-Stokes CM contrapositive class exit.

Target role: retained-carrier Part survival / no-defect compactness theorem.

Logical skeleton: direct compactness and pressure-stability proof.

Mechanism attempted: pull the terminal retained carrier back to fixed local
charts, use local strong compactness to pass `u_j \otimes u_j`, stabilize the
pressure projection, and pay the source/commutator ledgers on the same terminal
packet.

## Checked inputs

`compactness-upgrade-lemma.md` proves strong local `L^2` compactness and
nonlinear tensor closure on a fixed classical approximation scheme under:

```text
L^\infty_t L^2_x,
L^2_t H^1_x,
partial_t u in L^2_t H^{-1}_x,
scale-barrier high-frequency tail.
```

`compactness-package.md` records the same boundary: the compactness bridge is a
downstream consequence once the scale-barrier tail input is available on the
same approximation family.

`mpp-retained-pack-part-survival-proof-method-audit-20260607.md` says retained
Pack does not automatically provide terminal Part.  The missing information is
strong compactness of the nonlinear stress, pressure-projection stability, and
same-ledger source payment on the retained carrier.

`mpp-retained-pressure-package-cm-face-placement-20260605.md` places pressure
package failure as `not Part_{N,Q}`.  It does not prove pressure projection
stability under retained Pack.

`mpp-terminal-source-residue-cm-exit-20260522.md` places terminal source residue
as `not Pack_Q` or, under retained Pack, `not Part_{N,Q}`.  It does not pay the
residue away.

## Direct attempt

Take a terminal approach sequence to the canonical retained packet `Q`.  Pull
the retained carrier charts back to fixed local coordinates and try to apply
the compactness package.

The low-frequency Aubin--Lions part is not the problem in isolation.  On fixed
compact spacetime cylinders, energy and negative-norm time derivative control
give the usual weak compactness and low-mode compactness.

The proof fails at the retained terminal inputs that Pack does not supply.

### 1. High-frequency tail on the retained terminal carrier

The compactness package needs a scale-barrier tail:

```text
sup_j int ||P_{>=M} u_j||^2 -> 0
```

on the same carrier/charts used for the terminal packet.  `Pack_Q` gives a
same-fluid carrier and readout-compatible geometry.  It does not give the
uniform tail decay needed to remove a Reynolds defect.

Importing the tail from retained Field or tower-amplitude control would assume
downstream data that the first Part-face branch is allowed to lack.

So the stress passage can still leave:

```text
u_j \otimes u_j ⇀ u_* \otimes u_* + R_*.
```

### 2. Pressure projection on moving retained charts

The pressure is a nonlocal projection of the nonlinear stress.  Strong local
`L^2` convergence of `u_j` on a fixed chart would identify the local stress, but
the terminal retained packet also has cutoffs, moving carrier charts, far-field
pressure tails, and pressure-normalization choices.

The existing pressure-package note classifies these possibilities.  It does not
prove that every pressure projection term remains on the same terminal ledger
under retained Pack alone.

Thus a pressure defect can inherit `R_*` or a moving-chart commutator residue
and land at:

```text
not Part_{N,Q}.
```

### 3. Same-ledger terminal source payment

Part requires the differentiated tower through depth `N`:

```text
D_t U_k = -nabla^{k+1}p + nu Delta U_k + B_k,
qquad k <= N,
```

with pressure, viscosity, nonlinear source, and commutators paid on the same
retained terminal ledger.

The source-residue note proves that an unpaid native residue is a CM face
witness.  It does not prove that the residue is absent.  Retained Pack plus
preterminal ancestry still allows an unpaid terminal native pressure/source
residue from the same original evolution.

## Result

`RetainedCarrierNoDefectParticipation.A` is not proved from the current inputs.

The exact obstruction is not generic compactness.  The fixed-scheme compactness
package is usable after its tail input is supplied.  The missing theorem is the
transfer of those compactness and ledger-payment inputs onto the retained
terminal carrier before Part is assumed.

The next target must be the concrete input theorem:

```text
RetainedCarrierCompactnessInputs.A:

ClayAdmissibleFiniteBreakdown(W_*)
+ canonical same-solution terminal packet Q
+ Pack_Q
+ same original preterminal Navier-Stokes solution
=> scale-barrier tail on Q's retained charts
   + pressure projection stability on Q
   + same-ledger terminal source/commutator payment through depth N.
```

Equivalently, prove the three separately:

```text
RetainedCarrierStressStrongCompactness.A
RetainedCarrierPressureProjectionStability.A
SameLedgerTerminalSourcePayment.A.
```

## New live criticism

`NS-LIVE-20260609-107`: `RetainedCarrierNoDefectParticipation.A` is not proved.
The fixed classical compactness package closes nonlinear tensor passage only
after a scale-barrier tail input on the same scheme; retained Pack does not by
itself supply retained-carrier high-frequency tail control, pressure projection
stability on moving terminal charts, or same-ledger terminal source/commutator
payment through depth `N`.  The active loop must attack
`RetainedCarrierCompactnessInputs.A`, or its three concrete components, while
keeping `pdfs_final: false`.
