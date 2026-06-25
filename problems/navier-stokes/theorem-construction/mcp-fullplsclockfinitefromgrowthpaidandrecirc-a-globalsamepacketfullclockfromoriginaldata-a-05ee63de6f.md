# FullPLSClockFiniteFromGrowthPaidAndRecirc.A

Status: conditional downstream implication proved.

The null-mode-corrected PLS clock is split as

```math
d\Omega_N^{PLS,\#}
=
d\Omega_N^{paid,+}+d\Omega_N^{recirc,-}+d\Omega_N^{grow}.
\tag{FPG.1}
```

The wrong-sign recirculation theorem gives

```math
\int_0^{T^*}d\Omega_N^{recirc,-}<\infty.
\tag{FPG.2}
```

`OrientedPaidClockFiniteFromGrowth.A` gives

```math
\int_0^{T^*}d\Omega_N^{grow}<\infty
\Longrightarrow
\int_0^{T^*}d\Omega_N^{paid,+}<\infty.
\tag{FPG.3}
```

Therefore, if the growth-birth ledger proves

```math
\int_0^{T^*}d\Omega_N^{grow}<\infty,
\tag{FPG.4}
```

then integrating `(FPG.1)` and using `(FPG.2)`-`(FPG.4)` gives

```math
\boxed{
\int_0^{T^*}d\Omega_N^{PLS,\#}<\infty .
}
```

This note discharges only the downstream algebra.  The actual remaining theorem is `(FPG.4)`, equivalently the growth-birth ledger inequality

```math
d\mathcal E_N^{birth}+c_Nd\Omega_N^{grow}\le dR_N^{legal},
\qquad
\mathcal E_N^{birth}(t)\ge -C_N(u_0),
\qquad
\int_0^{T^*}dR_N^{legal}<\infty .
```