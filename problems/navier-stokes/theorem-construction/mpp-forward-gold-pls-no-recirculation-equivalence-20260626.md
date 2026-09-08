# Full same-packet PLS no-recirculation equivalence

Status: equivalence proved; forward construction remains open.

## 1. Target law

Let

```math
d\Omega_N^{full}\ge0
```

be the full moving positive participation-law-strain service measure for the original smooth material history.

A no-recirculation / no-refund law has the form

```math
d\mathfrak R_N+d\mathfrak L_N+c\,d\Omega_N^{full}\le dR_N,
\tag{NR.1}
```

with

```math
\mathfrak R_N\ge0,
\qquad
\mathfrak L_N\ge -C_N(u_0),
\qquad
\int_0^{T^*}dR_N<\infty .
\tag{NR.2}
```

Here `\mathfrak R_N` is the spent-reserve ledger and `\mathfrak L_N` is the bounded-below same-material storage.

## 2. No-recirculation implies the full clock

Integrating `(NR.1)` over `[0,T]`, with `T<T^*`, gives

```math
c\int_0^T d\Omega_N^{full}
\le
\int_0^T dR_N
+\mathfrak R_N(0)-\mathfrak R_N(T)
+\mathfrak L_N(0)-\mathfrak L_N(T).
```

Using `(NR.2)`, finite initial reserve, and the lower bounds,

```math
c\int_0^T d\Omega_N^{full}
\le
\int_0^{T^*}dR_N+\mathfrak R_N(0)+\mathfrak L_N(0)+C_N(u_0).
```

The right side is independent of `T`. Therefore

```math
\int_0^{T^*}d\Omega_N^{full}<\infty .
```

Thus any genuine no-recirculation law discharges `GlobalSamePacketFullClockFromOriginalData.A`.

## 3. Finite full clock constructs a terminal spent-reserve ledger

Assume

```math
\int_0^{T^*}d\Omega_N^{full}<\infty .
```

Define the terminal-tail reserve

```math
\mathfrak R_N(t)=c\int_t^{T^*}d\Omega_N^{full},
\qquad
\mathfrak L_N(t)=0,
\qquad
R_N(t)=0 .
```

Then

```math
d\mathfrak R_N=-c\,d\Omega_N^{full},
```

so `(NR.1)` holds with equality:

```math
d\mathfrak R_N+c\,d\Omega_N^{full}=0.
```

The reserve is nonnegative and finite by the assumed full clock.

## 4. Consequence

The no-recirculation law is equivalent in strength to the full moving clock unless the reserve is constructed forward from already-installed original-data ledgers.

A useful proof has to construct `\mathfrak R_N` from one of these sources:

```math
\text{energy/dissipation reserve},
\qquad
\text{material-Helmholtz--Leray coercive reserve},
\qquad
\text{pressure-strain cancellation reserve},
\qquad
\text{frequency-local native reserve birth ledger}.
```

The terminal-tail construction above certifies the meaning of the law. It supplies no forward a priori estimate because it uses the target full clock.

## 5. Exact narrowed hinge

The live theorem should now be stated as:

```math
\boxed{\text{ForwardNativeReserveBirthPaysFullPLS.A}}
```

Statement:

For the original smooth incompressible Navier--Stokes material history, construct a nonnegative forward native reserve `\mathfrak R_N^{nat}` from original-data quantities and installed fixed-annulus/fixed-collar ledgers such that

```math
d\mathfrak R_N^{nat}+d\mathfrak L_N+c\,d\Omega_N^{full}\le dR_N,
```

with `\mathfrak L_N` bounded below and `dR_N` integrable independently of `d\Omega_N^{full}`.

This is the precise noncircular form of terminal no-recirculation / no-refund.

## 6. Result

This bounded unit proves the no-recirculation equivalence and isolates the forward construction requirement. The MPP route remains open exactly at the construction of a native reserve that pays the full positive PLS service without importing the target clock.