# Weighted Mixed-Jet Radius-Loss Energy Reduction

## Purpose

This note extracts the next exact classical theorem from the weighted mixed-jet
package.

The main point is:

```math
\boxed{
\text{after squaring the factorial weights, the full tower nonlinearity becomes}
}
```

```math
\boxed{
\text{an ordinary discrete convolution in } \ell^2,
\text{ and one gets a genuine radius-loss energy inequality.}
}
```

So the classical mixed-jet route is not blocked by raw combinatorics anymore.
It now has the shape of a weighted scale-of-spaces problem.

## Setup

Write

```math
J_{m,\alpha}:=\partial_t^m\partial_x^\alpha u,
\qquad
\Pi_{m,\alpha}:=\partial_t^m\partial_x^\alpha p.
\tag{1}
```

For fixed `s>\frac32`, set

```math
a_{m,\alpha}(t):=\|J_{m,\alpha}(t)\|_{H^s},
\qquad
d_{m,\alpha}(t):=\|\nabla J_{m,\alpha}(t)\|_{H^s}.
\tag{2}
```

Define the full rung transport convolution bound

```math
c_{m,\alpha}(t)
:=
\sum_{a=0}^{m}\sum_{\beta\le\alpha}
\binom ma \binom{\alpha}{\beta}\,
\|J_{a,\beta}(t)\|_{H^s}\,
\|J_{m-a,\alpha-\beta}(t)\|_{H^s}.
\tag{3}
```

By
[mixed-jet-hs-quadratic-convolution-reduction.md](/Users/thomasbirnie/Documents/Research-Consolidation/problems/navier-stokes/theorem-construction/mixed-jet-hs-quadratic-convolution-reduction.md),
this is the exact whole-tower nonlinear envelope at the weighted `H^s` level.

## Rung energy inequality

Fix one rung `(m,\alpha)`.
Split the differentiated equation as

```math
\partial_t J_{m,\alpha}
+
(u\cdot\nabla)J_{m,\alpha}
+
\widetilde T_{m,\alpha}
+
\nabla\Pi_{m,\alpha}
=
\nu\Delta J_{m,\alpha},
\tag{4}
```

where `\widetilde T_{m,\alpha}` is the off-diagonal transport sum, so

```math
\|\widetilde T_{m,\alpha}\|_{H^{s-1}}
\le
C_s\,c_{m,\alpha}.
\tag{5}
```

Apply `\Lambda^s` to `(4)` and pair with `\Lambda^s J_{m,\alpha}`.
The commuting principal part of the base transport term drops because
`\nabla\cdot u=0`, but the Sobolev commutator remains:

```math
\begin{aligned}
&\langle \Lambda^s((u\cdot\nabla)J_{m,\alpha}),
                 \Lambda^s J_{m,\alpha}\rangle\\
&\qquad=
\langle [\Lambda^s,u\cdot\nabla]J_{m,\alpha},
        \Lambda^sJ_{m,\alpha}\rangle,
\end{aligned}
\tag{6}
```

For `s>5/2`, the Kato--Ponce commutator estimate and Sobolev embedding give

```math
\begin{aligned}
\|[\Lambda^s,u\cdot\nabla]J_{m,\alpha}\|_2
&\le C_s\Big(
\|\nabla u\|_\infty\|J_{m,\alpha}\|_{H^s}
+\|u\|_{H^s}\|\nabla J_{m,\alpha}\|_\infty
\Big)\\
&\le C_s\,a_{0,0}\,a_{m,\alpha}.
\end{aligned}
\tag{6a}
```

Consequently,

```math
\left|
\langle [\Lambda^s,u\cdot\nabla]J_{m,\alpha},
        \Lambda^sJ_{m,\alpha}\rangle
\right|
\le C_s\,a_{0,0}\,a_{m,\alpha}^2.
\tag{6b}
```

and the pressure term also drops:

```math
\langle \Lambda^s\nabla\Pi_{m,\alpha},\Lambda^s J_{m,\alpha}\rangle=0.
\tag{7}
```

So

```math
\frac12\frac{d}{dt}a_{m,\alpha}^2
+
\nu d_{m,\alpha}^2
=
-\langle [\Lambda^s,u\cdot\nabla]J_{m,\alpha},
        \Lambda^sJ_{m,\alpha}\rangle
-\langle \Lambda^s \widetilde T_{m,\alpha},\Lambda^s J_{m,\alpha}\rangle.
\tag{8}
```

Using self-adjointness of `\Lambda`,

```math
\big|
\langle \Lambda^s \widetilde T_{m,\alpha},\Lambda^s J_{m,\alpha}\rangle
\big|
=
\big|
\langle \Lambda^{s-1}\widetilde T_{m,\alpha},\Lambda^{s+1}J_{m,\alpha}\rangle
\big|.
\tag{9}
```

Also

```math
\|J_{m,\alpha}\|_{H^{s+1}}
\le
C\big(a_{m,\alpha}+d_{m,\alpha}\big).
\tag{10}
```

Therefore, by `(5)` and Young's inequality,

```math
\big|
\langle \Lambda^s \widetilde T_{m,\alpha},\Lambda^s J_{m,\alpha}\rangle
\big|
\le
C_s\,c_{m,\alpha}\big(a_{m,\alpha}+d_{m,\alpha}\big)
\le
\frac{\nu}{4}d_{m,\alpha}^2
+
C_{s,\nu}\big(a_{m,\alpha}^2+c_{m,\alpha}^2\big).
\tag{11}
```

Hence

```math
\boxed{
\frac12\frac{d}{dt}a_{m,\alpha}^2
+
\frac{3\nu}{4}d_{m,\alpha}^2
\le
C_{s,\nu}\Big(
(1+a_{0,0})a_{m,\alpha}^2+c_{m,\alpha}^2
\Big).
}
\tag{12}
```

This is the corrected rung-level energy inequality. The base transport
cancellation is exact in `L^2`, but at positive Sobolev order its commutator is
part of the live one-field nonlinear flux.

## Squared factorial-weight energies

For `\tau,r\ge0`, define

```math
w_{m,\alpha}(\tau,r)
:=
\frac{\tau^m r^{|\alpha|}}{m!\,\alpha!}.
\tag{13}
```

Define the squared-weight tower energy and dissipation:

```math
\mathfrak E_s(\tau,r)
:=
\sum_{m\ge0}\sum_{\alpha}
w_{m,\alpha}(\tau,r)^2\,
a_{m,\alpha}^2,
\tag{14}
```

```math
\mathfrak D_s(\tau,r)
:=
\sum_{m\ge0}\sum_{\alpha}
w_{m,\alpha}(\tau,r)^2\,
d_{m,\alpha}^2.
\tag{15}
```

Keep the previously defined weighted `\ell^1` tower norm

```math
\mathfrak A_s(\tau,r)
:=
\sum_{m\ge0}\sum_{\alpha}
w_{m,\alpha}(\tau,r)\,
a_{m,\alpha}.
\tag{16}
```

## Exact convolution identity after squaring the weights

Set

```math
f_{m,\alpha}
:=
w_{m,\alpha}(\tau,r)\,a_{m,\alpha}.
\tag{17}
```

Then `(17)` from the earlier mixed-jet reduction gives

```math
w_{m,\alpha}(\tau,r)\,
\binom ma \binom{\alpha}{\beta}
=
w_{a,\beta}(\tau,r)\,
w_{m-a,\alpha-\beta}(\tau,r).
\tag{18}
```

So the weighted nonlinear envelope is exactly the ordinary discrete convolution

```math
w_{m,\alpha}(\tau,r)\,c_{m,\alpha}
=
\sum_{a=0}^{m}\sum_{\beta\le\alpha}
f_{a,\beta}\,f_{m-a,\alpha-\beta}
=
(f*f)_{m,\alpha}.
\tag{19}
```

Therefore

```math
\sum_{m,\alpha}
w_{m,\alpha}(\tau,r)^2\,c_{m,\alpha}^2
=
\|f*f\|_{\ell^2(\mathbb N\times\mathbb N^3)}^2.
\tag{20}
```

By Young's convolution inequality,

```math
\|f*f\|_{\ell^2}
\le
\|f\|_{\ell^1}\|f\|_{\ell^2}.
\tag{21}
```

Since

```math
\|f\|_{\ell^1}=\mathfrak A_s(\tau,r),
\qquad
\|f\|_{\ell^2}^2=\mathfrak E_s(\tau,r),
\tag{22}
```

we obtain the exact quadratic energy bound

```math
\boxed{
\sum_{m,\alpha}
w_{m,\alpha}(\tau,r)^2\,c_{m,\alpha}^2
\le
\mathfrak A_s(\tau,r)^2\,\mathfrak E_s(\tau,r).
}
\tag{23}
```

## Whole-tower energy inequality

Multiply `(12)` by `w_{m,\alpha}(\tau,r)^2` and sum over all rungs.
Using `(23)` and

```math
a_{0,0}\le\mathfrak A_s(\tau,r)
\le 1+\mathfrak A_s(\tau,r)^2,
```

the commutator is retained and the same qualitative whole-tower bound becomes

```math
\boxed{
\frac12\frac{d}{dt}\mathfrak E_s(\tau,r)
+
\frac{3\nu}{4}\mathfrak D_s(\tau,r)
\le
C_{s,\nu}\big(1+\mathfrak A_s(\tau,r)^2\big)\mathfrak E_s(\tau,r).
}
\tag{24}
```

This is the first genuine whole-tower energy law on the mixed-jet route.

It is not yet closed, because the coefficient still contains the `\ell^1`
weighted norm `\mathfrak A_s`.
The coefficient contains both the off-diagonal binomial convolution and the
base-advection Sobolev commutator. Thus this is a valid reduction of the tower
to a scale-of-spaces energy problem, not an exact cancellation of the complete
transport term.

## Radius-loss comparison

Fix two weight pairs

```math
0\le \tau_0<\tau_1,
\qquad
0\le r_0<r_1.
\tag{25}
```

Then

```math
\mathfrak A_s(\tau_0,r_0)
=
\sum_{m,\alpha}
\frac{w_{m,\alpha}(\tau_0,r_0)}{w_{m,\alpha}(\tau_1,r_1)}
\,
\big(
w_{m,\alpha}(\tau_1,r_1)a_{m,\alpha}
\big).
\tag{26}
```

By Cauchy-Schwarz,

```math
\mathfrak A_s(\tau_0,r_0)^2
\le
\Big(
\sum_{m,\alpha}
\Big(\frac{\tau_0}{\tau_1}\Big)^{2m}
\Big(\frac{r_0}{r_1}\Big)^{2|\alpha|}
\Big)
\mathfrak E_s(\tau_1,r_1).
\tag{27}
```

Now

```math
\sum_{m\ge0}\Big(\frac{\tau_0}{\tau_1}\Big)^{2m}
=
\frac{1}{1-(\tau_0/\tau_1)^2},
\tag{28}
```

and

```math
\sum_{\alpha\in\mathbb N^3}
\Big(\frac{r_0}{r_1}\Big)^{2|\alpha|}
=
\Big(1-(r_0/r_1)^2\Big)^{-3}.
\tag{29}
```

Therefore

```math
\boxed{
\mathfrak A_s(\tau_0,r_0)^2
\le
\frac{1}{
\big(1-(\tau_0/\tau_1)^2\big)\,
\big(1-(r_0/r_1)^2\big)^3
}\,
\mathfrak E_s(\tau_1,r_1).
}
\tag{30}
```

So the weighted `\ell^1` tower norm at a smaller radius is controlled by the
squared-weight energy at a strictly larger radius.

## Radius-loss energy inequality

Combine `(24)` at the smaller radius `(\tau_0,r_0)` with `(30)` to get

```math
\boxed{
\frac12\frac{d}{dt}\mathfrak E_s(\tau_0,r_0)
+
\frac{3\nu}{4}\mathfrak D_s(\tau_0,r_0)
\le
C_{s,\nu,\tau_0,\tau_1,r_0,r_1}
\big(1+\mathfrak E_s(\tau_1,r_1)\big)\,
\mathfrak E_s(\tau_0,r_0).
}
\tag{31}
```

Hence bounded control at a slightly larger weight pair propagates the energy at
any strictly smaller weight pair.

## Meaning

This proves three exact things.

### 1. The mixed-jet tower has a genuine weighted energy system

Once the factorial weights are squared, the nonlinear tower becomes an ordinary
discrete convolution in `\ell^2`.

### 2. The live classical burden is now a radius-loss closure problem

The unresolved issue is no longer raw binomial combinatorics.
It is whether the weighted energy scale can be closed without losing all radius.

### 3. The natural closure shape is Cauchy-Kowalevski-like

Equation `(31)` says the route behaves like a scale of weighted spaces with
strict radius loss:

```math
\text{larger weighted slice}
\Longrightarrow
\text{controls smaller weighted slice}.
```

That is a real mathematical structure, not a packet restatement.

## Limitation

This note does **not** prove a no-loss or globally propagated weighted slice,
so it does not discharge `(C1)`.

It proves only that the exact mixed-jet tower now sits inside a precise
radius-loss weighted energy system:

```math
\boxed{
\text{the remaining classical burden is to close the weighted energy scale,}
}
```

```math
\boxed{
\text{not to fight the binomial coefficients rung-by-rung.}
}
\tag{32}
```
