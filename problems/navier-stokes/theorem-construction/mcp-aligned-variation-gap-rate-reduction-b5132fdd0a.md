# Aligned Variation Gap Rate Reduction

## Status

Conditional source reduction.

The aligned residual is

```math
m_{al}=Q_{al}C_{al}n_{top}.
```

The variation / gap contribution is the part of `partial_t m_al` coming from the motion of `Q_al` and the true top-strain direction `n_top`.

A sufficient bound has the form

```math
\eta_{al}^{var}
\le C_{var}
\int_I
\left(
\frac{\|\partial_t C_{al}\|_{op}}{g_{al}}\|C_{al}\|_{op}
+
\|C_{al}\|_{op}\frac{\|\partial_t S_{seg}\|_{op}}{g_{seg}}
\right)dt.
```

Here the first term is aligned projector motion, using the differential Davis-Kahan estimate, and the second term is true top-strain direction motion.

Therefore the desired rate

```math
\eta_{al}^{var}=o(\theta_J g_{al})
```

in weighted `L^q` follows from

```math
\left\|
\frac{1}{\theta_J g_{al}}
\int_I
\left(
\frac{\|\partial_t C_{al}\|_{op}}{g_{al}}\|C_{al}\|_{op}
+
\|C_{al}\|_{op}\frac{\|\partial_t S_{seg}\|_{op}}{g_{seg}}
\right)dt
\right\|_{L^q(d\nu_J)}
\to0.
```

## Remaining source theorem

```text
prove the normalized derivative/gap budget for aligned projector motion and true top-strain direction motion.
```

This requires aligned gap persistence, segment gap protection, and regular-window derivative control on the same retained family.
