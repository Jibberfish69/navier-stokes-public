# BootSquare Weighted Mass From Uniform Integrability

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

and that `M_J^2` is uniformly integrable with respect to `mu_J`. Then

```math
\nu_J(B_J)=\int_{B_J}M_J^2d\mu_J\to0.
```

## Proof

Fix `epsilon>0`. By uniform integrability, choose `K` so that

```math
\sup_J \int_{\{M_J^2>K\}} M_J^2d\mu_J < epsilon.
```

Split

```math
\int_{B_J}M_J^2d\mu_J
=
\int_{B_J\cap\{M_J^2\le K\}}M_J^2d\mu_J
+
\int_{B_J\cap\{M_J^2>K\}}M_J^2d\mu_J.
```

The first term is at most

```math
K\mu_J(B_J)\to0.
```

The second term is at most `epsilon` uniformly in `J`. Hence

```math
\limsup_J \nu_J(B_J)\le epsilon.
```

Since `epsilon` is arbitrary,

```math
\nu_J(B_J)\to0.
```

## Bounded-weight corollary

If `M_J^2<=C` uniformly, then

```math
\nu_J(B_J)\le C\mu_J(B_J)\to0.
```

## Source hypotheses still needed

```text
unweighted bad-set collapse for B_J,
uniform integrability of M_J^2 on the retained family.
```