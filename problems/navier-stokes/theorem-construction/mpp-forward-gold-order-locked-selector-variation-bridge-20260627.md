---
theorem_id: forward-gold-order-locked-selector-variation-bridge-20260627
status: selector-variation-reduced-to-order-lock-gap-visible-variation-and-body-defects
created: 2026-06-27
problem: navier-stokes
route: forward-gold same-material full-clock / selected first-ratio gain
attacks_hinge:
  - MovingSelectorVariationCarleson.A
  - SelectorTieGapOrDriftCharge.A
  - StochasticExponentialSelectedDensityHilbertBMO.A
source_surfaces:
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-moving-selector-variation-carleson-direct-test-20260627.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-selector-frozen-hilbert-lift-countertest-20260627.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-selector-compactness-collar-stabilization-solution-20260621.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-full-participation-order-lock-direct-attempt-20260622.md
  - problems/navier-stokes/theorem-construction/mpp-four-body-native-selected-activity-identification-route-20260621.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-bodyii-bodyiii-retained-participation-packet-criterion-20260621.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-selected-carrier-tightness-decomposition-20260621.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-selected-carrier-heredity-finite-menu-reduction-20260621.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-material-selector-kinematic-realization-direct-test-20260622.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-endpoint-residue-material-selector-density-refinement-20260622.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-selected-positive-carrier-selector-complexity-boundary-20260621.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-selected-density-goodlambda-martingale-test-20260626.md
---

# Order-locked selector variation bridge

## 1. New reduction

The moving-selector direct test already closes two cases: finite-menu heredity
gives a fixed carrier on an infinite retained subtail, and an already-summable
label-defect ledger gives the Carleson estimate.  This note sharpens the third
question: what structure would actually produce or type that label-defect
ledger before the unpaid continuum branch collapses back to the terminal
selected-density atom.

The moving-selector term from the selector-frozen Hilbert lift should not be
treated as a free scalar label derivative.  The checked notes give the sharper
object:

```math
\Delta_Q^{\rm lab}\log\rho_{\rm sel}
```

is controlled only after the selected density is admitted into the same full
participation packet, or after the selector/collar motion is made visible as a
declared defect.

The correct bridge is therefore:

```text
full-packet order-lock
+
finite/compact visible selector-collar variation
+
retained Body-II/III three-measure packet
=> moving-selector contribution is charged or zero on the retained tail.
```

This is not a replacement for the moving-selector direct test.  It is the
candidate production mechanism for the paid-defect branch of that test.

## 2. Stabilized selector branch

The selector compactness/collar note proves the usable finite/compact branch.
For selected data

```math
\mathfrak s_\sigma
=
(\chi_\sigma,\Phi_\sigma,\operatorname{sgn}_\sigma,\ell_\sigma,\Gamma_\sigma),
```

with visible variation

```math
\begin{aligned}
d\Lambda_{\rm sel}(\sigma)
:={}&
\|d_\sigma\chi_\sigma\|_{C^2}\,d\sigma
+\|d_\sigma\Phi_\sigma\|_{\mathcal T}\,d\sigma\\
&+dN_{\rm label}(\sigma)
+dN_{\rm sgn}(\sigma)
+d\Lambda_{\rm collar}(\sigma),
\end{aligned}
\tag{1}
```

the installed dichotomy is:

```math
\boxed{
\text{finite/compact selector graph + fixed collar topology}
\Longrightarrow
\text{same-carrier stabilization or visible legal/collar loss.}
}
\tag{2}
```

Thus, on a no-loss retained tail with vanishing selector-collar variation, the
selected carrier stabilizes.  Then

```math
\Delta_Q^{\rm lab}\log\rho_{\rm sel}=0
\tag{3}
```

on the stabilized subtail, and the fixed-carrier Hilbert lift is the only
remaining density-variation mechanism.

If `(1)` has positive or divergent variation, the branch is not hidden.  It is
part of the legal/selector/collar payment, not a free contribution to the Gold
endpoint measure.

## 3. Order-lock is the scalar admission test

For channel-first native selection, write

```math
n_m(s)=\langle N_m,\Phi_m\rangle
```

and put all same-packet partners into

```math
b_m(s)
=
\langle P_m+V_m+T_m+I_m+L_m+S_m,\Phi_m\rangle
-cD_m^\nu(s).
```

The full packet scalar is

```math
h_m(s)=n_m(s)+b_m(s).
\tag{4}
```

The order-lock note proves the exact gap between channel-first positive
selection and full-packet positive selection:

```math
\Delta_m^{\rm ol}(s)
=
\left([n_m(s)]_+-[h_m(s)]_+\right)_+
=
\min\{[n_m(s)]_+,[-b_m(s)]_+\}.
\tag{5}
```

So the moving selector cannot be treated as just a label metric.  Its dangerous
part is the same-packet overlap where a positive channel is selected before its
negative full-packet partner is retained.

The consumer theorem is exact:

```math
\boxed{
\Delta_m^{\rm ol}\in L_s^q,\ q>1,
\text{ or an equivalent Hardy/Orlicz terminal modulus}
\Longrightarrow
\text{channel-first selection is admitted into the full packet.}
}
\tag{6}
```

Without `(6)`, the countermodel

```math
n_m(s)=a\tau_m^{-1}{\bf 1}_{(-\tau_m,0]}(s),
\qquad
b_m(s)=-n_m(s),
\qquad
\tau_m\downarrow0
\tag{7}
```

has \(h_m=0\) while \([n_m]_+\) is a terminal pulse.  This is the sharp reason
arbitrary selector motion is still false.

## 4. Body-II to Body-III packet custody

The retained interface theorem says that the Body-II output is not a scalar
alone.  It is the three-measure packet

```math
(\mu^A,\mu^N,\mu^J),
\qquad
d\mu^J=d\mu^A-d\mu^N.
\tag{8}
```

The interface is closed only when the missing negative partner, escaped
positive carrier, and compactness/interior mismatch are retained or charged:

```math
K_{Q\to C}^+
\le
K_{\rm sel}
+K_{C,A}^+
+K_{C,N}^+
+K_{C,J}^+
+R_{\rm legal}.
\tag{9}
```

The moving-selector term belongs inside this same accounting.  A selector
switch that keeps positive activity while losing the negative partner is
\(K_{\rm sel}\).  A selector switch that loses the compact carrier is
\(K_C^+\).  A selector switch that changes the density identification is the
interior Body-III mismatch component of \(K_C^+\).

Thus the same-packet estimate for moving selector contribution has the form

```math
\boxed{
\sum_{Q\subseteq Q_0}
|\Delta_Q^{\rm lab}\log\rho_{\rm sel}|^2\,\mathcal R(Q)
\le
C\,\mathcal E_{\rm ol}(Q_0)
+C\,\Lambda_{\rm sel}(Q_0)
+C\,(K_{\rm sel}+K_C^++R_{\rm legal})(Q_0),
}
\tag{10}
```

where \(\mathcal E_{\rm ol}\) is the endpoint or tree version of the
order-lock gap `(5)`.  Formula `(10)` is the correct replacement for a naked
selector-variation bound.

## 5. Material/order-locked selector pass case

The material-selector note gives the best current production route for making
the continuous selector motion harmless.  If the selector data are order-locked
finite-dimensional functions of the local finite jet and material/cotangent
transport,

```math
\mathfrak s_m
=
(\chi_m,\Phi_m,\Gamma_m)
=
\mathcal S(\mathcal J_K^{loc},\Theta_m),
\tag{11}
```

with

```math
\|\partial_s\mathfrak s_m\|_{\mathfrak S}
\le
C\left(1+\|\mathcal J_K^{loc}\|_{H_y^\sigma}^{d}+|\dot\Theta_m|\right),
\tag{12}
```

then `FiniteEndpointJetTemporalModulus.A` gives

```math
\Lambda_{{\rm sel},m}^{cont}((-\theta,0])
\le C\theta.
\tag{13}
```

This is an actual pass case: continuous material selector motion is endpoint
uniformly integrable.  The unproved production line is that the retained Gold
selector is genuinely generated by `(11)`, and that heat-scale return / tie-gap
or drift charge is present when the selected label changes.

## 6. Why compactness alone is insufficient

Finite-menu heredity is already proved:

```math
\text{finite carrier menu + nonzero retained selected quantity}
\Longrightarrow
\text{fixed carrier on an infinite retained tail}.
\tag{14}
```

The tightness decomposition also proves that label escape is one exact escape
mode of the nonnegative selected tower carrier.

But compactness alone does not produce finite complexity or an integrable label
modulus.  The moving-spike normal form remains:

```math
s(a,t)=\sum_n A_n\phi_n(a)\psi_n(t),
\tag{15}
```

with disjoint label and terminal-time supports, so every fixed finite selector
misses all but finitely many spikes while the moving supremal selector keeps
finding them.  The positive-carrier selector-complexity note gives the PDE-side
version: the sign selector can oscillate at the source frequency and carry
fixed positive mass while every fixed \(H^1\) readout vanishes.

So the only noncircular choices are:

```math
\boxed{
\text{finite/compact selector stabilization with visible variation,}
}
\tag{16}
```

```math
\boxed{
\text{material/order-locked selector generation plus heat-scale return,}
}
\tag{17}
```

or

```math
\boxed{
\text{order-lock gap / partner deficit paid inside the retained full packet.}
}
\tag{18}
```

## 7. Link to stochastic-exponential Hilbert BMO

Once `(10)` is installed, the selected log-density ratio can be written as

```math
\log r_Q
=
\ell_Q(\Delta_Q Z)
-\psi_Q
+e_Q,
\tag{19}
```

where \(e_Q\) now contains only paid terms:

```math
\sum_{Q\subseteq Q_0}|e_Q|^2\mathcal R(Q)
\le
C\,\mathcal E_{\rm ol}(Q_0)
+C\,\Lambda_{\rm sel}(Q_0)
+C\,(K_{\rm sel}+K_C^++R_{\rm legal})(Q_0).
\tag{20}
```

Together with the fixed-carrier Hilbert square function,

```math
\sup_P
{1\over\mathcal R(P)}
\sum_{Q\subseteq P}
\|\Delta_Q Z\|_{\mathcal H_{\rm lift}}^2\mathcal R(Q)
\le
C_N(u_0),
\tag{21}
```

and normalized positive martingale ratios, this is the noncircular input for
stochastic-exponential martingale BMO.  The required ratio structure is

```math
r_Q={f_Q\over f_{\operatorname{par}(Q)}},
\qquad
\mathbb E(r_Q\mid \operatorname{par}(Q))=1,
\tag{22}
```

with \(\psi_Q\) the predictable exponential normalizer and with uniformly
controlled jumps or conditional exponential moments.  Then martingale
John--Nirenberg/Kazamaki gives the usable reverse-Holder estimate

```math
\int_P f^{1+\varepsilon}\,d\mathcal R
\le
C_N(u_0)\mathcal R(P),
\tag{23}
```

which is enough for the strict selected good-lambda half-tail.

This is deliberately weaker than demanding the literal density-increment square
function at the start.  Bare log-BMO gives only an unweighted bound on
\(\Delta\log\rho\), which lacks the martingale normalizer and exponential
moment control.  A density-weighted square function would require terms like

```math
\sum_{Q\subseteq P}
f_{\operatorname{par}(Q)}^2
\|\Delta_QZ\|_{\mathcal H_{\rm lift}}^2
\mathcal R(Q),
\tag{24}
```

which is stronger than the current Hilbert lift and risks assuming the selected
density gain being proved.  The clean noncircular target is the compensated
stochastic exponential theorem whose output is selected-density
\(RH_{1+\varepsilon}\).

## 8. Relation to the moving-selector direct test

The direct test leaves exactly three branches:

```math
\boxed{
\begin{aligned}
&\text{finite menu / compact heredity}
\Rightarrow
\text{fixed carrier;}\\
&\text{paid label defect}
\Rightarrow
\text{Carleson label variation;}\\
&\text{unpaid continuum label motion}
\Rightarrow
\text{terminal selected-density atom / critical half-tail.}
\end{aligned}
}
\tag{25}
```

This note belongs to the second line of `(25)`.  It says that the label defect
is paid only through the full-packet order-lock gap, visible selector-collar
variation, retained three-measure packet custody, or named Body defects.  If
none of those mechanisms is present, the branch has not been paid; it remains
the third line of `(25)`.

## 9. Result

This note does not close Gold.  It sharpens the current hinge.

The previous moving-selector theorem was too abstract when stated as a naked
label derivative.  The exact paid-defect bridge is:

```text
OrderLockedSelectorVariationBridge.A:
  moving selected-density label increments are controlled only through
  full-packet order-lock gap, visible selector-collar variation, and retained
  Body-II/III defects; on the finite/compact lossless stabilized tail the label
  increment is zero.
```

The next production theorem is:

```text
FullPacketOrderLockOrSelectorVariationPayment.A
```

It must prove one of the following on the retained Gold tail:

1. terminal selection is full-packet-first;
2. the order-lock gap \(\Delta^{\rm ol}\) has a super-\(L^1\), Hardy, Orlicz,
   or tree-Carleson modulus;
3. the selector is generated by the same local material/cotangent tower with
   heat-scale return and tie-gap/drift charge;
4. the failure is charged as \(K_{\rm sel}\), \(K_C^+\), or legal residual.

After that production theorem, the fixed-carrier Hilbert lift and the
stochastic-exponential martingale reverse-Holder theorem become a coherent
Gold route rather than a selector-blind scalar estimate.

The global nonduplicate target remains:

```text
StochasticExponentialSelectedDensityHilbertBMO.A
```

on a fixed retained carrier, together with finite/compact heredity or this
order-locked selector-variation payment.  Without that payment, moving-selector
variation is not a new route; it is the terminal selected-density atom /
critical half-tail branch already isolated by the direct test.
