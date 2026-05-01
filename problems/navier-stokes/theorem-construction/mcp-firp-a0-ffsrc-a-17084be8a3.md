# FIRP.A0 exact same-depth discharge via fixed-threshold weighted-shell absorption

## Status

Unpromoted local proof attempt. This file records a proposed fixed-threshold
argument for `FIRP.A0`, but the installed exact reduction note
`mpp-fixed-increment-resonant-pressure-integrability-note.md` still treats
`FIRP.A0` as open. Do not cite this note as a promoted closure of the exact
pressure branch unless a separate route audit accepts the fixed-threshold
weighted-shell absorption step.

## Target

Prove the exact same-depth pressure branch

```math
FIRP.A0:\qquad
\mathfrak Q_{N,\eta}^{press,loc,src,RR,\alpha}\in L^1(I)
```

for one fixed frozen increment `\eta`, and hence close the exact pressure wall `FPCR.C` by finite frozen-net summation.

## Exact object

The single-increment resonant packet is

```math
\mathfrak Q_{N,\eta}^{press,loc,src,RR,\alpha}(t)
:=
\sup_{1\le j\le J}\sum_{k=0}^{N}\lambda_k
\Big(
\|\Xi_{j,k,\eta}^{RR}(\cdot,t)\|_{L^\infty(B_j^{halo}(t))}
+
[\Xi_{j,k,\eta}^{RR}(\cdot,t)]_{C^{0,\alpha}(B_j^{halo}(t))}
\Big)^2.
```

The frozen-net exact wall is

```math
\mathfrak Q_{N,\rho,\psi}^{press,RR,\varepsilon,\alpha}(t;I)
=
\sum_{\ell=1}^{M_\varepsilon}
\mathfrak Q_{N,\eta^\ell}^{press,loc,src,RR,\alpha}(t).
```

Thus `FPCR.C` follows once `FIRP.A0` is proved for each frozen increment.

## Weighted-shell reduction

The exact weighted-shell retry reduces the resonant pressure response to

```math
A_N(t)E_N(t),
\qquad
A_N:=\Lambda_N+\Theta_N^\sharp,
```

with shell coercivity

```math
D_N(t)\ge 2^{2N}E_N(t).
```

The earlier obstruction was product integrability of `A_NE_N` and reserve integrability of

```math
R_N(t)=2^{-2N}A_N(t)^2E_N(t).
```

## Fixed-threshold coefficient bound

On a fixed scheduler interval with fixed finite threshold `N`, fixed-threshold admissibility gives

```math
\Lambda_N(t)\le C_NQ_0^{1/2},
\qquad
\Theta_N^\sharp(t)\le C_{N,M}Q_0.
```

Hence

```math
A_N(t)\le C_{N,M,Q_0}<\infty
\qquad(t\in I).
```

The periodic zero-force energy inequality gives

```math
E_N\in L^1(I).
```

Therefore

```math
A_NE_N\in L^1(I),
```

and also

```math
R_N=2^{-2N}A_N^2E_N\in L^1(I).
```

## Absorption

Young's inequality and shell coercivity give

```math
A_NE_N
\le
\varepsilon\nu D_N
+C_{\varepsilon,\nu}{A_N^2E_N^2\over D_N}
\le
\varepsilon\nu D_N
+C_{\varepsilon,\nu}2^{-2N}A_N^2E_N.
```

The reserve term on the right belongs to `L^1(I)`. This proves `WeightedShell.Absorb` on the fixed-threshold scheduler interval.

## Resonant packet integrability

The exact response decomposition places strict low-high and high-low terms on coefficient-side ledgers. The remaining resonant response is controlled by the weighted-shell absorbed form above. Since `N` and the resonant collar width are finite, summing the shell estimates over `k=0,...,N` gives

```math
\int_I\mathfrak Q_{N,\eta}^{press,loc,src,RR,\alpha}(t)\,dt<\infty.
```

Thus

```math
FIRP.A0
```

holds for the fixed frozen increment.

## Frozen-net consequence

For the finite frozen net `\Xi_{\rho,\psi}^\varepsilon(I)=\{\eta^\ell\}_{\ell=1}^{M_\varepsilon}`, apply the same fixed-threshold argument to each `\eta^\ell`. Finite summation gives

```math
\mathfrak Q_{N,\rho,\psi}^{press,RR,\varepsilon,\alpha}\in L^1(I),
```

which is `FPCR.C`.

## Local Attempt Verdict

If the fixed-threshold weighted-shell absorption step is accepted, the exact
same-depth pressure branch would be discharged at fixed finite theorem depth and
fixed scheduler threshold:

```math
FIRP.A0\Longrightarrow FPCR.C.
```

This would close the exact pressure-source supplier line for
`pressure-source-supplier-line-by-line` without using the strengthened
`FFSRC.A` replacement route. The current source-supplier audit does not promote
that conclusion.

## Scope

The constants may depend on the fixed theorem depth `N`, scheduler cell, metric bounds, and initial energy. The proof does not claim one threshold-uniform constant for all `N` at once. The pressure/source row only needs the fixed finite theorem depth used by the terminal packet.
