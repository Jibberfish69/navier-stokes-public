---
theorem_id: forward-gold-source-square-nowaste-fourbody-supplement-criterion-20260621
status: supplement-criterion-proved-source-square-nowaste-and-no-residue-skew-production-open
logical_landing_node: source_square_nowaste_fourbody_supplement_criterion
edge_effect: "Assembles the source-square / strict-no-waste supplement in the upgraded four-body loop. If the actual native selected positive carrier is dominated on the same carrier by a square-controlled density plus legal residue, and that square density has an unweighted terminal budget, then the selected carrier has same-carrier spacetime UI and no terminal atom. Equivalently, a strict no-waste Lyapunov drop with the selected critical action gives the same unweighted reserve. The no-residue skew criterion is now attached in corrected form: Leray projection is only one compatibility channel, while the selected object is a full Hodge-Stokes balance packet carrying transport, pressure, viscosity, time, divergence, cutoff/collar, scale, and signed-saturation channels. The transport channel has an exact skew commutator identity; the production theorem must pay the whole packet by viscosity, scale-capacity drop, and L1 tail with no C_epsilon Theta_sigma^2 E_sigma residue. This proves supplement/criterion implications, not the Navier-Stokes production theorem."
parents:
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-native-precauchy-to-gauge-quotient-tower-bridge-test-20260621.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-selected-source-square-carrier-domination-failure-split-20260621.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-source-square-domination-to-same-carrier-spacetime-ui-20260621.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-strict-nowaste-post-active-height-audit-20260620.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-native-source-square-reserve-heat-scale-direct-test-20260619.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-pressure-adapted-no-residue-skew-coercivity-criterion-20260621.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-upgraded-four-body-current-frontier-20260621.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-participation-preserving-hodge-stokes-packet-replacement-20260621.md
---

# Source-Square / No-Waste Four-Body Supplement Criterion

Date: 2026-06-21

## 0. Aim

The native bridge test left source-square/no-waste as one of the surviving
same-carrier supplements.

This note assembles the exact supplement.

It proves:

```math
\boxed{
\text{same-carrier source-square domination}
+
\text{unweighted source-square budget}
\Longrightarrow
\text{same-carrier UI and no terminal atom.}
}
\tag{SSN.1}
```

It also records the equivalent strict no-waste form:

```math
\boxed{
\text{bounded-below strict no-waste drop for the selected critical action}
\Longrightarrow
\text{unweighted reserve.}
}
\tag{SSN.2}
```

The note does not produce either hypothesis from the current Navier-Stokes
energy/local-energy package.

## 1. Same-carrier source-square domination

Let \(\Omega_j\subset[-1,0]\times B_R\) be the normalized domain for the
\(j\)-th selected terminal carrier.  Let \(\mu_j\) be the actual native
selected positive carrier:

```math
d\mu_j=a_j(s,y)\,dy\,ds,
\qquad
a_j\ge0.
\tag{SSN.3}
```

The source-square domination hypothesis is the same-carrier estimate

```math
\boxed{
a_j(s,y)
\le
C_{\rm car}G_j(s,y)+\ell_j(s,y)
\quad\text{on }\Omega_j,
}
\tag{SSN.4}
```

where \(G_j\ge0\) is the square-controlled density on the same carrier, and
\(\ell_j\ge0\) is legal residue.

The square budget is

```math
\boxed{
\sup_j\int_{\Omega_j}G_j(s,y)^2\,dy\,ds
\le
C_\square<\infty.
}
\tag{SSN.5}
```

Assume also that the legal residues have uniform spacetime absolute continuity:

```math
\omega_{\rm legal}(\delta)
:=
\sup_j
\sup_{\substack{E\subset\Omega_j\\ |E|\le\delta}}
\int_E\ell_j
\longrightarrow0
\qquad(\delta\downarrow0).
\tag{SSN.6}
```

Then for every measurable \(E\subset\Omega_j\),

```math
\mu_j(E)
\le
C_{\rm car}\int_EG_j+\int_E\ell_j.
\tag{SSN.7}
```

Cauchy-Schwarz gives

```math
\int_EG_j
\le
|E|^{1/2}
\left(\int_{\Omega_j}G_j^2\right)^{1/2}
\le
C_\square^{1/2}|E|^{1/2}.
\tag{SSN.8}
```

Therefore

```math
\boxed{
\mu_j(E)
\le
C_{\rm car}C_\square^{1/2}|E|^{1/2}
+
\omega_{\rm legal}(|E|).
}
\tag{SSN.9}
```

This is same-carrier spacetime uniform integrability.

For terminal strips

```math
E_\theta=\Omega_j\cap\{-\theta<s<0\},
\tag{SSN.10}
```

one has \(|E_\theta|\le C_R\theta\) on fixed normalized carriers, hence

```math
\boxed{
\lim_{\theta\downarrow0}\limsup_j\mu_j(E_\theta)=0.
}
\tag{SSN.11}
```

So same-carrier source-square domination plus square budget forbids a terminal
time-face atom of the selected carrier.

## 2. Unweighted reserve form

For a terminal recurrence indexed by log scale, the stronger tail form is

```math
\boxed{
\int_{\sigma_0}^{\infty}
\int_{\Omega(\sigma)}
G(\sigma,s,y)^2\,dy\,ds\,d\sigma
<\infty.
}
\tag{SSN.12}
```

If a retained bad packet has

```math
\mu_\sigma(\Omega(\sigma))\ge a_0>0
\tag{SSN.13}
```

on infinitely many separated log-scale slabs, `(SSN.4)` and `(SSN.12)` rule
out infinite recurrence.  Thus the source-square supplement gives the
unweighted log-scale reserve only when the square budget is itself unweighted
on the same selected carrier.

Physical energy-level control is not enough, because it carries the heat-scale
radius discount already recorded in the source-square direct tests.

## 3. Strict no-waste equivalent

The strict no-waste form is a bounded-below functional \(L(\sigma)\) satisfying

```math
\inf_{\sigma\ge\sigma_0}L(\sigma)>-\infty
\tag{SSN.14}
```

and

```math
-{d\over d\sigma}L(\sigma)
\ge
c\,\mathcal A_{\rm sel}(\sigma)
-
\mathcal R_{\rm legal}(\sigma),
\qquad
\int_{\sigma_0}^{\infty}\mathcal R_{\rm legal}(\sigma)\,d\sigma<\infty.
\tag{SSN.15}
```

Integrating `(SSN.15)` gives

```math
\boxed{
\int_{\sigma_0}^{\infty}
\mathcal A_{\rm sel}(\sigma)\,d\sigma
\le
c^{-1}\bigl(L(\sigma_0)-\inf L\bigr)
+
c^{-1}
\int_{\sigma_0}^{\infty}
\mathcal R_{\rm legal}(\sigma)\,d\sigma
<\infty.
}
\tag{SSN.16}
```

This is exactly the same unweighted reserve, with \(\mathcal A_{\rm sel}\) in
place of \(G^2\).

The strict no-waste audits show that pressure-corrected physical energy,
instantaneous cubic correctors, heat memory, and compact recurrence do not
produce `(SSN.15)` unless they already carry this unweighted selected action.

## 4. Participation-preserving no-residue full-cycle upgrade

The sharper version of the no-waste route tries to avoid the source-square
residue before it is created.

The old one-channel selector

```math
A_\sigma=S_\sigma P
\tag{SSN.16a}
```

is not the selected object.  The retained object is the full Hodge-Stokes
packet

```math
\mathcal K_{\sigma,P}
=
\Big(
S_\sigma^{tr}((u\cdot\nabla)u),\;
S_\sigma^p\nabla p,\;
\nu S_\sigma^\nu\Delta u,\;
S_\sigma^t\partial_su,\;
S_\sigma^{div}\nabla\cdot u,\;
S_\sigma^P[\chi_P,\mathbb P_{\rm Leray}](u\cdot\nabla u),\;
\mathcal B_{\sigma,P}^{cut},\;
\mathcal S_{\sigma,P}^{sgn}
\Big).
\tag{SSN.16b}
```

The transport component still has the exact skew decomposition.  With
\(A_\sigma^{tr}=S_\sigma^{tr}\) and \(W_\sigma=A_\sigma^{tr}u\),

```math
\mathcal M_\sigma^{tr}
=
\langle u\cdot\nabla W_\sigma,W_\sigma\rangle
+
\langle[A_\sigma^{tr},u\cdot\nabla]u,W_\sigma\rangle.
\tag{SSN.16c}
```

The first term is the incompressible skew term and vanishes in the closed
localized same-carrier pairing:

```math
\langle u\cdot\nabla W_\sigma,W_\sigma\rangle=0.
\tag{SSN.16d}
```

Thus the transport selected interaction is the transport commutator

```math
\mathcal C_\sigma^{tr}
=
\langle[A_\sigma^{tr},u\cdot\nabla]u,W_\sigma\rangle.
\tag{SSN.16e}
```

The corrected no-residue theorem is full-cycle.  It would prove

```math
\boxed{
\left[
\mathcal C_\sigma^{tr}
+\mathcal C_\sigma^p
+\mathcal C_\sigma^\nu
+\mathcal C_\sigma^{time}
+\mathcal C_\sigma^{div}
+\mathcal C_\sigma^{cut}
+\mathcal C_\sigma^{scale}
+\mathcal C_\sigma^{sgn}
+\mathcal C_\sigma^{tail}
\right]_{\mathcal S,+}
\le
\varepsilon\nu D_\sigma
-\partial_\sigma\Phi_\sigma
+
T_\sigma
+
R_{\rm legal}(\sigma),
}
\tag{SSN.16f}
```

with

```math
T_\sigma,\ R_{\rm legal}\in L^1_\sigma,
\qquad
\inf_{\sigma\ge\sigma_0}\Phi_\sigma>-\infty.
\tag{SSN.16g}
```

This is strictly stronger than the crude estimate

```math
|\mathcal C_\sigma|
\le
\varepsilon\nu D_\sigma
+
C_\varepsilon\Theta_\sigma^2E_\sigma.
\tag{SSN.16h}
```

because `(SSN.16f)` has no \(C_\varepsilon\Theta_\sigma^2E_\sigma\) residual.

If the native selected carrier is identified with this positive full-packet
carrier up to summable legal residue, integrating `(SSN.16f)` gives the same
unweighted reserve as `(SSN.16)`, after absorbing \(\varepsilon\nu D_\sigma\)
into the four-body loss and adding \(\Phi_\sigma\) to the storage.

This route is now recorded in
`mpp-forward-gold-pressure-adapted-no-residue-skew-coercivity-criterion-20260621.md`.
It is a criterion.  Its unproved production input is exactly the no-residue
full-cycle payment `(SSN.16f)` on the terminal selected carrier, with the
Hodge-Stokes packet replacement recorded in
`mpp-forward-gold-participation-preserving-hodge-stokes-packet-replacement-20260621.md`.

## 5. Product split for the native trilinear carrier

For the main native carrier, write

```math
\alpha_j^+
=
\left[e_j\cdot S_{<j}^{loc}e_j\right]_+,
\tag{SSN.17}
```

and

```math
\Pi_j^+(t)
=
\int_{\Omega_j(t)}|w_j|^2\alpha_j^+\,dx.
\tag{SSN.18}
```

At physical radius \(r=2^{-j}\), split by a fixed \(K<\infty\):

```math
\Omega_{j,K}^{bd}
=
\Omega_j\cap
\{\alpha_j^+\le K\nu r^{-2}\},
\qquad
\Omega_{j,K}^{over}
=
\Omega_j\cap
\{\alpha_j^+>K\nu r^{-2}\}.
\tag{SSN.19}
```

On the bounded part,

```math
\Pi_{j,K}^{bd}(t)
\le
K\nu r^{-2}
\int_{\Omega_j(t)}|w_j|^2\,dx.
\tag{SSN.20}
```

This is the localized shell dissipation density and is included, up to legal
cutoff/collar terms, in the parent source-square tail.  Thus the bounded
coefficient branch is already a source-square-dominated carrier.

The only remaining product branch is the selected overrun:

```math
\boxed{
\alpha_j^+>K\nu r^{-2}
\quad\text{on the selected carrier.}
}
\tag{SSN.21}
```

The overrun branch is not paid by the source-square consumer unless another
same-carrier theorem controls it.

## 6. Exact failure locations

The source-square/no-waste supplement can fail only at one of these exact
locations.

First, the native pre-Cauchy carrier may fail to be identified with the local
trilinear carrier plus legal/charged remainder:

```math
\left[
\mathcal N_{preCauchy}^{loc}
\right]_+
\nleq
C\left[
\mathcal R_P^{main}
\right]_+
+
\text{legal/charged remainder}.
\tag{SSN.22}
```

Second, after the trilinear carrier is identified, the selected coefficient
overrun `(SSN.21)` may remain unpaid.

Third, a proposed no-waste functional or square density may lack an unweighted
tail budget on the same carrier.

Fourth, the pressure-adapted no-residue route may fail because the selected
Leray/pressure/cutoff/scale commutator cannot be written as viscosity plus
capacity drop plus \(L^1\) tail without the square-source residual.

Thus the exact production burden is:

```math
\boxed{
\text{same-carrier identity}
+
\text{selected coefficient-overrun payment}
+
\text{unweighted square/no-waste budget}
\quad\text{or}\quad
\text{pressure-adapted no-residue commutator payment.}
}
\tag{SSN.23}
```

## 7. Current state

This note proves the source-square/no-waste supplement criterion:

```math
\boxed{
\text{same-carrier square/no-waste domination with unweighted budget}
\Longrightarrow
\text{no terminal selected-carrier atom.}
}
\tag{SSN.24}
```

It also sharpens the remaining branch:

```math
\boxed{
\text{unpaid source-square/no-waste failure}
=
\text{identity failure}
\ \vee\
\text{selected coefficient overrun}
\ \vee\
\text{missing unweighted budget}
\ \vee\
\text{failed no-residue pressure-adapted commutator payment.}
}
\tag{SSN.25}
```

So source-square/no-waste is no longer a vague supplement in the four-body
loop.  It is an exact two-input supplement: same-carrier domination and
unweighted reserve.  The current Navier-Stokes inputs do not install those two
inputs.
