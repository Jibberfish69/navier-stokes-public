---
theorem_id: forward-gold-critical-density-ckn-fourbody-supplement-criterion-20260621
status: supplement-criterion-proved-critical-density-production-not-installed
logical_landing_node: critical_density_ckn_fourbody_supplement_criterion
edge_effect: "Installs the exact critical-density / CKN supplement in the upgraded four-body loop. The native selected trilinear carrier is algebraically dominated by the sharp Holder density |Sigma|^(5/2)+|W|^(10/3). Therefore an unweighted same-carrier budget or terminal-tail depletion for that density forbids retained terminal selected-carrier atoms. The note also records the exact scaling boundary: energy gives only radius-discounted L^(10/3) velocity and L^2 strain control, physical CKN mass gives radius-squared-discounted normalized CKN charge, and L^(5/2) strain is scale-critical but not energy-produced. This proves the supplement criterion, not the Navier-Stokes production theorem."
parents:
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-native-precauchy-to-gauge-quotient-tower-bridge-test-20260621.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-combined-holder-density-budget-direct-test-20260621.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-selected-critical-strain-carleson-direct-attempt-20260619.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-normalized-ckn-carleson-packing-direct-test-20260619.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-selected-coefficient-overrun-critical-factor-ui-bridge-20260621.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-upgraded-four-body-current-frontier-20260621.md
---

# Critical-Density / CKN Four-Body Supplement Criterion

Date: 2026-06-21

## 0. Aim

The native bridge test left critical-density control as one of the surviving
same-carrier supplements.  This note makes that supplement exact.

It proves the criterion

\[
\boxed{
\text{same-carrier critical-density domination}
+
\text{unweighted critical-density budget}
\Longrightarrow
\text{unweighted selected-carrier reserve.}
}
\tag{CDS.1}
\]

It also records the exact production failure.  The current energy, local
energy, CKN packing, and bounded-overlap inputs do not produce that unweighted
same-carrier budget.

## 1. Native carrier and sharp Holder density

On a normalized terminal heat-scale carrier, let \(W\) be the selected high
velocity packet and let \(\Sigma\) be the selected local low/near strain
coefficient produced by the participation tower.  The native main positive
pre-Cauchy carrier has density

\[
a(s,y)
=
\left[
\left\langle \Sigma(s,y)W(s,y),W(s,y)\right\rangle
\right]_+ .
\tag{CDS.2}
\]

The exact pointwise estimate is

\[
a
\le
|\Sigma|\,|W|^2
\le
{2\over5}|\Sigma|^{5/2}
+
{3\over5}|W|^{10/3}.
\tag{CDS.3}
\]

Define the critical Holder density

\[
H_{\Sigma,W}
:=
|\Sigma|^{5/2}+|W|^{10/3}.
\tag{CDS.4}
\]

Then

\[
a\le H_{\Sigma,W}
\tag{CDS.5}
\]

after harmless absolute constants are absorbed.

This is the exact algebraic content of the critical-density supplement.  It
does not use a separate geometric or packet assumption.  It is the native
trilinear carrier being read in the critical \(L^{5/2}\)-\(L^{10/3}\) pair.

## 2. Four-body reserve criterion

Let \(\Omega(\sigma)\) be the normalized same-carrier terminal domain at log
scale \(\sigma\).  Let \(dA_{\rm sel}\) be the actual selected positive carrier
measure.  The critical-density supplement assumes the same-carrier domination

\[
dA_{\rm sel}
\le
C_H H_{\Sigma,W}\,dy\,ds\,d\sigma
+
dR_{\rm legal}
+
dK_{\rm rem}^+
\tag{CDS.6}
\]

where \(R_{\rm legal}\) is legal and \(K_{\rm rem}^+\) is a named charged
pre-Cauchy/selector/compactness remainder.

If the four-body loop produces the unweighted budget

\[
\int_{\sigma_0}^{\infty}
\int_{\Omega(\sigma)}
H_{\Sigma,W}(\sigma,s,y)\,dy\,ds\,d\sigma
<\infty
\tag{CDS.7}
\]

and

\[
R_{\rm legal}((\sigma_0,\infty))
+
K_{\rm rem}^+((\sigma_0,\infty))
<\infty,
\tag{CDS.8}
\]

then

\[
\boxed{
\int_{\sigma_0}^{\infty}dA_{\rm sel}<\infty .
}
\tag{CDS.9}
\]

Consequently an infinite sequence of separated retained terminal packets with

\[
A_{\rm sel}(\Omega(\sigma_j))\ge a_0>0
\tag{CDS.10}
\]

is impossible, because it would force the left side of `(CDS.9)` to diverge.

Thus the critical-density supplement gives the desired unweighted reserve once
the budget `(CDS.7)` is genuinely produced on the same carrier.

## 3. Terminal-tail form

For a terminal time-face atom, the needed form is not merely a uniform
\(L^1\) bound for \(H_{\Sigma,W}\).  The needed form is terminal-tail
depletion on the same selected carrier:

\[
\lim_{\theta\downarrow0}
\limsup_{\sigma\to\infty}
\int_{\Omega(\sigma)\cap\{-\theta<s<0\}}
H_{\Sigma,W}(\sigma,s,y)\,dy\,ds
=0.
\tag{CDS.11}
\]

Together with `(CDS.6)` and legal/remnant terminal-tail depletion, `(CDS.11)`
implies

\[
\boxed{
\lim_{\theta\downarrow0}
\limsup_{\sigma\to\infty}
A_{\rm sel}\bigl(\Omega(\sigma)\cap\{-\theta<s<0\}\bigr)
=0.
}
\tag{CDS.12}
\]

So the critical-density route has two exact useful forms:

\[
\boxed{
\text{unweighted log-scale budget}
}
\tag{CDS.13}
\]

for recurrence, and

\[
\boxed{
\text{terminal-tail depletion}
}
\tag{CDS.14}
\]

for time-face atoms.

Both must hold on the same selected carrier.

## 4. Scaling boundary

The reason this supplement is not already produced by energy is exact.

For the heat-scale normalization

\[
u(t,x)=r^{-1}U\!\left({t-T\over r^2},{x-x_0\over r}\right),
\qquad
p(t,x)=r^{-2}P\!\left({t-T\over r^2},{x-x_0\over r}\right),
\tag{CDS.15}
\]

the velocity exponent in `(CDS.4)` satisfies

\[
\int_{T-r^2}^{T}\int_{B_r}
|u|^{10/3}\,dxdt
=
r^{5/3}
\int_{-1}^{0}\int_{B_1}|U|^{10/3}\,dyds.
\tag{CDS.16}
\]

The energy-level strain bill satisfies

\[
\int_{T-r^2}^{T}\int_{B_r}
|S_x(u)|^2\,dxdt
=
r
\int_{-1}^{0}\int_{B_1}|S_y(U)|^2\,dyds.
\tag{CDS.17}
\]

The critical strain bill is scale-invariant:

\[
\int_{T-r^2}^{T}\int_{B_r}
|S_x(u)|^{5/2}\,dxdt
=
\int_{-1}^{0}\int_{B_1}|S_y(U)|^{5/2}\,dyds.
\tag{CDS.18}
\]

Thus \(L^{5/2}\) strain is the right unweighted critical coefficient, but it
is not supplied by the energy inequality, which gives only \(L^2\) strain.

The physical CKN measure has the same radius-discount issue.  With

\[
\mathcal C(Q_r)
:=
{1\over r^2}
\int_{T-r^2}^{T}\int_{B_r}
\left(|u|^3+|p|^{3/2}\right)\,dxdt,
\tag{CDS.19}
\]

finite physical cubic/pressure mass controls

\[
\sum_j r_j^2\,\mathcal C(Q_{r_j}),
\tag{CDS.20}
\]

not

\[
\sum_j \mathcal C(Q_{r_j}).
\tag{CDS.21}
\]

One terminal heat-scale packet per dyadic scale can make `(CDS.20)` finite
while `(CDS.21)` diverges.  This is exactly the normalized CKN packing gap.

Therefore CKN visibility and bounded-overlap packing are not the unweighted
reserve.  They become useful only after a same-carrier normalized CKN/critical
density Carleson budget is produced.

## 5. Overrun layer bridge

The selected coefficient-overrun branch is also governed by the same critical
pair.  On a normalized overrun layer \(E\),

\[
\int_E \Sigma^+ |W|^2\,dy\,ds
\le
\left(
\int_E(\Sigma^+)^{5/2}\,dy\,ds
\right)^{2/5}
\left(
\int_E|W|^{10/3}\,dy\,ds
\right)^{3/5}.
\tag{CDS.22}
\]

Endpoint control follows if one factor has terminal-tail depletion on the same
overrun layer and the other factor has a uniform critical bound.  Uniform
critical bounds for both factors are not enough by themselves, because the two
factors may concentrate on the same shrinking terminal strip.

Thus the overrun branch is paid by critical density only when the same-layer
tail depletion or an equivalent source-square/no-waste/product theorem is
installed.

## 6. Placement inside the four-body loop

The supplement sits inside the upgraded four-body loop as follows.

Body I gives factorial tower bookkeeping and radius spend.  It cancels the
binomial coefficients in the derivative tower, but it does not produce
`(CDS.7)` by itself.

Body II gives the native participation carrier `(CDS.2)` and the Holder
consumer `(CDS.3)`.  It does not make the signed/positive carrier mismatch
disappear.

Body III must retain the same nonnegative carrier and the same critical density
through compactness.  Signed-current compactness alone is insufficient, because
orientation cancellation can remove the signed trace while the nonnegative
carrier survives.

Body IV supplies the deformation/strain geometry in which the
\(L^{5/2}\)-strain coefficient is natural.  It does not supply the unweighted
critical-density clock unless a separate geometry/strain-action budget is
proved.

So the exact production theorem left by this supplement is

\[
\boxed{
\text{CriticalDensitySameCarrierReserve.A}
}
\tag{CDS.23}
\]

meaning: the actual Navier-Stokes four-body loop must produce `(CDS.7)` or
`(CDS.11)` for the same selected carrier that carries the native positive
pre-Cauchy source.

## 7. Current state

The critical-density / CKN supplement is proved as a criterion:

\[
\boxed{
dA_{\rm sel}
\le
C_HH_{\Sigma,W}
+dR_{\rm legal}
+dK_{\rm rem}^+
\quad\text{and}\quad
\int H_{\Sigma,W}<\infty
\Longrightarrow
\int dA_{\rm sel}<\infty .
}
\tag{CDS.24}
\]

The Navier-Stokes production theorem is not proved.

The exact missing inputs are:

\[
\boxed{
\text{same-carrier critical-density identity;}
}
\tag{CDS.25}
\]

\[
\boxed{
\text{unweighted selected }L^{5/2}\text{ strain or normalized CKN budget;}
}
\tag{CDS.26}
\]

\[
\boxed{
\text{terminal-tail depletion on the same overrun layer;}
}
\tag{CDS.27}
\]

and

\[
\boxed{
\text{full pre-Cauchy remainder reduction to main carrier plus legal/charged
defects.}
}
\tag{CDS.28}
\]

This means critical density is now in the same state as source-square/no-waste:
an exact four-body supplement criterion, with production still open at the
same-carrier unweighted reserve.
