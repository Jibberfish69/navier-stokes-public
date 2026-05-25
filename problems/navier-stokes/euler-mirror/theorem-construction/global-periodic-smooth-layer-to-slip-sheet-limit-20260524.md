# Global Periodic Smooth-Layer To Slip-Sheet Limit

## Status

Theorem-facing globalization of the `ESM.N3` zero-thickness smooth-layer row.

Role: promote the local smooth-shear-layer limit into a global periodic theorem:
smooth classical Euler solutions on `I x T^d` can converge in every finite
`L^p` and distributionally to the global periodic slip-sheet weak Euler member.
This is a global singular-limit result. It is not finite-time singularity from
one fixed smooth datum.

This note reads back through
[referee-audit-ledger.yaml](/Users/thomasbirnie/Workspace/ToE/Research-Consolidation/problems/navier-stokes/euler-mirror/referee-audit-ledger.yaml)
and the `ESM.N3` nonsmooth-control row.

## Theorem

Let `I=[0,T]`, let `d=2` or `d=3`, and let the spatial domain be `T^d`. Let
`U_*` be the periodic slab profile

```math
U_*(y)=
\begin{cases}
a,&0<y<1/2,\\
b,&1/2<y<1,
\end{cases}
\qquad a\ne b,
\tag{GPSL.1}
```

extended periodically. Let `rho_epsilon` be a smooth periodic mollifier on
`T^1`, and set

```math
U_\varepsilon=\rho_\varepsilon * U_*.
\tag{GPSL.2}
```

In two dimensions define

```math
u_\varepsilon(t,x,y)=(U_\varepsilon(y),0),
\qquad p_\varepsilon(t,x,y)=p_0,
\tag{GPSL.3}
```

and in three dimensions define

```math
u_\varepsilon(t,x,y,z)=(U_\varepsilon(y),0,0),
\qquad p_\varepsilon(t,x,y,z)=p_0.
\tag{GPSL.4}
```

For every `epsilon>0`, `(u_epsilon,p_epsilon)` is a global smooth classical
Euler solution on `I x T^d`. As `epsilon -> 0`,

```math
u_\varepsilon \to u_*
\tag{GPSL.5}
```

in `L^p(I x T^d)` for every finite `p` and distributionally, where `u_*` is the
global periodic slip-sheet weak Euler member from
[global-periodic-slip-sheet-euler-nonsmoothness-bridge-20260524.md](/Users/thomasbirnie/Workspace/ToE/Research-Consolidation/problems/navier-stokes/euler-mirror/theorem-construction/global-periodic-slip-sheet-euler-nonsmoothness-bridge-20260524.md).

## Proof

The mollified profiles `U_epsilon` are smooth and periodic. Since the velocity
has only a tangential component depending only on `y`,

```math
\nabla\cdot u_\varepsilon=\partial_x U_\varepsilon(y)=0.
\tag{GPSL.6}
```

Also,

```math
(u_\varepsilon\cdot\nabla)u_\varepsilon
=
U_\varepsilon(y)\partial_x u_\varepsilon
=0,
\tag{GPSL.7}
```

and `nabla p_epsilon=0`. Thus each smooth field solves incompressible Euler
classically and stationarily on the whole periodic domain.

Standard approximation by periodic mollifiers gives

```math
U_\varepsilon \to U_*
\quad\text{in }L^p(T^1)\text{ for every finite }p.
\tag{GPSL.8}
```

The fields are stationary, so the same convergence holds on `I x T^d`, and
distributional convergence follows from `L^1` convergence on the finite domain.
The limit field is the global periodic slip sheet. It is a base weak Euler
member and it is not globally smooth.

## Consequence

The global slip-sheet nonsmooth member is in the strong finite-`p` closure of
global smooth classical Euler solutions:

```math
u_*\in
\overline{\{\text{global smooth stationary Euler shears on }T^d\}}^{L^p},
\qquad 1\le p<\infty.
\tag{GPSL.9}
```

Therefore any Euler class boundary that separates smooth periodic shears from
the global slip sheet must use a stronger topology, an admissibility layer, or a
regularity theorem beyond base `Member_E`.

The sequence uses different smooth initial data for different `epsilon`. It
does not prove that one fixed smooth datum becomes singular in time.

## Route Readback

This closes the global version of `ESM.N3`:

```text
global smooth periodic stationary shears
-> zero-thickness limit
-> global periodic slip-sheet Member_E
-> nonsmooth global weak member in finite-p closure of smooth Euler.
```

Together with `ESM.N1`, this says the nonsmooth slip sheet is both a concrete
global base-Euler member and a global singular limit of smooth classical Euler
solutions.
