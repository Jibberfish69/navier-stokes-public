# Full PLS transaction no-free normalized terminal pulse

Status: carrier correction installed; viscosity-only refill countermodel rejected; global closure remains the finite full PLS ledger.

## Correction

The scalar countermodel

```math
\frac12\frac d{dt}E_j+c\nu D_j\le \Phi_j^+
```

is not the repo object.  It treats \(\Phi_j^+\) as an external refill source
balanced only against viscous drain.  That loses the participation law.

In the same-material packet, \(\Phi_j^+\) is one coordinate of the full
participation-law--strain transaction:

```math
(v,q,A,G),
\qquad
\mathbb P_A,
\qquad
T=-pI+2\nu S,
\qquad
S,
\qquad
\phi,
\qquad
m_j^{PLS}.
```

The legal question is therefore:

```math
\text{can a normalized terminal pulse exist as a legal full PLS transaction?}
```

It is not:

```math
\text{can viscosity alone drain the pulse?}
```

## Why viscosity-only is inadmissible

The installed affine-strain normal form already shows the failure of
viscosity-only reasoning.  A local incompressible affine strain can have

```math
\Delta u=0
```

while still carrying nonzero strain and material metric growth.  Interior
viscosity alone can miss that clock.  The participating carrier is the full
same-material packet: interior strain, pressure constraint, annular Cauchy
stress work, material coefficient motion, Hodge/Stokes projection motion,
collar motion, and viscous loss.

## Correct differential carrier

The admissible differential form is not

```math
\Theta_N\,dt\le C\,dD_N^{vis}+dR_N.
```

The admissible form is the full participation carrier

```math
\Theta_N^{PLS}\,dt
\le
C\,dA_N^{ann}
+C\,d\mathcal G_N^{mat}
+C\,d\mathcal H_N^{proj/collar}
+C\,dD_N^{vis}
+dR_N
-dX_N.
```

Here \(dA_N^{ann}\) is annular Cauchy stress-work,
\(d\mathcal G_N^{mat}\) is material geometry/coefficient participation,
\(d\mathcal H_N^{proj/collar}\) is Hodge/collar participation, and \(dX_N\)
is the signed same-packet storage.  These are not separate suppliers.  They are
coordinates of one same-material participation-law--strain transaction.

## No-free normalized pulse formulation

For a retained normalized terminal PLS pulse on a heat-scale sample \(I_j\), the
correct local charge statement is

```math
\int_{I_j} d\Omega_N^{PLS}\ge c_N>0,
```

where \(d\Omega_N^{PLS}\) is the full same-material PLS ledger, not a viscous
subledger.  Thus infinitely many legal normalized terminal pulses would force

```math
\sum_j\int_{I_j}d\Omega_N^{PLS}
\ge
\sum_j c_N
=\infty .
```

Consequently, once the original transported material history has finite full
PLS ledger,

```math
\int_0^{T^*}d\Omega_N^{PLS}<\infty,
```

no infinite normalized terminal pulse sequence remains.

## Relation to the current live edge

The previous failure was caused by isolating the viscous coordinate and letting
\(\Phi_j^+\) look like free fuel.  The corrected route is the full
participation law:

```math
\text{the full participation law leaves no free normalized terminal pulse.}
```

The remaining global task is exactly the finite full PLS ledger for the
original transported material history, or an equivalent same-material
no-free-pulse theorem that proves that ledger.
