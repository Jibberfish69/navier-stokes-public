---
ns_viewer:
  theorem_id: rscb-scfavg-face-landing
  proof_role: cm_class_exit
  logical_landing_node: rscb_nkf
  edge_effect: after the June 6 route cut, retained point-center failure and averaged cover failure must be typed as pass route or first CM Part/Field, not revived as finite-energy NKF.Native.
  upstream_origin: finite-energy point-pressure derivative obstruction, retained RSCB.NKF route, and averaged SCF_avg route.
  downstream_consequence: Use this as the branch-law intake for terminal retained/averaged receiver failures before claiming Exit(Q):=not Member(Q); averaged Jump_avg lands in the Field face by AveragedFieldFaceAdmission.A only after the same-tail SCF_base local modulus is supplied or derived.
  status: conditional-on-scfbase-local-modulus
  source_authority: problems/navier-stokes/live-theorem-edge.yaml
---

# RSCB / SCF_avg Face-Landing Note

## Status

Installed branch-law note for the receiver split after the June 6 pressure
obstruction cut. This note does not close the Clay theorem and does not prove
the terminal witness exhaustion theorem. It fixes how this branch may enter the
CM test.

## Result

After the June 6 cut, a terminal receiver failure has only two lawful shapes.

First, the retained point-center branch spends the retained smooth center-ball
certificate:

```math
RSCB.NKF
\Longrightarrow
NKF.Moll+NKF.Point
\Longrightarrow
NKF.Native
\Longrightarrow
ACT.KX.
```

Second, the finite-energy branch stays averaged:

```math
SCF_{base}+SGC.A_{a.e.}+ATD_m^\varepsilon
\Longrightarrow
SCF_{avg}^m
\Longrightarrow
AACT.KX
\Longrightarrow
AVG.RCV.A.
```

The outlawed third shape is:

```math
\text{finite energy}
+
-\Delta p=\partial_i\partial_j(u_i u_j)
\Longrightarrow
NKF.Native.
```

That implication is false.

## Face Landing

Let a terminal same-fluid receiver object be admitted to the CM participation-field test
after the retained/averaged split. The branch-law is:

1. If the retained smooth center-ball hypotheses are present, the branch is a
   pass route through `RSCB.NKF`.
2. If the averaged SCF route supplies the terminal averaged receiver package,
   the branch is a pass route through `SCF_avg^m -> AACT.KX -> AVG.RCV.A`.
3. If the retained branch is demanded without retained smooth center-ball
   regularity, the failure is not an analytic supplier gap to be hidden inside
   finite-energy pressure recovery. It is a CM-test failure of the retained
   receiver admission and must be placed at the first broken face: loss of the
   common retained carrier gives `not Pack_Q`; loss of same-fluid
   pressure-viscosity participation gives `not Part_{N,Q}`; retained Field-window evidence and
   Part with no positive coherent receiver/readout scale gives
   `forall r>0 not Field_{N,r,Q}`.
4. If the averaged branch lacks a uniform positive SCF-good terminal cover with
   common AACT scheduler, the route may not import `READ.COVER`, `DTC.Read`, or
   `Field.Read` upstream. The checked landing is the averaged `Jump_avg` face.
   On the same CM-test-admitted averaged terminal tail, if `Pack_Q` and
   `Part_{N,Q}` are retained, `AveragedFieldFaceAdmission.A` proves only the
   conditional bridge

   ```math
   Field_{N,r,Q}+SCFBaseLocalModulus_N(T,r)
   \Longrightarrow Field_{avg}(T),
   ```

   so

   ```math
   Jump_{avg}(T):=\neg Field_{avg}(T)
   \quad+\quad SCFBaseLocalModulus_N(T,r)
   \Longrightarrow
   \neg Field_{N,r,Q}\text{ at that }r.
   ```

   The all-radii Field-Part/Field landing follows only after every retained positive
   Field scale supplies that modulus.

Only after one of those Part/Field failures is derived can this branch support:

```math
Exit(Q):=\neg Member(Q).
```

## Proof Boundary

This note records the lawful receiver split and the required first-face typing.
The averaged cover failure no longer points first to the stronger unresolved
`h/F` survivor-measure lower-bound theorem for CM landing, but the smaller
Field-face route still needs the same-tail `SCF_base` modulus in
`AveragedFieldFaceAdmission.A`. The Clay-facing object still uses the canonical
terminal witness entry and finite failure-type exhaustion chain before the
derived Part/Field failure supports `Exit(Q):=\neg Member(Q)`.
