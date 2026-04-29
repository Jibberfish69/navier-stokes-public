# Navier-Stokes Live Theorem Edge

This is the narrow live authority handoff for the current Navier-Stokes lane.
The YAML edge file is the controlling surface:
`problems/navier-stokes/live-theorem-edge.yaml`.

## Active Route

- Primary frontier: `conditional terminal class-membership lane closure packet`
- Current route name: `Class-membership forward-invariance / endpoint-exclusion route`
- Retained receiver spine:
  `RSCB.NKF => NKF.Native => ACT.KX => ACT.X-Readout => ACT.A => RCF.A => LCI.A`
- Finite-energy-native averaged spine:
  `SCF_base + SGC.A_a.e + ATD_m^epsilon => SCF_avg^m => AACT.KX off B_epsilon^Phi => DTC.A_avg => AVG.RCV.A => LCI.A_avg => CSP.A_avg => OFP.A_avg => CFI.A_avg => AVG.MAIN.A`
- Retained source spine:
  `FCC.C1 -> FSCR.C -> FPCR.C -> FCI.5f`
- Retained one-field assembly:
  `LCI.A+FCI.5f => CSP.A => OFP.A => CFI.A`
- Averaged one-field assembly:
  `LCI.A_avg+FCI.5f => CSP.A_avg => OFP.A_avg => CFI.A_avg`
- Retained endpoint spine:
  `DTC-to-TowerBound + END.Exh + END.Cross + END.Pack + END.Field => End_NS`
- Averaged endpoint spine:
  `CFI.A_avg+AVG.END.Cert => End_NS_avg`, with
  `READ.END := End_NS_avg+Field.Read+DTC.Read => End_NS`
- Terminal packet:
  `CFI.A + End_NS => no finite-time class exit`

`ORIGIN.Retain` is installed as the original-data upgrade: retained-window
hypotheses are supplied on compact classical intervals, and `CFI.A+End_NS`
excludes first finite retained-window/class endpoints.

## Rehydration Rule

The Apr 25 `NS 22` TPS / exact-potential `PSJ+` reboot posture is historical
branch-local context under this handoff. It must not be rehydrated as the
lane-wide frontier.

If a stale note says that the preferred route is the TPS strong/defect bridge,
that the active frontier is `SG.4`, or that the exact-potential / `PSJ+` /
Hodge splice is the live lane edge, read that sentence as superseded by the
class-membership edge above unless a newer `live-theorem-edge.yaml` explicitly
promotes it again.

## Downstream Context Kept

- TPS / `SG.4`: preserved as the old TPS strong/defect bridge family's
  downstream geometric slot and one-field-coherence consumer context. It is not
  a prerequisite to `CFI.A`, `OFP.A`, or `LCI.A`.
- exact-potential / `PSJ+`: preserved as branch-specific readout and supplier
  support on the Law-2-survivor side. The `PSJ+.1` overlap refinements, including
  the fine `LOM.8` / `LOM.10` branch and the coarse `LRC.1` / `RCP.0`
  retained-cover endpoint, remain branch-local downstream context. The terminal
  branch assembly is recorded as `D.7mq+SSC-EP.A=>D.7mr2=>RPC.3`, with
  `SSC-D7mb-collapse` as one installed selector-strain supplier.
- Hodge / normal-covector: preserved as branch-specific readout support on the
  Law-2-survivor side, not as lane-wide route authority.
- Euclidean strict-shadow: preserved as downstream export branch only.

## Safe Claim Boundary

It is safe to claim that the lane's current theorem-facing edge is the
conditional class-membership closure packet, with retained and averaged receiver
branches, post-`LCI.A` source closure, accepted endpoint certificate maps, and
the original-data upgrade recorded explicitly.

It is not safe to claim unconditional periodic or whole-space regularity from
this packet alone, or to treat any downstream readout branch as a substitute for
the class-membership edge.

## Unsafe Overclaim

The first unsafe overclaim is promoting TPS / `SG.4`, exact-potential / `PSJ+`,
or Hodge / normal-covector readouts back to lane-wide leading-edge status, or
treating them as prerequisites to the current `CFI.A -> OFP.A -> LCI.A`
class-membership route.

## Primary Surfaces

- `problems/navier-stokes/live-theorem-edge.yaml`
- `problems/navier-stokes/source-frontier.yaml`
- `problems/navier-stokes/theorem-packet.yaml`
- `problems/navier-stokes/theorem-construction/live-frontier-honest-cut-reduction.md`
- `problems/navier-stokes/theorem-construction/mpp-class-membership-contradiction-frontier-packet.md`
- `problems/navier-stokes/theorem-construction/mpp-class-membership-forward-invariance-theorem-program.md`
- `problems/navier-stokes/theorem-construction/mpp-one-field-forward-preservation-theorem-program.md`
- `problems/navier-stokes/theorem-construction/mpp-lower-carrier-interval-integrability-theorem-program.md`

## Paper Rule

Paper-facing exports must present the class-membership forward-invariance /
endpoint-exclusion route as the live edge. TPS / `SG.4`, exact-potential /
`PSJ+`, Hodge / normal-covector, and Euclidean strict-shadow material may be
cited only as preserved downstream context unless a later authority surface
promotes one of them.
