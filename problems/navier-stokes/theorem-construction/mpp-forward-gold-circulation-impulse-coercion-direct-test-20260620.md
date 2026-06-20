---
ns_viewer:
  theorem_id: forward-gold-circulation-impulse-coercion-direct-test-20260620
  status: direct-test-complete-circulation-impulse-do-not-produce-unweighted-selected-carrier-reserve
  proof_role: forward_gold_same_carrier_unweighted_action_production_boundary
  logical_landing_node: terminal_heat_scale_pulse_unweighted_selected_carrier_reserve
  edge_effect: "Tests Kelvin circulation, local circulation, fluid impulse, and angular/angular-moment currencies against the retained terminal heat-scale carrier. Kelvin gives signed loop visibility and a material-loop time law, but viscosity changes circulation at the heat-scale rate and no monotone positive reserve is produced. Local circulation and impulse are signed, gauge/loop dependent, cancellable by opposite orientations, and do not dominate the selected positive strain carrier. Thus this branch returns to the same same-carrier source-square / selected critical strain / strict no-waste / polar saturation wall."
  upstream_origin:
    - problems/navier-stokes/theorem-construction/mpp-forward-gold-terminal-heat-scale-pulse-master-normal-form-20260620.md
    - problems/navier-stokes/theorem-construction/mpp-forward-gold-helicity-polarization-coercion-direct-test-20260620.md
    - problems/navier-stokes/theorem-construction/mpp-cycle-heat-action-direct-attempt-20260505.md
    - problems/navier-stokes/theorem-construction/mpp-cycle-heat-action-amplitude-obstruction-and-amp-correction-20260505.md
  downstream_consequence: "Do not respawn Kelvin circulation, local loop circulation, impulse, angular momentum, or vortex-spin moment as a forward-gold supplier unless it is upgraded to a positive same-carrier source-square / selected critical-strain / no-waste / polar-saturation theorem on the actual selected native carrier."
---

# MPP Forward-Gold Circulation / Impulse Coercion Direct Test

Date: 2026-06-20

## Status

Direct test complete.  Kelvin circulation, local circulation, fluid impulse,
and angular/angular-moment currencies do not supply the unweighted selected
carrier reserve from the current inputs.

The useful fact is real but weaker: circulation is a time-aware loop readout of
how vorticity is transported and diffused.  The forward-gold obstruction needs a
positive same-carrier payment for a terminal heat-scale pulse.  The circulation
currencies are signed and can cancel while the selected positive carrier remains
strictly positive.

## 1. Target

The current forward-gold wall is the actual selected positive carrier

```math
a_m(s)
=
r_m
\int_{B_{r_m}(x_m)}
\left[
\left\langle
S_{<j_m}^{loc}w_{j_m},
w_{j_m}
\right\rangle
\right]_+
(t_m+r_m^2s,x)\,dx,
\qquad -1\le s\le0.
\tag{KIC.1}
```

The needed endpoint theorem is

```math
\lim_{\theta\downarrow0}\limsup_m
\int_{-\theta}^{0}a_m(s)\,ds
=0,
\tag{KIC.2}
```

or an equivalent unweighted terminal critical-action reserve on the same
selected carrier.

This note tests whether circulation or impulse can provide that reserve.

## 2. Kelvin circulation gives a time law, not a positive reserve

Let \(\Gamma_t\) be a smooth material loop transported by a smooth
Navier--Stokes velocity:

```math
\partial_tu+(u\cdot\nabla)u+\nabla p=\nu\Delta u,
\qquad
\nabla\cdot u=0.
\tag{KIC.3}
```

Then

```math
{d\over dt}\oint_{\Gamma_t}u\cdot dx
=
\nu\oint_{\Gamma_t}\Delta u\cdot dx.
\tag{KIC.4}
```

The pressure and convection terms disappear in the material loop identity.  That
is the good part: Kelvin circulation is a native time-language for loop
transport.

The defect is exact: the right side of `(KIC.4)` is signed and has no monotone
sign.  Since

```math
\Delta u=-\nabla\times\omega
\qquad
(\omega=\nabla\times u),
\tag{KIC.5}
```

the viscous term is a curl/vorticity-diffusion readout, not a nonnegative
payment.  A terminal heat-scale pulse is allowed to change a local circulation
at rate \(r^{-2}\) over a time window \(r^2\), producing order-one signed
circulation change without any contradiction.

Indeed, under Navier--Stokes scaling

```math
u_r(t,x)
=
r^{-1}U(r^{-2}t,r^{-1}x),
\tag{KIC.6}
```

for a loop of diameter \(r\),

```math
\oint_{\Gamma_r}u_r\cdot dx
\sim 1,
\qquad
\oint_{\Gamma_r}\Delta u_r\cdot dx
\sim r^{-2}.
\tag{KIC.7}
```

Over one heat time \(r^2\), `(KIC.4)` gives an order-one signed change.  This is
visible, but it is not coercive.

## 3. Local circulation can vanish while selected positive strain is nonzero

The obstruction is already visible at the packet level.  Use the same
divergence-free principal packet as in the helicity and microlocal tests:

```math
w_\lambda(x)
=
B\,e_1\cos(\lambda x_2).
\tag{KIC.8}
```

Then

```math
\nabla\times w_\lambda
=
-B\lambda e_3\sin(\lambda x_2).
\tag{KIC.9}
```

On a full period cell in the \(x_1x_2\)-plane,

```math
\int_0^{2\pi/\lambda}
-B\lambda\sin(\lambda x_2)\,dx_2
=0.
\tag{KIC.10}
```

Thus the oriented vorticity flux, and hence the boundary circulation of that
period cell by Stokes' theorem, vanishes.

Place the same packet in a trace-free low strain

```math
S_0=\operatorname{diag}(2,-1,-1).
\tag{KIC.11}
```

Then

```math
\left[
\langle S_0w_\lambda,w_\lambda\rangle
\right]_+
=
2|w_\lambda|^2.
\tag{KIC.12}
```

So the selected positive native carrier can be strictly positive on the same
cell where the oriented circulation readout cancels.

This is not a boundary-choice trick.  Pair two separated packets with opposite
velocity orientation but the same strain background.  Circulation, impulse, and
other signed loop or moment readouts cancel between the pair, while the selected
positive strain carrier adds because it is quadratic and one-sided:

```math
\operatorname{Circ}(w)+\operatorname{Circ}(-w)=0,
\qquad
\left[\langle S_0w,w\rangle\right]_+
+
\left[\langle S_0(-w),-w\rangle\right]_+
=
4|w|^2.
\tag{KIC.13}
```

Any theorem extracting a positive reserve from circulation must therefore add a
same-carrier polar saturation, no-cancellation, or absolute-circulation theorem.
That is not installed in the current inputs.

## 4. Impulse and angular moments are even weaker as local coercive reserves

The relative local fluid impulse has the form

```math
I_r
=
{1\over2}\int_{B_r(x_0)}(x-x_0)\times\omega\,dx
\tag{KIC.14}
```

up to cutoff and boundary terms.  Under the scaling `(KIC.6)`,

```math
\omega_r\sim r^{-2},
\qquad
dx\sim r^3,
\qquad
|x-x_0|\sim r,
\tag{KIC.15}
```

so

```math
I_r\sim r^2.
\tag{KIC.16}
```

Local angular momentum around \(x_0\),

```math
L_r=\int_{B_r(x_0)}(x-x_0)\times u\,dx,
\tag{KIC.17}
```

has the still smaller scale

```math
L_r\sim r^3.
\tag{KIC.18}
```

These moment quantities are signed and radius-weighted.  Symmetric packets can
make them vanish exactly, and terminal heat-scale packets can make them tend to
zero while retaining order-one normalized selected action.

Thus impulse and angular-moment ledgers see geometry and orientation, but they
do not dominate `(KIC.1)`.

## 5. Relation to older cycle-current notes

The older cycle-current branch already contains the same warning in graph form.
The desired unconditional statement

```math
\operatorname{Circ}(C)
\le
\theta\sum_{P\in C}D_P
+o_N(1)+Loss_{legal}
\tag{KIC.19}
```

failed.  The corrected packet calculation showed that closed source-current
cycles pay heat only under a scale-critical amplitude cap:

```math
{\|U_P\|_2\over \nu r_P^{1/2}}
\ll1.
\tag{KIC.20}
```

Without that cap, triadic packet circulation can beat any fixed fraction of heat
dissipation.  Therefore importing Kelvin or loop circulation does not bypass the
current wall; it restates the need for the missing amplitude, source-square, or
same-carrier reserve.

## 6. Verdict

Circulation and impulse are useful diagnostic languages for the time scenario:
they say which loop, moment, or orientation record changes during the terminal
heat-scale feed.  They do not prove that the feed is impossible.

The exact failures are:

```math
\boxed{
\text{Kelvin circulation is signed and viscously changed at the heat-scale rate;}
}
\tag{KIC.21}
```

```math
\boxed{
\text{local circulation, impulse, and angular moments can cancel while the
selected positive carrier adds;}
}
\tag{KIC.22}
```

and

```math
\boxed{
\text{moment currencies are radius-weighted and therefore do not remove the
heat-scale radius discount.}
}
\tag{KIC.23}
```

The branch returns to the same actual forward-gold wall:

```math
\boxed{
\text{same-carrier source-square, selected critical-strain Carleson plus
endpoint carrier UI, strict no-waste, polar saturation/no-free Zeno,}
}
\tag{KIC.24}
```

or directly

```math
\boxed{
\text{UnweightedTerminalCriticalActionReserve.A on the actual selected positive
native carrier.}
}
\tag{KIC.25}
```

After same-witness CM admission, a retained circulation-visible pulse may be a
Pack/Part/Field readout.  It is not a forward-positive no-jump proof.
