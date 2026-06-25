# MaterialEllipticGraphDriverSignedReduction.A

Status: conditional signed reduction.  This note shows the better object after the no-go for standalone raw pressure/collar Schur entropy.

## 0. Tangent-normal split

Let

```math
Z_N=(q,C_N),\qquad Z_N=\Gamma_N(Y_N)+W_N.
```

Then

```math
\dot Z_N=D\Gamma_N(Y_N)\dot Y_N+\dot W_N.
```

The Schur storage

```math
\widetilde{\mathscr A}_N^{press/op+collar}=-{1\over2}\|W_N\|_{pc,N}^2
```

can pay only the normal part \(\dot W_N\).  The tangent part \(D\Gamma_N(Y_N)\dot Y_N\) must be paid by the material graph-driver sector.

Thus the raw pressure/collar clock must be decomposed as

```math
d\Omega_N^{press/collar,raw}
\lesssim d\Omega_N^{rel.defect}+d\Omega_N^{graph.driver}+dR_N^{legal}.
```

## 1. Material pressure graph derivative

The material pressure graph is

```math
L_Gq=R,
\qquad
L_G=-\operatorname{div}_a(G\nabla_a),
```

with

```math
R=A_{\ell i}A_{kj}\partial_{a_\ell}v_j\partial_{a_k}v_i.
```

Differentiating gives

```math
L_G\dot q=\dot R-\dot L_Gq.
```

Since

```math
\dot G=-2ASA^\top,
\qquad
\dot L_Gq=2\operatorname{div}_a(ASA^\top\nabla_aq),
```

we obtain

```math
L_G\dot q=\dot R-2\operatorname{div}_a(ASA^\top\nabla_aq).
```

The second term is coefficient/frame service and is strain-paid.

## 2. Principal form of \(\dot R\)

In Eulerian principal notation, let \(B=\nabla u\).  Then

```math
R=\operatorname{tr}(B^2),
\qquad
D_tB=-B^2-\nabla^2p+\nu\Delta B.
```

Therefore

```math
D_tR
=2\operatorname{tr}(BD_tB)
=-2\operatorname{tr}(B^3)-2S:\nabla^2p+2\nu B:\Delta B.
```

The terms split as follows:

1. \(-2\operatorname{tr}(B^3)\): strain/vorticity cubic, paid only in the signed strain packet.
2. \(2\nu B:\Delta B\): viscous tower plus integration-by-parts/legal terms.
3. \(-2S:\nabla^2p\): the pressure-Hessian signed strain partner term.

The third term is the decisive point.  It is not paid by the pressure Schur normal storage.  It is paid only if kept inside the signed strain equation

```math
D_tS+S^2+\Omega^2+\nabla^2p=\nu\Delta S.
```

For a top strain eigenpair \(Se=\lambda e\),

```math
D_t\lambda=-\lambda^2+|\Omega e|^2-e\cdot\nabla^2p\,e+
u e\cdot\Delta S\,e.
```

Hence the pressure Hessian is part of the signed derivative of the strain-log storage, not an independent positive pressure clock.

## 3. Correct combined form

The corrected entropy must therefore have the form

```math
\mathscr E_N
=\mathscr B_N^{strain/log}
+\widetilde{\mathscr A}_N^{press/op+collar}
+\mathscr A_N^{annular/interface}
+\cdots
```

and satisfy schematically

```math
d\mathscr E_N
+c_N d\Omega_N^{rel.defect}
+c_N d\Omega_N^{signed\ graph.driver}
\le dR_N^{legal}+\text{viscous paid terms}.
```

The standalone raw positive pressure/collar law is false.  The useful replacement is the signed full-packet law: Schur pays the normal pressure/collar defect, while strain-log/material storage pays the tangent graph driver.

## Verdict

The better object is not a different Schur correction.  It is the tangent-normal decomposition plus the signed material graph-driver identity.  The hard term is explicitly

```math
-2S:\nabla^2p,
```

and it belongs to the signed strain-log packet, not to a standalone pressure/collar Schur entropy.