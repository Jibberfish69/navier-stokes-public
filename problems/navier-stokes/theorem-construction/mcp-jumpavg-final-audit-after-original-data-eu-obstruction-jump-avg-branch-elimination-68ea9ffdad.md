# Final Jumpavg audit after original-data E_u obstruction

## Target

Rerun the `jump-avg-branch-elimination` audit after testing the original-data E_u alternatives.

## Installed progress

The route has:

```math
Jump_avg => epsilon-threshold SCF concentration sequence.
```

It also has finite bounded-overlap upper control for:

```math
nu_SCF = mu_D + sum_chi mu_P_chi.
```

## Latest obstruction

The original-data E_u step remains open. The local energy inequality supplies local balances. BKM or equivalent high regularity gives a conditional closure. The original-data route still lacks either:

```math
E_u terminal threshold => D_u/P terminal mass,
```

or an additive E_u carrier with bounded-overlap upper control.

Since this step is open, no final charge currently has both:

1. component selection from every threshold SCF packet;
2. finite bounded-overlap upper summability.

Separated recurrence therefore has no eligible target charge.

## Verdict

`jump-avg-branch-elimination` remains open.

## Exact next theorem

Install one of:

```math
E_u terminal threshold => D_u/P terminal mass,
```

or

```math
sum_k E_u(Q_k) <= C(E_0)
```

for the terminal separated windows used by recurrence.

Then prove:

```math
final charge positive terminal mass => separated recurrence.
```

## Boundary

This is a failed discharge audit. It records the narrowed original-data frontier and does not promote the matrix row to grounded.