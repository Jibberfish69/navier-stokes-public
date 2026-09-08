# OneWayGrowthBirthLedgerSolutionShape.A

Status: solution shape stated; not a discharge of the available-entropy theorem.

## Current live state

After `WrongSignActivePLSRecirculationClosure.A`, the PLS clock has the split

```math
d\Omega_N^{PLS,\#}
=
d\Omega_N^{paid,+}
+d\Omega_N^{recirc,-}
+d\Omega_N^{grow}.
```

The wrong-sign recirculation term is finite or absorbed:

```math
\int_0^{T^*}d\Omega_N^{recirc,-}<\infty.
```

The oriented paid term satisfies

```math
d\mathscr A_N+c_Nd\Omega_N^{paid,+}
\le
 dR_N^{legal}+C_Nd\Omega_N^{grow}+dR_N^{recirc,finite}.
```

Thus the only live obstruction is

```math
d\Omega_N^{grow},
```

the one-way pressure/RHS, transported-collar, and annular stress-work superheat growth that genuinely increases the material record and is not reducible to bounded-record recirculation.

## What the solution cannot be

It cannot be the storage

```math
-\log(1+\mathcal P_N^{mat}).
```

That storage is bounded below only after the material record is already bounded, so it is circular.

It also cannot be a future tail

```math
\int_t^{T^*}d\Omega_N^{grow},
```

because that assumes the conclusion.

## Correct solution shape

The remaining available entropy must be a **growth-birth ledger**:

```math
\mathcal E_N^{birth}(t)
```

attached to the original smooth material history.  Its entries are born when a new one-way material-record demand is created:

1. a new pressure/RHS superheat demand;
2. a new transported-collar deformation demand;
3. a new annular stress-work superheat demand;
4. a new top-frequency regeneration demand;
5. a new material-coordinate frame/metric demand not already paid by top-strain or recirculation.

The intended theorem is

```math
\mathcal E_N^{birth}(0)\le C_N(u_0),
\qquad
\inf_{t<T^*}\mathcal E_N^{birth}(t)>-C_N(u_0),
```

and

```math
d\mathcal E_N^{birth}+c_Nd\Omega_N^{grow}
\le dR_N^{legal},
\qquad
\int_0^{T^*}dR_N^{legal}<\infty .
\tag{BIRTH.1}
```

This is the noncircular available-PLS-entropy theorem.

## Meaning

One-way growth is not a cycle.  It is a birth of new material-record demand.  Therefore it must be charged at birth, not after it has become record growth.

The proof must show that a new one-way growth atom cannot appear for free.  It must come from one of the finite native birth channels of the original smooth packet:

```math
\text{initial smooth tail}
+\text{pressure/Helmholtz--Leray source birth}
+\text{collar/metric deformation birth}
+\text{annular stress-work birth}
+\text{top-strain/frame birth}.
```

The recirculatory part is already closed.  The remaining work is to prove that the one-way birth ledger has finite initial endowment and that every \(d\Omega_N^{grow}\) atom spends from it.

## Closure if `(BIRTH.1)` is proved

Integrating `(BIRTH.1)` gives

```math
\int_0^{T^*}d\Omega_N^{grow}<\infty.
```

Then the oriented paid clock is finite, because its only live right-side obstruction was \(d\Omega_N^{grow}\).  Together with finite recirculation,

```math
\int_0^{T^*}d\Omega_N^{PLS,\#}<\infty.
```

The existing material-record readout gives bounded \(\mathcal P_N^{mat}\), hence fixed \(H^s\) control for \(s>5/2\), and continuation.

## Exact remaining theorem

```math
\boxed{
\text{construct the finite growth-birth ledger }\mathcal E_N^{birth}\text{ and prove }(BIRTH.1).
}
```

This is the solution shape after the recirculation closure.  It is not yet a proof of `(BIRTH.1)`.