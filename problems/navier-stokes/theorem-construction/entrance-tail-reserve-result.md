# Entrance-Tail Reserve Result

## Target

The entrance reserve required by the square-source route is

```math
E_j(t_0)^2
\le
c\varepsilon\nu^2 2^j|I|
+C\nu2^{-j}2^{-2\delta j}.
```

## Regular entrance time

Let `t_0<T` be a regular time. Smoothness gives, for every `s>0`,

```math
\|\Delta_j u(t_0)\|_2
\le C_s(t_0)2^{-sj}.
```

Since

```math
E_j(t_0)=2^{2j}\|\Delta_j u(t_0)\|_2^2,
```

we have

```math
E_j(t_0)^2
\le C_s(t_0)^4 2^{(8-4s)j}.
```

Choose `s` so large that

```math
8-4s<-1-2\delta.
```

Then

```math
E_j(t_0)^2
\le C_s(t_0)^4 2^{-(1+2\delta+\rho)j}
```

for some `\rho>0`.

Therefore, for all sufficiently large `j`, depending on `t_0`, `I`, `nu`, `epsilon`, and `delta`,

```math
E_j(t_0)^2
\le
c\varepsilon\nu^2 2^j|I|
+C\nu2^{-j}2^{-2\delta j}.
```

## Result

The entrance-tail reserve is discharged on every regular entrance time for all sufficiently high shells.

## Boundary

This reserve gives high-shell smallness at `t_0<T`. It does not supply a fixed-shell amplitude theorem and it does not replace the missing square-source estimate for `F_j`.