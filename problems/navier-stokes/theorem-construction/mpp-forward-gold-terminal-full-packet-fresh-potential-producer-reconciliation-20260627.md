---
theorem_id: forward-gold-terminal-full-packet-fresh-potential-producer-reconciliation-20260627
status: full-packet-hinge-preserved-fresh-potential-average-producer-open
created: 2026-06-27
problem: navier-stokes
route: forward-gold terminal Zeno visible readout / full packet no-residue / fresh potential producer
logical_landing_node: terminal_full_packet_noresidue_payment
audits_hinge:
  - TerminalFullPacketNoResiduePayment.A
  - UnweightedSameCarrierVisibleReadoutReserve.A
  - FreshPotentialAverageKillAndPositiveTransfer.A
  - FreshPositiveStressSecondOrderExactness.A
source_surfaces:
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-terminal-visible-readout-full-packet-noresidue-rigidity-20260627.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-visible-zeno-readout-unweighted-reserve-reconciliation-20260627.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-fresh-paired-carrier-der-aqk-potential-average-boundary-20260627.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-fresh-paired-carrier-proof-mechanism-audit-20260627.md
  - problems/navier-stokes/theorem-construction/affine-quotient-kill-from-signed-scale-descent-audit.md
  - problems/navier-stokes/theorem-construction/affine-survivor-stripped-down-note.md
edge_effect: >-
  Preserves TerminalFullPacketNoResiduePayment.A as the active parent hinge while
  identifying the sharp concrete producer inside its unweighted same-carrier
  visible-readout branch. Terminal visibility and full-packet no-residue are the
  parent route. The fresh paired-carrier DER/AQK edge supplies the current
  smallest noncircular branch theorem: kill the fresh potential average and
  transfer it to the positive stress source, or prove direct positive-source
  second-order exactness.
downstream_consequence: >-
  The relay should not replace the full-packet hinge with a scalar branch, and it
  should not leave the branch as generic visible-readout payment. The next
  proof-bearing producer under the full-packet hinge is
  FreshPotentialAverageKillAndPositiveTransfer.A / FreshPositiveStressSecondOrderExactness.A;
  proving it gives AQK, then FreshSourceWeightedPairedCarrierBound.A, then the
  unweighted same-carrier visible-readout reserve needed by the retained terminal
  readout branch.
---

# Terminal Full-Packet Hinge / Fresh Potential Producer Reconciliation

## Status

This note does not prove `TerminalFullPacketNoResiduePayment.A`. It fixes the
relay hierarchy around it.

The parent hinge remains:

```text
TerminalFullPacketNoResiduePayment.A
```

The sharp concrete producer inside the unweighted same-carrier visible-readout
branch is:

```text
FreshPotentialAverageKillAndPositiveTransfer.A
```

or equivalently:

```text
FreshPositiveStressSecondOrderExactness.A
```

So the full-packet no-residue route is not being replaced by a scalar branch.
The scalar branch is the smallest currently checked producer feeding one open
part of the full-packet hinge.

## 1. Parent hinge and branch hierarchy

The terminal-Zeno reduction installs visibility, not payment. After the finite
pre-Cauchy graph, legal/collar losses, pair-weight defects, donor trees,
entrance leaves, and retained signed partners are removed or charged, the
surviving terminal donor-chain source cannot stay invisible. It appears as
endpoint UI, legal/collar loss, endpoint storage jump, profile branch, CM
service failure after same-witness admission, or a high-factor/source-square /
finite-rung visible readout.

The full-packet note then selects the broad parent attack: keep the full
Hodge-Stokes participation packet and prove no-residue full-cycle payment, or
extract a lossless full-packet limit and prove that such a packet carries no
positive selected terminal source.

That broad attack remains the right relay hinge because it keeps pressure,
viscosity, incompressibility, cutoff, time, scale, tail, and signed channels on
one carrier. The fresh potential-average theorem is narrower: it is the concrete
producer for the unweighted reserve branch when the retained readout is routed
through the fresh paired-carrier DER/AQK mechanism.

## 2. The unweighted branch object

The branch asks for the fresh weighted paired carrier

```math
I_{fresh}(P)
:=
\int_0^{T^*}
\sum_{k>N+M}
2^k a_k^{fresh}(t)\mathcal D_k^{\uparrow,fresh}(t)\,dt
```

to obey

```math
I_{fresh}(P)
\le
C_N(u_0)\mathcal R(P)+R_{legal}(P).
\tag{1}
```

The DER/AQK split reduces this to the affine quotient survivor

```math
c_F^{fresh}(t,x)
=
A_\kappa M_0^{fresh}(t,x)+B_\kappa M_1^{fresh}(t,x),
```

where

```math
M_0^{fresh}(t,x)=\int_J\widetilde Z^{fresh}(\sigma,t,x)\,d\sigma,
\qquad
M_1^{fresh}(t,x)=\int_J\sigma\widetilde Z^{fresh}(\sigma,t,x)\,d\sigma.
```

The required affine quotient estimate is

```math
\int_0^{T^*}H_w(t)\|c_F^{fresh}(t)\|_{L_x^2}^2\,dt
\le
{\eta\nu\over C}\int_0^{T^*}D_N(t)\,dt
+C_*2^{-2\delta N}+R_{legal}.
\tag{2}
```

This is smaller than terminal full-packet payment because it targets one
coefficient functional of one fresh positive source. It also does not assume the
terminal atom is gone; it supplies one producer that can prevent that atom on the
same branch.

## 3. The exact obstruction after signed descent

The installed signed scale descent gives only first-order exactness:

```math
Y^{fresh}(\sigma,t)
=
\partial_\sigma\Psi^{fresh}(\sigma,t)
+S^{spill}(\sigma,t)+E(\sigma,t).
\tag{3}
```

Pairing against the affine quotient weight leaves

```math
\mathcal P_{avg}^{fresh}(t)
:=
{1\over |J|}\int_J\Psi^{fresh}(\sigma,t)\,d\sigma.
\tag{4}
```

So the current descent is one scale derivative short. It kills the constant
quotient direction, but the affine quotient still sees the average of the
potential.

A concrete obstruction shape is therefore clear: take a first-order scale exact
source whose endpoint and spill terms are small while the potential has a
persistent scale average on the retained interval. The first-order identity is
still true, but the affine quotient coefficient survives through
`\mathcal P_{avg}^{fresh}`. This shows why visibility, raw Bessel mass, and
first-order signed descent do not themselves produce `(2)`.

## 4. Smallest concrete producer

The noncircular producer has two equivalent forms.

First, prove the potential-average kill

```math
\int_0^{T^*}
H_w(t)\|\mathcal P_{avg}^{fresh}(t)\|_{L_x^2}^2\,dt
\le
{\eta\nu\over C}\int_0^{T^*}D_N(t)\,dt
+C_*2^{-2\delta N}+R_{legal},
\tag{5}
```

and transfer that signed potential-average control to the positive fresh stress
source `\widetilde Z^{fresh}` appearing in `M_0^{fresh}` and `M_1^{fresh}`.

Second, prove direct positive-source second-order exactness:

```math
\widetilde Z^{fresh}
=
(\partial_\sigma-1)\partial_\sigma G^{fresh}+R^{fresh},
\tag{6}
```

with boundary terms killed on the retained one-sided scale interval and

```math
\int_0^{T^*}H_w(t)
\left\|
\int_J\theta_\kappa(\sigma)R^{fresh}(\sigma,t)\,d\sigma
\right\|_{L_x^2}^2dt
\le
{\eta\nu\over C}\int_0^{T^*}D_N(t)\,dt
+C_*2^{-2\delta N}+R_{legal}.
\tag{7}
```

Either `(5)` plus signed-to-positive transfer, or `(6)`-`(7)`, gives AQK. With
DER already separated, AQK gives the fresh paired-carrier bound `(1)`. That
feeds `UnweightedSameCarrierVisibleReadoutReserve.A`, which is the concrete
producer branch for the retained terminal visible readout under the full-packet
hinge.

## 5. Correct relay reading

Keep the current parent hinge:

```text
TerminalFullPacketNoResiduePayment.A
```

but refine its concrete open producer branch to:

```text
FreshPotentialAverageKillAndPositiveTransfer.A
/
FreshPositiveStressSecondOrderExactness.A
```

The first-order signed mechanism has isolated the real obstruction. The missing
mathematics is not another visibility theorem and not another scalar consumer
criterion. It is the second scale derivative, or equivalent potential-average
kill plus signed-to-positive transfer, on the same fresh positive stress source.