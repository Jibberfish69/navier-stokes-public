---
theorem_id: material-pressure-tower-same-packet-elliptic-readout-20260623
status: proof-installed-pressure-tower-is-same-packet-incompressibility-record
logical_landing_node: material_pressure_tower_same_packet_elliptic_readout
edge_effect: >-
  Installs the exact reason the pressure tower in the material record belongs
  to the same pressure/incompressibility packet. Pressure is the Lagrange
  multiplier enforcing the same incompressibility constraint on the same
  transported material packet. Its finite-depth tower is recovered from the
  velocity and coefficient towers by the material elliptic pressure equation,
  with local harmonic/collar pieces retained in the same interface-current
  record.
parents:
  - problems/navier-stokes/theorem-construction/mpp-material-record-definition-for-fixed-hs-readout-20260623.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-prelimit-master-balance-limit-passage-proof-20260623.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-participation-preserving-hodge-stokes-packet-replacement-20260621.md
---

# Material Pressure Tower Same Packet Elliptic Readout

Date: 2026-06-23

## 0. Claim

The pressure tower in \(\mathcal P_N^{mat}\) is the finite-depth record of the
pressure Lagrange multiplier in the same transported material packet.

For the material variables

```math
v(a,t)=u(X(a,t),t),
\qquad
q(a,t)=p(X(a,t),t),
\qquad
F=D_aX,
\qquad
A=F^{-1},
\qquad
G=AA^\top,
\tag{MPR.1}
```

the same packet satisfies

```math
\partial_t v+A^\top\nabla_a q
=
\nu\,\operatorname{div}_a(G\nabla_a v),
\qquad
\operatorname{div}_a(Av)=0 .
\tag{MPR.2}
```

Thus pressure is tied to the divergence constraint on the same material
carrier.

## 1. Periodic pressure tower

On \(T^3\), fix the pressure gauge by

```math
\int_{T^3}q(a,t)\,da=0 .
\tag{MPR.3}
```

Taking the divergence constraint derivative of `(MPR.2)` gives a variable
coefficient elliptic equation for \(q\). Schematically,

```math
-\operatorname{div}_a(AA^\top\nabla_a q)
=
\mathcal E_p(v,A,G,\nabla_a v,\nabla_a A,\nabla_a G),
\tag{MPR.4}
```

where \(\mathcal E_p\) is a finite sum of products made only from the same
velocity and coefficient towers. In fixed Eulerian variables this is the usual
pressure identity

```math
-\Delta_x p
=
\partial_i\partial_j(u_i u_j)
=
\partial_i u_j\,\partial_j u_i
\tag{MPR.5}
```

for divergence-free \(u\), pulled back by \(x=X(a,t)\).

For every \(N\) used in the continuation readout, elliptic estimates on the
uniformly controlled material chart give

```math
\sum_{|\alpha|\le N-1}\|D_a^\alpha q(t)\|_{L^2_a}
\le
C_N\!\left(
\|A(t)\|_{W^{N,\infty}_a},
\|A^{-1}(t)\|_{L^\infty_a}
\right)
\mathcal E_N^{p}(v,A,G)(t),
\tag{MPR.6}
```

where \(\mathcal E_N^{p}\) is a polynomial in the same finite-depth velocity
and coefficient norms already included in \(\mathcal P_N^{mat}\). Hence

```math
\sum_{|\alpha|\le N-1}\|D_a^\alpha q(t)\|_{L^2_a}^2
\le
C_N\!\left(\mathcal P_N^{mat}(t)\right).
\tag{MPR.7}
```

## 2. Local pressure and harmonic memory

On a localized annular or compact-core packet, write the pressure as

```math
q=q^{loc}+q^H .
\tag{MPR.8}
```

The local part satisfies the same elliptic estimate as `(MPR.6)` on the
selected material chart, with constants depending on the retained ellipticity
and collar geometry. The harmonic part is the pressure memory/collar component
of the same interface-current record:

```math
q^H
\quad\text{is recorded in}\quad
\mathcal P_N^{iface}
\quad\text{and}\quad
dA_{4B,N}.
\tag{MPR.9}
```

## 3. Consequence for the material record

The pressure component in

```math
\mathcal P_N^{mat}
=
\text{velocity tower}
+
\text{pressure tower}
+
\text{coefficient/deformation tower}
+
\text{collar/interface record}
\tag{MPR.10}
```

is licensed by `(MPR.2)`--`(MPR.9)`. Any positive growth of the pressure tower
is positive growth of the same material pressure-incompressibility record, and
is therefore spent by

```math
d[\log(1+\mathcal P_N^{mat})]_+ .
\tag{MPR.11}
```

This is the pressure exactness needed by the fixed-\(H^s\) readout bridge.
