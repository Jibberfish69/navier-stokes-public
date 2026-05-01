# DG-Line Generator Integral Positive-Mass Bound

## Status

Conditional theorem.

Let

```math
X_J(a):=\int_I\|G_J(a,t)\|_{op}dt.
```

Assume the ambient retained selector-good family `G` satisfies

```math
\mu_J(G)\ge m_0>0
```

and

```math
\int_G X_J(a)d\mu_J(a)
\le C_G<\infty.
```

By Markov,

```math
\mu_J(\{a\in G:X_J(a)>L\})
\le C_G/L.
```

Choose

```math
L_*:=2C_G/m_0.
```

Then

```math
\mu_J(\{a\in G:X_J(a)\le L_*\})
\ge m_0/2>0.
```

So there is a positive-mass retained subfamily on which

```math
\int_I\|G_J\|_{op}dt\le L_*.
```

On that subfamily, the inverse-cocycle Gronwall estimate gives

```math
\sigma_2(H_J)
\ge e^{-L_*}>0
```

when `H_J(t0)=I`.

## Source estimate retained

```text
finite average or tail control of int_I ||G_J||_op dt
on the ambient selector-good family.
```