---
theorem_id: forward-gold-direct-kawashima-fourbody-operator-form-check-20260623
status: checked-gramian-bypass-correct-abstract-operator-form-installed-pde-production-open
logical_landing_node: direct_kawashima_fourbody_operator_form
edge_effect: >-
  Checks the supplied finite-Gramian objection and records the corrected route.
  The algebra is correct: a finite observable Gramian differentiates to
  e^{TL^*}We^{TL}-W, so it gives observation plus an endpoint readout, not a
  one-way same-packet payment. The stable infinite-time Gramian is valid only
  after a no-return theorem, and that no-return theorem is the same four-body
  coercivity problem in semigroup form. Therefore the live gold route bypasses
  the Gramian and asks for a direct Kawashima/four-body operator inequality on
  the retained same-material packet. The abstract operator form is installed
  conditionally; the PDE production remains the same-packet compensator and
  interface-defect summability/strict-loss theorem.
parents:
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-observable-frozen-gramian-to-instantaneous-xterm-direct-test-20260622.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-frozen-full-packet-dissipative-noreturn-direct-test-20260622.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-bounded-below-xterm-symmetrizer-direct-attempt-20260622.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-simultaneous-material-fourbody-packet-coercivity-direct-attempt-20260622.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-simultaneous-interface-defect-envelope-after-qc-cg-gs-corrections-20260622.md
---

# Direct Kawashima Four-Body Operator Form Check

Date: 2026-06-23

## 0. Check result

The supplied Gramian objection is correct.

For the frozen auxiliary packet

```math
\dot Z=LZ,
\qquad
\langle Z,WZ\rangle\ge0,
\tag{DKF.1}
```

the finite-time observable Gramian is

```math
G_T=\int_0^T e^{tL^\ast}W e^{tL}\,dt.
\tag{DKF.2}
```

Differentiating the integrand gives

```math
\frac{d}{dt}\left(e^{tL^\ast}W e^{tL}\right)
=
L^\ast e^{tL^\ast}W e^{tL}
+
e^{tL^\ast}W e^{tL}L.
\tag{DKF.3}
```

Therefore

```math
L^\ast G_T+G_TL
=
e^{TL^\ast}W e^{TL}-W.
\tag{DKF.4}
```

Along the frozen packet this gives

```math
\frac{d}{dt}\langle Z,G_TZ\rangle
=
\langle e^{TL}Z,W e^{TL}Z\rangle
-
\langle Z,WZ\rangle .
\tag{DKF.5}
```

The last term is the desired readout, but the first term is an endpoint
readout. It is nonnegative and it is not automatically paid.

So a finite Gramian proves that the packet is seen over a window. It does not
prove that the packet loses one-way energy in that window.

The toy example

```math
L=0,\qquad W=I
\tag{DKF.6}
```

makes this exact:

```math
G_T=TI,
\qquad
L^\ast G_T+G_TL=0.
\tag{DKF.7}
```

Observation is perfect, but there is no dissipative payment.

## 1. Why the stable Gramian is not the live solve

The infinite-time Gramian

```math
H=\int_0^\infty e^{tL^\ast}W e^{tL}\,dt
\tag{DKF.8}
```

would give

```math
L^\ast H+HL=-W
\tag{DKF.9}
```

only after proving the endpoint readout vanishes:

```math
\lim_{T\to\infty}
\langle e^{TL}Z,W e^{TL}Z\rangle=0.
\tag{DKF.10}
```

For the four-body packet, that statement is already the same no-return
coercivity problem in semigroup language. It says a non-gauge retained packet
cannot keep circulating through the four coordinates without losing through
the full same-material participation readout.

Thus the stable-Gramian route is conditional, not an independent producer.

## 2. Correct direct operator form

Work on the retained same-material packet modulo harmless Galilean/affine
pressure gauge:

```math
Z\in\mathcal H_N/\mathcal G.
\tag{DKF.11}
```

Write the frozen operator as

```math
L_\sigma=\mathcal A_\sigma-\mathcal B_\sigma+\mathcal E_\sigma.
\tag{DKF.12}
```

Here

```math
\mathcal A_\sigma
\tag{DKF.13}
```

is the conservative same-packet exchange among the four coordinates,

```math
\mathcal B_\sigma\ge0
\tag{DKF.14}
```

is the full nonnegative four-body loss/readout, and

```math
\mathcal E_\sigma
\tag{DKF.15}
```

is same-packet residual already required to be absorbed into the interface
defect envelope.

The direct theorem is the compensator inequality

```math
\boxed{
\mathcal B_\sigma
+
\mathcal A_\sigma^\ast K_\sigma
+
K_\sigma\mathcal A_\sigma
\ge
c\,\Pi_{\mathcal G^\perp}
-
R_\sigma .
}
\tag{DKF.16}
```

The compensator has the four-body off-diagonal form

```math
K_\sigma
=
K_{SQ}+K_{QC}+K_{CG}+K_{GS},
\tag{DKF.17}
```

and the full storage is

```math
\mathfrak L_{4B,N}
=
\langle\mathfrak U_N,(I+K_\sigma)\mathfrak U_N\rangle .
\tag{DKF.18}
```

The smallness/lower-bound requirement is

```math
\|K_\sigma\|<1,
\qquad
\mathfrak L_{4B,N}\simeq
\|\mathfrak U_N\|^2_{\mathcal H_N/\mathcal G}.
\tag{DKF.19}
```

This is the direct simultaneous four-body identity in operator form.

## 3. Kernel condition needed for the compensator

The static zero-loss theorem

```math
\ker\mathcal L_{4B,N}=\mathcal G
\tag{DKF.20}
```

is not by itself the full compensator theorem. The direct Kawashima condition is
the stronger exchange-chain condition

```math
Z\in\ker\mathcal B_\sigma,
\qquad
\mathcal A_\sigma^k Z\in\ker\mathcal B_\sigma
\quad\text{for all required }k,
\tag{DKF.21}
```

implies

```math
Z\in\mathcal G.
\tag{DKF.22}
```

Plainly: if the packet and all of its same-packet exchange descendants produce
zero full-packet readout, then it is only gauge.

On a finite-dimensional retained quotient, `(DKF.21)`--`(DKF.22)` is the
standard Kawashima-type algebraic condition that yields a bounded compensator
of the form `(DKF.16)`. On the actual material PDE packet, this must be paired
with the high-mode/tower coercivity already represented inside the
simultaneous four-body loss and interface envelope. The repo does not yet
contain that PDE production theorem.

## 4. Consequence if the compensator is produced

Assume `(DKF.16)` and assume the moving operator variation is absorbed by the
material record/residual:

```math
\left|
\langle\mathfrak U_N,(\partial_\sigma K_\sigma)\mathfrak U_N\rangle
\right|
\le
d[\log(1+\mathcal P_N^{mat})]_+
+
dR_{4B,N}.
\tag{DKF.23}
```

Then differentiating `(DKF.18)` gives

```math
d\mathfrak L_{4B,N}
+
c\,dA_{4B,N}
+
c\,d[\log(1+\mathcal P_N^{mat})]_+
+
dD_{4B,N}
\le
dR_{4B,N}^{env}.
\tag{DKF.24}
```

This is exactly the simultaneous material four-body packet coercivity
inequality.

If

```math
\int_{\sigma_0}^\infty dR_{4B,N}^{env}<\infty
\tag{DKF.25}
```

and \(\mathfrak L_{4B,N}\) is bounded below, integrating gives

```math
\int_{\sigma_0}^\infty dA_{4B,N}<\infty,
\tag{DKF.26}
```

```math
\int_{\sigma_0}^\infty
d[\log(1+\mathcal P_N^{mat})]_+<\infty,
\tag{DKF.27}
```

and

```math
\int_{\sigma_0}^\infty dD_{4B,N}<\infty.
\tag{DKF.28}
```

So the material record cannot double infinitely often, and the retained
terminal heat-scale pulse cannot persist as hidden same-packet participation.

## 5. What remains open

This note solves the route selection and the algebraic operator shape.

The finite Gramian is demoted:

```math
\text{finite observation}
\ne
\text{one-way same-packet loss}.
\tag{DKF.29}
```

The direct route is:

```math
\boxed{
\text{construct the same-packet Kawashima compensator }K_\sigma
\text{ and prove }(DKF.16).
}
\tag{DKF.30}
```

Inside the current repo frontier, that is the same open PDE production already
isolated as:

```math
\boxed{
\texttt{SamePacketInterfaceDefectSummabilityOrStrictLoss.A}
}
\tag{DKF.31}
```

inside

```math
\boxed{
\texttt{SimultaneousMaterialFourBodyPacketCoercivity.A}.
}
\tag{DKF.32}
```

No new external supplier is created. The problem remains one transported
material pressure-viscosity-incompressibility-velocity packet, with the four
coordinates closed by a direct bounded compensator rather than by a finite
observation window.
