---
theorem_id: forward-gold-c0-critical-cone-pressure-row-elliptic-ownership-20260708
created: 2026-07-08
problem: navier-stokes
route: forward-gold / c_0 / Door 2b / retained critical cone pressure row
status: exact-cone-pressure-row-ownership-proved; retained-compactness-and-relay-open
source_refs:
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-c0-nonseparable-pressure-row-correction-20260708.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-c0-door2b-critical-cone-profile-production-accounting-20260708.md
completion_truth: >-
  This note proves the exact-cone pressure-row ownership calculation. For a
  retained degree -1 cone, the slaved pressure row is fixed by the same-scale
  pressure source through the sphere operator -(Delta_{S^2}+2). The only
  homogeneous r^{-2} ambiguity is the l=1 harmonic parent/source mode. A
  same-scale l=1 source is not silent; it forces an r^{-2} log r pressure row,
  hence log-scale record drift. Thus an exact zero-row-loss retained cone cannot
  keep its same-scale pressure source while dropping or replacing the pressure
  row. This proves only the exact-cone elliptic ownership component of
  NoSilentPressureRowDropping.A. The retained compactness/material-time passage
  into this exact cone and the infinite parent-row relay remain open.
---

# Critical Cone Pressure-Row Elliptic Ownership

Physical sentence: on a retained critical cone, pressure is not an optional
brake outside the participant. The same cone source that makes the VPI record
solves the cone pressure equation. The only pressure piece with no same-scale
source is a harmonic parent/source row, and a resonant same-scale source forces
log-scale drift instead of staying silent.

## 1. The cone pressure equation

Let the retained critical cone have

```math
u(x)=r^{-1}V(\theta),
\qquad
p(x)=r^{-2}P(\theta),
\qquad
r=|x|,\quad \theta=x/r .
\tag{CPE.1}
```

Its pressure source is

```math
Q[u]
=
\partial_i u_j\,\partial_j u_i
=
r^{-4}Q_V(\theta).
\tag{CPE.2}
```

For any scalar \(P(\theta)\),

```math
\Delta\!\left(r^{-2}P(\theta)\right)
=
r^{-4}\left(\Delta_{S^2}+2\right)P(\theta).
\tag{CPE.3}
```

Therefore the same-field pressure row satisfies the sphere equation

```math
\mathcal L_pP
=
Q_V,
\qquad
\mathcal L_p:=-(\Delta_{S^2}+2).
\tag{CPE.4}
```

This is the exact cone version of pressure slaving.

## 2. The only homogeneous ambiguity is parent/source material

On spherical harmonics \(Y_{\ell m}\),

```math
\mathcal L_pY_{\ell m}
=
\left(\ell(\ell+1)-2\right)Y_{\ell m}
=
(\ell-1)(\ell+2)Y_{\ell m}.
\tag{CPE.5}
```

Thus the only kernel is \(\ell=1\). The corresponding physical pressure pieces
are

```math
r^{-2}Y_{1m}(\theta),
\tag{CPE.6}
```

which are harmonic on \(\mathbb R^3\setminus\{0\}\). They carry no same-scale
interior source. In the participation ontology they are not a detachable child
pressure bank; they are parent/source/Field material, or relay material owned
outside the child cone.

On the orthogonal complement of \(\ell=1\), \(\mathcal L_p\) is invertible.
Hence an exact retained cone with fixed same-scale source has its own pressure
row fixed modulo that typed parent/source harmonic row:

```math
P
=
\mathcal L_p^{-1}(I-\Pi_1)Q_V
+P_{\rm par},
\qquad
\mathcal L_pP_{\rm par}=0.
\tag{CPE.7}
```

Here \(\Pi_1\) is projection onto the \(\ell=1\) spherical harmonics.

## 3. The resonant source is log drift, not silence

If the same-scale source has a nonzero \(\ell=1\) component, no homogeneous
\(r^{-2}P(\theta)\) pressure solves (CPE.4). The actual local solution contains
a logarithmic cone row. Indeed,

```math
\Delta\!\left(r^{-2}\rho\,Y_{1m}(\theta)\right)
=
-3r^{-4}Y_{1m}(\theta),
\qquad
\rho=\log r.
\tag{CPE.8}
```

Thus

```math
-\Delta\!\left({1\over3}r^{-2}\rho\,Y_{1m}\right)
=
r^{-4}Y_{1m}.
\tag{CPE.9}
```

So \(\Pi_1Q_V\neq0\) is not a silent zero-row defect. It is log-scale pressure
drift:

```math
\partial_\rho\Pi\neq0,
\qquad
\Pi(\rho,\theta)=e^{2\rho}p(e^\rho\theta).
\tag{CPE.10}
```

That belongs to `RetainedConeMaterialStationarityAdmission.A`, or it routes out
as parent/source material. It is not a retained stationary child cone with the
pressure row dropped.

## 4. Exact-cone no-silent-row theorem

The proved exact-cone statement is:

```math
\texttt{CriticalConePressureRowEllipticOwnership.A}
\tag{CPE.11}
```

In an exact degree \(-1\) retained cone, the same-scale pressure source
\(Q_V\) determines the child pressure row by (CPE.7). A homogeneous pressure
row with no same-scale source is the \(\ell=1\) harmonic parent/source row. A
same-scale \(\ell=1\) source forces the logarithmic pressure row (CPE.9), hence
material-scale drift. Therefore an exact zero-row-loss retained cone cannot
keep its same-scale VPI pressure source while silently dropping or replacing
the pressure row.

Equivalently,

```math
\begin{gathered}
\text{exact degree }-1\text{ retained cone}
+\partial_\rho\Pi=0
+\text{same-scale }Q_V\\
\Longrightarrow
\text{own pressure row fixed modulo parent/source }\ell=1\text{ relay.}
\end{gathered}
\tag{CPE.12}
```

## 5. Boundary of the proof

This does not prove the full retained-row theorem. It proves the exact cone
elliptic ownership step after material stationarity has already produced a
degree \(-1\) cone.

The remaining open passages are:

```math
\texttt{RetainedConeMaterialStationarityAdmission.A}
\tag{CPE.13}
```

to obtain the exact zero-row-loss cone from a retained tower sequence, and

```math
\texttt{RelayEndpointMaterialTimeLiouville.A}
\tag{CPE.14}
```

to prevent the typed \(\ell=1\) parent/source relay from continuing forever as
the marginal endpoint tower.
