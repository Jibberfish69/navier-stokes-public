# Exact Branch Boundary

Status: conditional branch-boundary note.

## Active branch

The theorem branch is periodic, zero-force Navier-Stokes:

```math
T^3,
\qquad
f=0,
\qquad
u>0.
```

The initial data are

```math
u_0^{vel}=u_0\in C^\infty(T^3),
\qquad
\nabla\cdot u_0=0,
\qquad
\int_{T^3}u_0\,dx=0.
```

The conclusion is

```math
T_* = \infty
```

for the maximal classical periodic solution.

## Excluded branches

This theorem branch does not state a whole-space result on `R^3`. A whole-space branch needs separate far-field, localization, and export arguments.

This theorem branch does not state a nonzero-forcing result. A forced branch needs forcing-source estimates and a matching continuation criterion.

This theorem branch uses the strengthened source supplier

```math
\operatorname{Hyp}(FFSRC.A)\Longrightarrow FCI.5f.
```

The stricter exact same-depth source branch

```math
FPCR.C/FIRP.A0+FSCR.C+FCC.C1+FCC.C1a\Longrightarrow FCI.5f
```

is a separate route option. In both branches `FCC.C1a` denotes
`\mathcal E_{N,\rho,\psi}^{cut,\nabla,\varepsilon}\in L^1(I)`.

## Boundary statement

The proved conditional target is exactly:

```math
u_0^{vel}\in C^\infty(T^3),
\quad
\nabla\cdot u_0=0,
\quad
\int_{T^3}u_0=0,
\quad
f=0
\Longrightarrow
T_* = \infty.
```
