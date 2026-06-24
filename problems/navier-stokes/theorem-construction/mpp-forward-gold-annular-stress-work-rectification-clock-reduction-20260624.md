---
theorem_id: forward-gold-annular-stress-work-rectification-clock-reduction-20260624
status: exact-reduction-total-flux-to-signed-flux-plus-same-packet-flux-variation-clock
logical_landing_node: signed_smooth_same_packet_commutator_coercivity
edge_effect: >-
  Refines the total annular stress-work obstruction without leaving the
  same-fluid participation object. The total stress-work through a transported
  annulus is reduced to signed net flux, which the local energy identity
  controls by storage and dissipation, plus a rectification clock measuring
  time-variation of the same annular stress-work flux. Differentiating that
  flux produces only same-packet pressure, strain, velocity, material cutoff,
  and tower terms. Thus the remaining producer is sharpened from vague
  total-variation control to a concrete same-packet flux-derivative clock
  estimate.
parents:
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-annular-stress-work-total-variation-clock-test-20260624.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-same-material-annular-return-identity-20260623.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-signed-smooth-same-packet-commutator-direct-calculation-20260623.md
---

# Annular Stress-Work Rectification Clock Reduction

Date: 2026-06-24

## 0. Result

The last note separated signed net stress-work from total annular stress-work.
This note gives the exact repair path that stays inside the same physical
object.

For one transported annulus, total stress-work is controlled by:

1. the signed net stress-work, already tied to local storage and strain loss;
2. the variation of the same stress-work flux in time.

The second term is the cost of back-and-forth annular exchange.  It is not a
new readout.  It is the derivative of the same pressure-strain stress-work
transaction.

## 1. Scalar rectification lemma

Let \(F\in W^{1,1}(I)\), where \(I=[a,b]\) and \(|I|\le1\).  Then

```math
\int_I |F(s)|\,ds
\le
\left|\int_I F(s)\,ds\right|
+
\int_I |F'(s)|\,ds .
\tag{ARC.1}
```

Proof.  Let

```math
\bar F={1\over |I|}\int_I F(s)\,ds .
\tag{ARC.2}
```

Then

```math
\int_I |F|\,ds
\le
|I|\,|\bar F|
+
\int_I |F-\bar F|\,ds.
\tag{ARC.3}
```

The first term is \(|\int_I F|\).  Since \(F\in W^{1,1}\),

```math
\sup_I |F-\bar F|
\le
\operatorname{Var}_I F
\le
\int_I |F'(s)|\,ds .
\tag{ARC.4}
```

Because \(|I|\le1\), `(ARC.1)` follows.

This lemma is the exact net-versus-total correction.  Constant one-way flux is
paid by the signed net term.  Oscillatory back-and-forth flux is paid by the
flux-variation term.

## 2. Apply the lemma to the transported annulus

On a normalized heat-scale packet, let \(\phi\) be transported:

```math
(\partial_s+V\cdot\nabla)\phi=0.
\tag{ARC.5}
```

Let

```math
T=-QI+2\nu S(V),
\qquad
D_\phi(s)=2\nu\int \phi |S(V)|^2\,dy,
\tag{ARC.6}
```

and define the annular stress-work flux

```math
F_\phi(s)=\int V\cdot T\nabla\phi\,dy.
\tag{ARC.7}
```

The transported local energy identity is

```math
\frac{d}{ds}M_\phi(s)+D_\phi(s)=-F_\phi(s).
\tag{ARC.8}
```

For every normalized interval \(J\subset[-1,0]\), `(ARC.1)` gives

```math
\int_J |F_\phi(s)|\,ds
\le
\left|\int_JF_\phi(s)\,ds\right|
+
\int_J |F_\phi'(s)|\,ds .
\tag{ARC.9}
```

By `(ARC.8)`,

```math
\left|\int_JF_\phi(s)\,ds\right|
\le
|M_\phi(s_2)-M_\phi(s_1)|
+
\int_JD_\phi(s)\,ds,
\qquad J=[s_1,s_2].
\tag{ARC.10}
```

Thus

```math
\boxed{
\int_J\left(D_\phi+|F_\phi|\right)ds
\le
|M_\phi(s_2)-M_\phi(s_1)|
+
2\int_JD_\phi\,ds
+
\int_J|F_\phi'|\,ds .
}
\tag{ARC.11}
```

This is the exact same-annulus total-work reduction.

## 3. Differentiating the flux stays inside the same packet

The derivative of \(F_\phi\) is not external.  Since \(\nabla\cdot V=0\), the
time derivative of an integral can be written with the material derivative
\(D_s=\partial_s+V\cdot\nabla\).  Also

```math
D_s\nabla\phi=-(\nabla V)^\top\nabla\phi.
\tag{ARC.12}
```

Therefore

```math
F_\phi'
=
\int
D_s\big(V\cdot T\nabla\phi\big)\,dy
\tag{ARC.13}
```

and hence

```math
\begin{aligned}
F_\phi'
= {}&
\int (D_sV)\cdot T\nabla\phi\,dy  \\
&+\int V\cdot (D_sT)\nabla\phi\,dy \\
&-\int V_iT_{ij}(\partial_jV_k)(\partial_k\phi)\,dy .
\end{aligned}
\tag{ARC.14}
```

Using the momentum equation in stress form,

```math
D_sV=\nabla\cdot T,
\tag{ARC.15}
```

and

```math
D_sT=-(D_sQ)I+2\nu D_sS(V).
\tag{ARC.16}
```

Moreover

```math
D_sS(V)
=
\operatorname{sym}\nabla(D_sV)
-
\operatorname{sym}\big((\nabla V)^2\big),
\tag{ARC.17}
```

so after substituting `(ARC.15)`, \(D_sS(V)\) is made of derivatives of
\(\nabla\cdot T\) plus quadratic velocity-gradient terms.

The pressure derivative is tied to the differentiated pressure equation.  Since

```math
-\Delta Q=\partial_iV_j\,\partial_jV_i,
\tag{ARC.18}
```

one has

```math
-\Delta(D_sQ)
=
D_s(\partial_iV_j\,\partial_jV_i)
+
[\Delta,D_s]Q .
\tag{ARC.19}
```

The commutator \([\Delta,D_s]\) contains only \(\nabla V\), \(\nabla^2V\), and
pressure derivatives on the same packet.

Thus \(F_\phi'\) is controlled by the same finite material pressure/strain
tower, transported collar geometry, and velocity-gradient products already
appearing in the signed same-packet commutator calculation.

## 4. Exact reduced clock

Define the rectification density

```math
R_\phi^{rect}(s)=|F_\phi'(s)|.
\tag{ARC.20}
```

The total annular participation density satisfies

```math
\int_J\left(D_\phi+|F_\phi|\right)ds
\le
|M_\phi(s_2)-M_\phi(s_1)|
+
2\int_JD_\phi\,ds
+
\int_JR_\phi^{rect}(s)\,ds.
\tag{ARC.21}
```

So the total stress-work clock is finite if the same-packet rectification clock
is finite on the selected terminal heat-scale family:

```math
\sum_j
\int_{J_j}
R_{\phi_j}^{rect}(s)\,ds
<\infty.
\tag{ARC.22}
```

No separate pressure-only, viscosity-only, endpoint, or finite-jet supplier has
been introduced.  The flux derivative is the time derivative of the same
annular stress-work transaction.

## 5. What remains

This reduction does not close the MPP by itself.  It identifies the exact
remaining signed-clock producer in a stricter form:

```math
\boxed{
\text{the same-packet material tower must control }
\sum_j\int_{J_j}|F_{\phi_j}'(s)|\,ds
\text{ with unweighted terminal scale.}
}
\tag{ARC.23}
```

Together with the direct commutator calculation, this says the full producer is
equivalent to finite unweighted control of:

```math
\text{annular flux rectification}
+
\text{material strain/coefficient service}
+
\text{pressure tower service}
+
\text{transported collar service}.
\tag{ARC.24}
```

That is exactly the same pressure-viscosity-incompressibility-velocity packet.
The pay-it-back-later mechanism is preserved: the outer annulus holds the
later stress/strain return; the remaining mathematical burden is to prove that
its back-and-forth rectification clock cannot accumulate infinitely through the
terminal heat-scale family.
