# CAVG.J Endpoint Grammar Audit

## Status

Conditional endpoint-grammar theorem.

## Statement

Let

```math
\mathcal B_{\varepsilon_m}^{\Phi}
:=
\{(a,t):\forall r>0,
SCF_{base}(Q_r^\Phi(a,t))>\varepsilon_m\}.
```

On a same-fluid terminal approach tail, the averaged jump endpoint is

```math
Jump_{avg}
:=
\exists (a,t)\in \mathcal T
\text{ such that }(a,t)\in\mathcal B_{\varepsilon_m}^{\Phi}.
```

Then

```math
CAVG.J:
\mathcal B_{\varepsilon_m}^{\Phi}\ne\varnothing
\Longrightarrow
Jump_{avg}
```

for the active terminal approach tail.

## Proof

A point in `\mathcal B_{\varepsilon_m}^{\Phi}` has no positive same-fluid cylinder satisfying the SCF-good condition:

```math
\forall r>0,
\quad
SCF_{base}(Q_r^\Phi(a,t))>\varepsilon_m.
```

The averaged field/coherence row is defined by the existence of positive same-fluid SCF-good scale along the terminal tail. Hence a terminal tail meeting `\mathcal B_{\varepsilon_m}^{\Phi}` has an averaged field-scale fracture.

That fracture is exactly the averaged jump face:

```math
Jump_{avg}.
```

Therefore

```math
\mathcal B_{\varepsilon_m}^{\Phi}\ne\varnothing
\Longrightarrow
Jump_{avg}.
```

## Endpoint Grammar Role

`CAVG.J` is an endpoint typing theorem. It prevents the bad material set from becoming an untyped extra endpoint shell.

The good region is handled by

```math
SGC.A_{a.e.}+ATD_m^\varepsilon.
```

The bad region is handled by

```math
CAVG.J.
```

Together they feed

```math
AVG.COVER.A:
SGC.A_{a.e.}+ATD_m^\varepsilon+CAVG.J
\Longrightarrow
\text{good averaged cover or }Jump_{avg}.
```

## Boundary

`Jump_{avg}` is an averaged endpoint face. It becomes an old pointwise jump face only through the terminal readout path involving `Field.Read` and `READ.END`. The strong assertion

```math
\mathcal B_{\varepsilon_m}^{\Phi}=\varnothing
```

is downstream of `End_{NS,avg}` and is used in `READ.COVER`; it is not an upstream finite-energy theorem.