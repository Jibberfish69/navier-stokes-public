# Relative Schur Graph-Driver / Defect Clock Split

Date: 2026-06-25

Status: correction installed; raw top-rank no-self-birth estimate rejected; correct split isolated.

## 0. Target

The supplied Schur-complement construction is

```math
\mathcal G_N^{ell/collar}
=
E_{pc,N}
-
{1\over2}\|Z_N-\Gamma_N(Y_N)\|_{pc,N}^2,
```

with

```math
Z_N=(q,C_N),
\qquad
\Gamma_N(Y_N)=
\left(L_G^{-1}R(Y_N),\mathcal C_N(A,G,\phi)\right),
```

and

```math
W_N:=Z_N-\Gamma_N(Y_N).
```

Therefore

```math
\widetilde{\mathscr A}_N^{press/op+collar}
=
-E_{pc,N}+\mathcal G_N^{ell/collar}
=
-{1\over2}\|W_N\|_{pc,N}^2.
\tag{RSD.1}
```

This is the correct relative Schur object.  It removes the graph-parallel
pressure/collar energy and leaves only the relative pressure/collar defect.

## 1. The raw no-self-birth estimate is false for the raw clock

The note

```text
mcp-relativeschurcomplementpresscollarconstructionattempt-a-globalsamepacketfullclockfromoriginaldata-a-6234256e63.md
```

states that closure would follow from

```math
(d\Omega_N^{press/RHS}+d\Omega_N^{collar})_{top}
\le
C\,d\Omega_N^{rel.defect}
+
\text{paid channels}.
\tag{RSD.2}
```

This estimate cannot be true if
\(d\Omega_N^{press/RHS}+d\Omega_N^{collar}\) means the raw positive variation
of the graph-parallel pressure/collar energy.

The obstruction is elementary.  In the finite-dimensional model

```math
Z=\Gamma(Y)=Y,
\qquad
W=Z-\Gamma(Y)=0,
\qquad
E_{pc}={1\over2}Z^2,
```

the relative defect clock is zero:

```math
d\Omega^{rel.defect}=0.
```

But the graph-parallel energy can still have positive variation:

```math
dE_{pc}
=
Y\,dY.
```

Thus

```math
(dE_{pc})_+>0
\quad\text{while}\quad
d\Omega^{rel.defect}=0.
```

So the raw top-rank pressure/collar positive variation cannot be controlled by
the relative defect.  The graph-parallel part is not self-birth and not a
defect; it is the pressure/collar readout of the driving material variables.

## 2. Correct decomposition

The pressure/collar clock must be decomposed as

```math
d\Omega_N^{pc,raw}
\le
C\,d\Omega_N^{graph-driver}
+
C\,d\Omega_N^{rel.defect}
+
dR_N^{legal}.
\tag{RSD.3}
```

Here

```math
d\Omega_N^{graph-driver}
```

is the positive variation created by differentiating the graph
\(\Gamma_N(Y_N)\).  Since \(Y_N\) consists of the same material variables

```math
v,\ A,\ G,\ \phi,\ \mathbb P_A,\ S,\ \text{annular stress data},
```

this graph-driver term is already a coordinate of the same participation-law
strain packet.  It belongs to the primitive PLS driver clock, not to a separate
pressure/collar self-birth account.

The relative-defect term is the part controlled by the Schur storage:

```math
d\Omega_N^{rel.defect}
\sim
\left[d\left({1\over2}\|W_N\|_{pc,N}^2\right)\right]_+
+
\left|\langle W_N,\dot H_{pc,N}W_N\rangle\right|dt.
\tag{RSD.4}
```

The bounded-below Schur storage `(RSD.1)` can only pay `(RSD.4)`.  It cannot
pay the graph-driver part, because the graph-driver part remains when \(W_N=0\).

## 3. What the Schur correction actually proves

The Schur construction proves this corrected implication:

```math
d\widetilde{\mathscr A}_N^{press/op+collar}
+
c_N\,d\Omega_N^{rel.defect}
\le
dR_N^{defect}
\tag{RSD.5}
```

provided the relative defect equation has only paid forcing:

```math
dR_N^{defect}
\le
C\left(
d\Omega_N^{lower}
+
d\Omega_N^{strain/frame}
+
dD_N^{vis/rad}
+
d\Omega_N^{annular}
\right)
+
dR_N^{legal}.
\tag{RSD.6}
```

This is the right lower-bound use of

```math
\widetilde{\mathscr A}_N^{press/op+collar}
=-{1\over2}\|W_N\|_{pc,N}^2.
```

It is noncircular only for the defect \(W_N\), not for the raw pressure/collar
graph energy.

## 4. The remaining primitive driver

After the split, the remaining top-rank object is not pressure/collar
self-birth.  It is the graph-driver part of the same material PLS packet:

```math
d\Omega_N^{graph-driver}
\subset
d\Omega_N^{PLS,primitive}.
\tag{RSD.7}
```

In physical variables this is the same moving low-high pressure-stress /
cubic-collar participation-law-strain interface already isolated by the
top-rank attack:

```math
F_j^{LH}
\simeq
\nabla_aL_G^{-1}\Delta_j^a(B_{<j-C}B_j),
```

with the higher collar top term

```math
\partial_tD_a^\beta A
=
-A\,D_a^\beta B
+
\text{lower products}.
```

Those terms are graph-driver terms.  They are not relative graph defects.

## 5. Correct closure statement

The corrected pressure/operator plus collar entropy line is therefore

```math
d\widetilde{\mathscr A}_N^{press/op+collar}
+
c_N\,d\Omega_N^{rel.defect}
\le
C\,d\Omega_N^{PLS,primitive}
+
dR_N^{legal}.
\tag{RSD.8}
```

This is not the final full-clock bound by itself.  It says the Schur
correction removes the pressure/collar lower-bound circularity and leaves the
original primitive PLS driver.

Thus the final noncircular theorem is exactly:

```math
\int_0^{T^*}d\Omega_N^{PLS,primitive}<\infty,
\tag{RSD.9}
```

where the primitive clock is the full participation-law-strain motion of the
original transported material history, not the raw elliptic/collar graph
energy.

## Verdict

The supplied Schur complement is correct and useful.  It does not prove the
raw top-rank no-self-birth estimate.  It proves the right separation:

```math
\text{pressure/collar raw motion}
=
\text{graph-driver PLS motion}
+
\text{relative defect motion}.
```

The relative defect is the part paid by the Schur storage.  The graph-driver
part is the same moving material pressure-strain interface that remains as the
primitive PLS clock.
