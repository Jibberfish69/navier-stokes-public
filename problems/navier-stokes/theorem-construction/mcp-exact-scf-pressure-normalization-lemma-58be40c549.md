# Exact SCF Pressure Normalization Lemma

Status: conditional local normalization theorem.

## Statement

On a bounded same-fluid moving cylinder, define

```math
p^{norm}=p-c(t)-p^{frame}_{aff}(x,t),
```

where `c(t)` is a spatially constant pressure gauge and `p^{frame}_{aff}` is the affine potential whose gradient equals the inertial affine force produced by the moving frame.

Then `SCF_base` built with `p^{norm}` is CKN-compatible, and the original pressure derivatives used in

```math
K_q=-\nabla^{q+1}p+\nu\Delta U_q
```

are recovered later through `DTC.Read.Press.local` plus the finite frame-coefficient ledger.

## Gauge compatibility

The spatially constant term `c(t)` has zero spatial gradient. It changes neither the Navier-Stokes equation nor any pressure derivative used by `K_q`.

The moving frame contributes an inertial affine force. Its potential `p^{frame}_{aff}` is chosen so that

```math
\nabla p^{frame}_{aff}=F^{frame}_{aff}.
```

After subtracting this potential, the transformed local energy inequality has the CKN pressure fluctuation `p^{norm}`. Thus the pressure component of `SCF_base` is

```math
r^{-2}
\int_{t_0-r^2}^{t_0}
\int_{B_r^\Phi(t)}
\left|
p^{norm}(x,t)
-
\langle p^{norm}\rangle_{B_r^\Phi(t)}(t)
\right|^{3/2}
\,dx\,dt,
```

where

```math
\langle p^{norm}\rangle_{B_r^\Phi(t)}(t)
:=
|B_r^\Phi(t)|^{-1}\int_{B_r^\Phi(t)}p^{norm}(x,t)\,dx.
```

This is a spatial-slice gauge at each time, so the subtraction removes only the
pressure constant on the local ball and does not change any pressure gradient
or derivative used later.

## Readout compatibility

The endpoint forcing rung uses the original pressure. On a fixed readout cover, `DTC.Read.Press.local` splits

```math
p=p_i^{loc}+h_i,
\qquad
-\Delta p_i^{loc}=\partial_a\partial_b(\chi_i u_a u_b).
```

The local Poisson estimate controls derivatives of `p_i^{loc}`, and the harmonic tail is controlled by the energy bound. The gauge term `c(t)` contributes zero spatial derivatives. The affine frame potential contributes only known finite-depth frame terms, already carried in the moving-frame ledger.

Therefore, for every required `q`,

```math
\nabla^{q+1}p
=
\nabla^{q+1}p^{norm}
+\nabla^{q+1}p^{frame}_{aff}
```

with both terms controlled on the fixed readout cover after `ATD_m^\varepsilon` and the frame ledger are applied.

## Output

The normalization convention is compatible with both route uses:

```math
SCF_{base}\le\varepsilon_m
\Longrightarrow
CKN\text{-smallness input},
```

and

```math
DTC.Read.Press.local
\Longrightarrow
\text{original-pressure derivative readout for }K_q.
```

## Boundary

The route uses gauge/frame normalization. It carries no amplitude-rescaling readout normalization.
