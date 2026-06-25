---
theorem_id: forward-gold-superheat-failure-profile-physical-scaling-test-20260625
status: physical-scaling-test-installed-finite-energy-does-not-exclude-superheat-profile
logical_landing_node: global_same_packet_full_clock_from_original_data
edge_effect: >-
  Tests the remaining strain-superheat clock against the user-supplied
  spike-wave ontology. A self-similar rising/thinning spike is not the first
  remaining clock threat; its strain-superheat contribution is summable. The
  first strain-superheat nonsummable profile is taller than self-similar,
  roughly \(H(w)\sim w^{-13/10}\) over heat windows, while its raw local energy
  still vanishes like \(w^{2/5}\). Therefore height-width thinning and finite
  energy alone do not rule out the remaining superheat residence. The only
  admissible closing mechanism is still a same-material full participation
  bound on the original transported annular history.
parents:
  - problems/navier-stokes/live-theorem-edge.yaml
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-strain-superheat-sharp-interpolation-test-20260625.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-direct-full-clock-original-history-attempt-20260625.md
---

# Superheat Failure Profile Physical Scaling Test

Date: 2026-06-25

## 0. Object

The object is the original smooth material spike-wave history.  The annuli are
the same fluid layers around the rising/thinning spike, sampled at shrinking
widths.  Heat-scale windows are not independent packet events; they are
samples of that one material history.

Let \(w(t)\) be the active spike width and \(H(t)\) the active spike height.
For a width \(w\), compare on the corresponding heat-time window

```math
\tau_w\sim w^2 .
\tag{SFP.1}
```

The crude dimensional relations in three spatial dimensions are

```math
E_w\sim H^2w^3,
\qquad
D_w\sim \int |\nabla u|^2\sim H^2w.
\tag{SFP.2}
```

Here \(E_w\) is local kinetic energy in the spike base and \(D_w\) is the
local enstrophy/dissipation scale.

## 1. Self-similar thinning is not the live strain-superheat threat

For a self-similar spike height

```math
H(w)\sim w^{-1},
\tag{SFP.3}
```

the local energy and local enstrophy scale as

```math
E_w\sim w,
\qquad
D_w\sim w^{-1}.
\tag{SFP.4}
```

The sharpened strain-superheat clock is \(D^{5/4}\).  On one heat-time window
of length \(w^2\), its contribution is

```math
\tau_wD_w^{5/4}
\sim
w^2(w^{-1})^{5/4}
=
w^{3/4}.
\tag{SFP.5}
```

The dyadic sum of \(w^{3/4}\) over \(w=2^{-j}\) is finite.  So an exactly
self-similar rising/thinning spike is not the first remaining strain-superheat
failure profile.

## 2. The first strain-superheat nonsummable height is taller

Let

```math
H(w)\sim w^{-a}.
\tag{SFP.6}
```

Then

```math
E_w\sim w^{3-2a},
\qquad
D_w\sim w^{1-2a}.
\tag{SFP.7}
```

The heat-window contribution of the sharpened strain-superheat clock is

```math
\tau_wD_w^{5/4}
\sim
w^2
\left(w^{1-2a}\right)^{5/4}
=
w^{13/4-(5/2)a}.
\tag{SFP.8}
```

This fails to decay at the dyadic scale exactly when

```math
{13\over4}-{5\over2}a\le0,
\qquad\text{that is}\qquad
a\ge {13\over10}.
\tag{SFP.9}
```

At the threshold \(a=13/10\),

```math
H(w)\sim w^{-13/10},
\qquad
E_w\sim w^{2/5},
\qquad
D_w\sim w^{-8/5}.
\tag{SFP.10}
```

The raw local energy still goes to zero.  The spike has become taller while
its base has thinned enough that finite energy does not see a contradiction.

## 3. What this proves

The physical height-width law is necessary and useful:

```math
H(t)\to\infty
\quad\Longrightarrow\quad
w(t)\to0
```

under finite energy.  But it does not by itself prove finite strain-superheat
residence.  The remaining profile has vanishing raw energy and nonvanishing
or nonsummable strain-superheat clock.

So the live proof burden is not an arbitrary-signal problem.  It is the exact
same-material question:

```math
\int_0^{T_*}
\sum_j
\Theta_j^{mat}(t)e_j(t)
\mathbf 1_{\{\Theta_j^{mat}(t)>\delta2^{2j}\}}
\,dt
<\infty,
\tag{SFP.11}
```

with \(\Theta_j^{mat}\) carrying pressure, viscosity, incompressibility,
velocity, material coefficients, and transported collar together.

## 4. Result

The sharpened physical conclusion is:

```math
\boxed{
\text{finite energy forces thinning, but finite energy does not exclude the
first superheat-height profile }H(w)\sim w^{-13/10}.
}
\tag{SFP.12}
```

Therefore the proof cannot close by height-width thinning alone.  It must show
that the full pressure-viscosity-incompressibility-velocity participation law
prevents the original material annular history from carrying finite-energy
superheat residence of the form `(SFP.11)`.
