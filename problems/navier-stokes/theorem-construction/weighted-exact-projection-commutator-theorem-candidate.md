# Weighted Exact-Projection Commutator Theorem Candidate

## Status

Candidate reserve theorem for the Lemma 4B pressure wall. This note isolates
the sharpest operator-level debt remaining after:

- the weighted exact/coexact reduction, and
- the derivative-LP para-banded source split.

It does not claim the theorem is proved. Its job is to replace broad route
language by one concrete paradifferential target.

## Operator

Let

```math
L_G f:=-\operatorname{div}_a(G\nabla_a f),
\qquad
\Pi_G^{ex}:=-G\nabla_aL_G^{-1}\operatorname{div}_a.
```

Then `\Pi_G^{ex}` is the weighted exact projector for the scalar pressure
channel. On the current route it is already known that:

1. `\Pi_G^{ex}` is the only part of the source seen by the pressure test
   geometry;
2. it is an orthogonal projection in `L^2_{G^{-1}}`;
3. the source itself admits the para-banded split
   `LH + HL + RR`.

So the remaining reserve debt is not abstract Hodge reduction. It is the
interaction between `\Pi_G^{ex}` and the localized source packets.

## Principal Symbol

At the principal-symbol level, `\Pi_G^{ex}` is the rank-one projector onto the
`G`-gradient direction. Writing `\xi` for the dual frequency variable, the
symbol is

```math
p_G(a,\xi)
:=
\frac{G(a)\xi\otimes\xi}{\xi\cdot G(a)\xi}.
\tag{WEP.0}
```

Equivalently, on vectors `w\in\mathbb R^3`,

```math
p_G(a,\xi)w
=
\frac{(\xi\cdot w)\,G(a)\xi}{\xi\cdot G(a)\xi}.
\tag{WEP.0a}
```

This comes directly from the principal symbol of the divergence-form operator:

```math
\ell_G(a,\xi)=\xi\cdot G(a)\xi,
\tag{WEP.0b}
```

so `L_G^{-1}` has principal symbol `\ell_G(a,\xi)^{-1}`, and the composition
`-G\nabla_aL_G^{-1}\operatorname{div}_a` has principal symbol

```math
G(a)\xi\,\ell_G(a,\xi)^{-1}\,\xi^\top
=
\frac{G(a)\xi\otimes\xi}{\xi\cdot G(a)\xi}.
\tag{WEP.0c}
```

Equivalently,

```math
p_G(a,\xi)
=
\frac{G(a)\xi}{\sqrt{\xi\cdot G(a)\xi}}
\otimes
\frac{\xi}{\sqrt{\xi\cdot G(a)\xi}},
\tag{WEP.0d}
```

so `p_G(a,\xi)` is visibly rank one and idempotent at the principal-symbol
level:

```math
p_G(a,\xi)^2=p_G(a,\xi),
\qquad
\operatorname{Ran} p_G(a,\xi)=\operatorname{span}\{G(a)\xi\},
\qquad
\ker p_G(a,\xi)=\{w:\xi\cdot w=0\}.
\tag{WEP.0e}
```

So the reserve route is not about an arbitrary elliptic inverse. It is about a
variable-coefficient order-zero projector with an explicit principal symbol.
The theorem-grade version therefore exposes the coefficient regularity
explicitly.

## Theorem-Grade Assumptions

Assume throughout that `G(a)` is symmetric, uniformly elliptic, and
`C^{1,1}` in `a`, in the sense that

```math
\lambda |\eta|^2
\le
\eta\cdot G(a)\eta
\le
\Lambda |\eta|^2,
\qquad
\|G\|_{C_a^{1,1}}
\le
M.
\tag{WEP.A1}
```

Under `(WEP.A1)`, the principal projector symbol belongs to the standard
order-zero class:

```math
p_G\in S^0_{1,0},
\qquad
|\partial_a^\alpha\partial_\xi^\beta p_G(a,\xi)|
\le
C_{\alpha,\beta}(\lambda^{-1},\Lambda,M)\,(1+|\xi|)^{-|\beta|}
\tag{WEP.A2}
```

for `|\alpha|\le 1` and all multi-indices `\beta`.

The symbolic core is obtained by writing

```math
Q(a,\xi):=\xi\cdot G(a)\xi,
\qquad
N(a,\xi):=G(a)\xi\otimes\xi,
\tag{WEP.A3}
```

so that

```math
\partial_{\xi_k}p_G
=
\frac{\partial_{\xi_k}N}{Q}
-
\frac{N\,\partial_{\xi_k}Q}{Q^2},
\tag{WEP.A4}
```

with

```math
\partial_{\xi_k}N
=
G(a)e_k\otimes\xi
+
G(a)\xi\otimes e_k,
\qquad
\partial_{\xi_k}Q
=
2(G(a)\xi)_k.
\tag{WEP.A5}
```

Uniform ellipticity then yields

```math
|\partial_\xi p_G(a,\xi)|
\le C_{\lambda,\Lambda,M}
|\xi|^{-1},
\tag{WEP.A6}
```

which is the exact origin of the shellwise `2^{-j}` gain.

## Sharpest Friendly Packet

The friendliest surviving packet is the top-`U` low-high channel

```math
a_{\alpha,\beta,j}:=S_{j-C}\partial_a^\beta A,
\qquad
v_{\alpha,\beta,j}:=\Delta_j U_{\alpha-\beta},
\qquad |\beta|=1.
```

The shellwise exact projection splits as

```math
\Pi_G^{ex}(a_{\alpha,\beta,j}v_{\alpha,\beta,j})
=
a_{\alpha,\beta,j}\Pi_G^{ex}v_{\alpha,\beta,j}
+
[\Pi_G^{ex},a_{\alpha,\beta,j}]\,v_{\alpha,\beta,j}.
\tag{WEP.1}
```

The first term is coefficient transport. The second term is the genuine reserve
obstruction.

## Candidate Theorem

The sharpest next theorem is the quantified low-high commutator law

```math
\boxed{
\|[\Pi_G^{ex},a_{<j-C}]\,v_j\|_{L^2_a}
\le
C_G\,2^{-j}\|\nabla_a a_{<j-C}\|_{L^\infty_a}\,\|v_j\|_{L^2_a},
}
\tag{WEP.2'}
```

for `v_j:=\Delta_j v`, with

```math
C_G:=P(\lambda^{-1},\Lambda,\|G\|_{C_a^{1,1}}).
\tag{WEP.2'a}
```

Equivalently, after exposing the paradifferential remainder explicitly,

```math
\boxed{
\|[T_{p_G},a_{<j-C}]\,v_j\|_{L^2_a}
\le
C_G\,2^{-j}\|\nabla_a a_{<j-C}\|_{L^\infty_a}\,\|v_j\|_{L^2_a},
}
\tag{WEP.2'b}
```

and

```math
\boxed{
\|[R_{G,j},a_{<j-C}]\,v_j\|_{L^2_a}
\le
C_G\,2^{-j}
\Big(
\|\nabla_a a_{<j-C}\|_{L^\infty_a}
+
\|a_{<j-C}\|_{L^\infty_a}\,\|\nabla_a G\|_{L^\infty_a}
\Big)\|v_j\|_{L^2_a},
}
\tag{WEP.2'c}
```

where `R_{G,j}` is the shellwise order `-1` remainder in the exact-projection
realization

```math
\Pi_G^{ex}\Delta_j
=
T_{p_G}\Delta_j
+
R_{G,j},
\qquad
\|R_{G,j}f\|_{L^2_a}
\le
C_G\,2^{-j}\|f\|_{L^2_a}.
\tag{WEP.2'd}
```

The abstract pressure-ledger form then reads:

```math
\boxed{
\|[\Pi_G^{ex},a_{<j-C}]\,\Delta_j v\|_{\mathsf{Press}_j}
\le C_{\mathsf{Press}}
\|\nabla_a a_{<j-C}\|_{L^\infty_a}\,
\|\Delta_j v\|_{\mathsf{SameDepth}_j},
}
\tag{WEP.2}
```

where:

- `a_{<j-C}` is genuinely low frequency,
- `\Delta_j v` is the active shell,
- `\mathsf{Press}_j` is the shellwise pressure ledger needed by
  `\mathcal B_G`,
- `\mathsf{SameDepth}_j` is the shellwise same-depth energy/dissipation ledger.

The point is not the exact norm names. The point is the structure:

- `\Pi_G^{ex}` is order zero;
- the commutator theorem requires one derivative of gain on the low coefficient;
- the active shell stays at the same depth.

The factor `2^{-j}` is the real gain: it says the commutator is order `-1` on
the active shell, and `(WEP.2'c)` shows exactly where the metric dependence
enters quantitatively.

The symbolic reason is the first commutator term in the pseudodifferential
composition formula. For an order-zero symbol `p\in S^0_{1,0}` and a low
coefficient `a`, the commutator with multiplication by `a` has principal symbol

```math
\sigma([T_p,a])
=
i\,\partial_\xi p\cdot \nabla_a a,
\tag{WEP.2''}
```

The remaining composition terms are bounded in `S^{-2}_{1,0}` when the symbol
seminorms in `(WEP.A2)` and the low-coefficient derivatives are bounded. Hence
the principal term is order `-1`. Here `p=p_G(a,\xi)`, so the same expansion
applies to `\Pi_G^{ex}`; the only extra work is demoting the lower metric-symbol
terms coming from the variable coefficient `G`. Those lower terms are exactly
where a rigorous paradifferential construction for `L_G^{-1}` has to enter.

On the active dyadic support `2^{j-1}\le|\xi|\le 2^{j+1}`, `(WEP.A6)` becomes

```math
|\partial_\xi p_G(a,\xi)|
\le C_{G,\Delta}
2^{-j},
\tag{WEP.2''a}
```

which is the precise symbolic origin of the factor `2^{-j}` in `(WEP.2')`.

## Model Proof

The model proof of `(WEP.2')` has three steps.

### Step 1. Paradifferential principal part

Under `(WEP.A1)`-(`WEP.A2)` one may write, shellwise,

```math
\Pi_G^{ex}\Delta_j
=
T_{p_G}\Delta_j
+
R_{G,j},
\qquad
\|R_{G,j}f\|_{L^2_a}
\le
C_G\,2^{-j}\|f\|_{L^2_a}.
\tag{WEP.2m1}
```

Here `T_{p_G}` is the paradifferential operator with symbol `p_G(a,\xi)` and
`R_{G,j}` is the shellwise order `-1` metric-symbol remainder. Then

```math
[\Pi_G^{ex},a_{<j-C}]\,v_j
=
[T_{p_G},a_{<j-C}]\,v_j
+
[R_{G,j},a_{<j-C}]\,v_j.
\tag{WEP.2m2}
```

### Step 2. Principal commutator

Since `a_{<j-C}` is genuinely low and `v_j` is supported on the active shell,
the symbolic commutator expansion gives

```math
[T_{p_G},a_{<j-C}]
=
T_{\,i\,\partial_\xi p_G\cdot\nabla_a a_{<j-C}}
+
S_{-2},
\tag{WEP.2m3}
```

where `S_{-2}` is one order better. Therefore

```math
\|T_{\,i\,\partial_\xi p_G\cdot\nabla_a a_{<j-C}}\,v_j\|_{L^2_a}
\le C_G
2^{-j}\|\nabla_a a_{<j-C}\|_{L^\infty_a}\,\|v_j\|_{L^2_a}.
\tag{WEP.2m4}
```

The remainder `S_{-2}` is paid by the same shell ledger through the explicit
bound

```math
\|S_{-2}v_j\|_{L^2_a}
\le
C_G\,2^{-2j}\|a_{<j-C}\|_{C^2_a}\,\|v_j\|_{L^2_a}.
\tag{WEP.2m4-rem}
```

Since `a_{<j-C}` is supported below the active shell, Bernstein gives

```math
2^{-2j}\|a_{<j-C}\|_{C^2_a}
\le
C\,2^{-j}\|\nabla_a a_{<j-C}\|_{L^\infty_a}.
```

Thus `S_{-2}` is not discarded; it is included in the same lower-order
coefficient ledger as the principal commutator bound.

### Step 3. Lower-order remainder commutator

Because `R_{G,j}` is shellwise order `-1`,

```math
\|R_{G,j}v_j\|_{L^2_a}\le C_G\,2^{-j}\|v_j\|_{L^2_a}.
\tag{WEP.2m5}
```

Applying the same low-high commutator logic gives

```math
\|[R_{G,j},a_{<j-C}]\,v_j\|_{L^2_a}
\le
C_G\,2^{-j}
\Big(
\|\nabla_a a_{<j-C}\|_{L^\infty_a}
+
\|a_{<j-C}\|_{L^\infty_a}\,\|\nabla_a G\|_{L^\infty_a}
\Big)\|v_j\|_{L^2_a},
\tag{WEP.2m6}
```

which closes the quantified commutator estimate `(WEP.2')`. The extra
`\|a_{<j-C}\|_{L^\infty_a}\,\|\nabla_a G\|_{L^\infty_a}` factor is precisely
the cost of passing from the frozen projector symbol to the full
variable-coefficient realization.

## Pressure-Ledger Version

For the reserve 4B branch, the natural shellwise pressure norm is

```math
|X|_{\mathsf{Press}_j}
:=
|\Pi_G^{ex}X|_{L^2_{G^{-1}}},
\qquad
|Y|_{L^2_{G^{-1}}}^2:=\int Y\cdot G^{-1}Y\,da.
\tag{WEP.2p0}
```

This is the correct ledger because

```math
\mathcal B_G(X,Y)
=
\langle \Pi_G^{ex}X,\Pi_G^{ex}Y\rangle_{L^2_{G^{-1}}}.
\tag{WEP.2p1}
```

Since `\Pi_G^{ex}` is the orthogonal projection onto the exact channel in
`L^2_{G^{-1}}`,

```math
|\Pi_G^{ex}X|_{L^2_{G^{-1}}}
\le
|X|_{L^2_{G^{-1}}},
\tag{WEP.2p2}
```

while uniform ellipticity gives the genuine metric norm equivalence

```math
\Lambda^{-1/2}|X|_{L^2_a}
\le
|X|_{L^2_{G^{-1}}}
\le
\lambda^{-1/2}|X|_{L^2_a}.
\tag{WEP.2p3}
```

There is therefore a one-sided bridge from the model `L^2` theorem to the
pressure ledger:

```math
\boxed{
\|[\Pi_G^{ex},a_{<j-C}]\,\Delta_j v\|_{\mathsf{Press}_j}
\le
C_G\,2^{-j}
\Big(
\|\nabla_a a_{<j-C}\|_{L^\infty_a}
+
\|a_{<j-C}\|_{L^\infty_a}\,\|\nabla_a G\|_{L^\infty_a}
\Big)\|\Delta_j v\|_{L^2_a}.
}
\tag{WEP.2p}
```

No full equivalence with `\|\cdot\|_{L^2_a}` is claimed for
`\|\cdot\|_{\mathsf{Press}_j}` itself, because `\Pi_G^{ex}` may annihilate the
coexact channel. The projection structure is used only in the one-sided form
`(WEP.2p2)`.

If the active shell norm in the six-lemma ledger dominates `\|\Delta_j
v\|_{L^2_a}`, then the same bound may be rewritten as

```math
\boxed{
\|[\Pi_G^{ex},a_{<j-C}]\,\Delta_j v\|_{\mathsf{Press}_j}
\le
C_G\,2^{-j}
\Big(
\|\nabla_a a_{<j-C}\|_{L^\infty_a}
+
\|a_{<j-C}\|_{L^\infty_a}\,\|\nabla_a G\|_{L^\infty_a}
\Big)\|\Delta_j v\|_{\mathsf{SameDepth}_j}.
}
\tag{WEP.2p'}
```

So the pressure-ledger form adds no new theorem debt beyond the model
paradifferential commutator bound.

## Why This Is The Right Theorem

If `(WEP.2')` holds, then the friendliest reserve packet is no worse than the
already admitted low-high coefficient transport on the Euclidean side. That
would discharge the only edge channel still capable, on the current route
accounting, of yielding a
real gain.

So the reserve 4B route becomes:

```math
\text{top-}U\text{ low-high commutator theorem }(WEP.2')
\quad+\quad
\text{resonant shellwise }\mathcal B_G\text{ theorem}
\Longrightarrow
\text{reserve 4B closure.}
\tag{WEP.3}
```

The resonant partner theorem on the same exact projected carrier is isolated in
[weighted-exact-projection-resonant-shell-theorem-candidate.md](/Users/thomasbirnie/Documents/Research-Consolidation/problems/navier-stokes/theorem-construction/weighted-exact-projection-resonant-shell-theorem-candidate.md).

This is strictly sharper than:

- “localized exact projection,”
- “source-plus-response theorem,” or
- “the Hodge route may help.”

Those are now solved reductions or umbrellas. `(WEP.2')` is the first concrete
unproved theorem left on the friendliest edge packet.

## Hard Channel

The top-`A` edge does not enjoy the same optimism. Its divergence remains
genuinely top-order, so there is no current reason to expect the first gain to
come from that channel. On the reserve route it should be treated as the hard
pressure source, not as the likely first cancellation mechanism.
