# Far-Corona Carleson Direct Attack

## Purpose

This note attacks the exact far-corona Carleson theorem directly, without
passing first through shellwise carriers, heuristic factorization, or a
one-scale replacement theorem.

The target is

```math
\textbf{(Car)}
\qquad
\int_0^T
\int_0^\infty
\Bigg(
\int_0^{r/c_1}\mathcal A_{\ell,r}(t)\,\frac{d\ell}{\ell}
\Bigg)^2
\frac{dr}{r}\,dt
\le
C_{\mathrm{Car}}\left(
\nu\int_0^T D_N(t)\,dt + C_*2^{-2\delta N}
\right)
```

The goal here is to push directly on that exact object and record what the
current Euclidean surface does and does not give.

## Exact setup

Keep the far-corona density from
`middle-band-flux-gap-kernel-theorem.md`:

```math
\mathcal A_{\ell,r}(t)
:=
\chi_{mid}(\log\ell)
\int_{\mathbb R^3}
\widetilde\Sigma_r(x,t)\,\tau_\ell^{H^1}[u](x,t)\,dx,
\qquad
r\ge c_1\ell,
\tag{1}
```

where `\widetilde\Sigma_r` is the far-corona strain at scale `r` and
`\tau_\ell^{H^1}[u]` is the active-scale `H^1` stress density.

Define

```math
B_r(t)
:=
\int_0^{r/c_1}\mathcal A_{\ell,r}(t)\,\frac{d\ell}{\ell}.
\tag{2}
```

Then `(Car)` is exactly

```math
\int_0^T\int_0^\infty B_r(t)^2\,\frac{dr}{r}\,dt
\le
C_{\mathrm{Car}}\left(\nu\int_0^T D_N(t)\,dt + C_*2^{-2\delta N}\right).
\tag{Car}
```

Because `\mathcal A_{\ell,r}\ge 0`, there is no cancellation available in
the `\ell`-integral. Any proof must control `B_r` itself.

## First exact rewrite

Set

```math
T_r(x,t)
:=
\int_0^{r/c_1}
\chi_{mid}(\log\ell)\,
\tau_\ell^{H^1}[u](x,t)\,\frac{d\ell}{\ell}.
\tag{3}
```

Then by Fubini,

```math
B_r(t)
=
\int_{\mathbb R^3}
\widetilde\Sigma_r(x,t)\,T_r(x,t)\,dx.
\tag{4}
```

So `(Car)` is the exact square-integrability statement for the bilinear
pairing of the low-scale strain `\widetilde\Sigma_r` against the accumulated
high-scale stress field `T_r`.

This is the direct coupled formulation. No factorization has been introduced.

## Exact scale-derivative identity for the accumulated stress

Because the `r`-dependence of `T_r` enters only through the upper integration
limit, one has the exact differentiation identity

```math
r\partial_r T_r(x,t)
=
\chi_{mid}(\log(r/c_1))\,\tau_{r/c_1}^{H^1}[u](x,t).
\tag{4a}
```

Consequently,

```math
r\partial_r \|T_r(t)\|_{L_x^2}^2
=
2\left\langle
T_r(t),\,
\chi_{mid}(\log(r/c_1))\,\tau_{r/c_1}^{H^1}[u](t)
\right\rangle_{L_x^2}.
\tag{4b}
```

This is the exact nested-scale structure unique to `T_r`.

However, it does **not** by itself close the stress theorem

```math
\int_0^T\int_0^\infty
r^{-2}\|Q_r u(t)\|_{L_x^2}^2\,\|T_r(t)\|_{L_x^2}^2
\frac{dr}{r}\,dt
\le
C_{\mathrm{FCTS}}\left(\nu\int_0^T D_N(t)\,dt + C_*2^{-2\delta N}\right),
\tag{FCTS}
```

because a Hardy or Gronwall step would still have to control the mixed product
on the right-hand side of `(4b)` against the dissipation weight
`r^{-2}\|Q_r u(t)\|_{L_x^2}^2\,dr/r`. No such propagation inequality is
currently available on the Euclidean surface.

So the exact derivative identity is useful structure, but not yet a theorem
that discharges `(FCTS)`.

## Direct attack A: the sharp `L^\infty_x \times L^1_x` route

From `(4)`,

```math
B_r(t)
\le
\|\widetilde\Sigma_r(t)\|_{L_x^\infty}
\int_{\mathbb R^3} T_r(x,t)\,dx.
\tag{5}
```

By the continuous LP band estimate,

```math
\|\widetilde\Sigma_r(t)\|_{L_x^\infty}
\le
C_{LP,\infty}
r^{-5/2}\|Q_r u(t)\|_{L_x^2}.
\tag{6}
```

Also,

```math
\int_{\mathbb R^3} T_r(x,t)\,dx
=
\int_0^{r/c_1}
\chi_{mid}(\log\ell)
\int_{\mathbb R^3}\tau_\ell^{H^1}[u](x,t)\,dx\,
\frac{d\ell}{\ell}.
\tag{7}
```

Dyadicize by taking `r\in[2^{-k-1},2^{-k}]` and
`\ell\in[2^{-j-1},2^{-j}]`. Then

```math
c_\tau E_j(t)
\le
\int_{\mathbb R^3}\tau_\ell^{H^1}[u](x,t)\,dx
\le
C_\tau E_j(t),
\qquad
E_j(t):=2^{2j}\|\Delta_j u(t)\|_{L_x^2}^2,
\tag{8}
```

and `(5)`-`(7)` give

```math
B_k(t)
\le
C_B
2^{5k/2}\|\Delta_k u(t)\|_{L_x^2}
\sum_{j\ge k+C_1}E_j(t),
\tag{9}
```

where `C_1` depends only on `c_1` and the smooth partition.

Squaring and summing in `k`,

```math
\int_0^T\int_0^\infty B_r(t)^2\,\frac{dr}{r}\,dt
\le
C_B
\int_0^T
\sum_{k>N+M}
\Bigg(
2^{5k/2}\|\Delta_k u(t)\|_{L_x^2}
\sum_{j\ge k+C_1}E_j(t)
\Bigg)^2
dt.
\tag{10}
```

Since `D_k(t)=2^{4k}\|\Delta_k u(t)\|_{L_x^2}^2`, this becomes

```math
\int_0^T\int_0^\infty B_r(t)^2\,\frac{dr}{r}\,dt
\le
C_B
\int_0^T
\sum_{k>N+M}
2^{k}D_k(t)
\Bigg(
\sum_{j\ge k+C_1}E_j(t)
\Bigg)^2
dt.
\tag{11}
```

Because `E_j(t)=2^{-2j}D_j(t)`, the same bound may be written as

```math
\int_0^T\int_0^\infty B_r(t)^2\,\frac{dr}{r}\,dt
\le
C_B
\int_0^T
\sum_{k>N+M}
2^{k}D_k(t)
\Bigg(
\sum_{j\ge k+C_1}2^{-2j}D_j(t)
\Bigg)^2
dt.
\tag{12}
```

### Consequence

`(12)` is the exact one-scale shadow produced by the direct `L^\infty_x\times
L^1_x` attack on `(Car)`.

It is **not** the theorem target itself. It is a sufficient overestimate.
What matters is that it still contains a genuinely quartic weighted tail:

```math
\sum_k 2^{k}D_k\Big(\sum_{j\ge k+C_1}2^{-2j}D_j\Big)^2.
```

The current Euclidean theorem queue (`SDS^\sharp`, `UTKD^\sharp`,
`PCI^\sharp`) does not discharge this quartic object.

So the direct `L^\infty_x\times L^1_x` route does not close `(Car)`.

## Direct attack B: the exact `L^2_x \times L^2_x` route

From `(4)`,

```math
B_r(t)^2
\le
\|\widetilde\Sigma_r(t)\|_{L_x^2}^2
\|T_r(t)\|_{L_x^2}^2.
\tag{13}
```

The far-corona strain is a band derivative at scale `r`, so

```math
\|\widetilde\Sigma_r(t)\|_{L_x^2}^2
\le
C_{LP,2}
r^{-2}\|Q_r u(t)\|_{L_x^2}^2.
\tag{14}
```

Substituting into `(Car)` gives the exact sufficient condition

```math
\int_0^T\int_0^\infty
r^{-2}\|Q_r u(t)\|_{L_x^2}^2
\|T_r(t)\|_{L_x^2}^2
\frac{dr}{r}\,dt
\le
C_{\mathrm{FCTS}}\left(\nu\int_0^T D_N(t)\,dt + C_*2^{-2\delta N}\right).
\tag{15}
```

This is again a direct reformulation of `(Car)`, not a variant:
the only new object is the accumulated stress field `T_r`, defined in `(3)`.

### Consequence

To close `(15)`, one would need an exact theorem controlling
`\|T_r\|_{L_x^2}^2` against the low-scale dissipation measure

```math
r^{-2}\|Q_r u(t)\|_{L_x^2}^2\,\frac{dr}{r}\,dt.
```

That theorem is not presently available on the inherited Euclidean surface.
No orthogonality or factorization has yet been proved that collapses
`\|T_r\|_{L_x^2}^2` to a one-scale queue already installed elsewhere.

So the direct `L^2_x\times L^2_x` route also stops at an exact missing
two-scale stress theorem.

## Direct attack C: fixed-collar shell-pair commutator reduction

The previous two attacks treat the exact coupled field `T_r` only through its
global `L_x^1` or `L_x^2` size. On the fixed-band endpoint route one can go one
step more local and test a single shell pair directly.

Fix dyadic shells `m\le j-C_1` and set

```math
u_m:=\Delta_m u,
\qquad
u_j:=\Delta_j u,
\qquad
\mathcal C_{m,j}(t)
:=
2^{2j}
\left\langle
[\Delta_j,u_m(t)\cdot\nabla]u_j(t),
u_j(t)
\right\rangle.
\tag{15a}
```

Then the dyadic commutator reduction from
`lifted-band-coarse-grained-stress-strain-flux-inequality.md`
specializes verbatim to

```math
|\mathcal C_{m,j}(t)|
\le
C_{\mathrm{comm}}
\int_{\mathbb R^3}
(\rho_j*|\nabla u_m(\cdot,t)|)(x)\,
\tau_j^{H^1}[u](x,t)\,dx.
\tag{15b}
```

Indeed the proof there uses only:

1. the kernel identity for `[\Delta_j,b\cdot\nabla]u_j`,
2. the mean-value bound `|\delta_h b|\le |h|\int_0^1 |\nabla b|`,
3. the band-stress control `2^{2j}|u_j|^2\le C_\tau\tau_j^{H^1}[u]`.

So one may simply take `b=u_m`.

This gives two exact shellwise envelopes.

### Shellwise `L^\infty_x\times L^1_x` envelope

Using `\|\rho_j*|\nabla u_m|\|_{L_x^\infty}\le \|\nabla u_m\|_{L_x^\infty}` and
`c_\tau E_j\le\int \tau_j^{H^1}[u]\le C_\tau E_j`, one gets

```math
|\mathcal C_{m,j}(t)|
\le
C_{\mathrm{comm},\tau}
\|\nabla u_m(t)\|_{L_x^\infty}\,E_j(t)
\le
C_{\mathrm{comm},\tau,B}
2^{5m/2}\|u_m(t)\|_{L_x^2}\,E_j(t).
\tag{15c}
```

Equivalently, since `E_m(t)=2^{2m}\|u_m(t)\|_{L_x^2}^2`,

```math
|\mathcal C_{m,j}(t)|
\le
C_{\mathrm{comm},\tau,B}
2^{m/2}E_m(t)^{1/2}\,E_j(t).
\tag{15d}
```

### Shellwise `L^2_x\times L^2_x` envelope

Using `\|\rho_j*|\nabla u_m|\|_{L_x^2}\le \|\nabla u_m\|_{L_x^2}` and
`\|\tau_j^{H^1}[u]\|_{L_x^2}\le C_\tau'2^{-j/2}D_j`, one gets

```math
|\mathcal C_{m,j}(t)|
\le
C_{\mathrm{comm}}
\|\nabla u_m(t)\|_{L_x^2}\,\|\tau_j^{H^1}[u](t)\|_{L_x^2}
\le
C_{\mathrm{comm},\tau'}
E_m(t)^{1/2}\,2^{-j/2}D_j(t).
\tag{15e}
```

So the shell-pair commutator route is strictly sharper than the crude quartic
shadow `2^{-j}D_j^2`: one now has either a coefficient-energy form `(15d)` or a
bilinear dissipation form `(15e)`.

### Sharp boundary of the shell-pair route

The shell-pair reduction still leaves one real question, but it is now
sharper than the old coefficient-identification story.

First, an amplitude-free shellwise absorption theorem is impossible.
Indeed `(15a)` is cubic in the velocity while `D_j` is quadratic. So for any
fixed nontrivial collar-supported test field `v` and scaling `v_\lambda=\lambda
v`, one has

```math
\mathcal C_{m,j}[v_\lambda]=\lambda^3\mathcal C_{m,j}[v],
\qquad
D_j[v_\lambda]=\lambda^2 D_j[v].
\tag{15f}
```

Therefore no estimate of the form

```math
|\mathcal C_{m,j}(t)|
\le
\varepsilon\nu D_j(t)+K_N
\tag{15g}
```

with `K_N` independent of the instantaneous amplitude can hold uniformly:
dividing the scaled inequality by `\lambda^2` and sending `\lambda\to\infty`
forces a contradiction. So the shell-pair theorem, if true, must be
coefficient-bearing.

That coefficient-bearing theorem is already available on the upgraded
fourth-bridge carrier.

Let `\mathcal B_I(N),\mathcal B_J(N)` be the finite dyadic packets extracted
from the fixed logarithmic middle-band windows. Because those windows have
bounded width and lie below the threshold scale `\ell_N`, there is a harmless
collar constant `C_{I,J}` such that

```math
m\in\mathcal B_I(N),\ j\in\mathcal B_J(N)
\Longrightarrow
N\le j\le N+C_{I,J},
\qquad
|m-N|\le C_{I,J}.
\tag{15h}
```

After enlarging once and for all the harmless threshold collar width `M` in
`\Theta_N^\sharp` so that it dominates `C_{I,J}`, one has

```math
2^{3N}\sum_{m\in\mathcal B_I(N)}\|u_m(t)\|_{L_x^2}^2
\le
\Theta_N^\sharp(t).
\tag{15i}
```

Now use the coefficient form `(15c)` and split against `D_j=2^{2j}E_j`:

```math
2^{5m/2}\|u_m(t)\|_{L_x^2}\,E_j(t)
\le
\varepsilon\nu D_j(t)

+
C_{\varepsilon,\nu}\,
\frac{2^{5m}\|u_m(t)\|_{L_x^2}^2\,E_j(t)^2}{D_j(t)}
\tag{15j}
```

```math
=
\varepsilon\nu D_j(t)

+
C_{\varepsilon,\nu}\,
2^{5m-2j}\|u_m(t)\|_{L_x^2}^2\,E_j(t).
\tag{15k}
```

By `(15h)`, the coefficient weight satisfies

```math
2^{5m-2j}\le C_{I,J}2^{3N},
\tag{15l}
```

so

```math
|\mathcal C_{m,j}(t)|
\le
\varepsilon\nu D_j(t)

+
C_{\varepsilon,\nu,I,J}\,
2^{3N}\|u_m(t)\|_{L_x^2}^2\,E_j(t).
\tag{15m}
```

Summing `(15m)` over the finite collar family and using `(15i)` gives

```math
\sum_{m\in\mathcal B_I(N)}
\sum_{j\in\mathcal B_J(N)}
|\mathcal C_{m,j}(t)|
\le
\varepsilon\nu\sum_{j\in\mathcal B_J(N)}D_j(t)

+
C_{\varepsilon,\nu,I,J}\,
\Theta_N^\sharp(t)\sum_{j\in\mathcal B_J(N)}E_j(t).
\tag{15n}
```

Since `j\ge N` on the active middle-band collar, one has
`\sum_{j\in\mathcal B_J(N)}D_j\le D_N` and
`\sum_{j\in\mathcal B_J(N)}E_j\le E_N`. Hence

```math
\sum_{m\in\mathcal B_I(N)}
\sum_{j\in\mathcal B_J(N)}
|\mathcal C_{m,j}(t)|
\le
\varepsilon\nu D_N(t)

+
C_{\varepsilon,\nu,I,J}\,
\Theta_N^\sharp(t)\,E_N(t)
\le
\varepsilon\nu D_N(t)

+
C_{\varepsilon,\nu,I,J}\,
\widetilde\Lambda_N^\sharp(t)\,E_N(t).
\tag{15o}
```

So the fixed-collar coefficient branch is **already absorbed** by the admitted
upgraded Euclidean carrier. What remains open on this route is no longer a
pure coefficient-identification theorem. The remaining burden is only the
exact proposition-level threading from the shell-pair commutator family back to
the chosen endpoint / Carleson formulation, or else one of the continuum
theorem forms `(12)`, `(15)`, or `(CTS)` above.

## Exact obstruction

The two direct attacks above show that the barrier to `(Car)` is not the
kernel `\ell/r` and not Schur summation. It is the absence of a theorem that
controls the accumulated high-scale stress field `T_r` when paired with the
far-corona low-scale strain.

Equivalently, the direct proof attempt localizes the missing content to one of
the following exact theorem forms:

1. a quartic weighted tail theorem strong enough to bound `(12)`;
2. an `L^2_x`-Carleson theorem strong enough to bound `(15)`;
3. a direct one-sided square / Carleson theorem on the exact coupled object
   `B_r` in `(2)`.
4. a fixed-collar shell-pair threading theorem that turns the already absorbed
   coefficient family `(15o)` into the chosen endpoint / Carleson formulation,
   or else a direct bilinear theorem for `(15e)` on the finite collar family.

All four are direct consequences of attacking `(Car)` itself. None of them is
presently proved from the inherited Euclidean inputs.

## Honest outcome of the direct proof attempt

This note does **not** prove `(Car)`.

What it does prove is sharper:

1. the exact theorem `(Car)` may be rewritten directly as the square-integrable
   pairing `(4)` of low-scale strain against accumulated high-scale stress;
2. the sharp `L^\infty_x\times L^1_x` route yields the precise quartic shadow
   `(12)`;
3. the sharp `L^2_x\times L^2_x` route yields the precise weighted stress
   theorem `(15)`.

So the remaining far-corona burden is no longer vague. The exact failed
proof-attempt surfaces are now explicit and recorded on the theorem route
itself.

The companion note
`far-corona-cumulative-tail-stress-theorem.md`
then records the strongest direct sufficient theorem produced by the
`L_x^2\times L_x^2` route: a cumulative dissipation-tail estimate against the
exact stress source `\tau_\ell^{H^1}[u]`. That note proves
`(CTS)\Rightarrow\mathrm{FCTS}` and shows that the inherited Euclidean inputs
reduce `(CTS)` to a new dyadic weighted square object, but do not close it.
