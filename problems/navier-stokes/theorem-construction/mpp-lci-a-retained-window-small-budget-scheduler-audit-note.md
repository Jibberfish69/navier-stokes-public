# MPP LCI.A Retained-Window Small-Budget Scheduler Audit Note

## Status

Theorem-facing scheduler audit.

Role: isolate the exact compactness burden inside the scale-small affine-excess
route beneath `DTC.M-Affine`.

This note audits the bridge now decomposed as `ACT.X-Boot` plus its seed input
`ACT.X-Scale` in
[mpp-lci-a-direct-transported-center-package-note.md](/Users/thomasbirnie/Workspace/ToE/Research-Consolidation/problems/navier-stokes/theorem-construction/mpp-lci-a-direct-transported-center-package-note.md).

## Local Bootstrap Input

The scale-small affine-excess route starts from the differential inequality

```math
\frac{d}{dt}\mathcal X^{exc}
+
c_\nu\mathcal N
\le
L(t)\mathcal X^{exc}
+
C_X(\mathcal X^{exc})^{1/2}\mathcal N
+
F(t),
\qquad
L,F\in L^1(I).
\tag{RWS.0}
```

Here `C_X=C_{cut}+C_{press}` after the core/buffer correction: the moving
cutoff and local pressure remainder both contribute scale-small
`\mathcal X^{exc\,1/2}\mathcal N` terms.

The first-exit bootstrap closes on a subinterval `J=[s,t]` if

```math
\mathcal X^{exc}(s)\le\eta_X
\tag{RWS.1}
```

and

```math
\left(
\mathcal X^{exc}(s)+\int_J F(\tau)\,d\tau
\right)
\exp\left(\int_J L(\tau)\,d\tau\right)
\le
2\eta_X.
\tag{RWS.2}
```

Then

```math
\mathcal X^{exc}\in L^\infty(J),
\qquad
\mathcal N\in L^1(J).
\tag{RWS.3}
```

This is the local `ACT.X-Absorb` piece, not the seed theorem itself.

## Easy Partition Lemma `RWS.Part`

Assume a finite family of retained windows

```math
I=\bigcup_{a=0}^{A-1}I_a,
\qquad
I_a=[s_a,s_{a+1}],
\tag{RWS.4}
```

has already been chosen, and assume the small-start condition

```math
\mathcal X_a^{exc}(s_a)\le\eta_X
\qquad
\text{for every retained restart }s_a.
\tag{RWS.5}
```

If `L_a,F_a\in L^1(I_a)` are the coefficient budgets for the corresponding
restarted affine packets, then after refining the retained windows if necessary
one may arrange

```math
\left(
\mathcal X_a^{exc}(s_a)+\int_{I_a}F_a(t)\,dt
\right)
\exp\left(\int_{I_a}L_a(t)\,dt\right)
\le
2\eta_X
\tag{RWS.6}
```

for every `a`, provided the refinement is allowed to use only the already-known
`L^1` masses of `L_a,F_a` and the finite retained-window geometry.

This proves only:

```math
\text{small starts at every restart}
+
L^1\text{ budgets}
\Longrightarrow
ACT.X\text{-}Boot\text{ on the retained cover.}
\tag{RWS.7}
```

It does not prove the small starts.

## Obstruction `ACT.X-Seed`

The hard compactness point is not the absolute-continuity partition of `L` and
`F`. The hard point is the restart smallness condition `(RWS.5)`.

On a completed bootstrap interval, `ACT.X-Boot` gives only

```math
\mathcal X_a^{exc}(s_{a+1})\le2\eta_X.
\tag{RWS.8}
```

It does not give the next required input

```math
\mathcal X_{a+1}^{exc}(s_{a+1})\le\eta_X.
\tag{RWS.9}
```

Restarting the affine frame at `s_{a+1}` removes the center affine motion from
the coordinate system, but it does not by itself provide the small seed. The
live input is `ACT.X-Scale`: choose an admissible radius at the retained smooth
center ball so the affine excess is below `\eta_X`.

## Required Seed Theorem `ACT.X-Scale`

The missing input beneath the scheduler is not a fixed-scale reset theorem. The
bootstrap consumes only a scale-small affine-excess seed:

```math
ACT.X\text{-}Scale:
\qquad
\forall s_a\in I,\ \forall \eta_X>0,\ \exists R_a>0
\quad\text{such that}\quad
\mathcal X^{exc}(s_a;R_a)\le\eta_X.
\tag{RWS.10}
```

with admissibility

```math
B(c_j(s_a),2R_a)\subset Q_{s_a}^{rec,+}
\qquad(1\le j\le J).
\tag{RWS.11}
```

`ACT.X-Boot` consumes `(RWS.10)` as `ACT.X-Seed`; retained smooth center-ball
regularity is the proof source for `(RWS.10)`.

## Proof Source

At a retained restart time `s_a`, reset the affine frame by

```math
G_j(s_a)=I,
\qquad
\dot G_j=A_jG_j,
\qquad
A_j(s_a)=U_1(c_j(s_a),s_a).
\tag{RWS.12}
```

The affine remainder is

```math
R_{q,j}(y,s_a)
=
\mathcal C_{G_j(s_a)}^{-1}
\left(
U_q(c_j(s_a)+G_j(s_a)y,s_a)-U_q(c_j(s_a),s_a)
\right).
\tag{RWS.13}
```

For `q=1`, this is the installed first-rung excess
`U_1(c_j+G_jy,s_a)-U_1(c_j,s_a)`, conjugated by the frame. It does not subtract
an additional `\nabla U_1(c_j,s_a)y` term; doing so would define a different
packet. On a retained smooth center ball, each finite-depth `U_q` has the local
continuity required by the installed affine-excess packet after subtracting the
center value (and, for the velocity rung, after removing the transported center
translation). Therefore

```math
\mathcal X^{exc}(s_a;R)\to0
\qquad(R\downarrow0).
\tag{RWS.14}
```

Since the centers, rungs, and derivatives are finite, choose one admissible
radius `R_a` so that `(RWS.10)` holds for every center and required rung. This
is licensed only for shrink-admissible excess slots: derivative slots require
`\sigma_{\beta,q}+3>0`, zero-order centered slots require
`\sigma_{0,q}+5>0`, and any scale-invariant derivative slot with
`\sigma_{\beta,q}=-3` must be carried by `Y_{\mathrm{read}}` rather than
`\mathcal X^{exc}`.

## Audit Consequence

The scale-small route now has the exact live input:

```math
\boxed{ACT.X\text{-}Scale}
\Longrightarrow
ACT.X\text{-}Seed
\Longrightarrow
ACT.X\text{-}Boot.
\tag{RWS.15}
```

The finite-window partition is easy after small starts; the small starts are
the actual theorem. `L,F\in L^1` alone never supplies `ACT.X-Seed`.

## Scale-Recovery / Readout-Compatibility Bridge `RWS.C_scale`

`ACT.X-Scale` gives smallness only after choosing a sufficiently small affine
radius. It does not imply that the original fixed-radius packet is small:

```math
\mathcal X^{exc}_{small}(s_a)<\eta_X
\not\Longrightarrow
\mathcal X^{exc}_{R_{\mathfrak p}^{TC}}(s_a)<\eta_X.
\tag{RWS.C0}
```

The valid replacement is finite small-radius covering plus readout
compatibility.

### Theorem `RWS.C_scale`

Fix a required transported-center radius `R_{\mathfrak p}^{TC}` and a retained
window `I_a=[s_a,s_{a+1}]`. Assume:

```math
\Gamma_\sharp\in L^\infty(I_a).
\tag{RWS.C1}
```

Assume a finite dynamic same-fluid subcenter cover of the fixed readout ball:
there are labels `a^{j,b}` in the retained collar, centers
`c_{j,b}(t)=\Phi(a^{j,b},t)`, radii `r_b`, and constants
`N_{ov},N_{chain}<\infty` such that for every `t\in I_a`,

```math
B(c_j(t),R_{\mathfrak p}^{TC})
\subset
\bigcup_{b=1}^{B_j}B(c_{j,b}(t),\kappa_\sharp r_b),
\tag{RWS.C2}
```

with overlap bounded by `N_{ov}` and with every two points in the large ball
connectable by a chain of at most `N_{chain}` overlapping cover balls.

This is the corrected cover hypothesis. A physical cover of
`B(c_j(s_a),R_{\mathfrak p}^{TC})` at one time is not enough by itself; one needs
either `(RWS.C2)` directly or a label-tube cover of

```math
\{a:\exists t\in I_a,\ \Phi(a,t)\in B(c_j(t),R_{\mathfrak p}^{TC})\}
\tag{RWS.C2a}
```

whose transported images give `(RWS.C2)`.

### Supplier `RWS.C_cover`

The dynamic cover `(RWS.C2)` is supplied by compactness of the retained label
tube. Define

```math
\mathcal A_{j,R}^{tube}(I_a)
:=
\left\{
a\ \text{in the retained same-fluid collar}:
\exists t\in I_a,\ \Phi(a,t)\in B(c_j(t),R_{\mathfrak p}^{TC})
\right\}.
\tag{RWS.C2b}
```

Assume this label tube is compact and remains inside the retained collar. For
each `a\in\mathcal A_{j,R}^{tube}(I_a)`, `ACT.X-Scale` at the restart time
supplies an admissible radius `r(a)>0` with small affine seed. The label balls
`B(a,r(a))` form an open cover of the compact tube, so choose a finite subcover
with centers `a^{j,b}` and radii `r_b`.

If `x\in B(c_j(t),R_{\mathfrak p}^{TC})`, then its label
`a=\Phi_t^{-1}(x)` belongs to `\mathcal A_{j,R}^{tube}(I_a)`, hence
`a\in B(a^{j,b},r_b)` for some `b`. The pack gauge gives

```math
|x-c_{j,b}(t)|
=
|\Phi(a,t)-\Phi(a^{j,b},t)|
\le
\Gamma_\sharp(t)r_b
\le
M_\sharp r_b.
\tag{RWS.C2c}
```

Thus `(RWS.C2)` holds with `\kappa_\sharp=M_\sharp`. Since the subcover is
finite, finite overlap and a finite chain constant are obtained after a standard
finite refinement. Therefore

```math
RWS.C_{\mathrm{cover}}:
\quad
\text{compact retained label tube}
+
\Gamma_\sharp\in L^\infty(I_a)
+
ACT.X\text{-}Scale
\Longrightarrow
\text{dynamic same-fluid cover }(RWS.C2).
\tag{RWS.C2d}
```

This is the repaired version of the flawed one-time physical cover argument:
the cover is built in label space over the whole retained tube, not only on the
single physical ball at the restart time.

For every subcenter, assume `ACT.X-Scale` supplies a seed radius and
`ACT.X-Boot` propagates the restarted excess packet:

```math
\mathcal X_{j,b}^{exc}\in L^\infty(I_a),
\qquad
\mathcal N_{j,b}\in L^1(I_a).
\tag{RWS.C3}
```

Assume also the corresponding small-ball full readout packet is bounded:

```math
\mathcal Y_{j,b}^{read}
:=
\mathcal A_{j,b,\mathrm{core}}^{ctr}
+
\mathcal A_{j,b,\mathrm{buf}}^{ctr}
+
\mathcal X_{j,b}^{exc}
\in L^\infty(I_a),
\tag{RWS.C4}
```

where the core modes are supplied by `ACT.Actr_core` and the buffer modes
`m+1,m+2` are readout/top-viscous data, not pre-pressure Gronwall data.

Then the fixed-radius transported-center readouts on `I_a` hold:

```math
\mathfrak H_{N,m,\rho,\psi}^{osc,\alpha}\in L^2(I_a),
\qquad
\mathfrak D_{1,\rho,\psi}^{aff}\in L^1(I_a),
\qquad
\mathfrak F_{N,m,\rho,\psi}^{ctr,res}\in L^1(I_a).
\tag{RWS.C5}
```

Equivalently,

```math
ACT.X\text{-}Scale
+
ACT.X\text{-}Boot
+
RWS.C_{\mathrm{scale}}
+
ACT.Actr_{\mathrm{core}}
\Longrightarrow
\text{fixed-radius }ACT.X\text{-Readout on }I_a.
\tag{RWS.C6}
```

### Proof

Frame equivalence from `\Gamma_\sharp\in L^\infty(I_a)` converts each
small-radius affine packet into physical Sobolev control on its transported
cover ball:

```math
\sum_{q=0}^{m+2}\sum_{|\beta|\le2}
\|\nabla^\beta U_q(\cdot,t)\|_{L^2(B(c_{j,b}(t),\kappa_\sharp r_b))}^2
\le
C_\sharp \mathcal Y_{j,b}^{read}(t).
\tag{RWS.C7}
```

Finite overlap and `(RWS.C2)` give the fixed-radius Sobolev packet estimate

```math
\mathcal Z_{\mathfrak p}^{TC}(t)
\le
C_{\mathrm{cov}}
\sum_{j,b}\mathcal Y_{j,b}^{read}(t).
\tag{RWS.C8}
```

Thus `\mathcal Z_{\mathfrak p}^{TC}\in L^\infty(I_a)`.

Local Morrey on each cover ball and the chain-overlap hypothesis give the
fixed-radius oscillation readout:

```math
\mathfrak H_{N,m,\rho,\psi}^{osc,\alpha}(t)^2
\le
C_{\mathrm{cov}}
\sum_{j,b}\mathcal Y_{j,b}^{read}(t).
\tag{RWS.C9}
```

Since the right-hand side is bounded and `I_a` is finite,
`\mathfrak H_{N,m,\rho,\psi}^{osc,\alpha}\in L^2(I_a)`.

For the affine defect, the oscillation part is controlled by the same finite
chain readout. The first-rung forcing part is read from the local center forcing
identity,

```math
\mathcal E_j^{(1)}
=
\text{local pressure response}
+
\text{harmonic pressure tail}
+
\text{viscous }U_3\text{ term}.
\tag{RWS.C10}
```

The local pressure response is controlled by `(RWS.C9)` and the center-amplitude
ledger, the harmonic tail by the energy bound, and the viscous `U_3` term by the
small-ball readout packet. Hence

```math
\mathfrak D_{1,\rho,\psi}^{aff}(t)
\le
C_{\mathrm{cov}}
\left(
1+\sum_{j,b}\mathcal Y_{j,b}^{read}(t)
+\mathcal A_{\mathrm{core}}^{ctr}(t)^2
+\|u_0\|_{L^2}^2
\right),
\tag{RWS.C11}
```

which is in `L^1(I_a)`.

For residual center forcing,

```math
\mathfrak F_{N,m,\rho,\psi}^{ctr,res}
=
\mathfrak K_{N,m,\rho,\psi}^{press,ctr}
+
\mathfrak K_{N,m,\rho,\psi}^{visc,top,ctr}.
\tag{RWS.C12}
```

The pressure-center part uses the same local pressure response and harmonic-tail
bound. The top-viscous part reads `U_{m+1}` and `U_{m+2}` from the buffer modes
inside `\mathcal Y_{j,b}^{read}`:

```math
\mathfrak K_{N,m,\rho,\psi}^{visc,top,ctr}(t)
\le
C_{\mathrm{cov}}
\left(
\sum_{j,b}\mathcal Y_{j,b}^{read}(t)
\right)^{1/2}.
\tag{RWS.C13}
```

Therefore `\mathfrak F_{N,m,\rho,\psi}^{ctr,res}\in L^1(I_a)`.

This proves `(RWS.C5)`.

### Route Consequence

`RWS.C_scale` is the precise replacement for the invalid fixed-radius smallness
step. The small-radius seed and bootstrap give local bounded packets; the
dynamic finite cover and readout compatibility recover the fixed-radius outputs.
Thus the scheduler branch becomes:

```math
ACT.X\text{-}Scale
+
ACT.X\text{-}Boot
+
RWS.C_{\mathrm{scale}}
\Longrightarrow
\text{fixed-radius }ACT.X\text{-Readout}.
\tag{RWS.C14}
```

The geometric input `(RWS.C2)` is supplied by `RWS.C_cover` under the compact
retained-label-tube hypothesis. The remaining analytic input is the small-ball
pressure/viscous readout already tracked in `AXE.2` / `ACT.X-Press`; no
`LCI.A`, `CSP.A`, `OFP.A`, `Field`, or endpoint matrix input is allowed.
