# MPP Q-Bound To AWG And Q-Drain Wall Note

## Status

Theorem-facing bridge and source audit.

This note tests the older monotone-functional route as a replacement supplier
for the current `AWG.A / NOHOP.A` wall.

It proves the useful conditional bridge:

```math
QBound.A\Longrightarrow AWG.A\Longrightarrow (Jump_{avg}\Rightarrow\bot),
```

but it does not prove `QBound.A` from `OriginalSmoothData`. The source audit
shows that `QBound.A` is exactly an enstrophy-drain theorem, not an already
installed consequence of the classical energy identity.

## Definitions

Let

```math
Q(t):=\|u(t)\|_{L^2(\mathbb T^3)}^2+\|\nabla u(t)\|_{L^2(\mathbb T^3)}^2.
```

The tested supplier is:

```math
QBound.A:
\qquad
\sup_{t<T_\ast}Q(t)<\infty.
```

The active-window target is the source-normalization primitive

```math
AWG.A:
\qquad
OriginalSmoothData
\Longrightarrow
\text{active-window gain / heat-scale square-source control}.
```

## `QBound.A` Implies Small Terminal SCF Packets

Assume `QBound.A`. Then

```math
u\in L^\infty(0,T_\ast;H^1(\mathbb T^3)).
```

Assume the same-fluid packet has bounded geometry

```math
\Gamma_\sharp(Q_R^\Phi)\le M_\sharp.
```

Then the pullback `x=Phi(a_0,t)+RA(t)y`, `s=(t-t_0)/R^2`, has Jacobian, inverse Jacobian, and metric tensor bounded above and below by constants depending only on `M_sharp`. Thus each normalized `D_R,A_R,P_R` term below changes by at most a fixed factor `C(M_sharp)` under the moving-cylinder pullback.

### Dissipation term

For the scale-normalized dissipation piece,

```math
D_R
=
R^{-1}\iint_{Q_R^\Phi}|\nabla u|^2,
```

the `H^1` bound gives

```math
D_R
\le
C R^{-1}\cdot R^2\sup_{t<T_\ast}\|\nabla u(t)\|_2^2
\le
C_Q R.
```

Thus `D_R\to0` uniformly as `R\downarrow0`.

### Velocity oscillation term

By Sobolev-Poincare on the transported cylinder,

```math
\int_{B_R^\Phi(t)}|u-u_{B_R}(t)|^3
\le
C R^{3/2}\|\nabla u(t)\|_{L^2(B_{cR})}^3.
```

Using the uniform `H^1` bound and integrating over a heat-scale interval,

```math
R^{-2}\iint_{Q_R^\Phi}|u-u_{B_R}|^3
\le
C_Q R^{3/2}.
```

For the affine-normalized velocity residual,

```math
A_R^{aff}
:=
R^{-2}\iint_{Q_R^\Phi}
\inf_{\ell\in\mathcal A_R}|u-\ell|^3,
```

where `\mathcal A_R` is the declared finite-dimensional affine frame class containing the constant field `u_{B_R}(t)`. Therefore

```math
A_R^{aff}
\le
C(M_\sharp)R^{-2}\iint_{Q_R^\Phi}|u-u_{B_R}|^3
\le C(M_\sharp)C_QR^{3/2}.
```

### Pressure term

On the torus,

```math
-\Delta p=\partial_i\partial_j(u_i u_j),
```

and Calderon-Zygmund gives

```math
\|p-p_{\mathbb T^3}\|_{L^3}
\le
C\|u\otimes u\|_{L^3}
\le
C\|u\|_{L^6}^2
\le
C\|\nabla u\|_2^2.
```

Hence `p` is uniformly bounded in `L^\infty_tL^3_x`. Uniform integrability of
`|p|^{3/2}` on the compact torus gives

```math
\sup_{t<T_\ast}\int_{B_R^\Phi(t)}|p-p_{B_R}(t)|^{3/2}\to0
```

as `R\downarrow0`. Therefore the pressure SCF contribution also tends to zero
uniformly after heat-scale integration and the native normalization.

Thus for every `\varepsilon_m` there is `R_m>0` such that

```math
R<R_m
\Longrightarrow
SCF_{base}(Q_R^\Phi)<\varepsilon_m
```

on every retained same-fluid terminal packet.

This supplies a uniform positive SCF-good radius and therefore excludes
`Jump_avg`. In the terminology of the active-window reduction,

```math
\boxed{
QBound.A\Longrightarrow AWG.A.
}
```

## Audit Of `QBound.A`

For zero-force periodic Navier-Stokes, differentiating enstrophy gives

```math
\frac12\frac{d}{dt}\|\nabla u\|_2^2
+\nu\|\Delta u\|_2^2
=
-\int_{\mathbb T^3}
\partial_k u_i\,\partial_i u_j\,\partial_k u_j\,dx.
\tag{Q.1}
```

The right side is the vortex-stretching / strain-cubic production term. Hölder,
Gagliardo--Nirenberg, and Young give the exact estimate

```math
\left|\int \partial_k u_i\,\partial_i u_j\,\partial_k u_j\right|
\le
C\|\nabla u\|_2^{3/2}\|\Delta u\|_2^{3/2}
\le
\frac{\nu}{2}\|\Delta u\|_2^2
+C_\nu\|\nabla u\|_2^6.
\tag{Q.2}
```

This yields an ODE of the form

```math
Y'(t)\le C_\nu Y(t)^3,
\qquad
Y(t)=\|\nabla u(t)\|_2^2,
```

which does not give a terminal bound.

The cleaner legacy line

```math
Q(t)\le Q(0)e^{-\nu t}+\int_0^t\|f(s)\|_2^2\,ds
```

would require the cubic production in `(Q.1)` to be absent, sign-definite, or
dominated by a coercive drain. That is precisely the unproved theorem.

## Exact Replacement Target

The monotone route closes the current `Jump_avg` wall if and only if it proves:

```math
QDrain.A:
\quad
-\int
\partial_k u_i\,\partial_i u_j\,\partial_k u_j
\le
(1-\delta)\nu\|\Delta u\|_2^2
+L(t)Q(t),
\qquad
L\in L^1(0,T_\ast),
```

or any equivalent one-sided enstrophy drain law implying `QBound.A`.

Therefore:

```math
\boxed{
QDrain.A\Longrightarrow QBound.A\Longrightarrow AWG.A
\Longrightarrow (Jump_{avg}\Rightarrow\bot).
}
```

## Verdict

The monotone-functional route gives a genuine alternate closure path, but it is
not currently solved from `OriginalSmoothData`.

The live primitive can now be named in either language:

```math
AWG.A / NOHOP.A
```

or

```math
QDrain.A
```

where `QDrain.A` is a one-sided enstrophy-drain theorem strong enough to make
`Q(t)` bounded through the terminal time.

## MPP Closure Update

The `QDrain.A` continuation was executed in
`mpp-qdrain-source-no-pulse-closure-note.md`. The result is that the
monotone-functional route is not an independent escape from `AWG.A`; it is the
enstrophy-level presentation of the same source-control atom recorded in
`mpp-awg-deep-source-frontier-closure-note.md`:

```math
SOURCE.NO-PULSE.A.
```

Thus the conditional route remains valid:

```math
QDrain.A\Longrightarrow QBound.A\Longrightarrow AWG.A
\Longrightarrow (Jump_{avg}\Rightarrow\bot),
```

but `OriginalSmoothData=>QDrain.A` is not installed by the current energy
identity, interpolation estimate, or dyadic exchange algebra.
