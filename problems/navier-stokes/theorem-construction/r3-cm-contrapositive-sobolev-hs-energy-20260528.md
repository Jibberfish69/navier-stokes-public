# R3 Sobolev / H^s Energy Wall To CM Face

Date: 2026-05-28

Status: discharged as a route-local CM face-classification theorem.

## Target

Let (u,p) be a maximal smooth finite-energy Navier-Stokes solution on R^3 x [0,T_*) with T_* finite. Let

```math
\mathcal W=(O_{NS}^{work},Q,N,r,\Phi,\mathcal T)
```

be a synchronized same-fluid terminal witness ledger, with N above the continuation depth for H^s, s>5/2.

The theorem is

```math
SobWall_{H^s}(\mathcal W)
\Longrightarrow
\neg Pack_Q(\mathcal W)
\vee
\neg Part_{N,Q}(\mathcal W)
\vee
\forall \rho>0\,\neg Field_{N,\rho,Q}(\mathcal W).
```

## Proof

A terminal Sobolev wall means that the forward H^s energy hierarchy reaches T_* without producing the bounded H^s continuation readout.

First test the carrier. If the selected terminal Sobolev tower cannot be placed on a localized same-fluid R^3 terminal carrier with retained ancestry, finite overlap, and readout-compatible cover data, then the terminal object has lost the carrier service. This is exactly

```math
\neg Pack_Q(\mathcal W).
```

Assume Pack_Q survives. Test the law. The Sobolev hierarchy differentiates the same Navier-Stokes equation through depth N and uses the same velocity, pressure, viscosity, nonlinearity, and time ancestry. If that differentiated pressure-viscosity tower cannot be written on Q through depth N, then the same-law participation service has failed:

```math
\neg Part_{N,Q}(\mathcal W).
```

Assume Pack_Q and Part_{N,Q} survive. If there exists rho>0 with Field_{N,rho,Q}, then the terminal ledger contains a positive-scale coherent derivative tower through depth N on a readout-compatible localized R^3 packet. By the Sobolev readout for N above s+2, the local tower gives

```math
\sup_{t<T_*}\|u(t)\|_{H^s(R^3)}<\infty.
```

Set `M_s:=\sup_{t<T_*}\|u(t)\|_{H^s(R^3)}`. Classical `H^s` local theory for
`s>5/2` gives `\tau=\tau(\nu,s,M_s)>0`; for `t_j\uparrow T_*` with
`T_*-t_j<\tau/2`, the relaunch from `u(t_j)` exists beyond `T_*` and agrees
with the original solution on the overlap by uniqueness. This contradicts the
assumed terminal Sobolev wall. Therefore retained Pack and retained Part force

```math
\forall \rho>0\,\neg Field_{N,\rho,Q}(\mathcal W).
```

The three alternatives exhaust the Sobolev route: the wall is either loss of the same-fluid carrier, loss of the differentiated same-law tower, or loss of positive-scale coherent field readout. Hence the Sobolev/H^s terminal wall lands in Pack, Part, or Field.

## CM consequence

Since

```math
Member(Q):=Pack_Q\wedge Part_{N,Q}\wedge \exists\rho>0\,Field_{N,\rho,Q},
```

the Sobolev wall supplies

```math
Exit(Q):=\neg Member(Q).
```
