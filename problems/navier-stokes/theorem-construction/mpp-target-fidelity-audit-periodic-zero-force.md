# MPP Target-Fidelity Audit: Periodic Zero-Force Branch

## Accepted Target

```text
T^3, smooth divergence-free zero-mean initial data, f=0
```

## Check

The active target-fidelity bridge states the periodic zero-force branch:

```text
M = T^3
f = 0
nu > 0
u_0 in C^\infty(T^3; R^3)
div u_0 = 0
int_{T^3} u_0 = 0
```

The export paper main-result section states the theorem on `T^3`, assumes
smooth divergence-free zero-mean initial data, and writes the unforced
Navier-Stokes equation. The roadmap and scope paragraph both say that a
whole-space theorem on `R^3` is a separate export problem.

## Verdict

```text
target fidelity: pass
whole-space overclaim: avoided
```

The live theorem statement matches the accepted periodic zero-force target and
does not claim the whole-space branch.
