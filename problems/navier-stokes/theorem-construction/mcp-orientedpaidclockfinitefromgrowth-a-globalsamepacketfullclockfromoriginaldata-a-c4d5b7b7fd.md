# OrientedPaidClockFiniteFromGrowth.A

Status: conditional downstream implication proved.

Assume the oriented tax-at-source split after null-mode correction:

```math
d\mathscr A_N+c_Nd\Omega_N^{paid,+}
\le
dR_N^{legal}+C_Nd\Omega_N^{grow}+dR_N^{recirc,finite}.
\tag{OPF.1}
```

Assume also the storage lower bound and finite initial value:

```math
\mathscr A_N(0)\le C_N(u_0),
\qquad
\inf_{t<T^*}\mathscr A_N(t)>-C_N(u_0),
\tag{OPF.2}
```

and finite residuals:

```math
\int_0^{T^*}dR_N^{legal}<\infty,
\qquad
\int_0^{T^*}dR_N^{recirc,finite}<\infty.
\tag{OPF.3}
```

If the remaining one-way growth clock is finite,

```math
\int_0^{T^*}d\Omega_N^{grow}<\infty,
\tag{OPF.4}
```

then integrating `(OPF.1)` over \([0,t]\), taking \(t\uparrow T^*\), and using `(OPF.2)` gives

```math
c_N\int_0^{T^*}d\Omega_N^{paid,+}
\le
\mathscr A_N(0)-\inf_{t<T^*}\mathscr A_N(t)
+
\int_0^{T^*}dR_N^{legal}
+C_N\int_0^{T^*}d\Omega_N^{grow}
+
\int_0^{T^*}dR_N^{recirc,finite}<\infty.
```

Therefore

```math
\boxed{
\int_0^{T^*}d\Omega_N^{paid,+}<\infty .
}
```

This result does not prove `(OPF.4)`.  It records the exact downstream implication: once the growth-birth ledger proves finite one-way growth, the oriented paid PLS clock is automatically finite.