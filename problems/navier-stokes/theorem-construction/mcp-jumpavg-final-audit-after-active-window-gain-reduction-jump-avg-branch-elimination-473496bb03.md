# Final Jumpavg audit after active-window gain reduction

## Target

Rerun `jump-avg-branch-elimination` after testing the additive `E_u` carrier route.

## Installed progress

The branch has a threshold extraction:

```math
Jumpavg => epsilon-threshold SCF concentration sequence.
```

It also has raw finite upper control for `nu_SCF` on bounded-overlap windows.

## Latest reduction

The additive `E_u` carrier route reduces to an active-window amplitude gain or heat-scale square-source estimate. This is because the no-escape contradiction requires scale-normalized terminal upper control, while raw finite mass gives only unweighted bounded-overlap control.

The active-window amplitude gain is not installed.

## Audit

No final charge currently satisfies both requirements:

1. every threshold SCF packet selects positive mass for the charge;
2. the charge has finite scale-normalized upper control on separated terminal windows.

`nu_SCF` satisfies the raw upper-control side but misses the `E_u` channel. The enlarged `E_u` charge covers the components formally but lacks the scale-normalized Carleson upper estimate.

Separated recurrence therefore has no valid target charge.

## Verdict

`jump-avg-branch-elimination` remains open.

## Exact next theorem

```math
active-window amplitude gain
```

or an equivalent heat-scale square-source estimate strong enough to give the final charge scale-normalized upper control.

## Boundary

This note records a failed discharge audit and the narrowed active-window gain frontier.