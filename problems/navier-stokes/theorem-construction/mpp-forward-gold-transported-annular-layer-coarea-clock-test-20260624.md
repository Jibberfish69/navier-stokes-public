---
theorem_id: forward-gold-transported-annular-layer-coarea-clock-test-20260624
status: all-layer-material-annuli-prove-attachment-not-unweighted-clock-summability
logical_landing_node: signed_smooth_same_packet_commutator_coercivity
edge_effect: >-
  Tests the physical all-annular-layer version of the pay-it-back-later
  mechanism. A transported material annular atlas keeps the center storage
  change attached to the surrounding annular stress/strain history and admits
  every layer flux derivative into the same full packet. Summing over material
  annular layers gives bounded-overlap admission, but it does not by itself
  turn total rectified stress-work variation into a signed or finite quantity.
  The remaining estimate is still the signed same-packet commutator/coercivity
  estimate for the rectified annular flux-derivative clock.
parents:
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-annular-stress-work-rectification-clock-reduction-20260624.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-annular-flux-derivative-same-packet-identity-20260624.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-annular-flux-derivative-original-data-scaling-test-20260624.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-generated-minimal-bridge-and-route-mutation-audit-20260624.md
---

# Transported Annular Layer Coarea Clock Test

Date: 2026-06-24

## 0. Result

The outer annular layers are the right physical object.  They are where the
later stress/strain return lives.

This note checks whether using the whole transported annular layer family
automatically supplies the missing terminal clock.  It does not.  The whole
layer family proves attachment and bounded-overlap admission into the same
packet.  The unweighted terminal clock still requires a signed same-packet
coercive estimate.

## 1. Transported material annular atlas

Work in material coordinates on one smooth preterminal packet:

```math
x=X(a,s),
\qquad
v(a,s)=V(X(a,s),s),
\qquad
q(a,s)=Q(X(a,s),s),
\tag{TAL.1}
```

with

```math
F=D_aX,\qquad A=F^{-1},\qquad G=AA^\top .
\tag{TAL.2}
```

Let `\(\rho(a)\)` be a fixed material radius function on the annular atlas.
Choose shell cutoffs

```math
\psi_\lambda(a)=\chi(\rho(a)-\lambda),
\qquad
\lambda\in[\lambda_0,\lambda_1],
\tag{TAL.3}
```

with uniformly bounded overlap in `\(\lambda\)`.  The Eulerian cutoff is
transported:

```math
\phi_\lambda(X(a,s),s)=\psi_\lambda(a).
\tag{TAL.4}
```

Thus each layer is a same-fluid annular layer, not a center-only projection.

## 2. Layer flux and layer storage

For each layer define

```math
M_\lambda(s)
=
\int {1\over2}|v(a,s)|^2\psi_\lambda(a)\,da
\tag{TAL.5}
```

and the pulled-back stress-work flux

```math
F_\lambda(s)
=
\int
v_i\,\mathcal T_{ij}\,A_{\ell j}\,\partial_\ell\psi_\lambda\,da,
\qquad
\mathcal T=-qI+2\nu S_x(u)\circ X .
\tag{TAL.6}
```

The transported local energy identity gives, for each layer,

```math
{d\over ds}M_\lambda(s)
+
D_\lambda(s)
=
-F_\lambda(s),
\qquad
D_\lambda(s)=2\nu\int\psi_\lambda |S_x(u)\circ X|^2\,da .
\tag{TAL.7}
```

This is the exact pay-it-back-later attachment: the layer storage change is
balanced by strain loss and stress-work through the same transported annular
layer.

## 3. Summing layers gives admission, not a new sign

Integrating the signed flux over layers gives another signed flux:

```math
\int_{\lambda_0}^{\lambda_1}F_\lambda(s)\,d\lambda
=
\int
v_i\,\mathcal T_{ij}\,A_{\ell j}\,
\partial_\ell
\left(
\int_{\lambda_0}^{\lambda_1}\psi_\lambda(a)\,d\lambda
\right)
da .
\tag{TAL.8}
```

So the all-layer signed total is still controlled by the same local storage
and strain identity.  That is good, but it is only the signed part.

The rectified total layer flux is

```math
\int_{\lambda_0}^{\lambda_1}|F_\lambda(s)|\,d\lambda .
\tag{TAL.9}
```

There is no algebraic identity turning `(TAL.9)` into `(TAL.8)`.
Opposite layer fluxes can cancel in `(TAL.8)` while remaining large in
`(TAL.9)`.  That is the net-versus-total distinction inside the same material
annular object.

Bounded overlap gives only the same-packet admission estimate

```math
\int_{\lambda_0}^{\lambda_1}|F_\lambda'(s)|\,d\lambda
\le
C\,\Xi_N^{ann}(s),
\tag{TAL.10}
```

where `\(\Xi_N^{ann}\)` is the material-service density made from the same
velocity, pressure, strain, coefficient, viscous, and collar tower.  This is
not a summability theorem for `\(\Xi_N^{ann}\)`.

## 4. Rectification over every layer

For each layer and every normalized interval `\(J\)`, the rectification lemma
gives

```math
\int_J |F_\lambda(s)|\,ds
\le
\left|\int_J F_\lambda(s)\,ds\right|
+
\int_J |F_\lambda'(s)|\,ds .
\tag{TAL.11}
```

Integrate `(TAL.11)` in `\(\lambda\)`:

```math
\int_{\lambda_0}^{\lambda_1}
\int_J |F_\lambda(s)|\,ds\,d\lambda
\le
\int_{\lambda_0}^{\lambda_1}
\left|\int_J F_\lambda(s)\,ds\right|d\lambda
+
\int_{\lambda_0}^{\lambda_1}
\int_J |F_\lambda'(s)|\,ds\,d\lambda .
\tag{TAL.12}
```

The first term is paid layer-by-layer by storage and dissipation through
`(TAL.7)`.  The second term is the all-layer rectification clock.

Using `(TAL.10)`, the remaining burden becomes

```math
\sum_m
\int_{-1}^{0}
\Xi_{N,m}^{ann}(s)\,ds
<\infty .
\tag{TAL.13}
```

That is the same signed same-packet clock estimate in all-layer language.

## 5. Normal-form check on the shortcut

This is only a proof-mechanism check, not a Navier--Stokes counterexample.
Let two transported layers have scalar fluxes

```math
F_1(s)=\sin(\omega s),
\qquad
F_2(s)=-\sin(\omega s).
\tag{TAL.14}
```

Their signed sum is identically zero:

```math
F_1(s)+F_2(s)=0.
\tag{TAL.15}
```

but their total flux is not:

```math
|F_1(s)|+|F_2(s)|=2|\sin(\omega s)|.
\tag{TAL.16}
```

Their rectification clock is

```math
|F_1'(s)|+|F_2'(s)|
=
2\omega|\cos(\omega s)|.
\tag{TAL.17}
```

So summing layers can destroy the signed readout while the total layer
transaction remains large.  The only way to control the total transaction is
to control the rectification clock itself.

## 6. Proof-state conclusion

The all-layer annular version preserves the user's physical object:

```math
\text{center storage change}
\longleftrightarrow
\text{same-fluid outer-annulus stress/strain history}.
\tag{TAL.18}
```

It also proves the correct admission statement:

```math
\text{all layer flux derivatives}
\subset
\text{same transported material pressure-viscosity-incompressibility-velocity packet}.
\tag{TAL.19}
```

It does not prove finite unweighted terminal clock mass.  The remaining
statement is exactly

```math
\mathrm{SignedSmoothSamePacketCommutatorCoercivity.A}
\tag{TAL.20}
```

in the concrete form `(TAL.13)`.
