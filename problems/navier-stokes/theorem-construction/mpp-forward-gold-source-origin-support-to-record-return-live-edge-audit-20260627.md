---
theorem_id: forward-gold-source-origin-support-to-record-return-live-edge-audit-20260627
status: source-origin-support-closed-record-return-open
created: 2026-06-27
problem: navier-stokes
route: forward-gold same-material selected-density / critical fresh source tent Carleson
audits_user_idea:
  - silent interior source direct attack
  - source-origin normal form
  - retained selected pressure-Hodge carrier fork
current_live_edge:
  - StoppedPrimitivePLSRecordReturnDescent.A
  - StoppedPrimitivePLSSignedScalePotentialLift.A
  - StoppedPotentialRecordAverageBound.A
  - StoppedNegativeScaleReturnCharge.A
source_surfaces:
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-silent-kernel-source-origin-normal-form-20260627.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-source-origin-normal-form-support-current-live-edge-20260627.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-stopped-primitive-record-return-bv-descent-20260627.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-der-aqk-moving-lowhigh-record-return-synthesis-20260627.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-fresh-paired-carrier-der-aqk-potential-average-boundary-20260627.md
  - problems/navier-stokes/theorem-construction/signed-lifted-band-scale-descent-identity.md
---

# Source-origin support to record-return live edge

The silent interior source attack is the correct local move.  A parent Schur
trace cannot see every pressure-Hodge source of the form

```math
f=L_Aw,\qquad
w|_{\partial A}=0,\qquad
\partial_{\nu_A}w|_{\partial A}=0.
\tag{1}
```

So the useful theorem is the source-origin normal form:

```math
\ker(\mathsf S_{\rm parent})
\cap
\{\text{retained selected pressure-Hodge carriers}\}
\subset
\{\text{constraint/gauge material}\}
\cup
\{\text{top-strain/exchange charged material}\}.
\tag{2}
```

Equivalently, an invisible child is either not selected, or it is selected only
by spending the same-material strain/exchange packet.  This prevents the wrong
Schur-only theorem from being used:

```math
\text{boundary-flat source}
\not\Longrightarrow
\text{boundary-visible source}.
\tag{3}
```

The repo state now includes `(2)` as support.  It closes the local silent-source
escape and the selected-scale lower edge, but it does not prove the root/tent
sum for fresh selected sources.  The half-tail obstruction remains after raw
Bessel control:

```math
\|F_\ell\|_{\mathcal H_{\rm raw}}^2={2^{-\ell}\over \ell+1},
\qquad
\sum_\ell\|F_\ell\|_{\mathcal H_{\rm raw}}^2<\infty,
\qquad
\sum_\ell2^\ell\|F_\ell\|_{\mathcal H_{\rm raw}}^2=\infty.
\tag{4}
```

After source-origin support, paid selector/reselection, exchange, entrance,
legal, recirculation, and fixed-carrier removals, the live proof line is the
record/return descent.  It must start before positive projection.  The needed
signed lift is:

```math
Y=\partial_\sigma\Psi+S^{spill}+E,
\qquad
Y_+=Y+Y_-.
\tag{5}
```

Here \(Y_+\) is the selected positive stopped primitive PLS source, \(Y\) is the
signed scale-descent density, and \(Y_-\) is the negative return needed to reset
the same scale potential.

The scalar descent after `(5)` is exact:

```math
V_+(\Psi;I_M)
=
\Psi(t_M)-\Psi(t_0)+V_-(\Psi;I_M),
\tag{6}
```

so repeated selected positive births split into record births and return births:

```math
\sum_{m\le M} a_m
\lesssim
\operatorname{Rec}_M(\Psi)
+V_-^{return}(\Psi;I_M)
+R_M^{spill/legal}.
\tag{7}
```

The audited state is that `(5)` and the record/return bounds are still open
PDE inputs, not installed conclusions.

First, the signed lift is open:

```text
StoppedPrimitivePLSSignedScalePotentialLift.A
```

The existing signed lifted-band note proves the right proof order and channel
shape, but it explicitly leaves cocycle triviality and signed
boundary/remainder control unproved.

Second, the potential-average bound is open.  The raw representative average is

```math
\mathcal P_{\rm avg}^{fresh}(t)
:=
{1\over |J|}\int_J\Psi^{fresh}(\sigma,t)\,d\sigma,
\tag{8}
```

and the desired bound is:

```math
\int_0^{T^*}H_w(t)\|\mathcal P_{\rm avg}^{fresh}(t)\|_{L_x^2}^2\,dt
\le
{\eta\nu\over C}\int_0^{T^*}D_N(t)\,dt
+C_*2^{-2\delta N}
+R_{legal}.
\tag{9}
```

The invariant object should be the endpoint-corrected affine defect, not a raw
choice of potential representative, because \(\Psi\mapsto\Psi+C(t,x)\) changes
the bare average.

Third, the negative return charge is open and is stronger than the already
closed recirculation branch:

```math
\int_0^T
H_w(t)\|\mathcal C_\theta[Y_-](t)\|_{L_x^2}^2\,dt
\le
C_N(u_0)\mathcal R(P)+R_{\rm legal}(P).
\tag{10}
```

Recirculation is one allowable return currency, but it does not exhaust the
same-scale potential reset required after selected positive production.

The combined non-future-tail theorem is therefore:

```math
\int_0^T H_w(t)
\left\|
{1\over |J|}\int_J\Psi(\sigma,t)\,d\sigma
\right\|_{L_x^2}^2dt
+
\int_0^T H_w(t)\|\mathcal C_\theta[Y_-](t)\|_{L_x^2}^2dt
\le
C_N(u_0)\mathcal R(P)+R_{legal}(P),
\tag{11}
```

together with the polar-compatible signed lift `(5)`.

## Live conclusion

The user's source-origin normal form is the correct way to handle silent
interior sources:

```math
\text{invisible source}
\Longrightarrow
\text{unselected constraint material or charged same-material exchange}.
\tag{12}
```

That support is not the remaining root producer.  The current live Gold edge is
the record/return theorem `(5)` and `(11)`, with three exact open parts:

```text
StoppedPrimitivePLSSignedScalePotentialLift.A
StoppedPotentialRecordAverageBound.A
StoppedNegativeScaleReturnCharge.A
```

Proving those three lines gives the critical fresh-source tent Carleson
estimate after the source-origin support removals, and then the already-verified
parent-drop-to-\(H^s\) relay applies.
