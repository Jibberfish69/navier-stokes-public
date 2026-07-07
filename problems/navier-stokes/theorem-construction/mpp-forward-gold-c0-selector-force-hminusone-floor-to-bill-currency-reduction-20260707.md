---
theorem_id: forward-gold-c0-selector-force-hminusone-floor-to-bill-currency-reduction-20260707
created: 2026-07-07
problem: navier-stokes
route: forward-gold / c_0 / selector-force / HminusOne floor / bill currency
status: strict-reduction-hminusone-floor-installed-bill-currency-conversion-open
ontology_lock:
  fluid_field_object: one same-fluid incompressible viscous dissipative pressure-constrained irreversible Navier-Stokes history
  reversible: false
  adiabatic: false
  compressible: false
target_object:
  - SelectedRellichSelectorForceLowerBound.A
  - SelectorBoundaryCommutator.HminusOneFloor
  - TerminalZenoRellichSameCarrierReserve.A
  - SameEdgeTerminalTailUIBillCurrency.A
  - ParentOwnedPositiveRecordBillCurrency.A
  - epsilon_star_positive
new_lower_object:
  - SelectedAffineMomentCarrierIdentification.A
  - SelectorForceHminusOneBillCurrency.A
  - SelectorForceBalanceLegBillCurrency.A
  - AccelerationViscousNonlinearDefectLegCurrency.A
source_refs:
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-c0-rellich-selector-force-lower-bound-reduction-20260707.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-c0-terminal-tail-ui-bill-currency-strict-reduction-20260707.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-wkb-selector-commutator-hminusone-floor-20260706.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-wkb-selector-force-full-balance-payment-split-20260706.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-c0-selector-force-balance-leg-bill-currency-audit-20260707.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-wkb-selector-force-nonlinear-stress-localization-split-20260706.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-wkb-selector-force-defect-carriage-moment-floor-20260706.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-c0-record-menu-detector-angle-gap-proof-pass-20260706.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-c0-physical-synthesis-shrink-map-20260707.md
completion_truth: >-
  Strict reduction only. The selector-force theorem needed by the Rellich route
  is not wholly open. The existing WKB selector-commutator note already proves
  the scale-normalized H^{-1} floor: a selected compact stress with nonzero
  affine trace-free moment forces a Leray selector force of size at least
  c |M_A|/(|A|D^{3/2}). Therefore the terminal Rellich source route no longer
  needs broad selected Rellich positivity as its first analytic step. It needs
  two smaller facts: identify the terminal selected carrier a_m(s) with a
  same-packet selected affine moment M_A(T_m(s)) on the order-locked full packet,
  and convert the resulting H^{-1} selector-force square into the retained
  bill currency by the full same-fluid balance legs: acceleration impulse,
  viscous dissipation, nonlinear kinetic/collar/Reynolds stress, or legal
  defect/certificate variation. The full-balance split prevents mixed
  cancellation, and the viscous leg is bill-compatible when it is the same
  selected carrier. The acceleration leg is not bill-compatible from current
  sources: a terminal pulse can have unit L1 selected service and unbounded
  L2-in-time force while using only bounded endpoint impulse. The nonlinear
  and defect legs are priced in kinetic/collar/Reynolds or certificate
  variation currencies but are not yet admitted as the retained
  B=dE_Field+dA_4B+dVisc bill on the same edge. Hence this note proves a
  sharper conditional route to epsilon_* > 0 and leaves
  SelectorForceHminusOneBillCurrency.A / SelectorForceBalanceLegBillCurrency.A
  open. No c_0 or MPP closure is claimed.
---

# Selector-force HminusOne floor to bill currency

## 1. Same terminal packet

The active terminal object is still the full selected strain--pressure-Hessian
packet

\[
D_Q=(S,\Pi_Q\nabla^2p).
\tag{SFB.1}
\]

The terminal selected record is represented by a nonnegative marginal

\[
a_m(s)\ge0,
\qquad
\int_{-1}^{0}a_m(s)\,ds\ge m_0>0.
\tag{SFB.2}
\]

The terminal pulse obstruction is

\[
a_\tau(s)=M\tau^{-1}{\bf 1}_{(-\tau,0]}(s).
\tag{SFB.3}
\]

To kill `(SFB.3)' by Rellich/selector force, it is enough to prove a same-carrier
square reserve:

\[
\int_{-1}^{0}a_m(s)^2\,ds
\le C\,B_m+o_m(1),
\tag{SFB.4}
\]

where \(B_m\) is the retained Field/four-body/viscous bill on the same packet,
after legal and routed exits are removed.

## 2. Installed force floor

The existing selector commutator note proves the analytic floor.  If a compact
selected stress \(T\) is supported in \(B_D(X)\) and

\[
M_A(T)=\int T:A\,dx,
\qquad A\in{\rm Sym}_0(3),
\tag{SFB.5}
\]

then

\[
\|\mathbb P\,\operatorname{div}T\|_{\dot H^{-1}}
\ge
c\,{|M_A(T)|\over |A|D^{3/2}}.
\tag{SFB.6}
\]

For a selected patch \(T=\chi R\) of a pressure-law null packet \(R=qI+S\) with
\(\operatorname{div}S=0\), this force is

\[
\mathbb P\,\operatorname{div}T
=
\mathbb P(S\nabla\chi).
\tag{SFB.7}
\]

Thus the qualitative selector-force step and its scale-normalized \(H^{-1}\)
version are installed.

## 3. Affine-moment identification

The first remaining input is carrier identification:

\[
\texttt{SelectedAffineMomentCarrierIdentification.A}.
\tag{SFB.8}
\]

It says that, after finite selector/collar/legal exits are removed, the terminal
selected carrier is an order-one affine-moment readout of the same retained
stress:

\[
a_m(s)
\le
C\,{|M_A(T_m(s))|\over |A|D^{3/2}}+Legal_m(s)+Stop_m(s).
\tag{SFB.9}
\]

With `(SFB.6)' this gives the pointwise force control

\[
a_m(s)
\le
C\|\mathbb P\,\operatorname{div}T_m(s)\|_{\dot H^{-1}}
+Legal_m(s)+Stop_m(s).
\tag{SFB.10}
\]

Therefore

\[
\int a_m(s)^2\,ds
\le
C\int
\|\mathbb P\,\operatorname{div}T_m(s)\|_{\dot H^{-1}}^2\,ds
+Legal_m+Stop_m.
\tag{SFB.11}
\]

So the Rellich selector-force lower bound has a smaller exact analytic form:

\[
\texttt{SelectedRellichSelectorForceLowerBound.A}
\leadsto
\texttt{SelectedAffineMomentCarrierIdentification.A}
+
\texttt{SelectorForceHminusOneBillCurrency.A}.
\tag{SFB.12}
\]

## 4. Bill conversion is the remaining step

The required bill conversion is:

\[
\texttt{SelectorForceHminusOneBillCurrency.A}:
\quad
\int
\|\mathbb P\,\operatorname{div}T_m(s)\|_{\dot H^{-1}}^2\,ds
\le
C\,B_m+Legal_m+Stop_m+RouteOut_m+o_m(1).
\tag{SFB.13}
\]

The full-balance split says the selector force cannot disappear by being spread
over many equations.  Pairing the projected same-fluid balance with the
localized affine test yields

\[
M_A(T)
=
C_{\rm acc}+C_{\rm visc}+C_{\rm nl}+C_{\rm def}.
\tag{SFB.14}
\]

Therefore at least one of the four legs carries a fixed fraction of the selected
moment, pointwise or in rectified time integral.  The legs are:

\[
\begin{array}{ll}
C_{\rm acc}: & \text{endpoint impulse / frame variation},\\[1mm]
C_{\rm visc}: & \text{viscous }H^{-1}\text{-to-dissipation floor},\\[1mm]
C_{\rm nl}: & \text{interior kinetic stress, collar stress, or Reynolds defect},\\[1mm]
C_{\rm def}: & \text{defect moment, trace ballast, signed variation, or certificate}.
\end{array}
\tag{SFB.15}
\]

This removes mixed cancellation as a free escape.  It does not yet put every
leg into the same retained \(B\)-currency.  The remaining theorem is:

\[
\texttt{SelectorForceBalanceLegBillCurrency.A}.
\tag{SFB.16}
\]

It must prove that whichever leg carries the fixed fraction is paid by
\(dE_{N,h}^{Field}+dA_{4B,N}+dVisc_{N,h}\), or routes out before readout.

## 5. Conditional epsilon extraction

Assume `(SFB.8)' and `(SFB.13)'.  Then `(SFB.11)' gives `(SFB.4)', so the
terminal pulse `(SFB.3)' is impossible after legal and routed exits are removed.
This supplies the terminal branch of `SameEdgeTerminalTailUIBillCurrency.A`.

The already checked finite WLF mismatch reductions remove the nonterminal
branches.  Hence

\[
\texttt{SelectedAffineMomentCarrierIdentification.A}
+
\texttt{SelectorForceHminusOneBillCurrency.A}
\Longrightarrow
\texttt{ParentOwnedPositiveRecordBillCurrency.A}.
\tag{SFB.17}
\]

Consequently

\[
R(W)\le C B(W),
\qquad
\varepsilon_*\ge C^{-1}>0,
\qquad
c_0=2\varepsilon_*>0.
\tag{SFB.18}
\]

## 6. Failed direct proof status

The direct proof stops at `(SFB.16)'.  Existing sources prove:

\[
\text{selected affine moment}
\Longrightarrow
\dot H^{-1}\text{ selector-force floor},
\tag{SFB.19}
\]

and

\[
\text{selector force cancelled in full balance}
\Longrightarrow
\text{one acceleration/viscous/nonlinear/defect leg carries the moment}.
\tag{SFB.20}
\]

They do not prove the uniform conversion of the nonviscous legs into the
retained Field/four-body/viscous bill on the same parent edge.  The balance-leg
audit shows the sharp acceleration countercheck:

\[
a_\tau(s)=\tau^{-1}{\bf 1}_{(-\tau,0]}
\quad\hbox{has}\quad
\int a_\tau=1,\qquad
\int a_\tau^2=\tau^{-1}\to\infty,
\tag{SFB.21}
\]

while \(a_\tau=dI_\tau/ds\) for an endpoint impulse coordinate with only
order-one endpoint displacement.  Thus endpoint impulse can carry terminal
selected service without giving `(SFB.13)' unless endpoint/frame variation is
charged or routed out.

That is now the exact open burden below the Rellich route.

So the next proof-bearing target is not broad Rellich positivity.  It is the
same-edge bill-currency conversion of the installed \(H^{-1}\) selector-force
floor.
