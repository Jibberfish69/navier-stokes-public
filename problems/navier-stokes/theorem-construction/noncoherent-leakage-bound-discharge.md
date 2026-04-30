# Noncoherent Leakage Bound Discharge

## Statement

Let

```math
L_{i,\beta}(X):=P_\perp Q_i\mathbb P_DN_D(X)e_\beta.
```

Assume the exact leakage identity

```math
L_{i,\beta}(X)=
(\Delta_D-\lambda_\beta)^{-1}P_\perp
[\Delta_D,Q_i\mathbb P_DN_D(X)]e_\beta.
```

Assume `s>5/2`, the readout comparison

```math
\|\rho(Z)\|_{H^s(\mathbb R^3)}\le C_\rho\|Z\|_{H_D^s},
```

and the reduced-resolvent estimate

```math
\|(\Delta_D-\lambda_\beta)^{-1}P_\perp Z\|_{H_D^s}
\le g_{\beta,s}^{-1}\|Z\|_{H_D^s}.
```

Then

```math
\|\nabla\rho(L_{i,\beta}(X))\|_{L^\infty}
\le
C_s C_\rho g_{\beta,s}^{-1}
\|P_\perp[\Delta_D,Q_i\mathbb P_DN_D(X)]e_\beta\|_{H_D^s}.
```

## Proof

Sobolev embedding for `s>5/2` gives

```math
\|\nabla f\|_{L^\infty}\le C_s\|f\|_{H^s}.
```

Apply this to `f=\rho(L_{i,\beta})` and use readout continuity:

```math
\|\nabla\rho(L_{i,\beta})\|_{L^\infty}
\le C_s\|\rho(L_{i,\beta})\|_{H^s}
\le C_sC_\rho\|L_{i,\beta}\|_{H_D^s}.
```

Insert the leakage identity and the reduced-resolvent bound:

```math
\|L_{i,\beta}\|_{H_D^s}
\le g_{\beta,s}^{-1}
\|P_\perp[\Delta_D,Q_i\mathbb P_DN_D(X)]e_\beta\|_{H_D^s}.
```

Combining the displayed inequalities proves the estimate.

## Commutator split

Using `[\Delta_D,\mathbb P_D]=0`,

```math
[\Delta_D,Q_i\mathbb P_DN_D(X)]
=
[\Delta_D,Q_i]\mathbb P_DN_D(X)
+
Q_i\mathbb P_D[\Delta_D,N_D(X)].
```

Hence the right side is bounded by the corresponding two commutator norms in `H_D^s`.

## Route consequence

This discharges the operator/readout leakage estimate. The carrier export route still needs the readout-compatible commutator theorem that makes the final right side lower order at the classical viscous scale.
