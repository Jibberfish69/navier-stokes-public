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

The pressure tower in \(\mathcal P_N^{mat}\) is the finite-derivative-depth
record of the pressure Lagrange multiplier in the same transported material
packet. "Finite depth" means derivatives up to a fixed order \(N\); it does
not mean finitely many Fourier modes or finitely many physical frequencies.

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

Pull back the Eulerian pressure equation through \(x=X(a,t)\). Since

```math
\nabla_x
=
A^\top\nabla_a,
\qquad
\Delta_x p\circ X
=
\operatorname{div}_a(G\nabla_aq),
\tag{MPR.4}
```

where the second identity is the \(J=1\) Piola pullback of the scalar
Laplacian, and since

```math
\partial_{x_i}u_j\circ X
=
A_{\ell i}\partial_{a_\ell}v_j,
\tag{MPR.5}
```

the Eulerian identity \(-\Delta_xp=\partial_i u_j\,\partial_j u_i\) becomes

```math
-\partial_{a_\ell}
\left(
G_{\ell k}\partial_{a_k}q
\right)
=
A_{\ell i}A_{k j}
(\partial_{a_\ell}v_j)
(\partial_{a_k}v_i).
\tag{MPR.6}
```

This is the exact material pressure equation. It uses only the same velocity
gradient and coefficient fields \(A,G\) carried by the material packet.

Equivalently, before pullback, the pressure identity is

```math
-\Delta_x p
=
\partial_i\partial_j(u_i u_j)
=
\partial_i u_j\,\partial_j u_i
\tag{MPR.7}
```

for divergence-free \(u\).

For every derivative depth \(N\) used in the continuation readout, elliptic
estimates on the uniformly controlled material chart give

```math
\sum_{|\alpha|\le N-1}\|D_a^\alpha q(t)\|_{L^2_a}
\le
C_N\!\left(
\lambda(t)^{-1},
\|G(t)\|_{W^{N-1,\infty}_a}
\right)
\left\|
A_{\ell i}A_{k j}
(\partial_{a_\ell}v_j)
(\partial_{a_k}v_i)
\right\|_{H^{N-3}_a},
\tag{MPR.8}
```

where \(N\ge3\) and \(\lambda(t)>0\) is the ellipticity lower bound of
\(G(t)\). For the continuation-depth choice \(N\ge \lceil s\rceil+4\), hence
\(N\ge7\), the Sobolev index \(N-3\) is an algebra index in dimension three.
The Moser product estimate gives

```math
\left\|
A_{\ell i}A_{k j}
(\partial_{a_\ell}v_j)
(\partial_{a_k}v_i)
\right\|_{H^{N-3}_a}
\le
C_N
\|A\|_{W^{N-3,\infty}_a}^2
\|v\|_{H^{N-2}_a}^2 .
\tag{MPR.9}
```

The right side of `(MPR.9)` is part of the same velocity and coefficient
towers in \(\mathcal P_N^{mat}\). Hence

```math
\sum_{|\alpha|\le N-1}\|D_a^\alpha q(t)\|_{L^2_a}^2
\le
C_N\!\left(\mathcal P_N^{mat}(t)\right).
\tag{MPR.10}
```

## 2. Local pressure and harmonic memory

On a localized annular or compact-core packet, write the pressure as

```math
q=q^{loc}+q^H .
\tag{MPR.11}
```

The local part satisfies the same elliptic estimate as `(MPR.8)` on the
selected material chart, with constants depending on the retained ellipticity
and collar geometry. The harmonic part is the pressure memory/collar component
of the same interface-current record:

```math
q^H
\quad\text{is recorded in}\quad
\mathcal P_N^{iface}
\quad\text{and}\quad
dA_{4B,N}.
\tag{MPR.12}
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
\tag{MPR.13}
```

is licensed by `(MPR.2)`--`(MPR.12)`. Any positive growth of the pressure tower
is positive growth of the same material pressure-incompressibility record, and
is therefore spent by

```math
d[\log(1+\mathcal P_N^{mat})]_+ .
\tag{MPR.14}
```

This is the pressure exactness needed by the fixed-\(H^s\) readout bridge.
