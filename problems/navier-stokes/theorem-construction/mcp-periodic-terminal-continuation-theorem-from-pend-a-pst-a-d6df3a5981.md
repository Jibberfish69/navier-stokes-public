# Periodic Terminal Continuation Theorem From `PEnd.A`

## Status

Theorem-facing terminal continuation packet on the exact periodic branch.

## Theorem `PTC.A`

Let `u_0` be smooth, divergence-free, and zero-mean on `T^3`, and let `(u,p)` be the maximal classical solution of the unforced three-dimensional incompressible Navier-Stokes equations on `[0,T_*)`.

Assume the installed class-membership endpoint matrix supplies

```math
CFI.A+End_{NS}\Longrightarrow\text{no finite-time class exit},
```

and assume `PEnd.A`, namely that `PST.A` excludes a cascade-driven periodic endpoint on every finite classical interval. Then

```math
T_*=+\infty.
```

## Proof

Assume toward contradiction that `T_*<\infty`. By classical maximality, a first finite terminal obstruction occurs at `T_*`.

The class-membership endpoint matrix types every such obstruction through the route faces:

```math
\neg Part,
\qquad
\neg Pack,
\qquad
\neg Field,
\qquad
\text{tower-amplitude escape},
```

with certificate reductions

```math
\neg Part\Longrightarrow Dead,
```

```math
\neg Pack\Longrightarrow packing\text{-}detached\vee tower\text{-}blown,
```

```math
\neg Field\Longrightarrow Jump.
```

The cascade face is the high-frequency mechanism that could feed the tower, field, or jump alternatives. `PEnd.A` excludes that mechanism on each finite classical interval by scheduled shell/tail suppression:

```math
\sup_I E_N+
\int_I D_N\le\rho,
```

and by the controlled flux bound

```math
|\Pi_{\ge N}|
\le
C\widetilde\Lambda_N^\sharp E_N+
\eta\nu D_N+C_*2^{-2\delta N}.
```

Thus the high-frequency cascade cannot generate the first terminal obstruction.

For the remaining endpoint faces, the installed endpoint matrix gives `End_NS`, while the terminal class-membership stack gives `CFI.A`. Hence

```math
CFI.A+End_{NS}\Longrightarrow\text{no finite-time class exit}.
```

This contradicts the assumed first finite terminal obstruction at `T_*`. Therefore `T_*=+\infty`.

## Consequence

The periodic zero-force Navier-Stokes branch on `T^3` continues globally for smooth divergence-free zero-mean data under the installed class-membership endpoint matrix and the repaired cascade route.

## Boundary

This theorem proves the terminal periodic continuation implication only. It does not assert a whole-space `R^3` export theorem.