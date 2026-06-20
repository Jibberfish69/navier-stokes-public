---
theorem_id: forward-gold-strict-nowaste-critical-action-boundary-20260620
status: direct-boundary-installed-forward-gold-not-proved
logical_landing_node: strict_nowaste_requires_critical_action_size
edge_effect: "Connects the strict no-waste/Lyapunov branch to the source-square finality wall. A lower-bounded Lyapunov theorem would close the heat-scale pulse only if its drop controls unweighted critical action on the actual selected carrier. Energy-bounded, quadratic pressure-corrected, packet-local cubic, capped nonlinear, commutator, pressure-memory, and Volterra-memory shortcuts do not produce that drop from current inputs."
parents:
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-strict-nowaste-post-critical-currency-closeout-20260620.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-energy-bounded-nowaste-lyapunov-obstruction-20260619.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-strict-rescaled-nowaste-lyapunov-quadratic-test-20260619.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-strict-nowaste-nonlinear-corrector-test-20260619.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-same-carrier-source-square-production-finality-20260620.md
downstream_consequence: "Do not treat pressure-corrected monotonicity, local-energy no-waste, nonlinear normal forms, pressure memory, or Volterra memory as independent forward-gold suppliers unless they prove a bounded-below functional whose drop pays source-square, normalized CKN/critical-strain action, square-synchronous saturation, or an equivalent unweighted selected-carrier reserve."
---

# MPP Forward-Gold Strict No-Waste Critical-Action Boundary

Date: 2026-06-20

## Status

This note pins down the strict no-waste branch after the source-square and
active-height boundary notes.

Strict no-waste is a valid possible producer only in this strong form:

```math
\boxed{
-{d\over ds}L(s)
\ge
c\,\mathcal A_{\rm crit}(s)
-\mathcal R_{\rm legal}(s),
\qquad
\inf_s L(s)>-\infty,
\qquad
\int\mathcal R_{\rm legal}<\infty.
}
\tag{NWCB.1}
```

Here \(\mathcal A_{\rm crit}\) must be an unweighted heat-scale critical action
on the actual selected positive carrier: source-square, normalized CKN, selected
\(L^{5/2}\) strain, projected critical flux, or a square-synchronous signed
saturation equivalent.

## 1. Energy-sized functionals cannot pay the pulse

Let \(I_\lambda=[0,\lambda^{-2}]\).  Fix
\(\varphi\in L^\infty(0,1)\cap L^2(0,1)\) with

```math
\int_0^1\varphi(\sigma)^2\,d\sigma=1,
\tag{NWCB.2a}
```

and take the heat-scale source profile

```math
F_\lambda(t)
=
\lambda^{1/2}\varphi(\lambda^2t).
\tag{NWCB.2}
```

Then

```math
\int_{I_\lambda}F_\lambda(t)\,dt
=
\lambda^{-3/2}\int_0^1\varphi(\sigma)\,d\sigma,
\qquad
\left|\int_{I_\lambda}F_\lambda(t)\,dt\right|
\le
\lambda^{-3/2}\|\varphi\|_{L^1(0,1)},
\tag{NWCB.3}
```

while

```math
\int_{I_\lambda}\lambda F_\lambda(t)^2\,dt
=1.
\tag{NWCB.4}
```

Define the corresponding shell-energy scale by

```math
E_\lambda(t):=\lambda^{-2}|F_\lambda(t)|.
\tag{NWCB.5a}
```

Then its available size is exactly bounded by

```math
\sup_{t\in I_\lambda}E_\lambda(t)
=
\lambda^{-3/2}\|\varphi\|_{L^\infty(0,1)}.
\tag{NWCB.5}
```

Thus any candidate satisfying

```math
|L_\lambda(t)|
\le
C E_\lambda(t)+Legal_\lambda(t)
\tag{NWCB.6}
```

has \(o(1)\) available drop after legal losses are removed.  It cannot pay the
unit action `(NWCB.4)`.

So a successful no-waste functional must either carry critical-action size
itself or obtain it from a genuine coercive identity.

## 2. Quadratic pressure-corrected energy is a visibility identity

In terminal self-similar variables, a localized quadratic functional

```math
L_A(s)={1\over2}\langle v,A_sv\rangle
\tag{NWCB.7}
```

has derivative

```math
-{d\over ds}L_A(s)
=
\nu\langle\nabla v,A_s\nabla v\rangle
-\mathcal C_A(v)
-\operatorname{Comm}_{A_s,\nabla}(v)
-\mathcal G_A(v)
-{1\over2}\langle v,\partial_sA_sv\rangle .
\tag{NWCB.8}
```

Projection can remove the explicit pressure term, but it leaves the localized
convection, commutator, dilation, and moving-operator terms.  For a scalar
cutoff,

```math
\mathcal C_\chi(v)
=
{1\over2}\int |v|^2v\cdot\nabla\chi\,dy,
\tag{NWCB.9}
```

which has no sign.  Bounding `(NWCB.9)` requires normalized cubic/CKN,
source-square, or critical-strain reserve.  The quadratic identity therefore
sees the pulse but does not produce the strict drop `(NWCB.1)`.

## 3. Local nonlinear correctors do not lower the burden

An instantaneous packet-local cubic correction \(B(v)\) has the right
homogeneity to cancel the cubic flux only if, on the critical part,

```math
B(\lambda V)=\lambda^3B(V).
\tag{NWCB.10}
```

Then one sign branch sends the corrected functional to \(-\infty\):

```math
{1\over2}\lambda^2\langle V,A_sV\rangle
-\lambda^3B(V)
\longrightarrow
-\infty.
\tag{NWCB.11}
```

Capping or regularizing \(B\) restores lower boundedness but loses uniform
cubic cancellation.  Higher-order local correctors introduce \(L^5\),
pressure-gradient, and viscous-commutator terms stronger than the target
reserve.  They do not create a smaller producer.

## 4. Memory does not create residence

Pressure is recovered elliptically at each time:

```math
p-p_h=R_iR_j(u_i u_j).
\tag{NWCB.12}
```

For a separated terminal pulse \(u_m(t,x)=a_m(t)U_m(x)\), pressure work carries
the same terminal time concentration as the nonlinear amplitude.  Choosing

```math
a_m(t)=\tau_m^{-1/3}{\bf 1}_{(T_m-\tau_m,T_m]}(t)
\tag{NWCB.13}
```

gives a cubic pressure/convection time factor

```math
a_m(t)^3
=
\tau_m^{-1}{\bf 1}_{(T_m-\tau_m,T_m]}(t),
\qquad
\int a_m(t)^3\,dt=1.
\tag{NWCB.14}
```

Pressure memory and heat/Duhamel memory see the layer.  They do not force the
layer to occupy a fixed fraction of the heat window.

## 5. Exact producer boundary

The strict no-waste branch is noncircular only if it proves one of:

```math
\boxed{
\text{a bounded-below functional with drop controlling same-carrier source-square,}
}
\tag{NWCB.15}
```

```math
\boxed{
\text{a projected localized flux/commutator coercivity theorem with critical-action reserve,}
}
\tag{NWCB.16}
```

```math
\boxed{
\text{normalized CKN or selected critical-strain terminal-tail depletion,}
}
\tag{NWCB.17}
```

```math
\boxed{
\text{square-synchronous signed saturation / no-free Zeno production,}
}
\tag{NWCB.18}
```

or

```math
\boxed{
\text{compact recurrent-profile rigidity after endpoint residue and source defects are evacuated.}
}
\tag{NWCB.19}
```

Each item is already an unweighted critical-action producer.  A local-energy,
pressure-correction, commutator, nonlinear-corrector, or memory identity that
does not produce one of `(NWCB.15)`--`(NWCB.19)` is visibility only.

## Verdict

Strict no-waste remains a valid architecture, but only at full critical-action
strength:

```math
\boxed{
\text{strict no-waste}
\equiv_{\rm route}
\text{bounded-below control of unweighted selected critical action.}
}
\tag{NWCB.20}
```

The installed inputs do not produce that functional.  Therefore this branch
returns to the same-carrier source-square / critical-strain / normalized CKN /
square-saturation / rigid-profile producer wall; it is not an independent
forward-gold proof.
