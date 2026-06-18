# R3 Prodi-Serrin Wall To CM Face

Date: 2026-05-28

Status: discharged as a route-local CM face-classification theorem.

## Target

For a synchronized same-fluid R3 terminal witness ledger

```math
\mathcal W=(O_{NS}^{work},Q,N,r,\Phi,\mathcal T),
```

prove

```math
PSWall_{p,q}(\mathcal W)
\Longrightarrow
\neg Pack_Q(\mathcal W)
\vee
\neg Part_{N,Q}(\mathcal W)
\vee
\forall\rho>0\,\neg Field_{N,\rho,Q}(\mathcal W).
```

Here PSWall means that the forward Prodi-Serrin route reaches T_* without a finite continuation norm in a permitted spacetime class.

## Proof

The Prodi-Serrin route propagates a critical spacetime readout. Test the carrier first. When the terminal spacetime concentration has no same-fluid localized carrier in the selected R3 ledger, the Pack service has failed:

```math
\neg Pack_Q(\mathcal W).
```

Assume Pack_Q survives. The Prodi-Serrin quantity must remain attached to the same Navier-Stokes solution, same pressure, same viscosity, and same transported ancestry. If this same-law participation breaks on Q, then

```math
\neg Part_{N,Q}(\mathcal W).
```

Assume Pack_Q and Part_{N,Q} survive. If some positive Field_{N,rho,Q} survives, the terminal packet supplies positive-scale local velocity coherence through the readout depth. The finite-overlap carrier and Field readout give the Prodi-Serrin spacetime bound on the terminal interval.

The readout must give an exact Prodi-Serrin bound for the same solution on a
terminal interval:
`u\in L^q((T_*-\delta,T_*);L^p(R^3))` with `2/q+3/p\le 1` and `p>3` (or the
endpoint version only if that endpoint theorem is explicitly invoked). The
classical Prodi-Serrin continuation theorem then excludes blow-up at `T_*`: the
maximal smooth solution has a continuation past `T_*`, and uniqueness
identifies the continued solution with the original one on the overlap. This
contradicts the assumed Prodi-Serrin terminal wall.

Therefore retained Pack and retained Part force

```math
\forall\rho>0\,\neg Field_{N,\rho,Q}(\mathcal W).
```

The Prodi-Serrin wall is exhausted by Pack, Part, or Field.

## CM consequence

The wall gives

```math
Exit(Q):=\neg Member(Q).
```
