---
theorem_id: forward-gold-c0-selector-force-balance-leg-bill-currency-audit-20260707
created: 2026-07-07
problem: navier-stokes
route: forward-gold / c_0 / selector-force / full-balance legs / bill currency
status: strict-reduction-and-countercheck-not-c0-closure
ontology_lock:
  fluid_field_object: one same-fluid incompressible viscous dissipative pressure-constrained irreversible Navier-Stokes history
  reversible: false
  adiabatic: false
  compressible: false
target_object:
  - SelectorForceBalanceLegBillCurrency.A
  - SelectorForceHminusOneBillCurrency.A
  - AccelerationEndpointImpulseOrFrameVariationBillOrRouteOut.A
  - NonlinearKineticCollarReynoldsBillOrRouteOut.A
  - DefectCertificateVariationBillOrRouteOut.A
  - ParentOwnedPositiveRecordBillCurrency.A
source_refs:
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-c0-selector-force-hminusone-floor-to-bill-currency-reduction-20260707.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-wkb-selector-force-full-balance-payment-split-20260706.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-wkb-selector-force-viscous-cancellation-floor-20260706.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-wkb-selector-force-acceleration-impulse-identity-20260706.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-wkb-selector-force-moving-frame-variation-floor-20260706.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-wkb-selector-force-nonlinear-stress-localization-split-20260706.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-wkb-selector-force-defect-carriage-moment-floor-20260706.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-overlap-bath-local-affine-dynamic-obstruction-20260706.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-c0-terminal-antiatom-to-root-fixed-service-storage-reduction-20260707.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-c0-root-fixed-service-storage-to-parent-active-source-reduction-20260707.md
completion_truth: >-
  Strict reduction and countercheck only. The selector-force full-balance split
  proves that a nonzero selected affine moment must be carried by one of the
  acceleration, viscous, nonlinear, or defect/certificate legs. The viscous
  leg is already compatible with the retained bill when the same selected
  force is actually supplied by the same viscous carrier: H^{-1} force squared
  is paid by viscous dissipation. The other legs are not yet the retained
  B=dE_Field+dA_4B+dVisc bill. The acceleration leg gives endpoint impulse,
  H^{-1} time variation, or moving-frame variation; a terminal pulse can have
  unit L1 record and unbounded L2-in-time force while using only bounded
  endpoint impulse. The nonlinear leg gives same-scale kinetic/collar/Reynolds
  stress, and the defect leg gives trace ballast or signed variation, but
  current sources do not admit those currencies as same-edge retained bill
  before readout. Therefore the HminusOne selector route does not solve c_0.
  It reduces c_0 to same-edge bill-or-route-out conversion for the nonviscous
  balance legs, with the acceleration endpoint branch rejoining the terminal
  no-atom / parent-active source wall. No c_0 or MPP closure is claimed.
---

# Selector-force balance leg bill-currency audit

## 1. What is already proved

The installed selector-force chain gives two exact facts.

First, a selected compact stress with affine trace-free moment has an
\(H^{-1}\) selector-force floor:

\[
\|\mathbb P\operatorname{div}T\|_{\dot H^{-1}}
\ge
c\,{|M_A(T)|\over |A|D^{3/2}} .
\tag{SBA.1}
\]

Second, if the same selected force is cancelled in the projected same-fluid
balance, then

\[
M_A(T)=C_{\rm acc}+C_{\rm visc}+C_{\rm nl}+C_{\rm def}.
\tag{SBA.2}
\]

Hence one leg carries a fixed fraction of \(|M_A(T)|\), pointwise or after
rectification in time. This kills mixed cancellation as a free bookkeeping
escape.

It does not yet prove

\[
\int
\|\mathbb P\operatorname{div}T_m(s)\|_{\dot H^{-1}}^2\,ds
\le
C B_m+Legal_m+Stop_m+RouteOut_m+o_m(1),
\tag{SBA.3}
\]

with

\[
B_m=\int
\left(dE_{N,h}^{Field}+dA_{4B,N}+dVisc_{N,h}\right)
\tag{SBA.4}
\]

on the same retained parent edge.

## 2. Viscous leg

The viscous branch is the one installed bill-compatible leg. If

\[
F_{\rm sel}=\nu \mathbb P\Delta v
\tag{SBA.5}
\]

in \(\dot H^{-1}\), then

\[
\|F_{\rm sel}\|_{\dot H^{-1}}
\le
\nu\|\nabla v\|_2
\tag{SBA.6}
\]

and therefore

\[
\|F_{\rm sel}\|_{\dot H^{-1}}^2
\le
\nu\,dVisc .
\tag{SBA.7}
\]

So viscosity cannot carry the selector force for free. On this branch, after
same-carrier identification, the force square is paid by the retained viscous
bill.

## 3. Acceleration and moving-frame legs

The acceleration branch gives an identity, not a bill. With a fixed localized
affine test \(\Psi_A\),

\[
M_A(T)
=
{d\over dt}\langle v,\Psi_A\rangle .
\tag{SBA.8}
\]

For a moving test \(\Psi(t)\),

\[
M_A(T)
=
{d\over dt}\langle v,\Psi(t)\rangle
-
\langle v,\partial_t\Psi(t)\rangle .
\tag{SBA.9}
\]

Thus acceleration service is endpoint impulse or frame variation.

This is the direct countercheck against `(SBA.3)'. Let

\[
a_\tau(s)=\tau^{-1}{\bf 1}_{(-\tau,0]}(s).
\tag{SBA.10}
\]

Then

\[
\int_{-1}^{0}a_\tau(s)\,ds=1,
\qquad
\int_{-1}^{0}a_\tau(s)^2\,ds=\tau^{-1}\to\infty .
\tag{SBA.11}
\]

But \(a_\tau=dI_\tau/ds\) with

\[
I_\tau(s)=
\begin{cases}
0,&s\le-\tau,\\
(s+\tau)/\tau,&-\tau<s\le0.
\end{cases}
\tag{SBA.12}
\]

The endpoint displacement is only

\[
I_\tau(0)-I_\tau(-\tau)=1.
\tag{SBA.13}
\]

So a terminal pulse can carry unit \(L^1\) selected service through acceleration
endpoint impulse while its \(L^2\)-in-time selector-force square diverges.
Bounded endpoint energy does not convert this into \(B\)-currency.

The local affine dynamic obstruction confirms that this cannot be killed by a
local material-jet argument: a time-dependent trace-free affine strain history
can be locally absorbed by the pressure Hessian. The missing theorem must be
global same-fluid bill-or-route-out for endpoint impulse/frame variation, or
terminal no-atom storage on the same full packet.

## 4. Nonlinear leg

If nonlinear transport carries the selector force, then

\[
M_A(T)
=
-\int v\otimes v:\nabla\Psi_A .
\tag{SBA.14}
\]

Since \(\nabla\Psi_A=A\) on the selected ball, the selected moment is carried
by interior kinetic stress or by the cutoff collar. Quantitatively,

\[
|M_A(T)|
\le
C|A|\int_{B_{2D}}|v|^2\,dx.
\tag{SBA.15}
\]

This excludes vanishing same-scale kinetic/collar stress. It does not by
itself charge the retained bill. Kinetic energy is storage unless the same edge
is admitted as active Field/four-body currency, or the weak covariance is
legally carried as a Reynolds-defect certificate before readout.

## 5. Defect or certificate leg

If a stress certificate \(Z\) carries the selector force, then

\[
M_A(T)=-\int Z:\nabla\Psi_A .
\tag{SBA.16}
\]

Therefore

\[
|Z|(B_{2D})\ge c\,{|M_A(T)|\over |A|}.
\tag{SBA.17}
\]

For \(Z\ge0\), this is trace ballast; for signed symmetric \(Z\), it is nuclear
variation. Scalar pressure gauge carries no trace-free affine moment because
\(\operatorname{div}\Psi_A=0\).

This prices legal defect carriage as variation/certificate currency. It does
not prove that the variation is admitted as the retained Field/four-body bill
on the same selected edge.

## 6. Resulting reduction

The full selector-force route closes \(c_0\) only under the same-edge
bill-or-route-out theorem

\[
\begin{array}{c}
\texttt{AccelerationEndpointImpulseOrFrameVariationBillOrRouteOut.A}\\
+\texttt{NonlinearKineticCollarReynoldsBillOrRouteOut.A}\\
+\texttt{DefectCertificateVariationBillOrRouteOut.A}
\end{array}
\Longrightarrow
\texttt{SelectorForceBalanceLegBillCurrency.A}.
\tag{SBA.18}
\]

Together with selected affine-moment carrier identification, this would give
`SelectorForceHminusOneBillCurrency.A`, then terminal tail bill currency, then

\[
R(W)\le C B(W),
\qquad
\varepsilon_*\ge C^{-1}>0,
\qquad
c_0=2\varepsilon_*>0.
\tag{SBA.19}
\]

The present source state proves the viscous line of `(SBA.18)' and prices the
other three lines in their native currencies. It does not convert those native
currencies into the retained bill.

The acceleration endpoint pulse `(SBA.10)'--`(SBA.13)' is the sharp warning:
the selector-force split alone cannot rule out the terminal Zeno pulse. That
branch rejoins the already isolated terminal no-atom / root-fixed service
storage / parent-active source wall.
