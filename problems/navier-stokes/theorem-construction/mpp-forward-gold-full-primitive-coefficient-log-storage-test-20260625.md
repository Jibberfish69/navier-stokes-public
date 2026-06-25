---
theorem_id: forward-gold-full-primitive-coefficient-log-storage-test-20260625
status: direct-test-installed; full-coefficient-log-storage-does-not-produce-a-noncircular-entropy
logical_landing_node: global_same_packet_full_clock_from_original_data
edge_effect: >-
  Tests the strongest remaining local entropy candidate for the primitive
  graph-compatible PLS driver after the tangent-normal pressure/collar split.
  The full primitive self-adjoint coefficient controls the positive pump
  pointwise, but its material derivative has no strain-type negative Riccati
  square.  The derivative of the associated logarithmic storage therefore
  produces the next material-service variation of the same coefficient rather
  than a bounded-below drop controlling the clock.  This rules out the
  full-coefficient log storage as the missing available-participation entropy.
parents:
  - problems/navier-stokes/live-theorem-edge.yaml
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-tangent-normal-identity-primitive-driver-audit-20260625.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-primitive-pls-driver-post-tangent-normal-closure-audit-20260625.md
  - problems/navier-stokes/theorem-construction/mcp-primitivegraphdriver-pls-interface-direct-attack-20260625.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-superheat-strain-riccati-log-storage-reduction-20260625.md
---

# Full Primitive Coefficient Log Storage Test

Date: 2026-06-25

## 0. Object

After the tangent-normal pressure/collar split, the remaining primitive
graph-compatible free-material PLS driver has the top-rank form

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
\tag{FPC.1}
```

Here \(\mathcal M_{<j-C,N}\) is the same-material low-band deformation
coefficient.  It includes strain, pressure Hessian through the strain equation,
coefficient/frame motion, Hodge/Stokes projection motion, transported collar
motion, and viscous graph service.  It is one pressure-viscosity-
incompressibility-velocity plus strain transaction.

Let

```math
\mathcal K_{j,N}:=
\operatorname{Sym}\mathcal M_{<j-C,N}
\tag{FPC.2}
```

on the selected high-shell material packet, and let

```math
\mu_{j,N}^+(t)=\lambda_{\max}(\mathcal K_{j,N}(t))_+.
\tag{FPC.3}
```

Then the primitive driver obeys the pointwise readout

```math
\left[
\left\langle H_{j,N},\mathcal M_{<j-C,N}H_{j,N}\right\rangle
\right]_+
\le
\mu_{j,N}^+\,\|H_{j,N}\|_2^2
+dR_{j,N}^{skew/legal}.
\tag{FPC.4}
```

So the strongest possible local logarithmic candidate is

```math
B_{j,N}^{full}
:=
w_j e_{j,N}
\left[
\log{\mu_{j,N}^+\over \delta 2^{2j}}
\right]_+,
\qquad
e_{j,N}:=\|H_{j,N}\|_2^2 .
\tag{FPC.5}
```

If any one-shell storage can pay the full primitive clock, this is the natural
candidate.

## 1. Derivative of the candidate

Let

```math
L_{j,N}:=
\left[
\log{\mu_{j,N}^+\over \delta 2^{2j}}
\right]_+ .
\tag{FPC.6}
```

On the superheat set \(\mu_{j,N}^+>\delta2^{2j}\), differentiating gives

```math
{d\over dt}B_{j,N}^{full}
=
w_jL_{j,N}\dot e_{j,N}
+w_je_{j,N}{\dot\mu_{j,N}\over\mu_{j,N}}.
\tag{FPC.7}
```

The shell energy identity has the same-material form

```math
\dot e_{j,N}
+d_{j,N}^{vis/rad}
=
\left\langle H_{j,N},
\mathcal K_{j,N}H_{j,N}
\right\rangle
+r_{j,N}^{paid}.
\tag{FPC.8}
```

Therefore

```math
{d\over dt}B_{j,N}^{full}
+w_jL_{j,N}d_{j,N}^{vis/rad}
=
w_jL_{j,N}
\left\langle H_{j,N},\mathcal K_{j,N}H_{j,N}\right\rangle
+w_je_{j,N}{\dot\mu_{j,N}\over\mu_{j,N}}
+w_jL_{j,N}r_{j,N}^{paid}.
\tag{FPC.9}
```

To turn this into a one-way clock estimate for

```math
w_je_{j,N}\mu_{j,N}^+\,\mathbf 1_{\{\mu_{j,N}^+>\delta2^{2j}\}},
\tag{FPC.10}
```

the second term in `(FPC.9)` must supply a negative contribution comparable to

```math
-w_je_{j,N}\mu_{j,N}^+ .
\tag{FPC.11}
```

Equivalently, the coefficient eigenvalue would need a material law of the form

```math
\dot\mu_{j,N}
\le
-c(\mu_{j,N}^+)^2
+\text{already-paid terms}.
\tag{FPC.12}
```

That is exactly what makes the top-strain logarithmic storage work.

## 2. Why strain has the needed sign

For the strain tensor,

```math
D_tS+S^2+\Omega^2+\nabla^2p=\nu\Delta S .
\tag{FPC.13}
```

Along a top eigenvector \(e\) of \(S\),

```math
D_t\lambda
=
-\lambda^2
-e\cdot\Omega^2e
-e\cdot\nabla^2p\,e
+\nu e\cdot\Delta S e
+\text{frame terms}.
\tag{FPC.14}
```

The negative \(-\lambda^2\) is a real self-damping term.  After division by
\(\lambda\), it yields the negative clock \(-\lambda\), which is why the
top-strain log storage pays the top-strain superheat coordinate.

## 3. Why the full primitive coefficient does not have that sign

The full primitive coefficient is not a tensor satisfying `(FPC.13)`.  It is a
composite operator

```math
\mathcal K_{j,N}
=
\operatorname{Sym}
\left[
S_{<j-C}S
+S_{<j-C}\nabla^2p
+S_{<j-C}\dot G
+S_{<j-C}\dot{\mathbb P}_A
+S_{<j-C}\dot B_\psi
+\text{viscous graph service}
\right]
\tag{FPC.15}
```

after the tangent-normal reduction.

Its material derivative is

```math
\dot{\mathcal K}_{j,N}
=
\operatorname{Sym}
\left[
S_{<j-C}D_tS
+S_{<j-C}D_t\nabla^2p
+S_{<j-C}D_t\dot G
+S_{<j-C}D_t\dot{\mathbb P}_A
+S_{<j-C}D_t\dot B_\psi
+D_t(\text{viscous graph service})
\right]
+[\dot S_{<j-C},\mathcal M_N].
\tag{FPC.16}
```

The first term contains the strain damping from `(FPC.13)`, but the remaining
terms are not lower-order errors.  They are the material variation of the same
pressure/Hodge/collar/coefficient graph-driver:

```math
D_t\nabla^2p,\qquad
D_t\dot G,\qquad
D_t\dot{\mathbb P}_A,\qquad
D_t\dot B_\psi .
\tag{FPC.17}
```

The elliptic identity

```math
L_Gq=R(Y_N)
\tag{FPC.18}
```

gives

```math
D_t\nabla^2q
=
\nabla^2L_G^{-1}D_tR
-\nabla^2L_G^{-1}(D_tL_G)q
+\text{commutators}.
\tag{FPC.19}
```

The term \(D_tR\) contains \(D_t\nabla v\), hence pressure-Hessian feedback,
viscous strain-tower service, and coefficient/frame service.  This is the next
material-service variation of the same graph-compatible PLS driver.  It does
not produce a sign-definite \(-(\mu_{j,N}^+)^2\) term for the full coefficient.

Consequently the eigenvalue inequality available from `(FPC.16)` has the form

```math
\dot\mu_{j,N}
\le
C\,\mathfrak V_{j,N}^{PLS}
+\text{paid/legal terms},
\tag{FPC.20}
```

where \(\mathfrak V_{j,N}^{PLS}\) is the rectified material variation of the
same primitive coefficient.  It is not already finite from the installed
inputs.

## 4. Resulting storage identity

Substituting `(FPC.20)` into `(FPC.9)` gives

```math
{d\over dt}B_{j,N}^{full}
+w_jL_{j,N}d_{j,N}^{vis/rad}
\le
w_jL_{j,N}
\left\langle H_{j,N},\mathcal K_{j,N}H_{j,N}\right\rangle
+w_je_{j,N}{\mathfrak V_{j,N}^{PLS}\over\mu_{j,N}}
+dR_{j,N}^{paid/legal}.
\tag{FPC.21}
```

The first term on the right is not negative; it has the same orientation as the
pump.  The second term is the next material variation of the same primitive
driver.  Therefore \(B_{j,N}^{full}\) is not a bounded-below entropy whose drop
controls `(FPC.1)`.

Equivalently, the desired estimate

```math
d\mathscr A_N
+c_Nd\Omega_N^{PLS,primitive}
\le
dR_N^{legal},
\qquad
\mathscr A_N\ge -C_N(u_0),
\tag{FPC.22}
```

does not follow from the full-coefficient logarithmic storage.  The attempt
simply replaces the primitive clock by the rectified material variation of the
primitive coefficient.

## 5. Consequence

The tangent-normal pressure/collar split remains correct:

```math
\text{Schur pays normal defect,}
\qquad
\text{tangent graph motion lands in the same material PLS driver.}
\tag{FPC.23}
```

The full primitive coefficient log storage is the strongest local one-shell
candidate after that split, and it fails for a precise reason: the full
coefficient has no strain-type negative Riccati square.  Only the strain
coordinate has that sign.  The rest of the primitive coefficient is governed by
the material variation of the pressure/Hodge/collar/coefficient graph, which is
the same continuation-strength clock one level up in time.

Thus this candidate does not close the MPP.  The remaining Gold theorem is
unchanged but sharper:

```math
\boxed{
\text{prove finite rectified material variation of the primitive
graph-compatible PLS driver, or construct a different bounded-below
same-material entropy not based on the primitive coefficient eigenvalue.}
}
\tag{FPC.24}
```

