# MPP Six Chunks Rows 1--4 Unconditional Implication Criteria

## Correction

Rows 1--4 are not unconditional regularity proofs.  They are unconditional
implication criteria: each implication is valid without assuming the source-wall
theorem, but none of them proves that the needed boundedness or propagation
hypothesis holds for arbitrary smooth data up to a putative terminal endpoint.

The safe statement is:

```math
Rows1To4.Criteria.A:
\quad
\text{the first four table rows are valid reduction/continuation criteria.}
```

The unsafe statement is:

```math
Rows1To4.Criteria.A
\not\Longrightarrow
\text{global regularity}.
```

## Row 1: `bounded H^s, s>5/2 => continuation`

Let `u` be a classical Navier--Stokes solution on `[0,T)` and assume

```math
\sup_{t<T}\|u(t)\|_{H^s}<\infty,
\qquad s>5/2.
```

The `H^s`, `s>5/2`, local strong-solution relaunch theorem gives a restart
lifespan `\tau(\nu,s,M_s)>0` depending only on this uniform `H^s` bound.
Restarting from times `t_n\uparrow T` and using uniqueness continues the
solution past `T`.

Thus:

```math
\sup_{t<T}\|u(t)\|_{H^s}<\infty,\qquad s>5/2
\Longrightarrow
\text{continuation past }T.
```

Contrapositively:

```math
\text{finite terminal non-continuation}
\Longrightarrow
\limsup_{t\uparrow T}\|u(t)\|_{H^s}=+\infty
\quad\text{for the selected }s>5/2\text{ continuation norm.}
```

This does not prove that selected `H^s` blow-up is impossible, and bounded
`H^1` energy control alone is not this continuation criterion.

## Row 2: `closed mixed-jet tower => continuation`

For `s>5/2`, define

```math
\mathfrak A_s(\tau,r,t)
:=
\sum_{m,\alpha}
{\tau^m r^{|\alpha|}\over m!\alpha!}
\|\partial_t^m\partial_x^\alpha u(t)\|_{H^s}.
```

If

```math
\sup_{t<T}\mathfrak A_s(\tau,r,t)<\infty,
```

then the base rung gives

```math
\sup_{t<T}\|u(t)\|_{H^s}<\infty.
```

Since `s>5/2`, this is a classical continuation norm.  Hence:

```math
\sup_{t<T}\mathfrak A_s(\tau,r,t)<\infty
\Longrightarrow
\text{continuation past }T.
```

Contrapositively:

```math
\text{finite terminal non-continuation}
\Longrightarrow
\text{the mixed-jet tower is not closed at the endpoint.}
```

This does not prove propagation of the mixed-jet tower.

## Row 3: next-time envelope reduction

Differentiating Navier--Stokes gives

```math
J_{m+1,\alpha}
=
\nu\Delta J_{m,\alpha}
-T_{m,\alpha}
-\nabla\Pi_{m,\alpha}.
```

After multiplying by the next-time factorial weights and summing,

```math
\mathfrak U_s
\le
\nu\tau\mathfrak D_s^{(2)}
+\tau\mathfrak T_s
+\tau\mathfrak P_s.
```

The `H^s` algebra estimate and Calderon--Zygmund pressure estimate give

```math
\mathfrak T_s+\mathfrak P_s
\le
C_s\mathfrak A_s^2.
```

Therefore:

```math
\mathfrak U_s
\le
\nu\tau\mathfrak D_s^{(2)}
+C_s\tau\mathfrak A_s^2.
```

Contrapositively:

```math
\mathfrak U_s\text{ blows up}
\Longrightarrow
\mathfrak D_s^{(2)}\text{ blows up}
\quad\text{or}\quad
\mathfrak A_s\text{ blows up}.
```

This does not control either right-hand channel globally.

## Row 4: fixed low-mode packet reduction

For fixed `N`, set

```math
\Lambda_N(t):=\|\nabla S_{N-4}u(t)\|_\infty,
\qquad
E_N(t):=\sum_{j\ge N}2^{2j}\|\Delta_j u(t)\|_2^2.
```

The strict low-high and high-low packets obey the dyadic commutator estimate

```math
\sum_{j\ge N}|LH_j|+\sum_{j\ge N}|HL_j|
\le
C\Lambda_N(t)E_N(t).
```

For fixed `N`, Bernstein and energy give

```math
\Lambda_N(t)
\le
C_N\|u(t)\|_2,
```

so the fixed low-mode coefficient is admissible on finite-energy intervals.
Consequently, a bad fixed-low-mode packet forces the high tail `E_N` to carry
the remaining size after the fixed coefficient is paid.

This excludes a purely fixed-low-mode terminal obstruction.  It does not
exclude moving-threshold, high-frequency, scheduler, or source-wall
obstructions.

## Net Purchase

Rows 1--4 buy only this:

```math
\text{any endpoint obstruction must pass through high-frequency/tower/source-wall
failure rather than through a missing continuation lemma or fixed-low-mode
bookkeeping.}
```

They do not buy:

```math
\text{bounded }H^1,\quad
\text{global mixed-jet propagation},\quad
\text{high-tail exclusion},\quad
\text{source-wall closure}.
```
