# MPP Signed Lifted-Remainder Plus Residual-Tail Attempt Note

## Status

Theorem-facing supplier attempt for `AWG.A`.

This note attacks the signed-cancellation form:

```math
\text{signed weighted lifted-remainder cancellation}
+
\text{active-square residual-tail control}
\Longrightarrow
AWG.A.
```

The conditional structure is valid, but the unconditional theorem is not
discharged.

## Cancellation Side

The unweighted dyadic exchange is antisymmetric. After shell weights, lifted
packet reductions, and cutoffs are inserted, the remaining source is the true
weighted lifted remainder

```math
G_N^{lift,\sigma}
=
\sum W_{j,\ell}^{\sigma}R_{j,k,\ell}^{lift}.
```

A sufficient signed theorem would be

```math
\int_0^T G_N^{lift,\sigma}(t)\,dt
\le C2^{-2\delta N}.
```

The current exchange algebra does not force the needed sign. The lifted
remainder can align with expanding strain directions, and one-sided shell
weights do not create cancellation by themselves.

## Residual-Tail Side

If absolute values are inserted before summation, the estimate becomes a
positive-carrier bound. Young's inequality then leaves a residual active-square
tail:

```math
\int_I\sum_{j\ge N}2^{-j}D_j(t)^2\,dt.
```

The installed full tail-square reserve controls cumulative tail energy squared
by first-moment dissipation. It does not control shellwise active-square density
on terminal active intervals.

## Verdict

The signed lifted-remainder route is not discharged. It closes conditionally as:

```math
\boxed{
\text{signed strain cancellation}
+
\text{active-square residual-tail control}
\Longrightarrow
AWG.A,
}
```

but the current route can spend the signed term only after a genuine one-sided
sign theorem is installed.  If the proof replaces the signed term by absolute
values, the residual term is the active-window source-normalization primitive
above; that conversion is an extra hypothesis, not a free equivalence.
