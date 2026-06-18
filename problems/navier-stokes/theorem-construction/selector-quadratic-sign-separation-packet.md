# Selector Quadratic Sign-Separation Packet

## Status

Active theorem-facing upstream supplier note.

Role: reduce the infinite family of quadratic richness tests to one finite
uniform packet on the active selector-good family.

## Purpose

Discharge the quadratic-richness side of the finite-frame route by a finite net
of traceless quadratic tests:

```math
\boxed{
\text{finite sign-separation packet}
\Longrightarrow
\text{uniform support-level two-sided quadratic richness}
\Longrightarrow
\text{balanced selector frame.}
}
\tag{QSP.0}
```

## Exact Setup

Fix one selector-good active family `\mathcal G_J`. For each `(a,t)\in\mathcal
G_J`, let

```math
\nu_J^{shape}(a,t)
\tag{QSP.1}
```

be the selector-good directional measure supported on

```math
\Omega_J(a,t)\subset S(N_a).
\tag{QSP.2}
```

Write

```math
\operatorname{Sym}_0(N_a)
\tag{QSP.3}
```

for the traceless symmetric operators on `N_a`, and

```math
M:=\dim \operatorname{Sym}_0(N_a)=\frac{d(d+1)}2-1,
\qquad
d:=\dim N_a.
\tag{QSP.4}
```

## Exact Target

### Theorem Q.A (finite quadratic sign-separation packet)

Fix one `\eta`-net

```math
\{A^1,\dots,A^R\}
\subset
\{A\in \operatorname{Sym}_0(N_a): \|A\|_{\mathrm{op}}=1\},
\tag{QSP.5}
```

with

```math
\eta:=\kappa_\ast/2.
\tag{QSP.6}
```

Assume there exist uniform constants `\kappa_\ast,\alpha_\ast>0` such that for
every `(a,t)\in \mathcal G_J` and every `r=1,\dots,R`,

```math
\nu_J^{shape}(a,t)
\bigl\{
\omega\in \Omega_J(a,t):
\omega^\top A^r \omega \ge \kappa_\ast
\bigr\}
\ge
\alpha_\ast,
\tag{QSP.7a}
```

and

```math
\nu_J^{shape}(a,t)
\bigl\{
\omega\in \Omega_J(a,t):
\omega^\top A^r \omega \le -\kappa_\ast
\bigr\}
\ge
\alpha_\ast.
\tag{QSP.7b}
```

Then for every `(a,t)\in\mathcal G_J` and every nonzero
`A\in \operatorname{Sym}_0(N_a)`,

```math
\sup_{\omega\in\Omega_J(a,t)} \omega^\top A\omega
\ge
\frac{\kappa_\ast}{2}\|A\|_{\mathrm{op}},
\tag{QSP.8a}
```

and

```math
\inf_{\omega\in\Omega_J(a,t)} \omega^\top A\omega
\le
-\frac{\kappa_\ast}{2}\|A\|_{\mathrm{op}}.
\tag{QSP.8b}
```

Hence the active family satisfies the uniform support-level sign-separating
quadratic richness packet `(Q)` with uniform constant `\kappa_\ast/2`.

### Proof

Fix `(a,t)\in\mathcal G_J` and a nonzero traceless symmetric operator `A`.
Normalize to `\widehat A:=A/\|A\|_{\mathrm{op}}`. Choose `r` so that

```math
\|\widehat A-A^r\|_{\mathrm{op}}\le \eta=\kappa_\ast/2.
\tag{QSP.9}
```

If `\omega` lies in the positive-sign set from `(QSP.7a)`, then

```math
\omega^\top \widehat A \omega
=
\omega^\top A^r \omega
+
\omega^\top(\widehat A-A^r)\omega
\ge
\kappa_\ast-\|\widehat A-A^r\|_{\mathrm{op}}
\ge
\kappa_\ast/2.
\tag{QSP.10}
```

Since that set has positive `\nu_J^{shape}(a,t)`-measure, it is nonempty, so
`(QSP.8a)` follows after multiplying by `\|A\|_{\mathrm{op}}`. The negative
bound `(QSP.8b)` is identical using `(QSP.7b)`. ∎

### Corollary QSP.B (finite eigen-cap occupancy implies the finite sign-separation packet)

Assume `d:=\dim N_a\ge 2`. For each net tensor `A^r` from `(QSP.5)`, choose unit
eigenvectors `u_+^r,u_-^r\in S(N_a)` satisfying

```math
A^r u_+^r=\lambda_+^r u_+^r,
\qquad
A^r u_-^r=\lambda_-^r u_-^r,
\tag{QSP.10a}
```

where `\lambda_+^r=\lambda_{\max}(A^r)` and `\lambda_-^r=\lambda_{\min}(A^r)`.
Since `A^r` is traceless and `\|A^r\|_{\mathrm{op}}=1`, one has

```math
\lambda_+^r\ge \frac1{d-1},
\qquad
\lambda_-^r\le -\frac1{d-1}.
\tag{QSP.10b}
```

Fix

```math
\delta_\ast:=\frac{1}{4(d-1)},
\qquad
\kappa_\ast:=\frac{1}{2(d-1)},
\tag{QSP.10c}
```

and define the projective eigen-caps

```math
C_{+,r}:=
\left\{
\omega\in S(N_a):
(\omega\cdot u_+^r)^2\ge 1-\delta_\ast
\right\},
\tag{QSP.10d}
```

```math
C_{-,r}:=
\left\{
\omega\in S(N_a):
(\omega\cdot u_-^r)^2\ge 1-\delta_\ast
\right\}.
\tag{QSP.10e}
```

Assume there exists `\alpha_\ast>0` such that for every `(a,t)\in\mathcal G_J`
and every `r=1,\dots,R`,

```math
\nu_J^{shape}(a,t)(C_{+,r})\ge \alpha_\ast,
\qquad
\nu_J^{shape}(a,t)(C_{-,r})\ge \alpha_\ast.
\tag{QSP.10f}
```

Then `(QSP.7a)`-`(QSP.7b)` hold with the same `\alpha_\ast` and
`\kappa_\ast=1/(2(d-1))`. Consequently, Theorem `Q.A` applies.

So the finite quadratic sign-separation packet is reduced further to one finite
geometric support theorem: positive selector-good mass in a fixed family of
projective eigen-caps.

**Proof.**
Fix `r` and write any `\omega\in S(N_a)` as
`\omega=\alpha u_+^r+\zeta` with `\zeta\perp u_+^r` and `\alpha^2+\|\zeta\|^2=1`.
If `\omega\in C_{+,r}`, then `\alpha^2\ge 1-\delta_\ast`. Since every
eigenvalue of `A^r` lies in `[-1,1]`,

```math
\omega^\top A^r\omega
\ge
\lambda_+^r\alpha^2-1\cdot(1-\alpha^2)
\ge
\lambda_+^r-(1+\lambda_+^r)\delta_\ast
\ge
\frac1{d-1}-2\delta_\ast
=
\frac1{2(d-1)}
=
\kappa_\ast.
\tag{QSP.10g}
```

So `C_{+,r}` is contained in the positive-sign set from `(QSP.7a)`. The same
argument with `u_-^r` and `\lambda_-^r` gives

```math
\omega\in C_{-,r}
\Longrightarrow
\omega^\top A^r\omega\le -\kappa_\ast.
\tag{QSP.10h}
```

Thus `(QSP.10f)` implies `(QSP.7a)`-`(QSP.7b)`. ∎

### Corollary QSP.C (cap-comparability on the finite eigen-cap family implies `QSP.B`)

Keep the eigen-caps `(QSP.10d)`-`(QSP.10e)` and let `\sigma_{N_a}` denote the
normalized spherical measure on `S(N_a)`. Assume there exists
`\varepsilon_\ast>0` such that for every `(a,t)\in\mathcal G_J` and every
`r=1,\dots,R`,

```math
\left|
\nu_J^{shape}(a,t)(C_{+,r})-\sigma_{N_a}(C_{+,r})
\right|
\le \varepsilon_\ast,
\tag{QSP.10i}
```

and

```math
\left|
\nu_J^{shape}(a,t)(C_{-,r})-\sigma_{N_a}(C_{-,r})
\right|
\le \varepsilon_\ast.
\tag{QSP.10j}
```

If

```math
\varepsilon_\ast
<
\frac12
\min_{1\le r\le R}
\bigl\{
\sigma_{N_a}(C_{+,r}),
\sigma_{N_a}(C_{-,r})
\bigr\},
\tag{QSP.10k}
```

then `QSP.B` holds with

```math
\alpha_\ast
:=
\frac12
\min_{1\le r\le R}
\bigl\{
\sigma_{N_a}(C_{+,r}),
\sigma_{N_a}(C_{-,r})
\bigr\}
>0.
\tag{QSP.10l}
```

So one stronger exact sufficient realization of the sign-separation packet is:
cap-comparability on the finite eigen-cap list.

**Proof.**
From `(QSP.10i)`-`(QSP.10k)`,

```math
\nu_J^{shape}(a,t)(C_{+,r})
\ge
\sigma_{N_a}(C_{+,r})-\varepsilon_\ast
\ge
\alpha_\ast,
\tag{QSP.10m}
```

and similarly `\nu_J^{shape}(a,t)(C_{-,r})\ge \alpha_\ast`. This is exactly
`(QSP.10f)`, so Corollary `QSP.B` applies. ∎

### Proposition QSP.D (degree-2 isotropy alone does not imply finite eigen-cap occupancy)

Keep `d:=\dim N_a\ge 2` and fix an orthonormal basis
`e_1,\dots,e_d\in S(N_a)`. Let

```math
\nu^{cross}
:=
\frac{1}{2d}\sum_{i=1}^d (\delta_{e_i}+\delta_{-e_i}).
\tag{QSP.10n}
```

Then `\nu^{cross}` is exactly isotropic at degree `2`:

```math
\int_{S(N_a)} \omega\otimes\omega\,d\nu^{cross}(\omega)
=
\frac1d \Pi_{N_a}.
\tag{QSP.10o}
```

However `\nu^{cross}` need not satisfy the finite eigen-cap occupancy packet
`(QSP.10f)`. More precisely, with

```math
u_\ast:=\frac{1}{\sqrt d}(e_1+\cdots+e_d),
\tag{QSP.10p}
```

and the cap aperture `\delta_\ast=1/(4(d-1))` from `(QSP.10c)`, one has

```math
\nu^{cross}
\left\{
\omega\in S(N_a):
(\omega\cdot u_\ast)^2\ge 1-\delta_\ast
\right\}
=0.
\tag{QSP.10q}
```

So exact degree-2 isotropy / second-moment normalization does **not** by
itself imply `QSP.B`.

**Proof.**
For `(QSP.10o)`, each pair `\pm e_i` contributes `e_i\otimes e_i`, so

```math
\int_{S(N_a)} \omega\otimes\omega\,d\nu^{cross}(\omega)
=
\frac1d\sum_{i=1}^d e_i\otimes e_i
=
\frac1d \Pi_{N_a}.
\tag{QSP.10r}
```

For every support point `\omega=\pm e_i`,

```math
(\omega\cdot u_\ast)^2=\frac1d.
\tag{QSP.10s}
```

Since `d\ge 2`,

```math
\frac1d
<
1-\frac{1}{4(d-1)}
=
1-\delta_\ast,
\tag{QSP.10t}
```

so no support point of `\nu^{cross}` lies in the cap from `(QSP.10q)`. Hence
that cap has `\nu^{cross}`-mass `0`. ∎

### Corollary QSP.E (finite smooth bump lower packet implies `QSP.B`)

Keep the finite eigen-cap family `(QSP.10d)`-`(QSP.10e)`. Assume there exist
nonnegative test functions

```math
\psi_{+,r},\psi_{-,r}\in C(S(N_a)),
\qquad
0\le \psi_{\pm,r}\le L_\ast,
\tag{QSP.10u}
```

with

```math
\operatorname{supp}\psi_{+,r}\subset C_{+,r},
\qquad
\operatorname{supp}\psi_{-,r}\subset C_{-,r},
\tag{QSP.10v}
```

and a uniform constant `\beta_\ast>0` such that for every
`(a,t)\in\mathcal G_J` and every `r=1,\dots,R`,

```math
\int_{S(N_a)} \psi_{+,r}(\omega)\,d\nu_J^{shape}(a,t)(\omega)\ge \beta_\ast,
\tag{QSP.10w}
```

```math
\int_{S(N_a)} \psi_{-,r}(\omega)\,d\nu_J^{shape}(a,t)(\omega)\ge \beta_\ast.
\tag{QSP.10x}
```

Then `QSP.B` holds with

```math
\alpha_\ast:=\beta_\ast/L_\ast.
\tag{QSP.10y}
```

So the finite eigen-cap occupancy packet is reduced further to one finite
localized lower-mass theorem on smooth test functions supported inside those
caps.

**Proof.**
Because `0\le \psi_{+,r}\le L_\ast` and `\operatorname{supp}\psi_{+,r}\subset C_{+,r}`,

```math
\int_{S(N_a)} \psi_{+,r}\,d\nu_J^{shape}(a,t)
\le
L_\ast\,\nu_J^{shape}(a,t)(C_{+,r}).
\tag{QSP.10z}
```

Combining `(QSP.10w)` and `(QSP.10z)` gives
`\nu_J^{shape}(a,t)(C_{+,r})\ge \beta_\ast/L_\ast=\alpha_\ast`. The negative
cap is identical using `(QSP.10x)`. This is exactly `(QSP.10f)`, so
Corollary `QSP.B` applies. ∎

### Corollary QSP.F (finite smooth bump comparability implies `QSP.E`)

Keep the bump family from `(QSP.10u)`-`(QSP.10v)` and let `\sigma_{N_a}` denote
normalized spherical measure on `S(N_a)`. Write

```math
m_{\pm,r}:=
\int_{S(N_a)} \psi_{\pm,r}(\omega)\,d\sigma_{N_a}(\omega).
\tag{QSP.10za}
```

Assume there exists `\varepsilon_\ast>0` such that for every
`(a,t)\in\mathcal G_J` and every `r=1,\dots,R`,

```math
\left|
\int_{S(N_a)} \psi_{+,r}\,d\nu_J^{shape}(a,t)-m_{+,r}
\right|
\le \varepsilon_\ast,
\tag{QSP.10zb}
```

```math
\left|
\int_{S(N_a)} \psi_{-,r}\,d\nu_J^{shape}(a,t)-m_{-,r}
\right|
\le \varepsilon_\ast.
\tag{QSP.10zc}
```

If

```math
\varepsilon_\ast
<
\frac12
\min_{1\le r\le R}\{m_{+,r},m_{-,r}\},
\tag{QSP.10zd}
```

then `QSP.E` holds with

```math
\beta_\ast
:=
\frac12
\min_{1\le r\le R}\{m_{+,r},m_{-,r}\}
>0.
\tag{QSP.10ze}
```

So one smoother exact sufficient route to `QSP.B` is finite comparability only
on a fixed family of localized bump tests.

**Proof.**
From `(QSP.10zb)`-`(QSP.10zd)`,

```math
\int_{S(N_a)} \psi_{+,r}\,d\nu_J^{shape}(a,t)
\ge
m_{+,r}-\varepsilon_\ast
\ge
\beta_\ast,
\tag{QSP.10zf}
```

and similarly for `\psi_{-,r}`. This is exactly `(QSP.10w)`-`(QSP.10x)`, so
Corollary `QSP.E` applies. ∎

### Proposition QSP.G (entrance-time bump packet plus angular transport stability implies `QSP.E`)

Fix one selector-good strip `I=[t_0,t_1]`. Assume that for each active
basepoint `a` there is one finite pair measure `\mu_{J,a}^{pair}` on the
active selector-good family such that the shape measure is realized as the
pushforward of the transported pair direction:

```math
\int_{S(N_a)} f(\omega)\,d\nu_J^{shape}(a,t)(\omega)
=
\int f(e_{ab}(t))\,d\mu_{J,a}^{pair}(b)
\tag{QSP.10zg}
```

for every bounded Borel `f` and every `t\in I`, where `e_{ab}(t)\in S(N_a)`.
Let

```math
m_J^{shape}(a)
:=
\mu_{J,a}^{pair}(\operatorname{supp}\mu_{J,a}^{pair})
=
\nu_J^{shape}(a,t)(S(N_a)),
\tag{QSP.10zh}
```

which is independent of `t` by `(QSP.10zg)`. Keep one finite bump family
`\{\psi_{+,r},\psi_{-,r}\}_{r=1}^R` from `(QSP.10u)`-`(QSP.10v)` and assume

```math
\operatorname{Lip}(\psi_{\pm,r})\le L_\psi
\qquad
\text{for all }r.
\tag{QSP.10zi}
```

Define the stripwise angular drift by

```math
\Delta_J^{ang}(a,t;t_0)
:=
\sup_{b\in \operatorname{supp}\mu_{J,a}^{pair}}
|e_{ab}(t)-e_{ab}(t_0)|.
\tag{QSP.10zj}
```

Assume the entrance-time bump packet

```math
\int_{S(N_a)} \psi_{+,r}(\omega)\,d\nu_J^{shape}(a,t_0)(\omega)\ge 2\beta_\ast,
\tag{QSP.10zk}
```

```math
\int_{S(N_a)} \psi_{-,r}(\omega)\,d\nu_J^{shape}(a,t_0)(\omega)\ge 2\beta_\ast
\tag{QSP.10zl}
```

holds for every active `a` and every `r`, and suppose the angular drift obeys

```math
L_\psi\,m_J^{shape}(a)\,\Delta_J^{ang}(a,t;t_0)\le \beta_\ast
\qquad
\text{for every }a\text{ and }t\in I.
\tag{QSP.10zm}
```

Then the time-`t` bump packet `(QSP.10w)`-`(QSP.10x)` holds on the whole strip
`I` with the same lower constant `\beta_\ast`. Therefore `QSP.E` applies on
the selector-good strip.

So `QSP.11b` is reduced further to two primitive suppliers:

```math
\text{entrance-time bump mass}
\quad+\quad
\text{angular transport stability of }e_{ab}.
\tag{QSP.10zn}
```

**Proof.**
Using `(QSP.10zg)` and the Lipschitz bound `(QSP.10zi)`,

```math
\left|
\int \psi_{+,r}\,d\nu_J^{shape}(a,t)
-
\int \psi_{+,r}\,d\nu_J^{shape}(a,t_0)
\right|
=
\left|
\int
\bigl(\psi_{+,r}(e_{ab}(t))-\psi_{+,r}(e_{ab}(t_0))\bigr)\,
d\mu_{J,a}^{pair}(b)
\right|
\tag{QSP.10zo}
```

is bounded by

```math
L_\psi
\int |e_{ab}(t)-e_{ab}(t_0)|\,d\mu_{J,a}^{pair}(b)
\le
L_\psi\,m_J^{shape}(a)\,\Delta_J^{ang}(a,t;t_0)
\le
\beta_\ast.
\tag{QSP.10zp}
```

Combining `(QSP.10zk)` with `(QSP.10zp)` gives

```math
\int \psi_{+,r}\,d\nu_J^{shape}(a,t)\ge \beta_\ast.
\tag{QSP.10zq}
```

The negative bump is identical using `(QSP.10zl)`. This is exactly
`(QSP.10w)`-`(QSP.10x)`, so `QSP.E` applies. ∎

### Corollary QSP.H (short-window gradient budget implies the angular transport stability in `QSP.G`)

Keep the hypotheses and notation of `QSP.G`. Assume in addition that on the
selector-good strip `I=[t_0,t_1]` one has the uniform segment-transport bound

```math
\|\mathcal M_J(a,b,t)\|_{\mathrm{op}}\le M_{J,\mathrm{win}}
\qquad
\text{for every active }(a,b,t)\in I,
\tag{QSP.10zr}
```

where `\mathcal M_J(a,b,t)` is the exact segment-transport matrix from
`(AS.4)`. Then

```math
\Delta_J^{ang}(a,t;t_0)\le M_{J,\mathrm{win}}\,|t-t_0|
\qquad
\text{for every }a\text{ and }t\in I.
\tag{QSP.10zs}
```

Consequently, if

```math
L_\psi\,m_J^{shape}(a)\,M_{J,\mathrm{win}}\,|I|
\le
\beta_\ast
\qquad
\text{for every active }a,
\tag{QSP.10zt}
```

then the stripwise bump packet `QSP.E` follows from the entrance-time packet
`(QSP.10zk)`-`(QSP.10zl)`.

So on short regular windows the remaining smooth finite shape burden is:

```math
\text{entrance-time bump mass}
\quad+\quad
\text{one selector-good window bound on }\|\mathcal M_J\|_{\mathrm{op}}.
\tag{QSP.10zu}
```

**Proof.**
By the exact direction law `(AS.9)`,

```math
\frac{d}{dt}e_{ab}(t)
=
\bigl(I-e_{ab}(t)\otimes e_{ab}(t)\bigr)\mathcal M_J(a,b,t)e_{ab}(t).
\tag{QSP.10zv}
```

Since `\|I-e\otimes e\|_{\mathrm{op}}\le 1` and `|e_{ab}(t)|=1`,

```math
\left|\frac{d}{dt}e_{ab}(t)\right|
\le
\|\mathcal M_J(a,b,t)\|_{\mathrm{op}}
\le
M_{J,\mathrm{win}}.
\tag{QSP.10zw}
```

Integrating from `t_0` to `t` gives

```math
|e_{ab}(t)-e_{ab}(t_0)|
\le
M_{J,\mathrm{win}}\,|t-t_0|,
\tag{QSP.10zx}
```

hence `(QSP.10zs)` after taking the supremum in `b`. Condition `(QSP.10zt)`
then implies `(QSP.10zm)`, so `QSP.G` applies. ∎

### Corollary QSP.I (regular-window `\sup|\nabla v_J|` control implies `QSP.H`)

Keep the hypotheses of `QSP.G`. Assume on the selector-good strip `I=[t_0,t_1]`
one has the regular-window bound

```math
\|\nabla v_J(x,t)\|_{\mathrm{op}}\le G_{J,\mathrm{win}}
\qquad
\text{for every segment point }x=\gamma_{ab}(\theta,t)
\text{ on the active family}.
\tag{QSP.10zy}
```

Then

```math
\|\mathcal M_J(a,b,t)\|_{\mathrm{op}}\le G_{J,\mathrm{win}}
\qquad
\text{for every active }(a,b,t)\in I,
\tag{QSP.10zz}
```

so `QSP.H` applies with `M_{J,\mathrm{win}}:=G_{J,\mathrm{win}}`. In
particular, if

```math
L_\psi\,m_J^{shape}(a)\,G_{J,\mathrm{win}}\,|I|
\le
\beta_\ast
\qquad
\text{for every active }a,
\tag{QSP.10zza}
```

then the stripwise bump packet `QSP.E` follows from the entrance-time packet
`(QSP.10zk)`-`(QSP.10zl)`.

So on regular selector-good windows the only genuinely new constructive burden
left on this route is the entrance-time finite bump packet.

**Proof.**
By definition `(AS.4)`,

```math
\mathcal M_J(a,b,t)
=
\int_0^1 \nabla v_J(\gamma_{ab}(\theta,t),t)\,d\theta,
\tag{QSP.10zzb}
```

so

```math
\|\mathcal M_J(a,b,t)\|_{\mathrm{op}}
\le
\int_0^1
\|\nabla v_J(\gamma_{ab}(\theta,t),t)\|_{\mathrm{op}}\,d\theta
\le
G_{J,\mathrm{win}}.
\tag{QSP.10zzc}
```

This is exactly `(QSP.10zr)` with `M_{J,\mathrm{win}}:=G_{J,\mathrm{win}}`, so
`QSP.H` applies. ∎

### Corollary QSP.J (initial core-cap occupancy implies the entrance-time bump packet)

Keep the hypotheses of `QSP.G` at the entrance time `t_0`. For each cap
`C_{+,r}` and `C_{-,r}`, choose smaller Borel core caps

```math
\widetilde C_{+,r}\subset C_{+,r},
\qquad
\widetilde C_{-,r}\subset C_{-,r},
\tag{QSP.10zzd}
```

and choose the bump family in `(QSP.10u)`-`(QSP.10v)` so that for some
`m_\ast>0`,

```math
\psi_{+,r}\ge m_\ast \text{ on }\widetilde C_{+,r},
\qquad
\psi_{-,r}\ge m_\ast \text{ on }\widetilde C_{-,r},
\tag{QSP.10zze}
```

for every `r=1,\dots,R`. Define the entrance-direction measure

```math
\nu_{J,a}^{dir,0}
:=
(e_{ab}(t_0))_\#\mu_{J,a}^{pair}.
\tag{QSP.10zzf}
```

Assume there exists `\alpha_0>0` such that for every active `a` and every
`r=1,\dots,R`,

```math
\nu_{J,a}^{dir,0}(\widetilde C_{+,r})\ge \alpha_0,
\qquad
\nu_{J,a}^{dir,0}(\widetilde C_{-,r})\ge \alpha_0.
\tag{QSP.10zzg}
```

Then the entrance-time bump packet `(QSP.10zk)`-`(QSP.10zl)` holds with

```math
\beta_\ast:=\frac12 m_\ast\alpha_0.
\tag{QSP.10zzh}
```

So on the regular-window branch, `QSP.11b` is reduced further to:

```math
\text{initial pair-direction core-cap occupancy}
\quad+\quad
\sup|\nabla v_J|\text{ on the active segments.}
\tag{QSP.10zzi}
```

**Proof.**
By `(QSP.10zzf)`,

```math
\int_{S(N_a)} \psi_{+,r}(\omega)\,d\nu_J^{shape}(a,t_0)(\omega)
=
\int \psi_{+,r}(e_{ab}(t_0))\,d\mu_{J,a}^{pair}(b)
=
\int_{S(N_a)} \psi_{+,r}(\omega)\,d\nu_{J,a}^{dir,0}(\omega).
\tag{QSP.10zzj}
```

Using `(QSP.10zze)` and `(QSP.10zzg)`,

```math
\int_{S(N_a)} \psi_{+,r}\,d\nu_{J,a}^{dir,0}
\ge
m_\ast\,\nu_{J,a}^{dir,0}(\widetilde C_{+,r})
\ge
m_\ast\alpha_0
\ge
2\beta_\ast.
\tag{QSP.10zzk}
```

The negative packet is identical on `\widetilde C_{-,r}`. This is exactly
`(QSP.10zk)`-`(QSP.10zl)`. ∎

### Corollary QSP.K (finite initial core-cap comparability implies `QSP.J`)

Keep the core caps `(QSP.10zzd)` and let `\sigma_{N_a}` denote normalized
spherical measure on `S(N_a)`. Assume there exists `\varepsilon_0>0` such that
for every active `a` and every `r=1,\dots,R`,

```math
\left|
\nu_{J,a}^{dir,0}(\widetilde C_{+,r})
-
\sigma_{N_a}(\widetilde C_{+,r})
\right|
\le \varepsilon_0,
\tag{QSP.10zzl}
```

```math
\left|
\nu_{J,a}^{dir,0}(\widetilde C_{-,r})
-
\sigma_{N_a}(\widetilde C_{-,r})
\right|
\le \varepsilon_0.
\tag{QSP.10zzm}
```

If

```math
\varepsilon_0
<
\frac12
\min_{1\le r\le R}
\bigl\{
\sigma_{N_a}(\widetilde C_{+,r}),
\sigma_{N_a}(\widetilde C_{-,r})
\bigr\},
\tag{QSP.10zzn}
```

then `QSP.J` holds with

```math
\alpha_0
:=
\frac12
\min_{1\le r\le R}
\bigl\{
\sigma_{N_a}(\widetilde C_{+,r}),
\sigma_{N_a}(\widetilde C_{-,r})
\bigr\}
>0.
\tag{QSP.10zzo}
```

So one stronger entrance-geometry realization of the remaining shape primitive
is finite initial directional comparability only on the core-cap family.

**Proof.**
From `(QSP.10zzl)`-`(QSP.10zzn)`,

```math
\nu_{J,a}^{dir,0}(\widetilde C_{+,r})
\ge
\sigma_{N_a}(\widetilde C_{+,r})-\varepsilon_0
\ge
\alpha_0,
\tag{QSP.10zzp}
```

and similarly on `\widetilde C_{-,r}`. This is exactly `(QSP.10zzg)`, so
`QSP.J` applies. ∎

### Corollary QSP.L (bounded-degree combinatorial entrance packet implies `QSP.J`)

Assume in addition that for each active `a`, the entrance pair measure is the
normalized counting measure on the active neighbors:

```math
\nu_{J,a}^{dir,0}
=
\frac{1}{N(a)}
\sum_{b\sim a}
\delta_{e_{ab}(t_0)},
\qquad
N(a):=\#\{b:b\sim a\},
\tag{QSP.10zzq}
```

with the bounded-degree control

```math
1\le N(a)\le M.
\tag{QSP.10zzr}
```

Assume that for every active `a` and every `r=1,\dots,R`, there exists at least
one active neighbor `b_{+,r}\sim a` and one active neighbor `b_{-,r}\sim a`
such that

```math
e_{ab_{+,r}}(t_0)\in \widetilde C_{+,r},
\qquad
e_{ab_{-,r}}(t_0)\in \widetilde C_{-,r}.
\tag{QSP.10zzs}
```

Then `QSP.J` holds with

```math
\alpha_0:=\frac1M.
\tag{QSP.10zzt}
```

So if the entrance pair measure is the normalized active-neighbor counting
measure, the remaining shape primitive becomes purely combinatorial: one
neighbor in each finite core cap.

**Proof.**
Under `(QSP.10zzq)`, each active neighbor contributes mass `1/N(a)` to
`\nu_{J,a}^{dir,0}`. By `(QSP.10zzr)` and `(QSP.10zzs)`,

```math
\nu_{J,a}^{dir,0}(\widetilde C_{+,r})
\ge
\frac1{N(a)}
\ge
\frac1M,
\tag{QSP.10zzu}
```

and similarly on `\widetilde C_{-,r}`. This is `(QSP.10zzg)` with
`\alpha_0=1/M`, so `QSP.J` applies. ∎

### Proposition QSP.M (the active-pair graph measure has a canonical normalized entrance-fiber realization)

Assume the active selector family carries the graph measure from `(GS.3)` and
`(TPS.4s)`:

```math
d\nu_J(a,b)
:=
\mathbf 1_{\{b\sim a\}}\,d\mu_j(a)\,d\#_{N(a)}(b),
\qquad
1\le N(a):=\#\{b:b\sim a\}\le M.
\tag{QSP.10zzv}
```

Then for every active basepoint `a`, the normalized fiber measure

```math
d\overline\mu_{J,a}^{pair}(b)
:=
\frac{1}{N(a)}\mathbf 1_{\{b\sim a\}}\,d\#_{N(a)}(b)
\tag{QSP.10zzw}
```

is a probability measure on the active neighbors of `a`, and one has the exact
disintegration identity

```math
\int F(a,b)\,d\nu_J(a,b)
=
\int_{G_J}
N(a)
\left(
\int F(a,b)\,d\overline\mu_{J,a}^{pair}(b)
\right)
d\mu_j(a)
\tag{QSP.10zzx}
```

for every bounded Borel `F` on the active-pair graph.

If one defines the entrance-direction measure by the canonical normalized
pushforward

```math
\overline\nu_{J,a}^{dir,0}
:=
(e_{ab}(t_0))_\#\overline\mu_{J,a}^{pair},
\tag{QSP.10zzy}
```

then for every Borel set `E\subset S(N_a)`,

```math
\overline\nu_{J,a}^{dir,0}(E)
=
\frac{
\#\{b\sim a:\ e_{ab}(t_0)\in E\}
}{N(a)}.
\tag{QSP.10zzz}
```

So once the shape route uses the normalized active-neighbor fiber of the
existing graph measure, the entrance core-cap packet becomes a fiberwise active
neighbor counting theorem.

**Proof.**
By definition,

```math
\int 1\,d\overline\mu_{J,a}^{pair}
=
\frac{1}{N(a)}
\int \mathbf 1_{\{b\sim a\}}\,d\#_{N(a)}(b)
=
1,
\tag{QSP.10zzaa}
```

so `(QSP.10zzw)` is a probability measure. For any bounded Borel `F`,

```math
\int F(a,b)\,d\nu_J(a,b)
=
\int_{G_J}
\left(
\int \mathbf 1_{\{b\sim a\}}F(a,b)\,d\#_{N(a)}(b)
\right)
d\mu_j(a),
\tag{QSP.10zzab}
```

and inserting `d\#_{N(a)}(b)=N(a)\,d\overline\mu_{J,a}^{pair}(b)` gives
`(QSP.10zzx)`. The pushforward identity `(QSP.10zzz)` is:

```math
\overline\nu_{J,a}^{dir,0}(E)
=
\overline\mu_{J,a}^{pair}\{b:\ e_{ab}(t_0)\in E\}
=
\frac{
\#\{b\sim a:\ e_{ab}(t_0)\in E\}
}{N(a)}.
\tag{QSP.10zzac}
```

∎

### Corollary QSP.N (fractional core-cap occupancy on the canonical graph fibers implies `QSP.J`)

Keep the canonical graph-fiber realization `(QSP.10zzy)` from `QSP.M`. Assume
there exists `\theta_0>0` such that for every active `a` and every
`r=1,\dots,R`,

```math
\#\{b\sim a:\ e_{ab}(t_0)\in \widetilde C_{+,r}\}
\ge
\theta_0\,N(a),
\tag{QSP.10zzad}
```

and

```math
\#\{b\sim a:\ e_{ab}(t_0)\in \widetilde C_{-,r}\}
\ge
\theta_0\,N(a).
\tag{QSP.10zzae}
```

Then `QSP.J` holds with `\alpha_0:=\theta_0`.

So on the canonical graph-fiber route, the remaining shape primitive is
equivalently one finite lower-density theorem for the entrance pair directions
on each active neighbor fiber.

**Proof.**
Applying `(QSP.10zzz)` with `E=\widetilde C_{+,r}` and
`E=\widetilde C_{-,r}` gives

```math
\overline\nu_{J,a}^{dir,0}(\widetilde C_{+,r})
=
\frac{\#\{b\sim a:\ e_{ab}(t_0)\in \widetilde C_{+,r}\}}{N(a)}
\ge
\theta_0,
\tag{QSP.10zzaf}
```

and

```math
\overline\nu_{J,a}^{dir,0}(\widetilde C_{-,r})
=
\frac{\#\{b\sim a:\ e_{ab}(t_0)\in \widetilde C_{-,r}\}}{N(a)}
\ge
\theta_0.
\tag{QSP.10zzag}
```

This is exactly `(QSP.10zzg)` with `\alpha_0=\theta_0`, so `QSP.J` applies. ∎

### Proposition QSP.O (finite averaged entrance-incidence control implies `QSP.N` after one bad-base extraction)

Keep the canonical graph-fiber realization `(QSP.10zzy)` and define the
entrance occupancy ratios

```math
\theta_{J,r}^+(a)
:=
\overline\nu_{J,a}^{dir,0}(\widetilde C_{+,r}),
\qquad
\theta_{J,r}^-(a)
:=
\overline\nu_{J,a}^{dir,0}(\widetilde C_{-,r}).
\tag{QSP.10zzah}
```

Assume there exists `\theta_\ast>0` and an error sequence `\eta_J\to 0` such
that for every `r=1,\dots,R`,

```math
\int_{G_J}
\bigl(\theta_\ast-\theta_{J,r}^+(a)\bigr)_+\,
d\mu_j(a)
\le
\eta_J,
\tag{QSP.10zzai}
```

and

```math
\int_{G_J}
\bigl(\theta_\ast-\theta_{J,r}^-(a)\bigr)_+\,
d\mu_j(a)
\le
\eta_J.
\tag{QSP.10zzaj}
```

Then there exists a reduced selector-good base family `G_J^{cap}\subset G_J`
with

```math
\mu_j(G_J\setminus G_J^{cap})
\le
\frac{4R}{\theta_\ast}\eta_J,
\tag{QSP.10zzak}
```

such that for every `a\in G_J^{cap}` and every `r=1,\dots,R`,

```math
\theta_{J,r}^+(a)\ge \theta_\ast/2,
\qquad
\theta_{J,r}^-(a)\ge \theta_\ast/2.
\tag{QSP.10zzal}
```

Consequently `QSP.N` holds on `G_J^{cap}` with `\theta_0:=\theta_\ast/2`.

So on the canonical graph-fiber route, the remaining shape primitive is
reduced further to one finite averaged entrance-incidence theorem plus one
finite bad-base extraction.

**Proof.**
For each `r`, define the bad base sets

```math
B_{J,r}^+
:=
\{a\in G_J:\theta_{J,r}^+(a)<\theta_\ast/2\},
\qquad
B_{J,r}^-
:=
\{a\in G_J:\theta_{J,r}^-(a)<\theta_\ast/2\}.
\tag{QSP.10zzam}
```

On `B_{J,r}^+` one has
`\bigl(\theta_\ast-\theta_{J,r}^+(a)\bigr)_+\ge \theta_\ast/2`, so
Chebyshev gives

```math
\mu_j(B_{J,r}^+)
\le
\frac{2}{\theta_\ast}
\int_{G_J}
\bigl(\theta_\ast-\theta_{J,r}^+(a)\bigr)_+\,d\mu_j(a)
\le
\frac{2\eta_J}{\theta_\ast}.
\tag{QSP.10zzan}
```

The same argument yields

```math
\mu_j(B_{J,r}^-)\le \frac{2\eta_J}{\theta_\ast}.
\tag{QSP.10zzao}
```

Define

```math
G_J^{cap}
:=
G_J\setminus
\bigcup_{r=1}^R(B_{J,r}^+\cup B_{J,r}^-).
\tag{QSP.10zzap}
```

Then the union bound together with `(QSP.10zzan)`-`(QSP.10zzao)` gives
`(QSP.10zzak)`, and on `G_J^{cap}` all inequalities `(QSP.10zzal)` hold. This
is exactly `QSP.N` with `\theta_0=\theta_\ast/2`. ∎

### Proposition QSP.P (graph-cap mass plus fiber-oscillation implies `QSP.O`)

Keep the graph measure `(QSP.10zzv)` and the occupancy ratios
`(QSP.10zzah)`. For each `r=1,\dots,R`, define the graph-level entrance
cap masses

```math
\Gamma_{J,r}^+
:=
\int \mathbf 1_{\widetilde C_{+,r}}(e_{ab}(t_0))\,d\nu_J(a,b),
\qquad
\Gamma_{J,r}^-
:=
\int \mathbf 1_{\widetilde C_{-,r}}(e_{ab}(t_0))\,d\nu_J(a,b),
\tag{QSP.10zzaq}
```

and the mean fiber occupancies

```math
\overline\theta_{J,r}^\pm
:=
\frac{1}{\mu_j(G_J)}
\int_{G_J}\theta_{J,r}^\pm(a)\,d\mu_j(a).
\tag{QSP.10zzar}
```

Assume there exists `\gamma_\ast>0` such that for every `r=1,\dots,R`,

```math
\Gamma_{J,r}^+\ge \gamma_\ast\,\mu_j(G_J),
\qquad
\Gamma_{J,r}^-\ge \gamma_\ast\,\mu_j(G_J),
\tag{QSP.10zzas}
```

and assume there is an error sequence `\eta_J\to 0` with

```math
\int_{G_J}
\bigl|\theta_{J,r}^+(a)-\overline\theta_{J,r}^+\bigr|\,d\mu_j(a)
\le
\eta_J,
\tag{QSP.10zzat}
```

```math
\int_{G_J}
\bigl|\theta_{J,r}^-(a)-\overline\theta_{J,r}^-\bigr|\,d\mu_j(a)
\le
\eta_J.
\tag{QSP.10zzau}
```

Then `QSP.O` holds with

```math
\theta_\ast:=\frac{\gamma_\ast}{2M}.
\tag{QSP.10zzav}
```

So on the canonical graph-fiber route, the averaged entrance-incidence packet
reduces further to

```math
\text{graph-level core-cap mass floor}
\quad+\quad
\text{fiber-occupancy oscillation control.}
\tag{QSP.10zzaw}
```

**Proof.**
By `(QSP.10zzz)` and `N(a)\le M`,

```math
\theta_{J,r}^+(a)
=
\frac{\#\{b\sim a:\ e_{ab}(t_0)\in \widetilde C_{+,r}\}}{N(a)}
\ge
\frac{1}{M}
\#\{b\sim a:\ e_{ab}(t_0)\in \widetilde C_{+,r}\}.
\tag{QSP.10zzax}
```

Integrating in `a` and using `(QSP.10zzaq)` gives

```math
\overline\theta_{J,r}^+
=
\frac{1}{\mu_j(G_J)}
\int_{G_J}\theta_{J,r}^+(a)\,d\mu_j(a)
\ge
\frac{\Gamma_{J,r}^+}{M\,\mu_j(G_J)}
\ge
\frac{\gamma_\ast}{M}.
\tag{QSP.10zzay}
```

The same argument yields `\overline\theta_{J,r}^-\ge \gamma_\ast/M`. Since
`\theta_\ast=\gamma_\ast/(2M)`, one has `\overline\theta_{J,r}^\pm\ge 2\theta_\ast`.
Therefore

```math
\bigl(\theta_\ast-\theta_{J,r}^+(a)\bigr)_+
\le
\bigl(\overline\theta_{J,r}^+-\theta_{J,r}^+(a)\bigr)_+
\le
\bigl|\theta_{J,r}^+(a)-\overline\theta_{J,r}^+\bigr|,
\tag{QSP.10zzaz}
```

and integrating gives `(QSP.10zzai)` with the same `\eta_J`. The negative cap
is identical using `(QSP.10zzau)`. Hence `QSP.O` applies. ∎

### Proposition QSP.Q (localized bump oscillation plus shell leakage implies the fiber-oscillation packet in `QSP.P`)

Keep one finite core-cap family `(QSP.10zzd)`. For each sign/cap label
`(\pm,r)`, choose a shell cap

```math
\widetilde C_{\pm,r}\subset \widehat C_{\pm,r}\subset S(N_a),
\tag{QSP.10zzba}
```

and a bounded test function

```math
0\le \chi_{\pm,r}\le 1,
\qquad
\chi_{\pm,r}\equiv 1\text{ on }\widetilde C_{\pm,r},
\qquad
\operatorname{supp}\chi_{\pm,r}\subset \widehat C_{\pm,r}.
\tag{QSP.10zzbb}
```

Define the fiber bump integrals

```math
I_{J,r}^\pm(a)
:=
\int_{S(N_a)} \chi_{\pm,r}(\omega)\,
d\overline\nu_{J,a}^{dir,0}(\omega),
\tag{QSP.10zzbc}
```

their means

```math
\overline I_{J,r}^\pm
:=
\frac{1}{\mu_j(G_J)}
\int_{G_J} I_{J,r}^\pm(a)\,d\mu_j(a),
\tag{QSP.10zzbd}
```

and the shell leakages

```math
\delta_{J,r}^\pm(a)
:=
\overline\nu_{J,a}^{dir,0}
\bigl(\widehat C_{\pm,r}\setminus \widetilde C_{\pm,r}\bigr).
\tag{QSP.10zzbe}
```

Assume there are error sequences `\eta_J^{bump}\to 0` and
`\eta_J^{shell}\to 0` such that for every `r=1,\dots,R`,

```math
\int_{G_J}
\bigl|I_{J,r}^\pm(a)-\overline I_{J,r}^\pm\bigr|\,d\mu_j(a)
\le
\eta_J^{bump},
\tag{QSP.10zzbf}
```

and

```math
\int_{G_J}\delta_{J,r}^\pm(a)\,d\mu_j(a)\le \eta_J^{shell}.
\tag{QSP.10zzbg}
```

Then the fiber-occupancy oscillation packet `(QSP.10zzat)`-`(QSP.10zzau)` from
`QSP.P` holds with

```math
\eta_J:=\eta_J^{bump}+2\eta_J^{shell}.
\tag{QSP.10zzbh}
```

So the remaining oscillation-side burden is reduced further to one finite
localized bump-oscillation theorem plus one finite shell-leakage theorem on
the same core-cap family.

**Proof.**
By `(QSP.10zzbb)`,

```math
\mathbf 1_{\widetilde C_{\pm,r}}
\le
\chi_{\pm,r}
\le
\mathbf 1_{\widehat C_{\pm,r}},
\tag{QSP.10zzbi}
```

hence

```math
\theta_{J,r}^\pm(a)
\le
I_{J,r}^\pm(a)
\le
\theta_{J,r}^\pm(a)+\delta_{J,r}^\pm(a).
\tag{QSP.10zzbj}
```

Therefore

```math
\bigl|\theta_{J,r}^\pm(a)-I_{J,r}^\pm(a)\bigr|
\le
\delta_{J,r}^\pm(a).
\tag{QSP.10zzbk}
```

Let

```math
\overline\theta_{J,r}^\pm
:=
\frac{1}{\mu_j(G_J)}
\int_{G_J}\theta_{J,r}^\pm(a)\,d\mu_j(a).
\tag{QSP.10zzbl}
```

Then

```math
\bigl|\overline\theta_{J,r}^\pm-\overline I_{J,r}^\pm\bigr|
\le
\frac{1}{\mu_j(G_J)}
\int_{G_J}\delta_{J,r}^\pm(a)\,d\mu_j(a),
\tag{QSP.10zzbm}
```

and therefore

```math
\int_{G_J}
\bigl|\theta_{J,r}^\pm(a)-\overline\theta_{J,r}^\pm\bigr|\,d\mu_j(a)
\le
\int_{G_J}\bigl|I_{J,r}^\pm(a)-\overline I_{J,r}^\pm\bigr|\,d\mu_j(a)
+
2\int_{G_J}\delta_{J,r}^\pm(a)\,d\mu_j(a)
\le
\eta_J^{bump}+2\eta_J^{shell}.
\tag{QSP.10zzbn}
```

This is exactly `(QSP.10zzat)`-`(QSP.10zzau)` with `\eta_J` from
`(QSP.10zzbh)`. ∎

### Corollary QSP.S (finite graph-bump lower packet implies the graph-cap mass floor in `QSP.P`)

Keep the core caps `(QSP.10zzd)`. For each sign/cap label `(\pm,r)`, choose a
bounded nonnegative test function

```math
0\le \varphi_{\pm,r}\le L_\ast^{graph},
\qquad
\operatorname{supp}\varphi_{\pm,r}\subset \widetilde C_{\pm,r}.
\tag{QSP.10zzbu}
```

Assume there exists `\Gamma_\ast>0` such that for every `r=1,\dots,R`,

```math
\int \varphi_{+,r}(e_{ab}(t_0))\,d\nu_J(a,b)
\ge
\Gamma_\ast\,\mu_j(G_J),
\tag{QSP.10zzbv}
```

and

```math
\int \varphi_{-,r}(e_{ab}(t_0))\,d\nu_J(a,b)
\ge
\Gamma_\ast\,\mu_j(G_J).
\tag{QSP.10zzbw}
```

Then the graph-cap mass floor `(QSP.10zzas)` holds with

```math
\gamma_\ast:=\Gamma_\ast/L_\ast^{graph}.
\tag{QSP.10zzbx}
```

So the graph side of the canonical shape packet reduces to one finite lower
packet on smooth test functions supported inside the core caps.

**Proof.**
Because `0\le \varphi_{\pm,r}\le L_\ast^{graph}` and
`\operatorname{supp}\varphi_{\pm,r}\subset \widetilde C_{\pm,r}`,

```math
\int \varphi_{\pm,r}(e_{ab}(t_0))\,d\nu_J(a,b)
\le
L_\ast^{graph}
\int \mathbf 1_{\widetilde C_{\pm,r}}(e_{ab}(t_0))\,d\nu_J(a,b)
=
L_\ast^{graph}\Gamma_{J,r}^\pm.
\tag{QSP.10zzby}
```

Combining `(QSP.10zzbv)`-`(QSP.10zzbw)` with `(QSP.10zzby)` gives
`\Gamma_{J,r}^\pm\ge \Gamma_\ast\mu_j(G_J)/L_\ast^{graph}`, which is exactly
`(QSP.10zzas)` with `\gamma_\ast=\Gamma_\ast/L_\ast^{graph}`. ∎

### Corollary QSP.T (finite graph-bump comparability implies `QSP.S`)

Keep the test family `(QSP.10zzbu)` and define the normalized spherical bump
masses

```math
m_{\pm,r}^{graph}
:=
\int_{S(N_a)} \varphi_{\pm,r}(\omega)\,d\sigma_{N_a}(\omega).
\tag{QSP.10zzbz}
```

Assume there exists an error sequence `\varepsilon_J^{graph}\to 0` such that
for every `r=1,\dots,R`,

```math
\left|
\frac{1}{\mu_j(G_J)}
\int \varphi_{+,r}(e_{ab}(t_0))\,d\nu_J(a,b)
-
m_{+,r}^{graph}
\right|
\le
\varepsilon_J^{graph},
\tag{QSP.10zzca}
```

and

```math
\left|
\frac{1}{\mu_j(G_J)}
\int \varphi_{-,r}(e_{ab}(t_0))\,d\nu_J(a,b)
-
m_{-,r}^{graph}
\right|
\le
\varepsilon_J^{graph}.
\tag{QSP.10zzcb}
```

If

```math
\varepsilon_J^{graph}
<
\frac12
\min_{r,\pm} m_{\pm,r}^{graph},
\tag{QSP.10zzcc}
```

then `QSP.S` holds with

```math
\Gamma_\ast
:=
\frac12\min_{r,\pm} m_{\pm,r}^{graph}.
\tag{QSP.10zzcd}
```

So the graph-cap mass floor has one stronger smooth realization: finite
graph-bump comparability on the same core-cap family.

**Proof.**
From `(QSP.10zzca)`-`(QSP.10zzcc)`,

```math
\frac{1}{\mu_j(G_J)}
\int \varphi_{\pm,r}(e_{ab}(t_0))\,d\nu_J(a,b)
\ge
m_{\pm,r}^{graph}-\varepsilon_J^{graph}
\ge
\Gamma_\ast,
\tag{QSP.10zzce}
```

which is exactly `(QSP.10zzbv)`-`(QSP.10zzbw)`. Thus `QSP.S` applies. ∎

### Corollary QSP.R (finite shell comparability implies the shell-leakage packet in `QSP.Q`)

Keep the shell caps `(QSP.10zzba)` and define the normalized spherical shell
masses

```math
s_{\pm,r}^{shell}
:=
\sigma_{N_a}\bigl(\widehat C_{\pm,r}\setminus \widetilde C_{\pm,r}\bigr).
\tag{QSP.10zzbo}
```

Assume there exists an error sequence `\varepsilon_J^{shell}\to 0` such that
for every `r=1,\dots,R`,

```math
\int_{G_J}
\Bigl|
\delta_{J,r}^\pm(a)-s_{\pm,r}^{shell}
\Bigr|\,d\mu_j(a)
\le
\varepsilon_J^{shell},
\tag{QSP.10zzbp}
```

and assume the shell family is chosen so that

```math
\max_{r,\pm} s_{\pm,r}^{shell}\le \varsigma_J,
\qquad
\varsigma_J\to 0.
\tag{QSP.10zzbq}
```

Then the shell-leakage input `(QSP.10zzbg)` holds with

```math
\eta_J^{shell}
:=
\varepsilon_J^{shell}
+
\varsigma_J\,\mu_j(G_J).
\tag{QSP.10zzbr}
```

So the smooth graph-fiber route reduces the shell side further to one finite
shell-comparability theorem on the same core-cap family.

**Proof.**
By the triangle inequality,

```math
\int_{G_J}\delta_{J,r}^\pm(a)\,d\mu_j(a)
\le
\int_{G_J}\Bigl|\delta_{J,r}^\pm(a)-s_{\pm,r}^{shell}\Bigr|\,d\mu_j(a)
+
s_{\pm,r}^{shell}\mu_j(G_J).
\tag{QSP.10zzbs}
```

Applying `(QSP.10zzbp)` and `(QSP.10zzbq)` gives

```math
\int_{G_J}\delta_{J,r}^\pm(a)\,d\mu_j(a)
\le
\varepsilon_J^{shell}+\varsigma_J\,\mu_j(G_J)
=
\eta_J^{shell},
\tag{QSP.10zzbt}
```

which is exactly `(QSP.10zzbg)`. ∎

### Proposition QSP.U (positive reference shell-bump packet plus shell comparability jointly supplies the graph and oscillation sides)

Keep the shell-supported bump family `\chi_{\pm,r}` from `(QSP.10zzbb)` and the
fiber bump integrals `I_{J,r}^\pm(a)` from `(QSP.10zzbc)`. Assume there exist
reference values `m_{\pm,r}^{ref}>0` and an error sequence
`\varepsilon_J^{ref}\to 0` such that for every `r=1,\dots,R`,

```math
\frac{1}{\mu_j(G_J)}
\int_{G_J}
\bigl|I_{J,r}^\pm(a)-m_{\pm,r}^{ref}\bigr|\,d\mu_j(a)
\le
\varepsilon_J^{ref}.
\tag{QSP.10zzbu1}
```

Assume also the shell-comparability packet `(QSP.10zzbp)`-`(QSP.10zzbq)` from
`QSP.R`. Write

```math
m_\ast^{ref}:=\min_{r,\pm} m_{\pm,r}^{ref}.
\tag{QSP.10zzbu2}
```

Then:

1. the bump-oscillation packet `(QSP.10zzbf)` from `QSP.Q` holds with

```math
\eta_J^{bump}:=2\varepsilon_J^{ref}\,\mu_j(G_J);
\tag{QSP.10zzbu3}
```

2. if

```math
\varepsilon_J^{ref}
+
\frac{\eta_J^{shell}}{\mu_j(G_J)}
<
\frac12 m_\ast^{ref},
\tag{QSP.10zzbu4}
```

then the graph-cap mass floor `(QSP.10zzas)` holds with

```math
\gamma_\ast:=\frac12 m_\ast^{ref}.
\tag{QSP.10zzbu5}
```

Consequently, for large `J`, the combined graph-mass / oscillation packet
`QSP.P` and the bump-oscillation packet `QSP.Q` are both supplied by one
positive reference shell-bump theorem together with shell comparability.

So on the canonical graph-fiber route, the graph side and the oscillation side
collapse together to

```math
\text{finite positive reference shell-bump packet}
\quad+\quad
\text{finite shell comparability.}
\tag{QSP.10zzbu6}
```

**Proof.**
For the oscillation side, let

```math
\overline I_{J,r}^\pm
:=
\frac{1}{\mu_j(G_J)}
\int_{G_J} I_{J,r}^\pm(a)\,d\mu_j(a).
\tag{QSP.10zzbu7}
```

Then

```math
\bigl|\overline I_{J,r}^\pm-m_{\pm,r}^{ref}\bigr|
\le
\frac{1}{\mu_j(G_J)}
\int_{G_J}\bigl|I_{J,r}^\pm(a)-m_{\pm,r}^{ref}\bigr|\,d\mu_j(a)
\le
\varepsilon_J^{ref},
\tag{QSP.10zzbu8}
```

and therefore

```math
\int_{G_J}\bigl|I_{J,r}^\pm(a)-\overline I_{J,r}^\pm\bigr|\,d\mu_j(a)
\le
2\int_{G_J}\bigl|I_{J,r}^\pm(a)-m_{\pm,r}^{ref}\bigr|\,d\mu_j(a)
\le
2\varepsilon_J^{ref}\mu_j(G_J),
\tag{QSP.10zzbu9}
```

which is exactly `(QSP.10zzbf)` with `(QSP.10zzbu3)`.

For the graph side, by `(QSP.10zzbj)` and `N(a)\ge 1`,

```math
\Gamma_{J,r}^\pm
=
\int_{G_J}N(a)\theta_{J,r}^\pm(a)\,d\mu_j(a)
\ge
\int_{G_J}\theta_{J,r}^\pm(a)\,d\mu_j(a)
\ge
\int_{G_J}I_{J,r}^\pm(a)\,d\mu_j(a)-\eta_J^{shell}.
\tag{QSP.10zzbv0}
```

Using `(QSP.10zzbu1)` and `(QSP.10zzbu4)`,

```math
\frac{\Gamma_{J,r}^\pm}{\mu_j(G_J)}
\ge
m_{\pm,r}^{ref}-\varepsilon_J^{ref}-\frac{\eta_J^{shell}}{\mu_j(G_J)}
\ge
\frac12 m_\ast^{ref}
=
\gamma_\ast,
\tag{QSP.10zzbv1}
```

which is exactly `(QSP.10zzas)` with `(QSP.10zzbu5)`. ∎

### Proposition QSP.V (reference-carrier shell-bump packet plus angular tether implies `QSP.U`)

Keep the shell-supported bump family `\chi_{\pm,r}` from `(QSP.10zzbb)` and
assume in addition that

```math
\operatorname{Lip}(\chi_{\pm,r})\le L_\chi
\qquad
\text{for every }r=1,\dots,R.
\tag{QSP.10zzbv2}
```

Let `\rho_J(a,b)\in S(N_a)` be one pairwise reference direction on the active
entrance family, and define the reference-carrier bump integrals

```math
I_{J,r}^{\pm,\rho}(a)
:=
\int \chi_{\pm,r}(\rho_J(a,b))\,d\overline\mu_{J,a}^{pair}(b).
\tag{QSP.10zzbv3}
```

Assume there exist reference values `m_{\pm,r}^{\rho,ref}>0` and an error
sequence `\varepsilon_J^\rho\to 0` such that for every `r=1,\dots,R`,

```math
\frac{1}{\mu_j(G_J)}
\int_{G_J}
\bigl|I_{J,r}^{\pm,\rho}(a)-m_{\pm,r}^{\rho,ref}\bigr|\,d\mu_j(a)
\le
\varepsilon_J^\rho.
\tag{QSP.10zzbv4}
```

Assume also one uniform entrance/reference tether

```math
\delta_J^\rho
:=
\sup_{a\in G_J}\sup_{b\in \operatorname{supp}\overline\mu_{J,a}^{pair}}
|e_{ab}(t_0)-\rho_J(a,b)|
\to 0.
\tag{QSP.10zzbv5}
```

Then the positive reference shell-bump packet `(QSP.10zzbu1)` from `QSP.U`
holds with the same reference values
`m_{\pm,r}^{ref}:=m_{\pm,r}^{\rho,ref}` and with error

```math
\varepsilon_J^{ref}
:=
\varepsilon_J^\rho + L_\chi\,\delta_J^\rho.
\tag{QSP.10zzbv6}
```

Consequently, after shell comparability from `QSP.R`, the unified shell-bump
packet `QSP.U` is reduced further to

```math
\text{finite positive shell-bump packet for one pairwise reference carrier}
\quad+\quad
\text{uniform angular tether to the entrance directions.}
\tag{QSP.10zzbv7}
```

**Proof.**
By `(QSP.10zzbc)`, `(QSP.10zzbv3)`, and the Lipschitz bound
`(QSP.10zzbv2)`,

```math
\bigl|I_{J,r}^\pm(a)-I_{J,r}^{\pm,\rho}(a)\bigr|
\le
\int
\bigl|\chi_{\pm,r}(e_{ab}(t_0))-\chi_{\pm,r}(\rho_J(a,b))\bigr|\,
d\overline\mu_{J,a}^{pair}(b)
\le
L_\chi\,\delta_J^\rho.
\tag{QSP.10zzbv8}
```

Hence

```math
\frac{1}{\mu_j(G_J)}
\int_{G_J}
\bigl|I_{J,r}^{\pm}(a)-m_{\pm,r}^{\rho,ref}\bigr|\,d\mu_j(a)
\le
\frac{1}{\mu_j(G_J)}
\int_{G_J}
\bigl|I_{J,r}^{\pm}(a)-I_{J,r}^{\pm,\rho}(a)\bigr|\,d\mu_j(a)
+
\frac{1}{\mu_j(G_J)}
\int_{G_J}
\bigl|I_{J,r}^{\pm,\rho}(a)-m_{\pm,r}^{\rho,ref}\bigr|\,d\mu_j(a)
\le
L_\chi\,\delta_J^\rho+\varepsilon_J^\rho,
\tag{QSP.10zzbv9}
```

which is exactly `(QSP.10zzbu1)` with `(QSP.10zzbv6)`. ∎

On the material-gap exact-potential subbranch, one explicit candidate reference
carrier is the oriented top right singular direction

```math
\rho_J^{RS}(a,b;t,t_0)
:=
\operatorname{sgn}\!\big(e_{ab}(t_0)\cdot r_{J,1}(t,t_0)\big)\,r_{J,1}(t,t_0).
\tag{QSP.10zzbv10}
```

Then

```math
\bigl|e_{ab}(t_0)-\rho_J^{RS}(a,b;t,t_0)\bigr|^2
=
2\Bigl(1-c_{J,0}(a,b,t;t_0)\Bigr)
\le
2\Bigl(1-c_{J,0}(a,b,t;t_0)^2\Bigr),
\tag{QSP.10zzbv11}
```

so any uniform initial right-singular overlap packet
`1-c_{J,0}(a,b,t;t_0)^2\le \eta_J^{RS}` yields

```math
\delta_J^\rho\le \sqrt{2\eta_J^{RS}}.
\tag{QSP.10zzbv12}
```

Therefore the material-gap source-side overlap theorem does not by itself
discharge `QSP.U`, but it reduces the remaining shell-bump burden to one finite
positive shell-bump theorem for the oriented right-singular carrier
`\rho_J^{RS}` on the same finite shell family. If one prefers shells centered
on the instantaneous top eigendirection instead, the carrier-comparison packet
`(AS.7m)`-`(AS.7u)` supplies the additional transfer from the material singular
carrier to `n_J`.

### Corollary QSP.W (cap-balancing plus cap-to-carrier identification supplies `QSP.11c`)

Keep the material-gap carrier `\rho_J^{RS}` from `(QSP.10zzbv10)` and the same
finite shell family `\chi_{\pm,r}`. For each sign/cap label `(\pm,r)`, suppose
there is one selector-good cap-carrier mass functional
`M_{J,r}^{\pm,cell}(a)\ge 0` on `G_J` and positive reference values
`m_{\pm,r}^{cell}>0` such that

```math
\frac{1}{\mu_j(G_J)}
\int_{G_J}
\bigl|M_{J,r}^{\pm,cell}(a)-m_{\pm,r}^{cell}\bigr|\,d\mu_j(a)
\le
\varepsilon_J^{cell},
\qquad
\varepsilon_J^{cell}\to 0.
\tag{QSP.10zzbw1}
```

Assume also the cap-to-carrier identification theorem

```math
\frac{1}{\mu_j(G_J)}
\int_{G_J}
\bigl|I_{J,r}^{\pm,\rho^{RS}}(a)-M_{J,r}^{\pm,cell}(a)\bigr|\,d\mu_j(a)
\le
\varepsilon_J^{id},
\qquad
\varepsilon_J^{id}\to 0,
\tag{QSP.10zzbw2}
```

where `I_{J,r}^{\pm,\rho^{RS}}(a)` is the reference-carrier bump integral from
`(QSP.10zzbv3)` with `\rho_J=\rho_J^{RS}`. Then the right-singular shell-bump
packet from `QSP.V` holds with

```math
\varepsilon_J^\rho:=\varepsilon_J^{cell}+\varepsilon_J^{id}.
\tag{QSP.10zzbw3}
```

Consequently, once the right-singular overlap packet `(QSP.10zzbv12)` and the
shell-comparability input from `QSP.R` are also available, the material-gap
shape burden `QSP.11c` is supplied.

So the TPS sign/balancing packet is not itself `QSP.11c`. It becomes a
sufficient realization only after one further theorem identifying the selected
cap carrier with the oriented right-singular carrier on the same finite shell
family.

**Proof.**
By the triangle inequality,

```math
\frac{1}{\mu_j(G_J)}
\int_{G_J}
\bigl|I_{J,r}^{\pm,\rho^{RS}}(a)-m_{\pm,r}^{cell}\bigr|\,d\mu_j(a)
\le
\frac{1}{\mu_j(G_J)}
\int_{G_J}
\bigl|I_{J,r}^{\pm,\rho^{RS}}(a)-M_{J,r}^{\pm,cell}(a)\bigr|\,d\mu_j(a)
+
\frac{1}{\mu_j(G_J)}
\int_{G_J}
\bigl|M_{J,r}^{\pm,cell}(a)-m_{\pm,r}^{cell}\bigr|\,d\mu_j(a)
\le
\varepsilon_J^{id}+\varepsilon_J^{cell}.
\tag{QSP.10zzbw4}
```

This is exactly `(QSP.10zzbv4)` with `m_{\pm,r}^{\rho,ref}:=m_{\pm,r}^{cell}`
and `(QSP.10zzbw3)`, so `QSP.V` applies. The rest is the material-gap
specialization already recorded after `QSP.V`. ∎

### Corollary QSP.X (pair-fiber cap-carrier tether supplies the cap-to-carrier identification in `QSP.W`)

Keep the material-gap carrier `\rho_J^{RS}` from `(QSP.10zzbv10)` and the same
finite shell family `\chi_{\pm,r}`. Assume the cap-carrier mass functional from
`QSP.W` admits the pair-fiber representation

```math
M_{J,r}^{\pm,cell}(a)
:=
\int \chi_{\pm,r}(\vartheta_J(a,b))\,d\overline\mu_{J,a}^{pair}(b)
\tag{QSP.10zzbx1}
```

for one measurable pairwise cap carrier `\vartheta_J(a,b)\in S(N_a)`. Assume
also the uniform tether

```math
\delta_J^{cell,RS}
:=
\sup_{a\in G_J}\sup_{b\in \operatorname{supp}\overline\mu_{J,a}^{pair}}
|\vartheta_J(a,b)-\rho_J^{RS}(a,b;t,t_0)|
\to 0.
\tag{QSP.10zzbx2}
```

Then the cap-to-carrier identification estimate `(QSP.10zzbw2)` holds with

```math
\varepsilon_J^{id}:=L_\chi\,\delta_J^{cell,RS}.
\tag{QSP.10zzbx3}
```

Consequently, `QSP.W` reduces further to

```math
\text{positive shell-bump packet on the selected cap carrier}
\quad+\quad
\text{uniform cap-carrier-to-right-singular angular tether.}
\tag{QSP.10zzbx4}
```

If the selected cap carrier is realized by the transported shell/cap packet
center `\xi_Q(t_0)/|\xi_Q(t_0)|` on each active selector cell, then the only
remaining new theorem on this realization is exactly one cellwise angular
tether between those selected cap centers and the oriented top right singular
carrier.

**Proof.**
By `(QSP.10zzbx1)` and the Lipschitz bound `(QSP.10zzbv2)`,

```math
\bigl|I_{J,r}^{\pm,\rho^{RS}}(a)-M_{J,r}^{\pm,cell}(a)\bigr|
\le
\int
\bigl|\chi_{\pm,r}(\rho_J^{RS}(a,b;t,t_0))-\chi_{\pm,r}(\vartheta_J(a,b))\bigr|\,
d\overline\mu_{J,a}^{pair}(b)
\le
L_\chi\,\delta_J^{cell,RS}.
\tag{QSP.10zzbx5}
```

Integrating over `a` gives `(QSP.10zzbw2)` with `(QSP.10zzbx3)`. ∎

### Corollary QSP.Y (selected packet-center tether supplies the cap-to-carrier identification on the TPS route)

Keep the hypotheses of `QSP.X`. Assume in addition that for each active pair
`(a,b)` there is one selected TPS cell `Q_J(a,b)` carrying that pair, with
transported packet-center direction

```math
\widehat\xi_{Q_J(a,b)}(t_0)
:=
\frac{\xi_{Q_J(a,b)}(t_0)}{|\xi_{Q_J(a,b)}(t_0)|}
\in S(N_a),
\tag{QSP.10zzby1}
```

and that the cap carrier in `(QSP.10zzbx1)` is exactly

```math
\vartheta_J(a,b)=\widehat\xi_{Q_J(a,b)}(t_0).
\tag{QSP.10zzby2}
```

Assume finally the selected packet-center tether

```math
\delta_J^{pc,RS}
:=
\sup_{a\in G_J}\sup_{b\in \operatorname{supp}\overline\mu_{J,a}^{pair}}
\bigl|\widehat\xi_{Q_J(a,b)}(t_0)-\rho_J^{RS}(a,b;t,t_0)\bigr|
\to 0.
\tag{QSP.10zzby3}
```

Then the cap-to-carrier identification theorem `(QSP.10zzbw2)` holds with

```math
\varepsilon_J^{id}:=L_\chi\,\delta_J^{pc,RS}.
\tag{QSP.10zzby4}
```

Consequently, on the TPS selector route the remaining material-gap shape burden
is reduced further to

```math
\text{positive shell-bump packet on the selected packet centers}
\quad+\quad
\text{selected packet-center-to-right-singular angular tether.}
\tag{QSP.10zzby5}
```

**Proof.**
This is exactly `QSP.X` with the specialization `(QSP.10zzby2)` and
`\delta_J^{cell,RS}:=\delta_J^{pc,RS}`. ∎

### Corollary QSP.Z (packet-center-to-entrance tether plus right-singular overlap supplies `QSP.Y`)

Keep the hypotheses of `QSP.Y`. Define the packet-center-to-entrance mismatch

```math
\delta_J^{pc,0}
:=
\sup_{a\in G_J}\sup_{b\in \operatorname{supp}\overline\mu_{J,a}^{pair}}
\bigl|\widehat\xi_{Q_J(a,b)}(t_0)-e_{ab}(t_0)\bigr|
\to 0.
\tag{QSP.10zzbz1}
```

Assume also the uniform right-singular overlap packet

```math
1-c_{J,0}(a,b,t;t_0)^2\le \eta_J^{RS}
\qquad
\text{for every active }(a,b),
\qquad
\eta_J^{RS}\to 0.
\tag{QSP.10zzbz2}
```

Then the selected packet-center tether `(QSP.10zzby3)` holds with

```math
\delta_J^{pc,RS}
\le
\delta_J^{pc,0}+\sqrt{2\eta_J^{RS}}.
\tag{QSP.10zzbz3}
```

Consequently, on the material-gap TPS route the selected packet-center
identification burden is reduced further to

```math
\text{packet-center-to-entrance-direction tether}
\quad+\quad
\text{uniform initial right-singular overlap.}
\tag{QSP.10zzbz4}
```

Since the overlap packet is already part of the source-side material-gap input,
the genuinely new geometric burden on this realization is just the
packet-center-to-entrance-direction tether `(QSP.10zzbz1)`.

**Proof.**
By the triangle inequality,

```math
\bigl|\widehat\xi_{Q_J(a,b)}(t_0)-\rho_J^{RS}(a,b;t,t_0)\bigr|
\le
\bigl|\widehat\xi_{Q_J(a,b)}(t_0)-e_{ab}(t_0)\bigr|
+
\bigl|e_{ab}(t_0)-\rho_J^{RS}(a,b;t,t_0)\bigr|.
\tag{QSP.10zzbz5}
```

Taking the supremum and applying `(QSP.10zzbv12)` gives `(QSP.10zzbz3)`. Then
`QSP.Y` applies. ∎

### Corollary QSP.AA (selected-cell cap aperture supplies the packet-center-to-entrance tether)

Keep the hypotheses of `QSP.Z`. Assume there is one aperture scale
`\vartheta_J^{cap}\to 0` such that for every active pair `(a,b)` carried by its
selected TPS cell `Q_J(a,b)`,

```math
\bigl|\widehat\xi_{Q_J(a,b)}(t_0)-e_{ab}(t_0)\bigr|
\le
\vartheta_J^{cap}.
\tag{QSP.10zzca1}
```

Then the packet-center-to-entrance mismatch `(QSP.10zzbz1)` holds with

```math
\delta_J^{pc,0}\le \vartheta_J^{cap}.
\tag{QSP.10zzca2}
```

Consequently, `QSP.Z` reduces the TPS route one final step to

```math
\text{selected-cell entrance-direction cap aperture}
\quad+\quad
\text{uniform initial right-singular overlap.}
\tag{QSP.10zzca3}
```

Since the overlap packet is already part of the source-side material-gap input,
the genuinely new geometric burden on the TPS realization is just the
selected-cell entrance-direction cap-aperture theorem `(QSP.10zzca1)`.

In particular, if the selected parent caps have angular width at most
`C_{cap}\lambda_J^{-1/2}` and every carried entrance direction lies in its
parent cap, then one may take
`\vartheta_J^{cap}\le C_{cap}\lambda_J^{-1/2}`.

**Proof.**
Take the supremum in `(QSP.10zzca1)` over active pairs on the selected TPS
route. This is exactly `(QSP.10zzbz1)` with `(QSP.10zzca2)`, so `QSP.Z`
applies. ∎

### Corollary QSP.AB (parent-cap entrance membership supplies `QSP.AA`)

Keep the hypotheses of `QSP.AA`. For each active pair `(a,b)` carried by its
selected TPS cell `Q_J(a,b)`, let `\omega_J(a,b)` denote the parent shell/cap
carrier of that cell. Assume there is one angular diameter scale
`\alpha_J^{cap}\to 0` such that

```math
\operatorname{diam}_{S(N_a)}\!\big(\omega_J(a,b)\big)
\le
\alpha_J^{cap}
\qquad
\text{for every active }(a,b),
\tag{QSP.10zzcb1}
```

and that both the selected packet-center direction and the entrance pair
direction lie in that same parent cap:

```math
\widehat\xi_{Q_J(a,b)}(t_0)\in \omega_J(a,b),
\qquad
e_{ab}(t_0)\in \omega_J(a,b).
\tag{QSP.10zzcb2}
```

Then `QSP.AA` holds with

```math
\vartheta_J^{cap}\le \alpha_J^{cap}.
\tag{QSP.10zzcb3}
```

Consequently, under the cap-diameter hypothesis `(QSP.10zzcb1)` and the
selected packet-center membership hypothesis in `(QSP.10zzcb2)`, the genuinely
new TPS geometric burden shrinks one last step to

```math
\text{selected-parent-cap entrance membership}
\quad+\quad
\text{uniform initial right-singular overlap.}
\tag{QSP.10zzcb4}
```

Since the overlap packet is already part of the source-side material-gap input,
the remaining new theorem on this realization is just the selected-parent-cap
entrance-membership statement `e_{ab}(t_0)\in \omega_J(a,b)`.

**Proof.**
If both vectors lie in the same spherical cap `\omega_J(a,b)` of angular
diameter at most `\alpha_J^{cap}`, then

```math
\bigl|\widehat\xi_{Q_J(a,b)}(t_0)-e_{ab}(t_0)\bigr|
\le
\operatorname{diam}_{S(N_a)}\!\big(\omega_J(a,b)\big)
\le
\alpha_J^{cap}.
\tag{QSP.10zzcb5}
```

So `(QSP.10zzca1)` holds with `\vartheta_J^{cap}:=\alpha_J^{cap}`, and
`QSP.AA` applies. ∎

### Corollary QSP.AC (entrance-direction-adapted cell assignment supplies `QSP.AB`)

Keep the hypotheses of `QSP.AB`. Assume in addition that the selected TPS
carrier assignment is entrance-direction-adapted in the following sense: for
every active pair `(a,b)` there is one selected TPS cell `Q_J(a,b)` carrying
that pair, with parent shell/cap carrier `\omega_J(a,b)`, and

```math
e_{ab}(t_0)\in \omega_J(a,b).
\tag{QSP.10zzcc1}
```

Assume the selected packet-center membership hypothesis

```math
\widehat\xi_{Q_J(a,b)}(t_0)\in \omega_J(a,b).
\tag{QSP.10zzcc2}
```

Therefore `QSP.AB` applies, and under the cap-diameter and selected-center
membership hypotheses the remaining new TPS geometric burden is exactly one
entrance-direction-adapted selected-cell assignment theorem:

```math
\text{for every active pair, choose its selected cell so that }
e_{ab}(t_0)\in \omega_J(a,b).
\tag{QSP.10zzcc3}
```

**Proof.**
The hypothesis `(QSP.10zzcc1)` is exactly the selected-parent-cap entrance
membership statement needed in `(QSP.10zzcb2)`, while `(QSP.10zzcc2)` is part
of the ambient shell/cap packet geometry. So `QSP.AB` applies. ∎

### Corollary QSP.AD (entrance-compatible cap-balancing refinement supplies `QSP.AC`)

Keep the hypotheses of `QSP.AC`. Suppose the cap-energy balancing refinement in
`(TPS.1)` is strengthened so that for every active pair `(a,b)` it selects one
terminal TPS cell `Q_J(a,b)` whose parent shell/cap carrier `\omega_J(a,b)`
contains the entrance direction:

```math
e_{ab}(t_0)\in \omega_J(a,b).
\tag{QSP.10zzcd1}
```

Then `QSP.AC` holds automatically. Consequently, under the cap-diameter and
selected-center membership hypotheses, the live TPS selector burden can be
packaged as one theorem:

```math
\text{entrance-compatible TPS cap-balancing / reserve-sign refinement.}
\tag{QSP.10zzcd2}
```

So the exact-potential shape branch no longer needs to carry

```math
\text{TPS cap-balancing / reserve-sign packet}
\quad+\quad
\text{entrance-direction-adapted selected-cell assignment}
\tag{QSP.10zzcd3}
```

as two separate selector-theorem burdens; it is enough to prove the same
cap-balancing / reserve-sign packet on a refinement that is already compatible
with entrance-direction cap assignment.

**Proof.**
The compatibility statement `(QSP.10zzcd1)` is exactly the hypothesis
`(QSP.10zzcc1)` in `QSP.AC`, so `QSP.AC` gives the conclusion. ∎

### Corollary QSP.AE (finite entrance-sector sign refinement supplies `QSP.AD`)

Keep the hypotheses of `QSP.AD`. Assume the TPS cap-balancing / reserve-sign
refinement is realized on a finite entrance-sector subdivision subordinate to
each parent shell/cap carrier, and that every terminal sector cell satisfies
the same diagonal-density and weighted row-sum bounds as in `TPS-sign-ent`.
Assume also that each active pair is assigned to the terminal sector cell whose
parent sector contains its entrance direction `e_{ab}(t_0)`.

Then `QSP.AD` holds automatically. Consequently, the selector-side exact
primitive is reduced further to one theorem on the same refinement layer:

```math
\text{sector-stable diagonal-density / row-sum control on a finite entrance-sector subdivision.}
\tag{QSP.10zzce1}
```

**Proof.**
By `TPS-sign-ent`, the reserve-sign packet survives on the entrance-sector
refined carrier. The assignment rule is exactly the entrance-compatibility
hypothesis in `(QSP.10zzcd1)`, so `QSP.AD` applies. ∎

### Corollary QSP.AF (the entrance-sector selector primitive splits into sector-diag plus sector-row)

Keep the hypotheses of `QSP.AE`. Then the selector-side exact primitive
`(QSP.10zzce1)` is exactly the conjunction of the two sector-level sign
suppliers exported by `TPS-sign-ent'`:

```math
\text{sector-stable diagonal-density lower bound}
\quad+\quad
\text{sector-stable weighted row-sum bound.}
\tag{QSP.10zzcf1}
```

Consequently, the live exact-potential shape burden may be rewritten as

```math
\text{(sector-diag)}+\text{(sector-row)}
\quad+\quad
\text{finite shell comparability}
\quad+\quad
\sup|\nabla v_J|\text{ on the active segments.}
\tag{QSP.10zzcf2}
```

**Proof.**
This is the selector-side restatement of `TPS-sign-ent'`: the entrance-sector
sign packet is exactly the pair of sector-level estimates `(TPS.3o)`-`(TPS.3p)`,
and `QSP.AE` uses nothing else from the selector refinement. ∎

### Corollary QSP.AG (the primitive sign pair reduces to sector-diag-transfer plus sector-edge-transfer)

Keep the hypotheses of `QSP.AF`. Then the sign-side pair `(QSP.10zzcf1)` is
reduced further by `TPS-sign-ent''` to

```math
\text{sectorwise diagonal-mass distribution}
\quad+\quad
\text{sectorwise edge localization}
\tag{QSP.10zzcg1}
```

on the finite entrance-sector subdivision.

Consequently, the live exact-potential shape burden may be rewritten as

```math
\text{(sector-diag-transfer)}+\text{(sector-edge-transfer)}
\quad+\quad
\text{finite shell comparability}
\quad+\quad
\sup|\nabla v_J|\text{ on the active segments.}
\tag{QSP.10zzcg2}
```

**Proof.**
This is exactly the selector-side export of `TPS-sign-ent''`: once the parent
sign packet is already present, the remaining entrance-sector sign burden is
the pair `(TPS.3t)`-`(TPS.3u)`. ∎

### Corollary QSP.AH (the transfer pair collapses to sector-diag-transfer under inherited sector adjacency)

Keep the hypotheses of `QSP.AG`, and assume the entrance-sector graph is
inherited from the parent cap graph with uniformly bounded sector multiplicity,
as in `TPS-sign-ent'''`. Then the sector-edge-transfer half is automatic after
replacing the parent constant by the fixed sector-multiplicity constant, and
the remaining selector-side exact
primitive collapses to

```math
\text{sectorwise diagonal-mass distribution}
\tag{QSP.10zzch1}
```

together with the already separate shell/regular-window inputs.

Consequently, the live exact-potential shape burden may be rewritten as

```math
\text{sectorwise diagonal-mass distribution}
\quad+\quad
\text{finite shell comparability}
\quad+\quad
\sup|\nabla v_J|\text{ on the active segments.}
\tag{QSP.10zzch2}
```

**Proof.**
This is exactly the selector-side restatement of `TPS-sign-ent'''`: once the
parent sign packet and inherited bounded-multiplicity sector graph are fixed,
the sector-edge-transfer term is automatic, so only the diagonal-mass transfer
remains new. ∎

### Corollary QSP.AI (the remaining transfer theorem is diagonal restriction stability)

Keep the hypotheses of `QSP.AH`. Then the remaining sign-side theorem is
exactly the diagonal restriction-stability law exported by `TPS-sign-ent''''`:

```math
\text{diagonal restriction stability on the entrance-sector refinement.}
\tag{QSP.10zzci1}
```

Consequently, the live exact-potential shape burden may be rewritten one final
time as

```math
\text{diagonal restriction stability on the entrance-sector refinement}
\quad+\quad
\text{finite shell comparability}
\quad+\quad
\sup|\nabla v_J|\text{ on the active segments.}
\tag{QSP.10zzci2}
```

**Proof.**
This is the selector-side export of `TPS-sign-ent''''`: once the sector-edge
half is automatic, the only new sign-side burden is the diagonal restriction
theorem `(TPS.3ac)`. ∎

### Corollary QSP.AJ (diagonal restriction stability reduces to sectorwise relative oscillation of the diagonal density)

Keep the hypotheses of `QSP.AI`. Assume that on each parent stopped cell `Q`
the diagonal mass is represented by a nonnegative density `\delta_{j,Q}` with

```math
d_j^{diag}(A)=\int_A \delta_{j,Q}\,d\mu_j
\qquad\text{for every measurable }A\subseteq Q,
\tag{QSP.10zzcj1}
```

and that there exists a uniform constant `0\le \sigma_{\mathrm{diag}}<1` such
that for every terminal entrance-sector cell `Q_s^{ent}\subset Q`,

```math
\operatorname*{ess\,sup}_{a\in Q_s^{ent}}
\left|
\delta_{j,Q}(a)-\frac{d_j^{diag}(Q)}{\mu_j(Q)}
\right|
\le
\sigma_{\mathrm{diag}}\,
\frac{d_j^{diag}(Q)}{\mu_j(Q)}.
\tag{QSP.10zzcj2}
```

Then the diagonal restriction theorem `(QSP.10zzci1)` is automatic.
Consequently, the live exact-potential shape burden may be rewritten as

```math
\text{sectorwise relative oscillation control of the diagonal density around the parent-cell average}
\quad+\quad
\text{finite shell comparability}
\quad+\quad
\sup|\nabla v_J|\text{ on the active segments.}
\tag{QSP.10zzcj3}
```

**Proof.**
This is the selector-side export of Proposition `DRS.B`: the relative
oscillation bound `(QSP.10zzcj2)` implies diagonal restriction stability on
every terminal entrance-sector cell, so `QSP.AI` becomes automatic. ∎

### Corollary QSP.AK (terminal sector-center lower density plus local Holder oscillation is a stronger selector-native sufficient route)

Keep the hypotheses of `QSP.AI`. Assume in addition that every terminal
entrance-sector cell `Q_s^{ent}` carries one label center `a_{Q,s}\in Q_s^{ent}`
and that there exist constants `c_{\mathrm{diag}}^{ctr}>0`,
`\gamma_{\mathrm{diag}}\ge 0`, and `\alpha\in(0,1]` with
`c_{\mathrm{diag}}^{ctr}>\gamma_{\mathrm{diag}}` such that

```math
\delta_{j,Q}(a_{Q,s})
\ge
c_{\mathrm{diag}}^{ctr}\,
\frac{d_j^{diag}(Q)}{\mu_j(Q)},
\tag{QSP.10zzck1}
```

and

```math
[\delta_{j,Q}]_{C^\alpha(Q_s^{ent})}
\operatorname{diam}(Q_s^{ent})^\alpha
\le
\gamma_{\mathrm{diag}}\,
\frac{d_j^{diag}(Q)}{\mu_j(Q)}.
\tag{QSP.10zzck2}
```

Then the diagonal restriction theorem `(QSP.10zzci1)` is automatic.
Consequently, one stronger selector-native sufficient realization of the
exact-potential shape burden is

```math
\text{terminal sector-center lower density relative to the parent-cell average}
\quad+\quad
\text{local Holder oscillation on the terminal entrance-sector cells}
\quad+\quad
\text{finite shell comparability}
\quad+\quad
\sup|\nabla v_J|\text{ on the active segments.}
\tag{QSP.10zzck3}
```

**Proof.**
This is the selector-side export of Corollary `DRS.D`: the terminal
sector-center lower bound `(QSP.10zzck1)` and the local Holder control
`(QSP.10zzck2)` imply diagonal restriction stability directly, hence the
claimed stronger sufficient route. ∎

### Corollary QSP.AL (parent stopped-cell center lower density plus parent-cell Holder control supplies `QSP.AK`)

Keep the hypotheses of `QSP.AK`. Assume each parent stopped cell `Q` carries
one label center `a_Q\in Q`, and each terminal entrance-sector cell
`Q_s^{ent}\subset Q` carries one label center `a_{Q,s}\in Q_s^{ent}`.

Assume there exist constants `c_{\mathrm{diag}}^{par}>0`,
`\gamma_{\mathrm{diag}}^{par}\ge 0`, and `\alpha\in(0,1]` with
`c_{\mathrm{diag}}^{par}>\gamma_{\mathrm{diag}}^{par}` such that for every
parent stopped cell `Q`,

```math
\delta_{j,Q}(a_Q)
\ge
c_{\mathrm{diag}}^{par}\,
\frac{d_j^{diag}(Q)}{\mu_j(Q)},
\tag{QSP.10zzcl1}
```

and

```math
[\delta_{j,Q}]_{C^\alpha(Q)}
\operatorname{diam}(Q)^\alpha
\le
\gamma_{\mathrm{diag}}^{par}\,
\frac{d_j^{diag}(Q)}{\mu_j(Q)}.
\tag{QSP.10zzcl2}
```

Then the stronger selector-native route `(QSP.10zzck3)` is automatic.
Consequently, an even more canonical selector-native sufficient realization of
the exact-potential shape burden is

```math
\text{parent stopped-cell center lower density relative to the parent-cell average}
\quad+\quad
\text{parent stopped-cell Holder control of the diagonal density}
\quad+\quad
\text{finite shell comparability}
\quad+\quad
\sup|\nabla v_J|\text{ on the active segments.}
\tag{QSP.10zzcl3}
```

**Proof.**
This is the selector-side export of Corollary `DRS.E`: the parent stopped-cell
center lower bound `(QSP.10zzcl1)` and the parent-cell Holder control
`(QSP.10zzcl2)` imply the terminal sector-center route `QSP.AK`, hence the
claimed stronger sufficient realization. ∎

## Interpretation

The real shape theorem on the active selector-good family is therefore:

```math
\boxed{
\text{prove one finite family of two-sided quadratic sign tests uniformly on }\mathcal G_J.
}
\tag{QSP.11}
```

This converts the infinite family of quadratic tests into one bounded packet
with uniform constants `\kappa_\ast,\alpha_\ast`.

The geometric descendant `QSP.B` is sharper still: one does not need to verify
the quadratic inequalities directly. It is enough to prove positive
selector-good mass in a finite family of projective caps determined by the net
tensors.

But Proposition `QSP.D` shows that this cap-occupancy route is genuinely
stronger than bare degree-2 isotropy / second-moment normalization. Exact
isotropy does not force positive mass in those caps.

So the smallest constructive burden visible in this note is:

```math
\boxed{
\text{prove positive selector-good mass in the finite eigen-cap family }(QSP.10d)\text{--}(QSP.10f).
}
\tag{QSP.11a}
```

A smoother exact sufficient realization is:

```math
\boxed{
\text{prove one finite localized bump-lower packet on the same eigen-cap family.}
}
\tag{QSP.11b}
```

That is Corollary `QSP.E`. Proposition `QSP.G` reduces it further to
entrance-time bump mass plus angular transport stability of the selector-good
pair directions, and Corollary `QSP.H` shows that on short regular windows the
transport-stability input is supplied by one uniform segment-gradient budget.
Corollary `QSP.I` makes that budget a plain regular-window `\sup|\nabla v_J|`
bound along the active segments. Corollary `QSP.J` then reduces the
entrance-time bump packet to one finite initial pair-direction core-cap
occupancy theorem. Corollary `QSP.K` gives a stronger finite initial
core-cap-comparability route. Proposition `QSP.M` shows that the existing
active-pair graph measure already carries a canonical normalized entrance-fiber
realization, and Corollary `QSP.N` rewrites the remaining core-cap theorem on
that canonical route as one finite lower-density theorem on each active
neighbor fiber. Proposition `QSP.O` reduces that again to a finite averaged
entrance-incidence ledger plus one bad-base extraction. Proposition `QSP.P`
splits that averaged packet further into a graph-level cap-mass floor plus one
fiber-occupancy oscillation theorem. Proposition `QSP.Q` reduces that
oscillation side again to one finite localized bump-oscillation packet plus
one thin shell-leakage packet on the same core-cap family. Corollary `QSP.R`
reduces the shell side further to finite shell-comparability on that same
family. Corollaries `QSP.S`-`QSP.T` reduce the graph-mass side further to one
finite graph-bump lower packet, or stronger graph-bump comparability, on the
same core-cap family. Proposition `QSP.U` then collapses those two smooth
siblings together: one finite positive reference shell-bump theorem plus shell
comparability supplies both the graph side and the oscillation side, and
Proposition `QSP.V` sharpens that again: it is enough to prove the same finite
positive shell-bump packet for any pairwise reference carrier that remains
uniformly angle-tethered to the actual entrance directions. On the
material-gap exact-potential subbranch, one may take the oriented top right
singular direction as that carrier, so the source-side initial-overlap theorem
reduces the remaining shell-bump burden to a finite right-singular shell-bump
packet; if one wants shells centered on the instantaneous top eigendirection
instead, the carrier-comparison packet `(AS.7m)`-`(AS.7u)` supplies the extra
transfer. Corollary `QSP.W` sharpens the same branch again: the TPS
cap-balancing / reserve-sign packet only becomes a sufficient realization of
that right-singular shell-bump theorem after one further cap-to-carrier
identification theorem on the same shell family. Corollary `QSP.X` reduces
that identification theorem again to one uniform angular tether between the
selected cap carrier and the oriented top right singular carrier on the same
pair fibers. Corollary `QSP.Y` then specializes that further to the actual TPS
packet-center geometry: if the cap carrier is realized by the transported
packet centers `\widehat\xi_Q(t_0)`, the remaining identification burden is
just one selected packet-center-to-right-singular angular tether. Corollary
`QSP.Z` peels that once more: after inserting the already-source-side uniform
initial right-singular overlap, the genuinely new TPS geometric burden is only
one packet-center-to-entrance-direction tether. Corollary `QSP.AA` then
  reduces that again to a pure selected-cell entrance-direction cap-aperture
  theorem, and Corollary `QSP.AB` makes the ambient packet-width input explicit:
  after the cap-diameter and selected packet-center membership hypotheses in
  `(QSP.10zzcb1)`-`(QSP.10zzcb2)`, what remains new is only that each carried
  entrance direction lies in its selected parent cap. Corollary `QSP.AC` then
rewrites even that as one entrance-direction-adapted selected-cell assignment
theorem. Corollary `QSP.AD` fuses that assignment burden back into the same TPS
refinement layer as the cap-balancing / reserve-sign theorem itself: the
remaining selector work is one entrance-compatible cap-balancing refinement.
Corollary `QSP.L` is the
bounded-degree one-neighbor special case. So on the
regular-window branch the genuinely new finite constructive burden left here is
either that initial core-cap occupancy packet itself or, on the canonical
graph-fiber route, the positive reference shell-bump packet plus shell
comparability packet.
Stronger but still finite routes are either localized bump comparability on
that same family via `QSP.F`, or raw cap-comparability via `QSP.C`.

On the material-gap graph-fiber subbranch, the sharp remaining smooth burden is
therefore:

```math
\boxed{
\text{finite positive shell-bump packet for the oriented top right singular carrier}
\ +\
\text{finite shell comparability}
\ +\
\sup|\nabla v_J|\text{ on the active segments.}
}
\tag{QSP.11c}
```

Equivalently, on the TPS selector-balancing realization of that same branch,
the live burden is:

```math
\boxed{
\text{TPS cap-balancing / reserve-sign packet}
\ +\
\text{cap-to-right-singular carrier identification}
\ +\
\text{finite shell comparability}
\ +\
\sup|\nabla v_J|\text{ on the active segments.}
}
\tag{QSP.11d}
```

If the selected cap carrier is realized by the transported shell/cap centers,
this shrinks one step further to:

```math
\boxed{
\text{TPS cap-balancing / reserve-sign packet}
\ +\
\text{cellwise cap-center-to-right-singular angular tether}
\ +\
\text{finite shell comparability}
\ +\
\sup|\nabla v_J|\text{ on the active segments.}
}
\tag{QSP.11e}
```

Using the already-installed material-gap overlap packet, this reduces one final
step to:

```math
\boxed{
\text{TPS cap-balancing / reserve-sign packet}
\ +\
\text{packet-center-to-entrance-direction tether}
\ +\
\text{finite shell comparability}
\ +\
\sup|\nabla v_J|\text{ on the active segments.}
}
\tag{QSP.11f}
```

And if the selected packet centers come from parent caps of shrinking angular
width, this shrinks one last step to:

```math
\boxed{
\text{TPS cap-balancing / reserve-sign packet}
\ +\
\text{selected-cell entrance-direction cap aperture}
\ +\
\text{finite shell comparability}
\ +\
\sup|\nabla v_J|\text{ on the active segments.}
}
\tag{QSP.11g}
```

Under the cap-diameter hypothesis `(QSP.10zzcb1)` and the selected
packet-center membership hypothesis `(QSP.10zzcc2)`, this reduces once more to:

```math
\boxed{
\text{TPS cap-balancing / reserve-sign packet}
\ +\
\text{selected-parent-cap entrance membership}
\ +\
\text{finite shell comparability}
\ +\
\sup|\nabla v_J|\text{ on the active segments.}
}
\tag{QSP.11h}
```

Equivalently, under those shell/cap packet hypotheses this is just:

```math
\boxed{
\text{TPS cap-balancing / reserve-sign packet}
\ +\
\text{entrance-direction-adapted selected-cell assignment}
\ +\
\text{finite shell comparability}
\ +\
\sup|\nabla v_J|\text{ on the active segments.}
}
\tag{QSP.11i}
```

Equivalently, after fusing the selector-assignment burden back into the same
TPS refinement layer, the live selector-side shape burden is just:

```math
\boxed{
\text{entrance-compatible TPS cap-balancing / reserve-sign refinement}
\ +\
\text{finite shell comparability}
\ +\
\sup|\nabla v_J|\text{ on the active segments.}
}
\tag{QSP.11j}
```

Unpacking that one step further into its selector-local primitive gives:

```math
\boxed{
\text{sector-stable diagonal-density / row-sum control on a finite entrance-sector subdivision}
\ +\
\text{finite shell comparability}
\ +\
\sup|\nabla v_J|\text{ on the active segments.}
}
\tag{QSP.11k}
```

And unpacking the Gershgorin input one last step gives the exact sign-side pair:

```math
\boxed{
\text{sector-stable diagonal-density lower bound}
\ +\
\text{sector-stable weighted row-sum bound}
\ +\
\text{finite shell comparability}
\ +\
\sup|\nabla v_J|\text{ on the active segments.}
}
\tag{QSP.11l}
```

And, relative to the already-installed parent sign packet, the entrance-sector
part reduces once more to the transfer pair:

```math
\boxed{
\text{sectorwise diagonal-mass distribution}
\ +\
\text{sectorwise edge localization}
\ +\
\text{finite shell comparability}
\ +\
\sup|\nabla v_J|\text{ on the active segments.}
}
\tag{QSP.11m}
```

Under inherited sector adjacency and bounded sector multiplicity, the edge half
is automatic. So the live selector-side shape burden shrinks one final step to:

```math
\boxed{
\text{sectorwise diagonal-mass distribution}
\ +\
\text{finite shell comparability}
\ +\
\sup|\nabla v_J|\text{ on the active segments.}
}
\tag{QSP.11n}
```

Equivalently, at the kernel-local sign level, the exact remaining primitive is:

```math
\boxed{
\text{diagonal restriction stability on the entrance-sector refinement}
\ +\
\text{finite shell comparability}
\ +\
\sup|\nabla v_J|\text{ on the active segments.}
}
\tag{QSP.11o}
```

And, once the diagonal mass is represented by a cellwise density, this shrinks
one further step to the oscillation theorem

```math
\boxed{
\text{sectorwise relative oscillation control of the diagonal density around the parent-cell average}
\ +\
\text{finite shell comparability}
\ +\
\sup|\nabla v_J|\text{ on the active segments.}
}
\tag{QSP.11p}
```

One stronger selector-native sufficient realization is therefore:

```math
\boxed{
\text{terminal sector-center lower density relative to the parent-cell average}
\ +\
\text{local Holder oscillation on the terminal entrance-sector cells}
\ +\
\text{finite shell comparability}
\ +\
\sup|\nabla v_J|\text{ on the active segments.}
}
\tag{QSP.11q}
```

An even more canonical selector-native sufficient realization is:

```math
\boxed{
\text{parent stopped-cell center lower density relative to the parent-cell average}
\ +\
\text{parent stopped-cell Holder control of the diagonal density}
\ +\
\text{finite shell comparability}
\ +\
\sup|\nabla v_J|\text{ on the active segments.}
}
\tag{QSP.11r}
```

This stronger selector-native sufficient realization is now isolated
separately in
[terminal-sector-center-density-and-local-holder-oscillation.md](/Users/thomasbirnie/Workspace/ToE/Research-Consolidation/problems/navier-stokes/theorem-construction/terminal-sector-center-density-and-local-holder-oscillation.md).

## Downstream Use

This note feeds
[selector-balanced-frame-lemma.md](/Users/thomasbirnie/Workspace/ToE/Research-Consolidation/problems/navier-stokes/theorem-construction/selector-balanced-frame-lemma.md)
and then the combined closure note
[exact-potential-balanced-frame-to-d7mq.md](/Users/thomasbirnie/Workspace/ToE/Research-Consolidation/problems/navier-stokes/theorem-construction/exact-potential-balanced-frame-to-d7mq.md).
