---
theorem_id: forward-gold-microlocal-defect-rigidity-consumer-direct-test-20260620
status: direct-rigid-defect-consumer-test-complete-not-proved
logical_landing_node: microlocal_defect_rigidity_consumer
edge_effect: "Tests whether the positive microlocal defect produced by the H-measure / Young-measure route is already consumable by a Liouville or rigidity theorem. It is not. The microlocal object is a visibility measure, possibly supported on the terminal time face, not an exact source-free ancient Navier-Stokes profile, not a Landau-class stationary point-force profile, and not a produced rigid source-residue subclass."
parents:
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-microlocal-defect-positive-carrier-direct-test-20260620.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-compact-native-source-residue-rigidity-direct-test-20260619.md
  - problems/navier-stokes/theorem-construction/mcp-minimalzenoancientresidue_b-a-minimalzenoancientresidue_b-class-production-and-liouville-attempt-e18617ee04.md
  - problems/navier-stokes/theorem-construction/mpp-rigid-basac-timeface-antiatom-subclass-liouville-20260517.md
downstream_consequence: "A future rigidity consumer is useful only after an exact defect-to-profile or defect-to-rigid-class production theorem. Until then, microlocal visibility returns to UnweightedTerminalCriticalActionReserve.A, NoWasteLocalEnergyFlux.A, MinimalZenoProfileProduction.A, ProductionIntoRigidBASACTimeFaceSubclass.A, or CM Pack/Part/Field consumption of the retained pulse."
---

# MPP Forward-Gold Microlocal Defect Rigidity Consumer Direct Test

Date: 2026-06-20

## Status

Direct consumer test complete.  The theorem is not proved from current inputs.

The positive microlocal defect route makes the terminal selected carrier more
visible.  It does not make that carrier rigid.

## 1. Target

The previous microlocal test produced the implication

```math
\text{selected terminal oscillation/concentration}
\Longrightarrow
\text{positive microlocal defect measure}.
\tag{MDR.1}
```

The remaining possible shortcut is:

```math
\boxed{
\text{positive microlocal defect measure}
\Longrightarrow
\text{rigidity/Liouville contradiction}.
}
\tag{MDR.2}
```

This note tests `(MDR.2)`.

## 2. What the produced object actually is

The tested packet has wave direction `e_2`, velocity polarization `e_1`, and
trace-free selected strain

```math
S_0=\operatorname{diag}(2,-1,-1).
\tag{MDR.3}
```

The principal incompressibility condition is

```math
e_2\cdot e_1=0.
\tag{MDR.4}
```

The oscillation defect measure records a positive rank-one fiber:

```math
\mu_{osc}
\sim
{1\over2}\psi(y)^2\,e_1\otimes e_1
\otimes\delta_{\xi=e_2}.
\tag{MDR.5}
```

Its selected reading is positive:

```math
\operatorname{tr}\left(S_0\,e_1\otimes e_1\right)=2.
\tag{MDR.6}
```

With the terminal layer normalization from the previous note, the selected
time marginal can converge to an endpoint atom:

```math
a_m(s)\,ds\rightharpoonup 2c_0\,\delta_{s=0}.
\tag{MDR.7}
```

Thus the produced object is a positive oscillation/concentration measure,
possibly sitting on the terminal time face.  It is not automatically an exact
velocity-pressure pair `(U,P)` solving Navier--Stokes on negative time.

## 3. Why ordinary ancient rigidity does not apply

A source-free ancient Liouville theorem has the form

```math
\text{ancient source-free Navier--Stokes solution in rigid class}
\Longrightarrow
U=0.
\tag{MDR.8}
```

The microlocal package gives instead a possible boundary defect:

```math
\mu_{osc}
\ \text{or}\ \mu_*^{src}
\quad\text{supported on }s=0.
\tag{MDR.9}
```

The negative-time solution may be regular or even trivial while `(MDR.9)`
remains nonzero as a terminal trace.  A theorem about source-free ancient
solutions cannot see a defect that has not been converted into an interior
source, a trace jump, a no-waste flux loss, or a rigid profile.

So the inference

```math
\text{positive terminal microlocal measure}
\Longrightarrow
\text{source-free ancient contradiction}
\tag{MDR.10}
```

is invalid without an additional production theorem.

## 4. Why Landau/Sverak does not apply

The Landau/Sverak consumer needs an exact stationary point-force profile:

```math
-\nu\Delta U+\nabla\cdot(U\otimes U)+\nabla P
=
\Phi_0\delta_0,
\qquad
\nabla\cdot U=0,
\tag{MDR.11}
```

with the profile stationary, `(-1)`-homogeneous, smooth on the sphere away from
the origin, and free of residual time-face source.  The microlocal defect
measure `(MDR.5)` does not supply:

```math
\text{stationarity},
\quad
(-1)\text{-homogeneity},
\quad
\text{sphere smoothness},
\quad
\text{zero residual source},
\quad
\text{no drift},
\quad
\text{defect-to-profile realization}.
\tag{MDR.12}
```

Those are exactly the production hypotheses isolated in
`MinimalZenoProfileProduction.A` or the Door 2 production package.

## 5. Why the rigid time-face subclass does not apply

The rigid `B_ASAC^{TA}` Liouville theorem is valid once the time-face anti-atom
clause is present:

```math
\mu_*^{src}(B_R\times\{0\})=0
\qquad\forall R<\infty.
\tag{MDR.13}
```

The microlocal endpoint model produces the opposite kind of information:

```math
\mu_*^{src}(B_1\times\{0\})>0
\tag{MDR.14}
```

or at least leaves `(MDR.14)` open.  Therefore `B_ASAC^{TA}` can consume the
defect only after a production theorem proves the time-face anti-atom clause.
Using that consumer before producing `(MDR.13)` is circular.

## 6. The exact missing production theorem

The shortest honest bridge is:

```math
\boxed{
\textbf{DefectToRigidProfileProduction.A:}
}
\tag{MDR.15}
```

from the produced positive microlocal/native defect package, prove one of:

```math
\begin{gathered}
\text{a source-free compact ancient Navier--Stokes element},\\
\text{an exact stationary Landau-class profile},\\
\text{a rigid source-residue class }B\text{ with a residue Liouville theorem},\\
\text{or the time-face anti-atom subclass }B_{ASAC}^{TA}.
\end{gathered}
\tag{MDR.16}
```

Current inputs do not prove `(MDR.15)`.  Existing attempts show the opposite:
soft Zeno compactness produces a local suitable solution plus endpoint or
interior defect, not a clean rigid profile.

## 7. Countermodel to the inference

At the level of produced compactness data, the following package is consistent
with all information used by the microlocal visibility route:

```math
U(s,y)=0\quad(s<0),
\tag{MDR.17}
```

and

```math
\mu_{osc}
=
c\,\psi(y)^2\,e_1\otimes e_1
\otimes\delta_{\xi=e_2}\otimes\delta_{s=0},
\qquad
c>0.
\tag{MDR.18}
```

The selected microlocal carrier is nonzero at the terminal face, while the
negative-time source-free solution is trivial.  This is not claimed as a
Navier--Stokes blow-up solution.  It is a countermodel to the logical inference
that microlocal visibility alone implies a source-free ancient Liouville
contradiction.

## Verdict

`MicrolocalDefectRigidityConsumer.A` is not an independent forward-gold
supplier from current inputs.

The exact reduction is:

```math
\text{MicrolocalDefectRigidityConsumer.A}
\Leftarrow
\text{DefectToRigidProfileProduction.A}
+\text{matching Liouville theorem}.
\tag{MDR.19}
```

At current resolution this aliases to one of the already isolated real
suppliers:

```math
\begin{gathered}
\text{UnweightedTerminalCriticalActionReserve.A},\\
\text{NoWasteLocalEnergyFlux.A},\\
\text{StrictRescaledNoWasteLyapunov.A},\\
\text{MinimalZenoProfileProduction.A},\\
\text{ProductionIntoRigidBASACTimeFaceSubclass.A}.
\end{gathered}
\tag{MDR.20}
```

Absent one of those, the microlocal defect remains a visible terminal pulse,
not a rigidity contradiction.  It must be carried as a CM Pack/Part/Field
witness-face object or paid by a genuine no-waste/source-residence theorem.
