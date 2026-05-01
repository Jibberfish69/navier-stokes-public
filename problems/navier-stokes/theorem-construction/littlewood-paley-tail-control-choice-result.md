# Littlewood-Paley Tail Control Choice Result

## Target

The Littlewood-Paley tail estimate gives

```math
\|(P_{\le j}v)_{tail}\|_{W^{1,\infty}}
\le
C_{N,s}2^jR^{-N}\|Y\|_{H_D^s}.
\tag{LPTC.1}
```

The lower-order target is

```math
\|(P_{\le j}v)_{tail}\|_{W^{1,\infty}}
\le
C\Phi_*(\mathcal E_D(X)).
\tag{LPTC.2}
```

## Branch A: bounded active class

If the active test class satisfies

```math
\|Y\|_{H_D^s}\le B_Y
\tag{LPTC.3}
```

and the fixed radius `R` is chosen so that

```math
C_{N,s}2^jR^{-N}B_Y
\le
C\Phi_*(\mathcal E_D(X)),
\tag{LPTC.4}
```

then `LPTC.2` holds.

## Branch B: active-radius enlargement

For arbitrary `Y`, choose an active radius `R_j(Y,X)` satisfying

```math
R_j(Y,X)^N
\ge
C_{N,s}2^j\|Y\|_{H_D^s}\Phi_*(\mathcal E_D(X))^{-1}.
\tag{LPTC.5}
```

Then `LPTC.1` implies `LPTC.2`.

This branch preserves the lower-order ledger at the cost of an active, test-dependent collar radius.

## Branch C: ledger inclusion

Define an enlarged lower-order ledger

```math
\Phi_{tail,*}
:=
\Phi_*+	heta_{tail}C_{N,s}2^jR^{-N}\|Y\|_{H_D^s}.
\tag{LPTC.6}
```

Then

```math
\|(P_{\le j}v)_{tail}\|_{W^{1,\infty}}
\le
\theta_{tail}^{-1}\Phi_{tail,*}.
\tag{LPTC.7}
```

This branch preserves a fixed radius and arbitrary active amplitudes by explicitly measuring the tail in the lower-order ledger.

## Decision

The theorem-facing local collar route may use Branch A for normalized or bounded tests. A global arbitrary-amplitude readout route should use either Branch B or Branch C.

For a fixed global selector independent of `Y`, Branch C is the stable bookkeeping option. Branch B changes the selector radius with the test size.

## Result

The Littlewood-Paley tail is controlled by exactly one of the following inputs:

```text
bounded active class;
active-radius enlargement;
explicit tail ledger inclusion.
```

## Source surfaces

- `problems/navier-stokes/theorem-construction/littlewood-paley-tail-estimate-for-active-readout-result.md`
- `problems/navier-stokes/theorem-construction/active-readout-subordination-to-persistent-carrier-core-result.md`
- `problems/navier-stokes/theorem-construction/global-selector-plateau-core-result.md`