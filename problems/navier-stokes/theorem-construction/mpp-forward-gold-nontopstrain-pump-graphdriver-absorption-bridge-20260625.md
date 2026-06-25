---
theorem_id: forward-gold-nontopstrain-pump-graphdriver-absorption-bridge-20260625
status: bridge-installed; pressure-collar-sector-absorbed; primitive-pls-driver-remains
logical_landing_node: global_same_packet_full_clock_from_original_data
edge_effect: >-
  Connects the later full-pump alignment split to the already-installed
  material elliptic graph-driver signed reduction.  The non-top-strain pump
  left in FPA.19 should not be read as reopening a pressure/collar frontier.
  Its pressure/RHS and collar components split into Schur-normal defect plus
  tangent graph-driver motion.  The normal defect is paid by the relative
  Schur storage, and the tangent pressure/collar motion is strain/frame,
  Hodge/base-collar, and viscous graph-driver service.  The remaining
  unclosed object is the primitive free-material PLS driver, i.e. finite
  rectified positive action of the moving low-high same-material deformation
  coefficient.
parents:
  - problems/navier-stokes/live-theorem-edge.yaml
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-full-pump-alignment-bridge-direct-attack-20260625.md
  - problems/navier-stokes/theorem-construction/mcp-materialellipticgraphdriversignedreduction-a-globalsamepacketfullclockfromoriginaldata-a-fe3cacea22.md
  - problems/navier-stokes/theorem-construction/mcp-relativeschur-graphdriver-defect-clock-split-20260625.md
  - problems/navier-stokes/theorem-construction/mcp-primitivegraphdriver-pls-interface-direct-attack-20260625.md
---

# Non-Top-Strain Pump / Graph-Driver Absorption Bridge

Date: 2026-06-25

## 0. Target

The full-pump alignment bridge left

```math
[m_j]_+
\le
C e_j\lambda_+(S)
+[m_j^\perp]_+
+\eta d_j+r_j^{legal},
\tag{NPG.1}
```

with

```math
[m_j^\perp]_+
=
\left[
\mathcal Q_\phi^{press/stress}
+
\mathcal C_\phi^{cubic}
+
\mathcal R_\phi^{collar/stress}
\right]_+ .
\tag{NPG.2}
```

The first term in `(NPG.1)` is paid by the signed top-strain log storage.
The point of this bridge is to prevent `(NPG.2)` from reopening an already
absorbed pressure/collar sector.

## 1. Pressure/collar part has the graph split

For the same material packet set

```math
Z_N=(q,C_N),
\qquad
Z_N=\Gamma_N(Y_N)+W_N,
\tag{NPG.3}
```

where

```math
\Gamma_N(Y_N)
=
\left(
L_G^{-1}R(Y_N),
\mathcal C_N(A,G,\phi,\mathbb P_A)
\right).
\tag{NPG.4}
```

Then

```math
dZ_N
=
D\Gamma_N(Y_N)dY_N+dW_N .
\tag{NPG.5}
```

Therefore the pressure/RHS and collar part of the raw clock satisfies the
installed split

```math
d\Omega_N^{press/RHS}
+
d\Omega_N^{collar}
\le
C\,d\Omega_N^{rel.defect}
+
C\,d\Omega_N^{graph.driver}
+
dR_N^{legal}.
\tag{NPG.6}
```

The Schur storage

```math
\widetilde{\mathscr A}_N^{press/op+collar}
=
-{1\over2}\|W_N\|_{pc,N}^2
\tag{NPG.7}
```

pays the normal defect clock:

```math
d\widetilde{\mathscr A}_N^{press/op+collar}
+
c_Nd\Omega_N^{rel.defect}
\le
dR_N^{legal}
\tag{NPG.8}
```

up to the already typed lower-rank and legal terms.

## 2. Tangent graph motion is not pressure-only

The tangent term in `(NPG.5)` is the motion of the forced elliptic/collar graph.
For pressure,

```math
L_Gq=R(Y_N),
\qquad
L_G=-\operatorname{div}_a(G\nabla_a),
\tag{NPG.9}
```

so

```math
\dot q
=
L_G^{-1}\dot R
-
L_G^{-1}(\dot L_G)q.
\tag{NPG.10}
```

The operator motion is strain/frame service because

```math
\dot G=-2ASA^\top,
\qquad
(\dot L_G)q
=
-\operatorname{div}_a(\dot G\nabla_aq).
\tag{NPG.11}
```

The pressure RHS is

```math
R(Y_N)
=
A_{\ell i}A_{kj}\partial_{a_\ell}v_j\,\partial_{a_k}v_i .
\tag{NPG.12}
```

Differentiating gives

```math
\dot R
=
(\dot A)A\nabla v\nabla v
+
A(\dot A)\nabla v\nabla v
+
AA\nabla\dot v\nabla v
+
AA\nabla v\nabla\dot v.
\tag{NPG.13}
```

The coefficient terms are strain/frame service because

```math
\dot A=-A(\nabla_av)A.
\tag{NPG.14}
```

The velocity terms use the material Navier--Stokes law

```math
\dot v+A^\top\nabla_aq
=
\nu\operatorname{div}_a(G\nabla_av).
\tag{NPG.15}
```

Thus the viscous piece is viscous/tower service, and the pressure-gradient
feedback is the pressure-Hessian coordinate of the same strain equation

```math
D_tS+S^2+\Omega^2+\nabla^2p=\nu\Delta S.
\tag{NPG.16}
```

For the collar graph,

```math
C_N=\mathcal C_N(A,G,\phi,\mathbb P_A),
\qquad
D_t\phi=0,
\tag{NPG.17}
```

so its derivative is made only from \(\dot A\), \(\dot G\), and
\(\dot{\mathbb P}_A\), hence from strain/frame and Hodge/base-collar service.

Combining these identities gives the installed sector estimate

```math
d\Omega_N^{press/RHS}
+
d\Omega_N^{collar}
\le
C_Nd\Omega_N^{rel.defect}
+
C_N\left(
d\Omega_N^{strain/frame}
+
d\Omega_N^{Hodge/Stokes}
+
d\Omega_N^{collar/base}
+
dD_N^{vis}
\right)
+
dR_N^{legal}.
\tag{NPG.18}
```

Equivalently,

```math
d\widetilde{\mathscr A}_N^{press/op+collar}
+
c_N\left(
d\Omega_N^{press/RHS}
+
d\Omega_N^{collar}
\right)
\le
C_N\left(
d\Omega_N^{strain/frame}
+
d\Omega_N^{Hodge/Stokes}
+
d\Omega_N^{collar/base}
+
dD_N^{vis}
\right)
+
dR_N^{legal}.
\tag{NPG.19}
```

This is the corrected solvable pressure/collar law: Schur pays normal defect;
the forced graph's tangent motion is the same material strain, Hodge/collar,
and viscous service.

## 3. Effect on the non-top-strain pump

The pressure/RHS and collar components of `(NPG.2)` are therefore not a live
standalone frontier.  They are absorbed by `(NPG.18)` and `(NPG.19)`.

After that absorption, the unclosed part of `(NPG.2)` is the primitive
free-material PLS driver: the moving low-high same-material deformation
coefficient acting on the active shell,

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
+
dR_N^{paid}.
\tag{NPG.20}
```

Here \(\mathcal M_{<j-C,N}\) is made from strain, pressure Hessian through
the strain equation, coefficient motion, Hodge/Stokes projection motion, and
transported collar motion.  It is the same participation-law--strain interface,
not a pressure-only lobe and not a detached refill source.

The natural storages for `(NPG.20)` have already been tested:

```math
X_{j,N}=-{1\over2}w_jE_{j,N}
\tag{NPG.21}
```

has the right sign but is bounded below exactly when the continuation-depth
material record is already bounded; coefficient-coupled storages reproduce the
same graph-driver at the next rung.  Thus the remaining theorem is still the
noncircular free-material PLS no-free-upcrossing/coercivity theorem:

```math
\exists\,\mathscr A_N(t)\ge -C_N(u_0)
\quad\text{such that}\quad
d\mathscr A_N
+
c_Nd\Omega_N^{PLS,primitive}
\le
dR_N^{legal}.
\tag{NPG.22}
```

## 4. Result

The supplied tangent--normal split is correct and it does real work: it removes
the pressure/collar sector from the later non-top-strain pump frontier.

The live Gold-side frontier is therefore not `(NPG.2)` as a raw
pressure-stress/cubic-collar block.  It is `(NPG.20)`: finite rectified positive
action of the primitive graph-compatible free-material PLS driver, or an
equivalent bounded-below same-material entropy for that driver.
