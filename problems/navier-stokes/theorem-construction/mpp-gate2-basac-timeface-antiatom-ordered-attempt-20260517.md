# Gate 2 — BASACTimeFaceAntiAtom.A

Date: 2026-05-17

## Status

Failed from installed `B_ASAC` inputs.

## Target

Prove

```math
\mu_*^{src}(B_R\times\{0\})=0
\qquad\forall R<\infty.
```

Together with no-earlier-selected-source-slice, this would imply

```math
\mu_*^{src}=0.
```

## Valid conditional reduction

For each finite `R`, the time interval decomposes as

```math
[-R^2,0]=\left(\bigcup_{n\ge1}[-R^2,-1/n]\right)\cup\{0\}.
```

The no-earlier-slice clause gives zero mass on each `[-R^2,-1/n]`. Adding the terminal time-face anti-atom clause gives zero mass on `{0}`. Countable subadditivity then gives zero source residue on `B_R\times[-R^2,0]`, and exhaustion in `R` gives residue Liouville.

## Direct obstruction

The installed inputs do not supply the terminal face clause. The layer

```math
g_m(s)=m\,1_{(-1/m,0]}(s)
```

has finite `L^1_s` mass and converges to a terminal atom at `s=0`. It has no fixed preterminal residence, so it satisfies the no-earlier-slice pattern. It is also compatible with zero ASAC defect and terminal Zeno support.

## Verdict

`BASACTimeFaceAntiAtom.A` fails from installed inputs. Gate 2 is exhausted.

Proceed to Gate 3: stable-channel tail control plus pressure-tail Hardy cancellation on transported shells.
