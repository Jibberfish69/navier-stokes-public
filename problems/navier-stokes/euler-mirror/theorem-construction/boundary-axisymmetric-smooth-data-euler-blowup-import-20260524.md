# Boundary Axisymmetric Smooth-Data Euler Blowup Import

## Status

Theorem-facing external-import closure for the `ESM.N5` boundary/axisymmetric
blowup comparison row.

Role: record exactly what the Chen-Hou source class contributes to the Euler
mirror: a fixed-datum smooth-data finite-time blowup theorem in the
three-dimensional axisymmetric Euler setting with boundary. This closes the
boundary/axisymmetric nonsmooth row as a domain-sensitive external theorem
class. It does not claim no-boundary finite-energy blowup on `R^3` or `T^3`.

External source:

- Jiajie Chen and Thomas Y. Hou, "Stable nearly self-similar blowup of the 2D
  Boussinesq and 3D Euler equations with smooth data I: Analysis",
  arXiv:2210.07191, <https://arxiv.org/abs/2210.07191>.
- Jiajie Chen and Thomas Y. Hou, "Stable Nearly Self-Similar Blowup of the 2D
  Boussinesq and 3D Euler Equations with Smooth Data II: Rigorous Numerics",
  arXiv:2305.05660, <https://arxiv.org/abs/2305.05660>, SIAM MMS DOI
  `10.1137/23M1580395`.

This note reads back through
[referee-audit-ledger.yaml](/Users/thomasbirnie/Workspace/ToE/Research-Consolidation/problems/navier-stokes/euler-mirror/referee-audit-ledger.yaml)
and the `ESM.N5` nonsmooth-control row.

## Imported Theorem Shape

In the boundary/axisymmetric setting recorded by the source pair, the theorem
class has the form:

```math
u_0\in C^\infty,\qquad E(u_0)<\infty,\qquad
\text{axisymmetric Euler with boundary}
\quad\Longrightarrow\quad
\exists T_*<\infty:\ \text{the classical branch loses smoothness}.
\tag{CH.1}
```

This is a fixed-datum classical singularity theorem in a boundary geometry. Its
mechanism is nearly self-similar boundary vorticity growth, not the periodic
slip-sheet or zero-thickness shear-layer limit.

## Boundary Of The Import

The theorem class does not supply:

```math
\text{smooth finite-energy Euler blowup on } \mathbb R^3
\text{ or } \mathbb T^3.
\tag{CH.2}
```

It also does not supply a Navier-Stokes regularity result. For the Euler mirror,
the import is only:

```text
Euler can be classically smooth from smooth finite-energy data,
then lose smoothness in the boundary/axisymmetric class.
```

## Route Readback

This closes `ESM.N5` as a domain-sensitive external theorem class:

```text
smooth finite-energy boundary/axisymmetric Euler datum
-> Chen-Hou external theorem class
-> finite-time classical smoothness loss
-> boundary Euler nonsmoothness row closed.
```

The no-boundary periodic/free-space smooth-data blowup question remains a
separate open/global class and is not promoted by this import.
