---
theorem_id: forward-gold-stopped-pressop-collar-symmetrizer-source-origin-constraint-20260627
status: relay-audit-valid-only-as-stopped-source-origin-carrier-not-raw-pressure-collar-proxy
created: 2026-06-27
problem: navier-stokes
route: forward-gold same-material selected-density / stopped source-origin carrier
logical_landing_node: GlobalSamePacketFullClockFromOriginalData.A
audits_hinge:
  - StoppedPressOpCollarCarrierSymmetrizer.A
  - StoppedSourceCarrierAndPaidReselection.A
  - FreshAffineMaterialTimeNoZeno.A
source_surfaces:
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-fresh-affine-nozeno-stopped-pressop-collar-symmetrizer-reduction-20260627.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-selector-stopped-source-carrier-reduction-20260627.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-stopped-source-carrier-direct-production-test-20260627.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-stopped-exchange-reselection-compensator-synthesis-20260627.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-silent-interior-source-origin-normal-form-closure-20260627.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-fresh-affine-nozeno-after-silent-source-split-20260627.md
---

# Stopped press/op-collar symmetrizer source-origin constraint

The relay hinge

```text
StoppedPressOpCollarCarrierSymmetrizer.A
```

is valid only with a precise reading.

It is not a return to raw pressure/collar bookkeeping.  It is a stopped
source-origin carrier theorem for

```math
Z^S
=
Z^S_{\rm vis}\oplus Z^S_{\rm sil}\oplus Z^S_{\rm ex},
```

where:

- \(Z^S_{\rm vis}\) is the parent-Schur-visible pressure-Hodge carrier;
- \(Z^S_{\rm sil}\) is the boundary-flat source-origin component;
- \(Z^S_{\rm ex}\) is the complete-frame strain-Hessian / material-exchange
  carrier forced by the silent-source normal form.

The silent-source split is already installed:

```math
\ker(\mathsf S_Q)
\cap
\{\text{retained selected pressure-Hodge carriers}\}
\subset
\{\text{projected gauge/unselected}\}
\cup
\{\text{top-strain/material-exchange charged}\}.
```

So any stopped symmetrizer that only pays pressure/operator plus collar energy
and does not carry \(Z^S_{\rm ex}\) would miss the actual selected
Schur-silent source.  That reading is invalid.

## Required form

The stopped symmetrizer target must be read as:

```math
d\mathscr A_N^{stop}
+
c_N\left(
d\Omega_N^{src,Hilbert}[Z^S_{\rm vis}\oplus Z^S_{\rm sil}\oplus Z^S_{\rm ex}]
+d\Omega_N^{stop/reselect}
\right)
\le
dR_N^{legal},
\tag{1}
```

with

```math
\mathscr A_N^{stop}\ge -C_N(u_0).
\tag{2}
```

The carrier norm in `(1)` cannot be defined from the future selected tail.  It
must be generated from the original smooth material history: pressure-visible
trace, silent source-origin potential, and complete-frame exchange service.

## Consequence

With this constraint, the relay chain is legitimate:

```math
\text{stopped source-origin carrier bound}
+\text{paid reselection stopping}
\Longrightarrow
\text{fixed-carrier martingale reverse Holder}
\Longrightarrow
\text{strict first-ratio gain}
\Longrightarrow
\text{FreshAffineMaterialTimeNoZeno.A}.
```

Without this constraint, the hinge drifts into a pressure/collar proxy and
reopens the exact silent interior source mistake that has already been fixed.

## Current live burden

The live theorem is therefore not "pressure pays pressure" and not Schur-only
observability.  It is:

```text
construct a bounded-below stopped same-material source-origin symmetrizer for
the full visible/silent/exchange carrier, plus paid reselection stopping.
```

This preserves the silent-source correction while accepting the newer stopped
carrier route as the current relay hinge.
