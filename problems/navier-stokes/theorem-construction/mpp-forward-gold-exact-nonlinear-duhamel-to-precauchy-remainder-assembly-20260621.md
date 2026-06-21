---
ns_viewer:
  theorem_id: forward-gold-exact-nonlinear-duhamel-to-precauchy-remainder-assembly-20260621
  status: exact-assembly-installed-forward-gold-not-solved
  proof_role: forward_gold_terminal_nonlinear_duhamel_branch_assembly
  logical_landing_node: exact_nonlinear_duhamel_to_precauchy_remainder
  edge_effect: >-
    Assembles the exact terminal nonlinear Duhamel branch after the heat-smoothing
    supplier-boundary test. The only Navier-Stokes Duhamel source is the actual
    Leray-projected nonlinearity N=-P div(v tensor v). Terminal heat smoothing
    does not supply a radius because the terminal sublayer has vanishing heat
    time. Projected-source atoms and any finite-order selected-carrier atoms are
    already finite-rung Field-facing after same-witness Part/Field admission. The
    full native localized positive pre-Cauchy carrier is broader: its main
    trilinear/stretching carrier is consumed, but the selected one-sided
    weighted/lifted/localized remainder survives as the terminal Zeno donor-chain
    branch unless endpoint UI, source-square/Carleson, strict no-waste, signed
    saturation, or rigid profile production is proved. This is an exact
    reduction/assembly, not a closure theorem.
  upstream_origin:
    - problems/navier-stokes/theorem-construction/mpp-forward-gold-exact-nonlinear-duhamel-terminal-split-20260621.md
    - problems/navier-stokes/theorem-construction/mpp-forward-gold-projected-source-atom-to-finite-rung-field-face-20260621.md
    - problems/navier-stokes/theorem-construction/mpp-forward-gold-finite-order-selected-carrier-atom-to-cm-field-face-20260621.md
    - problems/navier-stokes/theorem-construction/mpp-forward-gold-precauchy-main-carrier-consumer-boundary-20260621.md
    - problems/navier-stokes/theorem-construction/mpp-forward-gold-precauchy-remainder-zeno-or-cm-face-reduction-20260621.md
  downstream_consequence: >-
    Do not reopen terminal Duhamel smoothing as a linear approximation route.
    The exact remaining forward-gold supplier is the no-free terminal Zeno
    pre-Cauchy remainder theorem: SelectedCarrierEndpointUI.A, SourceSquareReserve.A
    / ScaleCriticalTreeCarleson.A, StrictRescaledNoWasteLyapunov.A,
    TerminalSignedSaturation.A / NoFreeTerminalZenoDonorChain.A, or
    MinimalZenoProfileProduction.A. Without that supplier, the retained terminal
    atom is CM-facing after same-witness admission and service certification.
---

# MPP Forward-Gold Exact Nonlinear Duhamel To Pre-Cauchy Remainder Assembly

Date: 2026-06-21

## Status

This note assembles the exact consequence of the Duhamel work.  It does not
prove the forward-gold anti-atom theorem.

The strict boundary is:

\[
\boxed{
\text{linear heat tests only rule out bare heat smoothing as the supplier.}
}
\tag{DNA.1}
\]

The Navier-Stokes-facing source is instead the exact projected nonlinearity

\[
N_j
:=
-\mathbb P\nabla\cdot(v_j\otimes v_j).
\tag{DNA.2}
\]

## 1. Exact terminal nonlinear split

For the rescaled smooth preterminal sequence

\[
v_j(s,y)=r_j u(T+r_j^2s,x_j+r_jy),
\tag{DNA.3}
\]

the exact projected equation is

\[
\partial_s v_j-\nu\Delta v_j=N_j,
\qquad
N_j=-\mathbb P\nabla\cdot(v_j\otimes v_j).
\tag{DNA.4}
\]

Thus

\[
v_j(0)
=
e^{\nu\Delta}v_j(-1)
+
\int_{-1}^{0}e^{\nu(-\sigma)\Delta}N_j(\sigma)\,d\sigma .
\tag{DNA.5}
\]

Splitting at \(-\theta\),

\[
\int_{-\theta}^{0}
e^{\nu(-\sigma)\Delta}N_j(\sigma)\,d\sigma
\tag{DNA.6}
\]

is the terminal nonlinear layer.  Its heat time lies in \([0,\theta]\), so
Duhamel alone supplies no uniform tower radius.  Any proof must control
\(N_j\) or the associated native selected carrier itself.

## 2. Projected-source atoms are already finite-rung Field-facing

Suppose a selected projected-source atom is present on terminal strips
\(I_m\), \(|I_m|=\theta_m\downarrow0\):

\[
A_m(s)
:=
\int_{\mathbb T^3}
[\sigma_m\cdot N_m(s,y)]_+\,dy,
\qquad
\int_{I_m}A_m(s)\,ds\ge a>0.
\tag{DNA.7}
\]

If the same terminal object is admitted to the CM witness test and retained
through \(Pack_Q\) and \(Part_{N,Q}\), then any positive finite-rung
\(Field_{N,\rho,Q}\) certificate controlling \(H_F^{\gamma+1}\), \(\gamma>5/2\),
gives

\[
\operatorname*{ess\,sup}_{s\in I_m}
\|v_m(s)\|_{H_F^{\gamma+1}}
\le C_{\gamma,\rho,Q}.
\tag{DNA.8}
\]

Sobolev algebra and embedding give a uniform bound on the exact projected
source:

\[
\|N_m(s)\|_{L^\infty}
\le
C_{\infty,\gamma}C_{\mathrm{alg},\gamma+1}C_{\gamma,\rho,Q}^2 .
\tag{DNA.9}
\]

Therefore

\[
\int_{I_m}A_m(s)\,ds
\le
C\,\theta_m
\to0,
\tag{DNA.10}
\]

contradicting `(DNA.7)`.  Hence a projected-source atom lands in

\[
\boxed{
\neg Pack_Q
\vee
\neg Part_{N,Q}
\vee
\forall\rho>0\,\neg Field_{N,\rho,Q}^{finite\text{-}rung}.
}
\tag{DNA.11}
\]

This consumes projected-source atoms after same-witness admission.  It does
not identify the native positive pre-Cauchy carrier with the projected source.

## 3. Fixed finite-order selected carriers are also consumed

More generally, if a selected positive carrier \(a_m(s)\) satisfies

\[
\int_{I_m}a_m(s)\,ds\ge a_0>0,
\qquad
a_m(s)\le C_{\mathrm{op}}X_m(s)^p,
\tag{DNA.12}
\]

where \(X_m\) is a fixed finite-order readout controlled by a positive
finite-rung Field certificate on the same windows, then

\[
\int_{I_m}a_m(s)\,ds
\le
C_{\mathrm{op}}C_X^p\theta_m
\to0.
\tag{DNA.13}
\]

Thus any fixed finite-order selected-carrier atom is CM-facing after
same-witness admission:

\[
\boxed{
\text{finite-order selected carrier atom}
\Rightarrow
\neg Pack_Q
\vee
\neg Part_{N,Q}
\vee
\forall\rho>0\,\neg Field_{N,\rho,Q}.
}
\tag{DNA.14}
\]

## 4. Full pre-Cauchy carrier is broader than projected source

The actual source-wall object is the localized positive pre-Cauchy carrier

\[
\mu^+_{src,N}(\mathcal F_N)
=
\sum_{P\in\mathcal F_N}
\int_{Q(P)}
\left[
\mathcal N^{loc}_{preCauchy}(u;P)
\right]_+\,dxdt .
\tag{DNA.15}
\]

The main interior product is

\[
\mathcal R_P^{main}
=
\chi_P\langle S_{<j_P}^{loc}w_{j_P},w_{j_P}\rangle .
\tag{DNA.16}
\]

That main carrier is finite-order Field-facing and has the exact critical
Holder consumer

\[
\left[\langle \Sigma W,W\rangle\right]_+
\le
|\Sigma|\,|W|^2
\le
{2\over5}|\Sigma|^{5/2}
+
{3\over5}|W|^{10/3}.
\tag{DNA.17}
\]

The open bridge is not this main carrier.  It is the possible one-sided
remainder created by localization, weights, lifts, projection, cutoff, terminal
selection, and positive-part extraction:

\[
\left[\mathcal N^{loc}_{preCauchy}\right]_+
\not\le_{\rm installed}
C\left[\mathcal R_P^{main}\right]_+
+\text{legal}.
\tag{DNA.18}
\]

## 5. Exact surviving branch

After projected/cutoff/legal terms, retained signed partners, finite donor
trees, and entrance leaves are paid, the surviving unpriced form is the
terminal Zeno donor chain carrying inherited positive native source.

In normalized time its selected source marginal has the form

\[
\mu_m(ds)=a_m(s)\,ds,
\qquad
a_m\ge0,
\qquad
\sup_m\mu_m([-1,0])<\infty .
\tag{DNA.19}
\]

The exact source-curve split is:

\[
\lim_{\theta\downarrow0}
\limsup_m
\mu_m((-\theta,0])
=0,
\tag{DNA.20}
\]

or else, after subsequence,

\[
\mu_m\stackrel{*}{\rightharpoonup}\mu,
\qquad
\mu(\{0\})>0 .
\tag{DNA.21}
\]

The first branch is the forward-gold endpoint UI/no-free-Zeno theorem.  The
second branch is a terminal time-face atom.  Finite \(L^1_s\) mass and terminal
heat smoothing do not exclude `(DNA.21)`.

After same-witness admission and service certification, `(DNA.21)` is a
Part/Field failure:

\[
\boxed{
\text{terminal source atom}
+\text{ same-witness service certification}
\Rightarrow
\neg Part_{N,Q}
\vee
\forall\rho>0\,\neg Field_{N,\rho,Q}.
}
\tag{DNA.22}
\]

## Verdict

The exact terminal nonlinear Duhamel branch is now assembled as:

\[
\boxed{
\text{projected-source or fixed finite-order atom}
\Rightarrow
\text{CM Part/Field face after same-witness admission.}
}
\tag{DNA.23}
\]

\[
\boxed{
\text{main pre-Cauchy trilinear/stretching atom}
\Rightarrow
\text{finite-rung Field face or critical-density quantum.}
}
\tag{DNA.24}
\]

\[
\boxed{
\text{full pre-Cauchy remainder atom}
\Rightarrow
\text{endpoint UI/source-square/no-waste/saturation/profile production,
or terminal atom consumed by CM Part/Field after same-witness admission.}
}
\tag{DNA.25}
\]

Therefore the remaining forward-gold supplier is exactly the no-free terminal
Zeno pre-Cauchy remainder theorem:

\[
\boxed{
\text{SelectedCarrierEndpointUI.A, SourceSquareReserve.A, StrictRescaledNoWasteLyapunov.A,
TerminalSignedSaturation.A / NoFreeTerminalZenoDonorChain.A, or
MinimalZenoProfileProduction.A.}
}
\tag{DNA.26}
\]

This is a reduction, not a proof of smoothness.
