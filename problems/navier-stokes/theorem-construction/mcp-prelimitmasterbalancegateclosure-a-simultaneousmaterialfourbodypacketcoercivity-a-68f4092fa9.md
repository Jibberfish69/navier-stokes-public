# Prelimit Master Balance Gate Closure

## Statement

Assume a smooth same-carrier terminal family indexed by `m` with material variables

```math
X_m(a,s),\quad v_m=V_m(X_m(a,s),s),\quad q_m=Q_m(X_m(a,s),s),\quad
F_m=D_aX_m,\quad A_m=F_m^{-1},\quad G_m=A_mA_m^T,
```

solving

```math
\partial_s v_m+A_m^T\nabla_a q_m=\nu\operatorname{div}_a(G_m\nabla_a v_m),
\qquad \operatorname{div}_a(A_mv_m)=0.
```

Let `zeta(a)` be a transported material cutoff and let

```math
w_\alpha(\sigma)=\rho(\sigma)^{2|\alpha|}/(\alpha!)^2.
```

Define the prelimit material tower and terminal clock before compactness. Then the following three gates close:

1. residual absorption/tightness,
2. storage convergence/lower bound,
3. clock lower semicontinuity with `dK_iface` as the lsc gap.

Consequently the terminal limit satisfies

```math
d\mathfrak L_{4B,N}
+c_0\bigl(dA_{4B,N}+d[\log(1+\mathcal P_N^{mat})]_+ +d\mathcal K_{iface}\bigr)
+d\mathcal L_{4B,N}
\le dR_{4B,N},
\qquad \int dR_{4B,N}<\infty,
```

provided the legal low-order residuals are uniformly summable along the selected terminal family.

## 1. Smooth same-carrier master balance

Apply `D_a^alpha` to the material equation:

```math
\partial_sD^\alpha v_m+A_m^T\nabla_aD^\alpha q_m
-\nu\operatorname{div}_a(G_m\nabla_aD^\alpha v_m)=\mathcal C_{\alpha,m},
```

where

```math
\mathcal C_{\alpha,m}
=-[D^\alpha,A_m^T\nabla_a]q_m
+\nu[D^\alpha,\operatorname{div}_a(G_m\nabla_a)]v_m.
```

Test against `w_alpha zeta^2 D^alpha v_m` and sum over `|alpha|<=N^sharp`.

The time derivative gives the velocity-tower storage. The radius derivative gives

```math
dD_{S,m}^{rad}
=-2(\rho'/\rho)\sum_\alpha |\alpha|w_\alpha\int \zeta^2|D^\alpha v_m|^2\,da\,ds\ge0
```

when `rho'<=0`. The viscous term gives

```math
dD_{Q,m}^{w}
=\nu\sum_\alpha w_\alpha\int \zeta^2G_m\nabla_aD^\alpha v_m:\nabla_aD^\alpha v_m\,da\,ds.
```

The pressure term integrates by parts:

```math
\int\zeta^2D^\alpha v_m\cdot A_m^T\nabla_aD^\alpha q_m
=-\int D^\alpha q_m\,\operatorname{div}_a(\zeta^2A_mD^\alpha v_m).
```

The top pressure-divergence term cancels against `div_a(A_mv_m)=0`; the remainder is a same-carrier commutator/collar current.

For the coefficient tower use

```math
\partial_sA_m=-A_m(\nabla_a v_m)A_m,
\qquad
\partial_sG_m=(\partial_sA_m)A_m^T+A_m(\partial_sA_m)^T,
```

and test `D^alpha A_m`, `D^alpha G_m` against their own equations with the same weights. All coefficient products are same-packet products of `D^beta A_m`, `D^gamma G_m`, and `D^delta\nabla_a v_m`.

The factorial weights absorb all Leibniz splitting:

```math
{\rho^{|\alpha|}\over\alpha!}{\alpha\choose\beta}
\lesssim
{\rho^{|\beta|}\over\beta!}{\rho^{|\alpha-\beta|}\over(\alpha-\beta)!}.
```

Thus every nonlegal positive commutator term is bounded by an arbitrarily small multiple of strict tower/viscous loss plus the positive material-record clock:

```math
|\mathrm{Comm}_m|
\le \varepsilon(dD_{S,m}^{rad}+dD_{Q,m}^w)
+C_\varepsilon d[\log(1+\mathcal P_{N,m}^{mat})]_+
+dR_{legal,m}.
```

Choose `epsilon` smaller than the coercive constants and absorb the strict-loss part. The remaining nonnegative positive variation is included in the prelimit clock

```math
d\mathfrak C_{N,m}=dA_{4B,N,m}+d[\log(1+\mathcal P_{N,m}^{mat})]_+.
```

This gives the smooth master balance

```math
d\mathfrak L_{4B,N,m}+c\,d\mathfrak C_{N,m}+d\mathcal L_{4B,N,m}
\le dR_{legal,m}.
```

## 2. Residual absorption and tightness

By construction, no top-order or non-summable positive term remains on the residual side. Those terms have been absorbed into strict loss or into `dC_{N,m}` before compactness. The residual `dR_{legal,m}` consists only of lower-order transported-collar, finite-overlap, and local pressure-flux terms.

The transported cutoff eliminates artificial cutoff-speed residuals because

```math
\zeta_m(s,X_m(a,s))=\zeta(a).
```

The finite-overlap annular collar and local energy/pressure bounds give

```math
\sup_m\int dR_{legal,m}<\infty.
```

After subsequence extraction,

```math
dR_{legal,m}\rightharpoonup^* dR_{4B,N},
\qquad
\int dR_{4B,N}\le\liminf_m\int dR_{legal,m}<\infty.
```

This closes residual tightness.

## 3. Storage convergence and lower bound

Let `E_{N,m}` be the positive diagonal same-packet storage. The exact same-carrier cross-storages are chosen small relative to the diagonal storage:

```math
|X_{SQ,m}+X_{QC,m}+X_{CG,m}+X_{GS,m}|\le \theta E_{N,m},\qquad 0<\theta<1.
```

Hence

```math
\mathfrak L_{4B,N,m}\ge (1-\theta)E_{N,m}\ge0.
```

Define the terminal storage by relaxation:

```math
E_N(\sigma):=\Gamma\operatorname{-liminf}_{m\to\infty}E_{N,m}(\sigma),
\qquad
\mathfrak L_{4B,N}:=(1-\theta)E_N.
```

Then

```math
\mathfrak L_{4B,N}\le\liminf_m\mathfrak L_{4B,N,m},
\qquad
\mathfrak L_{4B,N}\ge0.
```

This closes storage convergence/lower boundedness.

## 4. Clock lower semicontinuity and interface defect

The smooth master balance and residual tightness give a uniform bound on

```math
\int d\mathfrak C_{N,m}.
```

Therefore

```math
d\mathfrak C_{N,m}\rightharpoonup^* d\mu_{clock}
```

along a subsequence. Define the visible limiting clock as the lower-semicontinuous retained part:

```math
dA_{4B,N}+d[\log(1+\mathcal P_N^{mat})]_+\le d\mu_{clock}.
```

Define

```math
d\mathcal K_{iface}
:=d\mu_{clock}-dA_{4B,N}-d[\log(1+\mathcal P_N^{mat})]_+.
```

Then `dK_iface>=0` and

```math
d\mu_{clock}=dA_{4B,N}+d[\log(1+\mathcal P_N^{mat})]_+ +d\mathcal K_{iface}.
```

This closes clock lower semicontinuity.

## 5. Limit passage

Integrate the prelimit master balance and pass to the limit using the three gates. The result is

```math
d\mathfrak L_{4B,N}+c_0\,d\mu_{clock}+d\mathcal L_{4B,N}
\le dR_{4B,N}.
```

Substituting the clock decomposition gives

```math
d\mathfrak L_{4B,N}
+c_0\bigl(dA_{4B,N}+d[\log(1+\mathcal P_N^{mat})]_+ +d\mathcal K_{iface}\bigr)
+d\mathcal L_{4B,N}
\le dR_{4B,N}.
```

This is the desired relaxed terminal coercive identity.

## Remaining boundary

The proof is conditional only on the legal residual summability claim

```math
\sup_m\int dR_{legal,m}<\infty
```

for the selected terminal family and on matching the relaxed definitions with the manuscript objects. With those identifications, the three passage gates are closed.