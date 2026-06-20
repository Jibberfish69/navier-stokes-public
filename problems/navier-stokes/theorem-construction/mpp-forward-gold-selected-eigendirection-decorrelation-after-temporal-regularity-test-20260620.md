---
ns_viewer:
  theorem_id: forward-gold-selected-eigendirection-decorrelation-after-temporal-regularity-test-20260620
  status: failed-reduced-to-same-carrier-endpoint-reserve-or-signed-saturation
  proof_role: forward_positive_selected_decorrelation_after_temporal_regularility_no_go
  logical_landing_node: selected_eigendirection_decorrelation_endpoint_wall
  edge_effect: "Rechecks ActiveEigendirectionDecorrel.A / SelectedLowHighPositiveStrainDecorrelation.A after the temporal-regularity no-go. Critical time integrability, trace-free strain, incompressibility, same-fluid custody, and zero frame-turnover do not force decorrelation. The frozen expanding-eigenpacket model keeps order-one selected positive carrier mass on a vanishing terminal heat window. The branch is therefore not an independent forward-gold supplier unless it proves a same-carrier endpoint reserve, strict no-waste Lyapunov drop, retained signed-partner saturation, or rigid Zeno no-source residue."
  upstream_origin:
    - problems/navier-stokes/theorem-construction/mpp-forward-gold-source-time-concentration-cost-temporal-regularity-test-20260620.md
    - problems/navier-stokes/theorem-construction/mpp-signed-decorrelation-branch-collapse-to-time-cost-or-active-square-20260611.md
    - problems/navier-stokes/theorem-construction/mpp-source-time-cost-native-trilinear-no-hidden-frontier-20260611.md
    - problems/navier-stokes/theorem-construction/mpp-selected-low-high-positive-strain-decorrelation-direct-attempt-20260610.md
    - problems/navier-stokes/theorem-construction/mpp-dynamic-low-high-eigenpacket-no-freeze-direct-attempt-20260610.md
    - problems/navier-stokes/theorem-construction/mpp-terminal-pressure-hessian-no-sustain-lowhigh-direct-attempt-20260610.md
  downstream_consequence: "Do not reopen selected eigendirection decorrelation, angular mixing, low-high no-freeze, or pressure-Hessian no-sustain as separate forward-gold children without one of the named exact suppliers. At current resolution they collapse to SelectedCarrierEndpointUI.A, same-carrier source-square/Carleson, strict no-waste Lyapunov, retained signed saturation/no-free Zeno donor chain, pure-pressure legal/Liouville, or direct active-square/corona-tree control."
---

# MPP Forward Gold Selected Eigendirection Decorrelation After Temporal-Regularity Test

Date: 2026-06-20

## Status

Direct recheck complete.  The selected eigendirection decorrelation branch does
not become stronger after the temporal-regularity test.  It remains a real
language for the native source carrier, but it is not an independent
forward-gold supplier from current inputs.

The reason is exact: a selected high packet can stay aligned with an expanding
trace-free low-strain direction on a terminal heat window while the selected
positive carrier keeps order-one mass and the available time/energy currencies
do not price the squeeze.

## 1. Carrier Being Tested

The native positive carrier is

```math
\mathcal T^+
:=
\sum_{P\in\mathcal F_N}
\int_{Q(P)}
\left[
\langle S_{<j_P}^{loc}w_{j_P},w_{j_P}\rangle
\right]_+
\,dxdt .
```

On the selected packets it factors as

```math
\left[
\langle S_{<j}^{loc}w_j,w_j\rangle
\right]_+
=
|w_j|^2
\left[
e_j\cdot S_{<j}^{loc}e_j
\right]_+,
\qquad
e_j={w_j\over |w_j|}.
```

Thus decorrelation would have to prove that the selected packet direction
cannot remain in the expanding eigendirection of the selected low strain on the
same terminal windows, or that such persistence pays a same-ledger cost.

## 2. Critical Aligned Normal Form

Work in normalized heat variables \(s,y\).  Let \(0<\tau_m\downarrow0\).  Let
\(\psi(y)\) be a smooth compactly supported principal high packet with
polarization \(e_1\) and divergence-free wave vector transverse to \(e_1\).
Let

```math
S_0=\operatorname{diag}(2,-1,-1).
```

Set, on \((-\tau_m,0]\),

```math
\Sigma_m(s,y)
=
\tau_m^{-2/5}\chi(y)S_0,
\qquad
W_m(s,y)
=
\tau_m^{-3/10}\psi(y)e_1,
```

with smooth cutoffs to zero on a comparable transition interval.

Then

```math
\operatorname{tr}\Sigma_m=0,
\qquad
e_1\cdot \Sigma_m e_1
=
2\tau_m^{-2/5}\chi(y)>0
```

on the selected core.  The selected positive carrier obeys

```math
|\!W_m|^2
\left[
e_1\cdot \Sigma_m e_1
\right]_+
\simeq
\tau_m^{-1}
|\psi(y)|^2\chi(y)
\mathbf 1_{(-\tau_m,0]}(s).
```

Therefore

```math
\int_{-\tau_m}^{0}
\int
|\!W_m|^2
\left[
e_1\cdot \Sigma_m e_1
\right]_+
\,dy\,ds
\simeq 1,
```

and the time marginal of the selected carrier converges to a terminal atom.

At the same time the critical temporal Hölder norms stay bounded:

```math
\|\Sigma_m\|_{L_s^{5/2}}
\simeq 1,
\qquad
\|W_m\|_{L_s^{10/3}}
\simeq 1,
```

because

```math
\tau_m(\tau_m^{-2/5})^{5/2}=1,
\qquad
\tau_m(\tau_m^{-3/10})^{10/3}=1.
```

So the critical product estimate is sharp.  It permits concentration of the
product measure and does not imply endpoint uniform integrability of the
one-sided selected carrier.

This is a local tangent/scaling test for estimates.  It is not asserted to be
an exact Navier-Stokes solution.

## 3. Why Angular Or Frame Costs Do Not Apply To This Model

The expanding eigendirection is fixed:

```math
e_m(s)\equiv e_1,
\qquad
\Sigma_m e_1
=
2\tau_m^{-2/5}\chi e_1.
```

Thus every route that charges rotation, angular mixing, frame turnover, or
failure to choose a stable eigendirection has zero principal charge on the
model.  The obstruction is persistence, not oscillation.

The direct dynamic no-freeze note already isolates this same wall: the
material-eigenframe split pays far-low and subparabolic variation terms, while
the frozen aligned case remains and must be paid by pressure/source-current
no-sustain, no-incoming/participation, source residence, terminal strip modulus,
or rigidity.

## 4. Pressure Does Not Automatically Convert It To Native Source

The low-high pressure-Hessian no-sustain attempt leaves a source-current / pure
pressure dichotomy.  The local tangent test

```math
S=\operatorname{diag}(2,-1,-1),
\qquad
\Omega=0
```

shows why: pure strain can carry a pressure-Hessian sustain lobe while the
native vorticity source-current carrier vanishes at the algebraic level.

Thus pressure recovery and the elliptic pressure law do not by themselves prove
that the retained positive low-high strain lobe is represented by the native
selected positive source-current.  That bridge is exactly a retained
signed-partner / source-current legality / pure-pressure legal-Liouville
theorem.

## 5. Consequence For The Decorrelation Branch

The checked route is now:

```math
\text{selected decorrelation}
\Longrightarrow
\text{same-carrier endpoint reserve}
```

unless it installs a stronger signed theorem before positive-part selection.
The available soft inputs do not supply either conclusion:

```math
\operatorname{tr}S=0,
\quad
\nabla\cdot W=0,
\quad
\text{critical Hölder bounds},
\quad
\text{same-fluid custody},
\quad
\text{zero frame turnover}
```

all coexist with an order-one terminal atom in

```math
|\!W_m|^2
\left[
e_m\cdot \Sigma_m e_m
\right]_+\,dsdy.
```

Therefore the following labels are not independent forward-gold suppliers at
this resolution:

```text
ActiveEigendirectionDecorrel.A,
SelectedLowHighPositiveStrainDecorrelation.A,
DynamicLowHighEigenpacketNoFreeze.A,
PressureLerayEigenframeRotationCost.A,
LowHighFrameBVCharge.A,
TerminalPressureHessianNoSustain_lowhigh.A
```

unless they are strengthened into one of the exact missing mechanisms below.

## 6. Exact Remaining Mechanisms

To reopen this branch as a real forward-gold route, one must prove at least one
of the following exact statements.

First, a same-carrier endpoint reserve:

```math
\lim_{\theta\downarrow0}
\limsup_m
\int_{-\theta}^{0}
a_m(s)\,ds
=0,
\qquad
a_m(s):=
\int
|\!W_m|^2
\left[
e_m\cdot \Sigma_m e_m
\right]_+
dy.
```

Equivalently, a same-carrier source-square/Carleson or Orlicz uniform
integrability estimate.

Second, a strict no-waste Lyapunov inequality:

```math
-{d\over ds}L_m(s)
\ge
c\,a_m(s)
-\mathrm{legal}_m(s),
```

with \(L_m\) bounded below and \(\int\mathrm{legal}_m\,ds\) summable.  This
would kill infinite recurrence of the aligned terminal carrier.

Third, a retained signed-partner theorem:

```math
d\pi^+(e)
\le
d\pi^-(e^*)
+d\mathcal D_{\rm legal}(e),
\qquad
\sum_e d\mathcal D_{\rm legal}(e)<\infty,
```

together with no-free terminal Zeno donor chains.  This is the signed
saturation route before absolute values and positive terminal selection.

Fourth, a pressure/source-current rigidity theorem proving that every retained
pure pressure or near-band source-current sustain lobe either pays legal cost
or produces a rigid zero-source Zeno residue killed by Liouville.

## Verdict

The selected eigendirection-decorrelation language is useful for locating the
bad carrier, but it does not itself close the forward-gold route.

At current installed-input resolution it collapses to the same endpoint wall as
the temporal-regularity test:

```math
\boxed{
\text{SelectedCarrierEndpointUI.A}
\quad\text{or}\quad
\text{same-carrier source-square/Carleson}
\quad\text{or}\quad
\text{strict no-waste}
\quad\text{or}\quad
\text{signed saturation plus no-free Zeno}
\quad\text{or}\quad
\text{rigid Zeno no-source residue.}
}
```

Absent one of those mechanisms, the frozen aligned heat-window model remains a
legal scaling obstruction to decorrelation-based forward-gold closure.
