---
theorem_id: forward-gold-wkb-service-modulus-or-selector-escape-reduction-20260706
status: strict-reduction-moving-service-stabilization-to-uniform-modulus-or-selector-escape
created: 2026-07-06
problem: navier-stokes
route: forward-gold / confinement constant / WKB profile admission
target_object:
  - WKBProfilePressureMomentPassage.A
  - WKBServiceModulus.A
  - MovingServiceFunctionalEscape
  - MicrolocalDefectProfileAdmission.A
source_refs:
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-wkb-profile-moment-continuity-criterion-20260706.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-terminal-wkb-admission-microlocal-profile-reduction-20260706.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-wkb-profile-atomic-diffuse-admission-split-20260706.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-actual-wkb-carrier-extraction-finite-menu-reduction-20260706.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-overlap-bath-angular-continuum-quadrature-reduction-20260706.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-overlap-bath-beltrami-material-phase-service-identity-20260706.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-overlap-bath-variable-weight-refresh-variation-ledger-20260706.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-overlap-bath-bank-scale-motion-variation-ledger-20260706.md
completion_truth: >-
  Strict reduction only. The moving-service gap left by the WKB profile
  moment-continuity criterion is exactly a compactness-modulus row. On the
  compact phase-label space, if the nonnegative active service readouts F_j are
  uniformly bounded and share one modulus of continuity, Arzela-Ascoli gives a
  uniformly convergent subtail F_j -> F; the already filed moment-continuity
  criterion then passes the retained pressure-service moment to the profile.
  Therefore the scalar moment-passage burden is reduced to WKBServiceModulus.A:
  a uniform label-modulus for the actual pressure-service readouts on the
  admitted compact WKB label space. Failure of this modulus is not silent
  retained service. It is moving service functional escape: material, center,
  envelope, time, scale, bank, weight, or rung selector motion, to be routed
  through the filed variation/custody ledgers or through microlocal/profile
  admission or construction/exclusion. This note proves no uniform modulus from
  Navier-Stokes, no microlocal profile admission theorem, no WKB
  construction/exclusion, no confinement constant, and no MPP closure.
---

# WKB service modulus or selector escape

## 1. Object

The moment-continuity note proves:
\[
  F_j\to F\ \hbox{uniformly},\qquad
  \mu_j\stackrel{*}{\rightharpoonup}\mu,\qquad
  \int F_j\,d\mu_j\ge c_0
  \quad\Longrightarrow\quad
  \int F\,d\mu\ge c_0 .
\]

It also gives the moving-spike countermodel. Thus compactness of the WKB
profile is not enough. The missing scalar clause is stabilization of the active
pressure-service readout.

This note identifies the exact compactness row that supplies that
stabilization.

## 2. Uniform modulus theorem

Let \(X\) be the compact WKB phase-label space after domain, label, rung, bank,
and angular coordinates are fixed. Let
\[
  \mu_j\stackrel{*}{\rightharpoonup}\mu
  \qquad\hbox{in }\mathcal M_+(X),
\]
with \(\sup_j\mu_j(X)<\infty\).

Let \(F_j:X\to[0,\infty)\) be the normalized active pressure-service readout
on the \(j\)-th terminal window. Assume
\[
  \|F_j\|_{L^\infty(X)}\le C_F
\]
and assume there is one modulus \(\omega\), with \(\omega(\delta)\downarrow0\)
as \(\delta\downarrow0\), such that
\[
  |F_j(x)-F_j(y)|\le\omega(d_X(x,y))
  \qquad(x,y\in X,\ j\ge1).
\]

By Arzela-Ascoli, after passing to a subsequence,
\[
  F_j\to F
  \qquad\hbox{uniformly on }X
\]
for some \(F\in C(X)\).

If
\[
  \int_XF_j\,d\mu_j\ge c_0>0
\]
on the terminal tail, then the already filed moment-continuity criterion gives
\[
  \int_XF\,d\mu\ge c_0.
\]

Thus:
\[
  \boxed{
  \hbox{uniform service modulus}
  \Longrightarrow
  \hbox{retained scalar pressure-service moment passes to the WKB profile}.
  }
\]

## 3. The exact remaining scalar row

The remaining scalar moment-passage row is therefore:

```text
WKBServiceModulus.A
```

Statement shape:

On the admitted compact WKB phase-label space for the actual same-solution
terminal branch, the active pressure-service readouts \(F_j\) are uniformly
bounded and equicontinuous in the selected label metric.

This row is smaller than microlocal/profile admission. It does not ask whether
the measure-valued profile is a lawful terminal witness. It asks only whether
the scalar service readout is a stable label-functional rather than a moving
selector.

## 4. Failure meaning

If `WKBServiceModulus.A` fails, then there are \(\varepsilon_0>0\), labels
\(x_j,y_j\in X\), and \(d_X(x_j,y_j)\to0\) such that
\[
  |F_j(x_j)-F_j(y_j)|\ge\varepsilon_0 .
\]

That is exactly the moving-spike mechanism in source-independent form. The
service readout is resolving a shrinking label distinction while the weak-*
profile sees only the limiting label.

For the WKB label space, those shrinking distinctions can only live in the
coordinates that remain after angular quadrature:

1. material path or center;
2. envelope/collar/gauge;
3. time window or refresh label;
4. relative scale or rung;
5. bank coordinate;
6. weight/population assignment;
7. profile-level selector topology.

So failure of the modulus is not admitted retained service. It is one of:

\[
\begin{array}{ll}
\hbox{material/center/envelope/time selector escape},\\[1mm]
\hbox{scale/bank/rung escape},\\[1mm]
\hbox{weight refresh or reassembly},\\[1mm]
\hbox{or genuine profile-admission/construction failure}.
\end{array}
\]

The already filed variable-weight and bank-scale ledgers price two of these
coordinates:
\[
  \left|\int S:K\,dt\right|
  \le
  W\Delta+{\Delta\over2}V_w+WV_D.
\]
Thus moving the bank or refreshing the weights is not a continuity loophole; it
is a variation/custody bill. The remaining coordinates still require their
own admission, custody, or construction/exclusion theorem.

## 5. Relation to angular continuum

Diffuse angular labels are not the obstruction here. The angular quadrature
note gives, for a positive Beltrami angular profile,
\[
  K={W\over3}I-\int n\otimes n\,d\mu(n)
  =
  \sum_{a=1}^3m_aQ_{e_a}.
\]

Thus the active scalar \(S:K\) depends on a finite second-moment algebra at each
bank/station. The moving-modulus gap is not pure direction diffusion. It is
motion in material, center, envelope, time, scale, bank, weight, rung, or in
the witness-admission topology itself.

## 6. Consequence for the WKB profile fork

The profile-admission fork now has the scalar part separated:
\[
\begin{array}{ll}
\text{uniform service modulus}
  &\Rightarrow
  \text{scalar retained pressure-service moment passes to the profile},\\[2mm]
\text{no uniform service modulus}
  &\Rightarrow
  \text{moving selector escape in one of the WKB label coordinates}.
\end{array}
\]

After the scalar row is paid, the remaining profile question is still
same-solution witness legality:

```text
MicrolocalDefectProfileAdmission.A
DiffuseWKBProfileAdmission.A
AtomicWKBProfileReconstruction.A
```

The profile must still be tied to the original datum, the actual
Navier-Stokes pressure law, material ancestry or licensed original
participation, finite/readout-compatible cover at measure level, and the
differentiated same-law tower.

## 7. State

This note proves the compactness-modulus theorem and identifies the exact
failure branch. It does not prove the uniform modulus for actual Navier-Stokes
WKB service readouts.

It proves no `MicrolocalDefectProfileAdmission.A`, no
`DiffuseWKBProfileAdmission.A`, no `AtomicWKBProfileReconstruction.A`, no WKB
construction/exclusion theorem, no confinement constant, and no MPP closure.
