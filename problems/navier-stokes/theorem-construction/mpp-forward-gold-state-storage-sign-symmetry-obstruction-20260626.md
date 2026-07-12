# State-only storage sign-symmetry obstruction

Status: failed storage proof; obstruction proved for ordinary state-only candidates.

## 1. Question

Can a bounded-below same-material storage depending only on the instantaneous material packet pay the full rectified moving participation-law-strain service?

Target inequality:

```math
c\,d\Omega_N^{full}
\le
-d\mathfrak L_N+dR_N,
\qquad
\mathfrak L_N\ge -C_N(u_0),
\qquad
\int_0^{T^*}dR_N<\infty .
```

Here `d\Omega_N^{full}` is the rectified positive service of the full transported pressure-viscosity-incompressibility-velocity packet.

## 2. Abstract first-order test

Let `Z` denote the instantaneous material-Hodge packet: material metric, pulled-back velocity, pressure/Hodge constraint data, transported collar, and coefficient frame.

Let `v` be an admissible same-time participant-tangent direction for the pressure-strain / Hodge-interface motion at `Z`. Let the rectified service density be `q_Z(v)`, with

```math
q_Z(v)\ge0,
\qquad
q_Z(-v)=q_Z(v).
```

For any differentiable state-only storage `\mathfrak L_N(Z)`, the first variation is odd in the tangent direction:

```math
D\mathfrak L_N(Z)[-v]=-D\mathfrak L_N(Z)[v].
```

A state-only storage proof would require, for every admissible service direction,

```math
c\,q_Z(v)
\le
-D\mathfrak L_N(Z)[v]+r_Z(v),
```

and also along the opposite direction,

```math
c\,q_Z(-v)
\le
-D\mathfrak L_N(Z)[-v]+r_Z(-v).
```

Adding the two inequalities gives

```math
2c\,q_Z(v)
\le
r_Z(v)+r_Z(-v).
```

Thus the integrable error must already contain the rectified service size in every sign-opposite pair.

## 3. Consequence for the forward-gold route

The known errors are fixed-collar service, raw fixed-annulus stress action, ordinary finite energy/dissipation, and lower-order commutator/cutoff terms. These errors are insufficient to dominate the full moving continuation-depth service in the heat-scale terminal arithmetic:

```math
U_\ell\sim \ell^{-1},
\qquad
\tau_\ell\sim \ell^2,
\qquad
|\nabla u|_\ell\sim \ell^{-2}.
```

One critical sample has raw physical cost of order `\ell`, while the material deformation clock has order one. Therefore an error ledger built only from raw energy/fixed-annulus terms cannot absorb `q_Z(v)+q_Z(-v)` at the full moving clock level.

The sign-symmetry calculation rules out the ordinary candidate class:

```math
\mathfrak L_N=F_N(Z(t))
```

with `F_N` a local instantaneous material-Hodge state functional and `dR_N` restricted to the already-installed energy/fixed-collar/fixed-annulus ledgers.

## 4. Meaning of the failure

The full service estimate needs a storage carrying path-dependent reserve information. The reserve must remember that a positive pressure-strain / Hodge-interface service event has consumed native material capacity, so a later sign-reversed motion cannot spend the same reserve again at the same continuation depth.

That is exactly the terminal no-recirculation / no-refund theorem:

```math
\boxed{\text{FullSamePacketPLSNoRecirculation.A}}
```

A viable storage has to be a spent-reserve ledger or monotone envelope attached to the same material history, rather than a smooth instantaneous state functional.

## 5. Result

This bounded unit does not prove `\int_0^{T^*}\Theta_N(t)dt<\infty`.

It proves the failure of the natural state-only storage route and sharpens the next live target:

```math
\text{construct a path-dependent same-material reserve whose monotone loss pays }d\Omega_N^{full}.
```

The remaining hinge is `FullSamePacketPLSNoRecirculation.A`.
