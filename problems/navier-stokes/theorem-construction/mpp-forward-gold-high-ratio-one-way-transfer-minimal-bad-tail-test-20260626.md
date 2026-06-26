---
theorem_id: forward-gold-high-ratio-one-way-transfer-minimal-bad-tail-test-20260626
status: direct-test-installed-minimal-bad-tail-reduces-to-material-time-coercivity
created: 2026-06-26
problem: navier-stokes
route: forward-gold
logical_landing_node: GlobalSamePacketFullClockFromOriginalData.A
source_surfaces:
  - problems/navier-stokes/live-theorem-edge.yaml
  - problems/navier-stokes/source-frontier.yaml
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-superheat-ratio-tail-moment-reduction-20260626.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-superheat-ratio-tail-goodlambda-test-20260626.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-superheat-ratio-tail-frequency-transfer-test-20260626.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-same-history-critical-sample-compactness-rigidity-test-20260625.md
---

# High-Ratio One-Way Transfer Minimal-Bad-Tail Test

The live object is finite full same-material action on one original transported
material history.  The notation \(d\Omega_N^{full}\) denotes that action
measure.  Older "full same-material action" language is only historical shorthand.

This note tests the remaining high-ratio one-way transfer branch by a minimal
bad-tail normalization.

## 1. Failure of the weighted tail

Use the ratio-tail variables

```math
d\mu_j(t)=2^{2j}e_j(t)\,dt,
\qquad
\rho_j(t)={\Theta_j^{mat}(t)\over 2^{2j}},
\tag{MBT.1}
```

and ratio bands

```math
E_{j,\ell}=\{2^\ell\delta<\rho_j\le 2^{\ell+1}\delta\},
\qquad
\nu_\ell=\sum_j\mu_j(E_{j,\ell}).
\tag{MBT.2}
```

Raw viscous/tower control gives

```math
\sum_{\ell\ge0}\nu_\ell<\infty .
\tag{MBT.3}
```

Finite full same-material action is equivalent to

```math
\sum_{\ell\ge0}2^\ell\nu_\ell<\infty .
\tag{MBT.4}
```

Assume `(MBT.4)` fails.  Since `(MBT.3)` holds, for every \(L\) the raw tail

```math
\sum_{\ell\ge L}\nu_\ell
\tag{MBT.5}
```

can be made arbitrarily small, while the weighted tail

```math
\sum_{\ell\ge L}2^\ell\nu_\ell
\tag{MBT.6}
```

remains infinite.

Thus one can choose disjoint terminal blocks \(B_k\) supported in ratio bands
\(\ell\ge L_k\to\infty\) such that

```math
\sum_{(j,\ell)\in B_k}2^\ell\mu_j(E_{j,\ell}\cap B_k)=1,
\tag{MBT.7}
```

but

```math
\sum_{(j,\ell)\in B_k}\mu_j(E_{j,\ell}\cap B_k)\to0 .
\tag{MBT.8}
```

This is the sharp tail obstruction: a unit amount of normalized same-material
action can be hidden inside vanishing raw heat/viscous mass by moving to higher
material-rate/heat-rate ratio bands.

## 2. Material-time normalization

On \(E_{j,\ell}\), the material rate satisfies

```math
\Theta_j^{mat}\simeq 2^\ell 2^{2j}.
\tag{MBT.9}
```

Introduce the material time

```math
d\tau=\Theta_j^{mat}(t)\,dt .
\tag{MBT.10}
```

In this time scale, the heat damping coefficient is

```math
{2^{2j}\over\Theta_j^{mat}}\simeq 2^{-\ell}.
\tag{MBT.11}
```

Therefore along a minimal bad tail with \(\ell_k\to\infty\), viscosity and
heat damping vanish in the normalized material-time equation.

The same packet is not detached: pressure, incompressibility, coefficient
motion, Hodge/projector motion, collar motion, strain, and annular stress-work
remain the coupled participation-law-strain transaction.  What disappears in
the minimal bad normalization is only the heat-time coercive weight that was
available in the subheat branch.

## 3. Why compactness does not close this branch

The same-history compactness test gives suitable compactness of heat-scale
samples.  For the minimal bad high-ratio tail, `(MBT.8)` says that the raw
heat/viscous mass of each unit action block tends to zero.

Consequently the installed zero-viscous-loss rigidity is not enough.  It kills
lossless heat-scale Navier--Stokes packets whose selected activity remains on
positive heat-time thickness.  A minimal bad high-ratio tail instead produces,
after material-time normalization, a zero-heat-coefficient packet with nonzero
normalized same-material action.

So the compactness limit can be a material-time participation-law-strain
profile, not a heat-time viscous packet to which the old zero-loss rigidity
directly applies.

## 4. What the existing frequency picture proves

The frequency-controlled annular return picture still proves the entrance,
subheat, and return parts:

```math
\text{smooth initial tail}
+\text{faster heat damping}
+\text{return/recirculation packing}
\Longrightarrow
\text{finite entrance, subheat, and return action.}
\tag{MBT.12}
```

It does not prove the high-ratio one-way tail because the Duhamel term on
\(\rho_j>\delta\) reintroduces the same first ratio moment:

```math
[m_j]_+
\lesssim
\rho_j\,{d\mu_j\over dt}
+r_j^{legal}.
\tag{MBT.13}
```

Thus the high-ratio one-way branch is not an initial-frequency tail, not a
free scalar signal, and not a recirculation branch.  It is the material-time
one-way transfer part of the same original smooth history.

## 5. Exact noncircular closure still needed

The minimal-bad-tail method would close if one proves a material-time coercivity
or no-nontrivial-profile theorem:

```math
\boxed{
\text{no non-gauge material-time participation-law-strain profile can carry
unit one-way high-ratio action with vanishing raw heat mass.}
}
\tag{MBT.14}
```

Equivalently, one may prove the weight-beating tail

```math
\boxed{
\sum_{\ell\ge0}2^\ell\nu_\ell<\infty
}
\tag{MBT.15}
```

or construct a bounded-below same-material action storage

```math
\boxed{
d\mathscr A_N+c\,d\Omega_N^{full}\le dR_N^{legal},
\qquad
\mathscr A_N\ge -C_N(u_0).
}
\tag{MBT.16}
```

without using `(MBT.15)` as input.

## 6. Result of this test

The minimal-bad-tail route does not close the theorem from installed inputs.
It improves the frontier by identifying the exact remaining profile class:
one-way high-ratio same-material transfer whose unit normalized action occurs
on vanishing raw heat/viscous mass.

The finite full same-material action theorem is therefore equivalent, at this
edge, to excluding that material-time high-ratio profile or proving a
weight-beating tail law for it.
