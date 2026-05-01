# Lean Skeleton Extraction

Status: conditional proposition-level formalization target.

## Purpose

Extract the theorem-program chain as a small Lean-style file with opaque propositions and a checked implication proof:

```text
TGC.A
=> AACT.Global.noJump
=> AVG.END.A
=> READ.END
=> PCTP.hard
=> ECQ.A
=> GlobalSmooth
```

## File-ready Lean skeleton

```lean
namespace NavierStokesRoute

structure PeriodicNSBranch where
  nu_pos : Prop
  u0_smooth : Prop
  u0_divfree : Prop
  u0_zero_mean : Prop
  force_zero : Prop
  GlobalSmooth : Prop

structure RoutePackets (B : PeriodicNSBranch) where
  TGC_A : Prop
  AACT_Global_noJump : Prop
  AVG_END_A : Prop
  READ_END : Prop
  PCTP_hard : Prop
  ECQ_A : Prop

structure RouteImplications (B : PeriodicNSBranch) (R : RoutePackets B) where
  tgc_to_aact : R.TGC_A -> R.AACT_Global_noJump
  aact_to_avgend : R.AACT_Global_noJump -> R.AVG_END_A
  avgend_to_readend : R.AVG_END_A -> R.READ_END
  readend_to_pctp : R.READ_END -> R.PCTP_hard
  pctp_to_ecq : R.PCTP_hard -> R.ECQ_A
  ecq_to_global : R.ECQ_A -> B.GlobalSmooth

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

end NavierStokesRoute
```

## Readout type-separation layer

A second skeleton keeps averaged and pointwise objects distinct:

```lean
namespace NavierStokesReadout

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

theorem pointwise_endpoint_from_averaged
  (R : ReadoutTypes)
  (I : ReadoutImplications R)
  (hEnd : R.End_avg)
  (hFieldAvg : R.Field_avg)
  (hDTCAvg : R.DTC_avg) :
  R.End_pointwise := by
  exact I.read_end hEnd (I.field_read hFieldAvg) (I.dtc_read hDTCAvg)

end NavierStokesReadout
```

## Boundary

This skeleton checks the finite logical chain at proposition level. Analytic formalization remains separate and must define the actual Navier-Stokes branch, terminal-tail cover, endpoint predicates, pressure readout, and classical continuation theorem.