# Far-Corona CTS/LPAS Execution Program

## Purpose

This note packages the far-corona side of the signed continuous-scale route in
the exact language the lane now supports.

It separates three things that were getting blurred together:

1. the exact continuum theorem debt;
2. the local work surface selected by the inherited dyadic reduction;
3. the bad overestimates and circular shortcuts to avoid.

## Exact continuum theorem debt

After the middle-band near/far split, the far-corona packet is controlled by
the coupled two-scale density

```math
\mathcal A_{\ell,r}(t)
:=
\chi_{mid}(\log\ell)
\int_{\mathbb R^3}
\widetilde\Sigma_r(x,t)\,\tau_\ell^{H^1}[u](x,t)\,dx,
\qquad r\ge c_1\ell,
\tag{1}
```

with explicit gap kernel

```math
\Pi_N^{mid,far,L}(t)
\le C_L
\int_0^{\ell_N}\int_{r\ge c_1\ell}
\frac{\ell}{r}\,\mathcal A_{\ell,r}(t)\,
\frac{dr}{r}\,\frac{d\ell}{\ell}.
\tag{2}
```

So the exact continuum debt is not a one-scale tail theorem. It is the
far-corona closure problem for `(2)`.

The sufficient continuum route already on the lane is

```math
\Pi_N^{mid,far,L}
\Longleftarrow
\mathrm{Car}
\Longleftarrow
\mathrm{FCTS}
\Longleftarrow
\mathrm{CTS}.
\tag{3}
```

So the exact continuum theorem debt is:

```math
\text{close CTS strongly enough to imply FCTS, hence Car, hence the far-corona barrier.}
\tag{4}
```

## Local Work Surface Selected By Reduction

The lane does **not** currently prove `(CTS)` directly from inherited Euclidean
inputs. The direct inherited reduction lands on the dyadic object

```math
\int_0^T
\sum_{j\ge N}
\left(
\sum_{k\le j-C_1}E_k(t)
\right)
2^{-j}D_j(t)^2
\,dt,
\tag{5}
```

which is exactly the lower-prefix active-square theorem surface `(LPAS)`.

So the correct local reading is:

```math
\text{exact continuum debt} = \mathrm{CTS},
\qquad
\text{local work surface selected by the inherited dyadic reduction} = \mathrm{LPAS}.
\tag{6}
```

That matches the current working note: the preferred route remains the
continuum cumulative-tail stress theorem, while the actual theorem-crank
surface for local Hardy/Volterra work is its dyadic shadow.

Exactness consequence: `LPAS` is not accepted because it has the same scale or is
used as an unproved local proxy for `CTS`.  It is usable only after the displayed reduction
from the coupled density `\mathcal A_{\ell,r}` through the lower-prefix dyadic
object `(5)`.  Any proof that bypasses that reduction has to work directly with
the two-scale `CTS`/`FCTS`/`Car` chain.

## Execution order

The sane order is:

1. keep the coupled density `\mathcal A_{\ell,r}` visible long enough to retain
   the exact far-corona geometry;
2. use the kernel `\ell/r` only to expose the cumulative-tail theorem `(CTS)`;
3. translate `(CTS)` to the dyadic lower-prefix active-square surface `(LPAS)`;
4. push `(LPAS)` with the installed scale-memory / Hardy-Volterra machinery;
5. feed the resulting estimate back upward:

```math
\mathrm{LPAS}
\Longrightarrow
\mathrm{CTS}
\Longrightarrow
\mathrm{FCTS}
\Longrightarrow
\mathrm{Car}
\Longrightarrow
\Pi_N^{mid,far,L}.
\tag{7}
```

This is the execution order now.

## Stronger direct two-scale sufficient route

The middle-band kernel note already records a stronger but still exact
sufficient theorem directly on the coupled density `\mathcal A_{\ell,r}`.
Namely, if one proves the factorized two-scale statement

```math
\textbf{(F2S)}:\qquad
\mathcal A_{\ell,r}(t)\le U(\ell,t)\,V(r,t),
\qquad r\ge c_1\ell,
\tag{7a}
```

with

```math
\int_0^T\int_0^{\ell_N} U(\ell,t)^2\,\frac{d\ell}{\ell}\,dt
\le
C_U\int_0^T D_N(t)\,dt,
\tag{7b}
```

and

```math
\int_0^T\int_{\ell\le r/c_1} V(r,t)^2\,\frac{dr}{r}\,dt
\le
C_V\,2^{-2\delta N},
\tag{7c}
```

then the Hardy/Schur step already gives the barrier estimate for the
far-corona packet:

```math
\textbf{(F2S)}
\Longrightarrow
\Pi_N^{mid,far,L}
\le
\frac{\eta\nu}{16}\int_0^T D_N(t)\,dt
+
C_*2^{-2\delta N}.
\tag{7d}
```

So there is a direct coupled-density sufficient route that is stronger than
`(CTS)` / `(LPAS)` but still fully native to the exact far-corona geometry.

The direct \(L^p\)-factorization test in
`mpp-forward-gold-far-corona-lp-factorization-test-20260619.md` shows that this
route cannot be supplied merely by choosing a better spatial Hölder split.
For every \(L^p\times L^{p'}\) factorization, the lower edge of the far-corona
leaves the finite-band endpoint factor

```math
2^{-j/2}E_k(t)^{1/2}D_j(t),
\qquad k=j-O(1).
```

So `(F2S)` remains possible only as a genuinely coupled two-scale theorem.  The
naive factorized route collapses to the same endpoint / finite-band survivor
isolated below.

## Sharper operator-level contraction

There is one honest contraction beyond the raw `LPAS` statement. The
Hardy/Volterra route and the lower-triangular operator notes show that the
far-corona stress square also admits the exact decomposition

```math
\mathrm{FCTS}
=
\int_0^T
\|M_w^{1/2}(I-P_w)\mathcal V_\kappa \widetilde Z(\cdot,t)\|_{L_s^2(I;L_x^2)}^2\,dt
+
\int_0^T
H_w(t)\,\|A_\kappa M_0(t)+B_\kappa M_1(t)\|_{L_x^2}^2\,dt,
\tag{8a}
```

where:

- `\mathcal V_\kappa` is the lower-triangular Volterra primitive in scale,
- `P_w` is the weighted quotient projector selected by the active dissipation
  weight,
- `H_w=|I|^2/\int_I w^{-1}` is the harmonic-mean factor,
- `M_0,M_1` are the affine survivor moments of the source
  `\widetilde Z`.

So an exact sufficient operator-level route is

```math
\textbf{(DER)}
\;+\;
\textbf{(AQK)}
\Longrightarrow
\mathrm{FCTS}
\Longrightarrow
\mathrm{Car}
\Longrightarrow
\Pi_N^{mid,far,L},
\tag{8b}
```

with

```math
\textbf{(DER)}:\quad
\int_0^T
\|M_w^{1/2}(I-P_w)\mathcal V_\kappa \widetilde Z(\cdot,t)\|_{L_s^2(I;L_x^2)}^2\,dt
\le
\frac{\eta\nu}{C}\int_0^T D_N(t)\,dt + C_*2^{-2\delta N},
\tag{8c}
```

and

```math
\textbf{(AQK)}:\quad
\int_0^T
H_w(t)\,\|A_\kappa M_0(t)+B_\kappa M_1(t)\|_{L_x^2}^2\,dt
\le
\frac{\eta\nu}{C}\int_0^T D_N(t)\,dt + C_*2^{-2\delta N}.
\tag{8d}
```

This does not yet improve the mainline contradiction route, because `(DER)` is
not presently closed from the inherited Euclidean inputs. But it does expose a
strictly smaller persistent survivor than the crude lower-prefix mass: the
affine quotient `A_\kappa M_0+B_\kappa M_1`.

At the smallest stripped-down level, `(AQK)` itself is now reduced to one of
two exact theorem shapes on the affine survivor pair `(M_0,M_1)`:

```math
\text{either second-order scale exactness of }\widetilde Z
\text{ modulo a small affine remainder,}
\tag{8e}
```

or

```math
\text{a closed tame evolution / vanishing law for }(M_0,M_1).
\tag{8f}
```

So the operator route has a genuine final local object: not the whole prefix
mass, but the two affine survivor coordinates.

There is one further exact contraction on the **positive** stress carrier.
Because

```math
\widetilde Z(\sigma,t,x)=\chi_{mid}(\sigma)^{1/2}\tau_{e^\sigma}^{H^1}[u](x,t)\ge 0,
\tag{8g}
```

the affine coefficient itself satisfies

```math
c_F(t)
=
\int_{s_0}^{s_1-\kappa}\frac{(s_1-\kappa)-\sigma}{|I|}\,\widetilde Z(\sigma,t)\,d\sigma
\le
\frac{|J|}{|I|}\,M_0(t),
\tag{8h}
```

where `J=[s_0,s_1-\kappa]` and

```math
M_0(t)=\int_J \widetilde Z(\sigma,t)\,d\sigma = F(s_1,t).
\tag{8i}
```

So `(AQK)` is implied by the weighted endpoint theorem

```math
\textbf{(EP)}:\qquad
\int_0^T H_w(t)\,\|M_0(t)\|_{L_x^2}^2\,dt
\le
\frac{\eta\nu}{C}\int_0^T D_N(t)\,dt + C_*2^{-2\delta N}.
\tag{8j}
```

This is a real shrinkage of the persistent survivor: on the positive carrier,
the affine quotient is controlled by the endpoint mass `M_0=F(s_1)`.

There is one more exact contraction. Since

```math
H_w(t)=\frac{|I|^2}{\int_I w(s,t)^{-1}\,ds}
\le
\int_I w(s,t)\,ds,
\tag{8j1}
```

and

```math
\|M_0(t)\|_{L_x^2}^2
=
\left\|\int_J \widetilde Z(\sigma,t)\,d\sigma\right\|_{L_x^2}^2
\le
|J|\int_J \|\widetilde Z(\sigma,t)\|_{L_x^2}^2\,d\sigma,
\tag{8j2}
```

the weighted endpoint theorem `(EP)` is implied by

```math
\int_0^T
\Big(\int_I w(s,t)\,ds\Big)
\Big(\int_J \|\widetilde Z(\sigma,t)\|_{L_x^2}^2\,d\sigma\Big)\,dt
\le
\frac{\eta\nu}{C}\int_0^T D_N(t)\,dt + C_*2^{-2\delta N}.
\tag{8j3}
```

Because `I` and `J` are fixed logarithmic windows, there are finite dyadic
index sets `\mathcal B_I(N)`, `\mathcal B_J(N)` with cardinality at most
`C_{\log}` such
that

```math
\int_I w(s,t)\,ds
\ge c_I
\sum_{m\in\mathcal B_I(N)} E_m(t),
\qquad
\int_I w(s,t)\,ds
\le C_I
\sum_{m\in\mathcal B_I(N)} E_m(t),
\tag{8j4}
```

and

```math
\int_J \|\widetilde Z(\sigma,t)\|_{L_x^2}^2\,d\sigma
\le C_{\tau}
\sum_{j\in\mathcal B_J(N)} \|\tau_j^{H^1}[u](t)\|_{L_x^2}^2
\le C_{\tau}'
\sum_{j\in\mathcal B_J(N)} 2^{-j}D_j(t)^2.
\tag{8j5}
```

So `(EP)` is further reduced to the finite-band endpoint square theorem

```math
\textbf{(FBE)}:\qquad
\int_0^T
\Big(\sum_{m\in\mathcal B_I(N)} E_m(t)\Big)
\Big(\sum_{j\in\mathcal B_J(N)} 2^{-j}D_j(t)^2\Big)\,dt
\le
\frac{\eta\nu}{C}\int_0^T D_N(t)\,dt + C_*2^{-2\delta N}.
\tag{8j6}
```

Since `\mathcal B_I(N)` and `\mathcal B_J(N)` have uniformly bounded
cardinality, `(FBE)` is implied by the finite shell-pair family

```math
\textbf{(FBE)}_{m,j}:\qquad
\int_0^T E_m(t)\,2^{-j}D_j(t)^2\,dt
\le
\frac{\eta\nu}{C_{I,J}}\int_0^T D_N(t)\,dt + C_*2^{-2\delta N},
\qquad
m\in\mathcal B_I(N),\ j\in\mathcal B_J(N),
\tag{8j7}
```

with constants uniform in the finitely many collar indices, where `C_{I,J}` is a
fixed collar-width constant. So the fixed-band endpoint route has been reduced
to a bounded family of local shellwise estimates rather than a moving lower-prefix
theorem.

This is strictly smaller than `(CTS)` / `(LPAS)`: no moving lower prefix
survives. The burden has become a fixed-width active-band packet.

There is also a sharper local reduction on the fixed-collar route. The direct
shell-pair commutator test in
`far-corona-carleson-direct-attack.md`
shows that for each fixed low/active pair `m\in\mathcal B_I(N)`,
`j\in\mathcal B_J(N)`,

```math
2^{2j}
\left|
\left\langle
[\Delta_j,\Delta_m u\cdot\nabla]\Delta_j u,\Delta_j u
\right\rangle
\right|
\le C_{m,j}
2^{5m/2}\|\Delta_m u\|_{L_x^2}\,E_j
\tag{8j8}
```

and also

```math
\le C_{m,j}'
E_m^{1/2}\,2^{-j/2}D_j.
\tag{8j9}
```

So the alternate fixed-band route is now localized further. On the coefficient
side one does **not** need a new packet theorem beyond the upgraded Euclidean
carrier. The fixed-collar coefficient packet

```math
\sum_{m\in\mathcal B_I(N)}2^{5m/2}\|\Delta_m u\|_{L_x^2}
\tag{8j10}
```

is already absorbed on the upgraded interface after a shellwise Young split
against `D_j`. More precisely, because the fixed packets
`\mathcal B_I(N),\mathcal B_J(N)` come from bounded logarithmic windows below
`\ell_N`, after harmlessly enlarging the collar width in `\Theta_N^\sharp`
there is a constant `C_{I,J}` such that

```math
\sum_{m\in\mathcal B_I(N)}
\sum_{j\in\mathcal B_J(N)}
\left|
2^{2j}
\left\langle
[\Delta_j,\Delta_m u\cdot\nabla]\Delta_j u,\Delta_j u
\right\rangle
\right|
\le
\varepsilon\nu D_N

+
C_{\varepsilon,\nu,I,J}\,
\Theta_N^\sharp E_N
\le
\varepsilon\nu D_N

+
C_{\varepsilon,\nu,I,J}\,
\widetilde\Lambda_N^\sharp E_N.
\tag{8j10a}
```

So the coefficient-identification branch of the fixed-collar route is no
longer live. What remains if one stays on this shell-pair surface is only the
exact proposition-level threading from the shell-pair family back to the
endpoint square formulation, or else a direct bilinear absorption theorem for

```math
\sum_{m\in\mathcal B_I(N)}\sum_{j\in\mathcal B_J(N)}
E_m^{1/2}\,2^{-j/2}D_j.
\tag{8j11}
```

That is strictly sharper than attacking `(FBE)` only through the crude
quartic shadow. The fixed-collar coefficient packet is not itself an
independent remaining theorem debt; the surviving alternate-route question is
only the proposition-level threading from the absorbed shell-pair family back
to `(EP)`, or else a separate direct theorem for `(8j11)`.

There is also a cleaner external-facing reformulation of that surviving
question. On the upgraded Euclidean bridge surface define

```math
\nu_N(I)
:=
\int_I \widetilde\Lambda_N^\sharp(t)\,dt,
\qquad
\mu_N(I)
:=
\int_I \widetilde\Lambda_N^\sharp(t)\,E_N(t)\,dt.
\tag{8j10b}
```

Then the alternate route may be restated exactly as:

1. a shrinking terminal-window theorem for `\nu_N`, together with small
   entrance tail `E_N(t_0)`;
2. or a Carleson / tent-space theorem for the measure `\mu_N`;
3. or the direct bilinear theorem `(8j11)`.

More precisely, the upgraded fourth bridge from
`minimal-stronger-gradient-coefficient-interface-theorem.md`
shows that any shrinking family `I_q=[t_q,T)` with

```math
\nu_N(I_q)\to 0,
\qquad
E_N(t_q)+|I_q|\,2^{-2\delta N}\to 0,
\tag{8j10c}
```

already forces

```math
\sup_{t\in I_q}E_N(t)\to 0,
\tag{8j10d}
```

while any interval theorem of the form

```math
\mu_N(I)
\le
\frac{\varepsilon_\mu \nu}{C}\int_I D_N(t)\,dt
+
C_{\mu,*}\,2^{-2\delta N},
\qquad
0<\varepsilon_\mu<1-\eta,
\tag{8j10e}
```

absorbs directly into the interval form of `(G^\sharp)`.

So the modern external ideas about shrinking windows and tent-space / Carleson
control now attach to exact in-repo objects, `\nu_N` and `\mu_N`, rather than
to informal coefficient language.

This also exposes the two exact external-facing measure surfaces compatible
with the current upgraded bridge.

First, the natural **terminal-window coefficient measure** is

```math
d\nu_N(t):=\widetilde\Lambda_N^\sharp(t)\,dt.
\tag{8j10b}
```

Indeed, once the full upgraded fourth-bridge inequality

```math
\frac{d}{dt}E_N(t)+(1-\eta)\nu D_N(t)
\le
C\,\widetilde\Lambda_N^\sharp(t)\,E_N(t)+C_*2^{-2\delta N}
\tag{8j10c}
```

is available, Gronwall on any interval `[t_0,t_1]` gives

```math
E_N(t_1)
\le
\exp\!\big(C\,\nu_N([t_0,t_1])\big)
\Big(E_N(t_0)+C_*(t_1-t_0)\,2^{-2\delta N}\Big).
\tag{8j10d}
```

So any shrinking terminal-window route must in the end prove smallness of the
coefficient measure `\nu_N` on those windows, not a free-standing pointwise
coefficient theorem.

This can be stated as an exact reduction.

Choose terminal times `t_N\uparrow T` with regular endpoint data, and assume the
upgraded fourth bridge `(8j10c)` holds on `[t_N,T)`. Then

```math
\sup_{t\in[t_N,T)} E_N(t)
\le
\exp\!\big(C\,\nu_N([t_N,T))\big)
\Big(E_N(t_N)+C_*(T-t_N)\,2^{-2\delta N}\Big).
\tag{8j10d1}
```

So any route proving

```math
\nu_N([t_N,T))\le \varepsilon_*
\qquad\text{on a shrinking terminal family}
\tag{8j10d2}
```

reduces the continuation problem to the smallness of the terminal high-
frequency seed

```math
E_N(t_N)+C_*(T-t_N)\,2^{-2\delta N}.
\tag{8j10d3}
```

Since `t_N<T` is regular, the tail `E_N(t_N)\to 0` as `N\to\infty`. Thus the
terminal-window route is mathematically honest on the current surface, but its
exact burden is now precise:

```math
\boxed{
\text{prove shrinking-window smallness of }\nu_N
\text{, not a global pointwise coefficient theorem.}
}
\tag{8j10d4}
```

Second, the natural **weighted carrier measure** is

```math
d\mu_N(t):=\widetilde\Lambda_N^\sharp(t)\,E_N(t)\,dt.
\tag{8j10e}
```

The same-scale carrier, upper-boundary carrier, and the fixed-collar
coefficient-bearing shell-pair estimate `(8j10a)` already land on
`\varepsilon\nu D_N+\mu_N`. So any tent-space / Carleson recoding compatible
with the current packet must be a theorem about `\mu_N`, not about the raw
fixed-collar coefficient packet `(8j10)` by itself.

But `(EP)` is genuinely stronger than the averaged Volterra square `\mathrm{FCTS}`.
Indeed `F(s,t)=\int_{s_0}^{s-\kappa}\widetilde Z(\sigma,t)\,d\sigma` is
monotone increasing in `s`, so

```math
\int_I w(s,t)\,\|F(s,t)\|_{L_x^2}^2\,ds
\le
\|M_0(t)\|_{L_x^2}^2\int_I w(s,t)\,ds,
\tag{8k}
```

which gives only an upper bound of `\mathrm{FCTS}` by the endpoint mass, not
the reverse implication needed to recover `(EP)` from `\mathrm{FCTS}`.
So the operator route does not collapse back to the inherited `CTS` route by
pure monotonicity: it really needs a new weighted endpoint theorem or a
genuinely stronger exactness law. After `(8j6)`, the sharp alternate burden is
best read as a local finite-band theorem, not as another one-sided
scale-memory theorem.

There is also one exact signed affine reduction on the auxiliary **signed**
source `Y`. If

```math
Y(\sigma,t)=\partial_\sigma\Psi(\sigma,t)+S^{spill}(\sigma,t)+E(\sigma,t)
\tag{8l}
```

on `J=[\alpha,\beta]`, then

```math
M_0[Y](t)=\Psi(\beta,t)-\Psi(\alpha,t)+R_0(t),
\tag{8m}
```

```math
\beta M_0[Y](t)-M_1[Y](t)=\Omega_J[\Psi](t)+R_\Omega(t),
\tag{8n}
```

with the one-sided potential-average defect

```math
\Omega_J[\Psi](t):=\int_J \Psi(\sigma,t)\,d\sigma-|J|\,\Psi(\alpha,t).
\tag{8o}
```

Hence the first-order signed descent reduces the affine quotient to
`\Omega_J[\Psi]`, not to `(M_0,M_1)` alone. This is the exact “one scale
derivative short” obstruction. And since that first-order descent is available
only on the signed source, not on the positive stress source `\widetilde Z`,
the affine route presently has **two** deficits:

```math
\text{(i) no signed-to-positive transfer for }\widetilde Z,
\qquad
\text{(ii) even at the signed layer, }\Omega_J[\Psi]\text{ survives.}
\tag{8p}
```

This also pins down the honest boundary of the sought direct packet estimate

```math
\Pi_N^{mid,far,L}
\stackrel{?}{\le C_{FC}}
\varepsilon\nu\int_0^T D_N(t)\,dt
+
C\int_0^T \widetilde\Lambda_N^\sharp(t)\,E_N(t)\,dt
+
C_*2^{-2\delta N}.
\tag{8q}
```

On the current surface, `(8q)` is **not** derivable by simply importing the
same-scale carrier packet into the far-corona piece. The same-scale packet is
already absorbed into `\widetilde\Lambda_N^\sharp E_N`, but the far-corona
piece remains on the separate chain

```math
\mathrm{CTS}\Longrightarrow \mathrm{FCTS}\Longrightarrow \mathrm{Car}
\Longrightarrow \Pi_N^{mid,far,L},
\tag{8r}
```

and the direct operator bypass still needs a genuinely new theorem:

```math
\text{either } \textbf{(F2S)},
\qquad
\text{or } \textbf{(DER)}+\textbf{(EP)},
\qquad
\text{or a second-order exactness theorem for }\widetilde Z.
\tag{8s}
```

So the operator route is sharper than raw `CTS/LPAS`, but it does not presently
collapse the far-corona packet onto the already-closed coefficient carrier.

## What not to do

The current notes already rule out three bad shortcuts.

### 1. Do not collapse too early to a one-scale upper-tail theorem

The far-corona debt lives on the coupled density `\mathcal A_{\ell,r}` and then
on `(CTS)` / `(LPAS)`. A one-scale upper-tail square theorem may be sufficient
after further overestimation, but it is not the exact debt.

### 2. Do not import circular continuation control

Any proof of `(CTS)` or `(LPAS)` that secretly uses a bound equivalent to the
target continuation norm is circular.

### 3. Do not lose the barrier exponent

The target remainder is

```math
C_*2^{-2\delta N},
```

not a weaker `2^{-\delta N}` or a non-summable tail. So any Hardy/Volterra
argument has to preserve the full barrier scale.

## Exact next theorem move on the far side

The exact next move is not “prove Car directly” and not “search for a sharper
UTKD variant.” It is:

```math
\text{write the Hardy/Volterra attack directly on LPAS, while keeping CTS as the continuum interpretation.}
\tag{8}
```

On the inherited Euclidean route, that remains the work surface with the best
combination of honesty and installed technology. On the sharper operator-level
route, the corresponding local survivor is `(AQK)` after `(DER)` is split off.

## Honest boundary

This note does **not** prove `(LPAS)` or `(CTS)`.

What it does settle is the execution discipline for the far-corona route:

```math
\text{continuum meaning} = \mathrm{CTS},
\qquad
\text{local theorem engine} = \mathrm{LPAS},
\qquad
\text{smaller alternative survivor} = \mathrm{AQK}\text{ after }(\mathrm{DER})\text{ is split off},
\qquad
\text{forbidden shortcut} = \text{premature one-scale collapse}.
\tag{9}
```
