---
theorem_id: forward-gold-rigid-source-residue-fourbody-supplement-criterion-20260621
status: supplement-criterion-proved-rigid-profile-production-not-installed
logical_landing_node: rigid_source_residue_fourbody_supplement_criterion
edge_effect: "Assembles the rigid source-residue supplement inside the upgraded four-body loop. A terminal Zeno source-residue chain is killed by rigidity only after the compactness package produces a nonzero exact Landau-class profile or a controlled point-force profile from the same selected carrier: endpoint residue must be evacuated or converted to controlled force, nontriviality must be retained, modulation/gauge drift must freeze, renormalized stationarity and (-1)-homogeneity must be produced, annular defects must vanish, and sphere regularity must hold. The downstream zero-force Landau/Sverak consumer is conditional and already available once these hypotheses are produced. Current inputs produce only a local-suitable defect package with possible endpoint source residue, so this proves the supplement criterion, not the production theorem."
parents:
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-terminal-zeno-donor-chain-child-after-parabolic-saturation-20260620.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-bounded-recurrent-profile-production-direct-test-20260619.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-rigid-zeno-profile-production-exhaustion-20260620.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-compact-native-source-residue-rigidity-direct-test-20260619.md
  - problems/navier-stokes/theorem-construction/mcp-zenocriticalprofileproductionsharpattempt-a-zenocriticalprofileproduction-a-zerofluxlandauclassliouville-a-2351083975.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-native-precauchy-to-gauge-quotient-tower-bridge-test-20260621.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-upgraded-four-body-current-frontier-20260621.md
---

# Rigid Source-Residue Four-Body Supplement Criterion

Date: 2026-06-21

## 0. Aim

The native bridge test left rigid source-residue production as one surviving
same-carrier supplement.  This note assembles the exact criterion.

The rigid branch is useful only if the terminal Zeno source-residue chain is
converted into a rigidity-consumable profile on the same carrier.  The criterion
is:

\[
\boxed{
\text{same-carrier Zeno residue}
+
\text{exact rigid-profile production}
+
\text{zero-force Liouville}
\Longrightarrow
\text{no retained zero-force terminal source residue.}
}
\tag{RSR.1}
\]

The current Navier-Stokes inputs do not prove the production premise.

## 1. Produced object before rigidity

After parabolic normalization along a terminal Zeno chain, compactness can
produce a local-suitable package

\[
(U,\Pi,\mu_*^{src},\mu_*^{LE})
\tag{RSR.2}
\]

on compact negative-time cylinders, with possible selected source residue

\[
\mu_*^{src,+}(Q_1^-)\ge c_0
\tag{RSR.3}
\]

or a pure terminal-face atom

\[
\mu_*^{src,+}
=
\rho(y)\,dy\otimes\delta_{s=0}.
\tag{RSR.4}
\]

This is visibility.  It is not a rigidity contradiction.

The limiting equation has the defect-bearing form

\[
\partial_sU-\nu\Delta U+(U\cdot\nabla)U+\nabla\Pi
=
\mathfrak R,
\qquad
\nabla\cdot U=0,
\tag{RSR.5}
\]

where \(\mathfrak R\) may include endpoint source, interior selected source,
modulation residue, pressure/cutoff defect, or local-energy defect.

## 2. Exact rigid-profile production stack

The rigid supplement closes only if the compact package `(RSR.2)` is upgraded
to an exact profile satisfying the full production stack:

\[
\boxed{
\text{EndpointResidueEvacuationOrControlledForce.A;}
}
\tag{RSR.6}
\]

\[
\boxed{
\text{SelectedCarrierNontrivialityRetention.A;}
}
\tag{RSR.7}
\]

\[
\boxed{
\text{ZenoNoDriftUniqueTangent.A;}
}
\tag{RSR.8}
\]

\[
\boxed{
\text{RenormalizedZenoStationarity.A;}
}
\tag{RSR.9}
\]

\[
\boxed{
\text{HomogeneityExtraction.A;}
}
\tag{RSR.10}
\]

\[
\boxed{
\text{DefectMeasureEvacuation.A;}
}
\tag{RSR.11}
\]

\[
\boxed{
\text{SphereSmoothness.A.}
}
\tag{RSR.12}
\]

Together these produce a stationary \((-1)\)-homogeneous profile

\[
-\nu\Delta U+\nabla\cdot(U\otimes U)+\nabla P
=
\Phi_0\delta_0,
\qquad
\nabla\cdot U=0,
\tag{RSR.13}
\]

smooth on \(S^2\), with no residual time-dependence, no modulation drift, no
uncontrolled source, and no defect measure.

The nontriviality-retention clause `(RSR.7)` is essential.  Without it, the
endpoint atom `(RSR.4)` can survive on the terminal face while the negative-time
profile is zero, regular, or source-free.  A Liouville theorem for the profile
would then miss the actual terminal source residue.

## 3. Downstream consumer

Once `(RSR.13)` is produced, the downstream branch is exact.

In the zero-force branch,

\[
\Phi_0=0,
\tag{RSR.14}
\]

the Landau/Sverak zero-force consumer gives

\[
\boxed{
U=0.
}
\tag{RSR.15}
\]

Together with selected-carrier nontriviality retention, this contradicts the
assumption that the terminal Zeno chain retained a nonzero source/profile
residue.

In a nonzero-force branch,

\[
\Phi_0\ne0,
\tag{RSR.16}
\]

the output is not a zero-force contradiction.  It returns to the stress-flux /
native-carrier side: the point force must be identified with the selected
native positive carrier or legally charged by the Door-1 stress/source bridge.

## 4. Why compactness alone does not supply the criterion

Finite local source mass permits the terminal atom model

\[
g_m(s)=\tau_m^{-1}{\bf 1}_{(-\tau_m,0]}(s),
\qquad
\tau_m\downarrow0,
\tag{RSR.17}
\]

with

\[
g_m(s)\,ds\rightharpoonup\delta_{s=0}.
\tag{RSR.18}
\]

This model has finite \(L_s^1\) mass, no source on any fixed negative-time strip
away from \(s=0\), and nonzero terminal mass.  It shows exactly why compactness
does not imply endpoint residue evacuation.

Bounded recurrent heat-scale slabs also do not imply stationarity.  They
produce, at best, a nonzero recurrent local-suitable package on finite
renormalized-time windows.  Without a strict no-waste Lyapunov drop or an
unweighted terminal action reserve, the limit can remain time-dependent,
modulated, defect-bearing, or profile-switching.

Thus the rigid supplement needs production, not just compactness.

## 5. Four-body role

This supplement belongs to the Body-III and Body-IV side of the four-body loop.

Body II supplies or exposes the selected source residue.  If source-square,
critical-density, or signed-polar saturation pays it, the rigid branch is not
needed.

Body III compactness carries the residue into `(RSR.2)`, but only no-loss
identification can make that package the canonical selected carrier of a limit
solution.

Body IV must freeze the material/modulation geometry strongly enough to return
one profile, not a drifting family of packet gauges.

Body I then sees a genuine stationary scale profile only after stationarity,
homogeneity, and defect evacuation have been produced.

So rigid source-residue production is not an alternative language for the whole
loop.  It is the exact condition under which the loop's compactness/geometry
side turns a surviving terminal source residue into a profile a Liouville
theorem can actually consume.

## 6. Current state

The rigid source-residue supplement is proved as a criterion:

\[
\boxed{
\begin{gathered}
\text{endpoint evacuation or controlled point force}
+\text{ nontriviality retention}
+\text{ no drift}\\
+\text{ stationarity}
+\text{ homogeneity}
+\text{ defect evacuation}
+\text{ sphere smoothness}\\
\Longrightarrow
\text{Landau-class profile, consumed in the zero-force branch.}
\end{gathered}
}
\tag{RSR.19}
\]

The Navier-Stokes production theorem is not proved.

The exact missing input is

\[
\boxed{
\text{MinimalZenoProfileProduction.A}
}
\tag{RSR.20}
\]

with the internal first hard subpieces

\[
\boxed{
\text{EndpointResidueEvacuation.A}
+
\text{ZenoNoDriftUniqueTangent.A}
+
\text{RenormalizedZenoStationarity.A}
}
\tag{RSR.21}
\]

and the downstream structural subpieces `(RSR.10)`--`(RSR.12)`.

If `(RSR.20)` is not produced, the surviving Zeno object remains a visible
defect-bearing local-suitable package or terminal endpoint atom.  It is not
yet a contradiction.
