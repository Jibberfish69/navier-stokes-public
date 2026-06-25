# NullModeCorrectedAnnularPositiveVariationAttempt.A

Status: null-mode correction installed as the correct proof object; finite positive variation is not proved from the present inputs.  The attempt reduces the old obstruction but does not discharge the required signed positive-defect/no-recirculation theorem.

## Target

On a transported annulus \(A_\phi\), remove passive motion before charging collar work.  Let

```math
u_\phi^\#=u-\Pi_\phi u,
```

where \(\Pi_\phi u\) is the local rigid/Galilean/tangential null motion for the annulus.  The intended coercive estimate is

```math
dX_{\phi,N}^{\#}+c\,d\Omega_{\phi,N}^{active}
\le
\varepsilon dD_{\phi,N}^{vis}+dR_{\phi,N}^{legal}.
\tag{NMC.1}
```

The active clock is payer-matched:

```math
d\Omega_{\phi}^{active}
\sim
\int
\Big(
|(\nabla\cdot T)\cdot T\nabla\phi|
+|u_\phi^\#\cdot D_tT\nabla\phi|
+|u_\phi^\#\cdot T(\nabla u)^T\nabla\phi|
\Big)\,dt
```

plus pressure/Hodge, metric/collar, and viscous/tower service at depth \(N\).  Passive shear is charged to the bulk viscous strain channel, not to collar flux.

## Null-mode removal

The local Korn/Poincare estimate gives, on a slightly enlarged same-material annulus \(A_\phi^*\),

```math
\|u_\phi^\#\|_{L^2(A_\phi)}
\lesssim
r_\phi\|S(u)\|_{L^2(A_\phi^*)}.
\tag{NMC.2}
```

Since \(|\nabla\phi|\sim r_\phi^{-1}\), every collar term with a single active velocity factor gains the schematic replacement

```math
|u|\,|\nabla\phi|
\quad\leadsto\quad
|u_\phi^\#|\,|\nabla\phi|
\lesssim
\text{same-annulus strain in }L^2.
\tag{NMC.3}
```

This is a real improvement.  It removes Galilean drift, rigid rotation, and tangential/null motion from the collar bill.  Those modes either do no annular work or are paid by the appropriate bulk/collar channel.

## Payer-matched decomposition

The corrected stress-work primitive remains

```math
f_\phi=-u\cdot T\nabla\phi,
\qquad T=-pI+2\nu S,
\qquad D_t\phi=0,
```

and its material derivative is

```math
\begin{aligned}
D_tf_\phi={}&
-(\nabla\cdot T)\cdot T\nabla\phi
+(u\cdot\nabla\phi)D_tp\\
&-2\nu u\cdot\operatorname{sym}\nabla(\nabla\cdot T)\nabla\phi
+2\nu u\cdot\operatorname{sym}((\nabla u)^2)\nabla\phi\\
&+u\cdot T(\nabla u)^T\nabla\phi.
\end{aligned}
\tag{NMC.4}
```

After null projection, the active collar pieces should be read with \(u_\phi^\#\) wherever the velocity factor is only a carrier of collar work.  The payer-matched interpretation is:

1. \(u_\phi^\#\cdot T(\nabla u)^T\nabla\phi\) and the cubic strain part are active collar/stress-work service;
2. passive shear/null modes are charged to \(2\nu\int\phi|S|^2\);
3. \((u_\phi^\#\cdot\nabla\phi)D_tp\) is pressure/Hodge service;
4. \(D_t\nabla\phi\), metric motion, and collar transport are charged to material-coordinate service;
5. stress-gradient terms are viscous/tower service.

This is the correct participation law.  The old raw scalar density \(|u||\nabla u|^2|\nabla\phi|\) overcharged null motion and underused native payers.

## Estimate after null projection

The active velocity gain yields schematically

```math
\int_{A_\phi}|u_\phi^\#|\,|D_tT|\,|\nabla\phi|
\lesssim
\|S(u)\|_{L^2(A_\phi^*)}\,\|D_tT\|_{L^2(A_\phi)}.
\tag{NMC.5}
```

and therefore, by Young,

```math
\int_{A_\phi}|u_\phi^\#|\,|D_tT|\,|\nabla\phi|
\le
\varepsilon\|D_tT\|_{L^2(A_\phi)}^2
+C_\varepsilon\|S(u)\|_{L^2(A_\phi^*)}^2.
\tag{NMC.6}
```

This is good: it assigns the active carrier to strain and stress-time/tower service.  Similar estimates handle the stress-gradient carrier terms after placing the top derivative into \(dD_{\phi,N}^{vis}\) or \(dD_{\phi,N}^{rad}\).

However, the cubic/stress transport piece still has the form

```math
\int_{A_\phi}|u_\phi^\#|\,|T|\,|\nabla u|\,|\nabla\phi|.
\tag{NMC.7}
```

Korn gives only the active velocity factor.  It does not by itself provide a sign or a square structure for the product \( |T|\,|\nabla u| \).  Estimating `(NMC.7)` absolutely gives, schematically,

```math
\|S(u)\|_2\,\|T\,\nabla u\|_2,
```

which requires either higher stress/gradient service or a signed cancellation inside `(NMC.4)`.  If this service is put into \(R^{legal}\), then the full clock has been smuggled into the residual.  If it is put on the left, the desired theorem is exactly the missing signed positive-defect estimate.

## Sign test

The local signed storage

```math
X_{\phi}^{\#}\sim \int -u_\phi^\#\cdot T\nabla\phi\,dx+	ext{pressure/collar/material corrections}
```

has derivative equal to the corrected signed block plus projection-variation terms.  Those projection terms are legitimate material/collar corrections, but they remain signed.  The null projection removes false payers; it does not force the corrected flux derivative to be one-signed.

The same net-versus-total obstruction remains in corrected form: a bounded signed flux can oscillate in the active channel unless one proves no-recirculation/signed positive defect.  Null projection prevents counting passive motion as activity, but it does not by itself rule out active back-and-forth stress-work with small net storage change and large positive variation.

## Exact reduced theorem

The null-mode-corrected theorem that would close the local block is:

```math
\boxed{
\operatorname{Var}^+_{I}\,X_{\phi,N}^{\#}
\le
C\int_I\left(dD_{\phi,N}^{vis}+dD_{\phi,N}^{rad}+dR_{\phi,N}^{legal}\right)
}
\tag{NMC.8}
```

or equivalently

```math
\boxed{
dX_{\phi,N}^{\#}+c\,d\Omega_{\phi,N}^{active}
\le
\varepsilon dD_{\phi,N}^{vis}+dR_{\phi,N}^{legal}.
}
\tag{NMC.9}
```

The present calculation proves the null-corrected reduction:

```math
\text{raw collar clock}
\leadsto
\text{active collar clock + native passive/pressure/metric payers}.
```

It does not prove `(NMC.8)` or `(NMC.9)`.

## Verdict

The payer-matched/null-mode corrected participation budget is the correct final proof object.  It removes a genuine overcounting error in the raw annular clock.  But finite positive variation of the corrected same-material annular stress-work block is still not proved by Korn/Poincare plus the signed stress-work identity alone.

The remaining theorem is narrower and sharper:

```math
\boxed{
\text{active same-material annular stress-work has no infinite recirculation after null modes are removed.}
}
```

This is a signed positive-defect/coercivity theorem.  It must be proved without hiding the active stress-time/cubic/pressure service inside \(R^{legal}\).