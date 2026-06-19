# MPP Deformation-Tower Receiver Supplier Theorem Program

## Status

Candidate theorem-facing note.

Role: install the precise deformation/tower contact point beneath the
transported-center receiver wall `RCF.A`, without merging the native proof
objects and without treating a supplier package as the proof of `RCF.A`.

## Audit Verdict

The proposed idea is directionally correct:

```text
deformation receiver package
+
localized tower forcing package
-> transported-center receiver closure input
```

The exact meeting point is indeed the current receiver wall:

```text
RCF.A -> LCI.A -> CSP.A -> OFP.A.
```

But the proposed theorem must be split. If a statement assumes

```math
(RCF.1)+(RCF.2)+
\mathfrak F_{N,m,\rho,\psi}^{ctr,res}\in L^1(I),
```

and then invokes `RCF.A`, it has not proved `RCF.A`; it has proved only an
assembly corollary conditional on `RCF.A`. That is useful, but it is not the
receiver/collar closure theorem.

The correct refinement is:

```text
supplier theorem:
  DG_rec + TW_ctr -> (RCF.1) + (RCF.2) + (RCF.A0)

assembly corollary:
  supplier theorem + RCF.A -> LCI.A

true receiver closure target:
  DG_rec + TW_ctr -> A_ctr in L2 directly,
  i.e. prove the dynamic content of RCF.A rather than assume it.
```

## License Boundary

This note does not replace the class-membership route, `OFP.A`, `LCI.A`,
`RCF.A`, or the route table. It records one admissible hybrid supplier
interface:

```text
deformation geometry supplies frame/oscillation inputs;
tower control supplies localized pressure/top-viscous forcing;
the receiver route still decides whether those inputs close RCF.A.
```

It also does not license any of the following moves:

```text
global tower energy -> pointwise transported-center closure,
full Field coherence -> pre-Field receiver input,
generic deformation control -> LCI.A,
fixed-ball Sobolev packet -> noncircular closure if the packet was obtained by
spending CSP.A / LCI.A.
```

## Native Target

The target remains `LCI.A`:

```math
\Gamma_{N,m,\rho,\psi}^{low}\in L^1(I).
\tag{DTR.1}
```

The installed transported-center sufficient route is:

```math
(RCF.1)+(RCF.2)+RCF.A
\Longrightarrow
(LCI.3c3y)
\Longrightarrow
LCI.B
\Longrightarrow
LCI.A.
\tag{DTR.2}
```

where:

```math
(RCF.1):
\mathfrak H_{N,m,\rho,\psi}^{osc,\alpha}\in L^2(I),
\tag{DTR.3}
```

```math
(RCF.2):
\sup_{t\in I}\mathfrak A_{1,\rho,\psi}^{ctr}(t)<\infty,
\tag{DTR.4}
```

and the residual center-forcing input to `RCF.A` is:

```math
(RCF.A0):
\mathfrak F_{N,m,\rho,\psi}^{ctr,res}
=
\mathfrak K_{N,m,\rho,\psi}^{press,ctr}
+
\mathfrak K_{N,m,\rho,\psi}^{visc,top,ctr}
\in L^1(I).
\tag{DTR.5}
```

## Definition Of The Two Supplier Packages

### Deformation receiver package `DG_rec`

The deformation package is not generic Lagrangian regularity. It must supply
the two receiver-side geometric inputs:

```math
DG_{\mathrm{rec}}
\Longrightarrow
\mathfrak H_{N,m,\rho,\psi}^{osc,\alpha}\in L^2(I)
\tag{DTR.6}
```

and

```math
DG_{\mathrm{rec}}
\Longrightarrow
\mathfrak D_{1,\rho,\psi}^{aff}\in L^1(I).
\tag{DTR.7}
```

Then the installed affine-frame bridge gives:

```math
\mathfrak D_{1,\rho,\psi}^{aff}\in L^1(I)
\Longrightarrow
\sup_{t\in I}\mathfrak A_{1,\rho,\psi}^{ctr}(t)<\infty.
\tag{DTR.8}
```

The geometric reason is the already-installed frame identity:

```math
\ddot G_j(t)=\mathcal E_j^{(1)}(t)G_j(t),
\tag{DTR.9}
```

so the affine/shear sector is handled by the deformation frame itself, not by a
false scalar coercivity claim on `|U_1|`.

### Local tower forcing package `TW_ctr`

The tower package is also not generic tower boundedness. It must be localized
on the transported-center balls and must produce the exact residual forcing:

```math
TW_{\mathrm{ctr}}
\Longrightarrow
\mathfrak K_{N,m,\rho,\psi}^{press,ctr}\in L^1(I),
\tag{DTR.10}
```

```math
TW_{\mathrm{ctr}}
\Longrightarrow
\mathfrak K_{N,m,\rho,\psi}^{visc,top,ctr}\in L^1(I).
\tag{DTR.11}
```

The pressure half must pass through a localized pressure response on the same
transported-center balls. The top-viscous half must pass through the top-rung
center readout. A diagonal or global tower energy is not enough.

## Theorem `DTR.A` (Supplier Form)

Assume on one same-fluid interval `I`:

1. the finite transported cover `(LCI.3c3l)`;
2. the bounded pack-side gauge `(LCI.3c3y0)`;
3. finite seed center data at `t_0`;
4. the deformation receiver package `DG_rec`;
5. the local tower forcing package `TW_ctr`;
6. no use of `LCI.A`, `CSP.A`, `OFP.A`, or full `Field` in proving `DG_rec` or
   `TW_ctr`.

Then the imported transported-center package and residual forcing input are
available:

```math
(RCF.1)+(RCF.2)+(RCF.A0).
\tag{DTR.A}
```

### Proof

`DG_rec` gives `(DTR.6)`, which is exactly `(RCF.1)`.

`DG_rec` also gives `(DTR.7)`. The affine-defect to first-rung bridge then
gives `(DTR.8)`, which is exactly `(RCF.2)`.

`TW_ctr` gives `(DTR.10)` and `(DTR.11)`. By the definition of
`\mathfrak F^{ctr,res}` in `(DTR.5)`, this is `(RCF.A0)`. ∎

## Corollary `DTR.B` (Assembly Form)

Assume the hypotheses of `DTR.A`. If the installed target theorem `RCF.A` is
proved, then:

```math
LCI.A
\tag{DTR.B}
```

### Proof

By `DTR.A`, `(RCF.1)`, `(RCF.2)`, and `(RCF.A0)` are available. `RCF.A` gives

```math
\mathfrak A_{N,m,\rho,\psi}^{ctr}\in L^2(I).
```

`RCF.1a` converts `(RCF.1)` into

```math
\Omega_{N,m,\rho,\psi}^{osc}\in L^2(I).
```

Together these are `(LCI.3c3y)`. With the bounded pack-side gauge,
`LCI.B2e` gives `LCI.B`, and `LCI.C` gives `LCI.A`. ∎

## Target `DTR.C` (True Receiver Closure Form)

The theorem that would actually close the receiver/collar wall is stronger
than `DTR.A`:

```math
DG_{\mathrm{rec}}+TW_{\mathrm{ctr}}
\Longrightarrow
\mathfrak A_{N,m,\rho,\psi}^{ctr}\in L^2(I)
\tag{DTR.C}
```

under the same noncircularity conditions.

This is the real deformation/tower receiver theorem. It must prove the dynamic
content of `RCF.A`, not merely supply the residual forcing input `(RCF.A0)`.
Equivalently, it must close the weighted transported-center triangular system
with the deformation frame controlling the affine null sector and the tower
package controlling pressure-center plus top-two viscous forcing.

## Audit Of The Proposed `DTR.C` Proof

The proposed proof has the right architecture:

```text
deformation geometry -> affine first-rung control,
tower control -> pressure/top-viscous residual forcing,
affine-frame triangular replay -> higher center-rung control.
```

The first step is already licensed on disk:

```math
\mathfrak D_{1,\rho,\psi}^{aff}\in L^1(I)
\Longrightarrow
\sup_I\mathfrak A_{1,\rho,\psi}^{ctr}<\infty.
\tag{DTR.C1}
```

This is the affine-defect to first-rung bridge `AFB.A`.

The second step is also the correct residual forcing target:

```math
\mathfrak F_{N,m,\rho,\psi}^{ctr,res}
=
\mathfrak K_{N,m,\rho,\psi}^{press,ctr}
+
\mathfrak K_{N,m,\rho,\psi}^{visc,top,ctr}
\in L^1(I).
\tag{DTR.C2}
```

The gap is in the third step. The affine-frame replay `LCI.B2g5o` requires the
transformed forcing condition

```math
\widetilde{\mathfrak K}_{q,\rho,\psi}^{ctr}\in L^1(I)
\qquad
(2\le q\le m),
\tag{DTR.C3}
```

and `LCI.B2g5p` gives only

```math
\widetilde{\mathfrak K}_{q,\rho,\psi}^{ctr}
\le
C_q\Gamma_\sharp^q\mathfrak K_{q,\rho,\psi}^{ctr}.
\tag{DTR.C4}
```

So bounded `\Gamma_\sharp` reduces `(DTR.C3)` to full center-forcing
integrability

```math
\mathfrak K_{q,\rho,\psi}^{ctr}\in L^1(I)
\qquad
(2\le q\le m),
\tag{DTR.C5}
```

not merely to the residual forcing input `(DTR.C2)`.

After `LCI.B2g4`, lower viscous rungs satisfy

```math
\mathfrak K_{q,\rho,\psi}^{visc,ctr}
\le
C_q\nu\,\mathfrak A_{q+2,\rho,\psi}^{ctr}
\qquad
(0\le q\le m-2),
\tag{DTR.C6}
```

so the lower-viscous part is a recycled unknown. The weighted-center note
absorbs this recycle, but it still leaves the direct-coordinate multilinear
source

```math
\mathfrak Q_{N,m,\rho,\psi}^{ctr,w}\in L^1(I)
\tag{DTR.C7}
```

as `WCA.C0`. The affine-handoff note correctly says `WCA.C0` is not a new
primitive wall; however, the affine replay still needs its own noncircular
forcing input. Therefore the proof cannot say simply:

```text
F^{ctr,res} in L1 + bounded Gamma_sharp -> transformed forcing in L1.
```

That implication is too strong unless an additional affine-weighted recycle
theorem is supplied.

## Corrected Strong Target `DTR.C+`

The sharp true-closure theorem is:

```math
DG_{\mathrm{rec}}
+
TW_{\mathrm{ctr}}^{aff}
\Longrightarrow
\mathfrak A_{N,m,\rho,\psi}^{ctr}\in L^2(I).
\tag{DTR.C+}
```

Here `TW_ctr^{aff}` is stronger than the residual supplier `TW_ctr`. It must
provide one of the following noncircular inputs:

1. full center-forcing integrability

```math
\mathfrak K_{q,\rho,\psi}^{ctr}\in L^1(I)
\qquad
(2\le q\le m);
\tag{DTR.C+1}
```

2. direct-coordinate weighted closure

```math
\mathfrak Q_{N,m,\rho,\psi}^{ctr,w}\in L^1(I);
\tag{DTR.C+2}
```

3. an affine-weighted recycle theorem proving `(DTR.C3)` from residual
pressure/top-viscous forcing plus the affine-frame triangular structure, without
spending `LCI.A`, `CSP.A`, `OFP.A`, or full `Field`.

Under any one of these strengthened tower inputs, the proposed proof closes:

```text
DG_rec -> RCF.1 + affine first-rung control,
TW_ctr^{aff} -> transformed higher-rung forcing/recycle closure,
affine-frame triangular replay -> A_ctr in L2,
therefore RCF.A -> LCI.A.
```

So the corrected conclusion is:

```text
DG_rec + bare TW_ctr proves the supplier form DTR.A.
DG_rec + TW_ctr^{aff} is the real strong target for proving RCF.A.
```

## Concrete Packet Target `DTR.E`

The sharper replacement for the black-box input `TW_ctr^{aff}` is an
affine-normalized receiver packet. Its job is to prove the center-system
estimate consumed by `RCF.A` directly:

```math
\mathfrak A_{N,m,\rho,\psi}^{ctr}\in L^2(I).
\tag{DTR.E0}
```

The key improvement is to work in the affine frame already installed by
`LCI.B2g5n`--`LCI.B2g5q`.

For transported centers

```math
c_j(t)=\Phi(a^j,t),
\qquad
A_j(t)=U_1(c_j(t),t),
\tag{DTR.E1}
```

let

```math
\dot G_j=A_jG_j,
\qquad
G_j(t_0)=I.
\tag{DTR.E2}
```

The installed bridge identifies this with the center deformation frame:

```math
G_j(t)=F(a^j,t)F(a^j,t_0)^{-1}.
\tag{DTR.E3}
```

For `q\ge 2`, define the affine-normalized center jets

```math
\widetilde U_q^{\,j}(t)
:=
\mathcal C_{G_j(t)}^{-1}\big(U_q(c_j(t),t)\big).
\tag{DTR.E4}
```

Then the exact affine-frame equation is

```math
\frac{d}{dt}\widetilde U_q^{\,j}
=
\widetilde K_q^{\,j}
+
\widetilde B_{q,\mathrm{mid}}^{\,j},
\qquad
2\le q\le m.
\tag{DTR.E5}
```

The endpoint first-rung action is absent. This is why the affine-normalized
packet is the correct receiver object rather than a raw center-tower packet.

## State/Source Split

The proposed packet is right in spirit, but it should be split into a state
packet and a source ledger.

The state packet is:

```math
\mathcal E_{N,m,\rho,\psi}^{aff}(t)
:=
1+
\omega_0\sum_{j=1}^{J}|U_0(c_j(t),t)|^2
+
\big(\mathfrak H_{N,m,\rho,\psi}^{osc,\alpha}(t)\big)^2
+
\sum_{q=2}^{m}\omega_q
\sum_{j=1}^{J}
|\widetilde U_q^{\,j}(t)|^2.
\tag{DTR.E6}
```

The source ledger is:

```math
\mathcal S_{N,m,\rho,\psi}^{aff}(t)
:=
\mathfrak D_{1,\rho,\psi}^{aff}(t)
+
\mathfrak T_{1,\rho,\psi}^{press,far}(t)
+
\mathcal S_{N,m,\rho,\psi}^{tower,aff}(t),
\tag{DTR.E7}
```

where `\mathcal S^{tower,aff}` is the route-native localized tower source
needed to control the affine transformed forcing terms
`\widetilde{\mathfrak K}_{q,\rho,\psi}^{ctr}` and the middle-block packet
terms in `(DTR.E5)`.

This split matters. The affine defect and pressure tail are forcing/readout
ledgers, not automatically differentiable state variables. They can be included
in a broad bookkeeping packet, but the theorem-facing Gronwall inequality
should be written for the state packet `(DTR.E6)` with `(DTR.E7)` on the right.

Choose positive weights so that the lower-viscous recycle can be absorbed on
the finite tower:

```math
2C_q\nu\,\omega_q\le \omega_{q+2},
\qquad
0\le q\le m-2.
\tag{DTR.E8}
```

## Center-Only Break Test

The center-only affine packet proves the algebraic cancellation, but it has no
viscous dissipation. At finite depth the dangerous comparison subsystem is:

```math
\dot Y_2=\nu Y_4,
\qquad
\dot Y_4=C\,Y_2^2,
\tag{DTR.E8a}
```

or

```math
\ddot Y_2=C\nu\,Y_2^2.
\tag{DTR.E8b}
```

Positive comparison data can grow in finite time. Thus the point-center packet
cannot be the final analytic closure object. It handles `ATE.1`; the usable
closure must add either an `L^1` middle-block coefficient ledger or a local
affine packet with genuine parabolic dissipation. The stronger route is the
local packet.

## Local Affine Receiver Packet

For each transported center define the enlarged center ball

```math
B_j(t):=B(c_j(t),2R_\delta^{osc}),
\tag{DTR.E8c}
```

and let `\chi_j(\cdot,t)` be supported in the admissible enlarged ball/collar
region and equal to `1` on the core ball.

For `q\ge 2`, set

```math
Z_q^j(x,t)
:=
\mathcal C_{G_j(t)}^{-1}U_q(x,t).
\tag{DTR.E8d}
```

Define the local rung energies

```math
E_q^j(t)
:=
\|\chi_j Z_q^j(\cdot,t)\|_{H^2_x}^2,
\qquad
2\le q\le m,
\tag{DTR.E8d1}
```

and

```math
E_0^j(t)
:=
\|\chi_j U_0(\cdot,t)\|_{H^2_x}^2.
\tag{DTR.E8d2}
```

The local affine state is:

```math
\mathcal E_{\mathrm{loc}}^{aff}(t)
:=
1+
\omega_0\sum_jE_0^j(t)
+
\sum_{q=2}^{m}\omega_q
\sum_jE_q^j(t)
+
\mathcal O_H(t),
\tag{DTR.E8e}
```

where

```math
\mathcal O_H(t)
:=
\int_{t_0}^{t}
\big(\mathfrak H_{N,m,\rho,\psi}^{osc,\alpha}(s)\big)^2\,ds.
\tag{DTR.E8f}
```

The local affine dissipation is:

```math
\mathcal D_{\mathrm{loc}}^{aff}(t)
:=
\omega_0\sum_j\|\chi_j U_0\|_{H^3_x}^2
+
\sum_{q=2}^{m}\omega_q
\sum_j\|\chi_j Z_q^j\|_{H^3_x}^2.
\tag{DTR.E8g}
```

This local packet is the usable `ATE.A` state. It turns the pointwise viscous
recycle into parabolic dissipation on the enlarged transported-center balls.

## Target Theorem `ATE.A`

Assume finite seed data, the finite transported cover `(LCI.3c3l)`, the bounded
pack-side gauge `(LCI.3c3y0)`, and no use of `LCI.A`, `CSP.A`, `OFP.A`, or
full `Field` in proving the following packet inequality.

Assume:

```math
\mathcal S_{N,m,\rho,\psi}^{aff}\in L^1(I)
\tag{ATE.0}
```

and

```math
\frac{d}{dt}
\mathcal E_{\mathrm{loc}}^{aff}(t)
+
c\nu\mathcal D_{\mathrm{loc}}^{aff}(t)
\le
B_{N,m,\rho,\psi}^{aff}(t)
\mathcal E_{\mathrm{loc}}^{aff}(t)
+
S_{N,m,\rho,\psi}^{aff}(t),
\tag{ATE.A}
```

with

```math
B_{N,m,\rho,\psi}^{aff}\in L^1(I),
\qquad
S_{N,m,\rho,\psi}^{aff}\in L^1(I).
\tag{ATE.A0}
```

Here `S^{aff}` may include the source ledger `(DTR.E7)` and any localized tower
remainders left after the affine normalization.

Then:

```math
\mathfrak A_{N,m,\rho,\psi}^{ctr}\in L^2(I).
\tag{DTR.E9}
```

Consequently `RCF.A` holds, and hence `LCI.A` holds.

### Proof

By Gronwall applied to `(ATE.A)`,

```math
\sup_{t\in I}\mathcal E_{\mathrm{loc}}^{aff}(t)<\infty.
\tag{DTR.E10}
```

Since `(ATE.0)` includes
`\mathfrak D_{1,\rho,\psi}^{aff}\in L^1(I)`, the installed affine-defect bridge
`AFB.A` gives

```math
\sup_{t\in I}\mathfrak A_{1,\rho,\psi}^{ctr}(t)<\infty.
\tag{DTR.E11}
```

Because `\chi_j=1` on the core ball and `H^2(B_j)` embeds into `L^\infty(B_j)`
in dimension three, the local packet gives the point readouts

```math
\sup_{t\in I}
\sum_j|U_0(c_j(t),t)|^2<\infty,
\tag{DTR.E12}
```

and, for `2\le q\le m`,

```math
\sup_{t\in I}
\sum_j|Z_q^j(c_j(t),t)|^2<\infty.
\tag{DTR.E13}
```

Since `Z_q^j(c_j,t)=\widetilde U_q^{\,j}(t)` and the pack gauge is bounded,
`(LCI.3c3z19az29)` gives bounded conversion between affine and original center
variables:

```math
|U_q(c_j(t),t)|
\le
C_{\Gamma,q}
|\widetilde U_q^{\,j}(t)|.
\tag{DTR.E14}
```

Therefore

```math
\sup_{t\in I}
\mathfrak A_{q,\rho,\psi}^{ctr}(t)<\infty
\qquad
(2\le q\le m).
\tag{DTR.E15}
```

Together with `(DTR.E11)` and the rung-zero readout `(DTR.E12)`, this
gives

```math
\sup_{t\in I}
\mathfrak A_{N,m,\rho,\psi}^{ctr}(t)<\infty.
\tag{DTR.E16}
```

Since `I` is finite, `(DTR.E16)` implies `(DTR.E9)`.

The cumulative oscillation component `(DTR.E8f)` gives

```math
\mathfrak H_{N,m,\rho,\psi}^{osc,\alpha}\in L^2(I).
\tag{DTR.E17}
```

By `LCI.B2f`, `(DTR.E17)` implies

```math
\Omega_{N,m,\rho,\psi}^{osc}\in L^2(I).
\tag{DTR.E18}
```

Thus `(LCI.3c3y)` holds. With the bounded pack-side gauge, `LCI.B2e` gives
`LCI.B`; then `LCI.C` gives

```math
\Gamma_{N,m,\rho,\psi}^{low}\in L^1(I).
\tag{DTR.E19}
```

That is `LCI.A`. ∎

## Formal Route Theorem `DTR.Eb` (Bookkeeping-energy closure form)

There is an equivalent stronger bookkeeping formulation. Define

```math
\mathfrak R_{N,m,\rho,\psi}^{aff}(t)
:=
1+
\big(\mathfrak A_{0,\rho,\psi}^{ctr}(t)\big)^2
+
\mathfrak D_{1,\rho,\psi}^{aff}(t)
+
\big(\mathfrak H_{N,m,\rho,\psi}^{osc,\alpha}(t)\big)^2
+
\sum_{q=2}^{m}\omega_q
\sum_{j=1}^{J}
|\widetilde U_q^{\,j}(t)|^2
+
\mathfrak T_{1,\rho,\psi}^{press,far}(t).
\tag{DTR.Eb1}
```

This is a bookkeeping energy, not the default differentiable state packet.
It is licensed only if the following Dini inequality is proved directly:

```math
D^+\mathfrak R_{N,m,\rho,\psi}^{aff}(t)
+
\nu\mathfrak D_{N,m,\rho,\psi}^{aff}(t)
\le
B_{N,m,\rho,\psi}^{aff}(t)
\mathfrak R_{N,m,\rho,\psi}^{aff}(t)
+
S_{N,m,\rho,\psi}^{aff}(t),
\tag{DTR.Eb2}
```

with

```math
B_{N,m,\rho,\psi}^{aff},S_{N,m,\rho,\psi}^{aff}\in L^1(I),
\qquad
\mathfrak R_{N,m,\rho,\psi}^{aff}(t_0)<\infty.
\tag{DTR.Eb3}
```

Then Gronwall gives

```math
\mathfrak R_{N,m,\rho,\psi}^{aff}\in L^\infty(I).
\tag{DTR.Eb4}
```

Since every term in `(DTR.Eb1)` is nonnegative, `(DTR.Eb4)` gives:

```math
\mathfrak A_{0,\rho,\psi}^{ctr}\in L^\infty(I),
\qquad
\mathfrak D_{1,\rho,\psi}^{aff}\in L^\infty(I)\subset L^1(I),
\tag{DTR.Eb5}
```

```math
\mathfrak H_{N,m,\rho,\psi}^{osc,\alpha}\in L^\infty(I)\subset L^2(I),
\qquad
\sum_{j=1}^{J}|\widetilde U_q^{\,j}|^2\in L^\infty(I)
\quad(2\le q\le m).
\tag{DTR.Eb6}
```

By `AFB.A`,

```math
\mathfrak D_{1,\rho,\psi}^{aff}\in L^1(I)
\Longrightarrow
\sup_I\mathfrak A_{1,\rho,\psi}^{ctr}<\infty.
\tag{DTR.Eb7}
```

For `q\ge 2`, bounded `\Gamma_\sharp` gives the bounded frame conversion

```math
|U_q(c_j(t),t)|
\le
C_{\Gamma,q}|\widetilde U_q^{\,j}(t)|.
\tag{DTR.Eb8}
```

Using finite `J`,

```math
\big(\mathfrak A_{q,\rho,\psi}^{ctr}(t)\big)^2
\le
C_{\Gamma,q,J}
\sum_{j=1}^{J}|\widetilde U_q^{\,j}(t)|^2,
\qquad
2\le q\le m.
\tag{DTR.Eb9}
```

Thus every center rung lies in `L^\infty(I)\subset L^2(I)`, and hence

```math
\mathfrak A_{N,m,\rho,\psi}^{ctr}
=
1+\sum_{q=0}^{m}\mathfrak A_{q,\rho,\psi}^{ctr}
\in L^2(I).
\tag{DTR.Eb10}
```

This is the center-system estimate consumed by `RCF.A`.

The same bookkeeping bound gives
`\mathfrak H_{N,m,\rho,\psi}^{osc,\alpha}\in L^2(I)`, so `LCI.B2f` yields

```math
\Omega_{N,m,\rho,\psi}^{osc}\in L^2(I).
\tag{DTR.Eb11}
```

Therefore `(LCI.3c3y)` holds. With bounded pack-side gauge, `LCI.B2e` gives
`LCI.B`, and `LCI.C` reads out

```math
\Gamma_{N,m,\rho,\psi}^{low}\in L^1(I).
\tag{DTR.Eb12}
```

That is `LCI.A`.

So the formal closure chain is:

```math
DTR.Eb
\Longrightarrow
\mathfrak R^{aff}\in L^\infty(I)
\Longrightarrow
\mathfrak A_{N,m,\rho,\psi}^{ctr}\in L^2(I)
\Longrightarrow
RCF.A
\Longrightarrow
LCI.A.
\tag{DTR.Eb13}
```

Boundary: `(DTR.Eb2)` is stronger than the state/source `ATE.A` formulation
because it must prove a Dini evolution law for the affine defect and pressure
tail as components of the bookkeeping energy. Without that direct Dini
inequality, use the state/source form `(ATE.A)` instead.

## Why `DTR.E` Improves `DTR.C+`

`DTR.C+` says only:

```math
DG_{\mathrm{rec}}+TW_{\mathrm{ctr}}^{aff}
\Longrightarrow
\mathfrak A_{N,m,\rho,\psi}^{ctr}\in L^2(I).
```

`DTR.E` names the missing object inside `TW_ctr^{aff}`:

```text
affine-normalized receiver state packet
+
route-native affine/tower source ledger
+
ATE.A energy inequality.
```

So the real next theorem is not another black-box bridge. It is:

```math
ATE.A
\Longrightarrow
\mathcal E_{\mathrm{loc}}^{aff}\in L^\infty(I)
\Longrightarrow
\mathfrak A_{N,m,\rho,\psi}^{ctr}\in L^2(I)
\Longrightarrow
RCF.A
\Longrightarrow
LCI.A.
\tag{DTR.E20}
```

The remaining work is to prove `(ATE.A)` noncircularly from route-native
deformation and localized tower inputs.

## Noncircularity Test

A proposed proof of `DTR.C+`, `DTR.E`, or `ATE.A` fails if its localized tower
packet is obtained from any theorem that already spends:

```text
LCI.A,
CSP.A,
OFP.A,
full Field coherence,
or the same receiver/collar conclusion under another name.
```

This matters because several fixed-ball pressure and top-viscous supplier
branches on disk return to `CSP.B3a1` or the receiver-side collar burden. Those
branches are useful diagnostics, but they cannot be used as noncircular proof of
`DTR.E` unless a separate route supplies the fixed-ball packets before the
receiver conclusion is spent.

## Improved Proof Program

The next proof search should not try to prove a grand deformation/tower
principle. It should test these exact supplier statements:

```math
DG.1:
\quad
\text{deformation-frame / label-halo control}
\Longrightarrow
\mathfrak H_{N,m,\rho,\psi}^{osc,\alpha}\in L^2(I).
```

```math
DG.2:
\quad
\text{deformation-frame residual control}
\Longrightarrow
\mathfrak D_{1,\rho,\psi}^{aff}\in L^1(I).
```

```math
TW.1:
\quad
\text{localized tower pressure response}
\Longrightarrow
\mathfrak K_{N,m,\rho,\psi}^{press,ctr}\in L^1(I).
```

```math
TW.2:
\quad
\text{localized top-rung tower readout}
\Longrightarrow
\mathfrak K_{N,m,\rho,\psi}^{visc,top,ctr}\in L^1(I).
```

Then decide whether those four statements merely give `DTR.A`, or whether the
same structure can be upgraded to `DTR.E` by proving the affine-normalized
packet inequality `ATE.A` directly.

## Current Proof Wall

The next work is exactly `ATE.A`. No new route object is needed before this is
tested.

To prove `ATE.A`, prove these five subclaims on the same transported-center
cover, without spending `LCI.A`, `CSP.A`, `OFP.A`, or full `Field`.

### `ATE.1` (Center-state affine identity)

The point-center affine state has no intrinsic viscous dissipation. Define

```math
\mathcal E_{\mathrm{ctr}}^{aff}(t)
:=
\omega_0
\sum_{j=1}^{J}|U_0(c_j(t),t)|^2
+
\sum_{q=2}^{m}\omega_q
\sum_{j=1}^{J}
|\widetilde U_q^{\,j}(t)|^2,
\tag{ATE.1a}
```

and keep the oscillation state separate:

```math
\mathcal E_{\mathrm{osc}}^{aff}(t)
:=
\big(\mathfrak H_{N,m,\rho,\psi}^{osc,\alpha}(t)\big)^2.
\tag{ATE.1b}
```

Thus

```math
\mathcal E^{aff}
=
1+\mathcal E_{\mathrm{ctr}}^{aff}
+
\mathcal E_{\mathrm{osc}}^{aff}.
\tag{ATE.1c}
```

For almost every `t\in I`,

```math
D^+\mathcal E^{aff}(t)
\le
\mathcal Z_0^{aff}(t)
+
\mathcal M_{\mathrm{mid}}^{aff}(t)
+
\mathcal F_{\mathrm{tr}}^{aff}(t)
+
\mathcal O_{\mathrm{osc}}^{aff}(t),
\tag{ATE.1}
```

where

```math
\mathcal Z_0^{aff}
:=
2\omega_0
\sum_{j=1}^{J}
\langle U_0(c_j),K_0(c_j)\rangle,
\tag{ATE.1d}
```

```math
\mathcal M_{\mathrm{mid}}^{aff}
:=
2
\sum_{q=2}^{m}\omega_q
\sum_{j=1}^{J}
\langle
\widetilde U_q^{\,j},
\widetilde B_{q,\mathrm{mid}}^{\,j}
\rangle,
\tag{ATE.1e}
```

```math
\mathcal F_{\mathrm{tr}}^{aff}
:=
2
\sum_{q=2}^{m}\omega_q
\sum_{j=1}^{J}
\langle
\widetilde U_q^{\,j},
\widetilde K_q^{\,j}
\rangle,
\tag{ATE.1f}
```

and

```math
\mathcal O_{\mathrm{osc}}^{aff}
:=
D^+
\big(\mathfrak H_{N,m,\rho,\psi}^{osc,\alpha}\big)^2.
\tag{ATE.1g}
```

For the rung-zero part, the transported-center law gives

```math
\frac{d}{dt}U_0(c_j(t),t)
=
D_tU_0(c_j(t),t)
=
K_0(c_j(t),t),
\tag{ATE.1h}
```

because `B_0=0`. Therefore

```math
\frac{d}{dt}
\left[
\omega_0
\sum_{j=1}^{J}|U_0(c_j(t),t)|^2
\right]
=
\mathcal Z_0^{aff}.
\tag{ATE.1i}
```

For `q\ge 2`, insert the affine-frame equation `(DTR.E5)` into

```math
\frac{d}{dt}|\widetilde U_q^{\,j}|^2
=
2
\left\langle
\widetilde U_q^{\,j},
\frac{d}{dt}\widetilde U_q^{\,j}
\right\rangle,
\tag{ATE.1j}
```

and sum over `q` and `j` to obtain

```math
\frac{d}{dt}
\left[
\sum_{q=2}^{m}\omega_q
\sum_{j=1}^{J}
|\widetilde U_q^{\,j}|^2
\right]
=
\mathcal F_{\mathrm{tr}}^{aff}
+
\mathcal M_{\mathrm{mid}}^{aff}.
\tag{ATE.1k}
```

The oscillation part is retained as the separate Dini derivative
`\mathcal O_{\mathrm{osc}}^{aff}`. Adding `(ATE.1i)`, `(ATE.1k)`, and
`(ATE.1g)` gives `(ATE.1)`.

The sharp boundary is:

```math
\mathcal D_{\mathrm{ctr}}^{aff}=0
\tag{ATE.1l}
```

for the point-center affine state. Any positive `\nu\mathcal D^{aff}` term in
`ATE.A` must come from an added local-ball or tower packet, not from the
point-center affine identity itself.

### `ATE.2` (Middle-block closure)

The local affine equation has the form

```math
D_t Z_q^j
=
\nu\Delta Z_q^j
+
\widetilde K_q^j
+
\widetilde B_{q,\mathrm{mid}}^j
+
\widetilde B_{q,\mathrm{osc}}^j
+
\mathrm{Cut}_{q,j}.
\tag{ATE.2a0}
```

The affine frame removes the endpoint center action. The residue of that
endpoint block is not another center coefficient; it is the local oscillation
term

```math
\widetilde B_{q,\mathrm{osc}}^j
:=
\mathcal C_{G_j}^{-1}
\left(
(U_1(x,t)-A_j(t))*U_q(x,t)
\right).
\tag{ATE.2a1}
```

The true middle block is

```math
\widetilde B_{q,\mathrm{mid}}^j
=
\sum_{\ell=2}^{q-1}
\mathcal B_{q,\ell}
\big(
Z_\ell^j,
Z_{q+1-\ell}^j
\big),
\qquad
q\ge 3,
\tag{ATE.2a}
```

and

```math
\widetilde B_{2,\mathrm{mid}}^j=0.
\tag{ATE.2b}
```

The local `H^2` algebra estimate in dimension three gives

```math
\|\chi_j\widetilde B_{q,\mathrm{mid}}^j\|_{H^1}
\le
C
\sum_{\ell=2}^{q-1}
\|\chi_j Z_\ell^j\|_{H^2}
\|\chi_j Z_{q+1-\ell}^j\|_{H^2}
+
\mathrm{Cut}_{q,j}^{mid}.
\tag{ATE.2c}
```

Pairing with `\chi_j Z_q^j` and using Young yields

```math
2\omega_q
\left|
\langle
\chi_j Z_q^j,
\chi_j\widetilde B_{q,\mathrm{mid}}^j
\rangle_{H^2}
\right|
\le
\varepsilon\nu\omega_q\|\chi_j Z_q^j\|_{H^3}^2
+
C_{\varepsilon,\nu}\omega_q
\left(
\sum_{\ell=2}^{q-1}
\|\chi_j Z_\ell^j\|_{H^2}
\|\chi_j Z_{q+1-\ell}^j\|_{H^2}
\right)^2
+
\mathrm{Cut}_{q,j}^{mid}.
\tag{ATE.2d}
```

The endpoint oscillation residue is controlled by the local Holder ledger:

```math
\|\chi_j(U_1-A_j)Z_q^j\|_{H^1}
\le
C
\mathfrak H_{N,m,\rho,\psi}^{osc,\alpha}(t)
\|\chi_jZ_q^j\|_{H^2}
+
\mathrm{Cut}_{q,j}^{osc}.
\tag{ATE.2d1}
```

Therefore

```math
2\omega_q
\left|
\langle
\chi_jZ_q^j,
\chi_j\widetilde B_{q,\mathrm{osc}}^j
\rangle_{H^2}
\right|
\le
\varepsilon\nu\omega_q\|\chi_jZ_q^j\|_{H^3}^2
+
C_{\varepsilon,\nu}\omega_q
\big(\mathfrak H_{N,m,\rho,\psi}^{osc,\alpha}\big)^2
\|\chi_jZ_q^j\|_{H^2}^2
+
\mathrm{Cut}_{q,j}^{osc}.
\tag{ATE.2d2}
```

Thus `ATE.2` is the route-grade estimate

```math
\mathcal M_{\mathrm{mid}}^{aff}
\le
\varepsilon\nu\mathcal D_{\mathrm{loc}}^{aff}
+
B_{\mathrm{mid}}^{aff}(t)\mathcal E_{\mathrm{loc}}^{aff}(t)
+
S_{\mathrm{mid}}^{aff}(t),
\tag{ATE.2}
```

where the coefficient may be taken in the graded form

```math
\mathcal B_{\mathrm{mid},q}^{aff}
=
C
\left(
1
+
\big(\mathfrak H_{N,m,\rho,\psi}^{osc,\alpha}\big)^2
+
\sum_{r=2}^{q-1}\sum_jE_r^j
\right).
\tag{ATE.2e}
```

The finite-depth closure is triangular: `q=2` has no true middle block; `q=3`
spends only `q=2`; `q=4` spends only `q=2,3`; and so on. Therefore the live
commutator obligation is not a global self-coupled tower estimate. It is the
finite graded estimate

```math
S_{\mathrm{mid}}^{aff}
+
\mathrm{Cut}_{\mathrm{mid}}
+
\mathrm{Cut}_{\mathrm{osc}}
\in L^1(I)
\tag{ATE.2f}
```

under the graded lower-rung induction. The endpoint first-rung coefficient is
not allowed to reappear; its cancellation is the point of the affine
normalization.

### `ATE.3` (Zero-rung and transformed forcing closure)

Split the transformed forcing:

```math
\widetilde K_q^j
=
\widetilde P_q^j
+
\nu\widetilde V_q^j.
\tag{ATE.3a}
```

Inside the local packet, the viscous term supplies actual parabolic
dissipation:

```math
2\omega_q
\langle
\chi_jZ_q^j,
\chi_j\nu\widetilde V_q^j
\rangle_{H^2}
=
-2\nu\omega_q
\|\chi_jZ_q^j\|_{H^3}^2
+
\mathrm{Com}_{q,j}^{visc}.
\tag{ATE.3b}
```

The commutator terms from derivatives of `\chi_j`, the transported cutoff, and
bounded affine-frame coefficients satisfy

```math
|\mathrm{Com}_{q,j}^{visc}|
\le
\varepsilon\nu\omega_q\|\chi_jZ_q^j\|_{H^3}^2
+
C_{\varepsilon,\nu}
B_{\mathrm{cut}}(t)\omega_q\|\chi_jZ_q^j\|_{H^2}^2
+
S_{\mathrm{cut}}(t),
\tag{ATE.3b1}
```

with `B_{\mathrm{cut}},S_{\mathrm{cut}}\in L^1(I)` supplied by the transported
cutoff and pack-gauge ledgers. The point-center lower-viscous recycle is still
absorbed by the weights `2C_q\nu\omega_q\le\omega_{q+2}`, but the local packet
is stronger: the main viscous contribution is dissipative, and only cutoff
commutators remain.

For pressure, split on the same transported ball:

```math
\nabla^{q+1}p
=
\nabla^{q+1}p_j^{loc}
+
\nabla^{q+1}h_j.
\tag{ATE.3c}
```

The local response and harmonic tail are recorded as

```math
\|\chi_j\nabla^{q+1}p_j^{loc}\|_{H^1}
\le
C\mathcal P_{q,j}^{loc}(t),
\qquad
\|\chi_j\nabla^{q+1}h_j\|_{H^1}
\le
C\mathcal T_{q,j}^{press,far}(t).
\tag{ATE.3d}
```

Thus

```math
2\omega_q
\left|
\langle
\chi_jZ_q^j,
\chi_j\widetilde P_q^j
\rangle_{H^2}
\right|
\le
\varepsilon\nu\omega_q\|\chi_jZ_q^j\|_{H^3}^2
+
C_{\varepsilon,\nu}\omega_q
\left(
\mathcal P_{q,j}^{loc}
+
\mathcal T_{q,j}^{press,far}
\right)^2.
\tag{ATE.3d1}
```

Define

```math
S_{\mathrm{press}}^{aff}(t)
:=
\sum_{q=2}^{m}\omega_q\sum_j
\left(
\mathcal P_{q,j}^{loc}(t)
+
\mathcal T_{q,j}^{press,far}(t)
\right)^2.
\tag{ATE.3d2}
```

The top-viscous residue is collected as

```math
S_{\mathrm{top\text{-}visc}}^{aff}(t)
:=
\sum_{q=m-1}^{m}\omega_q
\sum_j
\|\chi_j\widetilde V_q^j(\cdot,t)\|_{H^1}^2.
\tag{ATE.3d3}
```

Then the target forcing estimate is

```math
\mathcal Z_0^{aff}
+
\mathcal F_{\mathrm{tr}}^{aff}
\le
\varepsilon\nu\mathcal D_{\mathrm{loc}}^{aff}
+
B_{\mathrm{forc}}^{aff}(t)
\mathcal E_{\mathrm{loc}}^{aff}
+
S_{\mathrm{forc}}^{aff}(t),
\tag{ATE.3}
```

where

```math
B_{\mathrm{forc}}^{aff}
=
C B_{\mathrm{cut}},
\qquad
S_{\mathrm{forc}}^{aff}
=
S_{\mathrm{press}}^{aff}
+
S_{\mathrm{cut}}
+
S_{\mathrm{top\text{-}visc}}^{aff}.
\tag{ATE.3e}
```

The exact transformed-forcing obligation is therefore

```math
S_{\mathrm{press}}^{aff}
+
S_{\mathrm{top\text{-}visc}}^{aff}
\in L^1(I).
\tag{ATE.3f}
```

Pressure must enter through a localized pressure-response theorem on the same
transported balls, and the top-viscous part through a localized top-rung tower
readout on those same balls.

### `ATE.4` (Oscillation-state closure)

Use the cumulative oscillation ledger `(DTR.E8f)`. Then

```math
D^+\mathcal O_H(t)
=
\big(\mathfrak H_{N,m,\rho,\psi}^{osc,\alpha}(t)\big)^2.
\tag{ATE.4a}
```

Since `\chi_j=1` on the enlarged transported-center balls, local
Sobolev/Morrey gives, for `0<\alpha\le 1/2`,

```math
[U_q(\cdot,t)]_{C^{0,\alpha}(B(c_j(t),2R_\delta^{osc}))}^2
\le
C
\sum_{|\beta|\le 2}
\|\nabla^\beta U_q(\cdot,t)\|_{L^2(B(c_j(t),2R_\delta^{osc}))}^2.
\tag{ATE.4b}
```

Frame boundedness gives equivalence between `U_q` and `Z_q^j` for `q\ge2`.
The rung-zero term is controlled directly by the `U_0` component of the packet.
Thus

```math
\big(\mathfrak H_{N,m,\rho,\psi}^{osc,\alpha}(t)\big)^2
\le
C_\Gamma
\mathcal E_{\mathrm{loc}}^{aff}(t).
\tag{ATE.4c}
```

Therefore

```math
\mathcal O_{\mathrm{osc}}^{aff}
=
D^+\mathcal O_H
\le
C_\Gamma\mathcal E_{\mathrm{loc}}^{aff}.
\tag{ATE.4}
```

So `ATE.4` is a readout with `B_{\mathrm{osc}}^{aff}=C_\Gamma` and
`S_{\mathrm{osc}}^{aff}=0`. Since `I` is finite, this coefficient is in
`L^1(I)`. An `EOC` import is allowed only if the exact bridge is named and the
import does not spend the receiver conclusion through `CSP.A`.

### `ATE.5` (Source-ledger integrability)

Prove the source ledger is integrable:

```math
\mathcal S_{N,m,\rho,\psi}^{aff}
=
\mathfrak D_{1,\rho,\psi}^{aff}
+
\mathfrak T_{1,\rho,\psi}^{press,far}
+
\mathcal S_{N,m,\rho,\psi}^{tower,aff}
\in L^1(I).
\tag{ATE.5}
```

Use the installed affine-defect supplier estimate:

```math
\mathfrak D_{1,\rho,\psi}^{aff}
\le
C
\left(
\mathfrak H_{N,m,\rho,\psi}^{osc,\alpha}
+
(\mathfrak A_{0,\rho,\psi}^{ctr})^2
+
(\mathfrak H_{N,m,\rho,\psi}^{osc,\alpha})^2
+
\mathfrak T_{1,\rho,\psi}^{press,far}
+
\mathfrak K_{1,\rho,\psi}^{visc,ctr}
\right).
\tag{ATE.5a}
```

The local packet supplies the oscillation and rung-zero terms, and the
pressure-tail energy supplier gives
`\mathfrak T_{1,\rho,\psi}^{press,far}\in L^1(I)`. For the first-rung viscous
center term,

```math
\mathfrak K_{1,\rho,\psi}^{visc,ctr}
=
\nu\sum_j|\Delta U_1(c_j(t),t)|
\le
C_{\Gamma,\nu}
\sum_j|\widetilde U_3^{\,j}(t)|.
\tag{ATE.5b}
```

For `m\ge3`, the local affine packet controls the right side after Gronwall:

```math
\sum_j|\widetilde U_3^{\,j}|
\le
C
\sum_j
\|\chi_jZ_3^j\|_{H^2_x}
\le
C
\big(\mathcal E_{\mathrm{loc}}^{aff}(t)\big)^{1/2}.
\tag{ATE.5c}
```

Inside the differential inequality, this term must be placed in the
top-viscous forcing ledger from `ATE.3`, not silently assumed as an external
input. After the local affine Gronwall bound, it is in `L^1(I)`. Therefore
`ATE.5` reduces to

```math
\mathcal S_{N,m,\rho,\psi}^{tower,aff}\in L^1(I),
\tag{ATE.5d}
```

which is the same pressure-center plus top-viscous transformed forcing already
used in `ATE.3`.

## Combined Local Packet Estimate

After `ATE.2`--`ATE.5`, define

```math
B^{aff}
:=
C
+
B_{\mathrm{mid}}^{aff}
+
B_{\mathrm{forc}}^{aff}
+
B_{\mathrm{osc}}^{aff},
\tag{ATE.6}
```

and

```math
S^{aff}
:=
S_{\mathrm{mid}}^{aff}
+
S_{\mathrm{press}}^{aff}
+
S_{\mathrm{top\text{-}visc}}^{aff}
+
S_{\mathrm{cut}}
+
S_{\mathrm{osc}}^{aff}.
\tag{ATE.7}
```

The handled atoms give

```math
B^{aff},S^{aff}\in L^1(I).
\tag{ATE.8}
```

Then the local affine packet inequality is:

```math
D^+\mathcal E_{\mathrm{loc}}^{aff}
+
c\nu\mathcal D_{\mathrm{loc}}^{aff}
\le
B^{aff}(t)\mathcal E_{\mathrm{loc}}^{aff}(t)
+
S^{aff}(t).
\tag{ATE.9}
```

Gronwall gives `\mathcal E_{\mathrm{loc}}^{aff}\in L^\infty(I)`. Local
Sobolev readout gives
`\mathfrak H_{N,m,\rho,\psi}^{osc,\alpha}\in L^2(I)`, and point-center readout
gives `\mathfrak A_{N,m,\rho,\psi}^{ctr}\in L^2(I)`. Hence `RCF.A`, then
`LCI.A`.

The remaining live analytic estimates are exactly:

```math
\boxed{
S_{\mathrm{press}}^{aff}
+
S_{\mathrm{top\text{-}visc}}^{aff}
\in L^1(I)
}
\tag{ATE.Live1}
```

and

```math
\boxed{
S_{\mathrm{mid}}^{aff}
+
\mathrm{Cut}_{\mathrm{mid}}
+
\mathrm{Cut}_{\mathrm{osc}}
+
\mathrm{Cut}_{\mathrm{visc}}
\in L^1(I)
}
\tag{ATE.Live2}
```

The first is the localized tower/pressure-response theorem. The second is the
local affine packet commutator theorem. `ATE.4` is then a local Sobolev/Morrey
readout, and `ATE.5` is a source-ledger readout from `ATE.3`, the pressure-tail
supplier, `m\ge3`, and the local affine Gronwall bound.

The critical correction is:

```math
\boxed{
\text{ATE.2 and ATE.3 must be handled in a local affine packet with parabolic dissipation.}
}
\tag{ATE.10}
```

The point-center affine packet gives the right algebra and the right affine
cancellation. The local affine packet supplies the dissipation needed to turn
that algebra into a receiver closure theorem.

## Current Decision

The route now has one exact next theorem. The first atom is closed as the
center-state identity `(ATE.1)`, with zero intrinsic point-center dissipation.
The remaining analytic atoms reduce to the two live estimates `(ATE.Live1)` and
`(ATE.Live2)`:

```math
ATE.1
+
ATE.Live1
+
ATE.Live2
\Longrightarrow
ATE.A
\Longrightarrow
RCF.A
\Longrightarrow
LCI.A.
\tag{ATE.Next}
```

So the next mathematical action is not to invent another bridge, but to prove
or break the localized tower/pressure-response estimate and the local affine
commutator/cutoff estimate.

## Bundled Affine-Center Target `ACT.A`

There is a sharper way to package `(ATE.Live1)` and `(ATE.Live2)`: close the
three receiver ledgers together as one affine-center theorem,

```math
ACT.A:
\qquad
\mathfrak D_{1,\rho,\psi}^{aff}\in L^1(I),
\qquad
\mathfrak F_{N,m,\rho,\psi}^{ctr,res}\in L^1(I),
\qquad
\mathfrak H_{N,m,\rho,\psi}^{osc,\alpha}\in L^2(I).
\tag{ACT.A}
```

This is the right bundled target because the affine defect, residual center
forcing, and local Holder oscillation are read out from the same affine-center
packet. Proving them separately risks rebuilding the old receiver loop.

The master packet is the affine packet through the top two viscous rungs:

```math
\mathcal E_{ACT}(t)
:=
\sum_{j=1}^{J}
\sum_{q=0}^{m+2}
\sum_{|\beta|\le2}
\int
\zeta(y)^2|\nabla_y^\beta R_{q,j}(y,t)|^2\,dy
+
\sum_{j=1}^{J}
\sum_{q=0}^{m+2}
|\widetilde U_{q,j}(t)|^2,
\tag{ACT.1}
```

where

```math
R_{q,j}(y,t)
:=
\mathcal C_{G_j(t)}^{-1}
\left(
U_q(c_j(t)+G_j(t)y,t)-U_q(c_j(t),t)
\right),
\tag{ACT.2}
```

and `R_{1,j}` uses the affine-subtracted first rung
`U_1(c_j+G_jy,t)-A_j(t)`.

The required energy estimate is

```math
\frac{d}{dt}\mathcal E_{ACT}
+
c_\nu\mathcal D_{ACT}
\le
B_{ACT}(t)\mathcal E_{ACT}(t)
+
F_{ACT}(t),
\tag{ACT.E}
```

with `B_{ACT},F_{ACT}\in L^1(I)` proved without spending `AFD.A`, `RCF.A`,
`EOC.A`, `LCI.A`, `CSP.A`, `OFP.A`, or `Field`.

The key audit correction is that the implication

```math
\mathcal E_{ACT}\in L^\infty(I)
\Longrightarrow
B_{ACT},F_{ACT}\in L^1(I)
\Longrightarrow
\mathcal E_{ACT}\in L^\infty(I)
\tag{ACT.bad}
```

is circular. `ACT.A` is promoted only after the term expansion proves either

```math
\frac{d}{dt}\mathcal E_{ACT}
+
c_\nu\mathcal D_{ACT}
\le
B_{ext}(t)\mathcal E_{ACT}
+
F_{ext}(t),
\qquad
B_{ext},F_{ext}\in L^1(I),
\tag{ACT.E1}
```

or

```math
\mathcal T_{ACT}^{bad}
\le
\varepsilon\mathcal D_{ACT}
+
B_{ext}(t)\mathcal E_{ACT}
+
F_{ext}(t),
\qquad
B_{ext},F_{ext}\in L^1(I).
\tag{ACT.E2}
```

The valid `ACT.E2` route is finite-stage. Let `ACT.Stage(r)` denote the
noncircular stage estimate

```math
D^+\mathcal E_{\le r}^{aff}
+
c_r\nu\mathcal D_{\le r}^{aff}
\le
B_r(t)\mathcal E_{\le r}^{aff}
+
F_r(t),
\qquad
B_r,F_r\in L^1(I),
\tag{ACT.Stage}
```

where `B_r,F_r` may use `ACT.Stage(r-1)` but not the desired
`\mathcal E_{\le r}^{aff}\in L^\infty(I)`. The middle block is triangular:
`q=2` has no middle term, and the rung-`r` middle term contains only lower
affine rungs. The pressure and cutoff terms remain the live analytic checks:
local pressure response must be estimated on the affine ball with same-rung
derivative factors absorbed by `\mathcal D_r^{aff}`, and the moving cutoff must
use `D_t y=G_j^{-1}(u-u(c_j)-A_j(x-c_j))`.

Thus the strengthened route is

```math
ACT.Stage(0),\ldots,ACT.Stage(m+2)
\Longrightarrow
ACT.E2.
\tag{ACT.StageRoute}
```

There is also a conditional scale-small route. Let `\mathcal X` be the
scale-normalized affine excess, not the full affine packet with arbitrary
center zero modes, and let `\mathcal N` be its scale-normalized dissipation.
The target inequality is

```math
\frac{d}{dt}\mathcal X
+
c_\nu\mathcal N
\le
L(t)\mathcal X
+
C\mathcal X^{1/2}\mathcal N
+
F(t),
\qquad
L,F\in L^1(I).
\tag{ACT.Scale1}
```

Choose `\varepsilon_\ast>0` with

```math
C(2\varepsilon_\ast)^{1/2}\le c_\nu/4.
\tag{ACT.Scale2}
```

If the initial excess and source budget obey

```math
\left(
\mathcal X(t_0)+\|F\|_{L^1}
\right)
\exp(\|L\|_{L^1})
<
2\varepsilon_\ast,
\tag{ACT.Scale3}
```

then the first-exit argument absorbs
`C\mathcal X^{1/2}\mathcal N` and gives

```math
\mathcal X\in L^\infty(I),
\qquad
\mathcal N\in L^1(I).
\tag{ACT.Scale4}
```

This gives the scale-small first-exit control on the chosen affine interval.
The `DTC.MA-Energy` subledger readouts require the separate `ACT.X-Readout`
step, packaged below as `AXP.A`. The zero-mode guardrail is essential: the raw
term `R^{-1}|\widetilde U_{0,j}|^2` is not made small by shrinking `R`. Center
amplitudes must be gauged away from `\mathcal X` or carried separately in
`L,F`. For a full strip, this branch needs a small-budget scheduler or
retained-window decomposition; finite `L,F` alone is not enough.

Equivalently, the named scale-small atoms are:

```math
ACT.X\text{-}Def:
\quad
\mathcal X^{exc}\ \text{is the small affine-excess packet,}
\qquad
\mathcal Y^{read}=\mathcal A_{\mathfrak p}^{ctr}+\mathcal X^{exc}
\text{ is the full readout packet;}
\tag{ACT.Scale5}
```

Here

```math
\mathcal A_{\mathfrak p}^{ctr}
:=
1+
\sum_j\sum_{q=0}^{m+2}
|\widetilde U_{q,j}|^2,
\qquad
\frac{d}{dt}\mathcal A_{\mathfrak p}^{ctr}
\le
L_A\mathcal A_{\mathfrak p}^{ctr}+F_A,
\quad
L_A,F_A\in L^1(I).
\tag{ACT.Scale5a}
```

The center ledger has its own Gronwall rule. It is not part of the smallness
variable. The noncircular pre-pressure piece is the lower core ledger; the top
two modes are readout/top-viscous buffer modes.

The sharpened center-amplitude target is:

```math
ACT.Actr_{\mathrm{core}}:
\quad
\mathcal K_{\le m}^{ctr}\in L^1(I)
\Longrightarrow
\mathcal A_{\mathrm{core}}^{ctr}\in L^\infty(I),
\tag{ACT.Scale5b}
```

where `\mathcal K_{\le m}^{ctr}` collects the zero-rung forcing `K_0(c_j)`,
the first-rung affine-frame acceleration `\mathcal E_j^{(1)}`, and the
transformed lower-rung forcings `\widetilde K_{q,j}` for `2\le q\le m`.
The supplier theorem now factors through `NKF.A`: the native center-forcing
packet `\mathcal P_{\le m}^{ctr,nat}\in L^1(I)` gives
`K0.Core + E1.Aff + Kmid.Core\in L^1(I)`, hence
`\mathcal K_{\le m}^{ctr}\in L^1(I)`. The pressure pieces are routed first
through the `ACT.X-Press_cell` component of `NKF.Native` in residual form:
define the native affine normal-form pressure `p_j^{aff}` by matching the
center-cell functionals of the affine and affine-linear pressure modes, then set
`\pi_j^{loc}=p_j^{loc}-p_j^{aff}`. The cell theorem controls the
`\pi_j^{loc}` center derivatives plus harmonic/far-tail terms, so neither the
pure `A_j^2` pressure nor the `A_jw_j` cross coefficient enters `ACT.Kcore` as
pre-core forcing. The energy
pressure estimate is `ACT.X-Press_energy` after `ACT.Actr_core` is available.
The harmonic tails are energy-controlled;
the lower viscous recycle is core-controlled, while the `m+1,m+2` viscous line
is carried as forcing/readout, not as a pre-pressure `A_buf` amplitude ledger.
Thus `NKF.Native => NKF.A => ACT.Kcore => ACT.Actr_core`, and then
`ACT.Actr_core` is the center coefficient input spent by `ACT.X-Press_energy`.
The top modes belong to
`\mathcal Y^{read}=\mathcal A_{\mathrm{core}}^{ctr}
+\mathcal A_{\mathrm{buf}}^{ctr}+\mathcal X^{exc}`. Proving them before
`ACT.X-Boot` would require the optional stronger input
`\sum_{q=m+1}^{m+2}\sum_j|\widetilde K_{q,j}|^2\in L^1(I)` and risks rung
creep.

Audit boundary for `ACT.Kcore`. A pressure/viscous estimate whose right-hand
side contains `\mathcal A_{\mathrm{core}}^{ctr}`,
`\mathfrak H^{osc,\alpha}`, or `Y_{\mathrm{read}}` is a post-readout estimate,
not a proof of the pre-pressure supplier `ACT.Kcore`. In the ordered route,
`ACT.Kcore` feeds `ACT.Actr_core`, while `ACT.Actr_core` and the affine-excess
readouts feed the later pressure/readout estimates. Therefore the direct
`ACT.Kcore` proof must supply `K0.Core`, `E1.Aff`, and `Kmid.Core` before
spending those downstream ledgers, unless the route is explicitly replaced by a
simultaneous core/excess bootstrap theorem.

The live native content is now `NKF.Native`: direct `L^1_t` control of the
pointwise center pressure/viscous forcing packet. Finite energy plus
`-\Delta p=\partial_i\partial_j(u_i u_j)` supplies distributional pressure
control and far-tail bounds, but not by itself the pointwise center derivatives
needed in `\mathcal P_{\le m}^{ctr,nat}`.

```math
ACT.X\text{-}Energy:
\quad
\frac{d}{dt}\mathcal X^{exc}
+
c_\nu\mathcal N
\le
L\mathcal X^{exc}
+
(C_{cut}+C_{press})(\mathcal X^{exc})^{1/2}\mathcal N
+
F;
\tag{ACT.Scale6}
```

This differential inequality is supplied by the affine-excess energy assembly
cell:

```math
AXE.A:
\quad
AXE.1+AXE.2+AXE.3+AXE.4
\Longrightarrow
ACT.X\text{-}Energy.
\tag{ACT.Scale6a}
```

Here `AXE.1` is the middle-block estimate, `AXE.2` is the pressure/top-viscous
estimate, `AXE.3` is the moving affine cutoff estimate, and `AXE.4` is the
viscous cutoff commutator estimate. These estimates are pre-receiver: they may
not use `LCI.A`, `CSP.A`, `OFP.A`, or `Field`.

```math
ACT.X\text{-}Scale
+
ACT.X\text{-}Boot
+
RWS.C_{\mathrm{scale}}
+
ACT.X\text{-}Readout
\Longrightarrow
ACT.A.
\tag{ACT.Scale7}
```

The readout step spends the full packet `\mathcal Y^{read}`, so the center
amplitude core ledger must be controlled directly by `ACT.Actr_core`; the
buffer modes are recovered through the readout packet rather than used as
pre-pressure coefficients.

The theorem-facing name for this propagation step is:

```math
AXP.A:
\quad
ACT.Actr_{\mathrm{core}}
+
ACT.X\text{-}Def
+
AXE.A
+
ACT.X\text{-}Scale
+
ACT.X\text{-}Boot
+
RWS.C_{\mathrm{scale}}
+
ACT.X\text{-}Readout
\Longrightarrow
\mathfrak H^{osc,\alpha}\in L^2(I)
\wedge
\mathfrak D_1^{aff}\in L^1(I)
\wedge
\mathfrak F^{ctr,res}\in L^1(I).
\tag{ACT.Scale7a}
```

`AXP.A` is only the affine-excess propagation/readout theorem. It does not
prove `ACT.X-Energy`, does not install `(FCI.5f)`, and does not supply the
endpoint matrix.

The compact receiver chain is:

```math
ACT.Actr_{\mathrm{core}}
+
ACT.X\text{-}Def
+
AXE.A
+
ACT.X\text{-}Scale
+
ACT.X\text{-}Boot
+
RWS.C_{\mathrm{scale}}
+
ACT.X\text{-}Readout
\Longrightarrow
ACT.A
\Longrightarrow
RCF.A
\Longrightarrow
LCI.A.
\tag{ACT.Scale7b}
```

The sharp proof order is now `NKF.Native => NKF.A => ACT.Kcore => ACT.Actr_core
=> ACT.X-Press_energy`, with `ACT.X-Press_cell` reading the residual pressure
`\pi_j^{loc}=p_j^{loc}-p_j^{aff}` after native affine normal-form
normalization rather than raw local pressure. Then the seed bridge `ACT.X-Scale` and the
readout-compatibility bridge `RWS.C_scale`. `ACT.X-Cut` is the structurally
favorable companion estimate. `ACT.X-Press_energy` is recorded as the affine
local pressure decomposition after affine and affine-linear pressure modes have
been annihilated in the center-cell functionals: the quadratic residual produces
`C_{press}(\mathcal X^{exc})^{1/2}\mathcal N`
for the same scale-small bootstrap as the cutoff term. The finite pressure
far-tail ledger is energy-controlled in `L^\infty(I)\subset L^1(I)`, and
top-viscous buffer modes are read through `Y_read`, not promoted into
`ACT.Actr_core`. It does not spend `LCI.A`, `CSP.A`, `OFP.A`, or `Field`.

For a full interval, `ACT.X-Boot` needs `ACT.X-Scale` at every retained restart
plus a small-budget scheduler: decompose the interval into affine budget
subintervals, prove the first-exit bound on each, and restart only
`\mathcal X^{exc}`. Because the seed radius may be smaller than the fixed
transported-center readout radius, `RWS.C_scale` must recover the fixed-radius
readouts from a finite dynamic cover by small restarted packets.

Record the boot bridge as

```math
ACT.X\text{-}Boot:
\quad
\left[
(C_{cut}+C_{press})(4\eta_X)^{1/2}\le c_\nu/2,
\quad
\bigl(\eta_X+\|F\|_{L^1(I_r)}\bigr)
e^{\|L\|_{L^1(I_r)}}\le2\eta_X
\ \text{on every retained window}
\right]
\Longrightarrow
\mathcal X^{exc}\in L^\infty(I),\quad \mathcal N\in L^1(I).
\tag{ACT.Scale7c}
```

This bridge is active only after `ACT.X-Scale` supplies the window-start
smallness. It is not implied by `L,F\in L^1(I)` alone.

The seed theorem is

```math
ACT.X\text{-}Scale:
\quad
\text{retained smooth center-ball regularity}
\Longrightarrow
\exists R_a>0:\ \mathcal X^{exc}(s_a;R_a)\le\eta_X.
\tag{ACT.Scale7d}
```

This is the restart/re-centering theorem needed to feed the next retained
window. Absolute continuity of the `L,F` integrals does not provide it.

The companion readout-compatibility theorem is

```math
RWS.C_{\mathrm{scale}}:
\quad
\text{finite dynamic same-fluid cover by small restarted packets}
\Longrightarrow
\text{fixed-radius }ACT.X\text{-Readout}.
\tag{ACT.Scale7e}
```

It avoids the false inference from small-radius excess to fixed-radius packet
smallness. The dynamic cover input is supplied by `RWS.C_cover` from compact
retained label tubes and the pack gauge.

If `(ACT.E1)` or `(ACT.E2)` lands, Gronwall gives
`\mathcal E_{ACT}\in L^\infty(I)`. Then local Morrey gives the oscillation
ledger, the affine first-rung readout gives `\mathfrak D_1^{aff}\in L^1`, and
the local pressure/top-viscous readout through the included `m+2` rungs gives
`\mathfrak F^{ctr,res}\in L^1`.

Thus:

```math
ACT.E1\ \text{or}\ ACT.E2
\Longrightarrow
ACT.A
\Longrightarrow
ATE.A
\Longrightarrow
RCF.A
\Longrightarrow
LCI.A.
\tag{ACT.Route}
```

So `ACT.A` is a valid consolidation of the live estimates, but not yet a closed
theorem.
