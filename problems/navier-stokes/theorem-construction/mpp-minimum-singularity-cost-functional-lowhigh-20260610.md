---
ns_viewer:
  theorem_id: minimum-singularity-cost-functional-lowhigh-20260610
  status: proved-cost-lower-bound-not-public-finality
  proof_role: active_completion_cost_theorem
  logical_landing_node: minimum_singularity_cost_functional_lowhigh
  edge_effect: "Defines the shared low-high terminal source cost and proves that a positive source mass in shrinking terminal strips has finite L1 cost but divergent super-L1, Orlicz, and time-thickness cost."
  upstream_origin:
    - problems/navier-stokes/theorem-construction/mpp-participation-debt-mechanism-reentry-20260610.md
    - problems/navier-stokes/theorem-construction/mpp-low-high-terminal-signed-saturation-forward-no-free-sink-direct-attempt-20260610.md
    - problems/navier-stokes/theorem-construction/mpp-terminal-timeface-no-source-atom-reentry-20260609.md
  downstream_consequence: "Supplies the common Cost_sing(P,r;Q) number needed by the payability and ontology lanes: a terminal source strip of mass M and thickness tau costs at least M^p tau^(1-p) in every p>1 temporal source residence."
---

# MPP MinimumSingularityCostFunctional_lowhigh.A

Date: 2026-06-10

Status: proved cost lower bound for the low-high terminal source strip. This
does not prove public Clay finality and does not license PDF finality.

## Target

The live terminal source obstruction is a sequence of nonnegative selected
source-time marginals on shrinking terminal windows:

```text
I_n=(T_n-tau_n,T_n],
tau_n -> 0,
g_n >= 0,
M_n := integral_{I_n} g_n(s) ds >= M0 > 0.
```

The scalar family `g_m(s)=m 1_{(-1/m,0]}(s)` is only the sharp witness for why
finite `L1_s` mass and vanishing heat-time moment do not remove the branch.

The proof needs an explicit answer to Thomas's question:

```text
how much is actually needed to be paid?
```

For the low-high source branch, the cost is not raw source mass. Raw `L1_s`
mass is exactly the endpoint quantity that misses the terminal strip. The cost
must measure how much source load is being forced through a vanishing time
window.

## Statement

Let `I_n=(T_n-tau_n,T_n]` with `tau_n -> 0`. Let `g_n >= 0` be the selected
low-high positive source density on `I_n`, and suppose the selected source mass
does not vanish:

```text
M_n := integral_{I_n} g_n(s) ds >= M0 > 0.
```

For every `p>1`,

```text
Cost_p(g_n,I_n)
  := integral_{I_n} g_n(s)^p ds
  >= M0^p tau_n^{1-p}.
```

For every convex superlinear gauge `Phi` with `Phi(x)/x -> infinity`,

```text
Cost_Phi(g_n,I_n)
  := integral_{I_n} Phi(g_n(s)) ds
  >= tau_n Phi(M0/tau_n),
```

and the right side diverges as `tau_n -> 0`.

The minimum singularity cost for this branch is therefore:

```text
Cost_sing_lowhigh(P,I_n; source)
  = any super-L1 temporal residence cost needed to keep the source history
    from collapsing into an endpoint atom.
```

In the power-scale family this cost has the explicit lower bound:

```text
Cost_sing_lowhigh(P,I_n; p)
  >= M0^p tau_n^{1-p}.
```

## Proof

Holder's inequality gives:

```text
M_n = integral_{I_n} g_n ds
    <= |I_n|^{1-1/p} (integral_{I_n} g_n^p ds)^{1/p}.
```

Rearranging,

```text
integral_{I_n} g_n^p ds
  >= M_n^p |I_n|^{1-p}
  >= M0^p tau_n^{1-p}.
```

Since `p>1` and `tau_n -> 0`, this lower bound diverges.

For the Orlicz version, Jensen gives:

```text
1/tau_n integral_{I_n} Phi(g_n) ds
  >= Phi(1/tau_n integral_{I_n} g_n ds)
  >= Phi(M0/tau_n).
```

Multiplying by `tau_n`,

```text
integral_{I_n} Phi(g_n) ds
  >= tau_n Phi(M0/tau_n).
```

Because `Phi(x)/x -> infinity`,

```text
tau_n Phi(M0/tau_n)
  = M0 * [Phi(M0/tau_n)/(M0/tau_n)]
  -> infinity.
```

This proves the lower bounds.

## Check On The Exact Witness Family

For

```text
g_m(s)=m 1_{(-1/m,0]}(s),
```

the raw source mass is:

```text
integral g_m ds = 1.
```

The heat-time moment is:

```text
integral_{-1/m}^0 |s| g_m(s) ds = 1/(2m) -> 0.
```

So finite `L1_s` and vanishing heat-time moment do not see the obstruction.

For every `p>1`,

```text
integral g_m(s)^p ds = m^{p-1} -> infinity.
```

That is the exact payment figure for the terminal strip.

## Result

The terminal source-time marginal is not "untraceable" in the ontological
sense. It has precise cost data:

```text
finite L1_s mass,
vanishing heat-time moment,
divergent every-super-L1 temporal residence cost.
```

This theorem supplies the shared number for the next two branches:

```text
Payability:
  can the same participating fluid lawfully deliver Cost_sing_lowhigh?

Ontology:
  if that cost is paid, what kind of fluid object has been produced?
```

## Live Criticism Delta

`NS-LIVE-20260610-COST-001`: the terminal source strip is no longer a vague
"source-time anti-atom" target. It has explicit cost. A positive low-high
terminal source mass in a window of thickness `tau` costs at least
`M0^p tau^(1-p)` in every `p>1` temporal source-residence scale, while finite
`L1_s` still allows it. The next theorem cannot ask generally for "better
source control"; it must either prove that participation supplies a finite
super-`L1` cost budget for the same witness, or route the infinite-cost endpoint
strip as a limit-of-class / Pack-face failure.
