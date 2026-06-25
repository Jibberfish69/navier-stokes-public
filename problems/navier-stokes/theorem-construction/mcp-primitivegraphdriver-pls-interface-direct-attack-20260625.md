# Primitive Graph-Driver PLS Interface Direct Attack

Date: 2026-06-25

Status: direct attack installed; graph-driver identified as the continuation-strength moving material deformation coefficient, not a pressure/collar defect.

## 0. Object

After the relative Schur-complement correction, the pressure/operator plus
higher-collar block has split into two parts:

```math
d\Omega_N^{pc,raw}
\le
C\,d\Omega_N^{graph-driver}
+C\,d\Omega_N^{rel.defect}
+dR_N^{legal}.
\tag{PGD.1}
```

The relative defect is paid by

```math
\widetilde{\mathscr A}_N^{press/op+collar}
=
-{1\over2}\|W_N\|_{pc,N}^2,
\qquad
W_N=Z_N-\Gamma_N(Y_N).
\tag{PGD.2}
```

The graph-driver part remains when \(W_N=0\).  It is therefore not a
pressure/collar defect.  It is the pressure/collar readout of the same
material participation-law--strain variables:

```math
v,\quad q,\quad A,\quad G,\quad \mathbb P_A,\quad
T=-pI+2\nu S,\quad S,\quad \phi .
\tag{PGD.3}
```

The direct question is whether this primitive graph-driver has its own
bounded-below storage or finite variation theorem.

## 1. Top-rank form of the graph-driver

At the active shell \(j\), the same material tower has the schematic top-rank
energy identity

```math
{1\over2}dE_{j,N}
+\nu D_{j,N}\,dt
=
\left\langle H_{j,N},
\mathcal M_{<j-C,N}(t)H_{j,N}
\right\rangle dt
+dR_{j,N}^{paid}.
\tag{PGD.4}
```

Here \(H_{j,N}\) is the active high-shell material packet, and
\(\mathcal M_{<j-C,N}\) is the symmetric low-band same-material coefficient
made from strain, pressure Hessian, material coefficient motion, Hodge/Stokes
projection motion, and collar motion.  In Eulerian notation this is the
already-isolated moving low-high term:

```math
\Delta_j(u\cdot\nabla u)
\supset
\Delta_j(\Delta_j u\cdot\nabla S_{<j-C}u),
\tag{PGD.5}
```

with the material pressure/collar replacement

```math
\nabla S_{<j-C}u
\leadsto
S_{<j-C}S,\quad
S_{<j-C}\nabla_x^2p,\quad
S_{<j-C}\dot G,\quad
S_{<j-C}\dot B_\psi .
\tag{PGD.6}
```

Thus the primitive graph-driver clock is

```math
d\Omega_N^{graph-driver}
\simeq
\sum_j w_j
\left[
\left\langle H_{j,N},
\mathcal M_{<j-C,N}H_{j,N}
\right\rangle
\right]_+dt
+dR_N^{paid}.
\tag{PGD.7}
```

This is the moving material deformation coefficient acting on the active shell.
It is not a detachable source term.

## 2. The natural shell storage is circular

The natural signed storage for `(PGD.4)` is the negative shell record

```math
X_{j,N}:=-{1\over2}w_jE_{j,N}.
\tag{PGD.8}
```

On the positive orientation of `(PGD.4)`, this has the right derivative sign:

```math
dX_{j,N}
+w_j
\left[
\left\langle H_{j,N},
\mathcal M_{<j-C,N}H_{j,N}
\right\rangle
\right]_+dt
\le
w_j\nu D_{j,N}\,dt
+dR_{j,N}^{paid}
+w_j
\left[
-\left\langle H_{j,N},
\mathcal M_{<j-C,N}H_{j,N}
\right\rangle
\right]_+dt .
\tag{PGD.9}
```

This is the same oriented tax-at-source algebra already installed: the storage
pays the aligned orientation and leaves the wrong-sign/return side to the
recirculation theorem.

The lower-bound problem is exact:

```math
X_{j,N}\ge -C
\quad\Longleftrightarrow\quad
w_jE_{j,N}\le C.
\tag{PGD.10}
```

Summed over shells, this is precisely the continuation-depth material record.
So the shell storage proves the desired estimate only after the record is
already bounded.  It is not a noncircular available-participation entropy.

## 3. The coefficient storage is also circular

A second natural attempt is a coefficient-coupled storage

```math
Y_{j,N}
=
-w_j
\left\langle H_{j,N},
B_{<j-C,N}H_{j,N}
\right\rangle,
\tag{PGD.11}
```

where \(B_{<j-C,N}\) is chosen so that \(\dot B_{<j-C,N}\) contains the
coefficient \(\mathcal M_{<j-C,N}\).

Differentiation gives the desired top term, but also produces

```math
w_j\langle \dot H_{j,N},B_{<j-C,N}H_{j,N}\rangle
\quad\text{and}\quad
w_j\langle H_{j,N},\dot B_{<j-C,N}H_{j,N}\rangle .
\tag{PGD.12}
```

The first term reintroduces the same high-shell material equation.  The second
term is the next pressure/strain/coefficient service of the lower moving band.
This is not a defect; it is the same graph-driver one shell lower or one
coefficient derivative higher.

For \(Y_{j,N}\) to be bounded below, one needs

```math
\|B_{<j-C,N}\|_{L^\infty}\,w_jE_{j,N}
\quad\text{bounded or integrably controlled}.
\tag{PGD.13}
```

But `(PGD.13)` is exactly the primitive graph-driver clock.  Saturating
\(B_{<j-C,N}\) restores a lower bound and loses fixed-fraction payment on large
coefficient events.  Therefore coefficient storage does not close the estimate.

## 4. Descent test

The only possible nonlocal escape is ancestry descent: the lower moving
coefficient in \(\mathcal M_{<j-C,N}\) must be generated from a strictly
earlier or strictly lower-rank paid event.

The installed reductions already handle the non-self branches:

```math
\text{initial smooth tail},
\quad
\text{subheat viscosity},
\quad
\text{wrong-sign recirculation},
\quad
\text{top-strain/coefficient/base-collar storage},
\quad
\text{legal finite-overlap residual}.
\tag{PGD.14}
```

After those are removed, the remaining ancestry is self-referential:

```math
\mathcal M_{<j-C,N}
\longleftarrow
\text{same pressure/RHS + higher-collar + annular-stress graph-driver}.
\tag{PGD.15}
```

A descent proof would need a well-founded rank for `(PGD.15)` that strictly
decreases under every unpaid parent step, or an absorbable contraction

```math
d\Omega_N^{graph-driver,self}
\le
\theta\,d\Omega_N^{graph-driver,self}
+dR_N^{paid},
\qquad
0\le \theta<1.
\tag{PGD.16}
```

The present material identities do not provide this strict descent.  They show
where the graph-driver comes from, but the top-rank self branch is the same
moving low-high material deformation coefficient, not a lower object.

## 5. Consequence

The primitive graph-driver is exactly the continuation-strength clock in
dyadic/material form:

```math
\int_0^{T^*}d\Omega_N^{graph-driver}<\infty
\quad\Longleftrightarrow\quad
\text{finite moving low-high same-material pressure/strain service at depth }N.
\tag{PGD.17}
```

It is the active part of the full PLS clock.  It cannot be paid by:

```math
\text{relative Schur defect},
\quad
\text{viscosity alone},
\quad
\text{local Cauchy-Green sign},
\quad
\text{local affine strain sign},
\quad
\text{bounded-record fixed-annulus variation}.
\tag{PGD.18}
```

Those are valid coordinates or reductions, but none supplies the missing
bounded-below available-participation entropy.

## 6. Live proof state

The exact nonconditional theorem still needed is:

```math
\exists\,\mathscr A_N(t)\ge -C_N(u_0)
\quad\text{such that}\quad
d\mathscr A_N
+c_N\,d\Omega_N^{PLS,primitive}
\le
dR_N^{legal},
\qquad
\int_0^{T^*}dR_N^{legal}<\infty .
\tag{PGD.19}
```

Equivalently, prove the strict no-self-birth/contraction `(PGD.16)` for the
primitive graph-driver.  Without one of `(PGD.16)` or `(PGD.19)`, the route has
identified the correct physical clock but has not proved finite total clock
from original smooth data.

## Verdict

The direct attack does not close the MPP.  It prevents the Schur correction,
birth ledger, or local material-shape calculations from being overpromoted.
The remaining mathematical object is now precise: finite available
participation organization for the primitive graph-driver PLS interface, or an
equivalent strict no-self-birth theorem for the moving low-high material
deformation coefficient.
