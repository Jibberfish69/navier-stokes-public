# MPP Signed Square-Reserve Evolution Direct Attempt

## Status

Claimed status: failed.

This note attempts to prove the signed square-reserve evolution identity requested after the donor time-thickness attempt. The target is a signed identity whose positive residual controls the source-wall reserve density.

## Target

Let

```math
T_k(t):=\sum_{\ell>k+4}D_\ell(t),
\qquad
S_N(t):=\sum_{k>N}2^kT_k(t)^2.
```

The desired signed theorem is a reserve-scale identity

```math
SignedSquareReserveEvolution.A:
\quad
S_N(t)=\partial_t\Phi_N(t)+\mathcal D_N^{good}(t)+\mathcal E_N(t),
```

with

```math
\int_0^{T_*}|\mathcal E_N(t)|dt\le o_N(1)+Loss_{legal},
```

and terminal boundary control

```math
|\Phi_N(T_*)|+|\Phi_N(0)|\le o_N(1)+Loss_{legal}.
```

Such an identity would imply `ScaleCriticalTreeCarleson.A` by integrating in time.

## Formal primitive test

A formal primitive always exists:

```math
\Phi_N^{formal}(t):=\int_0^tS_N(s)ds,
\qquad
S_N(t)=\partial_t\Phi_N^{formal}(t).
```

This gives no estimate, because

```math
\Phi_N^{formal}(T_*)=\int_0^{T_*}S_N(t)dt=\mathcal R_N.
```

So the primitive boundary equals the target quantity. The route closes only if the primitive arises from a Navier-Stokes signed balance with independent terminal boundary control.

## Bare dyadic skew-current test

The installed signed input is the unweighted dyadic skew algebra, recorded as `BareDyadicSkewCurrent.0`. It acts before the following operations:

1. terminal same-fluid packet selection;
2. one-sided positive-part extraction;
3. lifted cutoff commutatorization;
4. scale-critical donor weighting;
5. boundary/collar/legal-loss pricing.

The square reserve is the positive object

```math
S_N(t):=
\sum_{\ell,m>N}2^{\min(\ell,m)}D_\ell(t)D_m(t),
```

or in packet form

```math
\sum_{P^-}|A_{P^-}(t)|^2.
```

Bare skew cancellation controls a signed exchange before terminal localization. Passing from that signed exchange to the positive selected terminal square requires the signed-current gates

```math
TerminalSkewLocalizationLedger.A,
\qquad
WeightedLiftedSkewDefectLegal.A,
\qquad
OffSaturationBoundaryPricing.A.
```

The current signed-current ledger reduces those gates back to the native source wall. In particular, the hard weighted lifted carrier is the positive active strain-production type object

```math
|w_j|^2\,[e_j\cdot S^{loc}_{<j}e_j]_+,
```

which is another presentation of the same source-wall reserve rather than a lower installed cancellation.

## Boundary obstruction

A successful signed identity must control terminal boundary values of the signed potential. The scalar pulse obstruction shows why this is a theorem-grade issue. For

```math
D_{m+5}(t)=A_mh_m^{-1}{\bf 1}_{I_m}(t),
```

one gets

```math
\int_{I_m}S_N(t)dt\ge 2^mA_m^2h_m^{-1}.
```

Choosing `h_m=2^mA_m^2/\eta` keeps this contribution equal to `\eta` while the first moment tends to zero. Any signed primitive that absorbs this pulse must place size `\eta` into a boundary term, a negative companion term, or a controlled error. Current installed ledgers supply none of those at reserve scale.

## Verdict

The signed square-reserve evolution identity fails from the present installed inputs.

The strongest valid reduction is conditional:

```math
TerminalSkewLocalizationLedger.A
+WeightedLiftedSkewDefectLegal.A
+OffSaturationBoundaryPricing.A
\Longrightarrow
SignedSquareReserveEvolution.A.
```

On the current lane surface, `WeightedLiftedSkewDefectLegal.A` is the hard gate. The signed-current branch is therefore a structural presentation of the source wall, while the live lower targets remain

```math
ScaleCriticalTreeCarleson.A
\quad\text{or}\quad
ZenoBoundedClass_B.A+ZenoResidueLiouville_B.A.
```

## Impact on the loop

The signed-square branch reduces to the same native source-wall burden. The remaining independent route is the Zeno rigid-class contradiction; the Row 5 lifted-band `L-Flux` branch remains a separate non-low packet closure route.
