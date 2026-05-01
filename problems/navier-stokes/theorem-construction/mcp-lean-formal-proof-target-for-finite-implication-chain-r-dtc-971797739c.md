# Lean Formal Proof Target For Finite Implication Chain

Status: conditional formalization target.

## Goal

Formalize the finite implication chain

```text
TGC.A
=> AACT.Global.noJump
=> AVG.END.A
=> READ.END
=> PCTP.hard
=> ECQ.A
=> T_* = infinity
```

as a proposition-level theorem. The analytic packets are opaque hypotheses at this stage.

## Suggested Lean-style skeleton

```lean
structure PeriodicNSBranch where
  nu_pos : True
  torus : Type
  u0_smooth : Prop
  u0_divfree : Prop
  u0_zero_mean : Prop
  force_zero : Prop
  Tstar : Real

structure RoutePackets (B : PeriodicNSBranch) where
  TGC_A : Prop
  AACT_Global_noJump : Prop
  AVG_END_A : Prop
  READ_END : Prop
  PCTP_hard : Prop
  ECQ_A : Prop
  GlobalSmooth : Prop

structure RouteImplications (B : PeriodicNSBranch) (R : RoutePackets B) where
  tgc_to_aact : R.TGC_A -> R.AACT_Global_noJump
  aact_to_avgend : R.AACT_Global_noJump -> R.AVG_END_A
  avgend_to_readend : R.AVG_END_A -> R.READ_END
  readend_to_pctp : R.READ_END -> R.PCTP_hard
  pctp_to_ecq : R.PCTP_hard -> R.ECQ_A
  ecq_to_global : R.ECQ_A -> R.GlobalSmooth

 theorem averaged_route_global
  (B : PeriodicNSBranch)
  (R : RoutePackets B)
  (I : RouteImplications B R)
  (hTGC : R.TGC_A) :
  R.GlobalSmooth := by
  exact I.ecq_to_global (I.pctp_to_ecq (I.readend_to_pctp (I.avgend_to_readend (I.aact_to_avgend (I.tgc_to_aact hTGC)))))
```

## Typed readout skeleton

A second layer should type the averaged-to-pointwise bridge:

```lean
structure ReadoutTypes where
  Field_avg : Prop
  Field : Prop
  DTC_avg : Prop
  DTC : Prop
  End_avg : Prop
  End_pointwise : Prop

structure ReadoutImplications (R : ReadoutTypes) where
  field_read : R.Field_avg -> R.Field
  dtc_read : R.DTC_avg -> R.DTC
  read_end : R.End_avg -> R.Field -> R.DTC -> R.End_pointwise
```

This prevents formal collapse of averaged and pointwise predicates.

## Boundary

The formal target is currently a proposition-level dependency proof. Full analytic formalization would require definitions of Navier-Stokes solutions, local energy inequalities, CKN packets, pressure readout, and endpoint predicates.