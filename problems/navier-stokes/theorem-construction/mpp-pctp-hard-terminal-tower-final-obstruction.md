# PCTP.hard Terminal Tower Final Obstruction

## Status

Failed discharge / exact obstruction note.

Target:

```math
OriginalSmoothData\Longrightarrow \mathfrak A_{N,Q}\in L^\infty(0,T_*).
```

This is the only remaining endpoint face after the current PCTP.hard face-reduction loop.

## What would close the proof

If the terminal tower bound holds for some finite depth `N>s+2`, then the Hs-continuation conversion gives

```math
\sup_{t<T_*}\|u(t)\|_{H^s(T^3)}<\infty,
\qquad s>5/2,
```

Set \(M_s:=\sup_{t<T_*}\|u(t)\|_{H^s(T^3)}\). Periodic \(H^s\) local theory gives
a lifespan \(\tau=\tau(\nu,s,M_s)>0\). Choosing \(t_j\uparrow T_*\) with
\(T_*-t_j<\tau/2\), the solution launched from \(u(t_j)\) exists past `T_*` and
agrees with the original solution on the overlap by uniqueness. Thus direct
terminal tower control from `OriginalSmoothData` is already the missing
regularity theorem.

## Pointwise readout route

The installed pointwise readout is conditional:

```math
READ.COVER+ATD_m^\varepsilon+DTC.Read
\Longrightarrow
\mathfrak A_{N,Q}\in L^\infty(0,T_*).
```

Here `DTC.Read` supplies pressure and viscous tower readout on a fixed positive-scale finite same-fluid cover. The pressure component is closed by the local Poisson estimate and energy far tail; the viscous component is closed by the `U_{q+2}` readout.

This does not produce the terminal tower from `OriginalSmoothData`, because the fixed positive-scale terminal cover and `ATD_m^\varepsilon` inputs are exactly the terminal production burden.

## Averaged route

The only noncircular production route currently visible is the averaged branch:

```math
OriginalSmoothData
\Longrightarrow
SCF_{base}+SGC.A_{a.e.}+ATD_m^\varepsilon
\Longrightarrow
SCF_{avg}^m
\Longrightarrow
AACT.KX
\Longrightarrow
DTC.A_{avg}.
```

The averaged ACT budget is local on SCF-good moving cylinders. Finite energy supplies a.e. good material cylinders, and `ATD_m^\varepsilon` supplies finite-depth averaged tower seeds after shrinking. The averaged budget then gives `DTC.A_avg` on the good branch.

To become terminal tower control, this averaged object still needs the terminal readout layer:

```math
End_{NS,avg}+READ.COVER+Field.Read+DTC.Read\Longrightarrow End_{NS},
```

and, for the tower itself,

```math
DTC.A_{avg}+READ.COVER+ATD_m^\varepsilon\Longrightarrow DTC.A.
```

This is valid only if the finite-cover scheduler and terminal cover are produced before spending old pointwise endpoint closure.

## Exact remaining primitive

The remaining theorem is therefore not the raw pointwise tower estimate in isolation. It is the averaged globalization theorem:

```math
\textbf{AACT.Global:}
\quad
SCF_{base}+SGC.A_{a.e.}+ATD_m^\varepsilon
\Longrightarrow
DTC.A_{avg}
```

on every face-free terminal same-fluid approach tail, with a finite-cover scheduler and bad-material-set routing

```math
\mathcal B_{\varepsilon_m}^{\Phi}\ne\varnothing
\Longrightarrow
Jump_{avg}.
```

After `AACT.Global`, the installed averaged receiver, endpoint, and readout chain supplies the pointwise endpoint/tower closure in the legal order.

## Failure of direct discharge

A direct proof of

```math
OriginalSmoothData\Longrightarrow \mathfrak A_{N,Q}\in L^\infty(0,T_*)
```

would already imply the Hs continuation criterion. The current surfaces do not provide such a theorem without passing through either the conditional pointwise readout inputs or the averaged globalization route. Any argument that uses `End_NS`, old `DTC.A`, old `Field`, or old `CFI.A` before producing the terminal cover is circular.

## Verdict

`PCTP.hard` remains open at the terminal tower face.

The exact next mathematical target is:

```math
AACT.Global+READ.END\quad\text{on the face-free terminal branch, without spending old pointwise endpoint closure upstream.}
```

Equivalently: prove the finite-cover averaged ACT globalization and terminal readout scheduler from finite-energy SCF-good cylinders to pointwise terminal tower control.
