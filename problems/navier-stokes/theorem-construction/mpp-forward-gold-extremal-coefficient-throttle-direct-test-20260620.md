---
ns_viewer:
  theorem_id: forward-gold-extremal-coefficient-throttle-direct-test-20260620
  status: direct-test-complete-extremal-choice-does-not-produce-throttle
  proof_role: forward_gold_same_carrier_unweighted_action_production_boundary
  logical_landing_node: terminal_heat_scale_pulse_unweighted_selected_carrier_reserve
  edge_effect: "Tests the remaining extremal first-bad-window idea for producing a same-carrier coefficient throttle. The exact scalar shell-balance model shows that a first crossing of the unweighted square reserve can occur with heat-clock coefficient alpha=lambda^2 on a window of length lambda^(-2), zero inherited past, vanishing linear residence, and order-one unweighted square reserve. Thus extremality locates the pulse but does not produce a strict coefficient gap or same-carrier square budget."
  upstream_origin:
    - problems/navier-stokes/theorem-construction/mpp-forward-gold-coherent-participation-square-reserve-direct-test-20260620.md
    - problems/navier-stokes/theorem-construction/mpp-forward-gold-minimal-counterexample-unweighted-reserve-direct-test-20260620.md
    - problems/navier-stokes/theorem-construction/mpp-forward-gold-first-created-height-payment-post-minimal-split-test-20260620.md
    - problems/navier-stokes/theorem-construction/mpp-forward-gold-same-carrier-production-method-finality-20260620.md
  downstream_consequence: "Do not respawn extremal/minimal first-bad-window language as a forward-gold supplier unless it proves a strict sub-heat-clock coefficient gap, a same-carrier coefficient-square budget, or one of the already isolated unweighted-reserve equivalents on the actual selected positive carrier."
---

# MPP Forward-Gold Extremal Coefficient-Throttle Direct Test

Date: 2026-06-20

## Status

Direct extremal/coefficient-throttle test complete.

The extremal first-bad-window idea is useful for locating the retained
heat-scale pulse.  It does not itself produce the missing same-carrier
unweighted reserve.

The exact result is:

```math
\boxed{
\text{first bad window}
\not\Longrightarrow
\text{strict heat-clock coefficient throttle}.
}
\tag{ECT.1}
```

The obstruction is not philosophical.  It is the heat-scale equality case of
the shell balance.

## 1. Shell-balance normal form

On a selected shell with frequency

```math
\lambda=2^j,
\tag{ECT.2}
```

write the localized shell energy and heat-scale dissipation as

```math
E(t)=\|w_j(t)\|_2^2,
\qquad
D(t)=\lambda^2E(t).
\tag{ECT.3}
```

After pressure, convection, viscosity, cutoff, projection, and selector terms
are assembled into the same-fluid participation current, the positive selected
part has the scalar form

```math
\Pi^+(t)=\alpha_+(t)E(t),
\tag{ECT.4}
```

and the shell balance reads

```math
E'(t)+c\nu D(t)
\le
\Pi^+(t)+L(t),
\tag{ECT.5}
```

where \(L\) is already legal leakage.

The forward-gold reserve needs square-strength control on the same selected
carrier:

```math
\mathcal R(I)
:=
\int_I \lambda\bigl(\Pi^+(t)\bigr)^2\,dt
\quad
\text{or equivalently}
\quad
\int_I \lambda D(t)^2\,dt
\tag{ECT.6}
```

after same-carrier domination is identified.

## 2. The extremal first-crossing model

Let \(I_\lambda=(T-\lambda^{-2},T]\), and set

```math
E(t)=\lambda^{-3/2}{\bf 1}_{I_\lambda}(t),
\qquad
D(t)=\lambda^{1/2}{\bf 1}_{I_\lambda}(t).
\tag{ECT.7}
```

Choose the selected participation coefficient at the heat-clock rate:

```math
\alpha_+(t)=c\nu\lambda^2{\bf 1}_{I_\lambda}(t),
\qquad
\Pi^+(t)=c\nu\lambda^{1/2}{\bf 1}_{I_\lambda}(t),
\tag{ECT.8}
```

and take \(L=0\).  On the interior of \(I_\lambda\),

```math
E'(t)=0,
\qquad
c\nu D(t)=\Pi^+(t),
\tag{ECT.9}
```

so the balance `(ECT.5)` is exactly saturated.

The linear residence vanishes:

```math
\int_{I_\lambda}\Pi^+(t)\,dt
=
c\nu\lambda^{1/2}\lambda^{-2}
=
c\nu\lambda^{-3/2}
\longrightarrow0.
\tag{ECT.10}
```

The unweighted square reserve is order one:

```math
\int_{I_\lambda}
\lambda\bigl(\Pi^+(t)\bigr)^2\,dt
=
c^2\nu^2\lambda\lambda\lambda^{-2}
=
c^2\nu^2.
\tag{ECT.11}
```

Thus the same window has no inherited past, negligible first-moment residence,
and fixed square reserve.

## 3. Why first-bad-window minimality does not help

Define the running square reserve

```math
R_\lambda(t)
:=
\int_{T-\lambda^{-2}}^{t}
\lambda\bigl(\Pi^+(\tau)\bigr)^2\,d\tau.
\tag{ECT.12}
```

Let \(t_\eta\) be the first time at which \(R_\lambda(t)=\eta\), with
\(0<\eta<c^2\nu^2\).  Then

```math
t_\eta-(T-\lambda^{-2})
=
{\eta\over c^2\nu^2}\lambda^{-2}.
\tag{ECT.13}
```

This is a genuine first bad window: before \(t_\eta\), the selected square
reserve is below \(\eta\); at \(t_\eta\), it first reaches \(\eta\).

But its derivative is large:

```math
R_\lambda'(t)
=
\lambda\bigl(\Pi^+(t)\bigr)^2
=
c^2\nu^2\lambda^2
\qquad
\text{on } I_\lambda.
\tag{ECT.14}
```

Absolute continuity permits exactly this behavior.  Extremality supplies a
first crossing, but it does not bound the crossing speed.

Therefore any proof that uses first-bad-window minimality must add one of the
following noncircular estimates:

```math
\boxed{
\alpha_+(t)\le(c\nu-\kappa)\lambda^2
\quad\text{on the selected carrier}
}
\tag{ECT.15}
```

for some \(\kappa>0\), giving a strict sub-heat-clock gap; or

```math
\boxed{
\int_I\lambda\bigl(\alpha_+(t)E(t)\bigr)^2\,dt
\le
Legal(I)+o(1),
}
\tag{ECT.16}
```

which is the same-carrier square budget itself; or a terminal strip modulus,
critical-strain/CKN Carleson reserve, or strict no-waste functional equivalent
to `(ECT.16)`.

## 4. Tensor interpretation

The scalar coefficient \(\alpha_+\) is the selected expanding direction of the
localized low strain:

```math
\alpha_+(t,x)
=
\left[
e_j(t,x)\cdot S_{<j}^{loc}(t,x)e_j(t,x)
\right]_+ .
\tag{ECT.17}
```

Incompressibility gives

```math
\operatorname{tr}S_{<j}^{loc}=0.
\tag{ECT.18}
```

It does not give a strict bound below the heat-clock size on the selected
positive eigendirection.  The trace-free partners can be negative in the
orthogonal directions while the selected carrier keeps the positive expanding
direction:

```math
S^{model}
=
c\nu\lambda^2
\operatorname{diag}(2,-1,-1).
\tag{ECT.19}
```

So signed tensor balance and coherent participation remain visible, but the
positive selected scalar can still saturate the heat clock.

## 5. Consequence

The extremal method proves only the localization statement:

```math
\boxed{
\text{failure of the unweighted reserve}
\Longrightarrow
\text{a first selected heat-clock square crossing.}
}
\tag{ECT.20}
```

It does not prove:

```math
\boxed{
\text{first selected heat-clock square crossing}
\Longrightarrow
\text{strict coefficient throttle or square payment.}
}
\tag{ECT.21}
```

The missing theorem is therefore one of the already isolated same-carrier
objects:

```math
\boxed{
\text{StrictHeatClockCoefficientGap.A}
\quad\text{or}\quad
\text{SameCarrierCoefficientSquareBudget.A}
\quad\text{or}\quad
\text{UnweightedTerminalCriticalActionReserve.A}.
}
\tag{ECT.22}
```

At current route resolution these are not independent installed suppliers.
They are exact forms of the same forward-gold wall: square-strength control on
the actual selected positive carrier.

## Verdict

Extremal first-bad-window selection does not close the forward-gold route from
current inputs.  It identifies the first point where the missing square reserve
appears, but the heat-clock model `(ECT.7)`--`(ECT.14)` shows that the first
appearance can be lawful, same-carrier, source-balanced, and unweighted
order-one while all linear physical residence remains radius-discounted.

Thus this branch returns to the same non-aliased production theorem:

```math
\boxed{
\text{UnweightedTerminalCriticalActionReserve.A on the actual selected positive
carrier.}
}
\tag{ECT.23}
```
