# Square-Source To Active-Square Control Result

## Target

The active-square quantity is

```math
\int_I2^{-j}D_j(t)^2dt.
```

Since `D_j=2^{2j}E_j`, this is

```math
\int_I2^{3j}E_j(t)^2dt.
```

## Scalar shell response

Let

```math
E_j'(t)+\lambda_jE_j(t)\le F_j(t),
\qquad
c_\lambda\nu2^{2j}\le\lambda_j\le C_\lambda\nu2^{2j}.
```

For `I=[t_0,t_1]`, the damped Duhamel estimate gives

```math
\|E_j\|_{L^2(I)}^2
\le
C\lambda_j^{-1}E_j(t_0)^2
+C\lambda_j^{-2}\|F_j\|_{L^2(I)}^2.
```

Multiplying by `2^{3j}` yields

```math
\int_I2^{-j}D_j^2dt
\le
C\nu^{-1}2^jE_j(t_0)^2
+C\nu^{-2}2^{-j}\int_I|F_j(t)|^2dt.
```

## Required square-source scale

Therefore

```math
\int_I2^{-j}D_j^2dt
\le
\varepsilon\nu2^{2j}|I|+C2^{-2\delta j}
```

follows if

```math
E_j(t_0)^2
\le
c\varepsilon\nu^2 2^j|I|+C\nu2^{-j}2^{-2\delta j},
```

and

```math
\int_I|F_j(t)|^2dt
\le
c\varepsilon\nu^3 2^{3j}|I|+C\nu^2 2^j2^{-2\delta j}.
```

## Result

The square-source route is a valid conditional replacement for shell-amplitude gain. Current inputs do not supply the required `L^2_t` shell-source scale. The exact new theorem is

```math
\int_I|F_j(t)|^2dt
\le
c\varepsilon\nu^3 2^{3j}|I|+C\nu^2 2^j2^{-2\delta j},
```

paired with the entrance-tail reserve above.

Once this square-source theorem is installed, it yields active-square Carleson and then LPAS through the existing lower-prefix embedding route.
