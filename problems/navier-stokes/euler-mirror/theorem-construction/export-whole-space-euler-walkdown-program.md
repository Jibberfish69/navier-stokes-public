# Export / Whole-Space Euler Walkdown Program

## Purpose

Walk the parent carrier/export/whole-space discharge road on the Euler surface
until the first exact surviving interfaces and the first exact non-Euler
consumer are both named.

This note does **not** prove whole-space Euler regularity. It identifies what
of the parent export road survives before the Navier-Stokes-only consumer takes
over.

## Parent Aim

The parent export road tries to convert an internal carrier-side mechanism into
classical low-mode control on the Euclidean surface and then into a whole-space
discharge criterion.

Its theorem order is:

1. frequency-aligned readout;
2. coherent readout versus the classical low-mode band;
3. persistent-support transport export;
4. noncoherent leakage export;
5. low-mode strain suppression at the viscous scale;
6. downstream Euclidean/Clay discharge consumer.

## Fixed Euler Surface

Keep the readout and transport/export interfaces, but replace the target PDE by

```math
\partial_t u + (u\cdot\nabla)u + \nabla p = 0,
\qquad
\nabla\cdot u = 0.
```

Do not silently preserve the parent low-mode target

```math
\|\nabla u_{<j_0}(t)\|_{L^\infty_x}
\le
c\,\nu\,2^{2j_0},
```

because that theorem is calibrated to the viscous Navier-Stokes consumer.

## Euler Walkdown

### EE1. Frequency-aligned readout survives

The first export interface survives as a spectral/functional-calculus
statement:

```math
\rho(\mathbb H_D(j_0)X)=P_{\le j_0}u_{\mathrm{coh}}.
\tag{EE1}
```

This is a readout identity. It does not itself spend viscosity.

### EE2. Coherent transport export survives as an interface target

The next interface also survives as a route slot:

```math
\boxed{
\text{persistent-support transport on the internal Euler object}
\Longrightarrow
\text{a low-mode Euler transport/pressure readout target}
}
\tag{EE2}
```

The same is true of leakage export: it remains meaningful to ask whether the
noncoherent remainder stays lower-order after readout on the Euler side.

### EE3. Exact non-Euler bridge

The parent road stops at the classical low-mode strain consumer. Its theorem
target is

```math
\|\nabla u_{<j_0}(t)\|_{L^\infty_x}
\le
c\,\nu\,2^{2j_0}
+
C\,\Psi(\mathcal E_D(X(t))).
\tag{EE3}
```

This is the first exact non-Euler bridge for two separate reasons:

1. the dominant scale is explicitly the viscous scale `\nu 2^{2j_0}`;
2. the downstream consumer is the parent Navier-Stokes whole-space discharge
   criterion rather than an Euler continuation theorem.

After viscosity removal, the right-hand side no longer names the correct
Eulerian continuation object.

### EE4. Strongest honest Euler target before the break

The strongest honest Euler target on this road is therefore:

```math
\boxed{
\text{readout alignment}
+
\text{coherent transport export}
+
\text{leakage export}
\Longrightarrow
\text{an Euler low-mode transport-pressure continuation quantity}
}
\tag{EE4}
```

The missing parent step is not another low-pass identity. It is a viscous
low-mode strain consumer, which is non-Euler on this branch.

## Terminal Non-Euler Classification

The terminal classification is:

```math
\boxed{
\text{an export road feeding an Euler continuation target would be a new
external route;}\\
\text{the parent Navier-Stokes low-mode strain consumer is non-Euler.}
}
\tag{EE5}
```

The export road is therefore closed for this terminal branch unless a new
external Euler continuation target is introduced.

## Status

The export road is now honestly walked on Euler through the readout/export
interfaces. It is blocked exactly at the parent viscous low-mode consumer and
its downstream whole-space Navier-Stokes discharge target.
