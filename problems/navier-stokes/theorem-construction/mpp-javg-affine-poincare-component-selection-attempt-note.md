# MPP JAVG Affine-Poincare Component-Selection Attempt Note

## Status

Theorem-facing bounded solve attempt for `JAVG.1`.

This note tests the affine-normalized direct route candidate:

```math
\text{affine-normalized }SCF_{base}\text{ threshold}
\Longrightarrow
\nu_{SCF}\text{ lower mass}.
```

The attempt does not discharge `JAVG.1`. It isolates the exact missing
amplitude theorem, and downstream use must cite that theorem once proved rather
than cite this route candidate.

## Native Setup

On a same-fluid CKN-admissible moving cylinder `Q_R^\Phi`, the active
normalization is

```math
SCF_{base}(Q_R^\Phi)
:=
R^{-2}\iint_{Q_R^\Phi}|u-u_R^{aff}|^3
+
R^{-2}\iint_{Q_R^\Phi}|p-p_R^{norm}|^{3/2}
+
R^{-1}\iint_{Q_R^\Phi}|\nabla u|^2.
```

The controlled pressure/dissipation charge is

```math
\nu_{SCF}
=
|\nabla u|^2\,dx\,dt
+
\sum_\chi |p_\chi^{loc}|^{3/2}\,dx\,dt.
```

The question is whether the affine velocity term can be forced into
`\nu_{SCF}` by Poincare/interpolation.

## Affine-Poincare Estimate

Let

```math
v:=u-u_R^{aff}.
```

On each time slice, Sobolev interpolation and Poincare give

```math
\|v(t)\|_{L^3(B_R)}^3
\le
C\|v(t)\|_{L^2(B_R)}^{3/2}
  \|\nabla u(t)\|_{L^2(B_R)}^{3/2}.
```

Integrating over a heat-scale interval `I_R` and using Holder in time gives

```math
R^{-2}\iint_{Q_R^\Phi}|v|^3
\le
C
\left(
R^{-1}\sup_{t\in I_R}\int_{B_R^\Phi(t)}|v(t)|^2
\right)^{3/4}
\left(
R^{-1}\iint_{Q_R^\Phi}|\nabla u|^2
\right)^{3/4}.
\tag{JAVG.P1}
```

Write

```math
A_R^{aff}
:=
R^{-1}\sup_{t\in I_R}\int_{B_R^\Phi(t)}|u-u_R^{aff}|^2,
```

and

```math
D_R
:=
R^{-1}\iint_{Q_R^\Phi}|\nabla u|^2.
```

Then

```math
R^{-2}\iint_{Q_R^\Phi}|u-u_R^{aff}|^3
\le
C(A_R^{aff}D_R)^{3/4}.
\tag{JAVG.P2}
```

## Consequence

If the pressure and dissipation terms are small while the velocity term is
large, `(JAVG.P2)` forces a lower bound on `A_R^{aff}`, not on `D_R` alone.

The exact consequence is:

```math
SCF_{base}(Q_R^\Phi)>\varepsilon_m
```

implies one of the following:

```math
c_D\,D_R\ge\varepsilon_m,
\qquad
c_P\,P_R^{loc}\ge\varepsilon_m,
\qquad
c_A\,A_R^{aff}\ge\varepsilon_m^{4/3}D_R^{-1}.
```

The first two alternatives are seen by `\nu_{SCF}`. The third is the
affine-amplitude escape channel.

## Why This Does Not Close `JAVG.1`

Global energy controls the total time-slice energy. It does not give a
bounded-overlap summability theorem for repeated terminal packets of
`A_R^{aff}`, and it does not convert

```math
A_R^{aff}\text{ threshold}
```

into

```math
D_R\text{ or }P_R^{loc}\text{ mass}
```

on the same terminal schedule.

The local energy inequality gives balances, but without an additional decay,
recurrence, or amplitude-gain theorem it permits moving terminal affine-energy
packets.

## Exact Replacement Theorem

The failed Poincare route reduces `JAVG.1` to the following theorem:

```math
\boxed{
A_R^{aff}\text{ terminal threshold}
\Longrightarrow
D_R+P_R^{loc}\text{ lower mass on a comparable same-fluid window}.
}
\tag{JAVG.Amp}
```

Equivalently, one may install an additive finite carrier:

```math
\boxed{
\sum_k A_{R_k}^{aff}(Q_k)\le C(E_0)
}
```

for the same separated terminal window schedule. No such theorem is currently
installed.

## Verdict

Affine normalization improves the bookkeeping, but it does not eliminate the
velocity-amplitude channel, so

```math
\boxed{
JAVG.1\text{ remains open at }JAVG.Amp.
}
```

Any future proof of `Jump_avg` elimination must either prove `JAVG.Amp` or
avoid the affine-amplitude channel by a different same-carrier lower theorem.
