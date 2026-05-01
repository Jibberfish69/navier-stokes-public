# Aligned Higher Integrability Reduction For alpha_J

## Status

Conditional theorem.

Let

```math
\alpha_J:=\eta_{al}/g_{al}.
```

Assume the retained aligned family has a gap floor

```math
g_{al}\ge g_*>0.
```

Then

```math
\|\alpha_J\|_{L^p(d\nu_J)}
\le
g_*^{-1}\|\eta_{al}\|_{L^p(d\nu_J)}.
```

The aligned residual splits as

```math
\eta_{al}
\le
\eta_{al}^{init}+\eta_{al}^{off}+\eta_{al}^{var}.
```

By Minkowski,

```math
\|\eta_{al}\|_{L^p(d\nu_J)}
\le
\|\eta_{al}^{init}\|_{L^p(d\nu_J)}
+
\|\eta_{al}^{off}\|_{L^p(d\nu_J)}
+
\|\eta_{al}^{var}\|_{L^p(d\nu_J)}.
```

Therefore

```math
\|\alpha_J\|_{L^p(d\nu_J)}\le C,
\qquad p>2,
```

follows from uniform `L^p` control of the three aligned residual components and the aligned gap floor.

## Remaining source estimates

```text
Lp control of aligned entrance residual,
Lp control of aligned off-axis forcing,
Lp control of aligned variation/gap term.
```