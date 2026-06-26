# GlobalPressureStrainPartnerServiceDirectAttempt.A

Status: not discharged.  The direct pressure/strain partner-service proof reduces to finite work of the moving low-high same-material pressure-strain pump.  That estimate is continuation-strength and is not proved by the installed inputs.

## 0. Requested target

Prove finite total same-material pressure/strain partner service:

```math
\int_0^{T^*} d\Omega_N^{press/strain,partner}(t)<\infty .
```

This is the pressure/strain face of the full same-material service coordinate \(\Theta_N\).  It contains directional pressure-Hessian service, annular pressure/strain stress-work, cubic strain service, and the material coefficient/collar terms needed to keep the transported carrier fixed.

## 1. What pressure-Hessian partner retention proves

From the pressure Poisson law,

```math
\nabla^2p=\mathcal R\mathcal R((S+\Omega)\otimes(S+\Omega)).
```

A selected positive directional pressure-Hessian lobe has Calderon-Zygmund partner lobes of opposite sign in the same pressure field.  Therefore

```math
\text{positive pressure-Hessian service}
\le
\text{retained signed partner cancellation}
+\text{legal/collar pressure service}
+d\Omega_N^{press,miss}.
```

The pressure graph therefore proves classification, not finiteness.  If the partner is not retained or legally paid, the missing partner is itself a positive same-material pressure-service clock.

## 2. What annular pressure/strain stress-work proves

For a transported material cutoff \(\phi\),

```math
{d\over dt}\int {1\over2}|u|^2\phi dx
+2\nu\int \phi |S|^2dx
=-\int u\cdot(-pI+2\nu S)\nabla\phi dx .
```

This proves attachment of center storage to the same-fluid annular pressure/strain transaction.  It controls signed net stress-work, not positive rectified action:

```math
\int F_\phi dt = M_\phi(a)-M_\phi(b)-\int D_\phi dt
```

but the full clock needs

```math
\int (D_\phi+|F_\phi|)dt
```

and the derivative/rectification of \(F_\phi\) creates pressure-time elliptic service and cubic strain service.

## 3. Active all-scale pump

After low-mode exclusion, affine-strain exclusion, initial-tail entrance control, linear viscous high-frequency damping, and pure high-high absorption, the remaining dyadic interaction is the moving low-high pressure/strain pump:

```math
\int_0^{T^*}\sum_j w_j
\Bigl(
\|\nabla S_{<j-C}u\|_\infty
+\|S_{<j-C}\nabla^2p\|_{\mathcal X_j}
+\|S_{<j-C}\dot G\|_{\mathcal Y_j}
+\|S_{<j-C}\dot B_\psi\|_{\mathcal Z_j}
\Bigr)E_j(t)dt .
```

This is not a fixed low-mode term.  The band \(<j-C\) moves upward with the active terminal shell \(j\), so fixed-threshold energy bounds do not control it.

This moving pump is exactly the finite total same-material pressure/strain partner service in dyadic form.

## 4. Why the direct proof does not close

Pure high-high transfer is already absorbable.  Fixed low modes are bounded.  The active term is the moving low-high material pump immediately below each active shell.  Its coefficient has continuation-clock strength:

```math
\|\nabla S_{<j-C}u\|_\infty,
\quad
\|S_{<j-C}\nabla^2p\|_{\mathcal X_j},
\quad
\text{material coefficient/collar service}.
```

Finite work of this pump implies bounded continuation-depth material record and hence \(H^s\) continuation.  Conversely, bounded \(H^s\) continuation implies finite work of this pump by Sobolev, elliptic pressure, product, and transported-collar estimates.

Therefore the requested estimate is continuation-equivalent:

```math
\int d\Omega_N^{press/strain,partner}<\infty
\Longleftrightarrow
\sup_{t<T^*}\|u(t)\|_{H^s}<\infty
```

at the chosen finite readout depth, modulo already legal lower-order residuals.

## Verdict

The direct proof is not obtained from installed inputs.  The exact remaining theorem is

```math
\boxed{\text{MovingLowHighPressureStrainPumpFiniteWork.A}.}
```

or equivalently

```math
\boxed{\int_0^{T^*}\Theta_N(t)dt<\infty.}
```

Pressure-Hessian partner retention and annular pressure/strain stress-work identify the correct same-material carrier, but they do not by themselves prove finite positive action.  The missing finite-work estimate is the Navier-Stokes continuation clock in the gold route variables.