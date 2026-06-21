---
ns_viewer:
  theorem_id: terminal-peak-backoff-and-vortex-return-dichotomy-20260610
  status: proved-structural-dichotomy-open-ns-rate-supplier
  proof_role: active_completion_dissipation_return_clock
  logical_landing_node: terminal_peak_backoff_vortex_return_dichotomy
  edge_effect: "Refines VortexPeakReturnDebt.A and TerminalPeakBackoff.A: a positive-radius packet peak cannot erase its return interval without either paying total variation/return budget or causing a CM Part/Field failure."
  upstream_origin:
    - /Users/thomasbirnie/.codex/attachments/9bf84840-083e-49fc-b943-7844429d4713/pasted-text.txt
    - problems/navier-stokes/theorem-construction/mpp-participation-debt-mechanism-reentry-20260610.md
  downstream_consequence: "Turns the terminal peak/rest collision into a formal return-clock dichotomy. The missing supplier is the Navier-Stokes-specific return-rate budget for the selected packet load."
---

# MPP TerminalPeakBackoffAndVortexReturnDichotomy.A

Date: 2026-06-10

Status: proved structural dichotomy, with the Navier-Stokes return-rate supplier
still open. This note does not prove public Clay finality.

## Target

This note refines these prompt objects:

```text
VortexSelfTighteningBalance.A
VortexPeakReturnDebt.A
TerminalPeakBackoff.A
```

The prompt's intended point is not that viscosity alone solves Navier-Stokes.
The point is that a same-fluid packet cannot be treated as a private one-way
sink. A vortex peak has to pay return, dissipation, pressure, and neighbor
participation debt.

The unsafe informal phrase was:

```text
[T*-, T*, T*+].
```

The formal terminal language here is:

```text
t up to T*
```

There is no theorem use of a right-sided limit to infinity at `T*`.

## Packet Load

Let `P_r(t)` be a positive-radius packet of scale `r>0`. Let

```text
A_r(t)
```

be a packet load readout. Depending on the branch this can be a velocity
gradient scale, vorticity amplitude, enstrophy density, pressure-work readout,
or selected source-current load.

Assume on a time interval `I=(a,b)` that the packet is a same-time participating
object with an absolutely continuous load trace:

```text
A_r in AC(I).
```

This is the minimal time-trace assumption needed before the phrase "the packet
peaks and returns" has mathematical content. If the packet does not have such a
trace, that absence is already a Part/Field/Pack diagnostic, depending on which
carrier is claimed.

## Return-Clock Lemma

Assume `A_r` has a peak at `t0 in (a,b)`:

```text
A_r(t0) = A_peak.
```

Assume the same packet is claimed to return by `b` to a lower level `A_end`:

```text
A_r(b) <= A_end.
```

Then any return-rate majorant `R_r in L1(t0,b)` satisfying

```text
|d A_r / dt| <= R_r
```

on the return side must obey

```text
integral_{t0}^{b} R_r(t) dt >= A_peak - A_end.
```

In particular, if `A_end` is bounded and `A_peak -> infinity`, then the return
budget on the interval must diverge.

Proof: absolute continuity gives

```text
A_r(t0) - A_r(b)
  = - integral_{t0}^{b} A_r'(t) dt
  <= integral_{t0}^{b} |A_r'(t)| dt
  <= integral_{t0}^{b} R_r(t) dt.
```

That is the whole structural point: a peak does not disappear for free.

## Positive Return Time Corollary

If the return rate has a finite scale law on the selected packet,

```text
R_r(t) <= B(A_peak,r)
```

on `(t0,b)`, then

```text
b - t0 >= (A_peak - A_end) / B(A_peak,r).
```

So a claimed return time

```text
tau_return(A_peak,r) = b - t0
```

can collapse to zero only if the return-rate budget grows fast enough to pay
the peak debt.

This is exactly where the Navier-Stokes supplier must enter. A finished proof
needs a lawful bound on `B(A,r)` or a CM Part/Field classification for the branch
where `B(A,r)` becomes unbounded.

## Terminal Peak Dichotomy

Let `t_n up to T*` be a terminal sequence of packet peaks:

```text
A_{r_n}(t_n) -> infinity.
```

Suppose the same branch also claims that the packet load returns, dissipates,
or remains part of a lawful same-fluid continuation without any positive return
interval.

Then exactly one of these must be supplied:

```text
1. Return payment:
   a lawful return-rate budget R_{r_n} with
   integral R_{r_n} >= A_{r_n}(t_n) - A_end,n.

2. Field landing:
   the required return-rate, gradient, pressure-work, or source-current
   budget becomes unbounded on retained positive-scale carriers.

3. Part landing:
   the branch keeps the same carrier name while losing the time-trace,
   neighbor participation, pressure coupling, or dissipation channel needed
   to make return meaningful.

4. Pack landing:
   no positive-radius retained carrier survives; only a zero-radius endpoint
   artifact is left.
```

This proves the structural fork. It does not yet prove which Navier-Stokes
branch occurs for every possible packet readout.

## VortexPeakReturnDebt.A

For a vortex packet, `A_r(t)` may be chosen as angular velocity scale, vorticity
scale, annular shear, or a source-current readout.

The theorem statement is:

```text
A vortex peak is either paid by a return/dissipation budget
or it is not a lawful same-packet peak inside the CM witness tree.
```

The prompt's damped-spring idea lands here: a peak has a debt. The theorem
does not assume that every vortex literally behaves as a linear spring. It
extracts the mathematical obligation that any claimed peak-return history must
pay total variation in time.

## VortexSelfTighteningBalance.A

The anti-self-tightening point lands as a corollary of the same accounting:

```text
indefinite inward winding is not a free monotone process.
```

If a vortex winds tighter, at least one of the packet readouts increases. That
increase must be paid by incoming work, pressure response, viscous boundary
exchange, or donor load. If the vortex later returns, the return-clock lemma
charges the decrease. If it never returns and becomes singular, the branch moves
to payability or CM Part/Field classification.

## Relation To The First Terminal Pack/Source Failure

The old terminal source branch allowed the bad picture:

```text
load concentrates into a terminal layer,
then the layer disappears as a boundary artifact.
```

This note blocks that picture from being treated as a free smooth continuation.
The branch must either pay a return budget or land as Pack / Part / Field
support. The low-high endpoint-source notes already prove the Field-certification
landing for the zero-thickness endpoint source atom with no retained carrier.

## Remaining Mathematical Supplier

The open Navier-Stokes theorem is:

```text
find the lawful return-rate budget B(A,r)
for the selected packet readout,
or prove that every branch where B(A,r) becomes unbounded is a CM Part/Field exit.
```

That supplier belongs with:

```text
ParticipationTransferThrottle.A
DonorDrainCompetition.A
SinguletSpinSmoothExteriorCompatibility.A.
```
