# Lean Proposition-Level Formalization Retry

Status: conditional formalization target.

## Purpose

Formalize the finite implication chain as a proposition-level theorem before attempting analytic PDE formalization:

```text
TGC.A
=> AACT.Global.noJump
=> AVG.END.A
=> READ.END
=> PCTP.hard
=> ECQ.A
=> T_* = infinity
```

## Branch structure

A minimal Lean-style branch structure is:

```lean
structure PeriodicNSBranch where
  nu_pos : Prop
  u0_smooth : Prop
  u0_divfree : Prop
  u0_zero_mean : Prop
  force_zero : Prop
  Tstar : Type
  GlobalSmooth : Prop
```

## Route packet propositions

```lean
structure RoutePackets (B : PeriodicNSBranch) where
  TGC_A : Prop
  AACT_Global_noJump : Prop
  AVG_END_A : Prop
  READ_END : Prop
  PCTP_hard : Prop
  ECQ_A : Prop
```

## Route implications

```lean
structure RouteImplications (B : PeriodicNSBranch) (R : RoutePackets B) where
  tgc_to_aact : R.TGC_A -> R.AACT_Global_noJump
  aact_to_avgend : R.AACT_Global_noJump -> R.AVG_END_A
  avgend_to_readend : R.AVG_END_A -> R.READ_END
  readend_to_pctp : R.READ_END -> R.PCTP_hard
  pctp_to_ecq : R.PCTP_hard -> R.ECQ_A
  ecq_to_global : R.ECQ_A -> B.GlobalSmooth
```

## Main formal theorem

```lean
theorem averaged_route_global
  (B : PeriodicNSBranch)
  (R : RoutePackets B)
  (I : RouteImplications B R)
  (hTGC : R.TGC_A) :
  B.GlobalSmooth := by
  exact
    I.ecq_to_global
      (I.pctp_to_ecq
        (I.readend_to_pctp
          (I.avgend_to_readend
            (I.aact_to_avgend
              (I.tgc_to_aact hTGC)))))
```

## Typed readout bridge

To prevent averaged/pointwise collapse, add distinct endpoint types:

```lean
structure ReadoutTypes where
  Field_avg : Prop
  Field : Prop
  DTC_avg : Prop
  DTC : Prop
  End_avg : Prop
  End_pointwise : Prop
```

and readout implications:

```lean
structure ReadoutImplications (R : ReadoutTypes) where
  field_read : R.Field_avg -> R.Field
  dtc_read : R.DTC_avg -> R.DTC
  read_end : R.End_avg -> R.Field -> R.DTC -> R.End_pointwise
```

## Result

The finite route can be formalized first at proposition level. Analytic formalization can then replace each opaque implication with definitions and proofs one at a time.

## Boundary

This target proves only the dependency skeleton. It does not formalize Navier-Stokes analysis, CKN regularity, pressure estimates, or endpoint algebra inside Lean yet.
