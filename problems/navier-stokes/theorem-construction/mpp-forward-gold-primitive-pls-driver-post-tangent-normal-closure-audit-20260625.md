---
theorem_id: forward-gold-primitive-pls-driver-post-tangent-normal-closure-audit-20260625
status: exact-frontier-audit-installed; pressure-collar-and-retained-compactness-branches-closed-but-primitive-pls-clock-remains-continuation-equivalent
logical_landing_node: global_same_packet_full_clock_from_original_data
edge_effect: >-
  Records the checked post-tangent-normal state of the forward-gold route.
  The supplied tangent-normal pressure/collar split is valid and closes the
  pressure/operator plus collar sector as a sector reduction: Schur pays the
  normal defect, and tangent graph motion is strain/frame, Hodge/collar, and
  viscous service of the same material packet. Compactness/rigidity closes the
  retained-low-coefficient branch of the remaining primitive graph driver.
  The only branch left is escape or positive variation of the low material
  coefficient itself, which is exactly the continuation-depth material record.
  Therefore the remaining theorem is not a pressure/collar theorem, not a
  compactness theorem, not a Volterra/payback theorem, and not a wording issue;
  it is the finite primitive PLS clock / finite superheat material residence
  theorem, which is equivalent to the fixed H^s continuation readout.
parents:
  - problems/navier-stokes/live-theorem-edge.yaml
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-tangent-normal-identity-primitive-driver-audit-20260625.md
  - problems/navier-stokes/theorem-construction/mcp-primitivegraphdriver-compactness-noselfbirth-attack-20260625.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-superheat-residence-fixed-hs-equivalence-20260625.md
  - problems/navier-stokes/theorem-construction/mcp-primitiveplsdriver-pointwise-contraction-ancestry-test-20260625.md
  - problems/navier-stokes/theorem-construction/mcp-primitiveplsdriver-temporal-volterra-payback-test-20260625.md
---

# Primitive PLS Driver Post Tangent-Normal Closure Audit

Date: 2026-06-25

## 0. Object being audited

The supplied tangent-normal correction uses

```math
Z_N=(q,C_N),
\qquad
Z_N=\Gamma_N(Y_N)+W_N,
\qquad
dZ_N=D\Gamma_N(Y_N)dY_N+dW_N .
\tag{PTC.1}
```

This is the right split for the pressure/operator and collar coordinates.  It
separates normal defect motion from tangent motion of the forced
elliptic/collar graph.

The raw pressure/collar clock is therefore controlled by

```math
d\Omega_N^{press/RHS}+d\Omega_N^{collar}
\le
C_N d\Omega_N^{rel.defect}
+C_Nd\Omega_N^{graph.driver}
+dR_N^{legal}.
\tag{PTC.2}
```

The Schur storage

```math
\widetilde{\mathscr A}_N^{press/op+collar}
=
-{1\over2}\|W_N\|_{pc,N}^2
\tag{PTC.3}
```

pays \(d\Omega_N^{rel.defect}\).  The tangent graph driver is not a pressure-only
remainder.  Differentiating

```math
L_Gq=R(Y_N),
\qquad
L_G=-\operatorname{div}_a(G\nabla_a),
\tag{PTC.4}
```

gives

```math
\dot q
=
L_G^{-1}\dot R
-
L_G^{-1}(\dot L_G)q .
\tag{PTC.5}
```

The terms \(\dot L_G,\dot A,\dot G,\dot{\mathbb P}_A\), and the collar graph
derivative are strain/frame, Hodge/collar, or viscous service after using the
same material Navier--Stokes law

```math
\dot v+A^\top\nabla_aq
=
\nu\operatorname{div}_a(G\nabla_av).
\tag{PTC.6}
```

Thus the pressure/operator plus collar sector has been reduced to the same
material participation law.  It is no longer a separate live obstruction.

## 1. What remains after the sector reduction

After the tangent-normal split, top-strain storage, Hodge selector correction,
base collar handling, relative Schur defect, and base annular stress storage,
the remaining active term is the primitive graph-compatible free-material PLS
driver:

```math
d\Omega_N^{PLS,primitive}
\simeq
\sum_j w_j
\left[
\left\langle
H_{j,N},
\mathcal M_{<j-C,N}H_{j,N}
\right\rangle
\right]_+dt
+dR_N^{paid}.
\tag{PTC.7}
```

Here \(\mathcal M_{<j-C,N}\) is the moving low material deformation coefficient:
strain, pressure Hessian through the strain equation, coefficient/frame motion,
Hodge/Stokes projection motion, transported collar motion, and viscous graph
service.  It is one pressure-viscosity-incompressibility-velocity material
transaction.

## 2. Retained coefficient branch

The compactness/no-self-birth attack proves the retained-coefficient branch.
Assume a normalized failure window with

```math
\int_{I_m}d\Omega_{N,m}^{PLS,primitive}=1
\tag{PTC.8}
```

while all already-paid branches tend to zero:

```math
\int_{I_m}
\left(
dD_{N,m}^{vis/rad}
+d\Omega_{N,m}^{top\ strain/frame}
+d\Omega_{N,m}^{base\ collar}
+d\Omega_{N,m}^{recirc}
+dR_{N,m}^{legal}
\right)
\to0.
\tag{PTC.9}
```

If the low coefficient \(\mathcal M_{<j-C,N,m}\) is retained on the same
material carrier, then same-carrier compactness gives

```math
H_{j,N,m}\to H_{j,N,*},
\qquad
\mathcal M_{<j-C,N,m}\to \mathcal M_{<j-C,N,*}.
\tag{PTC.10}
```

The zero-loss rigidity already installed for the retained packet gives

```math
H_{j,N,*}=0
\quad
\text{modulo the harmless gauge/null space.}
\tag{PTC.11}
```

Therefore the limiting primitive driver vanishes:

```math
\left[
\left\langle
H_{j,N,*},
\mathcal M_{<j-C,N,*}H_{j,N,*}
\right\rangle
\right]_+
=0,
\tag{PTC.12}
```

contradicting the normalization in `(PTC.8)`.  Thus the retained-low-coefficient
branch is closed.

## 3. Coefficient escape is the continuation record

The only way the primitive driver avoids the retained-compactness rigidity
argument is that the low material coefficient is not retained:

```math
\int_{I_m}
\|\mathcal M_{<j-C,N,m}(t)\|_{\mathcal X_N}\,dt
\to\infty
\quad
\text{or concentrates without retained limit.}
\tag{PTC.13}
```

This is not an external compactness defect.  The coefficient is the same
material record:

```math
S_{<j-C}S,
\qquad
S_{<j-C}\nabla^2p,
\qquad
S_{<j-C}\dot G,
\qquad
S_{<j-C}\dot{\mathbb P}_A,
\qquad
\text{transported collar and annular stress service}.
\tag{PTC.14}
```

So `(PTC.13)` is exactly positive growth of the continuation-depth material
record:

```math
d[\log(1+\mathcal P_N^{mat})]_+
\le
C_Nd\Omega_N^{PLS,primitive}
+dR_N^0.
\tag{PTC.15}
```

It cannot be demoted to legal residual without breaking the one-fluid
participation law.

## 4. Equivalence to continuation strength

The installed superheat-residence readout proves the exact consumer bridge:

```math
\int_0^{T_*}d\Omega_N^{PLS,primitive}<\infty
\quad\Longrightarrow\quad
\sup_{t<T_*}\mathcal P_N^{mat}(t)<\infty .
\tag{PTC.16}
```

For \(s>5/2\), the fixed finite-depth material readout gives

```math
\sup_{t<T_*}\mathcal P_{N_s}^{mat}(t)<\infty
\quad\Longrightarrow\quad
\sup_{t<T_*}\|u(t)\|_{H^s}<\infty,
\tag{PTC.17}
```

and the classical continuation criterion restarts the smooth solution past
\(T_*\).

Conversely, a bounded continuation-depth material record controls the same
annular density and hence the primitive superheat residence.  Thus the remaining
finite-clock theorem is continuation-strength, not an auxiliary clock wording
problem.

## 5. Audit conclusion

The supplied tangent-normal split is correct and necessary.  It closes the
pressure/operator and collar sector as a same-packet sector reduction.  It does
not close the primitive graph-compatible PLS driver.

The checked post-split frontier is:

```math
\boxed{
\int_0^{T_*}
d\Omega_N^{PLS,primitive}
<\infty .
}
\tag{PTC.18}
```

Equivalently:

```math
\boxed{
\exists\,\mathscr A_N(t)\ge -C_N(u_0)
\quad\text{such that}\quad
d\mathscr A_N
+c_Nd\Omega_N^{PLS,primitive}
\le
dR_N^{legal}.
}
\tag{PTC.19}
```

All checked shortcuts have now been sorted:

```math
\text{pressure/collar tangent-normal split}
\quad\text{closes only the pressure/collar sector,}
\tag{PTC.20}
```

```math
\text{compactness/rigidity}
\quad\text{closes only the retained-low-coefficient branch,}
\tag{PTC.21}
```

```math
\text{Volterra/later payback}
\quad\text{attaches the history but does not rectify the positive clock,}
\tag{PTC.22}
```

```math
\text{pointwise incompressibility, trace-free strain, pressure ellipticity, and
shell gap}
\quad\text{do not give strict contraction.}
\tag{PTC.23}
```

Therefore the remaining hard theorem is exactly finite positive variation of
the original transported material coefficient acting on the weighted active
response.  In the current checked repo state, that theorem is equivalent to the
fixed-\(H^s\) continuation bridge and is not yet proved by the installed
ingredients.
