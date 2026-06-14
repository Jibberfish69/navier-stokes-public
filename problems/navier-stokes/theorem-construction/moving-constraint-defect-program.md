# Moving Constraint Defect Program

## Purpose

The new time-slab freezing note already shows that the evolving Lagrangian
bridge is **not** blocked by the frozen diffusion part. After freezing at
`t_0`, the system becomes classical Stokes plus:

1. a small principal diffusion perturbation,
2. a pressure perturbation,
3. a moving divergence defect.

This note isolates the last two as the true live obstruction.

## Starting point

On a short slab `[t_0,t_0+h]`, after freezing at `t_0`, the exact transformed
system is

```math
\partial_t w+\nabla_x\pi-\nu\,\Delta_x w
=
\widetilde f
+
\nu\,\operatorname{div}_x(\eta\nabla_x w)
-\mu^\top\nabla_x\pi,
\tag{1}
```

with

```math
\operatorname{div}_x w
=
-\operatorname{div}_x(\mu w)
\,=:g.
\tag{2}
```

Here `\mu,\eta` vanish at `t=t_0` and are small on short slabs.

## First exact correction

The natural move is to repair the nonzero divergence by a classical divergence
solver in the frozen `x` variables.

Let `\mathcal B` be a standard Bogovski\u012d-type right inverse of
`\operatorname{div}_x` on the working patch/domain, and define

```math
u:=w-\mathcal B g.
\tag{3}
```

Then

```math
\operatorname{div}_x u=0.
\tag{4}
```

Since

```math
g=-\operatorname{div}_x(\mu w),
\tag{5}
```

the divergence correction is already same-depth if one can prove

```math
\|\mathcal B g\|_{H^{s+1}}
\le C_{\mathcal B}\|g\|_{H^s},
\qquad
\|g\|_{H^s}
\le C_s
\|\mu\|_{W^{1,\infty}}\|w\|_{H^{s+1}}
+
\|\mu\|_{H^{s+1}}\|w\|_{L^\infty}.
\tag{6}
```

So the divergence source is not mysterious. It is a first-order bilinear defect.

## Corrected Stokes equation

Substituting `w=u+\mathcal B g` into `(1)` yields

```math
\partial_t u+\nabla_x\Pi-\nu\,\Delta_x u
=
\widetilde f
+
\nu\,\operatorname{div}_x(\eta\nabla_x u)
+
\nu\,\operatorname{div}_x(\eta\nabla_x\mathcal B g)
-\mu^\top\nabla_x\pi
-(\partial_t-\nu\Delta_x)\mathcal B g,
\tag{7}
```

with `\operatorname{div}_x u=0`, where `\Pi` absorbs the pressure-equivalent
gradient terms coming from the correction.

This is now a genuine perturbation of classical Stokes on the **standard**
divergence-free space.

## Exact next lemma targets

The moving bridge therefore breaks into three concrete lemmas.

### Lemma A. Divergence-correction stability

The honest same-depth expansion is

```math
\displaystyle
g
=
-(\operatorname{div}_x\mu)\cdot w
-\mu:\nabla_x w.
\tag{8}
```

So the theorem-grade target is

```math
\|g\|_{L_t^2 H_x^s}
\le C_s
\|\mu\|_{L_t^\infty W_x^{1,\infty}}\|w\|_{L_t^2 H_x^{s+1}}
+
\|\mu\|_{L_t^\infty H_x^{s+1}}\|w\|_{L_t^2 L_x^\infty},
\tag{9}
```

and hence

```math
\|\mathcal B g\|_{L_t^2 H_x^{s+1}}
\le
C_{\mathcal B}C_s
\Big(
\|\mu\|_{L_t^\infty W_x^{1,\infty}}\|w\|_{L_t^2 H_x^{s+1}}
+
\|\mu\|_{L_t^\infty H_x^{s+1}}\|w\|_{L_t^2 L_x^\infty}
\Big).
\tag{9a}
```

For `s>\frac32`, this is a standard Moser/Bogovski\u012d estimate. The point is
that the divergence defect sits on the `H^{s+1}` part of the slab velocity
ledger, not merely on `H^s`.

#### Direct perturbative view of the obstruction

If one temporarily does **not** repair the divergence and instead treats

```math
g=-\operatorname{div}_x(\mu w)
```

as the live defect directly, then for `s>\frac52` the same product expansion
also gives the weaker but very useful estimate

```math
\|g\|_{H_x^{s-1}}
\le C_s
\|\mu\|_{L_x^\infty}\|\nabla_x w\|_{H_x^{s-1}}
+
\|\nabla_x\mu\|_{L_x^\infty}\|w\|_{H_x^{s-1}}
+
\|\mu\|_{H_x^{s-1}}\|\nabla_x w\|_{L_x^\infty}
+
\|\nabla_x\mu\|_{H_x^{s-1}}\|w\|_{L_x^\infty}.
\tag{9b}
```

Equivalently,

```math
\boxed{
\|g\|_{H_x^{s-1}}
\le C_s
\|\mu\|_{W_x^{1,\infty}\cap H_x^s}\,
\|w\|_{H_x^s}.
}
\tag{9c}
```

The derivative part of the Stokes ledger satisfies
`\|\nabla_x w\|_{H_x^{s-1}}\le\|w\|_{H_x^s}`, while the low-frequency part is
carried by the `L_x^2` component of the same slab ledger. Thus the moving
divergence defect is **not** a new operator class. It is a perturbative
transport-type term once `\mu` is controlled in `H_x^s\cap W_x^{1,\infty}`.

This is a real gain, but it does **not** by itself close the bridge: the system
still has a nonzero divergence constraint and the pressure defect
`\mu^\top\nabla_x\pi` remains. So `(9b)`-`(9c)` should be read as a diagnostic
showing the divergence defect is perturbative, not as a replacement for the
Bogovski\u012d/pressure package.

### Lemma B. Corrected forcing estimate

Show that the corrected source terms in `(7)` satisfy

```math
\|\nu\,\operatorname{div}_x(\eta\nabla_x\mathcal B g)\|_{L_t^2 H_x^{s-1}}
+
\|(\partial_t-\nu\Delta_x)\mathcal B g\|_{L_t^2 H_x^{s-1}}
\le C_s
\text{small slab coefficient norms}\cdot X_s[t_0,t_0+h],
\tag{10}
```

where `X_s` is the slab norm from
[time-slab-freezing-bridge-note.md](/Users/thomasbirnie/Documents/Research-Consolidation/problems/navier-stokes/theorem-construction/time-slab-freezing-bridge-note.md).

This is the term that decides whether the moving divergence defect can be
treated perturbatively.

#### Exact decomposition

Write

```math
z:=\mathcal B g,
\qquad
g=-\operatorname{div}_x(\mu w).
\tag{10a}
```

Then the diffusion-correction term splits exactly as

```math
\operatorname{div}_x(\eta\nabla_x z)
=
(\operatorname{div}_x\eta)\cdot\nabla_x z
+
\eta:\nabla_x^2 z
\,=:\,
\mathsf D_1+\mathsf D_2.
\tag{10b}
```

Since `\mathcal B` is time-independent on the frozen patch,

```math
(\partial_t-\nu\Delta_x)z
=
\mathcal B(\partial_t g)-\nu\Delta_x z.
\tag{10c}
```

Differentiating `g=-\operatorname{div}_x(\mu w)` gives

```math
\partial_t g
=
-\operatorname{div}_x\!\big((\partial_t\mu)w\big)
-\operatorname{div}_x\!\big(\mu\,\partial_t w\big),
\tag{10d}
```

so

```math
(\partial_t-\nu\Delta_x)z
=
-\mathcal B\operatorname{div}_x\!\big((\partial_t\mu)w\big)
-\mathcal B\operatorname{div}_x\!\big(\mu\,\partial_t w\big)
-\nu\Delta_x\mathcal B\operatorname{div}_x(\mu w)
\,=:\,
\mathsf T_1+\mathsf T_2+\mathsf P.
\tag{10e}
```

These three pieces have clean theorem roles:

- `\mathsf T_1`: coefficient-time transport class;
- `\mathsf T_2`: coefficient-times-time-derivative class;
- `\mathsf P`: parabolic Bogovski\u012d correction class.

Moreover, because `M=I+\mu` and
`M(x,t)=F_*^\sharp(x)\,A(Y_*(x),t)`, the native frame law
`\partial_tA=-A(\nabla_a v)A` implies the exact frozen-coordinate identity

```math
\partial_t\mu
=
\partial_t M
=
-M(\nabla_x w)M.
\tag{10f}
```

So `\mathsf T_1` is not an independent source; it is a coefficient-time term
driven by the same slab velocity ledger.

#### Same-depth estimate

Fix `s>\frac52` and assume on `[t_0,t_0+h]` that

```math
\mu,\eta\in L_t^\infty\big(H_x^{s+1}\cap W_x^{1,\infty}\big),
\qquad
\partial_t\mu\in L_t^2\big(H_x^{s-1}\cap W_x^{1,\infty}\big).
\tag{10g}
```

Define the coefficient ledger norms

```math
\mathfrak C_s[h]
:=
\|h\|_{L_t^\infty(H_x^{s+1}\cap W_x^{1,\infty})},
\qquad
\mathfrak T_s[\mu]
:=
\|\partial_t\mu\|_{L_t^2(H_x^{s-1}\cap W_x^{1,\infty})}.
\tag{10h}
```

Then the classical Bogovski\u012d bounds give

```math
\|z\|_{L_t^2H_x^{s+1}}
\le C_{\mathcal B}
\|g\|_{L_t^2H_x^s},
\qquad
\|\Delta_x z\|_{L_t^2H_x^{s-1}}
\le C_{\Delta\mathcal B}
\|g\|_{L_t^2H_x^s},
\tag{10i}
```

and by standard same-depth Moser/Kato--Ponce product calculus,

```math
\|g\|_{L_t^2H_x^s}
\le C_s
\mathfrak C_s[\mu]\,
\Big(
\|w\|_{L_t^2H_x^{s+1}}
+
\|w\|_{L_t^2W_x^{1,\infty}}
\Big).
\tag{10j}
```

Hence

```math
\|\nu\,\operatorname{div}_x(\eta\nabla_x z)\|_{L_t^2H_x^{s-1}}
\le C_s
\nu\,\mathfrak C_s[\eta]\,
\|z\|_{L_t^2H_x^{s+1}}
\le C_sC_{\mathcal B}
\nu\,\mathfrak C_s[\eta]\mathfrak C_s[\mu]\,
\Big(
\|w\|_{L_t^2H_x^{s+1}}
+
\|w\|_{L_t^2W_x^{1,\infty}}
\Big).
\tag{10k}
```

For the transport-parabolic correction,

```math
\|(\partial_t-\nu\Delta_x)z\|_{L_t^2H_x^{s-1}}
\le C_z
\|\mathsf T_1\|_{L_t^2H_x^{s-1}}
+
\|\mathsf T_2\|_{L_t^2H_x^{s-1}}
+
\|\mathsf P\|_{L_t^2H_x^{s-1}},
\tag{10\ell}
```

with

```math
\|\mathsf T_1\|_{L_t^2H_x^{s-1}}
\le C_s
\mathfrak T_s[\mu]\,
\|w\|_{L_t^\infty H_x^s},
\tag{10m}
```

```math
\|\mathsf T_2\|_{L_t^2H_x^{s-1}}
\le C_s
\mathfrak C_s[\mu]\,
\|\partial_t w\|_{L_t^2H_x^{s-1}},
\tag{10n}
```

and

```math
\|\mathsf P\|_{L_t^2H_x^{s-1}}
\le C_s
\nu\,\|g\|_{L_t^2H_x^s}
\le C_s'
\nu\,\mathfrak C_s[\mu]\,
\Big(
\|w\|_{L_t^2H_x^{s+1}}
+
\|w\|_{L_t^2W_x^{1,\infty}}
\Big).
\tag{10o}
```

Combining `(10k)`-`(10o)` yields the theorem-grade same-depth estimate

```math
\boxed{
\begin{aligned}
&\|\nu\,\operatorname{div}_x(\eta\nabla_x\mathcal B g)\|_{L_t^2H_x^{s-1}}
+
\|(\partial_t-\nu\Delta_x)\mathcal B g\|_{L_t^2H_x^{s-1}}
\\[3pt]
&\qquad\le C_{B,s}
\Big(
\nu\,\mathfrak C_s[\eta]\mathfrak C_s[\mu]
+
\nu\,\mathfrak C_s[\mu]
+
\mathfrak T_s[\mu]
\Big)\,
\widetilde X_s[t_0,t_0+h],
\end{aligned}
}
\tag{10p}
```

where

```math
\widetilde X_s[t_0,t_0+h]
:=
\|w\|_{L_t^\infty H_x^s}
+
\|w\|_{L_t^2H_x^{s+1}}
+
\|\partial_t w\|_{L_t^2H_x^{s-1}}
+
\|w\|_{L_t^2W_x^{1,\infty}}.
\tag{10q}
```

On the accepted short slabs from
[time-slab-freezing-bridge-note.md](/Users/thomasbirnie/Documents/Research-Consolidation/problems/navier-stokes/theorem-construction/time-slab-freezing-bridge-note.md),
the coefficient drift satisfies

```math
\mathfrak C_s[\mu]+\mathfrak C_s[\eta]+\mathfrak T_s[\mu]\to 0
\qquad\text{as }h\to0,
\tag{10r}
```

so Lemma B is perturbative once the standard Sobolev embedding controlling
`\|w\|_{L_t^2W_x^{1,\infty}}` is available on the chosen depth ledger.

### Lemma C. Pressure perturbation estimate

The right theorem statement is not a vague “commutator term” slogan. It is a
plain same-depth product estimate on the short slab.

```math
\|\mu^\top\nabla_x\pi\|_{L_t^2 H_x^{s-1}}
\le C_s
\|\mu\|_{L_t^\infty(H_x^s\cap W_x^{1,\infty})}
\|\nabla_x\pi\|_{L_t^2 H_x^{s-1}}
\tag{11}
```

Indeed, when `s>\frac52`, one has `H_x^{s-1}\hookrightarrow L_x^\infty` and
`H_x^{s-1}` is an algebra, so

```math
\|\mu^\top\nabla_x\pi\|_{H_x^{s-1}}
\le C_s
\|\mu\|_{L_x^\infty}\|\nabla_x\pi\|_{H_x^{s-1}}
+
\|\mu\|_{H_x^{s-1}}\|\nabla_x\pi\|_{L_x^\infty}
\le C_s'
\|\mu\|_{H_x^s\cap W_x^{1,\infty}}\|\nabla_x\pi\|_{H_x^{s-1}}.
\tag{11a}
```

So at the current high-regularity route, Dahlberg-type bilinear estimates are
not the leading tool for Lemma C. The actual requirement is that `\mu` be small
on the slab in the same-depth `H^s` ledger, not merely in `W^{1,\infty}`.

Using the exact frozen-coordinate evolution law

```math
\partial_t\mu
=
\partial_t M
=
-M(\nabla_x w)M,
\tag{11b}
```

and `\mu(t_0)=0`, the short-slab control takes the form

```math
\|\mu\|_{L_t^\infty H_x^s([t_0,t_0+h])}
\le C_s
h^{1/2}\,
P\!\big(\|M\|_{L_t^\infty(H_x^s\cap W_x^{1,\infty})}\big)
\|w\|_{L_t^2H_x^{s+1}([t_0,t_0+h])},
\tag{11c}
```

so the pressure defect is absorbable once the same-depth slab ledger is in
place.

## Short-Slab Absorbability Corollary

The three lemma surfaces can now be compressed into one theorem-grade corollary
that is much closer to the actual bridge closure.

Assume `s>\frac52` and fix a short slab `I=[t_0,t_0+h]`. Suppose

```math
\mathfrak C_s[\mu]+\mathfrak C_s[\eta]+\mathfrak T_s[\mu]\le \delta,
\tag{11d}
```

with `\mathfrak C_s,\mathfrak T_s` from `(10h)`, and define

```math
X_s^{\mathrm{corr}}[I]
:=
\|w\|_{L_t^\infty H_x^s(I)}
+
\|w\|_{L_t^2H_x^{s+1}(I)}
+
\|\partial_t w\|_{L_t^2H_x^{s-1}(I)}
+
\|\nabla_x\pi\|_{L_t^2H_x^{s-1}(I)}.
\tag{11e}
```

Then:

1. the raw moving divergence defect obeys
   ```math
   \|g\|_{L_t^2H_x^{s-1}(I)}
   \le C_s
   \delta\,
   \Big(
   \|w\|_{L_t^2H_x^s(I)}
   +
   \|w\|_{L_t^2W_x^{1,\infty}(I)}
   \Big);
   \tag{11f}
   ```
2. the Bogovski\u012d correction package satisfies
   ```math
   \|\nu\,\operatorname{div}_x(\eta\nabla_x\mathcal B g)\|_{L_t^2H_x^{s-1}(I)}
   +
   \|(\partial_t-\nu\Delta_x)\mathcal B g\|_{L_t^2H_x^{s-1}(I)}
   \le C_{B,s}
   \delta\,
   \widetilde X_s[I];
   \tag{11g}
   ```
3. the pressure defect satisfies
   ```math
   \|\mu^\top\nabla_x\pi\|_{L_t^2H_x^{s-1}(I)}
   \le C_s
   \delta\,
   \|\nabla_x\pi\|_{L_t^2H_x^{s-1}(I)}.
   \tag{11h}
   ```

Since `s>\frac52` implies `H_x^{s+1}\hookrightarrow W_x^{1,\infty}`, one has
`\widetilde X_s[I]\le C_sX_s^{\mathrm{corr}}[I]`, so altogether

```math
\boxed{
\|g\|_{L_t^2H_x^{s-1}(I)}
+
\|\nu\,\operatorname{div}_x(\eta\nabla_x\mathcal B g)\|_{L_t^2H_x^{s-1}(I)}
+
\|(\partial_t-\nu\Delta_x)\mathcal B g\|_{L_t^2H_x^{s-1}(I)}
+
\|\mu^\top\nabla_x\pi\|_{L_t^2H_x^{s-1}(I)}
\le C_{corr,s}
\delta\,X_s^{\mathrm{corr}}[I].
}
\tag{11i}
```

Therefore, once the short slab is chosen so that `C\delta<1`, every moving
constraint/pressure defect term is perturbative on the same depth ledger.

This does **not** yet mean the entire Layer 1 theorem has been globally proved:
one still has to insert `(11i)` into the classical Stokes estimate for the
corrected divergence-free unknown and iterate across slabs. But it does mean the
remaining defect package is no longer structurally mysterious; it is a standard
small perturbation once the coefficient drift is small on the slab.

## Combined Operator-Level Closure

The right final closure move is indeed to stop treating the defects as separate
subproblems and instead combine them into one perturbative forcing term.

However, this must be done on the **corrected divergence-free unknown**
`u=w-\mathcal B g`, not by naively taking `\Delta^{-1}\operatorname{div}` of the
raw `w` equation. The direct pressure elimination

```math
\Delta_x \pi
=
\operatorname{div}_x \widetilde f
+
\nu\,\operatorname{div}_x\operatorname{div}_x(\eta\nabla_x w)
-
\operatorname{div}_x\operatorname{div}_x(\mu w)
\tag{11ia}
```

is **not** correct, because the pressure defect and the nonzero divergence
constraint also contribute:

```math
\Delta_x\pi
=
\operatorname{div}_x \widetilde f
+
\nu\,\operatorname{div}_x\operatorname{div}_x(\eta\nabla_x w)
-
\operatorname{div}_x(\mu^\top\nabla_x\pi)
-
\partial_t g
+
\nu\,\Delta_x g.
\tag{11ib}
```

Equivalently,

```math
\operatorname{div}_x(M^\top\nabla_x\pi)
=
\operatorname{div}_x\widetilde f
-
\partial_t g
+
\nu\,\operatorname{div}_x\operatorname{div}_x(H\nabla_x w).
\tag{11ic}
```

So the exact closure move is not raw pressure elimination. It is:

1. repair the divergence by `u=w-\mathcal B g`;
2. collect every remaining coefficient defect into one forcing term;
3. apply the standard classical Stokes estimate to `u`.

After the correction, the system is

```math
\partial_t u-\nu\Delta_x u+\nabla_x\Pi
=
\widetilde f+\mathcal E_{\mu,\eta}[w,\pi],
\qquad
\operatorname{div}_x u=0,
\tag{11id}
```

with

```math
\mathcal E_{\mu,\eta}[w,\pi]
:=
\nu\,\operatorname{div}_x(\eta\nabla_x u)
+
\nu\,\operatorname{div}_x(\eta\nabla_x\mathcal B g)
-
\mu^\top\nabla_x\pi
-
(\partial_t-\nu\Delta_x)\mathcal B g.
\tag{11ie}
```

At this stage no projection has been applied, so one may simply take

```math
\Pi:=\pi.
\tag{11iea}
```

So the correction is entirely in the velocity variable; there is no independent
pressure-transfer term between the corrected and original formulations.

The point of Lemma A, Lemma B, Lemma C, and the absorbability corollary `(11i)`
is exactly that

```math
\|\mathcal E_{\mu,\eta}[w,\pi]\|_{L_t^2H_x^{s-1}(I)}
\le C_E
\delta\,X_s^{\mathrm{corr}}[I],
\tag{11if}
```

once the slab is short enough.

Now apply the classical same-depth Stokes estimate on `I` to `(11id)`:

```math
X_s^{\mathrm{corr}}[I;u,\Pi]
\le
C_*\Big(
\|u(t_0)\|_{H_x^s}
+
\|\widetilde f\|_{L_t^2H_x^{s-1}(I)}
+
\|\mathcal E_{\mu,\eta}[w,\pi]\|_{L_t^2H_x^{s-1}(I)}
\Big).
\tag{11ig}
```

Because `\mu(t_0)=0`, one has `g(t_0)=0` and therefore

```math
u(t_0)=w(t_0).
\tag{11ih}
```

Substituting `(11if)` into `(11ig)` gives

```math
X_s^{\mathrm{corr}}[I;u,\Pi]
\le
C_*\Big(
\|w(t_0)\|_{H_x^s}
+
\|\widetilde f\|_{L_t^2H_x^{s-1}(I)}
\Big)
+
C_*\delta\,X_s^{\mathrm{corr}}[I].
\tag{11ii}
```

Finally, Lemma A gives `\|\mathcal B g\|_{L_t^2H_x^{s+1}}\le C_{\mathcal B,s}\delta
X_s^{\mathrm{corr}}[I]`, so `u` and `w` are equivalent on the same slab ledger:

```math
X_s^{\mathrm{corr}}[I;w,\pi]
\le
X_s^{\mathrm{corr}}[I;u,\Pi]
+
C\,\delta\,X_s^{\mathrm{corr}}[I;w,\pi].
\tag{11ij}
```

Moreover, writing `z:=\mathcal B g`, Lemma B together with
`\|\Delta_x z\|_{L_t^2H_x^{s-1}}\le C_{\Delta\mathcal B}\|g\|_{L_t^2H_x^s}` yields

```math
\|\partial_t z\|_{L_t^2H_x^{s-1}(I)}
\le
\|(\partial_t-\nu\Delta_x)z\|_{L_t^2H_x^{s-1}(I)}
+
\nu\,\|\Delta_x z\|_{L_t^2H_x^{s-1}(I)}
\le C_{z,s}
\delta\,X_s^{\mathrm{corr}}[I].
\tag{11ija}
```

Since `z(t_0)=0`, the standard Lions--Magenes time-trace estimate gives

```math
\|z\|_{L_t^\infty H_x^s(I)}
\le C_{LM}
\|z\|_{L_t^2H_x^{s+1}(I)}
+
\|\partial_t z\|_{L_t^2H_x^{s-1}(I)}
\le C_{LM,s}
\delta\,X_s^{\mathrm{corr}}[I].
\tag{11ijb}
```

Therefore the full velocity-side transfer is

```math
\|u-w\|_{L_t^\infty H_x^s(I)}
+
\|u-w\|_{L_t^2H_x^{s+1}(I)}
+
\|\partial_t(u-w)\|_{L_t^2H_x^{s-1}(I)}
\le C_{tr,s}
\delta\,X_s^{\mathrm{corr}}[I].
\tag{11ijc}
```

Combined with `\Pi=\pi`, this is the honest norm-transfer statement on the
corrected slab ledger.

Choosing `h` so that `C_*\delta<\frac12` and `C\delta<\frac12`, one absorbs the
defect terms and obtains the short-slab same-depth estimate

```math
\boxed{
X_s^{\mathrm{corr}}[I;w,\pi]
\le C_{St,s}
\|w(t_0)\|_{H_x^s}
+
\|\widetilde f\|_{L_t^2H_x^{s-1}(I)}.
}
\tag{11ik}
```

This is the corrected operator-level closure statement. It does **not** say the
global theorem is finished, but it does show that once the short-slab coefficient
drift is small, the entire moving defect package closes as a single perturbation
of classical Stokes.

### Explicit short-slab absorption form

The last remaining bookkeeping improvement is to expose the small parameter in
`(11ii)`-`(11ik)` more explicitly.

Write

```math
\delta_h
:=
\mathfrak C_s[\mu;I]+\mathfrak C_s[\eta;I]+\mathfrak T_s[\mu;I].
\tag{11il}
```

Then the closure line is exactly

```math
\boxed{
X_s^{\mathrm{corr}}[I;w,\pi]
\le
C_0\Big(
\|w(t_0)\|_{H_x^s}
+
\|\widetilde f\|_{L_t^2H_x^{s-1}(I)}
\Big)
+
C_1\,\delta_h\,X_s^{\mathrm{corr}}[I;w,\pi].
}
\tag{11im}
```

This is the theorem-grade form of the final absorption step.

The common shorthand

```math
X_s^{\mathrm{corr}}[I]
\le
C\,\mathrm{data}_{t_0}
+
C\,h^{1/2}X_s^{\mathrm{corr}}[I]
\tag{11in}
```

is valid only after one proves a corresponding short-slab rate for
`\delta_h`. On the current theorem surface, that rate is established
componentwise:

- `\mu(t_0)=0` and the evolution law `\partial_t M=-M(\nabla_x w)M` give the
  `h^{1/2}`-type gain for the Sobolev part of `\mu`;
- the `L_t^2` coefficient-time norm `\mathfrak T_s[\mu;I]` tends to `0` as
  `h\to0`, and under a bounded local envelope it is bounded by `C h^{1/2}`;
- the same is true for the corresponding short-slab drift norm of `\eta`.

So the honest final statement is:

```math
\boxed{
\text{the closure line is }X_s^{\mathrm{corr}}\le C\,\mathrm{data}+C\,\delta_h\,X_s^{\mathrm{corr}},
\text{ with }\delta_h\to0\text{ as }h\to0,
}
\tag{11io}
```

and in the bounded-envelope regime this is exactly the `h^{1/2}` absorption
mechanism the slab iteration needs.

## Conditional Slab Iteration Proposition

The natural next theorem statement is now conditional rather than speculative.

Fix a partition of the time interval into short slabs

```math
I_j=[t_j,t_{j+1}],
\qquad
\delta_{h,j}:=\mathfrak C_s[\mu;I_j]+\mathfrak C_s[\eta;I_j]+\mathfrak T_s[\mu;I_j].
\tag{11ip}
```

Assume:

1. each slab is short enough that `C_1\delta_{h,j}\le \frac12` in `(11im)`;
2. the velocity-transfer constants from `(11ijc)` are uniform in `j`, i.e. the
   same bounded-envelope hypothesis controlling the slab coefficient ledger also
   controls the constants in
   ```math
   X_s^{\mathrm{corr}}[I_j;w,\pi]
   \le
   C_{\mathrm{tr}}\,
   X_s^{\mathrm{corr}}[I_j;u,\Pi];
   \tag{11iq}
   ```
3. the coefficient envelope used to define `\delta_{h,j}` is controlled
   uniformly by the same running `A/G/v` ledger.

Then the short-slab closure estimate `(11ik)` may be applied on each `I_j` with
initial data `w(t_j)`, yielding

```math
\boxed{
X_s^{\mathrm{corr}}[I_j;w,\pi]
\le
C_*\Big(
\|w(t_j)\|_{H_x^s}
+
\|\widetilde f\|_{L_t^2H_x^{s-1}(I_j)}
\Big),
}
\tag{11ir}
```

and in particular

```math
\|w(t_{j+1})\|_{H_x^s}
\le
C_*\Big(
\|w(t_j)\|_{H_x^s}
+
\|\widetilde f\|_{L_t^2H_x^{s-1}(I_j)}
\Big).
\tag{11is}
```

Iterating gives the concatenated estimate

```math
\|w(t_N)\|_{H_x^s}
\le
C_*^N\|w(t_0)\|_{H_x^s}
+
\sum_{j=0}^{N-1} C_*^{N-1-j}\,
\|\widetilde f\|_{L_t^2H_x^{s-1}(I_j)}.
\tag{11it}
```

So the slab iteration proposition is **conditionally** valid on the current
surface.

### U1 is now discharged

The recent correction `\Pi=\pi` and the transfer estimate `(11ijc)` remove the
old pressure-side ambiguity. Under the same bounded-envelope hypothesis that
controls the coefficient package on each slab, `U1` is now theorem-grade:

```math
\boxed{
C_U^{-1}X_s^{\mathrm{corr}}[I_j;w,\pi]
\le
X_s^{\mathrm{corr}}[I_j;u,\Pi]
\le
C_UX_s^{\mathrm{corr}}[I_j;w,\pi]
}
\tag{11iu}
```

with comparison constants independent of `j`.

So the exact remaining gap for full iteration is now only:

```math
\boxed{
\text{(U2) uniform recovery of }\delta_{h,j}\text{ from the running }A/G/v\text{ ledger after refreezing.}
}
\tag{11iv}
```

That is no longer a broad architectural gap. It is the exact final propagation
lemma needed to turn the short-slab closure into unconditional global-by-slabs
propagation.

### U2 target lemma

The right theorem-grade formulation of `U2` is:

```math
\boxed{
\textbf{U2. Uniform Refreezing Smallness.}
}
\tag{11iw}
```

For each slab `I_j=[t_j,t_{j+1}]`, define the running envelope

```math
\Lambda_j
:=
\sup_{t\in I_j}
\Big(
\|M(t)\|_{H_x^s\cap W_x^{1,\infty}}
+
\|A(t)\|_{H_a^s\cap W_a^{1,\infty}}
+
\|G(t)\|_{H_a^s\cap W_a^{1,\infty}}
+
\|w(t)\|_{H_x^s}
\Big)
+
\|w\|_{L_t^2H_x^{s+1}(I_j)}.
\tag{11ix}
```

Then, for `s>\frac52`,

```math
\boxed{
\mathfrak C_s[\mu;I_j]+\mathfrak C_s[\eta;I_j]
\le
C\big(\Lambda_j\big)\,h_j^{1/2},
\qquad
h_j:=t_{j+1}-t_j.
}
\tag{11iy}
```

For the coefficient-time term, the honest same-depth statement is

```math
\boxed{
\mathfrak T_s[\mu;I_j]
\le
C(\Lambda_j)\,\|w\|_{L_t^2H_x^{s+1}(I_j)}.
}
\tag{11iya}
```

So `U2` naturally splits into:

- a static-drift smallness statement, bounded by `C h_j^{1/2}`;
- a coefficient-time statement, which is controlled by the dissipation part of
  the same slab ledger and is not yet a bare `C h_j^{1/2}` bound from the
  current note alone.

#### Equivalent polynomial-envelope version of the static drift estimate

Sometimes it is cleaner to record the static part with a slightly smaller slab
envelope. Define

```math
K_j
:=
\sup_{t\in I_j}
\Big(
\|w(t)\|_{H_x^s}
+
\|M(t)\|_{H_x^s}
+
\|H(t)\|_{H_x^s}
\Big)
+
\|w\|_{L_t^2H_x^{s+1}(I_j)}.
\tag{11iyaa}
```

Then the same proof gives the explicit polynomial bound

```math
\boxed{
\mathfrak C_s[\mu;I_j]+\mathfrak C_s[\eta;I_j]
\le
h_j^{1/2}\,P_s(K_j),
}
\tag{11iyab}
```

for a polynomial `P_s` depending only on `s`. Indeed, from
`\partial_tM=-M(\nabla_xw)M` and `M(t_j)=I`,

```math
\mu(t)
=
M(t)-I
=
-\int_{t_j}^{t} M(\tau)(\nabla_xw)(\tau)M(\tau)\,d\tau,
\tag{11iyac}
```

so for `s>\frac52`, the algebra property of `H_x^s` and the embedding
`H_x^s\hookrightarrow W_x^{1,\infty}` imply

```math
\|\mu\|_{L_t^\infty H_x^s(I_j)}
+
\|\mu\|_{L_t^\infty W_x^{1,\infty}(I_j)}
\le C_s
h_j^{1/2}\,P_s(K_j).
\tag{11iyad}
```

Since `\eta=\mu+\mu^\top+\mu\mu^\top`, the same bound follows for `\eta`.

This is a real theorem-grade lemma, but it is only the **static** part of
`U2`. It does **not** control `\mathfrak T_s[\mu;I_j]`, so by itself it does
not close the full refreezing smallness parameter `\delta_{h,j}`.

#### Exact dynamic part of `U2`

The missing coefficient-time term is also same-depth once it is estimated in
its own natural norm rather than folded prematurely into the forcing package.
With `K_j` as in `(11iyaa)`, define

```math
D_j:=\|w\|_{L_t^2H_x^{s+1}(I_j)}.
\tag{11iyae}
```

Then for `s>\frac52`,

```math
\boxed{
\mathfrak T_s[\mu;I_j]
\le
P_s(K_j)\,D_j,
}
\tag{11iyaf}
```

for a polynomial `P_s` depending only on `s`.

Indeed,

```math
\partial_t\mu
=
\partial_tM
=
-M(\nabla_xw)M.
\tag{11iyag}
```

The same-depth algebra estimate gives

```math
\|\partial_t\mu\|_{H_x^{s-1}}
\le C_s
\|M\|_{H_x^s}^2\,\|\nabla_xw\|_{H_x^{s-1}}
\le C_s'
P_s(K_j)\,\|w\|_{H_x^{s+1}},
\tag{11iyah}
```

while `H_x^s\hookrightarrow W_x^{1,\infty}` and
`H_x^{s+1}\hookrightarrow W_x^{2,\infty}` imply

```math
\|\partial_t\mu\|_{W_x^{1,\infty}}
\le C_s
P_s(K_j)\,\|w\|_{H_x^{s+1}}.
\tag{11iyai}
```

Integrating in time gives `(11iyaf)`.

Consequently the full refreezing smallness parameter satisfies the exact
decomposition

```math
\boxed{
\delta_{h,j}
\le
h_j^{1/2}P_s(K_j)+P_s(K_j)\,D_j.
}
\tag{11iyaj}
```

So `U2` is fully resolved on any slab where both the time length `h_j` and the
dissipation budget `D_j` are small.

#### Proof skeleton

By refreezing at `t_j`, one has

```math
M(\cdot,t_j)=I,
\qquad
\mu(\cdot,t_j)=0,
\qquad
\eta(\cdot,t_j)=0.
\tag{11iz}
```

The exact frozen-coordinate evolution law is

```math
\partial_t M=-M(\nabla_x w)M,
\tag{11ja}
```

so standard same-depth product calculus yields

```math
\|\partial_t M\|_{H_x^s}
+
\|\partial_t M\|_{W_x^{1,\infty}}
\le
C(\Lambda_j)\,\|w\|_{H_x^{s+1}}
\tag{11jb}
```

on `I_j`. Therefore,

```math
\|M-I\|_{L_t^\infty(H_x^s\cap W_x^{1,\infty})(I_j)}
\le
h_j^{1/2}\,
\|\partial_t M\|_{L_t^2(H_x^s\cap W_x^{1,\infty})(I_j)}
\le
C(\Lambda_j)\,h_j^{1/2}.
\tag{11jc}
```

Since `\mu=M-I`, this gives the uniform bound

```math
\mathfrak C_s[\mu;I_j]\le C(\Lambda_j)\,h_j^{1/2}.
\tag{11jd}
```

Next, using `H=MM^\top=I+\eta`,

```math
\eta
=
\mu+\mu^\top+\mu\mu^\top,
\tag{11je}
```

so the algebra property of `H_x^s` and the `W_x^{1,\infty}` product rule imply

```math
\mathfrak C_s[\eta;I_j]
\le
C(\Lambda_j)\,h_j^{1/2}.
\tag{11jf}
```

Finally, the exact dynamic estimate `(11iyaf)` gives

```math
\mathfrak T_s[\mu;I_j]
\le
P_s(K_j)\,D_j.
\tag{11jg}
```

So the full refreezing smallness parameter is already controlled by the mixed
bound `(11iyaj)`, not by a separate unresolved term.

#### Uniform slab choice

Consequently, if one has a global envelope

```math
\sup_j \Lambda_j \le \Lambda_* < \infty,
\tag{11ji}
```

then the static drift part can be made uniformly small by choosing

```math
h_*
\le
\frac{1}{\big(2C_1 C(\Lambda_*)\big)^2}
\tag{11jj}
```

guarantees

```math
C_1\big(\mathfrak C_s[\mu;I_j]+\mathfrak C_s[\eta;I_j]\big)\le \frac12
\qquad\text{for every slab }I_j\text{ with }|I_j|\le h_*.
\tag{11jk}
```

The corrected content of `U2` is now explicit:

```math
\boxed{
\mathfrak C_s[\mu;I_j]+\mathfrak C_s[\eta;I_j]\le h_j^{1/2}P_s(K_j),
\qquad
\mathfrak T_s[\mu;I_j]\le P_s(K_j)\,D_j.
}
\tag{11jl}
```

So `U2` is not a pure fixed-length `h_j^{1/2}` statement. It is a mixed
smallness statement driven by:

```math
\boxed{
\delta_{h,j}\le h_j^{1/2}P_s(K_j)+P_s(K_j)\,D_j.
}
\tag{11jm}
```

The right mechanism is therefore to refreeze on an adaptive partition that
controls both the slab length and the slab dissipation.

Equivalently, if one insists on a fixed slab-length statement, the honest bound
coming from `(11iyaf)` is the modulus form

```math
\mathfrak T_s[\mu;I_j]
\le
P_s(K_*)\,\omega_{s+1}(h_j),
\qquad
\omega_{s+1}(h)
:=
\sup_{|I|\le h}\|w\|_{L_t^2H_x^{s+1}(I)},
\tag{11jma}
```

and `\omega_{s+1}(h)\to 0` as `h\to 0` whenever
`w\in L_t^2H_x^{s+1}` on the interval. So the genuine short-slab smallness law
is

```math
\delta_{h,j}
\le C_s
P_s(K_*)\,h_j^{1/2}
+
P_s(K_*)\,\omega_{s+1}(h_j),
\tag{11jmb}
```

not a bare `h_j^{1/2}` estimate for every component.

### Adaptive discharge of `U2`

Fix a bounded time interval `[0,T]` and suppose the running envelope obeys

```math
\sup_j K_j \le K_* < \infty,
\qquad
D_T:=\|w\|_{L_t^2H_x^{s+1}([0,T])}<\infty.
\tag{11jn}
```

Let `\varepsilon_* > 0` be the target absorption size for `(11im)`. Choose
`h_*=h_*(K_*,\varepsilon_*)` so that

```math
C_1 P_s(K_*)\,h_*^{1/2}\le \frac{\varepsilon_*}{2},
\tag{11jo}
```

which controls the static drift terms `(11iy)`. Next choose a partition

```math
0=t_0<t_1<\cdots<t_N=T,
\qquad
I_j=[t_j,t_{j+1}],
\tag{11jp}
```

such that every slab satisfies both

```math
|I_j|\le h_*,
\qquad
\|w\|_{L_t^2H_x^{s+1}(I_j)}
\le
\frac{\varepsilon_*}{2C_1 P_s(K_*)}.
\tag{11jq}
```

This partition exists because `w\in L_t^2H_x^{s+1}([0,T])`, so the map
`t\mapsto \int_0^t \|w(\tau)\|_{H_x^{s+1}}^2\,d\tau` is absolutely continuous;
one simply refines the interval until both the time length and the local
dissipation budget are below the thresholds in `(11jo)`-`(11jq)`.

To make the slab count quantitative, choose the partition greedily: with
`t_0=0`, define `t_{j+1}` recursively as the largest time in `[t_j,T]` such
that both constraints in `(11jq)` still hold on `[t_j,t_{j+1}]`. Then every
nonterminal slab saturates at least one threshold:

```math
|I_j|=h_*
\qquad\text{or}\qquad
D_j=\frac{\varepsilon_*}{2C_1P_s(K_*)}.
\tag{11jqb}
```

Consequently,

```math
\boxed{
N
\le
1+\Big\lceil \frac{T}{h_*}\Big\rceil
+
\Big\lceil \frac{D_T^2}{d_*^2}\Big\rceil,
\qquad
d_*:=\frac{\varepsilon_*}{2C_1P_s(K_*)}.
}
\tag{11jqc}
```

So the adaptive partition is not merely finite in principle; it carries an
explicit counting bound in terms of total time and total dissipation.

Equivalently, the adaptive criterion may be stated directly in the mixed form

```math
C_1P_s(K_*)\big(h_j^{1/2}+D_j\big)\le \varepsilon_*,
\qquad
D_j:=\|w\|_{L_t^2H_x^{s+1}(I_j)}.
\tag{11jqa}
```

This is the sharp theorem-grade condition attached to the exact decomposition
`(11iyaj)`.

On each such slab, `(11iyab)` and `(11iyaf)` give

```math
\delta_{h,j}
\le
\mathfrak C_s[\mu;I_j]+\mathfrak C_s[\eta;I_j]+\mathfrak T_s[\mu;I_j]
\le
P_s(K_*)\,h_j^{1/2}
+
P_s(K_*)\,\|w\|_{L_t^2H_x^{s+1}(I_j)}
\le
\frac{\varepsilon_*}{C_1}.
\tag{11jr}
```

Therefore

```math
\boxed{
C_1\,\delta_{h,j}\le \varepsilon_*
\quad\text{on every slab of the adaptive partition.}
}
\tag{11js}
```

In particular, taking `\varepsilon_* \le \frac12` turns the conditional
short-slab closure `(11im)` into a genuine finite concatenation theorem on
`[0,T]`.

So the corrected content of `U2` is stronger than `(11jm)` suggests:

```math
\boxed{
\text{`U2' is fully discharged on bounded-envelope finite-dissipation intervals by adaptive refreezing.}
}
\tag{11jt}
```

This is still an **outer-bootstrap** statement: the partition uses the
already-available dissipation budget `D_T`, so it does not by itself generate
that budget from the local inequality `(11im)`. What it does prove is that once
the running envelope and interval dissipation are available, the refreezing
smallness mechanism is no longer a separate obstruction.

The remaining burden is no longer the coefficient-time term or the existence of
small slabs. It is the outer bootstrap that keeps `K_*` bounded while the slab
estimates are iterated.

## Bogovski\u012d Versus Moving Projector

The coefficient-adapted moving projector

```math
\mathbb P_M z
:=
z-M^\top\nabla_xL_M^{-1}\operatorname{div}_x(Mz),
\qquad
L_M\phi:=\operatorname{div}_x(H\nabla_x\phi),
\tag{11j}
```

does remove explicit pressure from the frozen-slab equation, but it introduces a
new nonlocal time defect:

```math
(\partial_t\mathbb P_M)w
=
-M^\top\nabla_xL_M^{-1}\operatorname{div}_x((\partial_t M)w).
\tag{11k}
```

This is not smaller than the Bogovski\u012d correction package. It is driven by
`\partial_t M`, not by the small drift `M-I=\mu`, and it is nonlocal at the top
order. So on the current same-depth ledger the better route is:

```math
\boxed{
\text{keep the classical Stokes operator on the standard divergence-free space,}
}
```

```math
\boxed{
\text{use the Bogovski\u012d correction to repair the moving constraint defect,}
}
```

```math
\boxed{
\text{and treat the pressure term separately by the same-depth estimate `(11)`.}
}
```

## Bilinear interpretation

The real remaining wall is therefore no longer the whole non-autonomous system.
It is the bilinear pair

```math
g=-\operatorname{div}_x(\mu w),
\qquad
\mu^\top\nabla_x\pi.
\tag{12}
```

So the most promising external ideas should be repurposed as follows:

- generalized projections: a useful diagnostic, but not better than the
  Bogovski\u012d route on the current ledger;
- Dahlberg-type bilinear estimates: optional only if one tries to lower the
  regularity threshold for the pressure term;
- Bellman/bilinear embedding ideas: fallback technology only if the plain
  same-depth product route fails.

## Practical verdict

The actual theory has moved forward if and only if one accepts this reduction:

```math
\boxed{
\text{after exact slab freezing, the frozen diffusion operator is no longer the wall;}
}
```

```math
\boxed{
\text{the live bridge is the same-depth treatment of the moving constraint defect plus the pressure term.}
}
```

More sharply:

1. Lemma A is now ordinary same-depth Sobolev bookkeeping.
2. Lemma B is the transport-parabolic correction estimate, already reduced to
   `(10p)`.
3. Lemma C is ordinary same-depth product calculus once `\mu` is short-slab
   small in `H^s`.
4. The moving-projector route is not better than the Bogovski\u012d route on the
   current theorem surface.

That is a genuine proof advance, not a restatement of the old bridge.
