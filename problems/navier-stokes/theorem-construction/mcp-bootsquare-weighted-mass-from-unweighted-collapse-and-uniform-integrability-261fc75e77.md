# BootSquare Weighted Mass From Unweighted Collapse And Uniform Integrability

## Status

Conditional theorem.

Let

```math
d\nu_J=M_J^2d\mu_J.
```

Assume

```math
\mu_J(B_J)\to0
```

and that the weights `M_J^2` are uniformly integrable with respect to `mu_J`.

## Proof

Fix `epsilon>0`. By uniform integrability, choose `K` such that

```math
\sup_J\int_{\{M_J^2>K\}}M_J^2d\mu_J<epsilon.
```

Split

```math
\nu_J(B_J)
=
\int_{B_J\cap\{M_J^2\le K\}}M_J^2d\mu_J
+
\int_{B_J\cap\{M_J^2>K\}}M_J^2d\mu_J.
```

The first term is bounded by

```math
K\mu_J(B_J)\to0.
```

The second term is at most `epsilon` uniformly in `J`. Therefore

```math
\limsup_J\nu_J(B_J)\le epsilon.
```

Since `epsilon` is arbitrary,

```math
\nu_J(B_J)\to0.
```

## Bounded-weight corollary

If `M_J^2<=C`, then

```math
\nu_J(B_J)\le C\mu_J(B_J)\to0.
```

## Retained source hypotheses

```text
unweighted bad-set collapse mu_J(B_J)->0,
uniform integrability of M_J^2.
```