# Normalized Material-Cone Rate Theorem

## Status

Conditional theorem.

Let

```math
A_J:=\frac{\|C_{al}\|_{op}}{\theta_J g_{al}},
\qquad
O_J:=\sqrt{\frac{1-c_0^2}{c_0^2}}.
```

The normalized material-cone term is

```math
A_J O_J e^{-G_{mat}}.
```

Assume there is a margin `rho_J` such that

```math
e^{-q\rho_J}\nu_J(G_J)\to0
```

and on the retained aligned family

```math
G_{mat}\ge \log(A_JO_J)+\rho_J.
```

Then pointwise

```math
A_JO_Je^{-G_{mat}}\le e^{-\rho_J}.
```

Therefore

```math
\|A_JO_Je^{-G_{mat}}\|_{L^q(d\nu_J)}
\le e^{-\rho_J}\nu_J(G_J)^{1/q}\to0.
```

So the normalized material-cone rate follows.

## Remaining source theorem

```text
prove material-gap dominance:
G_mat >= log(A_J O_J) + rho_J
with e^{-q rho_J} nu_J(G_J) -> 0.
```