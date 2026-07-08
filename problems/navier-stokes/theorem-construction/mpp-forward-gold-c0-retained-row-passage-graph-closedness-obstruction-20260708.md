---
theorem_id: forward-gold-c0-retained-row-passage-graph-closedness-obstruction-20260708
created: 2026-07-08
problem: navier-stokes
route: forward-gold / c_0 / retained VPI row passage / no silent row dropping
status: strict-reduction-to-retained-vpi-record-graph-closedness-or-typed-route-out
source_refs:
  - problems/navier-stokes/live-theorem-edge.yaml
  - problems/navier-stokes/source-frontier.yaml
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-c0-nonseparable-pressure-row-correction-20260708.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-c0-door2b-critical-cone-profile-production-accounting-20260708.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-c0-critical-cone-pressure-row-elliptic-ownership-20260708.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-c0-retained-pressure-row-adjoint-range-test-20260708.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-c0-material-time-certificate-shift-hull-invariance-reduction-20260706.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-codex-b3-material-time-flow-certificate-closure-audit-20260706.md
completion_truth: >-
  This note attacks the retained-row passage theorem directly. It shows that the
  exact-cone pressure-row calculation is not the remaining mathematical problem:
  that subcase is already paid after material stationarity has produced an exact
  cone. The missing passage is graph closedness of the retained VPI record
  through critical compactness. If a zero-row-defect retained sequence is
  strongly graph-closed for the pressure source, material-frame rows, and
  positive cubic/VPI record, the existing Door-2b consumer kills the endpoint.
  If graph closedness fails, the failure is precisely silent row dropping,
  defect measure, owner transfer, or relay, and it must be paid or routed through
  parent/Field/nonparticipation. This is not c_0 or MPP closure.
---

# Retained row passage graph closedness obstruction

## 1. Same-fluid object

The object is one fixed-viscosity incompressible Navier-Stokes history, observed
along retained material windows. The retained VPI record is not a separable
account in which pressure is charged as an outside bill to Vieillefosse service.
The pressure row is part of the same record:

```math
-\Delta p = Q[u],
\qquad
Q[u]=\operatorname{tr}((\nabla u)^2).
\tag{RGC.1}
```

In log/rescaled coordinates, a retained tower sequence therefore carries one
same-record packet

```math
\mathcal R_n
=
(U_n,P_n,Q_n,\mathcal F_n,\mathcal M_n,\mathcal S_n),
\qquad
Q_n=Q[U_n],
\tag{RGC.2}
```

where \(\mathcal F_n\) denotes the material-frame rows, \(\mathcal M_n\) denotes
the material-time / modulation rows, and \(\mathcal S_n\) is the normalized
positive retained VPI service record. A retained survivor cannot keep
\(\mathcal S_n\) while silently deleting the pressure source, pressure row, or
material-frame rows that make the same record lawful.

The checked downstream consumer is already sharp enough after exact cone
production. In an exact degree \(-1\) cone

```math
u=r^{-1}V(\theta),\qquad
p=r^{-2}P(\theta),\qquad
Q[u]=r^{-4}Q_V(\theta),
\tag{RGC.3}
```

the slaved sphere equation is

```math
-(\Delta_{S^2}+2)P=Q_V.
\tag{RGC.4}
```

The only homogeneous ambiguity is the \(\ell=1\) parent/source relay. A
same-scale \(\ell=1\) source forces an \(r^{-2}\log r\) pressure row, hence
material-scale drift. So an exact zero-row-loss cone cannot keep its same-scale
VPI pressure source while silently dropping its own pressure row.

## 2. Direct proof attempt

Assume a retained wrong-sign tower survives the current exclusions:

1. it has normalized positive retained VPI service,
   \(\mathcal S_n=1\);
2. all admitted same-record row defects tend to zero;
3. there is no parent/source/Field/nonparticipation route-out at any finite
   rung;
4. after lawful modulation, the windows have a critical compactness limit.

The desired contradiction is straightforward once the retained record graph is
closed. The required passage is:

```math
\mathcal R_n\to\mathcal R
\quad\Longrightarrow\quad
\begin{cases}
Q[U_n]\to Q[U],\\
P_n\to P\ \text{with }-\Delta P=Q[U],\\
\mathcal F_n\to\mathcal F,\quad \mathcal M_n\to\mathcal M,\\
\liminf \mathcal S_n>0.
\end{cases}
\tag{RGC.5}
```

Under (RGC.5), the zero-defect retained endpoint is an exact stationary
same-record cone/profile with its own pressure row. The exact-cone pressure row
then has no silent null direction. The \(\ell=1\) alternative is parent/source
relay material with visible stress-flux moment, and zero force passes to the
Landau/Sverak consumer. The endpoint has no retained positive VPI service,
contradicting \(\mathcal S_n=1\).

Thus the retained Door-2b endpoint is closed by:

```math
\texttt{RetainedVPIRecordGraphClosednessOrTypedRouteOut.A}
+\text{ existing exact-cone pressure/relay consumers.}
\tag{RGC.6}
```

This is a real reduction because the local pressure sign calculation is no
longer the unknown. The unknown is whether the same-fluid retained record graph
is closed strongly enough for the quadratic pressure source and positive cubic
record to pass through the critical limit.

## 3. Exact obstruction

The current repo does not prove (RGC.5). Critical weak compactness alone is not
enough. A sequence may have

```math
\nabla U_n \rightharpoonup \nabla U,
\qquad
Q[U_n]\rightharpoonup Q[U]+\mu_Q,
\tag{RGC.7}
```

with a nonzero quadratic pressure-source defect \(\mu_Q\). The positive cubic
VPI record can also lose mass or survive only as a defect measure. In this
coordinate, such a defect is not harmless. It is exactly a dropped row or owner
transfer:

```math
\mu_Q\neq0
\quad\Longrightarrow\quad
\text{pressure-row defect / parent relay / Field-source material /
nonparticipation.}
\tag{RGC.8}
```

The Door-1 H1/enstrophy-viscous service note proves a conditional persistence
statement once the needed local row is admitted. The retained adjoint-range note
pays the affine rigid-frame null once same-record material-frame rows are
included. The critical-cone pressure note pays elliptic ownership once an exact
cone has already been produced. None of those surfaces proves the missing
critical compactness graph closedness for an arbitrary retained tower sequence.

The material-time certificate notes show the same gap in another language. A
compact certified shift hull and a closed zero-surplus certificate graph would
make material-time invariance automatic, but the B3 audit says the actual
Navier-Stokes producer is still missing: pressure law, Reynolds defect,
material ancestry, finite cover, differentiated tower, service modulus, and
zero-payer rows must close or be legally carried as defects.

## 4. Smaller theorem

The exact retained-row theorem produced by this proof attempt is:

```math
\texttt{RetainedVPIRecordGraphClosednessOrTypedRouteOut.A}
\tag{RGC.9}
```

Given a lawful retained same-fluid VPI tower sequence with normalized positive
record and vanishing admitted row defect, exactly one of the following happens:

1. after lawful modulation, the retained pressure/material-frame graph is closed
   strongly enough that \(Q[U_n]\), the pressure row, the material-frame rows,
   and the positive VPI record pass to an exact retained cone/profile;
2. the lost compactness appears as a nonzero admitted row payment;
3. the lost row is owned by a parent/source relay;
4. the branch routes to Field/nonparticipation or to the relevant Pack/Part/Field
   CM face.

Case 1 is consumed by the already checked exact-cone pressure row and
relay/Landau-Sverak endpoints. Cases 2-4 are not retained silent survivors.

## 5. Consequence

With `RetainedVPIRecordGraphClosednessOrTypedRouteOut.A`, Door-2b becomes a
consumer theorem for the retained branch:

```math
\text{retained positive VPI service}
\Longrightarrow
\text{exact cone consumed or typed route-out.}
\tag{RGC.10}
```

Together with the admitted Door-1 persistence row, this would give the strict
retained-tower inequality and hence the retained-branch \(c_0>0\) statement.
It still would not by itself solve the full Gold original-data problem unless
arbitrary original data are admitted into this retained branch or routed through
the typed CM program.

Without (RGC.9), any claimed retained-branch closure is support laundering. The
current proof state is a strict reduction to retained VPI record graph
closedness or typed route-out, not MPP closure.
