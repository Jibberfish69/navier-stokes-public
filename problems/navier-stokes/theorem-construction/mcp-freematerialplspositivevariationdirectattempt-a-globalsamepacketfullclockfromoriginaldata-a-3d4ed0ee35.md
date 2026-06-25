# FreeMaterialPLSPositiveVariationDirectAttempt.A

Status: failed direct discharge.  The pressure/collar graph replacement removes the pressure-lobe obstruction, but the free-material rectified shell-transfer theorem remains open.

## 0. Target

After graph-compatible pressure/collar replacement, the remaining free-material clock is

```math
\operatorname{Var}^+_{(0,T^*)}(m^{PLS,free})
=\int_0^{T^*}\sum_j [m_j^{PLS,free}(t)]_+dt .
\tag{FMP.1}
```

The desired theorem is

```math
\int_0^{T^*}\sum_j [m_j^{PLS,free}(t)]_+dt
\le
C_N(u_0)+\text{viscous/top-strain/annular/legal finite terms}.
\tag{FMP.2}
```

## 1. Signed shell primitive

For a weighted free material shell record,

```math
E_w(t)=\sum_j w_j e_j(t),
```

the exact shell identity has the form

```math
{d\over dt}E_w(t)+D_w^{vis}(t)=m_w^{PLS,free}(t).
\tag{FMP.3}
```

Therefore

```math
d(-E_w)+[m_w^{PLS,free}]_+dt
= D_w^{vis}dt+[-m_w^{PLS,free}]_+dt .
\tag{FMP.4}
```

This is the correct oriented algebra, but it does not close unless the negative side is finite:

```math
\int_0^{T^*}[-m_w^{PLS,free}]_+dt<\infty .
\tag{FMP.5}
```

Same-fluid donor symmetry controls the signed total, not the rectified total.

## 2. Viscous/upcrossing test

A possible direct proof is to argue that every positive shell-transfer event must either:

1. stay at high frequency long enough to pay viscosity;
2. return to lower frequency as recirculation;
3. become top-strain/frame residence;
4. enter legal/annular interface service.

The already installed wrong-sign recirculation theorem covers the recirculatory branch.  Top-strain/frame residence is paid by signed strain-log storage.  Annular/interface terms are typed legal or bounded by annular stress storage.

However this still does not prove `(FMP.2)` for the free-material shell interface.  The missing line is a scale-by-scale no-free-upcrossing estimate:

```math
\sum_j [m_j^{PLS,free}]_+dt
\le
C\,dD_N^{vis}
+C\,d\Omega_N^{top\ strain}
+C\,d\Omega_N^{annular}
+dR_N^{legal}
+dR_N^{recirc,finite}.
\tag{FMP.6}
```

Current installed inputs prove the recirculation and several service absorptions, but they do not prove `(FMP.6)` as a complete rectified shell-transfer inequality.

## 3. What remains after recirculation is already paid

The algebraic model

```math
E_H'(t)=b(t),\qquad E_L'(t)=-b(t),\qquad E_H+E_L=E_0
```

shows only why signed conservation alone cannot bound

```math
\int[b(t)]_+dt.
```

That warning is not the live oscillatory branch.  The later PLS
recirculation packing theorem has already routed bounded-record cycling,
accelerated backscatter, superheat recirculation, and top-shell regeneration
into viscosity, top-strain/frame service, annular/interface service, or legal
residual.  After that closure, the remaining branch is one-way upcrossing:
positive free-material PLS transfer which raises the continuation-depth
material record without returning as a recirculatory exchange.

Thus `(FMP.6)` should be read as a no-free-upcrossing estimate for this
one-way branch, not as a request to re-prove the already-spent
no-recirculation theorem.  It is not a consequence of the signed donor law
alone.

## 4. Result

The pressure/collar graph replacement sharpens the final open theorem to the
free-material one-way no-free-upcrossing theorem:

```math
\boxed{
\text{Every one-way positive free-material PLS upcrossing is paid by viscosity, top-strain/frame residence, annular/interface service, legal residual, or already-finite recirculation.}
}
\tag{FMP.7}
```

Equivalently, prove `(FMP.6)`.

## Verdict

The direct BV proof is not closed.  The exact remaining theorem is `FreeMaterialNoFreeUpcrossing.A`, not a pressure/collar theorem.
