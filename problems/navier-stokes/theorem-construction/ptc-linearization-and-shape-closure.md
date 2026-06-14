# PTC Linearization And Shape Closure

## Status

Active theorem-facing closure note for the exact-potential simple-top branch.

Role: package the two synchronization debts into one combined theorem with a
single exact `D.7mq` conclusion.

## Target

Discharge the first exact-potential slot in the form

```math
\text{PTC-Lin}+\text{PTC-Shape}
\Longrightarrow
D.7mq,
```

equivalently

```math
\bigl\|
\widehat P_{J,\varepsilon}^{pair}(a,b,t)-P_J^{CG}(t,a)
\bigr\|_F^2
\le
\operatorname{Err}_{J,CG}^{pair,\varepsilon}(a,b,t).
\tag{A1}
```

This is the exact pair-to-cocycle synchronization slot for the live
exact-potential branch.

## Exact Branch Reference

Use one branch reference object throughout:

```math
\Pi_J^{ref}:=P_J^{CG}(t,a).
\tag{A2}
```

Then the only genuinely new mathematics upstream of `D.7mq` is tensor-level:

```math
\text{PTC-Lin.A}
\quad\text{and}\quad
\text{PTC-Shape.A}.
\tag{A3}
```

Everything after those two packets is the exact-potential
`D.7mn -> D.7mq` assembly plus the already isolated selector-strain packet.

## Packet A: PTC-Lin.A

Let the selector-good pair tensor be

```math
\mathcal K_{J,\varepsilon}^{pair}(t,a)
:=
\int z_{ab}(t)\otimes z_{ab}(t)\,
d\mu_{J,\varepsilon}^{pair}(a,t;b),
\tag{A4}
```

where `z_{ab}(t)` is the transported pair vector in the branch coordinates.
Let

```math
W:=\mathbf W_J^{coc}(t,a),
\qquad
\xi_{ab}\in N_a,
\qquad
r_{ab}(t):=z_{ab}(t)-W\,\xi_{ab}.
\tag{A5}
```

Define

```math
M_{J,\varepsilon}^{shape}(t,a)
:=
\int \xi_{ab}\otimes\xi_{ab}\,d\mu,
\tag{A6}
```

```math
B_{J,\varepsilon}(t,a)
:=
\int r_{ab}(t)\otimes\xi_{ab}\,d\mu,
\tag{A7}
```

```math
R_{J,\varepsilon}(t,a)
:=
\int r_{ab}(t)\otimes r_{ab}(t)\,d\mu.
\tag{A8}
```

Then there is an exact tensor identity

```math
\mathcal K_{J,\varepsilon}^{pair}(t,a)
=
W\,M_{J,\varepsilon}^{shape}(t,a)\,W^*
+
W\,B_{J,\varepsilon}(t,a)^*
+
B_{J,\varepsilon}(t,a)\,W^*
+
R_{J,\varepsilon}(t,a).
\tag{A9}
```

So the real content of `PTC-Lin.A` is not projector recovery. It is the
selector-good averaged differentiability theorem

```math
z_{ab}(t)=W(t,a)\,\xi_{ab}+r_{ab}(t),
\qquad
\int |r_{ab}(t)|^2\,d\mu_{J,\varepsilon}^{pair}(a,t;b)\to 0.
\tag{A10}
```

More precisely, if

```math
\int |r_{ab}(t)|^2\,d\mu_{J,\varepsilon}^{pair}(a,t;b)
\le
\epsilon_{J,\varepsilon}^{lin}(t,a)^2,
\tag{A11}
```

and

```math
\mathfrak m_{J,\varepsilon}^{shape}(t,a)
:=
\left(
\int |\xi_{ab}|^2\,d\mu_{J,\varepsilon}^{pair}(a,t;b)
\right)^{1/2},
\tag{A12}
```

then Cauchy--Schwarz gives

```math
\bigl\|
\mathcal K_{J,\varepsilon}^{pair}(t,a)
-W\,M_{J,\varepsilon}^{shape}(t,a)\,W^*
\bigr\|_{\mathrm{op}}
\le
2\,\|W\|_{\mathrm{op}}\,
\mathfrak m_{J,\varepsilon}^{shape}(t,a)\,
\epsilon_{J,\varepsilon}^{lin}(t,a)
+
\epsilon_{J,\varepsilon}^{lin}(t,a)^2.
\tag{A13}
```

Everything else in `PTC-Lin.A` is algebra.

On the current selector-good branch this packet is now sharper than the raw
averaged-differentiability slogan. The companion note
[ptc-linearization-closure.md](/Users/thomasbirnie/Workspace/ToE/Research-Consolidation/problems/navier-stokes/theorem-construction/ptc-linearization-closure.md)
reduces `PTC-Lin.A` in two steps:

```math
\text{differentiability-in-measure exceptional sets}
+
\text{weighted pricing of }|\xi_{ab}|^2
\Longrightarrow
\text{averaged differentiability},
\tag{A13a}
```

then

```math
\text{uniform integrability of }|\xi_{ab}|^2
\Longrightarrow
\text{weighted pricing}.
\tag{A13b}
```

Under the standard selector-scale realization `\xi_{ab}=b-a` or
`\xi_{ab}=(b-a)/\ell_J`, the installed active-pair scale packet is the fixed
neighbor-collar condition
`a-b\in N_a` and `c_N\ell_J\le |a-b|\le C_N\ell_J`, with constants `0<c_N<C_N`
fixed by the selector geometry. This makes the bounded-collar route automatic,
so the remaining live content of `PTC-Lin.A` is just selector-good
differentiability-exceptional-set smallness.

## Packet B: PTC-Shape.A

The second theorem packet is selector-good second-moment isotropy on `N_a`.
Let

```math
d:=\dim N_a,
\qquad
m_{J,\varepsilon}(t,a):=
\operatorname{tr}\bigl(M_{J,\varepsilon}^{shape}(t,a)\bigr).
\tag{A14}
```

The exact tensor-level target is

```math
\left\|
\frac{1}{m_{J,\varepsilon}(t,a)}\,M_{J,\varepsilon}^{shape}(t,a)
-
\frac{1}{d}\Pi_{N_a}
\right\|_{\mathrm{op}}
\le
\epsilon_{J,\varepsilon}^{shape}(t,a),
\tag{A15}
```

equivalently

```math
\widetilde M_{J,\varepsilon}^{shape}(t,a)
:=
\frac{d}{m_{J,\varepsilon}(t,a)}\,M_{J,\varepsilon}^{shape}(t,a),
\qquad
\bigl\|
\widetilde M_{J,\varepsilon}^{shape}(t,a)-I_{N_a}
\bigr\|_{\mathrm{op}}
\le
C_d\,\epsilon_{J,\varepsilon}^{shape}(t,a).
\tag{A16}
```

So the real content of `PTC-Shape.A` is:

```math
\boxed{
\text{prove selector-good directional isotropy up to degree-2 moments.}
}
\tag{A17}
```

At the directional-measure level, if

```math
M_{J,\varepsilon}^{shape}(t,a)
=
\int_{S(N_a)} \omega\otimes\omega\,d\nu_{J,\varepsilon}^{shape}(\omega),
\tag{A18}
```

then `(A15)` is exactly equivalent to directional quadratic control: for every
unit vector `v\in S(N_a)`,

```math
\left|
\int_{S(N_a)}
\left(
(\omega\cdot v)^2-\frac1d
\right)\,
d\nu_{J,\varepsilon}^{shape}(\omega)
\right|
\le
\epsilon_{J,\varepsilon}^{shape}(t,a).
\tag{A19}
```

Indeed, the normalized shape defect

```math
T_{J,\varepsilon}(t,a)
:=
\frac{1}{m_{J,\varepsilon}(t,a)}\,M_{J,\varepsilon}^{shape}(t,a)
-
\frac1d\Pi_{N_a}
\tag{A19a}
```

is symmetric, and

```math
\langle v,T_{J,\varepsilon}(t,a)v\rangle
=
\int_{S(N_a)}
\left(
(\omega\cdot v)^2-\frac1d
\right)\,
d\nu_{J,\varepsilon}^{shape}(\omega),
\tag{A19b}
```

so `(A19)` is exactly equivalent to `(A15)` by the operator-norm variational
formula for symmetric tensors.

## Support Packet: Cocycle-Norm Control

To convert the tensor-level shape theorem into a transported tensor comparison,
one also needs the cocycle-operator bound from
[selector-good-cocycle-operator-norm-bound.md](/Users/thomasbirnie/Workspace/ToE/Research-Consolidation/problems/navier-stokes/theorem-construction/selector-good-cocycle-operator-norm-bound.md):

```math
\bigl|W(t,a)\bigr|_{\mathrm{op}}
\le
K_J^{coc}(t,a).
\tag{A20}
```

Then

```math
\bigl\|
W\,M_{J,\varepsilon}^{shape}(t,a)\,W^*
-
\frac{m_{J,\varepsilon}(t,a)}{d}\,
W\,\Pi_{N_a}\,W^*
\bigr\|_{\mathrm{op}}
\le
\bigl|W(t,a)\bigr|_{\mathrm{op}}^2\,
m_{J,\varepsilon}(t,a)\,
\epsilon_{J,\varepsilon}^{shape}(t,a).
\tag{A21}
```

So `PTC-Shape.A` is exactly the selector-shape isotropy theorem; cocycle-norm
control is the explicit conversion packet that carries it into `D.7mn3`.

## Closure To `D.7mq`

Once `(A13)` and `(A21)` hold, the pair tensor satisfies

```math
\bigl\|
\mathcal K_{J,\varepsilon}^{pair}(t,a)
-
\frac{m_{J,\varepsilon}(t,a)}{d}\,
W(t,a)\Pi_{N_a}W(t,a)^*
\bigr\|_{\mathrm{op}}
\le
2\,\|W\|_{\mathrm{op}}\,
\mathfrak m_{J,\varepsilon}^{shape}\,
\epsilon_{J,\varepsilon}^{lin}
+
\epsilon_{J,\varepsilon}^{lin\,2}
+
\bigl|W\bigr|_{\mathrm{op}}^2\,
m_{J,\varepsilon}\,
\epsilon_{J,\varepsilon}^{shape}.
\tag{A22}
```

On the exact-potential branch, `D.7mn` identifies the comparison tensor

```math
\frac{m_{J,\varepsilon}(t,a)}{d}\,
W(t,a)\Pi_{N_a}W(t,a)^*
\tag{A23}
```

with the Cauchy--Green reference object up to the same transported tensor
ledger. Therefore, once the selector-good family also carries the installed
simple-top / gap floor for the reference Cauchy--Green tensor, Davis--Kahan
gives the projector comparison

```math
\bigl\|
\widehat P_{J,\varepsilon}^{pair}(a,b,t)-P_J^{CG}(t,a)
\bigr\|_F^2
\le
\operatorname{Err}_{J,CG}^{pair,\varepsilon}(a,b,t),
\tag{A24}
```

with a constant `C_{PTC}` depending only on the fixed selector overlap,
dimension, cocycle normalization, and Davis--Kahan gap floor:

```math
\operatorname{Err}_{J,CG}^{pair,\varepsilon}
\le
C_{PTC}\left(
\epsilon_{J,\varepsilon}^{lin}
+
\epsilon_{J,\varepsilon}^{lin\,2}
+
\bigl|W\bigr|_{\mathrm{op}}^2\,
\epsilon_{J,\varepsilon}^{shape}
\right),
\tag{A25}
```

after absorbing the scalar mass factors `m_{J,\varepsilon}` and
`\mathfrak m_{J,\varepsilon}^{shape}` into the selector-good normalization
packet. This is exactly the pair-to-cocycle theorem `D.7mq`.

## Exact Combined Theorem

### Theorem PTC.A

Assume on the selector-good strip that:

1. `PTC-Lin.A` supplies the averaged differentiability packet `(A10)` in the
   strong form `(A11)`;
2. `PTC-Shape.A` supplies the normalized second-moment isotropy packet `(A15)`;
3. the selector-good cocycle carries the operator bound `(A20)`;
4. the exact-potential reference Cauchy--Green tensor carries the installed
   simple-top / gap floor needed for Davis--Kahan.

Then the pair-induced projector field satisfies `(A1)`, hence the
pair-to-cocycle synchronization slot `(D.7ma4)` closes in the exact
route form `D.7mq`.

In other words, the projective exact-potential branch is now waiting on one
selector-good differentiability-exceptional-set theorem `DiffExc` and one
selector-shape isotropy theorem, with the bounded-collar realization of
`PTC-Lin.A` already downstream of the installed active-pair scale selection.
On the standard selector-scale branch, `TPS.4u` is one exact sufficient
realization of `DiffExc` and hence of the qualitative linearization side.
More sharply, on the frozen measurable-derivative splice the live
linearization wall is the paired packet
`\texttt{FrozenDiffMeasLoc}_{\mu,p/2} + \texttt{FrozenTolLoc}_{\mu,p}`,
with `\texttt{SyncDiffQuad}_{\tau}` as one exact stronger synchronized
realization of the geometric side. The stronger threshold-synchronization
supplier for that packet is now isolated in
[frozen-threshold-vs-linearization-synchronization.md](/Users/thomasbirnie/Workspace/ToE/Research-Consolidation/problems/navier-stokes/theorem-construction/frozen-threshold-vs-linearization-synchronization.md).
No sharper standalone source-level linearization supplier is currently exposed
on disk below `\texttt{SyncThreshSq}_{\tau}`.
Everything after that is assembly.

## Alternate Finite-Frame Closure Route

There is also a sharper branch-local reduction that avoids a full
selector-weighted pair-average theorem.

### Theorem PTC.Frame.A

Assume:

1. the selector-good directional support satisfies the convex-interiority /
   two-sided quadratic richness packet in
   [selector-balanced-frame-lemma.md](/Users/thomasbirnie/Workspace/ToE/Research-Consolidation/problems/navier-stokes/theorem-construction/selector-balanced-frame-lemma.md),
   so a finite balanced frame

   ```math
   \sum_{\ell=1}^m w_\ell\,\omega_{J,0}^\ell(a)\otimes\omega_{J,0}^\ell(a)
   =
   \Pi_{N_a}
   \tag{A26}
   ```

   is available at the strip entrance time `t_0`;
2. the selector-good strip satisfies the finite-frame linearization packet in
   [finite-frame-linearization-on-selector-good-strips.md](/Users/thomasbirnie/Workspace/ToE/Research-Consolidation/problems/navier-stokes/theorem-construction/finite-frame-linearization-on-selector-good-strips.md),
   so

   ```math
   \max_\ell
   |z_J^\ell(t,a)-W_J^{coc}(t,a)\omega_{J,0}^\ell(a)|
   \le
   \varepsilon_{J,\mathrm{lin}}^{frame}(t,a);
   \tag{A27}
   ```

3. the exact-potential comparison packet identifies
   `W_J^{coc}\Pi_{N_a}(W_J^{coc})^\ast` with the Cauchy--Green reference tensor
   up to the installed `D.7mn` ledger, and the reference simple-top gap is
   open.

Then the finite-frame tensor

```math
\mathcal K_J^{frame}(t,a)
:=
\sum_{\ell=1}^m w_\ell\,z_J^\ell(t,a)\otimes z_J^\ell(t,a)
\tag{A28}
```

satisfies

```math
\bigl\|
\mathcal K_J^{frame}(t,a)
-
W_J^{coc}(t,a)\Pi_{N_a}(W_J^{coc}(t,a))^\ast
\bigr\|_{\mathrm{op}}
\le
d\Bigl(
2\,|W_J^{coc}(t,a)|_{\mathrm{op}}\,
\varepsilon_{J,\mathrm{lin}}^{frame}(t,a)
+
\varepsilon_{J,\mathrm{lin}}^{frame}(t,a)^2
\Bigr),
\tag{A29}
```

and hence the same Davis--Kahan step yields

```math
\bigl\|
\widehat P_J^{frame}(t,a)-P_J^{CG}(t,a)
\bigr\|_F^2
\le
\operatorname{Err}_{J,CG}^{frame}(t,a),
\tag{A30}
```

which closes the pair-to-cocycle slot in the exact route form `D.7mq`.

So the alternate sharp route is:

```math
\text{quadratic interiority}
\Longrightarrow
\text{balanced selector frame}
\Longrightarrow
\text{finite-frame linearization}
\Longrightarrow
\mathcal K_J^{frame}= W_J^{coc}\Pi_{N_a}(W_J^{coc})^\ast+\mathcal E_J^{frame},
\qquad \|\mathcal E_J^{frame}\|_F\le \varepsilon_J^{frame}.
\tag{A31}
```

To reach `D.7mq` one still needs the two installed branch packets that are
already explicit in `PTC.Frame.A`:

```math
\text{exact-potential comparison packet}
+\text{ reference simple-top gap}
\Longrightarrow
\|\widehat P_J^{frame}-P_J^{CG}\|_F\le \varepsilon_J^{CG}.
\tag{A32}
```

So the safe branch-facing compression is:

```math
\text{quadratic interiority}
\Longrightarrow
\text{balanced selector frame},
\tag{A33a}
```

```math
\text{balanced selector frame}
+\text{ finite-frame linearization}
\Longrightarrow
\mathcal K_J^{frame}= W_J^{coc}\Pi_{N_a}(W_J^{coc})^\ast+\mathcal E_J^{frame},
\qquad \|\mathcal E_J^{frame}\|_F\le \varepsilon_J^{frame},
\tag{A33b}
```

```math
\text{exact-potential comparison packet}
+\text{ reference simple-top gap}
\Longrightarrow
D.7mq.
\tag{A33c}
```

This replaces the need for a full selector-weighted pair-average theorem by one
finite balanced frame, one finite directional linearization theorem, and the
already isolated `D.7mn` / Cauchy--Green comparison packet.

The sharper theorem-facing implementation of that route now lives in
[selector-quadratic-sign-separation-packet.md](/Users/thomasbirnie/Workspace/ToE/Research-Consolidation/problems/navier-stokes/theorem-construction/selector-quadratic-sign-separation-packet.md),
[segment-collar-derivative-continuity-on-balanced-frame.md](/Users/thomasbirnie/Workspace/ToE/Research-Consolidation/problems/navier-stokes/theorem-construction/segment-collar-derivative-continuity-on-balanced-frame.md),
and
[exact-potential-balanced-frame-to-d7mq.md](/Users/thomasbirnie/Workspace/ToE/Research-Consolidation/problems/navier-stokes/theorem-construction/exact-potential-balanced-frame-to-d7mq.md).

The scalar normalization factors

```math
m_{J,\varepsilon}(t,a),
\qquad
\mathfrak m_{J,\varepsilon}^{shape}(t,a)
\tag{A34}
```

remain part of the selector-good normalization packet and should stay explicit
whenever the route is summarized, because the tensor-to-projector conversion
uses that normalization.

## Boundary

This note does **not** compare `P_J^{CG}` with the instantaneous top strain
projector. That second theorem debt is isolated separately in the active
selector-strain sufficiency packet.

### Corollary PTC.Terminal.A (exact-potential route terminal from `PTC`)

Assume the hypotheses of Theorem `PTC.A` on the active exact-potential strip,
and assume the hypotheses of Theorem `SSD.A` in
[selector-strain-sufficiency-d7mp-d7mo-d7mm.md](/Users/thomasbirnie/Workspace/ToE/Research-Consolidation/problems/navier-stokes/theorem-construction/selector-strain-sufficiency-d7mp-d7mo-d7mm.md)
on the same strip. Then the exact-potential branch closes the downstream chain

```math
\text{PTC-Lin}+\text{PTC-Shape}
+ (D.7mp + D.7mo + D.7mm)
\Longrightarrow
SG.4
\Longrightarrow
BR.\lambda2
\Longrightarrow
\text{continuation}.
\tag{A35}
```

### Proof

Theorem `PTC.A` yields `D.7mq`. Together with Theorem `SSD.A`, Corollary
`SGH.C` in
[sg4-and-br-lambda2-handoff.md](/Users/thomasbirnie/Workspace/ToE/Research-Consolidation/problems/navier-stokes/theorem-construction/sg4-and-br-lambda2-handoff.md)
applies directly and gives the stated terminal chain. ∎
