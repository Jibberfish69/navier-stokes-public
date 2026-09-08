# MovingLowHighPressureStrainPumpFiniteWorkHardBoundary.A

Status: not discharged.  The moving low-high pressure/strain pump is the exact continuation-strength coefficient in the Gold route.  Current installed inputs prove support facts around it, not finite work of the pump itself.

## 0. Target

Prove finite work of the moving same-material pressure/strain pump:

```math
\int_0^{T^*}
\sum_j w_j
\Bigl(
\|\nabla S_{<j-C}u\|_\infty
+\|S_{<j-C}\nabla^2p\|_{\mathcal X_j}
+\|S_{<j-C}\dot G\|_{\mathcal Y_j}
+\|S_{<j-C}\dot B_\psi\|_{\mathcal Z_j}
\Bigr)E_j(t)dt<\infty .
```

This is the dyadic form of finite same-material pressure/strain partner service.

## 1. What is already paid

The following pieces are not the remaining obstruction:

```text
fixed low modes,
periodic affine strain,
initial smooth Fourier tail,
linear heat damping,
pure high-high gradient transfer after spill/low-mode separation,
relative pressure/collar Schur defect,
projected Helmholtz--Leray pressure overcount.
```

Pure high-high transfer is absorbed by the existing high-high tail mechanism once the enstrophy/gradient layer is present.  Fixed low modes are bounded for every fixed dyadic threshold.  Neither pays the moving low band immediately below the active shell.

## 2. Why the moving low-high term is critical

For the dyadic energy shell, the relevant Bony term is

```math
\int (\Delta_j u\cdot\nabla S_{<j-C}u)\cdot\Delta_j u\,dx,
```

which is bounded by

```math
\|\nabla S_{<j-C}u\|_\infty\|\Delta_j u\|_2^2.
```

As \(j\to\infty\) near a terminal scale, \(S_{<j-C}\) is not a fixed low mode; it is the moving material band underneath the active shell.  Thus finite work requires

```math
\int_0^{T^*}\|\nabla S_{<j(t)-C}u(t)\|_\infty dt<\infty
```

along the active terminal shell family, with the corresponding pressure-Hessian, metric, coefficient, and collar services.

This is exactly a BKM/Serrin-strength continuation coefficient in moving same-material variables.

## 3. Equivalence to continuation clock

If the moving pump work is finite, the material record growth law gives

```math
\int_0^{T^*}d[\log(1+\mathcal P_N^{mat})]_+<\infty,
```

hence

```math
\sup_{t<T^*}\mathcal P_N^{mat}(t)<\infty.
```

The installed material readout then yields

```math
\sup_{t<T^*}\|u(t)\|_{H^s}<\infty,
\qquad s>5/2,
```

and the classical local theorem relaunches past \(T^*\).

Conversely, if

```math
\sup_{t<T^*}\|u(t)\|_{H^{s_N}}<\infty
```

for \(s_N\) high enough to dominate the chosen packet norms, then Sobolev product estimates, Calderon-Zygmund pressure estimates, and transported-collar composition bounds give the finite pump work immediately.

Thus

```math
\boxed{
\text{finite moving low-high pressure/strain pump work}
\Longleftrightarrow
\text{continuation-strength material clock at the chosen depth}.}
```

## 4. Verdict

The theorem is not proved from current inputs.  It is the hard endpoint of the Gold route:

```math
\boxed{\text{MovingLowHighPressureStrainPumpFiniteWork.A}}
```

is equivalent to

```math
\boxed{\int_0^{T^*}\Theta_N(t)dt<\infty}
```

and hence to the continuation-grade material record bound.  No current pressure partner, annular stress-work, high-high absorption, or local commutator storage proves it independently.