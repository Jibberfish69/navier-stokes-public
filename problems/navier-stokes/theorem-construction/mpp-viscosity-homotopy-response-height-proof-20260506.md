# MPP Viscosity-Homotopy Response Height Proof Run

Date: 2026-05-06

Status: theorem proof run; lower response identities proved; no-fold theorem
not discharged.

Purpose: expand the next targets from
`mpp-asap-closure-better-ideas-20260506.md` and push the proposed
viscosity-homotopy route until the exact proof wall is visible.

## 0. Route Claim Being Tested

The governing route remains the corrected claim:

```math
Euler\ smooth
\Longrightarrow
NS_\nu\ smooth
\qquad
(\forall \nu>0).
```

Euler nonsmoothness is a separate scenario-family.  The strategic proof target
is:

```math
\text{all NS nonsmoothness is forced into the }\nu\to0
\text{ boundary or defect-boundary family outside fixed-positive-viscosity NS membership}.
```

The new theorem route tests this through the viscosity parameter.

For a fixed smooth divergence-free datum and a time window `[0,T]`, define:

```math
\mathcal G_T
:=
\{\nu>0:\ u^\nu\text{ is a smooth NS-class member on }[0,T]\}.
```

The no-fold theorem is:

```math
\boxed{
ViscosityNoFold.A:
\quad
\partial\mathcal G_T\cap(0,\infty)=\varnothing.
}
```

The one-sided anchor is a separate inviscid-limit input, not part of the
topological no-fold argument:

```math
(0,\nu_0]\subset \mathcal G_T
```

It may be used only under an explicit hypothesis such as:

```text
InviscidLimitAnchor.A:
if the Euler solution from the same datum satisfies
sup_{0<=t<=T} ||u^0(t)||_{H^{s+2}} <= M, s>5/2,
then there is nu_0=nu_0(M,T,s)>0 such that for every 0<nu<=nu_0
the Navier-Stokes solution exists smoothly on [0,T] and belongs to G_T.
```

If this anchor is supplied and `ViscosityNoFold.A` is also proved, then
`\mathcal G_T` is a nonempty open-and-closed subset of the connected interval
`(0,\infty)`, hence:

```math
\mathcal G_T=(0,\infty).
```

This proves the corrected claim on that Euler-smooth scenario interval.

So the real mathematical burden is not the topology.  The burden is the
positive-viscosity no-fold estimate.

## 1. Expanded Target List

The target list after expanding the ASAP note is:

```text
1. LocalViscositySmoothDependence.A
2. ViscosityResponseEquation.A
3. SignedShellResponseIdentity.A
4. SignedResponseHeightControl.A
5. ParametricHeightNoFold.A
6. ViscosityNoFold.A
```

The first three are proved below on compact viscosity intervals where a smooth
solution family already exists.  The fourth is reduced to one exact source-wall
derivative theorem.  The last two remain conditional.

The key correction is:

```text
ResponseHeightControl.A is signed.
```

It is not enough to estimate the size of

```math
z^\nu:=\partial_\nu u^\nu.
```

An unsigned `z` energy bound only says the solution map is locally smooth in
`\nu`.  The no-fold route needs the positive part of the viscosity derivative
of the donor height to be charged.  In other words, the proof must control:

```math
\left[\partial_\nu H_N^\nu\right]_+,
```

not merely `H_N(z^\nu)`.

## 2. Local Smooth Dependence

Work on the torus `T^3` with smooth zero-mean divergence-free data.  Fix
`s>5/2` and a compact viscosity interval

```math
J=[\nu_-,\nu_+]\Subset(0,\infty).
```

Assume:

```math
\sup_{\nu\in J}\sup_{0\le t\le T}\|u^\nu(t)\|_{H^{s+2}}<\infty.
\tag{2.1}
```

Then the map

```math
\nu\mapsto u^\nu
```

is `C^1` from `J` into `C([0,T];H^s)`, and

```math
z^\nu:=\partial_\nu u^\nu
```

solves:

```math
\partial_t z^\nu
+\mathbb P(u^\nu\cdot\nabla z^\nu)
+\mathbb P(z^\nu\cdot\nabla u^\nu)
=
\nu\Delta z^\nu+\Delta u^\nu,
\qquad
\nabla\cdot z^\nu=0,
\qquad
z^\nu(0)=0.
\tag{2.2}
```

Here `\mathbb P` is the Leray projector.

### Proof

Let

```math
r_h=\frac{u^{\nu+h}-u^\nu}{h}.
```

Subtract the projected Navier-Stokes equations at viscosities `nu+h` and
`nu`, divide by `h`, and obtain:

```math
\partial_t r_h
+\mathbb P(u^\nu\cdot\nabla r_h)
+\mathbb P(r_h\cdot\nabla u^\nu)
+h\mathbb P(r_h\cdot\nabla r_h)
=
\nu\Delta r_h+\Delta u^{\nu+h}.
```

The proof uses the following exact energy consequence of `(2.1)`: for
`\|u^\mu\|_{C([0,T];H^{s+2})}\le M_s` on `\mu\in[\nu-\delta,\nu+\delta]`,
there is `C=C(s,T,\nu,M_s)` such that every sufficiently small `h,h'` satisfies

```math
\sup_{0\le t\le T}\|r_h(t)-r_{h'}(t)\|_{H^s}^2
+\nu\int_0^T\|\nabla(r_h-r_{h'})(t)\|_{H^s}^2\,dt
\le C|h-h'|^2.
\tag{2.1a}
```

This is obtained by subtracting the two difference-quotient equations, pairing
with `\Lambda^{2s}(r_h-r_{h'})`, using the `H^s` product estimate for
`s>5/2`, and absorbing the viscous term.  Thus `r_h` is Cauchy in
`C([0,T];H^s)`.  Passing to the limit removes the quadratic remainder
`h r_h\cdot\nabla r_h` and gives `(2.2)`.  Uniqueness for the linear parabolic
equation gives the full derivative.

This proves `LocalViscositySmoothDependence.A` and
`ViscosityResponseEquation.A` under the classical smooth-family hypothesis.

## 3. Unsigned Response Energy Is Not Enough

Taking the `L^2` inner product of `(2.2)` with `z=z^\nu` gives:

```math
\frac12\frac{d}{dt}\|z\|_2^2
+\nu\|\nabla z\|_2^2
=
-\int (z\cdot\nabla u)\cdot z\,dx
+\int \Delta u\cdot z\,dx.
```

Thus:

```math
\frac{d}{dt}\|z\|_2^2
+\nu\|\nabla z\|_2^2
\le
C\|\nabla u\|_{L^\infty}\|z\|_2^2
+C\nu^{-1}\|\nabla u\|_2^2.
\tag{3.1}
```

This is rigorous but insufficient for no-fold.  It controls the size of the
response field.  It does not show that increasing viscosity decreases the
high-frequency donor height.

The forcing term `\Delta u` is exactly where the sign is lost by Cauchy-Young.
For the linear heat equation the same term is favorable:

```math
\partial_\nu \|P_k e^{\nu t\Delta}u_0\|_2^2
=
-2t\|\nabla P_k e^{\nu t\Delta}u_0\|_2^2
\le0.
```

Therefore the useful object is not `\|z\|_2^2`.  It is the signed shell
response:

```math
R_k^\nu(t):=\partial_\nu E_k^\nu(t)
=2\langle P_k u^\nu(t),P_k z^\nu(t)\rangle,
```

where:

```math
E_k^\nu(t):=\|P_k u^\nu(t)\|_2^2.
```

## 4. Signed Shell Response Identity

Let `P_k` be a Littlewood-Paley shell projector.  Write:

```math
u_k=P_k u,
\qquad
z_k=P_k z,
\qquad
E_k=\|u_k\|_2^2,
\qquad
D_k=\|\nabla u_k\|_2^2.
```

The shell energy balance is:

```math
\frac12\frac{d}{dt}E_k+\nu D_k
=
N_k+L_k,
\tag{4.1}
```

where:

```math
N_k:=-\langle P_k\mathbb P(u\cdot\nabla u),u_k\rangle
```

is the native nonlinear shell flux and `L_k` denotes legal pressure, cutoff,
commutator, and off-packet terms in the selected packet ledger.

Differentiate `(4.1)` with respect to `nu`.  Since

```math
R_k=\partial_\nu E_k=2\langle u_k,z_k\rangle,
\qquad
\partial_\nu D_k=2\langle \nabla u_k,\nabla z_k\rangle,
```

we obtain the exact identity:

```math
\boxed{
\frac12\frac{d}{dt}R_k
+D_k
+\nu\,\partial_\nu D_k
=
\partial_\nu N_k+\partial_\nu L_k.
}
\tag{4.2}
```

This is the first genuinely useful response law.  The term `D_k` has a fixed
negative sign after moving it to the right side of the derivative of shell
energy:

```math
\text{increasing viscosity directly depletes shell energy at rate }D_k.
```

For a heat-matched shell packet, where the spectral support is narrow enough
that `|\xi|^2` is constant up to legal shell-width error, the cross term obeys
on the positive response set `{R_k>0}`:

```math
\partial_\nu D_k
=
2\langle\nabla u_k,\nabla z_k\rangle
\ge
c\,2^{2k}R_k
-Err_k^{width}.
\tag{4.3}
```

Taking the positive part of `(4.2)` yields:

```math
\boxed{
\frac12\frac{d}{dt}R_k^+
+c\nu2^{2k}R_k^+
+D_k\,1_{\{R_k>0\}}
\le
[\partial_\nu N_k]_+
+[\partial_\nu L_k]_+
+Err_k^{width}.
}
\tag{4.4}
```

This proves `SignedShellResponseIdentity.A` for heat-matched shell packets.

### Proof of the positive-part step

The scalar map `x\mapsto x^+` is Lipschitz, so for absolutely continuous
`R_k(t)`:

```math
\frac{d}{dt}R_k^+
=
1_{\{R_k>0\}}\frac{d}{dt}R_k
```

for almost every `t`.  Multiply `(4.2)` by `1_{\{R_k>0\}}`.  On this set,
use `(4.3)` and keep the favorable `D_k` term.  Bound the right side by its
positive part plus the legal shell-width error.  This gives `(4.4)`.

## 5. Response Height Inequality

The donor tail and height used by the source-wall route are:

```math
T_k(t):=\sum_{\ell>k+4}D_\ell(t),
\qquad
H_k(t):=2^kT_k(t).
```

With `D_\ell=\|\nabla u_\ell\|_2^2`, define the positive viscosity-response
height carrier:

```math
\mathcal P_k^\nu(t)
:=
2^k\sum_{\ell>k+4}[\partial_\nu D_\ell(t)]_+.
```

Since:

```math
\partial_\nu H_k^\nu(t)
=
2^k\sum_{\ell>k+4}\partial_\nu D_\ell(t),
```

we have the pointwise upper bound:

```math
[\partial_\nu H_k^\nu(t)]_+
\le
\mathcal P_k^\nu(t).
\tag{5.1}
```

Summing `(4.4)` over `\ell>k+4`, multiplying by the route weight `2^k`, and
absorbing legal finite-overlap constants gives:

```math
\boxed{
\begin{aligned}
&\int_W\sup_{k>N}\mathcal P_k^\nu(t)\,dt
+c\nu\int_W\sup_{k>N}
2^k\sum_{\ell>k+4}2^{2\ell}R_\ell^+(t)\,dt \\
&\qquad
+\int_W\sup_{k>N}
2^k\sum_{\ell>k+4}D_\ell(t)1_{\{R_\ell>0\}}\,dt \\
&\le
BoundaryResp_N(W)
+RespFlux_N(W)
+RespLegal_N(W)
+WidthErr_N(W).
\end{aligned}
}
\tag{5.2}
```

Here:

```math
RespFlux_N(W)
:=
\int_W\sup_{k>N}
2^k\sum_{\ell>k+4}
1_{\{R_\ell(t)>0\}}[\partial_\nu N_\ell(t)]_+\,dt,
```

and `BoundaryResp_N(W)` is the positive response height at the time endpoints
of `W`.

Thus the response calculation proves the following theorem.

### Theorem `SignedResponseHeightReduction.A`

On heat-matched shell packets and compact positive-viscosity intervals,

```math
[\partial_\nu H_N^\nu(W)]_+
```

is controlled by:

```math
BoundaryResp_N(W)
+RespFlux_N(W)
+RespLegal_N(W)
+WidthErr_N(W).
```

The proof is `(5.1)` plus `(5.2)`.

## 6. Exact Remaining Source-Wall Derivative Theorem

The previous section does not yet discharge `ResponseHeightControl.A`.

It reduces it to the following sharper theorem:

```math
\boxed{
ResponseFluxDerivativeControl.A:
\quad
RespFlux_N(W)
\le
LegalResponseCharge_N(W)+o_N(1).
}
\tag{6.1}
```

Equivalently, in expanded form:

```math
\int_W\sup_{k>N}
2^k\sum_{\ell>k+4}
1_{\{R_\ell(t)>0\}}[\partial_\nu N_\ell(t)]_+\,dt
\le
LegalResponseCharge_N(W)+o_N(1).
```

This is the exact response-side analogue of the old hard source carrier:

```math
\int_W\sup_{k>N}
\left[
2^k\sum_{\ell>k+4}2^{2\ell}F_\ell(t)
\right]_+dt.
```

The difference is structural:

```text
old wall: positive nonlinear shell flux itself;
new wall: positive viscosity derivative of that flux.
```

This is honestly lower only when the derivative in `nu` exposes heat depletion
or signed response cancellation before absolute values are taken.

## 7. Conditional Discharge of ResponseHeightControl.A

Assume the following three inputs on the same terminal Field-face packet
ledger:

```text
1. HeatMatchedShellCoercivity.A:
   the shell-width errors in (4.3) are legal and vanish as N -> infinity;

2. ResponseFluxDerivativeControl.A:
   the positive viscosity derivative of nonlinear shell flux is legal;

3. BoundaryResponseFirstHeight.A:
   first-height selection makes BoundaryResp_N(W) legal or negligible.
```

Then `(5.2)` gives:

```math
\int_W\sup_{k>N}[\partial_\nu H_k^\nu(t)]_+dt
\le
LegalResponseCharge_N(W)+o_N(1).
\tag{7.1}
```

This is the theorem-grade form of:

```math
ResponseHeightControl.A.
```

So:

```math
\boxed{
HeatMatchedShellCoercivity.A
+ResponseFluxDerivativeControl.A
+BoundaryResponseFirstHeight.A
\Longrightarrow
ResponseHeightControl.A.
}
\tag{7.2}
```

## 8. Conditional Parametric No-Fold

Assume:

```text
1. Euler is smooth on [0,T], so (0,nu_0] subset G_T;
2. Pack and Part remain closed under the existing CM route;
3. any positive-nu first boundary of G_T must create Field-face donor height;
4. ResponseHeightControl.A holds uniformly on compact subintervals of
   (0,infty);
5. the legal response charges are summable over the finite packet cover.
```

Let `nu_*` be a first positive boundary of the connected component of
`\mathcal G_T` containing `(0,nu_0]`.  By assumptions 2 and 3, approaching
`nu_*` from below forces a Field-face first-height creation:

```math
\limsup_{\nu\uparrow\nu_*}H_N^\nu(W)\ge\eta
```

after past height and legal losses have been removed.

But integrating `(7.1)` in `nu` over any compact interval
`[\nu_a,\nu_b]\Subset(0,\nu_*)` gives:

```math
\sup_{\nu\in[\nu_a,\nu_b]}H_N^\nu(W)
\le
H_N^{\nu_a}(W)
+LegalResponseCharge_N(W;\nu_a,\nu_b)
+o_N(1).
```

The right side remains finite and legal by assumption 5.  Therefore no
positive first-height creation occurs before `nu_*`.  This contradicts the
Field-face boundary alternative.

Hence:

```math
\boxed{
ResponseHeightControl.A
+CM\text{-face reduction}
\Longrightarrow
ParametricHeightNoFold.A.
}
\tag{8.1}
```

Together with the connectedness argument in Section 0:

```math
\boxed{
ParametricHeightNoFold.A
+Euler\ smooth
\Longrightarrow
NS_\nu\ smooth\quad(\forall\nu>0).
}
\tag{8.2}
```

This is a conditional theorem, not a full closure.

## 9. Honest Closure Verdict

The following items are proved in this note:

```text
LocalViscositySmoothDependence.A
ViscosityResponseEquation.A
SignedShellResponseIdentity.A
SignedResponseHeightReduction.A
```

The following implication is proved conditionally:

```text
HeatMatchedShellCoercivity.A
+ ResponseFluxDerivativeControl.A
+ BoundaryResponseFirstHeight.A
=> ResponseHeightControl.A
=> ParametricHeightNoFold.A
=> no positive-nu Field-face fold.
```

The no-fold theorem itself is not discharged.

The exact new proof wall is:

```math
\boxed{
ResponseFluxDerivativeControl.A
}
```

with two ledger-cleanup supports:

```text
HeatMatchedShellCoercivity.A
BoundaryResponseFirstHeight.A
```

This is a genuine sharpening of the old source wall only when
`partial_nu N_\ell` can be controlled by signed heat-response depletion before
absolute values erase the sign.  If the proof of
`ResponseFluxDerivativeControl.A` falls back to Cauchy-Young on `z`, it
collapses back to the old `ScaleCriticalTreeCarleson.A` obstruction.

## 10. Next Proof Atom

The next theorem to attack is:

```math
\boxed{
ResponseFluxDerivativeControl.A.
}
```

Expanded target:

```math
\int_W\sup_{k>N}
2^k\sum_{\ell>k+4}
1_{\{R_\ell(t)>0\}}[\partial_\nu N_\ell(t)]_+\,dt
\le
LegalResponseCharge_N(W)+o_N(1).
```

The proof should differentiate the trilinear shell flux:

```math
N_\ell(u)
=
-\langle P_\ell\mathbb P(u\cdot\nabla u),u_\ell\rangle,
```

giving:

```math
\partial_\nu N_\ell
=
-\langle P_\ell\mathbb P(z\cdot\nabla u+u\cdot\nabla z),u_\ell\rangle
-\langle P_\ell\mathbb P(u\cdot\nabla u),z_\ell\rangle.
```

The admissible proof must keep the signed correlation between `z` and the heat
depletion direction.  An absolute-value estimate is not enough.

## 11. Continuation Pointer

This target was attacked in:

```text
mpp-response-flux-derivative-control-direct-attempt-20260506.md
```

That pass proves aligned response absorption and reduces
`ResponseFluxDerivativeControl.A` to:

```text
ParabolicRateStrainBurst.A
LowResponseStrainCharge.A
OrthogonalResponseDecorrel.A.
```

The later full-coefficient response drain updates this reduction in:

```text
mpp-response-flux-control-after-full-drain-assembly-20260506.md
```

Installed update:

```text
FirstHeightCreationDichotomy.A
=> ResponseFluxDerivativeControl.A.
```

Therefore the response-specific walls are discharged, and
`ResponseHeightControl.A` now reduces to:

```text
HeatMatchedShellCoercivity.A
+ BoundaryResponseFirstHeight.A
+ FirstHeightCreationDichotomy.A.
```

The two ledger supports are discharged in
`mpp-response-height-ledger-supports-discharge-20260506.md`:

```text
HeatMatchedShellCoercivity.A
BoundaryResponseFirstHeight.A
```

Thus the cleaned implication is:

```text
FirstHeightCreationDichotomy.A
=> ResponseHeightControl.A.
```
