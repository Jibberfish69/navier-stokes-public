# DG-Line Positive-Mass Generator Integral Bound By Threshold Extraction

## Status

Conditional theorem.

Let `G` be an ambient retained family with

```math
\mu_J(G)>0.
```

Define

```math
X_J(a):=\int_I\|G_J(a,t)\|_{op}dt.
```

Assume the averaged generator-integral bound

```math
\int_G X_J(a)d\mu_J(a)\le C_G<\infty.
```

For any `L_*>0`, Markov gives

```math
\mu_J(\{a\in G:X_J(a)>L_*\})
\le C_G/L_*.
```

Choose `L_*` so that

```math
C_G/L_* < \mu_J(G).
```

Then the subfamily

```math
G_*:=\{a\in G:X_J(a)\le L_*\}
```

has positive mass, and on `G_*`

```math
\int_I\|G_J(a,t)\|_{op}dt\le L_*.
```

This supplies the positive-mass generator-integral bound used to prove

```math
\sigma_2(H_J)\ge e^{-L_*}>0.
```

## Source estimate retained

```text
finite averaged control of int_I ||G_J||_op dt over the ambient retained family.
```