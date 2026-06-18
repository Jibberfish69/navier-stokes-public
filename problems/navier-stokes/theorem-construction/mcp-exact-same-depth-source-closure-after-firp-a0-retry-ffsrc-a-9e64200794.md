# Exact Same-Depth Source Closure After FIRP.A0 Retry

Status: conditional closure theorem.

## Statement

The exact same-depth source branch closes under the pressure wall:

```math
FIRP.A0+FSCR.C+FCC.C1+FCC.C1a
\Longrightarrow
FCI.5f.
```

After the retry, the pressure wall may be stated equivalently as the weighted-shell response target:

```math
WeightedShell.Absorb
\Longrightarrow
FIRP.A0.
```

Thus the sharpened exact closure statement is

```math
WeightedShell.Absorb+FSCR.C+FCC.C1+FCC.C1a
\Longrightarrow
FCI.5f.
```

## Proof

The frozen-family source ledger splits as

```math
\mathcal N^{src}
=
\mathcal N^{press}+
\mathcal N^{sc}+
\mathcal N^{cut}.
```

`FSCR.C` gives

```math
\mathcal N^{sc}\in L^1(I).
```

`FCC.C1` together with `FCC.C1a` gives

```math
\mathcal N^{cut}\in L^1(I).
```

For the pressure channel, the exact route reduces the frozen-net pressure wall to finitely many single-increment resonant pressure targets:

```math
\big(\forall \eta^\ell,\ FIRP.A0(\eta^\ell)\big)
\Longrightarrow
FPCR.C.
```

The retry identifies the remaining content of `FIRP.A0` as the weighted-shell response/absorption theorem. Therefore, if `WeightedShell.Absorb` is proved, then each `FIRP.A0(eta^ell)` follows, and hence

```math
\mathcal N^{press}\in L^1(I).
```

Summing the three integrable channels yields

```math
\mathcal N^{src}\in L^1(I),
```

which is `FCI.5f`.

## Verdict

The exact same-depth source closure is conditionally reduced to the single open pressure-response theorem:

```math
WeightedShell.Absorb.
```

The active averaged proof may continue using the already closed strengthened source supplier

```math
\operatorname{Hyp}(FFSRC.A)\Longrightarrow FCI.5f.
```
