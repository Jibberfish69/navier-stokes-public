# MPP LCI.A Widened-Thickness Lower-Carrier Note

## Status

Candidate theorem-facing note.

Role: isolate the exact theorem reopened by the only thickness-sensitive slot
`(WTC.4)` inside the widened-thickness collar package.

## Purpose

Set

```math
\delta_\ast:=\delta+\delta_{seg}.
\tag{WTL.0}
```

The widened-thickness collar wall note already shows that, beneath
`CSP.A_{\delta_\ast}`, the only thickness-sensitive supplier slot is

```math
\Gamma_{N,m,\rho,\psi}^{low,\delta_\ast}\in L^1(I).
\tag{WTL.1}
```

The exact question is therefore:

```math
\boxed{
\text{is }(WTL.1)\text{ a new carrier theorem family, or just the old theorem }LCI.A
\text{ read at thickness }\delta_\ast?
}
\tag{WTL.2}
```

## Installed Genericity Already On Disk

The lower-carrier theorem program already fixes one arbitrary collar thickness
`\delta>0` and defines

```math
\Gamma_{N,m,\rho,\psi}^{low}(t)
:=
1+
\sum_{q=0}^{m}
\|U_q(\cdot,t)\|_{L^\infty(\mathcal C_{\rho,\psi}^{\delta}(t))},
\tag{LCI.2}
```

together with the lower-order collar packet
`\mathcal G_{N,m,\rho,\psi}^{low,\delta}` and the target theorem `LCI.A`.
Its proof spine then runs through the fixed-thickness packet law `LCI.B`,
beginning from the seed finiteness lemma `LCI.B0`.

So the parameter `\delta` is already free on the installed theorem surface.

### Reduction `WTL.A` (The widened-thickness lower-carrier slot is exactly `LCI.A` at `\delta_\ast`)

Assume on the same-fluid interval `I` that

```math
\Gamma_\sharp\in L^\infty(I)
\tag{WTL.3a}
```

and that the initial widened-thickness lower-order collar packet is finite:

```math
\mathcal G_{N,m,\rho,\psi}^{low,\delta_\ast}(t_0)<\infty.
\tag{WTL.3b}
```

Then

```math
\Gamma_{N,m,\rho,\psi}^{low,\delta_\ast}\in L^1(I).
\tag{WTL.3}
```

Equivalently, the only thickness-sensitive slot `(WTL.1)` is exactly the
widened-thickness instance `LCI.A_{\delta_\ast}`.

### Proof

Theorem `LCI.A` is already stated for an arbitrary fixed collar thickness.
Substitute `\delta\mapsto\delta_\ast` throughout the definitions
`\mathcal C_{\rho,\psi}^{\delta}`, `\mathcal G_{N,m,\rho,\psi}^{low,\delta}`,
and `\Gamma_{N,m,\rho,\psi}^{low}`. The same seed lemma `LCI.B0`, lower-order
packet target `LCI.B`, and coefficient reduction `LCI.B1`--`LCI.B2` then apply
verbatim, with only the fixed geometric constants depending on `\delta_\ast`.
Therefore the same theorem surface yields `(WTL.3)`. ∎

### Corollary `WTL.B` (No new thickness-sensitive lower-carrier theorem survives)

Inside the widened-thickness collar package beneath `CSP.A_{\delta_\ast}`, the
only thickness-sensitive slot `WTC.4` is not a new carrier theorem family. It
is exactly the old lower-carrier interval-integrability theorem `LCI.A`, read
at thickness `\delta_\ast`.

So once the widened-thickness collar wall is compressed down to `WTC.4`, the
remaining carrier-side debt is not “invent a new thickened-collar carrier
route.” It is:

```math
\boxed{
\text{prove }LCI.A_{\delta_\ast}.
}
\tag{WTL.4}
```

## Honest Boundary

This note does **not** prove `(WTL.3a)` or `(WTL.3b)`. It does **not** close
`LCI.A_{\delta_\ast}`. It does **not** prove the widened receiver-side return
`(EOC.27)`.

What it does prove is narrower and exact:

1. the only thickness-sensitive slot surviving in the widened-thickness collar
   package is the thicker lower same-fluid carrier ledger;
2. that slot is itself not a new theorem family;
3. the exact reopened carrier theorem is just `LCI.A` at thickness
   `\delta_\ast`.
