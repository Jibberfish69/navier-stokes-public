---
theorem_id: forward-gold-tangent-normal-identity-primitive-driver-audit-20260625
status: exact-audit-installed; tangent-normal-pressure-collar-identity-absorbs-sector-but-does-not-close-primitive-driver
logical_landing_node: global_same_packet_full_clock_from_original_data
edge_effect: >-
  Audits the supplied tangent-normal split of the pressure/operator and collar
  clock against the current same-material gold route. The split is correct and
  already removes the pressure/collar lobe as an independent obstruction:
  Schur pays the normal defect and the tangent graph-driver is strain/frame,
  Hodge/base-collar, and viscous service. The annular base stress orientation is
  also bounded below by the transported energy storage. After those absorptions,
  the only remaining nonconditional gold object is the primitive graph-compatible
  free-material PLS driver, equivalently finite superheat material residence /
  bounded continuation-depth material record.
parents:
  - problems/navier-stokes/live-theorem-edge.yaml
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-nontopstrain-pump-graphdriver-absorption-bridge-20260625.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-primitive-driver-multiplicity-is-continuation-record-20260625.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-material-stokes-hodge-shell-clock-closure-20260625.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-hodge-shell-whole-pump-overclaim-correction-20260625.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-annular-cauchy-stress-power-finite-action-identity-20260625.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-stress-energy-storage-direct-test-20260625.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-superheat-residence-fixed-hs-equivalence-20260625.md
---

# Tangent-Normal Identity / Primitive Driver Audit

Date: 2026-06-25

## 0. Supplied identity under audit

The supplied pressure/collar correction is

```math
Z_N=(q,C_N),\qquad Z_N=\Gamma_N(Y_N)+W_N,
\tag{TNP.1}
```

with

```math
dZ_N=D\Gamma_N(Y_N)\,dY_N+dW_N .
\tag{TNP.2}
```

Thus the raw pressure/operator and collar clock should split as

```math
d\Omega_N^{press/RHS}+d\Omega_N^{collar}
\le
C\,d\Omega_N^{rel.defect}
+C\,d\Omega_N^{graph.driver}
+dR_N^{legal}.
\tag{TNP.3}
```

The Schur storage pays only the normal defect:

```math
\widetilde{\mathscr A}_N^{press/op+collar}
=
-{1\over2}\|W_N\|_{pc,N}^2,
\qquad
d\widetilde{\mathscr A}_N^{press/op+collar}
+c_Nd\Omega_N^{rel.defect}
\le dR_N^{legal}.
\tag{TNP.4}
```

The graph-driver part is tangent motion of the forced elliptic/collar graph.
It is not a pressure-only lobe.

## 1. The tangent graph-driver is already the same participation law

For pressure,

```math
L_Gq=R(Y_N),
\qquad
L_G=-\operatorname{div}_a(G\nabla_a),
\tag{TNP.5}
```

so

```math
\dot q
=
L_G^{-1}\dot R
-
L_G^{-1}(\dot L_G)q.
\tag{TNP.6}
```

The operator-motion term is strain/frame service:

```math
\dot G=-2ASA^\top,
\qquad
(\dot L_G)q=-\operatorname{div}_a(\dot G\nabla_aq).
\tag{TNP.7}
```

The RHS is

```math
R(Y_N)=A_{\ell i}A_{kj}\partial_\ell v_j\,\partial_kv_i .
\tag{TNP.8}
```

Differentiating gives

```math
\dot R
=
(\dot A)A\nabla v\nabla v
+A(\dot A)\nabla v\nabla v
+AA\nabla\dot v\nabla v
+AA\nabla v\nabla\dot v .
\tag{TNP.9}
```

The coefficient terms are strain/frame service because

```math
\dot A=-A(\nabla_av)A.
\tag{TNP.10}
```

The velocity terms use the same material Navier--Stokes law:

```math
\dot v+A^\top\nabla_aq
=
\nu\operatorname{div}_a(G\nabla_av).
\tag{TNP.11}
```

Thus the tangent graph-driver lands in strain/frame, Hodge/Stokes, base collar,
and viscous graph service, plus the already retained pressure-Hessian coordinate
inside the same strain equation. This proves the corrected pressure/collar
sector line:

```math
d\Omega_N^{press/RHS}
+d\Omega_N^{collar}
\le
C_Nd\Omega_N^{rel.defect}
+C_N\left(
d\Omega_N^{strain/frame}
+d\Omega_N^{Hodge/Stokes}
+d\Omega_N^{collar/base}
+dD_N^{vis}
\right)
+dR_N^{legal}.
\tag{TNP.12}
```

This is the exact content of the tangent-normal split. It removes the old
pressure/collar positive-lobe clock from the continuation target.

## 2. The annular base stress orientation is also not the blocker

For a transported cutoff,

```math
M_\phi(t)=\int {1\over2}|u|^2\phi\,dx,
\qquad
T=-pI+2\nu S,
\tag{TNP.13}
```

and

```math
\dot M_\phi
+2\nu\int\phi |S|^2\,dx
=
F_\phi,
\qquad
F_\phi:=-\int u\cdot T\nabla\phi\,dx .
\tag{TNP.14}
```

With

```math
\mathscr A_N^{annular\ stress}:=-M_{\phi,N},
\tag{TNP.15}
```

the positive orientation satisfies

```math
d\mathscr A_N^{annular\ stress}
+c_N(F_{\phi,N})_+\,dt
\le
D_{\phi,N}\,dt
+(F_{\phi,N})_-\,dt
+dR_N^{ann,legal}.
\tag{TNP.16}
```

Here

```math
-M_{\phi,N}(t)\ge -C_N E_0 .
\tag{TNP.17}
```

So the base annular stress storage has the right lower bound. The wrong-sign
side is the installed recirculation/backscatter branch, and \(D_{\phi,N}\) is
viscous/strain service.

This statement is only for the base traction feed \(F_\phi\). The separate
stress-energy test shows that the rectified material derivative of the stress
flux is not paid by the stress-energy square; it is another coordinate of the
same continuation-strength material pressure/strain clock.

## 3. What survives after the split

After the top-strain log storage, coefficient/frame absorption, base collar
absorption, pressure/collar graph split, Schur normal-defect storage, and base
annular stress storage, the remaining active piece is the primitive
graph-compatible free-material PLS driver:

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
\tag{TNP.18}
```

Here \(\mathcal M_{<j-C,N}\) is not pressure alone, collar alone, or viscosity
alone. It is the moving low-high same-material deformation coefficient made
from strain, pressure Hessian through the strain equation, coefficient/frame
motion, Hodge/Stokes projection motion, transported collar motion, and viscous
graph service.

The native Hodge/Stokes shell proves that principal pressure is normal to the
constraint and that selector motion is paid by top-strain/frame service:

```math
\langle A^\top\nabla_aq,h_j\rangle=0,
\qquad
{d\over dt}e_j+d_j
=
\langle\dot\Pi_jv,h_j\rangle+r_j^{legal}.
\tag{TNP.19}
```

It does not by itself kill `(TNP.18)`. The overclaim correction remains valid:
the Hodge commutator reduces the loose term to the same pressure/RHS plus
annular-stress interface, and the graph split then absorbs only the
pressure/collar coordinate of that interface. The primitive low-high
deformation coefficient remains the continuation-depth object.

## 4. Why the obvious storages still fail

The natural shell storage

```math
X_{j,N}:=-{1\over2}w_jE_{j,N}
\tag{TNP.20}
```

has the correct differential sign:

```math
dX_{j,N}
+w_j
\left[
\left\langle H_{j,N},\mathcal M_{<j-C,N}H_{j,N}\right\rangle
\right]_+dt
\le
w_j\nu D_{j,N}\,dt
+w_j
\left[
-\left\langle H_{j,N},\mathcal M_{<j-C,N}H_{j,N}\right\rangle
\right]_+dt
+dR_{j,N}^{paid}.
\tag{TNP.21}
```

The wrong-sign side is recirculation/backscatter, already typed separately.
The lower bound is the problem:

```math
X_{j,N}\ge -C
\quad\Longleftrightarrow\quad
w_jE_{j,N}\le C.
\tag{TNP.22}
```

Summed over shells, `(TNP.22)` is exactly the continuation-depth material record.
So this storage closes only circularly.

A coefficient-coupled storage differentiates into the desired top term, but its
derivative produces the same high-shell equation and the next lower
pressure/strain/coefficient service. Its lower bound again requires the same
weighted response or the same primitive graph-driver clock.

Thus the tangent-normal split does not need a better Schur normal storage. It
has already done its job. The remaining theorem is the noncircular entropy or
strict no-self-birth estimate for `(TNP.18)`:

```math
\exists\,\mathscr A_N(t)\ge -C_N(u_0)
\quad\text{such that}\quad
d\mathscr A_N
+c_Nd\Omega_N^{PLS,primitive}
\le
dR_N^{legal}.
\tag{TNP.23}
```

Equivalently,

```math
d\Omega_N^{PLS,primitive,self}
\le
\theta\,d\Omega_N^{PLS,primitive,self}
+dR_N^{paid},
\qquad 0\le\theta<1 .
\tag{TNP.24}
```

The strict factor cannot come from the pressure/collar tangent-normal split,
from base annular stress energy, from pointwise incompressibility, from the
shell gap, or from Volterra/later-payback attachment alone. Those pieces are
coordinates or consumers already accounted for.

## 5. Closure status

The supplied identity is correct and useful:

```math
\text{Schur pays normal pressure/collar defect; material graph motion pays
tangent pressure/collar motion.}
\tag{TNP.25}
```

It does not complete the MPP by itself. After applying it, the gold route is
reduced to one exact same-object estimate:

```math
\int_0^{T_*}d\Omega_N^{PLS,primitive}<\infty .
\tag{TNP.26}
```

By the installed superheat-residence equivalence, `(TNP.26)` is exactly
continuation-strength. It is the finite material residence theorem for the
original transported pressure-viscosity-incompressibility-velocity history.
