# Same-Scale Edge Fourier Symbol and Principal-Part Test

## Purpose

This note replaces the too-naive shellwise proxy for one model same-scale
packet by the honest scalarized packet coming from the signed continuous-scale
route, then computes its exact trilinear Fourier symbol and tests the hoped-for
same-scale principal cancellation.

The conclusion is sharp:

```math
\text{incompressibility alone does not kill the principal same-scale symbol.}
```

What it does give is an exact commutator increment factor. So the viable
normal-form route must be built from that increment factor and the later
flux/time rewrite, not from a bare diagonal antisymmetry claim.

## Honest scalarized packet

Work at one frozen active scale with fixed collar constants
`0<c_\ell\le C_\ell<\infty` satisfying
`c_\ell\ell_N\le \ell\le C_\ell\ell_N`, and let

```math
P_{\le \ell}:=\varphi(\ell D)
```

with smooth low-pass symbol `p(\rho):=\varphi(\rho)`.

Let

```math
b_{\ell,a}:=M_a(\ell D)u,
\tag{1}
```

where `M_a` is a smooth annular order-zero multiplier family with bounded
relative offset from the active scale, and assume `b_{\ell,a}` is
divergence-free.

Let `Q_{\ell,a}^{edge}` denote the bounded-offset edge-band test multiplier
produced by the collar freezing / edge-band replacement on the scalarized
channel, with symbol `q_a(\ell\xi)`.

Then the honest model same-scale edge packet is

```math
\Pi_{\ell,a}^{edge}(t)
:=
\ell^{-2}
\left\langle
[P_{\le \ell},b_{\ell,a}\!\cdot\nabla]u,\,
Q_{\ell,a}^{edge}u
\right\rangle.
\tag{2}
```

The finite-family packets `\Pi_{N,a}^{edge}` are frozen bounded-width
aggregates of `(2)` on the collar
`c_\ell\ell_N\le \ell\le C_\ell\ell_N`.

This is the scalarized packet actually produced by:

1. the spill-to-edge reduction in
   [lifted-band-collar-class-reduction-lemma.md](/Users/thomasbirnie/Documents/Research-Consolidation/problems/navier-stokes/theorem-construction/lifted-band-collar-class-reduction-lemma.md);
2. the moving-spill fixed-offset reduction in
   [moving-spill-fixed-offset-reduction-lemma.md](/Users/thomasbirnie/Documents/Research-Consolidation/problems/navier-stokes/theorem-construction/moving-spill-fixed-offset-reduction-lemma.md);
3. the frozen upper-boundary edge-family program in
   [upper-boundary-frozen-edge-family-reduction-note.md](/Users/thomasbirnie/Documents/Research-Consolidation/problems/navier-stokes/theorem-construction/upper-boundary-frozen-edge-family-reduction-note.md).

## Exact trilinear Fourier symbol

Write the vector multiplier symbol of `M_a` as

```math
\widehat{b_{\ell,a,r}}(\eta,t)
=
\sum_{s=1}^3 \mu_{a,rs}(\ell\eta)\,\widehat{u_s}(\eta,t).
\tag{3}
```

Then for each velocity component `m`,

```math
\widehat{(b_{\ell,a}\!\cdot\nabla u_m)}(\xi,t)
=
\sum_{r,s=1}^3
\int_{\eta+\zeta=\xi}
i\zeta_r\,
\mu_{a,rs}(\ell\eta)\,
\widehat{u_s}(\eta,t)\,
\widehat{u_m}(\zeta,t)\,
d\eta.
\tag{4}
```

Applying the commutator with `P_{\le \ell}` gives

```math
\widehat{[P_{\le \ell},b_{\ell,a}\!\cdot\nabla]u_m}(\xi,t)
=
\sum_{r,s=1}^3
\int_{\eta+\zeta=\xi}
\big(p(\ell\xi)-p(\ell\zeta)\big)\,
i\zeta_r\,
\mu_{a,rs}(\ell\eta)\,
\widehat{u_s}(\eta,t)\,
\widehat{u_m}(\zeta,t)\,
d\eta.
\tag{5}
```

Pairing with `Q_{\ell,a}^{edge}u` yields the exact trilinear form

```math
\Pi_{\ell,a}^{edge}(t)
=
\sum_{m,r,s=1}^3
\iiint_{\xi=\eta+\zeta}
\mathfrak m_{a,\ell}^{mrs}(\xi,\eta,\zeta)\,
\widehat{u_s}(\eta,t)\,
\widehat{u_m}(\zeta,t)\,
\overline{\widehat{u_m}(\xi,t)}\,
d\eta\,d\zeta\,d\xi,
\tag{6}
```

with exact symbol

```math
\mathfrak m_{a,\ell}^{mrs}(\xi,\eta,\zeta)
:=
\ell^{-2}
q_a(\ell\xi)\,
\big(p(\ell\xi)-p(\ell\zeta)\big)\,
i\zeta_r\,\mu_{a,rs}(\ell\eta),
\qquad
\xi=\eta+\zeta.
\tag{7}
```

So the only structural gain visible before any symmetrization is already
explicit:

```math
\text{the packet carries the commutator increment }
p(\ell\xi)-p(\ell\zeta).
\tag{8}
```

## Symmetrized same-scale test

To test the hoped-for same-scale cancellation, symmetrize the two active input
frequencies `( \eta , \zeta )`:

```math
\mathfrak m_{a,\ell}^{sym}(\xi,\eta,\zeta;X,Y,Z)
:=
\frac12\mathfrak m_{a,\ell}(\xi,\eta,\zeta;X,Y,Z)
+
\frac12\mathfrak m_{a,\ell}(\xi,\zeta,\eta;Y,X,Z),
\tag{9}
```

where `X,Y,Z\in\mathbb C^3` are divergence-free test vectors.

In amplitude form this is

```math
\begin{aligned}
\mathfrak m_{a,\ell}^{sym}(\xi,\eta,\zeta;X,Y,Z)
=
\frac{i\ell^{-2}q_a(\ell\xi)}{2}
&\Big[
\big(p(\ell\xi)-p(\ell\zeta)\big)
\big(\mu_a(\ell\eta)X\cdot \zeta\big)
(Y\cdot \overline Z)
\\
&\quad+
\big(p(\ell\xi)-p(\ell\eta)\big)
\big(\mu_a(\ell\zeta)Y\cdot \eta\big)
(X\cdot \overline Z)
\Big].
\end{aligned}
\tag{10}
```

Because `b_{\ell,a}` is divergence-free,

```math
\eta\cdot \mu_a(\ell\eta)X=0,
\qquad
\zeta\cdot \mu_a(\ell\zeta)Y=0.
\tag{11}
```

Using `\xi=\eta+\zeta`, this rewrites the transport factors as

```math
\mu_a(\ell\eta)X\cdot\zeta
=
\mu_a(\ell\eta)X\cdot\xi,
\qquad
\mu_a(\ell\zeta)Y\cdot\eta
=
\mu_a(\ell\zeta)Y\cdot\xi.
\tag{12}
```

So incompressibility converts the derivative direction from the transported
frequencies to the output frequency, but it does **not** force the principal
same-scale amplitude to vanish. The symmetrized coefficient becomes

```math
\begin{aligned}
\mathfrak m_{a,\ell}^{sym}(\xi,\eta,\zeta;X,Y,Z)
=
\frac{i\ell^{-2}q_a(\ell\xi)}{2}
&\Big[
\big(p(\ell\xi)-p(\ell\zeta)\big)
\big(\mu_a(\ell\eta)X\cdot\xi\big)
(Y\cdot \overline Z)
\\
&\quad+
\big(p(\ell\xi)-p(\ell\eta)\big)
\big(\mu_a(\ell\zeta)Y\cdot\xi\big)
(X\cdot \overline Z)
\Big],
\end{aligned}
\tag{13}
```

and there is no automatic antisymmetry forcing `(13)` to be zero.

So the direct same-scale test yields:

```math
\boxed{
\text{principal same-scale cancellation does not follow from incompressibility alone for the honest scalarized packet.}
}
\tag{14}
```

## What survives and can still drive a normal form

Even though `(14)` blocks the naive antisymmetry route, the commutator increment
does factor by a frequency difference:

```math
p(\ell\xi)-p(\ell\zeta)
=
\ell\int_0^1
\eta\cdot\nabla p\big(\ell(\zeta+\theta\eta)\big)\,
d\theta,
\tag{15}
```

and similarly

```math
p(\ell\xi)-p(\ell\eta)
=
\ell\int_0^1
\zeta\cdot\nabla p\big(\ell(\eta+\theta\zeta)\big)\,
d\theta.
\tag{16}
```

Therefore every surviving same-scale symbol still carries one explicit
difference factor in the active frequencies. That is the exact algebraic gain
available from the commutator.

So the viable coefficient-free `(SS)` route is:

```math
\text{exact symbol}
\Longrightarrow
\text{difference-factor normal form}
\Longrightarrow
\text{flux/time rewrite}
\Longrightarrow
\text{short-range residual theorem}.
\tag{17}
```

Not:

```math
\text{same-scale symmetrization}
\Longrightarrow
\text{principal part vanishes automatically}.
\tag{18}
```

## Consequence for `(SS)`

The honest conclusion is not that the normal-form route is dead. It is that the
first cancellation mechanism must be reformulated:

```math
\boxed{
\text{the reliable first gain is the commutator difference factor, not a bare same-scale antisymmetry.}
}
\tag{19}
```

So any future coefficient-free proof of `(SS)` must use `(15)`-`(16)` together
with the shell-local flux/time normal form. If a stronger principal
cancellation exists, it must use extra structure of the edge test multiplier or
the PDE renormalization, not incompressibility by itself.
