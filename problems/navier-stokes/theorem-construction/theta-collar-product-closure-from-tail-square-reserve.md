# Theta Collar Product Closure From Tail-Square Reserve

## Inputs

The finite-collar reduction gives, for every `\varepsilon>0`,

```math
\Theta_N^\sharp(t)E_N(t)
\le
\varepsilon\nu D_N(t)+C_{\varepsilon}2^{-2N}E_N(t)^2.
```

Assume the tail-square reserve

```math
\int_0^T2^{-2N}E_N(t)^2dt
\le
\varepsilon\nu\int_0^TD_N(t)dt+C2^{-2\delta N}.
```

## Theorem

Then

```math
\int_0^T\Theta_N^\sharp(t)E_N(t)dt
\le
\varepsilon'\nu\int_0^TD_N(t)dt+C_{\varepsilon'}2^{-2\delta N}.
```

## Proof

Integrate the finite-collar inequality:

```math
\int_0^T\Theta_N^\sharp E_Ndt
\le
\varepsilon_1\nu\int_0^TD_Ndt
+C_{\varepsilon_1}\int_0^T2^{-2N}E_N^2dt.
```

Insert the tail-square reserve:

```math
\int_0^T\Theta_N^\sharp E_Ndt
\le
\varepsilon_1\nu\int_0^TD_Ndt
+C_{\varepsilon_1}\varepsilon_2\nu\int_0^TD_Ndt
+C2^{-2\delta N}.
```

Choose `\varepsilon_1` and `\varepsilon_2` so the total dissipation fraction is `\varepsilon'`. This proves the claim.

## Boundary

This closes the threshold-collar product conditional on the tail-square reserve. Since the current tail-square reserve is conditional on the far-separated linear-to-active-square bridge, this collar closure inherits that condition.