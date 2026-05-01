# Global Tail Branch Decision Result

## Target

Global selector statements using smooth Littlewood-Paley cutoffs must specify how the off-core kernel tail is controlled.

The tail estimate is

```math
\|(P_{\le j}v)_{tail}\|_{W^{1,\infty}}
\le
C_{N,s}2^jR^{-N}\|Y\|_{H_D^s}.
\tag{GTB.1}
```

## Decision

For global theorem statements with arbitrary active readout size, use explicit ledger inclusion:

```math
\Phi_{tail,*}
:=
\Phi_*+	heta_{tail}C_{N,s}2^jR^{-N}\|Y\|_{H_D^s}.
\tag{GTB.2}
```

Then

```math
\|(P_{\le j}v)_{tail}\|_{W^{1,\infty}}
\le
\theta_{tail}^{-1}\Phi_{tail,*}.
\tag{GTB.3}
```

## Bounded-test specialization

For normalized or bounded active tests satisfying

```math
\|Y\|_{H_D^s}\le B_Y,
\tag{GTB.4}
```

one may keep `\Phi_*` and choose a fixed `R` satisfying

```math
C_{N,s}2^jR^{-N}B_Y
\le
C\Phi_*(\mathcal E_D(X)).
\tag{GTB.5}
```

## Active-radius specialization

For a theorem allowing test-dependent selector radius, choose

```math
R_j(Y,X)^N
\ge
C_{N,s}2^j\|Y\|_{H_D^s}\Phi_*(\mathcal E_D(X))^{-1}.
\tag{GTB.6}
```

Then the original ledger `\Phi_*` absorbs the tail.

## Result

The default global branch is `\Phi_{tail,*}`. The final global amplitude/speed and collar theorems should use

```math
\Phi_{final}:=\Phi_{tail,*}
\tag{GTB.7}
```

unless the active test class is bounded or the selector radius is allowed to depend on `Y`.

## Source surfaces

- `problems/navier-stokes/theorem-construction/littlewood-paley-tail-control-choice-result.md`
- `problems/navier-stokes/theorem-construction/littlewood-paley-tail-estimate-for-active-readout-result.md`
- `problems/navier-stokes/theorem-construction/global-selector-plateau-core-result.md`