---
theorem_id: forward-gold-fresh-paired-carrier-proof-mechanism-audit-20260627
status: proof-mechanism-audit-paired-carrier-remains-open
created: 2026-06-27
problem: navier-stokes
route: forward-gold same-material selected-density / fresh source weighted paired carrier
logical_landing_node: GlobalSamePacketFullClockFromOriginalData.A
audits_hinge:
  - FreshSourceWeightedPairedCarrierBound.A
  - SameMaterialFactorizedTwoScaleFreshSourceCarleson.A
  - SameMaterialDERplusAQKFreshSourceRoute.A
source_surfaces:
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-fresh-paired-carrier-subagent-audit-20260627.md
  - problems/navier-stokes/theorem-construction/paired-carrier-inequality.md
  - problems/navier-stokes/theorem-construction/volterra-scale-memory-formalization-note.md
  - problems/navier-stokes/theorem-construction/lower-triangular-scale-memory-formalization-note.md
  - problems/navier-stokes/theorem-construction/persistent-weighted-quotient-kill-routes-audit.md
  - problems/navier-stokes/theorem-construction/affine-quotient-kill-from-signed-scale-descent-audit.md
  - problems/navier-stokes/theorem-construction/affine-survivor-stripped-down-note.md
  - problems/navier-stokes/theorem-construction/mpp-retained-affine-quotient-second-order-direct-attempt-20260609.md
  - problems/navier-stokes/theorem-construction/mpp-retained-b1-signed-to-affine-second-order-transfer-direct-attempt-20260609.md
  - problems/navier-stokes/theorem-construction/lifted-packet-three-piece-closure-program.md
  - problems/navier-stokes/theorem-construction/far-corona-cts-lpas-execution-program.md
  - problems/navier-stokes/theorem-construction/same-scale-coefficient-kill-into-weighted-carrier-note.md
---

# Fresh paired-carrier proof mechanism audit

The current hinge remains

```text
FreshSourceWeightedPairedCarrierBound.A
```

The proof-side audit separates its two named mechanisms and records exactly
where each one stops.

## 1. The paired carrier itself

The exact carrier is

```math
\int_0^{T^*}
\sum_{k>N+M}
2^k a_k^{fresh}(t)\mathcal D_k^{\uparrow,fresh}(t)\,dt.
\tag{1}
```

The clean Young package in `paired-carrier-inequality.md` says that `(1)` would
follow from the stronger square theorem

```math
\int_0^T\sum_{k>N+M}
\left(
2^{2k}\|\Delta_k u(t)\|_2^2
+
2^k(\mathcal D_k^\uparrow(t))^2
\right)dt
\le C_*2^{-2\delta N}.
\tag{2}
```

But `(2)` is stronger than the actual route and is not proved.  It is a clean
sufficient theorem, not the closure.

## 2. Factorized two-scale route

The far-corona surfaces say that the relevant large-gap object is the coupled
two-scale density

```math
\mathcal A_{\ell,r}(t)
=
\chi_{mid}(\log\ell)
\int_{\mathbb R^3}
\widetilde\Sigma_r(x,t)\tau_\ell^{H^1}[u](x,t)\,dx,
\qquad r\ge c_1\ell.
\tag{3}
```

The exact sufficient factorized theorem is

```math
\mathcal A_{\ell,r}(t)\le U(\ell,t)V(r,t),
\tag{4}
```

with

```math
\int_0^T\int U(\ell,t)^2\,{d\ell\over\ell}\,dt
\lesssim
\int_0^T D_N(t)\,dt,
\tag{5}
```

and

```math
\int_0^T\int V(r,t)^2\,{dr\over r}\,dt
\lesssim
2^{-2\delta N}.
\tag{6}
```

The direct \(L^p\times L^{p'}\) factorization tests do not supply `(4)`-`(6)`.
They collapse to the finite-band endpoint factor already recorded in the
far-corona execution note.  Thus the factorized route remains available only
as a genuinely coupled same-material theorem, not as a better spatial Holder
split.

## 3. DER plus affine quotient route

The Volterra/lower-triangular notes give an exact weighted quotient
decomposition of the far-corona primitive.  In logarithmic scale,

```math
F(s,t)=(\mathcal V_\kappa \widetilde Z)(s,t),
\qquad
w(s,t)=a(e^s,t).
\tag{7}
```

The weighted projector \(P_w\) splits

```math
\mathcal V_\kappa\widetilde Z
=
(I-P_w)\mathcal V_\kappa\widetilde Z
+
P_w\mathcal V_\kappa\widetilde Z.
\tag{8}
```

The first term is exact in scale.  The second term is the persistent quotient.
The quotient is not the whole prefix: it is the affine scale moment

```math
A_\kappa M_0(t)+B_\kappa M_1(t),
\tag{9}
```

where

```math
M_0(t)=\int_J\widetilde Z(\sigma,t)\,d\sigma,
\qquad
M_1(t)=\int_J\sigma\,\widetilde Z(\sigma,t)\,d\sigma.
\tag{10}
```

So the operator-level route is really

```math
\text{DER}+\text{AQK}
\Longrightarrow
\text{FCTS}
\Longrightarrow
\text{far-corona barrier}.
\tag{11}
```

Here `DER` pays the exact-scale derivative part, and `AQK` kills the affine
quotient.

## 4. What the installed signed descent proves

The installed signed scale-descent identity gives only first-order exactness:

```math
Y(\sigma,t)=\partial_\sigma\Psi(\sigma,t)+S^{spill}(\sigma,t)+E(\sigma,t).
\tag{12}
```

Pairing against the affine quotient weight \(\theta_\kappa\) yields

```math
\int_J\theta_\kappa\,\partial_\sigma\Psi\,d\sigma
=
-\theta_\kappa(s_0)\Psi(s_0,t)
+
{1\over |I|}\int_J\Psi(\sigma,t)\,d\sigma.
\tag{13}
```

Thus first-order exactness removes only the constant part of the quotient.
The scale average of the potential remains.  The installed signed descent is
one scale derivative short of killing the affine quotient.

The missing content is one of:

```math
Y=\partial_\sigma^2G+R,
\tag{14}
```

or

```math
\int_0^T
H_w(t)\left\|
{1\over |I|}\int_J\Psi(\sigma,t)\,d\sigma
\right\|_{L_x^2}^2dt
\le
{\eta\nu\over C}\int_0^TD_N(t)\,dt+C_*2^{-2\delta N},
\tag{15}
```

or a further descent

```math
\Psi=\partial_\sigma G+\widetilde R.
\tag{16}
```

On the positive stress carrier, the affine quotient shrinks further.  Since
\(\widetilde Z(\sigma,t,x)\ge0\) and the affine kernel is nonnegative on
\(J=[\alpha,\beta]\),

```math
c_F(t,x)
=
\int_J{\beta-\sigma\over |I|}\widetilde Z(\sigma,t,x)\,d\sigma
\le
{|J|\over |I|}M_0(t,x),
\tag{17}
```

where

```math
M_0(t)=\int_J\widetilde Z(\sigma,t)\,d\sigma.
\tag{18}
```

Thus `AQK` would follow from the weighted endpoint mass estimate

```math
\int_0^T H_w(t)\|M_0(t)\|_{L_x^2}^2\,dt
\le
{\eta\nu\over C}\int_0^TD_N(t)\,dt+C_*2^{-2\delta N}.
\tag{19}
```

The retained affine-quotient attempts show that `(19)` is not installed.  Its
exact scalar route is the potential-average kill `(15)` plus signed-to-positive
transfer, or a direct second-order exactness theorem for the positive stress
source \(\widetilde Z\).

## 5. Same-scale side is not the large-gap blocker

The upper-boundary and moving-spill pieces are same-scale finite-width objects.
The coefficient-bearing term on that side is already included in the installed
weighted carrier

```math
\widetilde\Lambda_N^\sharp(t)E_N(t).
\tag{20}
```

So the same-scale side is not the current large-gap theorem.  The large-gap
burden is still the far-corona paired carrier, equivalently the coupled
two-scale density or its DER plus affine-quotient decomposition.

## Current proof boundary

The paired-carrier hinge is not closed by the installed mechanisms.

The two precise ways forward are:

```text
SameMaterialFactorizedTwoScaleFreshSourceCarleson.A
```

as a genuinely coupled two-scale theorem on \(\mathcal A_{\ell,r}^{fresh}\),
or

```text
SameMaterialDERplusAQKFreshSourceRoute.A
```

meaning a derivative-exact residual bound plus an affine quotient kill for the
fresh source scale primitive.

The previous DER endpoint-pressure wording is demoted by this audit.  The
second component is not a generic endpoint pressure theorem; it is the affine
quotient kill produced by the weighted Volterra readout.

The affine quotient kill itself has now been sharpened to the weighted
positive-carrier endpoint mass `(19)`, or equivalently to potential-average
kill plus signed-to-positive transfer / direct second-order exactness.
