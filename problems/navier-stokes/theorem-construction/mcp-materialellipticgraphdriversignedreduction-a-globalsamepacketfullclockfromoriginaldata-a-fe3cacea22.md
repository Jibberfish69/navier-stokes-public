# MaterialEllipticGraphDriverSignedReduction.A

Status: pressure/collar sector closure for the graph-compatible clock.  This
does not close the whole free-material PLS clock; it closes the pressure/collar
part without asking a normal Schur storage to pay tangent graph motion.

## 1. Tangent-normal split of the pressure/collar record

Work on one smooth transported material packet.  Let

```math
Z_N=(q,C_N),
\qquad
Z_N=\Gamma_N(Y_N)+W_N,
```

where

```math
\Gamma_N(Y_N)
=
\left(
L_G^{-1}R(Y_N),\,
\mathcal C_N(A,G,\phi,\mathbb P_A)
\right)
```

is the forced elliptic/collar graph determined by the same material variables

```math
Y_N=(v,A,G,\phi,\mathbb P_A).
```

Then

```math
\dot Z_N
=
D\Gamma_N(Y_N)\dot Y_N+\dot W_N.
```

Thus the raw pressure/collar clock splits as

```math
d\Omega_N^{press/RHS}
+d\Omega_N^{collar}
\le
C\,d\Omega_N^{rel.defect}
+C\,d\Omega_N^{graph.driver}
+dR_N^{legal}.
\tag{1}
```

The Schur storage

```math
\widetilde{\mathscr A}_N^{press/op+collar}
=
-{1\over2}\|W_N\|_{pc,N}^2
```

pays only the normal defect part:

```math
d\widetilde{\mathscr A}_N^{press/op+collar}
+c_N\,d\Omega_N^{rel.defect}
\le
dR_N^{legal}
```

after the usual lower-rank/interface terms are put in \(dR_N^{legal}\) or in
the already retained material clock.  The tangent term
\(D\Gamma_N(Y_N)\dot Y_N\) must be read as motion of the same material graph.

## 2. Pressure graph driver

The material pressure graph is

```math
L_Gq=R,
\qquad
L_G=-\operatorname{div}_a(G\nabla_a),
```

with

```math
R(Y_N)=A_{\ell i}A_{kj}\partial_{a_\ell}v_j\,\partial_{a_k}v_i.
```

Differentiating the graph gives

```math
\dot q
=
L_G^{-1}\dot R
-L_G^{-1}(\dot L_G)q.
\tag{2}
```

Since

```math
\dot G=-2ASA^\top,
```

we have

```math
(\dot L_G)q
=
-\operatorname{div}_a(\dot G\nabla_aq)
=
2\operatorname{div}_a(ASA^\top\nabla_aq).
\tag{3}
```

The second term in (2) is coefficient/frame motion.  It is controlled by the
same strain/frame and Helmholtz--Leray/Stokes service already in the material clock:

```math
\|L_G^{-1}(\dot L_G)q\|_{pc,N}
\le
C_N\,d\Omega_N^{strain/frame}
+dR_N^{legal}.
\tag{4}
```

For the first term, differentiate \(R\):

```math
\dot R
=
(\dot A)A\nabla v\nabla v
+A(\dot A)\nabla v\nabla v
+AA\nabla\dot v\nabla v
+AA\nabla v\nabla\dot v.
\tag{5}
```

The coefficient terms are strain/frame terms because

```math
\dot A=-A(\nabla_a v)A.
\tag{6}
```

For the velocity terms, use the material Navier-Stokes law:

```math
\dot v
+A^\top\nabla_aq
=
\nu\operatorname{div}_a(G\nabla_av).
\tag{7}
```

The viscous part of (7) gives \(dD_N^{vis}\) plus legal integration-by-parts
collar terms.  The pressure-gradient part is the graph feedback.  In principal
Eulerian notation, with \(B=\nabla u\),

```math
R=\operatorname{tr}(B^2),
\qquad
D_tB=-B^2-\nabla^2p+\nu\Delta B,
```

so

```math
D_tR
=
-2\operatorname{tr}(B^3)
-2S:\nabla^2p
+2\nu B:\Delta B.
\tag{8}
```

The term \(-2S:\nabla^2p\) is not an independent pressure-lobe source.  It is
the pressure-Hessian coordinate of the same material strain equation

```math
D_tS+S^2+\Omega^2+\nabla^2p=\nu\Delta S.
\tag{9}
```

Thus the pressure-gradient feedback in (5) is either tangent motion of the
forced graph, paid by strain/frame/Helmholtz--Leray service, or normal mismatch \(W_N\),
paid by the Schur defect.  There is no third pressure-only account.

Consequently,

```math
d\Omega_N^{R-driver}
\le
C_N\left(
d\Omega_N^{strain/frame}
+dD_N^{vis}
+d\Omega_N^{rel.defect}
\right)
+dR_N^{legal}.
\tag{10}
```

## 3. Collar graph driver

The collar graph is

```math
C_N=\mathcal C_N(A,G,\phi,\mathbb P_A).
```

Since the cutoff is transported,

```math
(\partial_t+u\cdot\nabla)\phi=0,
```

all collar motion comes from \(A,G,\mathbb P_A\) and fixed material
differentiation.  Differentiating the collar graph gives

```math
\dot C_N
=
D_A\mathcal C_N\,\dot A
+D_G\mathcal C_N\,\dot G
+D_{\mathbb P}\mathcal C_N\,\dot{\mathbb P}_A.
\tag{11}
```

The first two terms are strain/frame service by (3) and (6).  The projector
motion \(\dot{\mathbb P}_A\) is determined by the same \(A,G\) variation in the
material Helmholtz--Leray/Stokes constraint, hence it is Helmholtz--Leray/collar/base service plus
legal lower-rank residue:

```math
d\Omega_N^{collar,driver}
\le
C_N\left(
d\Omega_N^{strain/frame}
+d\Omega_N^{Helmholtz--Leray/Stokes}
+d\Omega_N^{collar/base}
\right)
+dR_N^{legal}.
\tag{12}
```

## 4. Sector estimate

Combining (1), (10), and (12) gives the pressure/collar sector estimate:

```math
d\Omega_N^{press/RHS}
+d\Omega_N^{collar}
\le
C_N d\Omega_N^{rel.defect}
+C_N\left(
d\Omega_N^{strain/frame}
+d\Omega_N^{Helmholtz--Leray/Stokes}
+d\Omega_N^{collar/base}
+dD_N^{vis}
\right)
+dR_N^{legal}.
\tag{13}
```

Equivalently, with the Schur storage included,

```math
d\widetilde{\mathscr A}_N^{press/op+collar}
+c_N\left(
d\Omega_N^{press/RHS}
+d\Omega_N^{collar}
\right)
\le
C_N\left(
d\Omega_N^{strain/frame}
+d\Omega_N^{Helmholtz--Leray/Stokes}
+d\Omega_N^{collar/base}
+dD_N^{vis}
\right)
+dR_N^{legal}.
\tag{14}
```

This is the correct replacement for the false standalone pressure/collar
entropy law.  The Schur term pays normal pressure/collar defect.  The tangent
pressure/collar motion is exactly the movement of the forced elliptic/collar
graph and is paid by the same material strain, coefficient, Helmholtz--Leray/collar, and
viscous channels.

## 5. What remains after this sector closes

The pressure/collar positive-part obstruction is not the frontier after (13).
It has been absorbed into the graph-compatible PLS clock.  The remaining
Gold-side object is the finite rectified action of the free material PLS driver
itself:

```math
\int_0^{T^*}d\Omega_N^{PLS,graph}<\infty.
```

This note closes the pressure/collar sector of that clock; it does not claim a
standalone finite-action theorem for the whole graph-compatible PLS record.
