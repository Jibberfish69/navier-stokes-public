---
theorem_id: forward-gold-unweighted-material-stress-work-carleson-direct-attempt-20260622
status: direct-attempt-fails-from-current-inputs-material-stress-identity-is-discounted
logical_landing_node: unweighted_material_stress_work_carleson
edge_effect: >-
  Tests UnweightedMaterialStressWorkCarleson.A from the exact transported
  material stress-work identity, without splitting pressure, viscosity,
  incompressibility, or velocity into detached proxy ledgers. The identity
  preserves full participation, but it controls the physical annular
  stress-work measure. Under heat-scale normalization, physical annular
  stress work is r times the normalized packet currency. Therefore current
  material identities give only the discounted log-scale control
  int e^{-sigma} Mhat(sigma) ds, not the unweighted Carleson reserve
  int Mhat(sigma) ds. The missing theorem remains a genuinely new no-waste,
  reverse-Holder, Orlicz, Hardy, source-square, or full material tower
  survival producer on the same packet.
parents:
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-material-participation-discount-barrier-direct-test-20260619.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-nested-material-annulus-stress-cancellation-direct-test-20260619.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-infinite-material-zeno-stress-chain-direct-test-20260619.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-uniform-later-annular-return-modulus-direct-attempt-20260622.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-no-free-infinite-material-zeno-stress-chain-direct-attempt-20260622.md
---

# Unweighted Material Stress-Work Carleson Direct Attempt

Date: 2026-06-22

## 0. Target

The target is the unweighted material stress-work reserve:

```math
\boxed{
\texttt{UnweightedMaterialStressWorkCarleson.A}.
}
\tag{UMC.1}
```

This is not a stress-only theorem.  The stress tensor

```math
T(u,p)=-pI+2\nu S(u)
\tag{UMC.2}
```

is the full pressure-viscosity-incompressibility-velocity law written as the
material force transmitted across annular interfaces.

## 1. Exact physical material identity

For a transported material annulus \(A(t)\),

```math
{d\over dt}
\int_{A(t)}{1\over2}|u|^2\,dx
+
2\nu\int_{A(t)}|S(u)|^2\,dx
=
\int_{\partial A(t)}u\cdot T(u,p)n\,dA.
\tag{UMC.3}
```

Thus the physical annular participation density is

```math
\rho_A(t)
:=
\int_{\partial A(t)}|u\cdot T(u,p)n|\,dA
+
2\nu\int_{A(t)}|S(u)|^2\,dx.
\tag{UMC.4}
```

This is the same full packet in material annular form.

## 2. Normalized log-scale currency

Let \(r=e^{-\sigma}\).  On a heat-scale material annulus, the normalized
annular density is

```math
\widehat\rho_A(s)
=
r\,\rho_A(T+r^2s).
\tag{UMC.5}
```

Equivalently, over one normalized time slab,

```math
\int_{T-r^2}^{T}\rho_A(t)\,dt
=
r\int_{-1}^{0}\widehat\rho_A(s)\,ds.
\tag{UMC.6}
```

The physical material identity controls the left-hand side.  The terminal
heat-scale packet is measured by the right-hand normalized integral after
dividing out the factor \(r\).

## 3. What current material identities actually give

For a dyadic terminal chain \(r_j=2^{-j}\), set

```math
\widehat M_j
:=
\int_{-1}^{0}\widehat\rho_{A_j}(s)\,ds.
\tag{UMC.7}
```

Then the physical material stress-work cost on the corresponding heat slab is

```math
M_j^{phys}
=
r_j\widehat M_j.
\tag{UMC.8}
```

Finite physical energy, finite material stress-work on retained finite chains,
and the exact telescoping identity therefore control at most

```math
\sum_j r_j\widehat M_j
<\infty.
\tag{UMC.9}
```

The desired unweighted Carleson reserve is

```math
\sum_j\widehat M_j
<\infty
\tag{UMC.10}
```

or a terminal-tail modulus implying \(\widehat M_j\to0\) along the retained
terminal family.

The implication from `(UMC.9)` to `(UMC.10)` is false.  The model

```math
\widehat M_j=1,
\qquad
r_j=2^{-j},
\tag{UMC.11}
```

has

```math
\sum_j r_j\widehat M_j
=
\sum_j2^{-j}
<\infty,
\qquad
\sum_j\widehat M_j
=
\infty.
\tag{UMC.12}
```

This model is not being asserted as a Navier-Stokes solution.  It is the exact
scale bookkeeping obstruction to deriving `(UMC.10)` from physical material
stress-work control.

## 4. Continuous log-scale form

Writing \(r=e^{-\sigma}\), the same gap is

```math
\int_{\sigma_0}^{\infty}
e^{-\sigma}\widehat M(\sigma)\,d\sigma
<\infty
\tag{UMC.13}
```

versus the needed

```math
\int_{\sigma_0}^{\infty}
\widehat M(\sigma)\,d\sigma
<\infty.
\tag{UMC.14}
```

The material stress-work identity supplies the discounted statement
`(UMC.13)`.  It does not remove the factor \(e^{-\sigma}\).

## 5. Why positive-part stress work does not fix the discount

Taking positive parts does not change the scaling.  For the selected positive
annular return,

```math
\left[
\int_{\partial A_j(t)}u\cdot T(u,p)n\,dA
\right]_+
\tag{UMC.15}
```

the physical-to-normalized relation still contains the same factor \(r_j\).
The finite-chain cancellation theorem keeps the signed partner inside the
material packet, but the infinite heat-scale chain still needs an unweighted
terminal modulus after normalization.

Thus the issue is not loss of pressure, loss of viscosity, or loss of
incompressibility.  The issue is the scale conversion between physical
material work and normalized terminal packet work.

## 6. Result

The direct attempt fails from current inputs:

```math
\boxed{
\text{exact material stress-work participation}
\Longrightarrow
\text{discounted normalized control only.}
}
\tag{UMC.16}
```

It does not prove

```math
\boxed{
\int \widehat M(\sigma)\,d\sigma<\infty.
}
\tag{UMC.17}
```

The remaining gold producer must add one genuinely unweighted mechanism on the
same material packet:

```math
\boxed{
\text{strict no-waste Lyapunov}
\quad\text{or}\quad
\text{endpoint uniform integrability}
\quad\text{or}\quad
\text{source-square / critical-action reserve}
\quad\text{or}\quad
\text{full material tower survival.}
}
\tag{UMC.18}
```

Without such a producer, the same fork remains:

```math
\boxed{
\begin{array}{ll}
\text{retained full material annular packet with unweighted reserve}
&\Rightarrow
A_{4B}\text{ contradiction},\\[1mm]
\text{full material packet record fails}
&\Rightarrow
Pack_Q+\neg Part_{N,Q}.
\end{array}
}
\tag{UMC.19}
```
