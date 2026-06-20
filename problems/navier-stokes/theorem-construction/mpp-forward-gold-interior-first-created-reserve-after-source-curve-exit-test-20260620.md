# MPP Forward-Gold Interior First-Created Reserve After Source-Curve Exit Test

Date: 2026-06-20

## Status

Direct post-source-curve-exit test complete.  The endpoint source-curve
pass-or-exit theorem removes the terminal endpoint-modulus failure from the
forward-gold blocker list by routing that failure to a terminal atom and then to
Part/Field.  It does not remove the interior first-created square-reserve
branch.

The reason is exact: the first-created reserve can have vanishing \(L^1_s\)
source mass and no endpoint atom, while its unweighted square reserve remains
order one on a normalized heat-time subwindow away from \(s=0\).

## 1. Source-curve endpoint branch already sorted

For the selected positive source density \(a_m(s)\ge0\), the source-curve note
proves

```math
\lim_{\theta\downarrow0}\limsup_m
\int_{-\theta}^{0}a_m(s)\,ds=0
```

or else a weak-* terminal atom appears at \(s=0\).  On the same-solution branch,
that atom is consumed by `TerminalAtomPartFieldFirstExit.A`.

Thus endpoint concentration of finite \(L^1_s\) selected source mass is no
longer an independent in-class terminal branch.

## 2. The interior reserve branch is a square object

The first-created reserve branch uses the square density

```math
\mathcal R_N(W)
=
\int_W\sum_{k>N}2^kT_k(t)^2\,dt,
\qquad
T_k(t)=\sum_{\ell>k+4}D_\ell(t).
\tag{IFR.1}
```

After heat normalization, the model one-scale reserve density has the form

```math
G_m(s)^2,
\qquad
G_m(s)=h_m^{-1/2}{\bf 1}_{J_m}(s),
\tag{IFR.2}
```

where

```math
J_m=(s_0,s_0+h_m],
\qquad
-1<s_0<s_0+h_m<0,
\qquad
h_m\downarrow0.
\tag{IFR.3}
```

Then

```math
\int_{-1}^{0}G_m(s)^2\,ds=1,
\tag{IFR.4}
```

but the first moment is small:

```math
\int_{-1}^{0}G_m(s)\,ds=h_m^{1/2}\to0.
\tag{IFR.5}
```

So an \(L^1_s\) source-curve theorem cannot see this reserve pulse.  The square
reserve remains order one precisely because it is measuring the missing
super-\(L^1\) exponent.

## 3. No endpoint atom is produced

For every sufficiently small \(\theta<-s_0\),

```math
\int_{-\theta}^{0}G_m(s)\,ds=0.
\tag{IFR.6}
```

Therefore the endpoint source-curve modulus at \(s=0\) holds trivially for this
model.  The pass-or-exit source-curve theorem has no terminal atom to extract.

The weak-* limit of \(G_m(s)^2ds\) is an interior atom:

```math
G_m(s)^2ds \stackrel{*}{\rightharpoonup}\delta_{s_0}.
\tag{IFR.7}
```

That is a square-reserve concentration inside the normalized heat window, not a
finite \(L^1_s\) source atom on the terminal endpoint face.

## 4. Signed-pair version

The zero-first-moment obstruction has the same shape.  Take two same-ledger
opposite packets

```math
J_m^+(s)=h_m^{-1/2}{\bf 1}_{J_m}(s),
\qquad
J_m^-(s)=h_m^{-1/2}{\bf 1}_{J_m}(s),
\tag{IFR.8}
```

with signed carrier

```math
J_m=J_m^+-J_m^-.
\tag{IFR.9}
```

Then the signed first moment cancels exactly:

```math
\int_{-1}^{0}J_m(s)\,ds=0,
\tag{IFR.10}
```

while the one-sided square reserve is nonzero:

```math
\int_{-1}^{0}\left(J_m^+(s)\right)^2ds=1.
\tag{IFR.11}
```

This is the survivor isolated by the older `ZeroMomentReserveVisibility.A`
audit: same-ledger positive-scale signed-pair cancellation with square reserve
bounded below and no installed no-free-sink/depletion theorem.

## 5. Consequence

The source-curve pass-or-exit theorem sharpens the minimal split:

```math
\boxed{
\text{endpoint }L^1_s\text{ source concentration}
\Longrightarrow
\text{terminal atom}
\Longrightarrow
\text{Part/Field readout.}
}
\tag{IFR.12}
```

The remaining forward-gold branch is not that endpoint branch.  It is

```math
\boxed{
\text{interior first-created unweighted square reserve}
}
\tag{IFR.13}
```

or, in signed form,

```math
\boxed{
\text{positive-scale same-ledger signed-pair reserve with zero first moment.}
}
\tag{IFR.14}
```

Thus the next exact supplier cannot be another finite \(L^1_s\) source-curve
anti-atom theorem.  It must prove one of the genuinely square/no-free-sink
inputs:

```math
\text{ReserveCreationCharge.A},
\quad
\text{SignedPairReserveVisibility.A},
\quad
\text{TerminalWeightedNoFreeSink.A},
\quad
\text{TwoTowerDonorDepletion.A},
\quad
\text{SourceSquareReserve.A},
\quad
\text{StrictRescaledNoWasteLyapunov.A}.
\tag{IFR.15}
```

This note does not prove those inputs.  It prevents the endpoint
source-curve closure from being over-promoted into a closure of the interior
first-created square-reserve branch.
