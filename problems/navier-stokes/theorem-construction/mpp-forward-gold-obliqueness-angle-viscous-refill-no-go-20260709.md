---
theorem_id: forward-gold-obliqueness-angle-viscous-refill-no-go-20260709
created: 2026-07-09
problem: navier-stokes
route: forward-gold / c0 / Fable obliqueness ledger / viscous refill
status: proved-local-jet-no-go-for-one-way-angle-monovariant; global-recurrence-rigidity-open
source_refs:
  - problems/navier-stokes/theorem-construction/theorem-b-consolidated-statement-and-wall-maps-20260709.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-critical-height-native-increment-current-fixed-face-certificate-20260709.md
completion_truth: >-
  This note proves that the vorticity-tilt angle is not a closed one-way
  resource under the full Navier-Stokes evolution. A compact divergence-free
  cubic jet can leave u, grad u, grad2 u, and Delta S fixed at a point while
  prescribing Delta omega arbitrarily. Therefore the viscous tangent term can
  refill or drain the sheet-normal vorticity fraction with either sign while
  the instantaneous strain, vorticity, and affine service are unchanged. The
  Fable angle mechanism remains a correct inviscid held-frame drift, but it is
  not a Gold monovariant without an additional global theorem controlling the
  viscous orientation and frame terms. This refutes that shortcut; it does not
  close Gold.
---

# Viscous refill no-go for the obliqueness angle

## 1. Exact direction equation

Let `omega` be nonzero and put

```math
\xi=\frac{\omega}{|\omega|},
\qquad
\Pi_{\xi^\perp}=I-\xi\otimes\xi.
\tag{VAN.1}
```

The vorticity equation

```math
D_t\omega=S\omega+\nu\Delta\omega
\tag{VAN.2}
```

gives the exact orientation law

```math
\boxed{
D_t\xi
=
\Pi_{\xi^\perp}S\xi
+\frac{\nu}{|\omega|}
\Pi_{\xi^\perp}\Delta\omega .
}
\tag{VAN.3}
```

The first term is the inviscid alignment drift. The second is a tangent
diffusion term with no pointwise sign.

For a simple strain eigenvalue `lambda_i` with unit eigenvector `e_i`, the
gradient equation gives

```math
D_tS=-S^2-W^2-H+\nu\Delta S,
\tag{VAN.4}
```

and hence

```math
e_j\cdot D_te_i
=
\frac{e_j\cdot(-W^2-H+\nu\Delta S)e_i}
{\lambda_i-\lambda_j},
\qquad j\ne i.
\tag{VAN.5}
```

Thus a vorticity angle relative to the strain frame contains both the tangent
diffusion in `(VAN.3)` and the viscous/frame row in `(VAN.5)`.

## 2. The sheet ratio

In the held sheet frame

```math
S=\operatorname{diag}(a,a,-2a),
\qquad a>0,
\tag{VAN.6}
```

write `omega=(omega_parallel,omega_3)` with
`p=|omega_parallel|>0` and `q=omega_3 ne 0`. If the normal frame is held, then

```math
\boxed{
D_t\log\frac{|q|}{p}
=
-3a
+\nu\left(
\frac{(\Delta\omega)_3}{q}
-\frac{\omega_\parallel\cdot
(\Delta\omega)_\parallel}{p^2}
\right).
}
\tag{VAN.7}
```

The `-3a` term is Fable's exact inviscid drain. The bracket is not determined
by `S`, `omega`, the pressure Hessian, or the affine service at the point. At
`q=0`, the same term can create a nonzero normal component instantly.

## 3. A compact divergence-free jet with arbitrary refill

For any vector `b in R^3`, define the homogeneous cubic field

```math
v_b(x)
=
\frac1{20}|x|^2(b\times x).
\tag{VAN.8}
```

It is divergence-free because `x dot (b cross x)=0`. Since `b cross x` is
linear,

```math
\Delta\big(|x|^2(b\times x)\big)
=10(b\times x).
\tag{VAN.9}
```

Consequently

```math
\Delta v_b=\frac12 b\times x,
\qquad
\Delta(\nabla\times v_b)=b,
\qquad
\Delta S[v_b]=0.
\tag{VAN.10}
```

Because `v_b` is cubic,

```math
v_b(0)=0,
\qquad
\nabla v_b(0)=0,
\qquad
\nabla^2v_b(0)=0.
\tag{VAN.11}
```

The jet can be made compact without changing any of these identities. Indeed,
homogeneity and `div v_b=0` give

```math
\nabla\times(x\times v_b)=-5v_b.
\tag{VAN.12}
```

Choose a cutoff `chi=1` near the origin and set

```math
\widetilde v_b
=
\nabla\times\left(-\frac15\chi,x\times v_b\right).
\tag{VAN.13}
```

Then `widetilde v_b` is smooth, compactly supported, divergence-free, and
equals `v_b` near the origin. Adding it to any smooth divergence-free datum
therefore preserves the local velocity two-jet and `Delta S` while changing
`Delta omega(0)` by the arbitrary vector `b`.

The support can also be shrunk without changing that third jet:

```math
\widetilde v_{b,\rho}(x)
=
\rho^3\widetilde v_b(x/\rho).
\tag{VAN.14}
```

Its first-gradient size is `O(rho^2)`, so its nonlocal perturbation of the
same-field pressure Hessian tends to zero with `rho`, while
`Delta omega(0)=b` remains fixed. Therefore the viscous bracket in `(VAN.7)`
can be given either sign, and arbitrarily large magnitude, without changing
the instantaneous sheet strain, vorticity, affine service, or strain-frame
viscous term at the point.

## 4. Gold consequence

The physical refill is same-fluid diffusion of neighboring vorticity into the
selected point. It is not an external supplier and cannot be removed by the
one-owner ontology. The sheet's inviscid sharpening does drain its normal
vorticity fraction at rate `3a`, but the full viscous flow does not make that
fraction a bounded one-way resource.

Hence the implication

```math
\text{held aim + sharpening}
\Longrightarrow
\text{monotone exhaustion of the obliqueness angle}
\tag{VAN.15}
```

is false at the local equation level. A valid Gold use of the angle must add a
global reachable-history theorem that signs or absorbs both `(VAN.3)` and
`(VAN.5)` on every retained rung, or else prove that recurrent viscous refill
forces a typed route-out. Naming the angle, its bounded range, or its inviscid
drain does not supply that theorem.

This is a checked route obstruction, not a regularity proof.
