# MPP LCI.A Enlarged-Ball Oscillation Closure Note

## Status

Theorem-facing reduction note.

Role: isolate the exact oscillation-side supplier still missing beneath `LCI.A`
after the widened-shell reduction `LCI.B2f2a`--`LCI.B2f2b`.

This note does **not** widen the proof program. It does **not** replace the
transported-center coefficient route by a new scalar route. It does **not**
reopen the old Osgood obstruction. Its narrower job is:

```math
\boxed{
\text{state the one exact enlarged-ball closure lemma still needed on the oscillation side.}
}
\tag{EOC.0}
```

## Installed Inputs

Use only the already-installed lower-carrier surfaces.

1. [mpp-lower-carrier-interval-integrability-theorem-program.md](/Users/thomasbirnie/Workspace/ToE/Research-Consolidation/problems/navier-stokes/theorem-construction/mpp-lower-carrier-interval-integrability-theorem-program.md)
2. [mpp-collar-sobolev-packet-interval-propagation-theorem-program.md](/Users/thomasbirnie/Workspace/ToE/Research-Consolidation/problems/navier-stokes/theorem-construction/mpp-collar-sobolev-packet-interval-propagation-theorem-program.md)

## Purpose

The widened-shell route already reduces the oscillation-side package to one
carrier readout. The exact remaining question is no longer a new packet
identity. It is simply:

```math
\boxed{
\Omega_{N,m,\rho,\psi}^{osc,\sharp}\in L^2(I)?
}
\tag{EOC.1}
```

where the coefficient is measured on the enlarged transported-center balls.

## Enlarged-Ball Oscillation Coefficient

Retain the finite transported cover `(LCI.3c3l)` and define

```math
R_\delta^{osc}
:=
r_\delta+\frac{11}{2}\delta
\tag{EOC.2}
```

and

```math
\Omega_{N,m,\rho,\psi}^{osc,\sharp}(t)
:=
\sup_{1\le j\le J}
\sum_{q=0}^{m}
\left\|
U_q(\cdot,t)-U_q(\Phi(a^j,t),t)
\right\|_{L^\infty(B(\Phi(a^j,t),2R_\delta^{osc}))}.
\tag{EOC.3}
```

Equivalently, for any fixed `0<\alpha\le \frac12`, define the enlarged local
Holder ledger

```math
\mathfrak H_{N,m,\rho,\psi}^{osc,\sharp,\alpha}(t)
:=
\sup_{1\le j\le J}
\sum_{q=0}^{m}
\big[
U_q(\cdot,t)
\big]_{C^{0,\alpha}(B(\Phi(a^j,t),2R_\delta^{osc}))}.
\tag{EOC.4}
```

Then

```math
\Omega_{N,m,\rho,\psi}^{osc,\sharp}(t)
\le
(2R_\delta^{osc})^\alpha\,
\mathfrak H_{N,m,\rho,\psi}^{osc,\sharp,\alpha}(t).
\tag{EOC.5}
```

So `(EOC.1)` is equivalent to placing an enlarged local Holder ledger on the
same balls into `L^2(I)`.

## Existing Reduction Already On Disk

The widened-shell packet route already proves two things.

### Reduction `EOC.1a` (The widened-shell interval theorem introduces no new nonlinear family)

Replaying `LCI.B1` with the companion oscillation cutoff gives the packet law

```math
\frac{d}{dt}\mathcal G_{N,m,\rho,\psi}^{osc,\delta}(t)
+
(\nu-\varepsilon)\mathcal D_{N,m,\rho,\psi}^{osc,\delta}(t)
\le
C_{\varepsilon,m,\rho,\psi,\delta,I}
\big(1+\Gamma_\sharp(t)\big)
\big(1+\Gamma_{N,m,\rho,\psi}^{osc,sh}(t)\big)
\mathcal G_{N,m,\rho,\psi}^{osc,\delta}(t),
\tag{EOC.6}
```

which is exactly `(LCI.3c3z5j)`.

So the widened-shell theorem reduces to its outer-shell carrier. There is no
new nonlinear source family below it.

### Reduction `EOC.1b` (The widened-shell carrier already reads off from anchored centers plus the enlarged oscillation coefficient)

Lemma `LCI.B2f2b` gives

```math
\Gamma_{N,m,\rho,\psi}^{osc,sh}(t)
\le
C_{m,\rho,\psi,\delta,I}
\Big(
\mathfrak A_{N,m,\rho,\psi}^{ctr}(t)
+
\Omega_{N,m,\rho,\psi}^{osc,\sharp}(t)
\Big),
\tag{EOC.7}
```

which is exactly `(LCI.3c3z5j2)`.

So the supplier readout is already done. The only remaining oscillation-side
subslot is to place `(EOC.3)` or `(EOC.4)` into `L^2(I)`.

### Reduction `EOC.1c` (The non-circular enlarged-ball supplier has already been compressed to two pointwise center suppliers)

Corollary `OFP.C1g` in the one-field note now gives the explicit pointwise
reduction

```math
\Omega_{N,m,\rho,\psi}^{osc,\sharp}(t)^2
\le
C_{N,m,\lambda}
\left(
\mathfrak e_{N,\Gamma_\sharp(t)\rho}^{Eul,ctr}(t)
+
\rho^2\,
\mathfrak O_{F,\rho}^{ctr}(t)\,
\mathfrak C_{N+1,\rho,\psi}^{\delta+\delta_{seg}}(t)
\right),
\tag{EOC.7a}
```

provided the centerwise transport-geometry assumption `(OFP.10bi)` and the
scale condition `(OFP.10cb)` hold.

So the oscillation-side theorem is no longer waiting on a separate
center-segment supplier. Moreover, `OFP.C1i`--`OFP.C1j` now show that the
pack-oscillation modulus itself is propagated by the exact deformation law once
the pointwise Eulerian increment envelope and the label-halo first-rung
carrier are controlled. The current pointwise supplier split is:

1. the Eulerian increment envelope `\mathfrak e_{N,\Lambda}^{Eul,ctr}`;
2. the label-halo first-rung carrier `\mathfrak U_{1,\rho}^{halo,ctr}`;
3. the thickened common collar envelope
   `\mathfrak C_{N+1,\rho,\psi}^{\delta+\delta_{seg}}`.

Obstruction `OFP.C1k` then makes the remaining geometry exact: the current
transport-geometry hypothesis only reads the fixed enlarged-ball radius
`2R_\delta^{osc}`. The reverse image of the label halo is already controlled by
`X(B(a^j,\rho)\cap A_\sharp,t)\subset B(c_j(t),\Gamma_\sharp(t)\rho)`, but
that is a variable-radius ball. So the new geometric wall is a variable-radius
center-ball theorem proving the carrier bound for
`\mathfrak U_{1,\rho}^{halo,ctr}` on `B(c_j(t),\Gamma_\sharp(t)\rho)`.
The dedicated theorem-facing surface for that wall is now
[mpp-lci-a-variable-radius-center-ball-note.md](/Users/thomasbirnie/Workspace/ToE/Research-Consolidation/problems/navier-stokes/theorem-construction/mpp-lci-a-variable-radius-center-ball-note.md),
whose target theorem `VCB.A` is the minimal carrier statement needed here.

### Reduction `EOC.1d` (The pre-loop segment-thickness target is narrower than the returned collar fixed point)

The one-field note now isolates the non-circular segment-thickness supplier
before the `EOC.C` loop spends the thickened collar consumer. In the notation of
`OFP.C1e1`--`OFP.CellA`, define the label halo

```math
A_{\rho}^{halo,ctr}
:=
\left\{
a^j+\theta r:
1\le j\le J,\ 0<|r|\le\rho,\ 0\le\theta\le1
\right\},
\tag{EOC.7a0}
```

and the label-halo deformation-gradient envelope

```math
\mathfrak L_{F,\rho}^{halo,ctr}(t)
:=
\sup_{a\in A_{\rho}^{halo,ctr}}
\left|\nabla_aF(a,t)\right|
=
\sup_j\sup_{0<|r|\le\rho}\sup_{0\le\theta\le1}
\left|\nabla_aF(a^j+\theta r,t)\right|.
\tag{EOC.7b}
```

Then

```math
P_{F,\rho}^{ctr,\sharp}(t)^{1/2}
\le
\rho\,\mathfrak L_{F,\rho}^{halo,ctr}(t),
\tag{EOC.7c}
```

and hence

```math
\Gamma_\sharp(t)\rho
+
\rho P_{F,\rho}^{ctr,\sharp}(t)^{1/2}
\le
\rho\Gamma_\sharp(t)
+
\rho^2\mathfrak L_{F,\rho}^{halo,ctr}(t).
\tag{EOC.7d}
```

Therefore the segment-thickness condition needed by `OFP.C1f`,

```math
\Gamma_\sharp(t)\rho
+
\rho P_{F,\rho}^{ctr,\sharp}(t)^{1/2}
\le
\delta_{seg},
\tag{EOC.7e}
```

is supplied before using `CSP.A` if

```math
\Gamma_\sharp\in L^\infty(I),
\qquad
\mathfrak L_{F,\rho}^{halo,ctr}\in L^\infty(I).
\tag{EOC.7f}
```

A route-native sufficient supplier for `(EOC.7f)` is the differentiated
deformation law:

```math
\partial_t\nabla_aF
=
(\nabla_xU_1)(X)[F,F]
+
U_1(X)\nabla_aF,
\tag{EOC.7g}
```

which gives

```math
\Gamma_\sharp\in L^\infty(I),
\qquad
\mathfrak U_{1,\rho}^{halo,ctr}
+
\mathfrak U_{2,\rho}^{halo,ctr}
\in L^1(I),
\qquad
\mathfrak L_{F,\rho}^{halo,ctr}(t_0)<\infty
\Longrightarrow
\mathfrak L_{F,\rho}^{halo,ctr}\in L^\infty(I).
\tag{EOC.7h}
```

Thus the sharpened pre-loop theorem target is not another enlarged-ball or
halo-shell lemma. It is direct control of the extra transported segment
thickness `\delta_{seg}` from label-halo deformation regularity.

By itself, `(EOC.7h)` supplies only the segment-geometry input. It does
**not** supply the separate thickened collar consumer

```math
\mathfrak C_{N+1,\rho,\psi}^{\delta+\delta_{seg}}\in L^1(I),
\tag{EOC.7ha}
```

nor the stronger packet form

```math
\sup_{t\in I}\mathcal K_{N+1,m,\rho,\psi}^{\delta+\delta_{seg}}(t)<\infty.
\tag{EOC.7hb}
```

Those remain separate receiver-side obligations, and the widened receiver
return `(EOC.27)` remains separate as well.

The bounded self-check on the existing halo-shell packet leaves one precise
residue:

```math
\boxed{
\mathfrak U_{2,\rho}^{halo,ctr}\in L^1(I)
\text{ on the same-fluid label halo before }CSP.A_{\delta+\delta_{seg}}.
}
\tag{EOC.7i}
```

The first-rung halo carrier `\mathfrak U_{1,\rho}^{halo,ctr}` is already the
object around which `VCB.A` / `HSP.A` are organized. The new ingredient in the
pre-loop thickness route is the pulled-back `\nabla_xU_1` halo carrier
`(EOC.7i)`.

The companion still-live receiver-admission note now supplies `(EOC.7i)`, the
thickened collar consumer, and `(EOC.27)` together under one retained-window
hypothesis. Thus this paragraph remains the exact route-native split, while
Theorem `EOC.D` below records the direct still-live discharge.

## Target Theorem

### Target Theorem `EOC.A` (Enlarged-ball oscillation closure on the transported-center balls)

On the same-fluid interval `I`,

```math
\Omega_{N,m,\rho,\psi}^{osc,\sharp}\in L^2(I).
\tag{EOC.A0}
```

Equivalently, for any fixed `0<\alpha\le \frac12`,

```math
\mathfrak H_{N,m,\rho,\psi}^{osc,\sharp,\alpha}\in L^2(I).
\tag{EOC.A1}
```

This is the exact oscillation-side theorem still needed below `LCI.A`.

## Downstream Payoff

If `EOC.A` lands, then:

1. `(EOC.7)` places the widened-shell carrier in the transported-center
   coefficient class once `\mathfrak A_{N,m,\rho,\psi}^{ctr}\in L^2(I)` is also
   available;
2. because the original coefficient `\Omega_{N,m,\rho,\psi}^{osc}` is measured
   on the smaller balls `B(\Phi(a^j,t),2R_\delta)`, one has

```math
\Omega_{N,m,\rho,\psi}^{osc}(t)
\le
\Omega_{N,m,\rho,\psi}^{osc,\sharp}(t),
\tag{EOC.8}
```

   so `EOC.A` supplies the oscillation side of `(LCI.3c3y)`;
3. together with the bounded pack-side gauge `(LCI.3c3y0)` and the
   absolute-center side, Corollary `LCI.B2e` closes `LCI.B`;
4. Proposition `LCI.C` then yields `LCI.A`.

So this note isolates the oscillation-side branch to one exact theorem and
nothing coarser.

## Candidate Upward Repair

The geometric obstruction in `LCI.B2f2c` is that the current widened shell
still has plateau radius only large enough for `B(\Phi(a^j,t),2R_\delta)`, not
for the enlarged balls `B(\Phi(a^j,t),2R_\delta^{osc})`.

So the natural shell-side test is a companion enlarged shell whose plateau
actually reaches those balls.

### Candidate Reduction `EOC.B1` (A companion enlarged shell reaches the enlarged transported-center balls)

Introduce a second oscillation cutoff

```math
\vartheta_{\rho,\psi,t}^{osc,\sharp,\delta}(x)
:=
\Xi_{\delta}^{osc,\sharp}(d_{\rho,\psi}(x,t)),
\tag{EOC.9}
```

with a smooth profile satisfying

```math
0\le \Xi_{\delta}^{osc,\sharp}\le 1,
\qquad
\Xi_{\delta}^{osc,\sharp}(s)=1
\ \text{ for }\ s\le \delta+2R_\delta^{osc},
\qquad
\Xi_{\delta}^{osc,\sharp}(s)=0
\ \text{ for }\ s\ge 2\delta+2R_\delta^{osc},
\tag{EOC.10}
```

and derivative scale

```math
\|(\Xi_{\delta}^{osc,\sharp})'\|_{L^\infty}\le C_{\Xi,1}\delta^{-1},
\qquad
\|(\Xi_{\delta}^{osc,\sharp})''\|_{L^\infty}\le C_{\Xi,2}\delta^{-2}.
\tag{EOC.11}
```

Because each transported center obeys `d_{\rho,\psi}^{raw}(c_j(t),t)<\delta`,
every `x\in B(c_j(t),2R_\delta^{osc})` satisfies

```math
d_{\rho,\psi}^{raw}(x,t)
\le
d_{\rho,\psi}^{raw}(c_j(t),t)+|x-c_j(t)|
<
\delta+2R_\delta^{osc},
\tag{EOC.12}
```

so the enlarged balls lie in the plateau:

```math
B(\Phi(a^j,t),2R_\delta^{osc})
\subset
\{\vartheta_{\rho,\psi,t}^{osc,\sharp,\delta}=1\}.
\tag{EOC.13}
```

Write the companion support shell as

```math
\mathcal C_{\rho,\psi}^{osc,\sharp,\delta}(t)
:=
\big\{
x\in\mathbf R^3:
d_{\rho,\psi}(x,t)<2\delta+2R_\delta^{osc}
\big\}.
\tag{EOC.13a}
```

and the corresponding carrier ledger

```math
\Gamma_{N,m,\rho,\psi}^{osc,\sharp,sh}(t)
:=
1+\sum_{q=0}^{m}
\|U_q(\cdot,t)\|_{L^\infty(\mathcal C_{\rho,\psi}^{osc,\sharp,\delta}(t))}.
\tag{EOC.13b}
```

### Candidate Packet `EOC.B2` (Companion enlarged-shell packet reduces to its own outer-shell carrier)

Define

```math
\mathcal G_{N,m,\rho,\psi}^{osc,\sharp,\delta}(t)
:=
\sum_{q=0}^{m}\sum_{\beta=0}^{2}
\int
\big(\vartheta_{\rho,\psi,t}^{osc,\sharp,\delta}(x)\big)^2
\big|\nabla^\beta U_q(x,t)\big|^2\,dx,
\tag{EOC.14}
```

and similarly

```math
\mathcal D_{N,m,\rho,\psi}^{osc,\sharp,\delta}(t)
:=
\sum_{q=0}^{m}\sum_{\beta=0}^{2}
\int
\big(\vartheta_{\rho,\psi,t}^{osc,\sharp,\delta}(x)\big)^2
\big|\nabla^{\beta+1}U_q(x,t)\big|^2\,dx.
\tag{EOC.15}
```

Under the same hypotheses used in `LCI.B1`, the companion cutoff gives the
exact analogue of `(LCI.3c3z5j)`:

```math
\frac{d}{dt}\mathcal G_{N,m,\rho,\psi}^{osc,\sharp,\delta}(t)
+
(\nu-\varepsilon)\mathcal D_{N,m,\rho,\psi}^{osc,\sharp,\delta}(t)
\le
C_{\varepsilon,m,\rho,\psi,\delta,I}
\big(1+\Gamma_\sharp(t)\big)
\big(1+\Gamma_{N,m,\rho,\psi}^{osc,\sharp,sh}(t)\big)
\mathcal G_{N,m,\rho,\psi}^{osc,\sharp,\delta}(t).
\tag{EOC.15a}
```

So the companion shell reduces only to its own outer-shell carrier, not directly
to `EOC.A`.

### Candidate Reduction `EOC.B3` (The companion carrier reads off from a one-step larger oscillation coefficient)

Set

```math
R_\delta^{osc,2}
:=
r_\delta+2\delta+2R_\delta^{osc}
=
3r_\delta+13\delta
\tag{EOC.16}
```

and define the one-step larger oscillation coefficient

```math
\Omega_{N,m,\rho,\psi}^{osc,\sharp,2}(t)
:=
\sup_{1\le j\le J}
\sum_{q=0}^{m}
\left\|
U_q(\cdot,t)-U_q(\Phi(a^j,t),t)
\right\|_{L^\infty(B(\Phi(a^j,t),2R_\delta^{osc,2}))}.
\tag{EOC.17}
```

Then the same proof as `LCI.B2f2b` gives, for a.e. `t\in I`,

```math
\Gamma_{N,m,\rho,\psi}^{osc,\sharp,sh}(t)
\le
C_{m,\rho,\psi,\delta,I}
\Big(
\mathfrak A_{N,m,\rho,\psi}^{ctr}(t)
+
\Omega_{N,m,\rho,\psi}^{osc,\sharp,2}(t)
\Big).
\tag{EOC.18}
```

Indeed, if `x\in\mathcal C_{\rho,\psi}^{osc,\sharp,\delta}(t)`, then
`(CSP.14e)` gives `y\in\mathfrak P_{\rho,\psi}(t)` with
`|x-y|<2\delta+2R_\delta^{osc}`; the finite transported cover then gives some
`j` with `|y-\Phi(a^j,t)|<r_\delta`, hence

```math
|x-\Phi(a^j,t)|
\le
|x-y|+|y-\Phi(a^j,t)|
<
2\delta+2R_\delta^{osc}+r_\delta
=
R_\delta^{osc,2}
<
2R_\delta^{osc,2},
\tag{EOC.19}
```

which yields `(EOC.18)` exactly as in `(LCI.3c3z5j2)`.

### Consequence `EOC.B4` (One-step shell enlargement shifts the receiver outward)

If

```math
\sup_{t\in I}\mathcal G_{N,m,\rho,\psi}^{osc,\sharp,\delta}(t)<\infty,
\tag{EOC.20}
```

then fixed-radius local Sobolev/Morrey on the plateau balls from `(EOC.13)`
gives

```math
\mathfrak H_{N,m,\rho,\psi}^{osc,\sharp,\alpha}\in L^\infty(I)\subset L^2(I),
\tag{EOC.21}
```

hence `EOC.A`.

But `(EOC.15a)` and `(EOC.18)` show that the shell-side reduction is only

```math
\mathfrak A_{N,m,\rho,\psi}^{ctr}\in L^2(I)
\qquad
\Omega_{N,m,\rho,\psi}^{osc,\sharp,2}\in L^2(I)
\Longrightarrow
\Gamma_{N,m,\rho,\psi}^{osc,\sharp,sh}\in L^2(I)
\Longrightarrow
\sup_{t\in I}\mathcal G_{N,m,\rho,\psi}^{osc,\sharp,\delta}(t)<\infty
\Longrightarrow
EOC.A.
\tag{EOC.22}
```

So one-step shell enlargement does **not** close `EOC.A` by itself. It shifts
the missing oscillation receiver from `\Omega_{N,m,\rho,\psi}^{osc,\sharp}` to
the one-step larger coefficient `\Omega_{N,m,\rho,\psi}^{osc,\sharp,2}`.

### Obstruction `EOC.B5` (The companion enlarged shell is not the sharp live route)

The shell-side repair above is an honest bounded test, but it is not the
sharpest current theorem-facing route.

Reason: the one-field note already gives the direct pointwise supplier split
`(EOC.7a)`, namely

```math
\Omega_{N,m,\rho,\psi}^{osc,\sharp}(t)^2
\le
C_{N,m,\lambda}
\left(
\mathfrak e_{N,\Gamma_\sharp(t)\rho}^{Eul,ctr}(t)
+
\rho^2\,
\mathfrak O_{F,\rho}^{ctr}(t)\,
\mathfrak C_{N+1,\rho,\psi}^{\delta+\delta_{seg}}(t)
\right),
\tag{EOC.23}
```

under `(OFP.10bi)` and `(OFP.10cb)`.

Moreover, `OFP.C1i`--`OFP.C1j` make the pack-oscillation modulus itself
downstream of the Eulerian increment envelope, the label-halo first-rung
carrier, and the thickened collar envelope. So the present shell calculation
does not improve the live receiver stack. It only shows that a naive one-step
shell enlargement produces a radius cascade rather than a closed enlarged-ball
theorem.

### Exact Meaning of the Shell Test `EOC.B6`

Accordingly, the honest shell-side conclusion is:

```math
\boxed{
\text{one-step companion-shell propagation is a valid side calculation,}
\newline
\text{but by itself it only pushes the missing oscillation theorem out to }
\Omega_{N,m,\rho,\psi}^{osc,\sharp,2}.
}
\tag{EOC.24}
```

## Exact Attack Order

The honest next move is not to keep iterating shell enlargements.

Iterated shell enlargements only push the oscillation coefficient to larger
radii. The sharper current route stays on the pointwise reduction `(EOC.23)`
together with the deformation-law propagation step `OFP.C1i`--`OFP.C1j`.

The exact theorem order is therefore:

```math
\boxed{
\text{Eulerian increment envelope}
\ +\ 
\text{label-halo first-rung carrier}
\ +\ 
\text{thickened collar envelope}
\Longrightarrow
EOC.A
\Longrightarrow
AFD.A
\Longrightarrow
AFD.B
\Longrightarrow
RCF.A
\Longrightarrow
LCI.A.
}
\tag{EOC.25}
```

More explicitly, the attack I want is:

1. keep `EOC.A` on the already-installed pointwise supplier route, not on an
   indefinite shell-enlargement loop;
2. use `OFP.C1i`--`OFP.C1j` to replace the pack-oscillation modulus by the
   exact live supplier pair:
   the Eulerian increment envelope `\mathfrak e_{N,\Lambda}^{Eul,ctr}` and the
   label-halo first-rung carrier `\mathfrak U_{1,\rho}^{halo,ctr}`; the
   theorem-facing form of that carrier is `VCB.A`, and under the bounded
   pack-side gauge already imported on the transported-center receiver package
   its exact next-form theorem is the fixed halo-shell propagation `HSP.A`,
   which is itself reduced on disk to the fixed-scale transported-center
   increment theorem `FEI.A`; more sharply, `FEI.B3`, `FEI.C7`, and the
   pressure reductions `FPR.C3`--`FPR.C10` reduce that wall to the direct
   fixed-ball Holder theorem `FPC.H` on the pressure side, with the
   larger-radius transported-center envelope
   `\mathfrak e_{N,5\Lambda}^{Eul,ctr}` and the oscillation half already
   downstream of `FPC.H` by `LRE.C1`, with the widened collar envelope
   `\mathfrak C_{N+1,\rho,\psi}^{\delta+4\Lambda_{\delta,\rho}^{halo}}` as the
   coefficient-side companion, with `FPL.C` the branch-local direct sufficient
   theorem on that side, with `FPL.B` and `FPL.Ba` the installed implications
   into that lower packet and with `(FPS.H0)` / `FPC.A` only intermediate
   sufficient routes inside that pressure-side stack;
   on the top-viscous side the remaining direct branch runs through the
   fixed-radius top-rung Sobolev theorem `FVR.F`, whose first readout
   corollaries are `FVR.D` and `FVR.A`, with `FTL.C` the branch-local direct
   sufficient theorem on that side, with `FTS.C` only the intermediate
   one-rung-lower Sobolev route, with `(FTL.Bc0)` the sharper route-native
   moving-collar corollary and `FTL.B` / `FTL.Ba` the coarser collar
   implications into that local supplier stack, and with the coarser adjacent
   bypasses `FVR.B` and `FVR.C` skipping it; one step deeper `FCL.C` is the
   exact common still-local floor beneath both branch-local packets, with
   `(FTR.A2)` splitting that common floor relative to the pressure branch into
   `FPL.C` plus the enlarged-radius top-tail residue `FTR.C`, with
   `(FTSR.A0)` sharpening that top residue relative to the top-viscous branch
   into `FTL.C` plus the annular shell theorem `FTSR.C`, with its companion
`FTOC.C` rewriting that shell as a finite shifted-center cover theorem,
then more sharply through the shifted-center slab theorem `FTOC.D` and the
shifted-center top-rung Sobolev slab theorem `FTOC.E` to the one-rung-lower
shifted-slab Sobolev theorem `FTOC.F`, with `(FTOC.Bf0)` the sharper
route-native moving-collar packet supplier from `CSP.B3a1` for that extra
shifted-slab residue, with `(FTOC.Bc0)` only the weaker predecessor-side corollary,
and with `(FTOC.B0)` only the coarser widened-thickness collar fallback
there, while the older frozen-family packet theorem remains only adjacent
context and not the sharp direct route;
because `(FTOC.Bf0)` is exactly `CSP.B3a1` at thickness
`\delta+5\Lambda_{\delta,\rho}^{halo}`, this shifted-slab branch no longer
leaves an independent live local wall and has returned to the receiver-side
collar burden `CSP.B3a1`, while the common local floor still also spends the
branch-local top wall `FTL.C` and the pressure wall `FPL.C`, hence globally to
`CSP.A` only once `(FCI.5f)` is paired with that receiver-side theorem;
3. keep the thickened collar envelope
   `\mathfrak C_{N+1,\rho,\psi}^{\delta+\delta_{seg}}` as the shared geometric
   consumer on that branch;
4. once those inputs are integrated on `I`, first propagate
   `\mathfrak O_{F,\rho}^{ctr}` by `OFP.C1j`, then conclude `EOC.A` from
   `(EOC.23)`;
5. only after `EOC.A` return to the first-center-rung side `AFD.A`, then the
   theorem-facing bridge `AFD.B`, then the transported-center residual theorem
   `RCF.A`, and only then recover `LCI.A`; `AFD.B` is already closed in
   stronger form by
   [mpp-lci-a-affine-defect-to-first-rung-bridge-note.md](/Users/thomasbirnie/Workspace/ToE/Research-Consolidation/problems/navier-stokes/theorem-construction/mpp-lci-a-affine-defect-to-first-rung-bridge-note.md),
   so the live lower-order first-rung wall remains the supplier split beneath
   `AFD.A`; once the ordinary energy ledger is imported, that split collapses
   to the first-rung viscous center ledger isolated in
   [mpp-lci-a-first-rung-viscous-center-supplier-note.md](/Users/thomasbirnie/Workspace/ToE/Research-Consolidation/problems/navier-stokes/theorem-construction/mpp-lci-a-first-rung-viscous-center-supplier-note.md);
   when `m\ge 3`, the stronger lower-order halo-shell packet `HSP.A0a`,
   together with the imported ordinary energy ledger and the remaining `AFD.A`
   inputs, feeds `AFD.A` directly by Corollary `AFS.C`, so the sharper
   next-form target on that branch is `HSP.A0a`; because `HSP.A0a` is the
   installed stronger form beneath `HSP.A`, that sharper branch does not stop
   there either: its honest direct successor is already the fixed-increment
   source law `FEI.C7`, with the sharper route-native nonlocal return
   `(HSP.Bc0)\equiv(FEI.Bc0)`. The companion return note
   [mpp-lci-a-halo-shell-first-rung-return-note.md](/Users/thomasbirnie/Workspace/ToE/Research-Consolidation/problems/navier-stokes/theorem-construction/mpp-lci-a-halo-shell-first-rung-return-note.md)
   now makes the terminal continuation explicit there too: once that FEI
   continuation is unpacked, the branch reopens only returned lower-carrier
   reads and feeds back into the already-installed `LCI.A` route.

So the next mathematical burden is now:

```math
\boxed{
\text{pair the widened receiver-side collar return with the common thickened collar consumer pre-`CSP.A`,}
\newline
\text{so the halo/increment supplier pair is discharged through `EOC.C`,}
\newline
\text{while treating the companion shell only as a bounded side calculation.}
}
\tag{EOC.26}
```

### Corollary `EOC.C` (The widened receiver-side collar return already closes the halo/increment supplier pair once the common thickened collar consumer is installed)

Retain the transport-geometry and segment-thickness hypotheses `(OFP.10bi)` and
`(OFP.10cb)`, together with the bounded pack-side gauge
`M_\sharp=\|\Gamma_\sharp\|_{L^\infty(I)}` from `(HSP.1)`. Assume

```math
\sup_{t\in I}
\mathcal G_{N+4,N+4,\rho,\psi}^{low,\delta+5\Lambda_{\delta,\rho}^{halo}}(t)
<
\infty,
\tag{EOC.27}
```

```math
\mathfrak C_{N+1,\rho,\psi}^{\delta+\delta_{seg}}\in L^1(I),
\tag{EOC.29}
```

and

```math
\mathfrak O_{F,\rho}^{ctr}(t_0)<\infty.
\tag{EOC.30}
```

Then

```math
\mathfrak O_{F,\rho}^{ctr}\in L^\infty(I),
\qquad
\Omega_{N,m,\rho,\psi}^{osc,\sharp}\in L^2(I),
\tag{EOC.31}
```

hence `EOC.A`.

### Proof

By `HSP.1` and `FEI.1`,

```math
\Gamma_\sharp(t)\rho
\le
M_\sharp\rho
=
R_{\rho}^{halo,\ast}
\le
R_{\delta,\rho}^{halo}
\le
\Lambda_{\delta,\rho}^{halo},
\qquad t\in I.
\tag{EOC.32}
```

So Corollary `FEI.Bc` yields

```math
\mathfrak e_{N,\Gamma_\sharp(\cdot)\rho}^{Eul,ctr}(t)
\le
\mathfrak e_{N,\Lambda_{\delta,\rho}^{halo}}^{Eul,ctr}(t)
\quad\text{for a.e. }t\in I,
\tag{EOC.33}
```

hence
`\mathfrak e_{N,\Gamma_\sharp(\cdot)\rho}^{Eul,ctr}\in L^1(I)`. Corollary
`VCB.Bc` gives
`\mathfrak U_{1,\rho}^{halo,ctr}\in L^\infty(I)\subset L^1(I)`. Combining this,
`(EOC.29)`, and the bounded pack-side gauge with `(OFP.10cx)`, Corollary
`OFP.C1j` yields

```math
\mathfrak O_{F,\rho}^{ctr}\in L^\infty(I).
\tag{EOC.34}
```

Substituting `(EOC.33)`, `(EOC.34)`, and `(EOC.29)` into `(EOC.23)` gives for
a.e. `t\in I`,

```math
\Omega_{N,m,\rho,\psi}^{osc,\sharp}(t)^2
\le
C_{N,m,\lambda}
\left(
\mathfrak e_{N,\Gamma_\sharp(t)\rho}^{Eul,ctr}(t)
+
\rho^2\,
\mathfrak O_{F,\rho}^{ctr}(t)\,
\mathfrak C_{N+1,\rho,\psi}^{\delta+\delta_{seg}}(t)
\right),
\tag{EOC.35}
```

and the right-hand side lies in `L^1(I)`. Therefore
`\Omega_{N,m,\rho,\psi}^{osc,\sharp}\in L^2(I)`, i.e. `EOC.A`. ∎

### Corollary `EOC.Ca` (The route-native common consumer form is `CSP.A` at thickness `\delta+\delta_{seg}`)

Retain the hypotheses `(OFP.10bi)`, `(OFP.10cb)`, `(EOC.27)`, and `(EOC.30)`.
Assume in addition

```math
\sup_{t\in I}
\mathcal K_{N+1,m,\rho,\psi}^{\delta+\delta_{seg}}(t)
<
\infty.
\tag{EOC.36}
```

Then `EOC.A` holds.

### Proof

By `(PC.14)`,

```math
\mathfrak C_{N+1,\rho,\psi}^{\delta+\delta_{seg}}(t)
\le
C_{\mathrm{EOC}}
\mathcal K_{N+1,m,\rho,\psi}^{\delta+\delta_{seg}}(t)
\qquad
\text{for a.e. }t\in I.
\tag{EOC.37}
```

Since `I` is finite, `(EOC.36)` implies
`\mathfrak C_{N+1,\rho,\psi}^{\delta+\delta_{seg}}\in L^1(I)`. This is exactly
the common consumer hypothesis `(EOC.29)`, so Corollary `EOC.C` gives `EOC.A`.
∎

### Theorem `EOC.D` (Pre-`CSP.A` still-live receiver admission closes `EOC.A`)

Assume the common still-live receiver-admission hypotheses from
[mpp-lci-a-pre-csp-still-live-receiver-admission-note.md](/Users/thomasbirnie/Workspace/ToE/Research-Consolidation/problems/navier-stokes/theorem-construction/mpp-lci-a-pre-csp-still-live-receiver-admission-note.md):

```math
\mathcal R_{\rho,\psi}^{pre}(t)\subset Q_t^{rec,+}
\qquad(t\in I),
\tag{EOC.39}
```

with the finite support-volume and still-live smoothness bounds `(SLR.4)` and
`(SLR.5)`. Assume also the transport-geometry hypotheses `(OFP.10bi)` and

```math
\Gamma_\sharp\in L^\infty(I),
\qquad
\mathfrak L_{F,\rho}^{halo,ctr}(t_0)<\infty,
\qquad
\mathfrak O_{F,\rho}^{ctr}(t_0)<\infty.
\tag{EOC.40}
```

Then `EOC.A` holds.

### Proof

The still-live receiver-admission note gives three inputs on the same retained
window:

```math
\mathfrak U_{2,\rho}^{halo,ctr}\in L^1(I)
\Longrightarrow
\text{segment geometry }(OFP.10cb),
\tag{EOC.41}
```

```math
\sup_{t\in I}
\mathcal K_{N+1,m,\rho,\psi}^{\delta+\delta_{seg}}(t)<\infty,
\tag{EOC.42}
```

and

```math
\sup_{t\in I}
\mathcal G_{N+4,N+4,\rho,\psi}^{low,\delta+5\Lambda_{\delta,\rho}^{halo}}(t)
<\infty.
\tag{EOC.43}
```

Here `(EOC.41)` is Corollary `SLR.A1`, `(EOC.42)` is Lemma `SLR.B`, and
`(EOC.43)` is Lemma `SLR.C`. Thus `(OFP.10cb)`, `(EOC.36)`, and `(EOC.27)` all
hold. Together with `(OFP.10bi)` and `(EOC.30)`, Corollary `EOC.Ca` applies
and yields `EOC.A`. ∎

### Corollary `EOC.E` (Receiver recombination after the segment-thickness cell)

After `OFP.CellA`, the enlarged-ball oscillation closure is exactly the
following repo-native recombination:

```math
\boxed{\mathfrak U_{2,\rho}^{halo,ctr}\in L^1(I)}
\Longrightarrow
\boxed{(OFP.10cb)},
\tag{EOC.46}
```

The new halo-gradient carrier return note sharpens the input in `(EOC.46)`:

```math
(EOC.27)
+
\mathfrak A_{N,m,\rho,\psi}^{ctr}\in L^1(I)
\Longrightarrow
\mathfrak U_{2,\rho}^{halo,ctr}\in L^1(I),
\tag{EOC.46a}
```

for `2\le m\le N`; hence, with the first-rung and initial
deformation-gradient hypotheses from `OFP.C1e2`,

```math
(EOC.27)
+
\mathfrak A_{N,m,\rho,\psi}^{ctr}\in L^1(I)
\Longrightarrow
(OFP.10cb).
\tag{EOC.46b}
```

```math
\boxed{
\mathfrak C_{N+1,\rho,\psi}^{\delta+\delta_{seg}}\in L^1(I)
\ \text{or}\
\sup_I\mathcal K_{N+1,m,\rho,\psi}^{\delta+\delta_{seg}}<\infty
},
\tag{EOC.47}
```

Here the stronger packet form is the widened-thickness collar theorem
`WTC.A` with
`\delta_\ast:=\delta+\delta_{seg}`. Its separate source-side input is
`(FCI.5f)`, and its only thickness-sensitive receiver slot is
`WTC.4`,

```math
\Gamma_{N,m,\rho,\psi}^{low,\delta_\ast}\in L^1(I),
\tag{EOC.47a}
```

which `WTL.A` identifies with `LCI.A_{\delta_\ast}`.

```math
\boxed{(EOC.27)}
\tag{EOC.48}
```

The widened receiver return `(EOC.27)` is the old lower-order collar packet
theorem `LCI.B` at enlarged parameters, equivalently `WRR.A` / `WRR.2`.

Finally,

```math
(EOC.27)
+
\mathfrak C_{N+1,\rho,\psi}^{\delta+\delta_{seg}}\in L^1(I)
+
(OFP.10cb)
\Longrightarrow
EOC.A.
\tag{EOC.49}
```

Thus `EOC.A` is no longer a monolithic receiver wall. Its next proof-cell
order is: widened return as `WRR.A`, anchored-center ledger plus `U2H.A` to
obtain the segment geometry `(OFP.10cb)`, thickened collar consumer as `WTC.A`
with `WTC.4 -> WTL.A` and `(FCI.5f)` separate, then recombination. The
still-live receiver-admission theorem `EOC.D` supplies the same inputs on
retained still-live windows, but it is a sufficient bypass of this repo-native
queue rather than its replacement.

After `U2H.A`, the segment-thickness side of that queue is handled. The next
live receiver-side cell is the thickness-sensitive lower-carrier slot

```math
\boxed{
\Gamma_{N,m,\rho,\psi}^{low,\delta+\delta_{seg}}\in L^1(I),
}
\tag{EOC.49a}
```

equivalently `WTL.C` / `LCI.A_{\delta+\delta_{seg}}`, while `(FCI.5f)` remains
the parallel source-side frozen-family burden. Supplying those two entries
gives `CSP.A_{\delta+\delta_{seg}}` by `WTC.A`, and `(EOC.49)` then gives
`EOC.A`.

## Honest Boundary

The present widened-shell readout proposition `LCI.B2f3` does **not** prove
`EOC.A`. It only gives local Holder control on the smaller balls
`B(\Phi(a^j,t),2R_\delta)` because the current plateau geometry proves
`\vartheta_{\rho,\psi,t}^{osc,\delta}\equiv 1` only there.

That is why `LCI.B2f2c` is the honest obstruction line. But the pointwise
supplier route is now sharper than the older widened-shell narration:
`OFP.C1g` has already collapsed the non-circular enlarged-ball theorem to the
Eulerian increment envelope plus the pack-oscillation modulus, and
`OFP.C1i`--`OFP.C1j` then make that pack-oscillation modulus itself downstream
of the Eulerian increment envelope, the label-halo first-rung carrier, and the
thickened collar envelope. The companion-shell calculation above sharpens this
further in one direction: it shows that naive shell enlargement produces a
radius cascade rather than a closed theorem, so the live oscillation-side wall
is not honestly “prove one more shell theorem.” The remaining geometric burden
is exactly the variable-radius center-ball theorem isolated in `OFP.C1k`, not a
vague larger-shell hope.

What is **not** yet on disk is no longer a separate pre-`CSP.A` proof of the
Eulerian increment envelope and the label-halo first-rung carrier once the
widened receiver-side packet `(EOC.27)` is granted. Corollary `EOC.C` shows
that those two suppliers are already downstream of that widened return.

The pre-loop segment-thickness reduction above sharpens the remaining common
consumer package one level further. It separates:

1. the segment-geometry condition `(OFP.10cb)`, which is supplied by
   `OFP.C1e3` once the pulled-back `\nabla_xU_1` halo carrier is available,
   and the new `U2H.A` theorem supplies that carrier from `(EOC.27)` plus the
   anchored-center ledger;
2. the actual thickened collar consumer `(EOC.29)`, or equivalently
   `CSP.A_{\delta+\delta_{seg}}`, which remains a separate receiver-side
   obligation;
3. the widened receiver-side return `(EOC.27)`, which also remains separate.

The still-live receiver-admission theorem `EOC.D` discharges all three on one
retained still-live route. The route-native `LCI` / `CSP` compression still
terminates at the fixed point recorded below, but that retained-window
admission route no longer leaves the segment residue, thickened consumer, or
widened return open when its compact still-live receiver hypothesis is granted.

The companion note
[mpp-lci-a-widened-receiver-return-note.md](/Users/thomasbirnie/Workspace/ToE/Research-Consolidation/problems/navier-stokes/theorem-construction/mpp-lci-a-widened-receiver-return-note.md)
sharpens the widened-return side further: `(EOC.27)` is itself just the old
lower-order collar packet theorem `LCI.B` at enlarged depth `N+4` and enlarged
thickness `\delta+5\Lambda_{\delta,\rho}^{halo}`, not a new widened-return
family.

With that note together with the widened-thickness collar/lower-carrier notes,
the route-native `EOC` receiver is now fully expressed in old theorem families.
The companion fixed-point note
[mpp-lci-a-route-native-fixed-point-note.md](/Users/thomasbirnie/Workspace/ToE/Research-Consolidation/problems/navier-stokes/theorem-construction/mpp-lci-a-route-native-fixed-point-note.md)
records the exact consequence: this receiver compression has terminated at an
`EOC` / `LCI` fixed point rather than producing a genuinely external supplier.

In route-native theorem form, Corollary `EOC.Ca` shows that this common
consumer is exactly `CSP.A` instantiated at thickness `\delta+\delta_{seg}`.
So the honest route-native `EOC`-surface wall is:

```math
\boxed{
\text{widened receiver-side return }(EOC.27)\text{ + }
CSP.A_{\delta+\delta_{seg}}
\Longrightarrow
EOC.A.
}
\tag{EOC.38}
```

If one insists on a stronger non-circular oscillation import upstream of
`LCI.A`, the exact bypass surface beneath `(EOC.38)` is now isolated in
[mpp-lci-a-pre-csp-common-consumer-bypass-note.md](/Users/thomasbirnie/Workspace/ToE/Research-Consolidation/problems/navier-stokes/theorem-construction/mpp-lci-a-pre-csp-common-consumer-bypass-note.md):
keep the widened return `(EOC.27)` separate, and replace the route-native
consumer `CSP.A_{\delta+\delta_{seg}}` by a direct pre-`CSP.A` theorem for the
common thickened collar consumer. In packet-theorem form, that stronger input
is just the widened-thickness instance of the old common-object collar packet
target `FCI.B`, not a new theorem family. The companion note
[mpp-lci-a-widened-thickness-collar-wall-note.md](/Users/thomasbirnie/Workspace/ToE/Research-Consolidation/problems/navier-stokes/theorem-construction/mpp-lci-a-widened-thickness-collar-wall-note.md)
now records the sharper consequence: because `CSP.A` is already a fixed-
thickness generic theorem, this thicker consumer reopens only the old collar
wall `CSP.8`, not a new enlarged-thickness collar burden; and within that
widened receiver package, the only thickness-sensitive slot is the thicker
lower same-fluid carrier ledger, which the companion widened-thickness
lower-carrier note identifies as just `LCI.A` at the thicker radius.

The still-live receiver-admission note supplies that bypass directly on
retained still-live windows and also supplies `(EOC.27)` and the segment
geometry. Thus the receiver-side alternatives now split cleanly:

```math
\text{still-live receiver admission}
\Longrightarrow
EOC.A,
\tag{EOC.44}
```

whereas the purely route-native widened-family compression remains the fixed
point

```math
EOC.A
\Longleftrightarrow
LCI\text{-family receiver input at enlarged depth/thickness}.
\tag{EOC.45}
```

Route-natively, there is still no theorem currently on disk comparing
`\delta_{seg}` to `5\Lambda_{\delta,\rho}^{halo}` and thereby deriving
`\mathfrak C_{N+1,\rho,\psi}^{\delta+\delta_{seg}}` directly from the widened
receiver-side packet `(EOC.27)`. So the common thickened collar consumer
remains a genuinely separate hypothesis at the route-native `EOC` surface.

By `(OFP.10cb)`, such a comparison would in particular require a non-circular
pre-`OFP.C1j` bound on
`\rho\,P_{F,\rho}^{ctr,\sharp}(t)^{1/2}`. But `(OFP.10by)` only reduces
`P_{F,\rho}^{ctr,\sharp}` to the pack-oscillation modulus
`\mathfrak O_{F,\rho}^{ctr}`, and `\mathfrak O_{F,\rho}^{ctr}` is exactly the
quantity propagated by `OFP.C1j` inside Corollary `EOC.C`. So the missing
`\delta_{seg}`-to-`5\Lambda_{\delta,\rho}^{halo}` comparison is presently
circular on the installed route.
