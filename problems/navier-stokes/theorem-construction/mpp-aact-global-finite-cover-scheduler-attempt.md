# AACT.Global Finite-Cover Scheduler Attempt

## Status

Failed discharge / conditional globalization theorem.

Target:

```math
AACT.Global:
\qquad
SCF_{base}+SGC.A_{a.e.}+ATD_m^\varepsilon
\Longrightarrow
DTC.A_{avg}
```

on every face-free terminal same-fluid approach tail, with no upstream use of `READ.COVER`, old pointwise `DTC.A`, old `Field`, old `CFI.A`, or `End_NS`.

## Local theorem available

On a single SCF-good moving cylinder, `ATD_m^\varepsilon` gives the finite-depth averaged tower packet after shrinking. In particular it supplies

```math
X_R(s_a)\le\eta_X,
\qquad
X_R\in L^\infty(I_R),
\qquad
N_R\in L^1(I_R),
\qquad
\mathcal K_{\le m}^{avg,R}\in L^1(I_R),
\qquad
F_R\in L^1(I_R).
```

The installed averaged ACT estimate then gives, on that cylinder,

```math
D^+X_R+cN_R
\le
(1+A_R+V_R+P_R)X_R
+C(X_R^{1/2}+V_R^{1/3}+P_R^{2/3})N_R
+F_R.
```

If the local scheduler inequality

```math
\left(\eta_X+\int_{I_R}F_R\right)
\exp\left(\int_{I_R}(1+A_R+V_R+P_R)\right)
\le 2\eta_X
```

holds after subdividing the interval, the first-exit argument gives the local averaged packet:

```math
X_R\in L^\infty,
\qquad
N_R\in L^1,
\qquad
\mathcal K_{\le m}^{avg,R}\in L^1.
```

This is local `AACT.KX`.

## Conditional finite-cover globalization

Assume the terminal same-fluid tail admits a finite positive-scale SCF-good cover

```math
\{Q_{R_i}^{\Phi}(a_i,t_i)\}_{i=1}^J
```

with:

1. `R_i\ge R_*>0`;
2. bounded overlap after shrinking;
3. `ATD_m^\varepsilon` on the shrunken cylinders;
4. a common finite scheduler partition on which the local scheduler inequality holds for every cover element and every required parameter instance.

Then summing the local `AACT.KX` estimates over the finite cover and finite route parameter set gives

```math
DTC.A_{avg}
```

on the terminal tail. The finite constants depend only on the cover overlap, the finite route parameter set, and the local ATD/AACT constants.

Thus the theorem

```math
\text{uniform positive SCF-good terminal finite cover}
+\text{common scheduler}
\Longrightarrow
AACT.Global
```

is valid.

## Bad-material routing

Finite energy gives SCF-good cylinders at material-a.e. spacetime points. If a same-fluid terminal tail meets the material bad set

```math
\mathcal B_{\varepsilon_m}^{\Phi},
```

then the installed grammar routes this to

```math
CAVG.J:
\mathcal B_{\varepsilon_m}^{\Phi}\ne\varnothing
\Longrightarrow
Jump_{avg}.
```

So the bad-material set is correctly an averaged endpoint face.

## Where the discharge fails

Finite energy plus a.e. good-cylinder production does not by itself give a uniform positive terminal finite cover. The good radius may tend to zero along a sequence approaching `T_*` while every preterminal point remains SCF-good. This is a cover-degeneration scenario, not a contradiction supplied by ordinary a.e. goodness.

Likewise, local scheduler bounds do not automatically yield one common terminal scheduler across a degenerating sequence of shrinking cylinders. A common scheduler requires terminal-uniform control of the integrals

```math
\int (1+A_R+V_R+P_R),
\qquad
\int F_R,
```

across the finite selected cover. Current surfaces do not derive that uniform scheduler from `OriginalSmoothData` alone.

## Exact remaining primitive

The noncircular theorem still needed is:

```math
OriginalSmoothData
\Longrightarrow
\text{uniform positive SCF-good terminal finite cover with common AACT scheduler},
```

or equivalently a proof that failure of such a uniform cover is precisely `Jump_avg` and is removed by the averaged endpoint matrix without using old pointwise readout upstream.

## Verdict

`AACT.Global` is proved conditionally from a uniform terminal finite cover and common scheduler. It is not discharged from `OriginalSmoothData`. Therefore `PCTP.hard` remains open at the averaged globalization / terminal cover production step.