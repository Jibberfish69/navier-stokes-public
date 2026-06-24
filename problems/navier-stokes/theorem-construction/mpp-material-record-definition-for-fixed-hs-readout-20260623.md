---
theorem_id: material-record-definition-for-fixed-hs-readout-20260623
status: proof-installed-material-record-definition-matches-fixed-hs-readout
logical_landing_node: material_record_definition_for_fixed_hs_readout
edge_effect: >-
  Defines the continuation-depth material record used by the prelimit clock and
  the fixed-Hs readout bridge. The record contains the material velocity tower,
  pressure tower, deformation/coefficient tower, transported collar geometry,
  interface-current record, and the composition controls needed to compare
  transported material derivatives with fixed Eulerian H^s norms.
  Incompressibility gives J=det D_aX=1, so the volume form remains inside the
  pressure-viscosity-incompressibility-velocity packet.
parents:
  - problems/navier-stokes/theorem-construction/mpp-material-pressure-tower-same-packet-elliptic-readout-20260623.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-prelimit-master-balance-limit-passage-proof-20260623.md
  - problems/navier-stokes/theorem-construction/mpp-material-clock-to-fixed-hs-continuation-readout-20260623.md
---

# Material Record Definition For Fixed Hs Readout

Date: 2026-06-23

## 0. Claim

The material record \(\mathcal P_N^{mat}\) used in the full clock is the same
record needed for the fixed-coordinate \(H^s\) continuation readout, once the
depth \(N\) is chosen high enough.

For \(s>5/2\), choose an integer

```math
N=N_s\ge \lceil s\rceil+4.
\tag{MRD.1}
```

On a transported material chart, with

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
\tag{MRD.2}
```

define \(\mathcal P_N^{mat}\) to dominate all of the following
finite-derivative-depth same-packet quantities. This is a finite Sobolev-depth
readout of a smooth field, not a restriction to finitely many Fourier modes:
it is the continuation-depth projection of the full material tower, not a
replacement for the full tower as the carried physical object.  The full smooth
pressure-viscosity-incompressibility history remains the object; for one fixed
\(H^s\) target, with \(s\) arbitrary but chosen before the estimate is run,
only this finite Sobolev-depth record has to be certified for relaunch.

```math
1+
\sum_{|\alpha|\le N}\|D_a^\alpha v\|_{L^2_a}^2
+
\sum_{|\alpha|\le N-1}\|D_a^\alpha q\|_{L^2_a}^2,
\tag{MRD.3}
```

```math
\sum_{|\alpha|\le N}\|D_a^\alpha A\|_{L^2_a}^2
+
\sum_{|\alpha|\le N}\|D_a^\alpha G\|_{L^2_a}^2
+
\|A\|_{L^\infty_a}
+
\|A^{-1}\|_{L^\infty_a},
\tag{MRD.4}
```

```math
\sum_{|\alpha|\le N}\|D_a^\alpha F\|_{L^2_a}^2
+
\|F\|_{L^\infty_a}
+
\|F^{-1}\|_{L^\infty_a},
\tag{MRD.5}
```

and the transported collar/interface-current record used by the prelimit
master balance:

```math
\mathcal P_N^{coll}
+
\mathcal P_N^{iface}.
\tag{MRD.6}
```

Equivalently, by Sobolev embedding on the fixed material chart, the same record
controls the coefficient norms needed for composition:

```math
\|A\|_{W^{\lceil s\rceil+1,\infty}_a}
+
\|F\|_{W^{\lceil s\rceil+1,\infty}_a}
+
\sum_{|\alpha|\le \lceil s\rceil+1}\|D_a^\alpha v\|_{L^2_a}.
\tag{MRD.7}
```

This is the definition of the material record used in the fixed-\(H^s\)
readout.  Any theorem spending \(d[\log(1+\mathcal P_N^{mat})]_+\) spends this
full record.

The pressure tower in `(MRD.3)` is the same-packet pressure/incompressibility
tower. It is fixed by the pressure equation on the retained material carrier,
as recorded in `MaterialPressureTowerSamePacketEllipticReadout.A`.

## 1. The Jacobian is fixed by incompressibility

The material Jacobian

```math
J(a,t)=\det F(a,t)
\tag{MRD.8}
```

satisfies

```math
\partial_tJ
=
(\nabla_x\cdot u)(X(a,t),t)J.
\tag{MRD.9}
```

Since Navier--Stokes incompressibility gives \(\nabla_x\cdot u=0\), and
\(J(a,0)=1\),

```math
J(a,t)=1
\qquad
\text{for all preterminal }t.
\tag{MRD.10}
```

Thus the change of variables \(x=X(a,t)\) carries no hidden density factor.
Volume preservation is part of the same pressure-incompressibility material
packet, not an external assumption.

## 2. The coefficient tower controls composition

Because \(N\ge\lceil s\rceil+4\) and the material chart is three-dimensional,
Sobolev embedding gives

```math
\|A\|_{W^{\lceil s\rceil+1,\infty}}
+
\|F\|_{W^{\lceil s\rceil+1,\infty}}
\le
C\!\left(\mathcal P_N^{mat}\right).
\tag{MRD.11}
```

Repeatedly applying

```math
\nabla_x=A^\top\nabla_a
\tag{MRD.12}
```

expresses every fixed-coordinate derivative \(\nabla_x^k u\),
\(k\le\lceil s\rceil\), as a finite sum of products of derivatives of \(A\)
and derivatives of \(v\).  The coefficient depth required is
\(W^{\lceil s\rceil+1,\infty}\), which is exactly why `(MRD.1)` leaves four
derivatives of room above \(\lceil s\rceil\). Using `(MRD.11)`, `(MRD.3)`, and
\(J=1\), one obtains

```math
\|u(t)\|_{H^s_x}
\le
C_s\!\left(\mathcal P_N^{mat}(t)\right).
\tag{MRD.13}
```

This is exactly the readout used by
`MaterialClockToFixedHsContinuationReadout.A`.

## 3. The pressure tower is tied to incompressibility

The pulled-back pressure \(q\) is the Lagrange multiplier for
\(\operatorname{div}_a(Av)=0\). On the periodic packet, after fixing the mean
of \(q\), the pressure satisfies the material elliptic readout

```math
\sum_{|\alpha|\le N-1}\|D_a^\alpha q(t)\|_{L^2_a}^2
\le
C_N\!\left(\mathcal P_N^{mat}(t)\right),
\tag{MRD.14}
```

with constants depending only on the same coefficient/deformation tower and
ellipticity record already included in \(\mathcal P_N^{mat}\). On localized
packets, the local pressure part obeys the same elliptic control, while the
harmonic pressure memory is retained in \(\mathcal P_N^{iface}\).

The pressure tower is a readout of the same pressure-incompressibility
material packet.

## 4. The prelimit clock controls this full record

The smooth prelimit master balance differentiates the same material system:

```math
\partial_s v+A^\top\nabla_a q
=
\nu\,\operatorname{div}_a(G\nabla_a v),
\qquad
\operatorname{div}_a(Av)=0.
\tag{MRD.15}
```

The velocity tower comes from differentiating \(v\), the pressure tower from
the pressure/incompressibility current, the coefficient tower from

```math
\partial_sA=-A(\nabla_a v)A,
\qquad
\partial_sG=(\partial_sA)A^\top+A(\partial_sA)^\top,
\tag{MRD.16}
```

and \(F=A^{-1}\) is controlled by the same coefficient tower and ellipticity
record.  The transported collar and interface-current pieces are the collar
and same-packet interface objects already present in the prelimit master
balance.

Therefore the clock term

```math
d[\log(1+\mathcal P_N^{mat})]_+
\tag{MRD.17}
```

is the positive logarithmic variation of the continuation-depth projection
`(MRD.3)`--`(MRD.6)` of the full material tower, with the pressure tower
licensed by `(MRD.14)`.  Finite clock mass gives a uniform bound for that
continuation-depth record on the terminal tail, and `(MRD.13)` gives the
fixed-coordinate \(H^s\) continuation readout.
