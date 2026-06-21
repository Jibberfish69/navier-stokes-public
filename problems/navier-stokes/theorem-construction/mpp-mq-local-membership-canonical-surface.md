# MPP M_Q Local Membership Canonical Surface

## Status

Canonical local membership surface for the current Navier-Stokes terminal-tail route.

## Definition

For a retained same-fluid window `Q`, define

```math
\boxed{
M_Q(u,p):=Pack_Q\wedge Part_Q\wedge Field_Q.
}
```

The indexed class witness is the depth/scale-decorated version

```math
CM_{N,r,Q}:=Part_{N,Q}\wedge Field_{N,r,Q}.
```

Here `N` is the route depth and `r>0` is the pointwise coherence scale. Thus `M_Q` is the notation-clean local membership face, while `CM_{N,r,Q}` is the theorem-route certificate carrying the depth and scale parameters.

## Relation to `End_NS`

The original endpoint package `End_NS` excludes the primitive pointwise endpoint faces:

```math
Dead,
\qquad
packing\text{-}detached,
\qquad
tower\text{-}blown,
\qquad
Jump.
```

On a retained terminal branch, `End_NS` preserves the pointwise membership data needed for `M_Q(u,p)`. The route flow is

```math
End_{NS,avg}
\Longrightarrow
READ.COVER
\Longrightarrow
Field.Read+DTC.Read
\Longrightarrow
READ.END
\Longrightarrow
End_{NS}
\Longrightarrow
M_Q(u,p).
```

## Relation to the classical closure warrant

Choose route depth `N` above a classical Sobolev continuation index

```math
s>\frac52.
```

`Pack_Q` supplies bounded transported finite-cover geometry and finite overlap. `Part_Q` keeps the tower attached to the same retained fluid object. `Field_Q` supplies pointwise one-field coherence and finite-depth tower control.

Therefore

```math
M_Q(u,p)
\Longrightarrow
\sup_{t<T_*}\|u(t)\|_{H^s}<\infty.
```

The classical continuation theorem gives

```math
\sup_{t<T_*}\|u(t)\|_{H^s}<\infty,
\qquad s>\frac52
\Longrightarrow
T_*=\infty.
```

Hence

```math
\boxed{
M_Q(u,p)
\Longrightarrow
T_*=\infty
}
```

on the retained terminal branch after the pointwise endpoint readout has produced `End_NS`.

## Legal order

`M_Q` is a pointwise membership export. In the averaged terminal-tail route, it appears after

```math
End_{NS,avg}\Longrightarrow READ.COVER\Longrightarrow READ.END\Longrightarrow End_{NS}.
```

The upstream averaged production segment uses `CM_{avg}`, `DTC.A_{avg}`, and `Field_{avg}`. The pointwise `M_Q` surface is consumed only at the classical closure step.