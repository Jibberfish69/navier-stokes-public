# Relative Gramian Error Control Source Packet

## Status

Conditional theorem.

## Setup

Let `H_J` be the reduced cocycle and

```math
A_J:=H_J^*H_J.
```

Suppose the reduced cocycle equation has residual

```math
\partial_t H_J=K_{\parallel,J}H_J+E_H.
```

Then the Gramian equation has residual

```math
E_A=E_H^*H_J+H_J^*E_H
```

in the differential model. In a finite-difference model, add the quadratic residual `E_H^*E_H`.

## Estimate

By submultiplicativity,

```math
\|E_A\|_{op}
\le
2\|H_J\|_{op}\|E_H\|_{op}
+
\|E_H\|_{op}^2.
```

Let `lambda_2` be the lower eigenvalue of `A_J`. Thus the relative Gramian error control

```math
\|E_A\|_{op}\le \varepsilon_A\lambda_2
```

follows from

```math
\frac{2\|H_J\|_{op}\|E_H\|_{op}+\|E_H\|_{op}^2}{\lambda_2}
\le
\varepsilon_A.
```

## Remaining source condition

```text
small reduced-cocycle residual relative to the lower Gramian eigenvalue
```

The next queue item supplies the nondegeneracy needed in the denominator:

```text
lower singular-value floor on positive mass
```