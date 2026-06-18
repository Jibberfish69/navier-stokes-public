# Post-Collar Proof-Obligation Reconciliation Result

## Supersession

This note is superseded by the live proof-obligation matrix, source frontier,
and live theorem edge after the source-pulse audits.  The current live status is:

```text
unresolved_count: 1
frontier_count: 1
blocking_count: 1
all_discharged: false
active theorem: OriginalSmoothData=>SourcePulseExclusion.A
measure form: OriginalSmoothData=>mu_*^sing=0
```

The historical zero-frontier report below is not current authority.

## Target

Check whether the final collar-route artifacts and the periodic terminal-tail bridge audit are reflected in the current governance surfaces:

```text
proof-obligation-matrix.yaml
theorem-packet.yaml
source-frontier.yaml
```

## Surfaces checked

```text
problems/navier-stokes/proof-obligation-matrix.yaml
problems/navier-stokes/theorem-packet.yaml
problems/navier-stokes/source-frontier.yaml
```

## Proof-obligation matrix status

The historical proof-obligation matrix report below is superseded.  Current
authority reports one unresolved blocking source-pulse obligation.

```text
current route: SourcePulseCMExit.A route-governing primitive with SourcePulseExclusion.A as strong supplier blocks downstream PCTP.hard / TTU.A
unresolved_count: 1
frontier_count: 1
blocking_count: 1
all_discharged: false
```

It also records the live theorem edge summary:

```text
TGC.A + AACT.Global.noJump + AVG.END.A + READ.END => PCTP.hard
```

and identifies the live local membership target as `M_Q(u,p)` witnessed through `Pack / Part / Field`.

## Theorem packet status

The theorem packet now reports:

```text
current_package_status: blocked-by-sourcepulse-cm-exit-primitive
standalone_status: revise
frontier_count: 1
packet_complete: false for full MPP closure
export_ready: false
blockers: [SourcePulseCMExit.A, with current direct supplier target OriginalSmoothData=>SourcePulseExclusion.A]
```

It lists the periodic terminal-tail bridge route as the live theorem edge. It also carries the safe boundary that release remains governed by promotion, target-fidelity, source/export, review, submission, reproducibility, and final release-decision artifacts.

## Source frontier status

The source frontier reports:

```text
unresolved_obligations: []
dashboard_unresolved_obligations: []
active_frontier_labels: []
authoritative_gap_count: 0
live_theorem_edge_present: true
freeze_recommended: false
```

It also records the same live edge:

```text
periodic terminal-tail bridge promotion audit after PCTP.hard discharge
```

and the same bridge statement:

```text
TGC.A + AACT.Global.noJump + AVG.END.A + READ.END => PCTP.hard
```

## Local artifact reflection

The final collar-route files are local theorem-construction artifacts and are indexed by:

```text
problems/navier-stokes/theorem-construction/final-collar-route-index.md
problems/navier-stokes/theorem-construction/final-collar-route-status-summary.md
problems/navier-stokes/theorem-construction/final-collar-route-notation-audit-result.md
```

The terminal-tail audit is indexed by:

```text
problems/navier-stokes/theorem-construction/post-collar-upstream-frontier-terminal-tail-audit.md
problems/navier-stokes/theorem-construction/periodic-terminal-tail-bridge-promotion-audit-result.md
```

The governance surfaces already reflect the terminal-tail bridge as the live edge. The final collar artifacts sit as local theorem-construction support rather than refreshed matrix rows.

## Reconciliation conclusion

The governance surfaces show no unresolved proof-obligation frontier and preserve the periodic terminal-tail bridge as the promoted live edge. The final collar route is locally indexed and conditionally closed, while the terminal-tail bridge audit aligns with the current live theorem edge.

## Boundary

This reconciliation is a local theorem-note artifact. Release-level claims still require the separate promotion and release artifacts named by the governance surfaces.

## Source surfaces

- problems/navier-stokes/proof-obligation-matrix.yaml
- problems/navier-stokes/theorem-packet.yaml
- problems/navier-stokes/source-frontier.yaml
- problems/navier-stokes/theorem-construction/final-collar-route-index.md
- problems/navier-stokes/theorem-construction/final-collar-route-status-summary.md
- problems/navier-stokes/theorem-construction/periodic-terminal-tail-bridge-promotion-audit-result.md
