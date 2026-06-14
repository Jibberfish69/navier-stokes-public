# SCFBase.Modulus Via Local Energy Inequality

## Status

Direct local-energy discharge failed. The concentration-compactness target is isolated.

## Target

Test whether the local energy inequality supplies a terminal label-time-scale modulus for

```math
SCF_{base}(Q_r^\Phi(a,t))
=E_u(Q_r^\Phi)+D_u(Q_r^\Phi)+P(Q_r^\Phi)+G_\Phi(Q_r^\Phi).
```

The desired modulus is

```math
|SCF_{base}(Q_r^\Phi(a,t))-SCF_{base}(Q_{r'}^\Phi(a',t'))|
\le
\Omega(d(a,a')+|t-t'|+|\log r-\log r'|),
```

with terminal control sufficient to prevent moving bad SCF packets.

## Geometry term

`Pack.TTU` gives

```math
\Gamma_{pack,Q}\in L^\infty([t_0,T_*)).
```

Hence transported cylinders, cutoffs, Jacobians, and cutoff-velocity terms are uniformly comparable to CKN cylinders. The geometric contribution

```math
G_\Phi
```

is controlled at the level needed to state the local energy inequality on same-fluid cylinders.

## Local energy inequality test

For a nonnegative transported cutoff `\varphi`, the local energy inequality has the form

```math
\frac{d}{dt}\int |u|^2\varphi
+2\nu\int |\nabla u|^2\varphi
\le
\int |u|^2(\partial_t\varphi+\nu\Delta\varphi)
+
\int (|u|^2+2p)u\cdot\nabla\varphi.
```

Pack control keeps the cutoff geometry and transport errors bounded. Thus the inequality gives controlled local balances for admissible same-fluid cylinders.

## Velocity energy term

The local energy term

```math
E_u(Q_r^\Phi)
```

is controlled in size by the global energy ledger and cutoff comparability. The local energy inequality gives absolute-continuity information for fixed smooth cutoffs on compact subintervals.

It does not give a terminal uniform modulus over all labels, times, and scales. A moving packet can carry comparable local energy through fresh labels and shrinking scales while preserving the global energy bound.

## Gradient/dissipation term

The dissipation term

```math
D_u(Q_r^\Phi)
```

is controlled only in spacetime integral by the energy inequality:

```math
\nabla u\in L^2_{t,x}.
```

This does not control the variation of

```math
D_u(Q_r^\Phi(a,t))
```

as a function of label, center time, and scale. The obstruction is a moving gradient concentration packet: global `L^2_{t,x}` can remain finite while the local scale-critical dissipation packet moves through fresh labels and scales.

Thus the gradient concentration modulus is a blocking term.

## Pressure term

The pressure flux term enters as

```math
\int p\,u\cdot\nabla\varphi.
```

Using the local split

```math
p=p^{loc}+h,
\qquad
-\Delta p^{loc}=\partial_i\partial_j(\chi u_i u_j),
```

the harmonic part is controlled by energy. The local part requires a product-source carrier for `u\otimes u`, and a modulus for that carrier over labels, times, and scales.

The local energy inequality controls pressure flux in an integral inequality. It does not supply a standalone terminal pressure-oscillation modulus. The pressure modulus is therefore blocked by the same missing local analytic carrier as the gradient modulus.

## Result

The local energy inequality provides:

```math
\text{controlled same-fluid local balances.}
```

It does not provide:

```math
\text{terminal label-time-scale modulus for }E_u+D_u+P.
```

The exact blocking terms are

```math
D_u
\qquad\text{and}\qquad
P.
```

The velocity energy term `E_u` also lacks a terminal uniform moving-packet modulus, though its size is globally controlled.

## Concentration-compactness target

The remaining target is

```math
SCFBase.ConcentrationCompactness:
\text{failure of }SCFBase.Modulus
\Longrightarrow
\text{a finite concentration defect typing into }tower\text{-}blown\vee Jump_{avg}.
```

Equivalently, moving `D_u/P` concentration must either compactify into a finite endpoint defect or enter the endpoint grammar.

## BKM comparison

Under the BKM condition,

```math
\int_{t_0}^{T_*}\|\omega(t)\|_{L^\infty}\,dt<\infty,
```

high Sobolev control supplies velocity-gradient and pressure product-source moduli. Therefore

```math
BKM\Longrightarrow SCFBase.Modulus.
```

This remains a conditional comparison route.

## Verdict

`SCFBase.Modulus` remains open from `OriginalSmoothData+Pack.TTU`. The local energy inequality supplies local balances, while the terminal analytic modulus is blocked by moving gradient and pressure concentration.
