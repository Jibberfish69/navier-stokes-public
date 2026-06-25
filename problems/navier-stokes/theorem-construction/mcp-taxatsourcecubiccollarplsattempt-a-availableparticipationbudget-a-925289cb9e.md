# TaxAtSourceCubicCollarPLSAttempt.A

Status: active tax-at-source formulation installed; full coercive sign not discharged by the present calculation.

## Correction of the bad move

The bad move is to split off

```math
S_5(t)=\int |U|\,|\nabla U|^2|\nabla\phi|\,dx
```

and estimate it as a detached positive scalar term, e.g.

```math
S_5(t)\lesssim E_0^{1/4}D(t)^{5/4}.
```

That loses the participation law.  It lets a packet generate nonlinear transfer first and asks scalar energy to pay afterward.

The participation-law route must keep the signed annular stress-work object intact and charge the transfer at the moment it is created.

## Same-material primitive

Use the gauge-reduced transported annular packet

```math
D_tU=\nabla\cdot T^\sharp,
\qquad
T^\sharp=-PI+2\nu S(U),
\qquad
D_t\phi=0,
\qquad
\nabla\cdot U=0.
```

Define

```math
M_\phi(t)=\int {1\over2}|U|^2\phi\,dx,
\qquad
F_\phi^\sharp(t)=\int U_iT^\sharp_{ij}\partial_j\phi\,dx.
```

Then

```math
{d\over dt}M_\phi+2\nu\int\phi|S(U)|^2dx=-F_\phi^\sharp .
\tag{TAS.1}
```

The correct primitive for the cubic collar term is not \(S_5\).  It is the signed derivative of \(F_\phi^\sharp\):

```math
{d\over dt}F_\phi^\sharp
=
I_1+I_2+I_3,
\tag{TAS.2}
```

where

```math
I_1=\int(\nabla\cdot T^\sharp)_iT^\sharp_{ij}\partial_j\phi\,dx,
```

```math
I_2=\int U_i(D_tT^\sharp_{ij})\partial_j\phi\,dx,
```

and

```math
I_3=-\int U_iT^\sharp_{ij}(\partial_jU_k)(\partial_k\phi)\,dx.
```

The cubic collar, pressure-time service, collar motion, material acceleration, and viscous strain are all coordinates of `(TAS.2)`.  None is an external source.

## Tax-at-source storage candidate

The natural storage is a coupled annular/material storage of the form

```math
X_{ann,N}=a\,M_\phi+b\,F_\phi^\sharp+X_{press,N}+X_{met/collar,N},
```

where \(X_{press,N}\) is the pressure-time/Hodge correction and \(X_{met/collar,N}\) is the transported metric/collar correction.  The target is not termwise positivity.  It is the signed inequality

```math
dX_{ann,N}
+c_N\,d\Omega_{ann/cubic/press,N}^{PLS}
\le
\varepsilon dD_N^{vis}+\varepsilon dD_N^{rad}+dR_N^{legal}.
\tag{TAS.3}
```

This is the precise tax-at-source theorem: cubic transfer is charged simultaneously by viscous/strain toll, pressure correction, collar stress, metric motion, and drop of annular/material storage.

## Calculation of the critical signed block

Substituting \(T^\sharp=-PI+2\nu S\) into \(I_3\) gives

```math
I_3
=
\int P\,U_j(\partial_jU_k)(\partial_k\phi)\,dx
-2\nu\int U_iS_{ij}(\partial_jU_k)(\partial_k\phi)\,dx.
\tag{TAS.4}
```

The first term is pressure-collar transport.  The second is viscous-strain collar transport.  These are exactly the terms that become the positive absolute density if one prematurely rectifies.

The pressure-time block \(I_2\) contains

```math
-\int U_i(D_tP)\partial_i\phi\,dx
+2\nu\int U_i(D_tS_{ij})\partial_j\phi\,dx.
\tag{TAS.5}
```

Using

```math
-\Delta P=\partial_iU_j\partial_jU_i
```

and its material derivative, \(D_tP=(-\Delta)^{-1}\mathcal E_P\), the first term in `(TAS.5)` is the same pressure-time elliptic service.  The second term in `(TAS.5)`, through

```math
D_tS+S^2+\Omega^2+\nabla^2P=\nu\Delta S,
```

pairs the cubic strain transport with pressure Hessian, vorticity, viscous strain, and collar motion.

Thus the algebraic participation structure is correct:

```math
I_2+I_3
=\text{pressure-time service}+	ext{cubic collar transport}+\text{strain/vorticity/Hessian/viscous partners}.
```

The isolated \(D^{5/4}\) bound is therefore not the right proof object.

## What would close

The proof closes if the signed block satisfies

```math
I_2+I_3+dX_{press,N}+dX_{met/collar,N}
+c_N\big(S_2(t)+S_5(t)\big)dt
\le
\varepsilon dD_N^{vis}+\varepsilon dD_N^{rad}+dR_N^{legal}.
\tag{TAS.6}
```

Here \(S_2+S_5\) means the rectified pressure-time/cubic service read only after the same-packet signed cancellation has been used.

This would be the desired tax-at-source estimate.  It would imply the local annular pressure/cubic part of the full budget law

```math
d\mathcal B_N+c_Nd\Omega_N^{PLS}\le dR_N^{legal}.
```

## Current obstruction

The present calculation verifies the required grouping but does not prove the final sign in `(TAS.6)`.  In particular, the pressure-collar term

```math
\int P\,U_j(\partial_jU_k)(\partial_k\phi)\,dx
```

and the pressure-time term

```math
-\int U_i(D_tP)\partial_i\phi\,dx
```

are in the same PLS block, but the current identities do not show a one-sided cancellation that dominates their rectified positive parts uniformly over shrinking terminal annuli.

Likewise, the viscous-strain collar transport term is coupled to \(D_tS\) and viscous strain, but the current identities do not produce a bounded-below storage drop large enough to dominate the rectified cubic collar action.

## Verdict

The user's correction is mathematically right: the cubic collar term must be taxed at source inside the signed annular stress-work derivative, not estimated standalone by \(D^{5/4}\).

The tax-at-source theorem is now precisely `(TAS.6)`.  The calculation confirms the correct participation-law grouping, but the needed signed same-packet coercivity remains unproved: one must show that the pressure-time/cubic/collar block has enough pre-rectification cancellation or storage drop to pay \(S_2+S_5\) before taking absolute values.