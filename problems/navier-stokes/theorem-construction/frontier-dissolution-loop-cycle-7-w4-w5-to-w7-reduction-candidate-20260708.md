# Frontier-dissolution loop - Cycle 7 W4/W5 to W7 reduction candidate (2026-07-08)

Status: pending partner refutation.

Cycle 7 opens from the seven-wall frontier:

```text
W3, W4, W5, W6, W7, W8, W9.
```

## Cross-wall attempt first

The required first cross-wall attempt is W4 == W5 as one material-frame row
wall. This fails. W4 is row admission: the retained record includes the
material transport of its strain frame. W5 is row nondegeneracy/persistence:
after all lawful same-record rows are included, the positive cubic current lies
in the combined row adjoint range or the failure is visible as a route-out.

## Candidate: W4 and W5 reduce to W7

The candidate certificate is that W4 and W5 are no longer independent walls
once W7 is read in its retained-VPI graph form.

Installed W4:

```text
RetainedFullMaterialFrameRowAdmission.A
```

Installed W5:

```text
RetainedCombinedRowAdjointRangePersistence.A
```

Surviving W7:

```text
RecordAdmissionClosedness.A + arbitrary-original-data admission into the
retained branch.
```

The checked source that sharpens W7 is:

```text
RetainedVPIRecordGraphClosednessOrTypedRouteOut.A
```

from `mpp-forward-gold-c0-retained-row-passage-graph-closedness-obstruction-20260708.md`.

Exact certificate. In the retained VPI record

```math
\mathcal R_n=(U_n,P_n,Q_n,\mathcal F_n,\mathcal M_n,\mathcal S_n),
\qquad Q_n=Q[U_n],
\tag{RGC.2}
```

\(\mathcal F_n\) is precisely the material-frame row family and
\(\mathcal S_n\) is the positive retained VPI service record. The graph
closedness clause (RGC.5) asks that the retained limit pass

```math
Q[U_n]\to Q[U],
\qquad
P_n\to P,\ -\Delta P=Q[U],
\qquad
\mathcal F_n\to\mathcal F,\quad
\mathcal M_n\to\mathcal M,
\qquad
\liminf\mathcal S_n>0 .
\tag{RGC.5}
```

The smaller theorem (RGC.9) says that a lawful retained same-fluid VPI tower
with normalized positive record and vanishing admitted row defect has exactly
one of four outcomes: the pressure/material-frame graph closes strongly enough
to pass to an exact retained cone/profile; the lost compactness appears as
admitted row payment; the lost row is owned by a parent/source relay; or the
branch routes to Field/nonparticipation or to the relevant Pack/Part/Field CM
face.

That statement contains W4's retained material-frame row admission as the
\(\mathcal F_n\to\mathcal F\) clause. It contains W5's combined-row
persistence because, after W4's row family is included, either the combined
row defect passes to the exact cone/profile where the exact-cone pressure row
and affine full-frame certificates consume it, or the failure is one of the
declared payment/relay/route-out cases.

So the proposed deletion type is:

```text
W4 + W5 reduce to W7.
```

No new surviving name is admitted. W7 survives as the graph-closedness /
arbitrary-original-data admission wall:

```text
RetainedVPIRecordGraphClosednessOrTypedRouteOut.A
+ arbitrary-original-data admission into the retained branch.
```

## Attack surface

Refute this certificate by showing one of the following:

1. W4 has a finite material-frame admission clause not contained in the
   \(\mathcal F_n\to\mathcal F\) component of W7/RGC.5.
2. W5's ART.35 quantifier has retained-sphere combined-row content that is not
   consumed by graph closure plus the exact-cone / affine full-frame
   certificates.
3. W7's installed `RecordAdmissionClosedness.A` is narrower than RGC.5/RGC.9
   and does not include the retained VPI pressure/material-frame graph.
4. The arbitrary-original-data admission part of W7 is independent of the
   retained graph-closedness clause and prevents W4/W5 from reducing into it.

DELETED: none; W4/W5 reduction to W7 is pending partner refutation.
CERTIFICATE: RGC.2/RGC.5/RGC.9 make the retained VPI graph closedness wall pass or route out the pressure source, material-frame rows, material-time rows, and positive VPI record together; W4's frame-row admission is the \(\mathcal F\) component and W5's combined-row persistence is consumed by graph closure plus the exact-cone / affine full-frame row certificates.
REMAINING: W3, W4, W5, W6, W7, W8, W9.
