---
theorem_id: forward-gold-strong-local-renormalized-convergence-split-20260620
status: preterminal-compactness-paid-terminal-upgrade-not-installed
logical_landing_node: strong_local_renormalized_convergence
edge_effect: "Splits StrongLocalRenormalizedConvergence.A into its paid preterminal compactness component and its unpaid terminal/linearized component. On every fixed strictly preterminal renormalized slab, local energy, dissipation, pressure, and negative-time-derivative bounds give Aubin-Lions strong L2 compactness and distributional nonlinear closure. This kills Reynolds/PDE defects away from the terminal face. It does not give endpoint trace compactness, selected positive carrier continuity, local-energy no-waste equality, or a homogeneous source-null linearized tangent at s=0."
parents:
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-defect-free-linearized-renormalized-tangent-direct-test-20260620.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-minimal-zeno-terminal-trace-compactness-direct-test-20260619.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-selected-carrier-aubin-lions-first-pack-survival-recheck-20260620.md
  - problems/navier-stokes/theorem-construction/mpp-terminal-bad-scale-extraction-compactness-20260505.md
  - problems/navier-stokes/theorem-construction/compactness-upgrade-lemma.md
downstream_consequence: "Use Aubin-Lions compactness as paid on compact subslabs s<=-a<0. Do not use it as endpoint anti-atom, selected-carrier continuity, no-waste equality, or homogeneous source-null tangent production. The remaining upgrade to DefectFreeLinearizedRenormalizedNSTangent.A still needs endpoint time modulus/source-square/strict no-waste, selected carrier identity, and drift/defect evacuation or MinimalZenoProfileProduction.A."
---

# MPP Forward-Gold Strong Local Renormalized Convergence Split

Date: 2026-06-20

## Status

The preterminal compactness part is paid.  The terminal and linearized
defect-free upgrade is not installed.

This note separates the part ordinary Navier--Stokes compactness genuinely
supplies from the part the gold route still needs.

## 1. Paid preterminal theorem

Fix \(R<\infty\) and \(a>0\).  Let

```math
K_{R,a}:=B_R\times[-R^2,-a]
\tag{SRC.1}
```

be a strictly preterminal renormalized slab.  Suppose a renormalized sequence
\((v_m,q_m)\) satisfies on a slightly larger slab:

```math
\sup_m
\left(
\|v_m\|_{L^\infty_sL^2_y}
+
\|\nabla v_m\|_{L^2_{s,y}}
+
\|q_m\|_{L^{3/2}_{s,y}}
\right)
<\infty,
\tag{SRC.2}
```

and solves the renormalized Navier--Stokes equation with the usual divergence
constraint and compatible pressure gauge.

Then the equation gives negative Sobolev time-derivative control on compact
subslabs:

```math
\partial_sv_m
\quad\text{bounded in}\quad
L^{4/3}_sH^{-1}_y(K_{R,a})
\tag{SRC.3}
```

up to harmless localization of the pressure term in
\(W^{-1,3/2}\).  Aubin--Lions gives, after subsequence,

```math
v_m\to V
\quad\text{strongly in}\quad
L^2(K_{R,a}).
\tag{SRC.4}
```

The energy bounds also give \(v_m\) bounded in \(L^{10/3}(K_{R,a})\).  By
interpolation,

```math
v_m\to V
\quad\text{strongly in }L^p(K_{R,a})
\quad\text{for every }p<10/3.
\tag{SRC.5}
```

In particular,

```math
v_m\otimes v_m\to V\otimes V
\quad\text{strongly in }L^1(K_{R,a}).
\tag{SRC.6}
```

Thus the distributional Navier--Stokes equation passes to the limit on
\(K_{R,a}\) without a Reynolds-stress defect:

```math
\partial_s V
-\nu\Delta V
+
(V\cdot\nabla)V
+
\nabla Q
+
{1\over2}y\cdot\nabla V
+
{1\over2}V
=0,
\qquad
\nabla\cdot V=0.
\tag{SRC.7}
```

This is the paid part of `StrongLocalRenormalizedConvergence.A`.

## 2. What this paid theorem does not give

The theorem above is strictly preterminal: \(s\le -a\).  It does not control the
terminal face \(s=0\).

The endpoint pulse

```math
a_m(s)=\tau_m^{-1}{\bf 1}_{(-\tau_m,0]},
\qquad
\tau_m\downarrow0,
\tag{SRC.8}
```

vanishes on every \(K_{R,a}\) once \(m\) is large enough, but still converges to
\(\delta_{s=0}\).  Therefore preterminal strong convergence does not imply
endpoint uniform integrability or terminal trace compactness.

It also does not prove continuity of the selected positive source carrier,
because that carrier is produced after localization, projection,
lifting/weighting, packet selection, and positive-part extraction:

```math
\left[
\mathcal N_{preCauchy}^{loc}(u;P)
\right]_+.
\tag{SRC.9}
```

Strong velocity compactness in \(L^2\) or any subcritical topology does not
control this selected one-sided critical carrier at the endpoint.

## 3. Local energy defect is still a no-waste issue

The strong convergence `(SRC.4)` closes the nonlinear term in the PDE.  It does
not upgrade the local energy inequality to a no-waste equality.

The dissipation term is only lower semicontinuous:

```math
\int|\nabla V|^2
\le
\liminf_m\int|\nabla v_m|^2.
\tag{SRC.10}
```

The possible loss

```math
\mu_{diss}
:=
\operatorname*{w^\ast-lim}_m|\nabla v_m|^2\,dy\,ds
-
|\nabla V|^2\,dy\,ds
\tag{SRC.11}
```

is not a Reynolds defect in the distributional PDE, but it is a no-waste/local
energy defect.  Evacuating `(SRC.11)` requires a separate no-waste, source-square,
critical-strain, CKN, or rigid-profile theorem.

## 4. Why this does not produce a homogeneous source-null tangent

For the source-null branch, the needed object is not just a limit profile
\(V\).  It is a quotient tangent \(Z\) satisfying the homogeneous linearized
equation:

```math
\mathcal L_UZ=0.
\tag{SRC.12}
```

Preterminal compactness of \(v_m\) gives a convergent subsequence.  It does not
prove that the difference quotients defining \(Z\) have no forcing:

```math
\mathcal L_UZ
=
\mathcal M_{gauge}
+
\mathcal M_{selector}
+
\mathcal R_{src}
+
\mathcal R_{pressure/cutoff}
+
\mathcal D_{defect}.
\tag{SRC.13}
```

The terms in `(SRC.13)` are exactly the terms isolated in
`DefectFreeLinearizedRenormalizedNSTangent.A`.  They are not removed by
Aubin--Lions on \(K_{R,a}\).

## 5. Exact split

At current input strength:

```math
\boxed{
\text{local energy/dissipation/pressure bounds}
\Longrightarrow
\text{strong compactness and PDE closure on }s\le-a<0.
}
\tag{SRC.14}
```

But:

```math
\boxed{
\text{strong compactness on }s\le-a<0
\not\Longrightarrow
\text{endpoint anti-atom, selected carrier continuity, no-waste, or } \mathcal L_UZ=0.
}
\tag{SRC.15}
```

The terminal upgrade requires one of:

```math
\text{SelectedCarrierEndpointUI.A / source-square / critical-strain / CKN reserve,}
\tag{SRC.16}
```

```math
\text{StrictRescaledNoWasteLyapunov.A / UnweightedTerminalCriticalActionReserve.A,}
\tag{SRC.17}
```

or

```math
\text{MinimalZenoProfileProduction.A}.
\tag{SRC.18}
```

## Verdict

`StrongLocalRenormalizedConvergence.A` should be treated as paid only on fixed
strictly preterminal slabs.  It removes ordinary distributional PDE defects
there.

The source-null gold obstruction is terminal.  It still needs endpoint
tightness, no-waste/unweighted action, selected-carrier identity, and drift/defect
evacuation before the homogeneous linearized equation can be used.
