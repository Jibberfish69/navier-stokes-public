# Finite-Frame Linearization On Selector-Good Strips

## Status

Active theorem-facing upstream debt note.

Role: replace the full selector-good pair-average linearization burden by a
finite-frame linearization theorem on the exact-potential branch.

## Purpose

Discharge the linearization side of the branch through finitely many selected
directions:

```math
\boxed{
\text{balanced selector frame}
\ +\ 
\text{uniform linearization on that frame}
\Longrightarrow
\text{tensor closure for }D.7mq.
}
\tag{FFL.0}
```

## Exact Setup

Fix one selector-good strip `I_0=[t_0,t_1]`, one basepoint `a`, and a balanced
selector frame at the entrance time `t_0`:

```math
\sum_{\ell=1}^m w_\ell\,\omega_{J,0}^\ell(a)\otimes\omega_{J,0}^\ell(a)
=
\Pi_{N_a},
\qquad
w_\ell>0,
\qquad
\omega_{J,0}^\ell(a)\in S(N_a).
\tag{FFL.1}
```

Choose one small scale `h_J>0` and define the entrance points

```math
x_{\pm}^\ell(a,t_0)
:=
a\pm h_J\,\omega_{J,0}^\ell(a).
\tag{FFL.2}
```

Let `X_t` be the transported map along the strip and define the finite-frame
transported pair vectors

```math
z_J^\ell(t,a)
:=
\frac{X_t(x_+^\ell(a,t_0))-X_t(x_-^\ell(a,t_0))}{2h_J}.
\tag{FFL.3}
```

The branch cocycle is written

```math
W_J^{coc}(t,a).
\tag{FFL.4}
```

## Exact Target

### Theorem FFL.A (uniform finite-frame linearization)

Assume that on the selector-good strip one has the finite-frame linearization
estimate

```math
\max_{1\le \ell\le m}
\bigl|
z_J^\ell(t,a)-W_J^{coc}(t,a)\,\omega_{J,0}^\ell(a)
\bigr|
\le
\varepsilon_{J,\mathrm{lin}}^{frame}(t,a)
\tag{FFL.5}
```

for every `t\in I_0`, with

```math
\varepsilon_{J,\mathrm{lin}}^{frame}(t,a)\to 0
\quad\text{on the active family.}
\tag{FFL.6}
```

Define the finite-frame pair tensor

```math
\mathcal K_J^{frame}(t,a)
:=
\sum_{\ell=1}^m w_\ell\,
z_J^\ell(t,a)\otimes z_J^\ell(t,a).
\tag{FFL.7}
```

Then

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
\tag{FFL.8}
```

where `d=\dim N_a`.

So once the balanced-frame packet and the finite-frame linearization packet are
both installed, the tensor-level content of `PTC-Lin + PTC-Shape` is closed.

### Proof

Write

```math
e_J^\ell(t,a)
:=
z_J^\ell(t,a)-W_J^{coc}(t,a)\,\omega_{J,0}^\ell(a),
\tag{FFL.9}
```

so `|e_J^\ell(t,a)|\le \varepsilon_{J,\mathrm{lin}}^{frame}(t,a)`. Then

```math
z_J^\ell
=
W_J^{coc}\omega_{J,0}^\ell + e_J^\ell.
\tag{FFL.10}
```

Expanding inside `(FFL.7)` gives

```math
\mathcal K_J^{frame}
=
\sum_{\ell=1}^m w_\ell\,
\bigl(W_J^{coc}\omega_{J,0}^\ell\bigr)\otimes
\bigl(W_J^{coc}\omega_{J,0}^\ell\bigr)
+
\sum_{\ell=1}^m w_\ell\,
\Bigl[
\bigl(W_J^{coc}\omega_{J,0}^\ell\bigr)\otimes e_J^\ell
+
e_J^\ell\otimes \bigl(W_J^{coc}\omega_{J,0}^\ell\bigr)
+
e_J^\ell\otimes e_J^\ell
\Bigr].
\tag{FFL.11}
```

The first sum equals

```math
W_J^{coc}
\left(
\sum_{\ell=1}^m w_\ell\,\omega_{J,0}^\ell\otimes\omega_{J,0}^\ell
\right)
(W_J^{coc})^\ast
=
W_J^{coc}\Pi_{N_a}(W_J^{coc})^\ast
\tag{FFL.12}
```

by `(FFL.1)`. For the error sum, use `|\omega_{J,0}^\ell|=1`,
`\sum_\ell w_\ell=d`, and `|e_J^\ell|\le \varepsilon_{J,\mathrm{lin}}^{frame}`
to obtain

```math
\|\mathcal K_J^{frame}-W_J^{coc}\Pi_{N_a}(W_J^{coc})^\ast\|_{\mathrm{op}}
\le
\sum_{\ell=1}^m w_\ell
\Bigl(
2\,|W_J^{coc}|_{\mathrm{op}}\,|e_J^\ell|
+
|e_J^\ell|^2
\Bigr)
\le
d\Bigl(
2\,|W_J^{coc}|_{\mathrm{op}}\,
\varepsilon_{J,\mathrm{lin}}^{frame}
+
\varepsilon_{J,\mathrm{lin}}^{frame\,2}
\Bigr),
\tag{FFL.13}
```

which is exactly `(FFL.8)`. ∎

### Corollary FFL.B (regular-window modulus supplies finite-frame linearization)

Assume that for every selector-good `(a,t)` and every selected frame direction
`\omega_{J,0}^\ell(a)`, the segment

```math
\{a+s\omega_{J,0}^\ell(a): |s|\le h_J\}
\tag{FFL.13a}
```

lies in a regular window on which `D_aX_t` exists and admits the modulus of
continuity

```math
\rho_{J,\mathrm{lin}}(a,t;h_J)
:=
\sup_{1\le \ell\le m}\sup_{|s|\le h_J}
\bigl\|
D_aX_t(a+s\omega_{J,0}^\ell(a))
-
D_aX_t(a)
\bigr\|_{\mathrm{op}}.
\tag{FFL.13b}
```

Then `FFL.A` holds with

```math
\varepsilon_{J,\mathrm{lin}}^{frame}(a,t)
:=
\rho_{J,\mathrm{lin}}(a,t;h_J).
\tag{FFL.13c}
```

In particular, if

```math
\rho_{J,\mathrm{lin}}(a,t;h_J)\to 0
\quad\text{on the active family,}
\tag{FFL.13d}
```

then the finite-frame linearization packet is discharged.

**Proof.**
For each `\ell`, the proof of `FFL.A` gives

```math
z_J^\ell(t,a)-W_J^{coc}(t,a)\omega_{J,0}^\ell(a)
=
\frac1{2h_J}\int_{-h_J}^{h_J}
\bigl(D_aX_t(a+s\omega_{J,0}^\ell(a))-D_aX_t(a)\bigr)
\omega_{J,0}^\ell(a)\,ds.
\tag{FFL.13e}
```

Taking norms and using `|\omega_{J,0}^\ell|=1` yields

```math
|z_J^\ell(t,a)-W_J^{coc}(t,a)\omega_{J,0}^\ell(a)|
\le
\rho_{J,\mathrm{lin}}(a,t;h_J),
\tag{FFL.13f}
```

uniformly in `\ell`, which is exactly `(FFL.5)` with `(FFL.13c)`. ∎

## Exact Branch Consequence

On the exact-potential branch, once the comparison tensor

```math
W_J^{coc}(t,a)\Pi_{N_a}(W_J^{coc}(t,a))^\ast
\tag{FFL.14}
```

is compared with the Cauchy--Green reference object through the installed
`D.7mn` packet, set

```math
\delta_J(t,a)
:=
\left\|
W_J^{coc}(t,a)\Pi_{N_a}(W_J^{coc}(t,a))^\ast
-C_J^{CG}(t,a)
\right\|_{op}.
\tag{FFL.15a}
```

If the reference simple-top gap is `\gamma_J(t,a)>0`, Davis--Kahan gives the
projector bound

```math
\|\widehat P_J^{frame}(t,a)-P_J^{CG}(t,a)\|_{op}
\le
2\,\delta_J(t,a)/\gamma_J(t,a).
\tag{FFL.15}
```

So this note supplies the exact finite-frame algebraic route to `D.7mq`.

The real mathematical debt behind `PTC-Lin` on this finite-frame branch is
therefore reduced to one regular-window theorem:

```math
\boxed{
\text{prove uniform derivative continuity along the finitely many frame segments.}
}
\tag{FFL.16}
```

## Downstream Use

This note combines with
[selector-balanced-frame-lemma.md](/Users/thomasbirnie/Workspace/ToE/Research-Consolidation/problems/navier-stokes/theorem-construction/selector-balanced-frame-lemma.md)
and
[segment-collar-derivative-continuity-on-balanced-frame.md](/Users/thomasbirnie/Workspace/ToE/Research-Consolidation/problems/navier-stokes/theorem-construction/segment-collar-derivative-continuity-on-balanced-frame.md)
inside
[exact-potential-balanced-frame-to-d7mq.md](/Users/thomasbirnie/Workspace/ToE/Research-Consolidation/problems/navier-stokes/theorem-construction/exact-potential-balanced-frame-to-d7mq.md).
