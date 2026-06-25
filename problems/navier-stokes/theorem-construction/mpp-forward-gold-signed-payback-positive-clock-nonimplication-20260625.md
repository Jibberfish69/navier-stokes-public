---
theorem_id: forward-gold-signed-payback-positive-clock-nonimplication-20260625
status: hard-stop-current-ingredients-signed-payback-does-not-imply-positive-full-clock
logical_landing_node: global_same_packet_full_clock_from_original_data
edge_effect: >-
  Tests the last possible shortcut: whether the exact same-material pay-it-back-
  later identity and signed annular stack telescoping already imply the finite
  positive material clock. They do not. The signed stack proves attachment and
  net energy/storage accounting. The continuation theorem needs positive
  variation of the material deformation, pressure-service, and annular action
  record. Net cancellation does not control total positive action. This is not a
  detached obstruction; it is the precise gap between the physical same-fluid
  payback identity and the H^s continuation-strength clock.
parents:
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-original-data-full-material-clock-producer-direct-attack-20260625.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-rectified-force-action-vs-native-material-stack-audit-20260625.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-same-material-annular-return-identity-20260623.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-global-full-clock-equivalence-to-continuation-criterion-20260624.md
---

# Signed Payback Does Not Imply Positive Full Clock

Date: 2026-06-25

## 0. The shortcut under test

The accepted physical picture gives one exact signed material-stack identity.
For transported material regions,

```math
{d\over dt}E_\Omega(t)+D_\Omega(t)=-F_{\partial\Omega}(t),
```

where

```math
E_\Omega(t)=\int_{\Omega(t)}{1\over2}|u|^2\,dx,
\qquad
D_\Omega(t)=2\nu\int_{\Omega(t)}|S|^2\,dx,
```

and

```math
F_{\partial\Omega}(t)=\int_{\partial\Omega(t)}u\cdot(-pI+2\nu S)n\,dS.
```

For a nested same-material annular stack, internal interface fluxes occur with
opposite signs. Thus they telescope in the signed stack sum.

The shortcut would be:

```math
\text{signed same-material payback and telescoping}
\Longrightarrow
\int d\Omega_N^{full}<\infty .
```

This is false as a matter of estimate structure.

## 1. What the signed identity controls

Integrating the signed identity gives

```math
E_\Omega(b)-E_\Omega(a)+\int_a^bD_\Omega(t)\,dt
=-\int_a^bF_{\partial\Omega}(t)\,dt.
```

Therefore signed annular work is controlled by endpoint storage and viscous
dissipation:

```math
\left|\int_a^bF_{\partial\Omega}(t)\,dt\right|
\le
E_\Omega(a)+E_\Omega(b)+\int_a^bD_\Omega(t)\,dt.
```

This is net control. It proves the center storage pulse is attached to the
annular history and that a fixed annulus has no naked endpoint atom.

## 2. What continuation needs

The fixed `H^s` continuation bridge needs the positive material-record clock:

```math
\int d[\log(1+\mathcal P_N^{mat})]_+<\infty.
```

The annular/action form of that demand contains positive variation, for example

```math
\sum_m\int_{J_m}\left|{d\over ds}F_{\phi_m}^{\sharp}(s)\right|ds
```

or any equivalent same-material positive action density that dominates material
record growth.

This is total positive action, not signed net work.

## 3. The non-implication

From a signed bound

```math
\left|\int_I F(t)\,dt\right|<\infty
```

one cannot derive

```math
\int_I |F(t)|\,dt<\infty
```

or

```math
\int_I |F'(t)|\,dt<\infty.
```

Inside the material stack, this is not an arbitrary-signal objection. It is the
net-versus-positive-record distinction. The same fluid can transfer stress-work
across adjacent layers with opposite signs; the signed stack cancels internal
traffic, while the material deformation/tower clock counts positive service
needed to carry that traffic.

The full clock is exactly the object that prevents infinite positive material
traffic with finite signed net balance. It cannot be obtained by signed
cancellation alone without proving an additional no-free-positive-action rule.

## 4. Exact remaining theorem

The missing theorem is therefore:

```math
\boxed{
\text{No-free-positive-material-action:}
\quad
\text{the original smooth same-material annular stack has finite positive
pressure-viscosity-incompressibility-velocity action before }T_*.
}
```

A usable estimate would be

```math
\int_{\sigma_0}^{\infty}
\left(
C_{\log}\,d[\log(1+\mathcal P_N^{mat})]_+
+d\Omega_N^{ann,+}
+d\mathcal L_{4B,N}
\right)<\infty.
```

Equivalently, if rectified annular force-action is used as the coordinate,

```math
\sum_m\int_{J_m}\left|{d\over ds}F_{\phi_m}^{\sharp}(s)\right|ds<\infty.
```

## 5. Verdict

The signed same-fluid payback mechanism is necessary and exact. It removes the
fake center-detachment problem. It does not prove finite positive material
clock.

The route is therefore not closed from the installed ingredients. The actual
remaining mathematical theorem is the no-free-positive-material-action estimate
above. Proving that estimate is equivalent to the continuation-strength gold
producer `GlobalSamePacketFullClockFromOriginalData.A`.