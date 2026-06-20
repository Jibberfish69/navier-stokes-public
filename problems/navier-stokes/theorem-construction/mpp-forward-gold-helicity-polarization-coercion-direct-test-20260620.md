---
ns_viewer:
  theorem_id: forward-gold-helicity-polarization-coercion-direct-test-20260620
  status: direct-test-complete-helicity-does-not-produce-unweighted-selected-carrier-reserve
  proof_role: forward_gold_same_carrier_unweighted_action_production_boundary
  logical_landing_node: terminal_heat_scale_pulse_unweighted_selected_carrier_reserve
  edge_effect: "Tests helicity and helical polarization as a genuinely different conservation/coherence currency after the same-carrier wall. Helicity is signed and polarization-sensitive; the selected positive native carrier can be positive with zero local helicity, while Beltrami/helical cancellation is a special depletion class not produced from terminal active packets. Thus helicity does not remove the heat-scale radius discount or prove the unweighted selected-carrier reserve."
  upstream_origin:
    - problems/navier-stokes/theorem-construction/mpp-forward-gold-enstrophy-square-budget-direct-test-20260620.md
    - problems/navier-stokes/theorem-construction/mpp-forward-gold-terminal-heat-scale-pulse-master-normal-form-20260620.md
    - problems/navier-stokes/theorem-construction/mpp-sourcepulse-beltrami-helical-alignment-audit-note.md
    - problems/navier-stokes/theorem-construction/mpp-sourcepulse-vorticity-direction-coherence-audit-note.md
  downstream_consequence: "Do not respawn helicity, helical decomposition, Beltrami depletion, or polarization coherence as a forward-gold supplier unless it is upgraded to a same-carrier source-square/critical-strain/no-waste theorem on the actual selected positive native carrier."
---

# MPP Forward-Gold Helicity / Polarization Coercion Direct Test

Date: 2026-06-20

## Status

Direct test complete.  Helicity and helical polarization do not supply the
unweighted same-carrier reserve from the current inputs.

The reason is exact: helicity is a signed handedness balance, while the
forward-gold carrier is a one-sided selected strain-production measure after
localization, packet selection, lifting, and positive-part extraction.

## 1. Target

The current forward-gold wall is the selected positive carrier

```math
a_m(s)
=
r_m\int_{B_{r_m}(x_m)}
\left[
\left\langle
S_{<j_m}^{loc}w_{j_m},w_{j_m}
\right\rangle
\right]_+
(T_m+r_m^2s,x)\,dx .
\tag{HPC.1}
```

The desired theorem is an unweighted terminal reserve, endpoint uniform
integrability, or square budget for `(HPC.1)`.  This note tests whether helicity
can supply that reserve.

## 2. Helicity identity is signed

For smooth decaying or periodic Navier--Stokes flow, with

```math
\omega=\nabla\times u,
\qquad
H(t)=\int u(t,x)\cdot\omega(t,x)\,dx,
\tag{HPC.2}
```

one has

```math
{d\over dt}H(t)
=
-2\nu\int \omega\cdot(\nabla\times\omega)\,dx.
\tag{HPC.3}
```

The right side has no sign.  The quantity \(H\) is also signed.  It distinguishes
helical polarizations, but it is not a positive source budget.

In Fourier/helical variables, schematically,

```math
H
=
\sum_\xi |\xi|
\left(
|u_+(\xi)|^2-|u_-(\xi)|^2
\right).
\tag{HPC.4}
```

Thus equal opposite helicities can cancel in helicity while retaining large
packet energy, strain response, or selected positive source.

## 3. Zero-helicity positive-source model

The local obstruction is already visible in one packet.  Take a high packet with
wave vector \(e_2\) and polarization \(e_1\):

```math
w_\lambda(x)
=
B\,\psi(\lambda x)\,e_1
\quad\text{with principal oscillation in the }e_2\text{ direction.}
\tag{HPC.5}
```

For the ideal plane-wave component \(w=B e_1\cos(\lambda x_2)\),

```math
\nabla\times w
=
-B\lambda e_3\sin(\lambda x_2),
\qquad
w\cdot(\nabla\times w)=0.
\tag{HPC.6}
```

So the packet carries zero pointwise helicity density at principal order.

Now place it in a trace-free low strain

```math
S_0
=
\operatorname{diag}(2,-1,-1).
\tag{HPC.7}
```

The selected positive strain work is

```math
\left[
\langle S_0 w,w\rangle
\right]_+
=
2|w|^2.
\tag{HPC.8}
```

Thus the native selected positive carrier can be strictly positive while the
helicity density is zero.  Helicity cannot dominate `(HPC.1)`.

## 4. Heat-scale normalization keeps the old obstruction

On a heat window of length

```math
|I_\lambda|=\lambda^{-2},
\tag{HPC.9}
```

choose the same square-pulse size as in the current normal form:

```math
\Phi_\lambda^+(t)
=
\lambda^{1/2}{\bf 1}_{I_\lambda}(t).
\tag{HPC.10}
```

Then

```math
\int_{I_\lambda}\Phi_\lambda^+(t)\,dt
=
\lambda^{-3/2}\to0,
\tag{HPC.11}
```

but

```math
\int_{I_\lambda}\lambda
\left(\Phi_\lambda^+(t)\right)^2dt
=
1.
\tag{HPC.12}
```

The helicity calculation `(HPC.6)` does not change this scale law.  It supplies
neither a terminal strip modulus nor a square-strength budget.

## 5. Beltrami and single-helicity packets are consumers, not production

A pure Beltrami packet,

```math
\nabla\times u=\lambda u,
\tag{HPC.13}
```

can deplete projected self-interaction by turning part of the nonlinearity into
a pressure gradient.  That is a valid special cancellation class.

The forward-gold branch needs the reverse production theorem:

```math
\text{terminal selected positive source packet}
\Longrightarrow
\text{Beltrami/helical depletion class}
\tag{HPC.14}
```

or a quantitative anti-Beltrami Carleson theorem proving the non-Beltrami part
is small on the actual bad windows.  Current inputs do not supply `(HPC.14)`.
The older Beltrami/helical audit already records this production failure; the
present test adds the sharper zero-helicity positive-source model `(HPC.5)`--
`(HPC.8)`.

## 6. Verdict

Helicity is not an independent forward-gold coercive currency for the retained
terminal heat-scale pulse.

It fails in two exact ways:

```math
\boxed{
\text{helicity is signed and can cancel between helical polarizations;}
}
\tag{HPC.15}
```

and

```math
\boxed{
\text{the selected positive strain carrier can be nonzero with zero helicity.}
}
\tag{HPC.16}
```

Therefore the helicity/polarization route returns to the existing
same-carrier wall:

```math
\boxed{
\text{SourceSquareReserve.A / SelectedCriticalStrainCarleson.A /
StrictRescaledNoWasteLyapunov.A / polar saturation plus no-free Zeno,}
}
\tag{HPC.17}
```

or directly

```math
\boxed{
\text{UnweightedTerminalCriticalActionReserve.A on the actual selected positive
carrier.}
}
\tag{HPC.18}
```

After same-witness CM admission, a surviving helicity-invisible positive
carrier is readout material for Pack/Part/Field.  It is not a forward-positive
anti-atom proof.
