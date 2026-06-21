---
ns_viewer:
  theorem_id: terminal-new-production-gold-direct-attempt-20260614
  status: direct-gold-attempt-not-proved-reduced-to-terminal-zeno-source-residue-or-scale-critical-source-charge
  proof_role: direct_attempt_on_terminal_timeface_antiatom_and_basac_new_production
  logical_landing_node: terminal_time_face_source_atom
  source_authority:
    - problems/navier-stokes/theorem-construction/mpp-terminal-time-face-new-production-frontier-20260614.md
    - problems/navier-stokes/theorem-construction/mpp-terminal-source-first-appearance-time-spread-direct-test-20260614.md
    - problems/navier-stokes/theorem-construction/mpp-terminal-weighted-no-free-sink-after-asac-20260506.md
    - problems/navier-stokes/theorem-construction/mpp-terminal-signed-saturation-direct-attempt-20260505.md
    - problems/navier-stokes/theorem-construction/mpp-pressure-source-ac-basac-time-spread-attempt-20260609.md
    - problems/navier-stokes/theorem-construction/mpp-noncarleson-zeno-temporal-anticoncentration-completion-attempt-20260517.md
    - problems/navier-stokes/theorem-construction/mpp-dynamic-low-high-eigenpacket-no-freeze-direct-attempt-20260610.md
    - problems/navier-stokes/theorem-construction/mpp-affine-core-finite-energy-collar-cost-direct-test-20260611.md
    - problems/navier-stokes/theorem-construction/mpp-strain-aligned-terminal-obstruction-cm-split-20260614.md
  edge_effect: "Tests the sharpened gold object directly: TerminalTimeFaceAntiAtom.A / TerminalNewProductionTheorem_{B_ASAC}.A as dynamic no-freeze and signed pressure-source saturation. The attempt does not prove the theorem. It narrows the live gold obstruction to terminal Zeno source-residue rigidity, super-L1 temporal source residence, scale-critical source Carleson/active-square charge, or a finite high-tower collar budget. The silver CM split remains the separate same-solution admitted branch."
---

# MPP Terminal New-Production Gold Direct Attempt

Date: 2026-06-14

## 0. Target

This note takes the direct gold shot at:

```math
TerminalTimeFaceAntiAtom.A
\quad\text{and}\quad
TerminalNewProductionTheorem_{B_{ASAC}}.A.
```

The sharpened form is the dynamic no-freeze / signed pressure-source saturation
obstruction.  The desired theorem would say:

```text
retained same-fluid B_ASAC terminal source packet
+ ASAC-paid active alignment defects
+ paid legal, cutoff, donor, and non-Zeno exits
+ positive terminal source mass on shrinking heat windows
=> temporal thickness, source charge, rigid Liouville kill, or a same-ledger
   contradiction.
```

Equivalently, for the selected positive source measures
`\mu_m^{src,+}`, gold needs a terminal anti-atom estimate:

```math
\mu_m^{src,+}(B_R\times[-\varepsilon,0])
\le
\omega_R(\varepsilon)+o_m(1),
\qquad
\omega_R(\varepsilon)\downarrow0.
\tag{A}
```

## 1. Temporal source test

The current installed inputs give finite terminal source mass:

```math
\int_{-1}^{0}
\|F_m^{src,+}(s,\cdot)\|_{\mathcal M(B_R)}\,ds
\le C_R.
\tag{1.1}
```

Finite `L^1_s` mass does not imply `(A)`.  The exact obstruction is:

```math
g_m(s)={a\over \tau_m}1_{(-\tau_m,0]}(s),
\qquad
\tau_m\downarrow0.
\tag{1.2}
```

It has fixed mass:

```math
\int_{-\tau_m}^{0}g_m(s)\,ds=a,
\tag{1.3}
```

so for `\varepsilon_m=\tau_m`,

```math
\int_{-\varepsilon_m}^{0}g_m(s)\,ds=a.
\tag{1.4}
```

No modulus with `\omega(\varepsilon)\downarrow0` can follow from finite mass.
For every `p>1`,

```math
\|g_m\|_{L^p(-1,0)}
=a\,\tau_m^{1/p-1}\to\infty.
\tag{1.5}
```

Thus the temporal route closes only after a genuine super-`L^1_s` estimate:

```math
UniformTemporalSourceIntegrability_{p,B_{ASAC}}.A,\qquad p>1,
\tag{1.6}
```

or an equivalent terminal reverse Holder / time-thickness theorem.

## 2. Signed saturation and no-free-sink test

Bare dyadic exchange gives a signed partner before the terminal operations.
After one-sided weights, lifted localization, cutoff, and positive-part
selection, the usable terminal signed ledger may lose the negative partner.
The direct signed theorem would be:

```math
\int_{\mathcal F_N}
(\mathfrak S_{N,loc}^{active})_+
\le
\int_{\mathcal F_N}
(\mathfrak S_{N,loc}^{active})_-
+o_N(1)+Loss_{legal}.
\tag{2.1}
```

The post-ASAC audit pays the retained signed-partner mismatch:

```text
ASAC.A => PositivePairWeightDefectCharge.A.
```

Legal exits are paid by the named boundary, pressure, cutoff, projection,
collar, off-family, and heat-action ledgers.  Finite donor trees and non-Zeno
refill branches are paid by:

```text
LocalDonorBalance.A + EntranceLeafDecay.A.
```

The remaining case is an internal donor sink feeding terminal positive source:

```math
J(A\to B)=F,
\qquad
\operatorname{div}J(B)=F,
\qquad
\operatorname{div}J(A)=-F.
\tag{2.2}
```

If the donor-refill ancestry reaches a fixed preterminal entrance, it is paid.
The unpaid case is the terminal Zeno branch:

```math
r_m\downarrow0,
\qquad
\sum_m r_m^2<\infty.
\tag{2.3}
```

The strongest installed reduction is:

```math
\boxed{
\begin{aligned}
&ASAC.A
+ProjectedCutoffLedger.A
+LegalBoundaryLedger.A\\
&\quad
+LocalDonorBalance.A
+EntranceLeafDecay.A
+ZenoSourceResidueRigidity_{B_{ASAC}}.A\\
&\Longrightarrow
TerminalWeightedNoFreeSink.A.
\end{aligned}
}
\tag{2.4}
```

Without `ZenoSourceResidueRigidity_{B_ASAC}.A`, the signed saturation route
does not close.

## 3. Dynamic no-freeze test

The no-freeze wording is real only if it produces a cost in the frozen aligned
case.  The local linear pressure test keeps that case alive.

Take a trace-free strain:

```math
S=\operatorname{diag}(2,-1,-1),
\tag{3.1}
```

and a high-frequency divergence-free packet with wave vector and polarization:

```math
\xi=e_2,
\qquad
e=e_1,
\qquad
\xi\cdot e=0.
\tag{3.2}
```

The selected strain source is positive:

```math
e\cdot S e=2.
\tag{3.3}
```

Under the material Fourier law for a frozen linear strain,

```math
\dot\xi=-S^T\xi,
\tag{3.4}
```

one gets `\xi(t)=e^t e_2` up to normalization, so the wave-vector direction
does not rotate.  The expanding eigendirection `e_1` is also fixed.  This model
has positive source alignment and zero eigenframe-turning cost.

This is not a Navier-Stokes counterexample.  It proves the local no-freeze
argument cannot use only trace-free strain, incompressibility, material
eigenframe bookkeeping, finite source mass, or packet orthogonality.  It must
pay one of the actual source prices: pressure/source-current saturation,
temporal residence, Zeno rigidity, or a global collar/tower cost.

## 4. Pressure/Leray test

The pressure identity

```math
-\Delta p=\partial_i\partial_j(u_i u_j)
```

and Leray projection give spatial partner structure at each time.  They do not
create time spreading.  The same terminal layer `(1.2)` can carry source mass
on `(-\tau_m,0]` while the pressure response remains supported on that same
shrinking time layer.

Thus `PressureSourceAC_{B_ASAC}.A` or
`LocalizedLeraySourceTether_{B_ASAC}.A` closes gold only after it is upgraded
to a terminal strip modulus, a rigid source-residue class, or a source charge
estimate.  The pressure label alone is not the missing theorem.

## 5. Affine collar test

The affine/collar route prices the frozen-core escape, but it does not yet sum
the prices.

A persistent critical affine core inside a finite-energy parent region forces
a second-derivative collar bill on its natural parabolic clock:

```math
\nu\int_G\int_{B_R}|\nabla^2u|^2\,dx\,dt
\ge
c\,\theta\,\eta^2{\nu^4\over E_R}.
\tag{5.1}
```

That estimate is useful: a frozen affine strain is not free inside a finite
energy fluid.  It still leaves the summation problem.  To rule out infinitely
many shrinking terminal windows, the proof needs a finite high-tower or
enstrophy-production budget strong enough to sum `(5.1)` over the terminal
schedule.  That budget is not installed by the current inputs.

## 6. Strongest honest reduction

The direct attempt does not prove `TerminalNewProductionTheorem_{B_ASAC}.A`.
It narrows the theorem to the following non-alias inputs.

One can close gold by proving:

```math
TerminalSourceReverseHolder_{B_{ASAC}}.A
\quad\text{or}\quad
UniformTemporalSourceIntegrability_{p,B_{ASAC}}.A,\ p>1.
\tag{6.1}
```

One can close it by proving the scale-critical source-charge route:

```math
HeatScaleSquareSource.A
\quad\text{or}\quad
ScaleCriticalTreeCarleson.A.
\tag{6.2}
```

One can close it by producing and killing a rigid Zeno residue class:

```math
ZenoCompactnessExtraction.A
+NoEarlierSelectedSourceSlice.A
+ZenoBoundedClass_{B_{ASAC}}.A
+ZenoResidueLiouville_{B_{ASAC}}.A.
\tag{6.3}
```

One can close it through the affine route only with an additional high-tower
budget that controls the exact affine-core collar bills

```math
B_m
:=
\nu\int_{G_m}\int_{B_{R_m}(x_m)}|\nabla^2u|^2\,dx\,dt
\ge
c\,\theta_m\eta_m^2\nu^4/E_{R,m},
```

together with a non-summable selected lower side.  In route shorthand this is

```math
HighTowerCollarSummability.A.
\tag{6.4}
```

The current repo state supplies useful pieces of these routes, not the closing
input itself.  In particular, compactness plus no-earlier selected source still
allows the terminal atom `(1.2)`, and fixed positive viscosity does not create a
super-`L^1_s` source residence bound on the selected marginal.

## 7. Silver boundary

This note is a failed gold proof attempt, not a new CM branch.

After same-solution admission, positive-radius carrier, and readout data are
paid, the retained smooth branch is `Member(Q)`.  A finite nonsmooth admitted
branch is consumed by the already written CM split:

```text
finite nonsmooth admitted same-solution obstruction
=> first concrete Part/Field Part/Field failure
=> Exit(Q):=not Member(Q).
```

For the annular residual witness after admission, Pack is not the active CM
argument because carrier/selection has already been paid.  The relevant silver
faces are Part and Field, as recorded in
`mpp-strain-aligned-terminal-obstruction-cm-split-20260614.md`.

## 8. Verdict

The sharpened gold object remains open.

The useful conclusion is narrower than the old slogan: dynamic no-freeze and
signed pressure-source saturation both reduce to the same terminal Zeno
source-residue/time anti-atom unless a genuine super-`L^1_s` temporal source
estimate, scale-critical source Carleson charge, rigid Zeno class with Liouville
kill, or summable high-tower collar budget is installed.
