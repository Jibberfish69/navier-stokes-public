# Affine-Survivor Quotient Compactness Interface Note

## Purpose

This note pushes the new quotient-compactness idea one honest step further on
the actual scale-memory route.

The previous note
[relative-band-quotient-compactness-formalization-note.md](/Users/thomasbirnie/Documents/Research-Consolidation/problems/navier-stokes/theorem-construction/relative-band-quotient-compactness-formalization-note.md)
introduced the abstract quotient-compactness framework for moving mesoscopic
bands. The present note specializes that framework to the current Volterra /
weighted-quotient route and proves the exact interface:

```math
\text{compactness/coercivity of the affine survivor}
\Longrightarrow
\text{collapse of the persistent weighted quotient mode.}
```

For the exact theorem shape of the missing compactness/coercivity statement on
the blowup-normalized class, see
[survivor-compactness-coercivity-theorem-shape-note.md](/Users/thomasbirnie/Documents/Research-Consolidation/problems/navier-stokes/theorem-construction/survivor-compactness-coercivity-theorem-shape-note.md).
For the most stripped-down affine version keeping only the survivor moments
`M_0,M_1`, see
[affine-survivor-stripped-down-note.md](/Users/thomasbirnie/Documents/Research-Consolidation/problems/navier-stokes/theorem-construction/affine-survivor-stripped-down-note.md).

It also identifies the first exact point where the current Navier-Stokes input
stack runs out.

## Setup

Retain the notation of
[persistent-weighted-quotient-kill-note.md](/Users/thomasbirnie/Documents/Research-Consolidation/problems/navier-stokes/theorem-construction/persistent-weighted-quotient-kill-note.md).

Let `I=[s_0,s_1]`, `J=[s_0,s_1-\kappa]`, and write

```math
F^{(n)}(s,t):=(\mathcal V_\kappa \widetilde Z^{(n)})(s,t),
\qquad
w^{(n)}(s,t):=a^{(n)}(e^s,t).
```

The persistent weighted quotient term is

```math
\mathfrak P^{(n)}
:=
\int_0^T H_{w^{(n)}}(t)\,\|c_{F^{(n)}}(t)\|_{L_x^2}^2\,dt,
\tag{1}
```

with

```math
H_{w^{(n)}}(t):=\frac{|I|^2}{\int_I (w^{(n)}(s,t))^{-1}\,ds},
\qquad
c_{F^{(n)}}(t):=\frac1{|I|}\int_I F^{(n)}(s,t)\,ds.
\tag{2}
```

By the exact Fubini computation from the kill note,

```math
c_{F^{(n)}}(t)
=
\int_J \theta_\kappa(\sigma)\,\widetilde Z^{(n)}(\sigma,t)\,d\sigma,
\tag{3}
```

where `\theta_\kappa` is affine on `J`.

Define the affine survivor map

```math
\Pi_{\mathrm{aff}}\widetilde Z^{(n)}
:=
\big(M_0^{(n)},M_1^{(n)}\big),
\tag{4}
```

with

```math
M_0^{(n)}(t):=\int_J \widetilde Z^{(n)}(\sigma,t)\,d\sigma,
\qquad
M_1^{(n)}(t):=\int_J \sigma\,\widetilde Z^{(n)}(\sigma,t)\,d\sigma.
\tag{5}
```

Then

```math
c_{F^{(n)}}(t)=A_\kappa M_0^{(n)}(t)+B_\kappa M_1^{(n)}(t)
\tag{6}
```

for geometry constants `A_\kappa,B_\kappa`.

## Affine survivor space

The affine survivor space is

```math
\mathcal Q_{\mathrm{aff}}
:=
L^2(J;L_x^2)/\ker \Pi_{\mathrm{aff}},
\tag{7}
```

where

```math
\ker \Pi_{\mathrm{aff}}
=
\{\widetilde Z : M_0(\widetilde Z)=0,\ M_1(\widetilde Z)=0\}.
\tag{8}
```

On each fixed time slice, `\mathcal Q_{\mathrm{aff}}` is two-dimensional over
the ambient `L_x^2` coefficient space.

So this route has already reduced the moving scale-memory obstruction to a
finite-codimension quotient.

## Exact interface lemma

### Lemma AQC-1 (Affine survivor controls the persistent coefficient)

For every `t`,

```math
\|c_{F^{(n)}}(t)\|_{L_x^2}
\le
\big(|A_\kappa|+|B_\kappa|\big)
\Big(
\|M_0^{(n)}(t)\|_{L_x^2}
+
\|M_1^{(n)}(t)\|_{L_x^2}
\Big).
\tag{9}
```

Equivalently, the coefficient map

```math
\mathcal C_{\mathrm{aff}}:\mathcal Q_{\mathrm{aff}}\to L_x^2,
\qquad
\mathcal C_{\mathrm{aff}}(\Pi_{\mathrm{aff}}\widetilde Z)
:=
A_\kappa M_0+B_\kappa M_1,
\tag{10}
```

is a bounded linear map on the affine survivor space.

### Proof

This is immediate from `(6)` and the triangle inequality.

## Weighted consequence

### Lemma AQC-2 (Affine quotient kill from survivor smallness)

Assume:

1. **survivor smallness**

```math
\int_0^T
\Big(
\|M_0^{(n)}(t)\|_{L_x^2}^2
+
\|M_1^{(n)}(t)\|_{L_x^2}^2
\Big)\,dt
\longrightarrow 0;
\tag{11}
```

2. **harmonic-weight boundedness**

```math
\sup_n \|H_{w^{(n)}}\|_{L^\infty(0,T)} \le C_H.
\tag{12}
```

Then

```math
\mathfrak P^{(n)} \to 0.
\tag{13}
```

### Proof

By `(9)`,

```math
\|c_{F^{(n)}}(t)\|_{L_x^2}^2
\le C_\kappa
\|M_0^{(n)}(t)\|_{L_x^2}^2
+
\|M_1^{(n)}(t)\|_{L_x^2}^2.
\tag{14}
```

Multiply by `H_{w^{(n)}}(t)`, integrate in time, and use `(12)` and `(11)`.

## Compactness version

### Lemma AQC-3 (Affine quotient compactness is enough)

Assume:

1. the affine survivor sequence `\Pi_{\mathrm{aff}}\widetilde Z^{(n)}` is
   strongly precompact in `L^2(0,T;L_x^2\times L_x^2)`;
2. every limit point of that affine survivor sequence is `0`;
3. the harmonic-weight bound `(12)` holds.

Then `\mathfrak P^{(n)} \to 0`.

### Meaning

This is the first clean route-specific quotient-compactness theorem shape.

It says:

```math
\boxed{
\text{to kill the persistent mode, it is enough to compactify the affine survivor itself.}
}
```

The full scale source `\widetilde Z^{(n)}` does not need to be made compact in
all directions. Only its image in the finite-dimensional quotient
`\mathcal Q_{\mathrm{aff}}` matters.

## What the present NS stack already gives

The current route gives only the coarse moment bound

```math
\|M_0^{(n)}(t)\|_{L_x^2}^2+\|M_1^{(n)}(t)\|_{L_x^2}^2
\le C_M
\int_J \|\widetilde Z^{(n)}(\sigma,t)\|_{L_x^2}^2\,d\sigma.
\tag{15}
```

That is enough to say:

```math
\text{if the full scale source were already small in }L^2_{t,\sigma}L_x^2,
\text{ then the affine survivor would be small too.}
```

But that is not a new theorem, because pairing `(15)` with the active weight
collapses directly back to the old lower-prefix active-square geometry.

So the inherited Euclidean stack currently gives:

- structural factorization through the affine quotient,
- boundedness of the affine survivor by the full source,
- no compactness or coercive decay of the affine survivor itself.

## First exact stopping point

The current route fails at the first place where one needs an autonomous
theorem on the affine survivor class.

More precisely, we do **not** currently have:

1. a theorem proving `(11)` directly on the affine moments;
2. a theorem proving precompactness of `\Pi_{\mathrm{aff}}\widetilde Z^{(n)}`;
3. a theorem proving the harmonic-mean bound `(12)`;
4. a theorem converting signed first-order descent into affine-survivor
   compactness or decay.

The last point is exactly where
[affine-quotient-kill-from-signed-scale-descent-audit.md](/Users/thomasbirnie/Documents/Research-Consolidation/problems/navier-stokes/theorem-construction/affine-quotient-kill-from-signed-scale-descent-audit.md)
stops: the current signed mechanism is one scale derivative short and still
leaves the scale-average of the potential alive.

## Formal takeaway

The quotient-compactness idea has now been pushed to the first exact interface:

```math
\boxed{
\text{relative-band quotient compactness}
\Longrightarrow
\text{affine survivor compactness}
\Longrightarrow
\text{persistent weighted quotient kill.}
}
```

That implication chain is formally correct.

But after the stricter terminal comparison recorded in
[two-family-terminal-impasse-note.md](/Users/thomasbirnie/Documents/Research-Consolidation/problems/navier-stokes/theorem-construction/two-family-terminal-impasse-note.md),
it should also be read with the right scope:
this interface lives entirely inside the **Family A** cumulative-readout
branch. It does not yet collapse the signed / gap-kernel terminal family onto
the affine survivor.

What remains open is not its logic, but its first theorem-bearing input:

```math
\boxed{
\text{prove compactness or coercive decay on the affine survivor itself.}
}
```

## Local anchors

- [relative-band-quotient-compactness-formalization-note.md](/Users/thomasbirnie/Documents/Research-Consolidation/problems/navier-stokes/theorem-construction/relative-band-quotient-compactness-formalization-note.md)
- [persistent-weighted-quotient-kill-note.md](/Users/thomasbirnie/Documents/Research-Consolidation/problems/navier-stokes/theorem-construction/persistent-weighted-quotient-kill-note.md)
- [persistent-weighted-quotient-kill-routes-audit.md](/Users/thomasbirnie/Documents/Research-Consolidation/problems/navier-stokes/theorem-construction/persistent-weighted-quotient-kill-routes-audit.md)
- [affine-quotient-kill-from-signed-scale-descent-audit.md](/Users/thomasbirnie/Documents/Research-Consolidation/problems/navier-stokes/theorem-construction/affine-quotient-kill-from-signed-scale-descent-audit.md)
- [volterra-scale-memory-formalization-note.md](/Users/thomasbirnie/Documents/Research-Consolidation/problems/navier-stokes/theorem-construction/volterra-scale-memory-formalization-note.md)
- [lower-triangular-scale-memory-formalization-note.md](/Users/thomasbirnie/Documents/Research-Consolidation/problems/navier-stokes/theorem-construction/lower-triangular-scale-memory-formalization-note.md)
