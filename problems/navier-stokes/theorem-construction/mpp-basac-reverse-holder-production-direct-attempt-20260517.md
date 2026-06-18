# MPP B_ASAC Reverse-Holder Production Direct Attempt

Date: 2026-05-17

## Status

Direct attempt to produce the temporal reverse-Holder rigid subclass from installed `B_ASAC` inputs.

Outcome: failed from current inputs.

## Target

Produce, for some `p>1`,

```math
B_{ASAC}\Longrightarrow B_{ASAC}^{RH}(p),
```

where `B_ASAC^RH(p)` is the subclass with local uniform source residence

```math
\left\|\,\|F_m^{src,+}(s,\cdot)\|_{\mathcal M(B_R)}\,\right\|_{L^p_s((-1,0))}\le C_R.
```

By `BASACReverseHolderRigidSubclassLiouville.A`, this implies the desired residue Liouville statement for the produced class.

Equivalent production targets are:

```text
B_ASACPreterminalParentTightness.A,
NoIncomingFlux_global_{B_ASAC}.A,
TransportedCylinderNoFlux_{B_ASAC}.A.
```

## Installed Inputs

`B_ASAC` supplies:

```text
same-fluid retained terminal carrier,
nonzero inherited native positive source residue,
no earlier selected source slice,
zero ASAC defect measure,
no legal/projected/cutoff/boundary exit,
no finite or non-Zeno donor-refill exit,
terminal Zeno source support.
```

The native source ledger supplies local `L^1_t` mass control.

## Attempt 1: upgrade `L^1_t` by zero ASAC defect

Zero ASAC defect removes paid active-alignment / pair-weight leakage. It gives no convexity, oscillation, or self-improving estimate for the remaining native source time marginal.

The concentration witness

```math
g_m(s)=m\,1_{(-1/m,0]}(s)
```

has bounded `L^1_s` mass and

```math
\|g_m\|_{L^p(-1,0)}=m^{1-1/p}\to\infty
\qquad(p>1).
```

This witness is compatible with zero ASAC defect once the ASAC-paid angular leakage is absent from the retained branch.

Collapse:

```text
zero ASAC defect does not self-improve the temporal source marginal.
```

## Attempt 2: use positive viscosity or terminal heat smoothing

The terminal contribution has Duhamel form

```math
\int_{-1/m}^{0} e^{(0-s)\nu\Delta}F_m(s)\,ds.
```

On a vanishing heat-time layer, the semigroup is close to the identity at the terminal scale. Local smoothing supplies compactness away from the terminal face and supplies no uniform lower thickness for the source time support.

Collapse:

```text
positive viscosity gives no reverse-Holder residence on a zero-thickness terminal layer.
```

## Attempt 3: use first-pulse no-parent

`FirstPulse.NoParent` rules out a fixed earlier selected same-fluid source parent. Together with `LocalDonorBalance.A + EntranceLeafDecay.A`, it removes finite and non-Zeno refill trees.

A diffuse terminal Zeno parent cloud remains compatible with these clauses: order-one total mass may be carried by increasingly many near-terminal legal pieces, with every fixed negative-time selected subfamily disappearing in the limit.

Collapse:

```text
selected-parent ancestry is weaker than source-time anti-concentration.
```

## Attempt 4: use transported-cylinder no-incoming flux

A class-specific transported no-flux theorem closes the production route by preventing source mass from entering through the frozen-strain transported boundary.

The existing direct attempts on `NoIncomingFlux_global.A` and `TransportedCylinderNoFlux.A` identify the missing estimate: first-pulse ancestry controls selected positive source parents, while full transported no-flux must control kinetic energy, pressure energy, and nonselected packet flux through incoming far-field channels.

Collapse:

```text
NoIncomingFlux_global_{B_ASAC}.A / TransportedCylinderNoFlux_{B_ASAC}.A remains a new theorem.
```

## Verdict

`BASACReverseHolderProduction.A` is open from installed inputs.

The produced equality class has a valid rigid subclass Liouville theorem after adding the `p>1` source residence bound, but current `B_ASAC` data do not produce that bound.

The exact remaining lower theorem is one of:

```text
B_ASACPreterminalParentTightness.A,
NoIncomingFlux_global_{B_ASAC}.A,
TransportedCylinderNoFlux_{B_ASAC}.A,
a different produced rigid subclass with intrinsic temporal anti-atom control.
```
