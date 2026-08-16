# Thomas's canonical-record positive radial pulse completion and turn-down action boundary

**Date:** 2026-08-04

**Status:** proved noncanonical canonical-record consequence inside Thomas
Birnie's one-fluid, pressure-explicit binomial/VPI reversible-intersection
method. Starting from the primitive all-material-pair law (PRT.1)--(PRT.22),
every failed last-half signed-prefix record has an exact alternative: its
aggregate positive radial current is already large at a record endpoint, or
the same record contains one completed aggregate positive-current pulse. On
the completed branch the datum-paid finite-horizon integral of the critical
height forces a quadratic lower bound on the joined angular and
pressure--viscous turn-down action.

This is a genuine record-level advance, but it does **not** prove that either
the endpoint current or the positive turn-down response is datum-finite. The
selected longitudinal response has no global pressure sign. All pair
orientations and both current signs must be restored before the complete
pressure--viscous cancellation is used. Consequently this note does not prove
(TIR.37a) and does not close the MPP.

The physical order is Thomas's order:

1. the pulse or spring winding supplies the positive radial current and its
   five-unit self-amplification;
2. an imbalanced stretched vortex can turn that pulse through actual chord
   rotation;
3. on the perfectly balanced no-wobble face, only the joined longitudinal
   pressure--viscous response remains inside the contracting sector; and
4. the simultaneous expanding directions and the response complement are
   restored before any whole-field pressure conclusion is drawn.

No Fourier receiver, fixed cohort, independently prescribed source, regional
pressure part, or alternate regularity criterion is introduced.

## 1. The datum pays the finite-horizon critical-height mass

Fix one smooth divergence-free finite-energy datum \(u_0\), one viscosity
\(\nu>0\), and its one maximal classical Navier--Stokes history on
\([0,T_*)\). Retain the primitive pair quantities of (PRT.1)--(PRT.18) and
write

\[
 H(t):={1\over2}\|\Lambda^{1/2}u(t)\|_2^2
      =\iint e_{ab}(t)\,da\,db.
 \tag{CPR.1}
\]

Homogeneous interpolation and the kinetic-energy identity give

\[
 \|\Lambda^{1/2}u\|_2^2
 \le \|u\|_2\|\Lambda u\|_2,
 \qquad
 \sup_{t<T_*}\|u(t)\|_2\le \|u_0\|_2,
 \tag{CPR.2}
\]

and

\[
 \int_0^{T_*}\|\Lambda u(t)\|_2^2\,dt
 \le {\|u_0\|_2^2\over2\nu}.
 \tag{CPR.3}
\]

More locally, for every interval \(J\subset(0,T_*)\), Cauchy--Schwarz gives

\[
 \boxed{
 B(J):=\int_JH(t)\,dt
 \le {\|u_0\|_2^2\over2}
       \sqrt{{|J|\over2\nu}}.}
 \tag{CPR.4}
\]

In particular, if \(T_*<\infty\),

\[
 \boxed{
 B_*:=\int_0^{T_*}H(t)\,dt
 \le {\|u_0\|_2^2\over2}
       \sqrt{{T_*\over2\nu}}<\infty.}
 \tag{CPR.5}
\]

This is an actual datum-paid row. It is used below only after the one-fluid
pair current has been formed. If \(B_*=0\), the solution is zero and no
positive signed-prefix record exists.

## 2. Every failed canonical record has an endpoint or completed-pulse branch

Assume the exact failure of (TIR.37a) and retain the canonical records
(MRN.4)--(MRN.6):

\[
 I_n=(s_n,t_n),
 \qquad
 \Delta_n=t_n-s_n,
 \qquad
 A_n=4^nA_0,
 \tag{CPR.6}
\]

with

\[
 \int_{I_n}\mathcal P_{1/2}(t)\,dt={A_n\over2}.
 \tag{CPR.7}
\]

The primitive positive and negative radial currents satisfy

\[
 \mathcal P_{1/2}=P_+-P_-,
 \qquad P_+,P_-\ge0.
 \tag{CPR.8}
\]

The sharp pair current is continuous on every compact preterminal interval.
Indeed, volume preservation changes the label integral at fixed time into
the Eulerian increment integral

\[
 P_+(t)\le {1\over\pi^2}
 \int_{\mathbb R^3}{\|\delta_z u(t)\|_3^3\over|z|^5}\,dz
 \le C\bigl(\|\nabla u(t)\|_3^3+\|u(t)\|_3^3\bigr).
 \tag{CPR.9}
\]

The first estimate follows from the exact density
\(|j|=\pi^{-2}|\delta_z u|^2|\delta_z u\cdot z|/|z|^6\).
For \(|z|\le1\), use
\(\|\delta_z u\|_3\le |z|\|\nabla u\|_3\); for \(|z|>1\), use
\(\|\delta_z u\|_3\le2\|u\|_3\). The same domination and preterminal
continuity in \(W^{1,3}\) give continuity of \(P_+\). Thus the level
crossings below are sharp all-pair crossings, not formal truncation limits.

Hence the positive radial mass on the same record obeys

\[
 M_n^+:=\int_{I_n}P_+(t)\,dt\ge {A_n\over2}.
 \tag{CPR.10}
\]

Set the actual endpoint height

\[
 m_n:=\max\{P_+(s_n),P_+(t_n)\}.
 \tag{CPR.11}
\]

There are exactly two alternatives.

### Endpoint branch

If \(m_n\Delta_n\ge A_n/4\), then

\[
 \boxed{
 \max\{P_+(s_n),P_+(t_n)\}
 =m_n\ge {A_n\over4\Delta_n}.}
 \tag{CPR.12}
\]

Since \(\Delta_n\le T_*\),

\[
 \max\{P_+(s_n),P_+(t_n)\}
 \ge {A_n\over4T_*}.
 \tag{CPR.13}
\]

Thus recurrence of this branch is literal endpoint growth of the aggregate
contracting-pair current along the one continuing history.

### Completed-pulse branch

Otherwise \(m_n\Delta_n<A_n/4\). Since (CPR.10) gives
\(\int_{I_n}P_+\ge A_n/2\), the current must exceed its endpoint height.
Let

\[
 E_n:=\{t\in I_n:P_+(t)>m_n\}.
 \tag{CPR.14}
\]

Put

\[
 a_n:=\inf E_n,
 \qquad
 b_n:=\sup E_n,
 \qquad
 K_n:=(a_n,b_n).
 \tag{CPR.15}
\]

Continuity gives

\[
 s_n\le a_n<b_n\le t_n,
 \qquad
 P_+(a_n)=P_+(b_n)=m_n.
 \tag{CPR.16}
\]

The interval \(K_n\) is one completed **aggregate** positive-current pulse.
It may contain several excursions above \(m_n\); no monotonicity and no new
material selection is asserted. Outside \(K_n\), the current is at most
\(m_n\). Therefore

\[
 \boxed{
 \begin{aligned}
 \int_{K_n}P_+(t)\,dt
 &\ge \int_{I_n}P_+(t)\,dt-m_n\Delta_n\\
 &>{A_n\over4}.
 \end{aligned}}
 \tag{CPR.17}
\]

The \(K_n\subset I_n\) remain disjoint. Thus the construction neither pastes
a new scale onto the fluid nor recounts one physical-time interval.

## 3. A completed pulse forces quadratic joined turn-down action

The primitive exact law is

\[
 P_+'=4(\mathcal G_+-\mathcal T_+),
 \qquad
 \mathcal G_+\ge {5P_+^2\over16H}.
 \tag{CPR.18}
\]

On the completed pulse (CPR.16), integration of the first identity gives

\[
 \boxed{
 \int_{K_n}\mathcal T_+(t)\,dt
 =\int_{K_n}\mathcal G_+(t)\,dt.}
 \tag{CPR.19}
\]

Where \(H=0\), one also has \(P_+=0\); the quotient below is read as zero
there. Put \(B_n:=B(I_n)\). Every canonical record has \(B_n>0\): otherwise
\(H=0\), hence \(P_+=P_-=0\), almost everywhere on \(I_n\), contradicting
(CPR.7). Weighted Cauchy--Schwarz, (CPR.4), and (CPR.17) give

\[
 \begin{aligned}
 \int_{K_n}\mathcal G_+\,dt
 &\ge {5\over16}\int_{K_n}{P_+^2\over H}\,dt\\
 &\ge {5\over16}
 {\left(\int_{K_n}P_+\,dt\right)^2
  \over\int_{K_n}H\,dt}\\
 &\ge {5A_n^2\over256B_n}\\
 &\ge {5\sqrt{8\nu}\,A_n^2
       \over256\|u_0\|_2^2\sqrt{\Delta_n}}.
 \end{aligned}
 \tag{CPR.20}
\]

Consequently the completed branch has the exact quantitative consequence

\[
 \boxed{
 \int_{K_n}\mathcal T_+(t)\,dt
 \ge {5A_n^2\over256B_n}
 \ge {5\sqrt{8\nu}\,A_n^2
       \over256\|u_0\|_2^2\sqrt{\Delta_n}}.}
 \tag{CPR.21}
\]

This is the turn-down action forced by a completed pulse. It is not an upper
bound and does not make the response datum-finite.

For comparison, applying (PRT.20)--(PRT.21) directly on \(I_n\) gives the
endpoint-corrected identity

\[
 \int_{I_n}\mathcal T_+\,dt
 \ge {5A_n^2\over64B_n}
 -{P_+(t_n)-P_+(s_n)\over4}.
 \tag{CPR.21a}
\]

The completed-pulse construction removes that endpoint correction without
assuming the record current is monotone.

## 4. The three physical pictures appear in their original order

The joined response in (PRT.18) is

\[
 \mathcal T_+
 =\iint_{\{\alpha<0\}}
 e\bigl(|\beta|^2+\mathfrak c+2\alpha\chi\bigr)\,da\,db.
 \tag{CPR.22}
\]

First, the pulse or spring winding is the positive current \(P_+\). Its
five-unit radial self-amplification is \(\mathcal G_+\), and (CPR.19) says
that a pulse which returns to the same aggregate current level has supplied
exactly as much joined turn-down action as self-amplification action.

Second, define the nonnegative angular-turning part

\[
 \mathcal A_+(t)
 :=\iint_{\{\alpha<0\}}e|\beta|^2\,da\,db\ge0.
 \tag{CPR.23}
\]

This is the imbalanced stretched-vortex readout: the real material chord is
turning while it contracts. The remaining scalar must retain both pieces of
the same relative acceleration. Define only the exact positive and negative
parts

\[
 \begin{aligned}
 \mathcal L_+^{+}(t)
 &:=\iint_{\{\alpha<0\}}
 e\,[\mathfrak c+2\alpha\chi]_+\,da\,db,\\
 \mathcal L_+^{-}(t)
 &:=\iint_{\{\alpha<0\}}
 e\,[\mathfrak c+2\alpha\chi]_-\,da\,db.
 \end{aligned}
 \tag{CPR.24}
\]

Then, with no sign assignment hidden,

\[
 \boxed{
 \mathcal T_+=\mathcal A_++\mathcal L_+^+-\mathcal L_+^-.}
 \tag{CPR.25}
\]

Equations (CPR.21) and (CPR.25) imply

\[
 \int_{K_n}(\mathcal A_++\mathcal L_+^+)\,dt
 \ge {5A_n^2\over256B_n}
 \ge {5\sqrt{8\nu}\,A_n^2
       \over256\|u_0\|_2^2\sqrt{\Delta_n}},
 \tag{CPR.26}
\]

and hence the exact two-way response alternative

\[
 \boxed{
 \int_{K_n}\mathcal A_+\,dt
 \ge {5A_n^2\over512B_n}
 \quad\hbox{or}\quad
 \int_{K_n}\mathcal L_+^+\,dt
 \ge {5A_n^2\over512B_n}.}
 \tag{CPR.27}
\]

Third, on the perfectly balanced no-wobble contracting face
\(\beta=0\) and \(\alpha<0\). From (PRT.10),

\[
 \chi={\mathfrak c\over\alpha},
 \qquad
 \boxed{\mathfrak c+2\alpha\chi=3\mathfrak c.}
 \tag{CPR.28}
\]

Thus the angular term vanishes there and the second branch in (CPR.27) is
exactly the positive part of three units of longitudinal relative
pressure--viscous acceleration. The balanced transverse coasting calibration
\(\beta=\mathfrak c=0\) has no such selected turn-down; on that face the
contracting-pair current self-amplifies until the simultaneous axial and
exterior response is restored.

## 5. Complements are restored before a global pressure claim

The finite-chord VPI law keeps pressure and viscosity in the same relative
acceleration:

\[
 A_{ab}=\int_0^1
 \left[-\nabla^2p+\nu\Delta\nabla u\right]
 (X_b+sR_{ab})R_{ab}\,ds.
 \tag{CPR.29}
\]

Neither \(\mathcal L_+^+\) nor \(\mathcal L_+^-\) has a global pressure
cancellation: both select only \(\alpha<0\), then take a sign of a weighted
longitudinal/relative-power contraction. They are exact diagnostic pieces of
one response, not separate physical suppliers or datum bills.

Restore the expanding sector and both current signs first. The exact result is

\[
 \boxed{
 \mathcal P_{1/2}=P_+-P_-,
 \qquad
 \mathcal P_{1/2}'
 =4\iint e
 \left(5\alpha^2-|\beta|^2-\mathfrak c-2\alpha\chi\right)
 \,da\,db.}
 \tag{CPR.30}
\]

The only response contraction in this pair calculus with the complete global
pressure cancellation is the unselected relative-power row

\[
 \boxed{
 2\iint e\chi\,da\,db
 =-\nu\|\Lambda^{3/2}u\|_2^2.}
 \tag{CPR.31}
\]

Using (CPR.31) in the selected quantity (CPR.24) would be invalid. After all
complements are restored, causal integration of (CPR.30) is exactly
(PRT.28), whose left side is the still-open signed prefix.

The lawful periodic whole-history calibrations in BPT make both warnings
concrete. A decaying ABC solution has \(\mathcal P_{1/2}=0\) while an open set
of balanced contracting chords has \(P_+>0\); the axial orientations and
response complement cancel it. The decaying shear solution has one and the
same pair contract and re-expand, with the angular term \( |\beta|^2 \)
turning the radial rate at closest approach. These are exact periodic
Navier--Stokes histories, not singular scenarios. They disprove a
domain-independent algebraic contracting-sector coercivity or pairwise
no-return claim; they are not \(\mathbb R^3\) counterexamples and do not rule
out a specifically \(\mathbb R^3\), nonlocal datum theorem.

## 6. The exact remaining joined record inequality

The kinetic-energy row proves (CPR.4), but it supplies neither a preterminal
uniform bound for \(P_+\) nor an \(L_t^1\) bound for the positive part of
\(\mathcal T_+\). The primitive identity by itself cannot manufacture either
bound: algebraically, any nonnegative absolutely continuous \(q\), positive
\(h\), and

\[
 g={5q^2\over16h},
 \qquad
 \tau=g-{q'\over4}
 \tag{CPR.32}
\]

satisfy \(q'=4(g-\tau)\) and the sharp Riccati lower row. A narrow rising
profile puts arbitrary size into the endpoint term, while an equal-endpoint
profile puts the same amount into the completed action. This is only an
identity-level insufficiency test; it is not asserted to be a Navier--Stokes
history.

On the completed branch, \(K_n\subset I_n\) and

\[
 \int_{I_n}[\mathcal T_+]_+\,dt
 \ge \int_{K_n}[\mathcal T_+]_+\,dt
 \ge \int_{K_n}\mathcal T_+\,dt.
\]

Therefore, for the actual canonical records, (CPR.12) and (CPR.21) give the
exact normalized alternative

\[
 \boxed{
 {\Delta_n\over A_n}
 \max\{P_+(s_n),P_+(t_n)\}\ge {1\over4}
 \quad\hbox{or}\quad
 {\|u_0\|_2^2\sqrt{\Delta_n}
  \over\sqrt{8\nu}\,A_n^2}
 \int_{I_n}[\mathcal T_+(t)]_+\,dt
 \ge {5\over256}.}
 \tag{CPR.33}
\]

Accordingly, the exact joined record statement which would exclude every
failed prefix is

\[
 \boxed{
 {\Delta_n\over A_n}
 \max\{P_+(s_n),P_+(t_n)\}
 +{\|u_0\|_2^2\sqrt{\Delta_n}
  \over\sqrt{8\nu}\,A_n^2}
 \int_{I_n}[\mathcal T_+(t)]_+\,dt
 \longrightarrow0.}
 \tag{CPR.34}
\]

No currently proved datum row gives (CPR.34). It is a precise sufficient
canonical-record turn-down theorem, not a new authority claim and not a
separate payment already contained in the intersection. The advance proved
here is the exact endpoint-or-completed-pulse alternative and the quadratic
action forced on its completed branch. The MPP remains open at the joined
endpoint-growth/turn-down bound.
