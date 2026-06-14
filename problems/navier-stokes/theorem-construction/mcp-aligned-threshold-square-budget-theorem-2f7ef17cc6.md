# Aligned Threshold Square-Budget Theorem

## Status

Conditional theorem.

Let

```math
\alpha_J:=\eta_{al}/g_{al},
\qquad d\nu_J:=M_J^2d\mu_J.
```

The aligned square budget is

```math
\int_{\mathcal G_J}\alpha_J^2d\nu_J=o_J(1).
```

## Threshold carrier

For a threshold `theta_J>0`, define

```math
B_{al}(\theta_J):=\{|
\alpha_J|>\theta_J\}.
```

Then

```math
\int\alpha_J^2d\nu_J
\le
\theta_J^2\nu_J(\mathcal G_J)
+
\int_{B_{al}(\theta_J)}\alpha_J^2d\nu_J.
```

If

```math
\|\alpha_J\|_{L^p(d\nu_J)}\le C,
\qquad p>2,
```

Holder gives

```math
\int_{B_{al}(\theta_J)}\alpha_J^2d\nu_J
\le
C^2\nu_J(B_{al}(\theta_J))^{1-2/p}.
```

Therefore the aligned square budget follows from

```math
\theta_J^2\nu_J(\mathcal G_J)\to0,
\qquad
\nu_J(B_{al}(\theta_J))\to0,
\qquad
\|\alpha_J\|_{L^p(d\nu_J)}\le C,
\quad p>2.
```

## Consequence

Together with

```math
\|P_{al}-P_{top}^{seg}\|_F^2\le C_{al}\alpha_J^2,
```

this gives aligned selector-strain compatibility.

## Remaining source estimates

```text
thresholded weighted mass collapse for alpha_J,
uniform Lp(dnu_J) control for alpha_J with p>2,
```

or an alternate direct theorem:

```text
int alpha_J^2 dnu_J -> 0,
```

or:

```text
non-circular Err_sync^al -> 0.
```
