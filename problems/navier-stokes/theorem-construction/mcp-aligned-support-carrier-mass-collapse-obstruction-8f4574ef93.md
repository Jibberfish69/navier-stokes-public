# Aligned Support-Carrier Mass Collapse Obstruction

## Status

Failed for the full support carrier.

Let

```math
\alpha_J:=\eta_{al}/g_{al},
\qquad d\nu_J:=M_J^2d\mu_J.
```

The previous support carrier was

```math
B_{al}:=supp\,\alpha_J.
```

The desired estimate was

```math
\nu_J(B_{al})\to0.
```

## Obstruction

This estimate is stronger than the aligned square budget. For example, let `E` be a fixed set with `nu_J(E)=1` and set

```math
\alpha_J=1/J\quad\text{on }E.
```

Then

```math
\int \alpha_J^2d\nu_J=J^{-2}\to0,
```

while

```math
\nu_J(supp\,\alpha_J)=\nu_J(E)=1.
```

So the full support carrier need not have vanishing weighted mass.

## Correct replacement

Use a thresholded carrier

```math
B_{al}(\theta_J):=\{ |\alpha_J|>\theta_J\}.
```

Then

```math
\int \alpha_J^2d\nu_J
\le
\theta_J^2\nu_J(\mathcal G_J)
+
\int_{B_{al}(\theta_J)}\alpha_J^2d\nu_J.
```

If

```math
\nu_J(B_{al}(\theta_J))\to0,
\qquad
\|\alpha_J\|_{L^p(d\nu_J)}\le C,
\qquad p>2,
```

and `theta_J -> 0` with bounded total weighted mass, Holder gives

```math
\int \alpha_J^2d\nu_J\to0.
```

## Correct frontier

```text
prove direct aligned L2 square budget for alpha_J,
```

or

```text
prove thresholded bad-set collapse plus Lp control for alpha_J.
```