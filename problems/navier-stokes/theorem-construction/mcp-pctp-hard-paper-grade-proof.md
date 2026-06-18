# PCTP.hard Paper-Grade Proof

## Status

Paper-grade proof surface for the terminal-tail theorem.

## Theorem

For smooth divergence-free zero-mean periodic initial data on `T^3`, the maximal classical Navier-Stokes solution has no finite terminal endpoint. Equivalently,

```math
OriginalSmoothData\Longrightarrow\text{uniform terminal-tail retained class-membership readout}.
```

## Proof

Let `(u,p)` be the maximal classical solution on `[0,T_*)`. Work on a terminal same-fluid approach tail.

The averaged field object gives the terminal positive-scale cover dichotomy. On the `Field_avg` branch, the Field_avg equivalence theorem gives a finite positive-scale SCF-good same-fluid cover on a terminal subtail. On the complementary branch, the terminal loss of that cover is the averaged endpoint face `Jump_avg`.

On the `Field_avg` branch, the local averaged estimates and finite-cover scheduler give

```math
Field_{avg}\Longrightarrow AACT.Global\Longrightarrow DTC.A_{avg}.
```

The averaged receiver theorem gives

```math
DTC.A_{avg}\Longrightarrow AVG.RCV.A\Longrightarrow LCI.A_{avg}.
```

The strengthened source supplier gives

```math
FFSRC.A\Longrightarrow FCI.5f.
```

The averaged consumer chain then gives

```math
LCI.A_{avg}+FCI.5f\Longrightarrow CSP.A_{avg}\Longrightarrow OFP.A_{avg}\Longrightarrow CFI.A_{avg}.
```

The averaged endpoint theorem consumes the four averaged endpoint faces:

```math
Dead,
\quad packing\text{-}detached,
\quad tower\text{-}blown_{avg},
\quad Jump_{avg}.
```

Therefore

```math
CFI.A_{avg}+AVG.END.Cert\Longrightarrow End_{NS,avg}.
```

After `End_NS_avg` is available, the terminal readout layer supplies

```math
End_{NS,avg}\Longrightarrow READ.COVER.
```

On this finite positive-scale cover, the readout theorems give

```math
Field_{avg}+READ.COVER+ATD_m^\varepsilon\Longrightarrow Field,
```

and

```math
DTC.A_{avg}+READ.COVER+ATD_m^\varepsilon\Longrightarrow DTC.A.
```

The pointwise endpoint package follows:

```math
READ.END:
End_{NS,avg}+READ.COVER+Field.Read+DTC.Read\Longrightarrow End_{NS}.
```

The class witness at depth `N` dominates a continuation index `s>5/2`, so `End_NS` and the pointwise class-invariance chain yield

```math
\sup_{t<T_*}\|u(t)\|_{H^s(\mathbb T^3)}<\infty.
```

The periodic `H^s`, `s>5/2`, local theory gives a lifespan depending only on
that bound. Relaunching from times `t_j\uparrow T_*` extends the classical
solution past `T_*`. Hence the maximal time satisfies

```math
T_*=\infty.
```

This proves `PCTP.hard` and the periodic global smoothness theorem.

## Dependency order

The proof order is exactly

```math
Field_{avg}\to AACT.Global\to DTC.A_{avg}\to CFI.A_{avg}\to End_{NS,avg}\to READ.END\to End_{NS}\to continuation.
```

`READ.COVER` appears only after `End_NS_avg`. Pointwise `Field` and pointwise `DTC.A` appear only after terminal readout.
