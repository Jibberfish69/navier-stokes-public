# Readout Dependency Order: `End_NS_avg` To `End_NS`

## Status

Conditional dependency-order theorem.

This note records the only valid order for terminal averaged-to-pointwise endpoint recovery.

## Ordered Chain

The dependency order is:

```math
End_{NS,avg}
\Longrightarrow
READ.COVER,
```

then

```math
READ.COVER+ATD_m^\varepsilon+Field_{avg}
\Longrightarrow
Field.Read
\Longrightarrow
Field,
```

and

```math
READ.COVER+ATD_m^\varepsilon+DTC.A_{avg}
\Longrightarrow
DTC.Read
\Longrightarrow
DTC.A,
```

then

```math
End_{NS,avg}+READ.COVER+Field.Read+DTC.Read
\Longrightarrow
READ.END
\Longrightarrow
End_{NS}.
```

Equivalently,

```math
End_{NS,avg}
\Longrightarrow
READ.COVER
\Longrightarrow
(Field.Read\wedge DTC.Read)
\Longrightarrow
READ.END
\Longrightarrow
End_{NS}.
```

## Why The Order Is Forced

`READ.COVER` is a downstream bridge. It uses the averaged endpoint exclusion to produce a uniform positive-scale finite SCF-good cover. It is not an upstream finite-energy cover assumption.

`Field.Read` needs `READ.COVER` and `ATD_m^\varepsilon` to convert averaged field coherence into the old pointwise `Field` row.

`DTC.Read` needs `READ.COVER` and `ATD_m^\varepsilon` to convert the averaged transported-center packet into pointwise `DTC.A`. Its pressure component is supplied by `DTC.Read.Press.local`, and its viscous component requires depth at least `N+2`.

`READ.END` can be invoked only after `Field.Read` and `DTC.Read` have supplied the old pointwise endpoint rows:

```math
Field,
\qquad
DTC.A.
```

Then the old pointwise endpoint matrix applies:

```math
END.Exh+END.Cross+END.Pack+END.Field+END.TowerBound\Longrightarrow End_{NS}.
```

## Forbidden Shortcuts

The following shortcuts are disallowed:

```math
DTC.A_{avg}\not\Rightarrow DTC.A
\quad\text{before }DTC.Read,
```

```math
Field_{avg}\not\Rightarrow Field
\quad\text{before }Field.Read,
```

```math
End_{NS,avg}\not\Rightarrow End_{NS}
\quad\text{before }READ.END,
```

and

```math
READ.COVER
```

may not be used upstream of `End_NS_avg`.

## Output

The terminal readout dependency is now fixed as:

```math
\boxed{
End_{NS,avg}
\Longrightarrow
READ.COVER
\Longrightarrow
Field.Read+DTC.Read
\Longrightarrow
READ.END
\Longrightarrow
End_{NS}.
}
```

This completes the current averaged-route frontier loop inventory.