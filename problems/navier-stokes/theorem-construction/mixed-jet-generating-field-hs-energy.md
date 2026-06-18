# Mixed-Jet Generating Field H^s Energy

## Purpose

This note records one exact consequence of the generating-field package:

```math
\boxed{
\text{once the mixed-jet generating field exists on an }H^s\text{ slice,}
}
```

```math
\boxed{
\text{it obeys the displayed }H^s\text{ Navier--Stokes energy inequality }(8).
}
```

So the tower route is not alien to classical Sobolev theory.
If the factorially weighted series converges as a genuine field, it falls back
onto the same a priori mechanism as the ordinary equation.

## Generating field

Write

```math
\mathcal J(\tau,\zeta)
:=
\sum_{m\ge0}\sum_{\alpha\in\mathbb N^3}
\frac{\tau^m\zeta^\alpha}{m!\,\alpha!}\,
J_{m,\alpha},
\qquad
J_{m,\alpha}:=\partial_t^m\partial_x^\alpha u.
\tag{1}
```

Likewise define the generating pressure

```math
\mathcal \Pi(\tau,\zeta)
:=
\sum_{m\ge0}\sum_{\alpha\in\mathbb N^3}
\frac{\tau^m\zeta^\alpha}{m!\,\alpha!}\,
\Pi_{m,\alpha}.
\tag{2}
```

Whenever these series converge in `H^s` for fixed `(\tau,\zeta)`, the mixed-jet
notes already imply the exact generating-field equation

```math
\partial_t \mathcal J
+
(\mathcal J\cdot\nabla)\mathcal J
+
\nabla \mathcal \Pi
=
\nu\Delta \mathcal J,
\qquad
\nabla\cdot \mathcal J=0.
\tag{3}
```

This is the mixed-jet analogue of the time-jet law

```math
\partial_t \mathcal V + (\mathcal V\cdot\nabla)\mathcal V + \nabla\mathcal P
=
\nu\Delta \mathcal V.
\tag{4}
```

## H^s energy inequality

Fix `s>\frac52`. Then apply `\Lambda^s` to `(3)` and pair with
`\Lambda^s\mathcal J`.

The pressure term drops because `\nabla\cdot\mathcal J=0`, and viscosity gives

```math
\langle \Lambda^s\Delta \mathcal J,\Lambda^s\mathcal J\rangle
=
-\|\nabla \mathcal J\|_{H^s}^2.
\tag{5}
```

For the transport term, the `H^s` product estimate with
`\nabla\mathcal J\in L^\infty` gives

```math
\big|
\langle \Lambda^s((\mathcal J\cdot\nabla)\mathcal J),
\Lambda^s\mathcal J\rangle
\big|
\le
C_s\|\nabla \mathcal J\|_{L^\infty}\|\mathcal J\|_{H^s}^2.
\tag{6}
```

Since `s>\frac52`, `H^s(\mathbb R^3)\hookrightarrow W^{1,\infty}`, so

```math
\|\nabla \mathcal J\|_{L^\infty}
\le
C_s\|\mathcal J\|_{H^s}.
\tag{7}
```

Therefore

```math
\boxed{
\frac12\frac{d}{dt}\|\mathcal J(\tau,\zeta)\|_{H^s}^2
+
\nu\|\nabla \mathcal J(\tau,\zeta)\|_{H^s}^2
\le
C_s\|\mathcal J(\tau,\zeta)\|_{H^s}^3.
}
\tag{8}
```

This is exactly the ordinary `H^s` Navier--Stokes energy inequality, now applied
to the mixed-jet generating field.

## Relation to the weighted mixed-jet norm

For fixed `(\tau,\zeta)`, whenever the series `(1)` converges absolutely in
`H^s`,

```math
\|\mathcal J(\tau,\zeta)\|_{H^s}
\le
\sum_{m,\alpha}\frac{|\tau|^m|\zeta|^{|\alpha|}}{m!\,\alpha!}
\|J_{m,\alpha}\|_{H^s}.
\tag{9}
```

So the weighted mixed-jet norm controls the generating field:

```math
\|\mathcal J(\tau,\zeta)\|_{H^s}
\le
\mathfrak A_s(|\tau|,|\zeta|).
\tag{10}
```

Thus the previous weighted-jet reduction and the present generating-field
estimate fit together exactly:

- the weighted factorial norm controls the size of the generating field;
- the generating field satisfies the displayed `H^s` Navier--Stokes inequality
  `(8)`.

## Meaning

This proves that the tower route has a genuine classical Sobolev core.

If one can:

1. make the mixed-jet generating field exist on a nontrivial weighted slice,
2. propagate that slice,

then the tower route is not using a new PDE.
It is using the same `H^s` energy mechanism on a larger field that stores the
derivative tower.

## Limitation

This note does **not** prove convergence of the generating series `(1)`--`(2)`
for generic smooth Clay data.

It proves only:

```math
\boxed{
\text{if the generating field exists on an }H^s\text{ slice, it satisfies }(8).
}
\tag{11}
```
