# Primitive PLS Driver Pointwise Contraction / Ancestry Test

Date: 2026-06-25

Status: direct pressure-test installed; pointwise contraction and bare shell-ancestry packing do not close the primitive PLS driver.

## 0. Object

The live object is the primitive moving low-high participation-law--strain driver on one transported material history.  In shell form the active top-rank piece is

```math
d\Omega_N^{PLS,primitive}
\simeq
\sum_j w_j
\left[
\left\langle H_{j,N},
\mathcal M_{<j-C,N}H_{j,N}
\right\rangle
\right]_+dt
+dR_N^{paid}.
\tag{PCAT.1}
```

Here \(H_{j,N}\) is the active high shell of the same material packet, while
\(\mathcal M_{<j-C,N}\) is the lower-band material deformation coefficient
made from strain, pressure Hessian through the strain equation, material
coefficient motion, Helmholtz--Leray/Stokes projection motion, and transported collar
motion.  This is not a pressure-only, viscosity-only, or free scalar source.

The nonconditional closure would require either a bounded-below entropy

```math
\exists\,\mathscr A_N(t)\ge -C_N(u_0)
\quad\text{such that}\quad
d\mathscr A_N+c_N\,d\Omega_N^{PLS,primitive}
\le dR_N^{legal},
\tag{PCAT.2}
```

or an equivalent strict no-self-birth / contraction theorem for `(PCAT.1)`.

This note tests two possible shortcuts:

1. pointwise contraction from incompressibility, trace-free strain, pressure
   ellipticity, or the shell gap;
2. bare shell-ancestry descent from the lower coefficient to the active shell.

## 1. Pointwise contraction is false

A pointwise contraction would need the positive low-high quadratic form to be
absorbed by heat-scale loss or already-paid terms solely from the local
same-packet algebra.  The following smooth divergence-free normal form rules
that out.

Work on \(T^3\).  Let the low field be

```math
u^L(x)=\left(0,{2a\over K}\sin(Kx_1),0\right).
\tag{PCAT.3}
```

It is divergence-free.  Its strain has

```math
S_L(0)
=
\begin{pmatrix}
0&a&0\\
a&0&0\\
0&0&0
\end{pmatrix},
\tag{PCAT.4}
```

so \(e_+=(1,1,0)/\sqrt2\) is a positive strain direction with eigenvalue \(a\).

Choose a high wave vector \(\xi=L(1,-1,0)\), so \(\xi\cdot e_+=0\).  A high
wave packet with polarization \(e_+\), localized where \(\cos(Kx_1)>0\), is
divergence-free up to an \(O(L^{-1})\) Leray correction.  After applying the
Leray projection, the correction vanishes in the \(L/K\to\infty\) limit, and
the active high shell \(H_j\) satisfies

```math
\int H_j\cdot S_L H_j\,dx
\ge
c\,a\int |H_j|^2\,dx
\tag{PCAT.5}
```

for a fixed \(c>0\).

Thus the positive low-high PLS driver can be order

```math
w_j a\|H_j\|_2^2.
\tag{PCAT.6}
```

The trace-free condition only supplies a negative eigen-direction somewhere
else.  It does not stop the selected high shell from aligning with the positive
direction on the retained material annulus.  The pressure/incompressibility
law does not give a separate sign, because the selected pressure-Hessian lobe
has already been placed into the same strain equation

```math
D_tS+S^2+\Omega^2+\nabla^2p=\nu\Delta S.
\tag{PCAT.7}
```

So the pointwise same-packet algebra admits positive primitive driver.  The
closure cannot be a local sign theorem for
\(\langle H_j,\mathcal M_{<j-C,N}H_j\rangle\).

## 2. The shell gap gives subheat absorption, not full contraction

The installed subheat split already proves that when the material rate is below
the heat rate,

```math
\Theta_j^{mat}\le \delta2^{2j},
\tag{PCAT.8}
```

the pump is absorbed by same-shell viscosity:

```math
[\mathcal M_j^{mov}]_+
\le {1\over2}d_j+r_j^{legal}.
\tag{PCAT.9}
```

The remaining branch is precisely

```math
\Theta_j^{mat}>\delta2^{2j}.
\tag{PCAT.10}
```

That is not hidden recirculation.  It says the lower material coefficient is
itself moving at a super-heat rate relative to the child shell.  Therefore the
child is not free, but the payment has moved into the same material-history
record of the lower coefficient.

## 3. Bare shell ancestry is not enough

Decompose the lower coefficient into shells:

```math
\mathcal M_{<j-C,N}=\sum_{k<j-C}\mathcal M_{k,N}.
\tag{PCAT.11}
```

The contribution from \(k\) has the schematic form

```math
w_j
\left[
\left\langle H_{j,N},\mathcal M_{k,N}H_{j,N}\right\rangle
\right]_+dt.
\tag{PCAT.12}
```

If \(k\) is far below \(j\) and still satisfies the superheat condition for
the child, then the parent coefficient is extremely large relative to its own
heat scale.  That is a real material-record event at shell \(k\).  But the
child cost `(PCAT.12)` is proportional to the child high-shell response
\(w_j\|H_{j,N}\|_2^2\), not only to the parent coefficient amplitude.

One lower coefficient can act as a multiplier on many child high shells during
the same time slice.  Assigning each child to the same parent shell is not an
injective finite reserve unless the parent reserve already contains the total
weighted child response.  That reserve is exactly the continuation-depth
material record / primitive full clock.

Thus the shell ordering supplies a true ancestry relation, but not by itself a
Carleson packing estimate:

```math
\sum_{j,k<j-C}
w_j
\left[
\left\langle H_{j,N},\mathcal M_{k,N}H_{j,N}\right\rangle
\right]_+
\not\le
C\,\text{finite parent reserve}
\tag{PCAT.13}
```

without an additional same-material entropy or no-self-birth contraction.

## 4. Exact conclusion

The physical picture remains intact:

```math
\text{an active shell is fed only by the same transported material history.}
\tag{PCAT.14}
```

The test proves the stronger negative fact needed at the frontier:

```math
\text{the finite clock is not produced by pointwise incompressibility,
trace-free strain, pressure ellipticity, or shell gap alone.}
\tag{PCAT.15}
```

The remaining nonconditional theorem is therefore not a pressure-partner
theorem and not a local sign theorem.  It is a time-history theorem for the
primitive full PLS driver:

```math
\boxed{
\exists\,\mathscr A_N(t)\ge -C_N(u_0)
\quad\text{with}\quad
d\mathscr A_N+c_N\,d\Omega_N^{PLS,primitive}\le dR_N^{legal},
}
\tag{PCAT.16}
```

or the equivalent strict no-self-birth estimate

```math
d\Omega_N^{PLS,primitive,self}
\le
\theta\,d\Omega_N^{PLS,primitive,self}
+dR_N^{paid},
\qquad 0\le\theta<1,
\tag{PCAT.17}
```

where the strict factor must come from temporal same-history structure, not
from the pointwise shell algebra tested above.

