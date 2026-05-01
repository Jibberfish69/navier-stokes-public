# Field.TTU Jump-Face GoodScale Test

## Status

Failed direct theorem attempt.

## Target

```math
Field.TTU:
OriginalSmoothData+Pack.TTU
\Longrightarrow
\text{positive terminal field / SCF-good scale}.
```

This is the field-side analogue of `TowerCover.TTU` and the pointwise face corresponding to `Jump`.

## Conditional readout available

After terminal readout cover, the pointwise field row is supplied by

```math
Field.Read:
Field_{avg}+READ.COVER+ATD_m^\varepsilon\Longrightarrow Field.
```

Thus, if `READ.COVER` is already available, the pointwise field row follows.

## Direct terminal-tail test

`Pack.TTU` supplies bounded same-fluid distortion and prevents packing detachment. It does not by itself supply a positive local field/coherence scale at every active terminal material point.

The obstruction is again the bad material set

```math
\mathcal B_{\varepsilon_m}^{\Phi}
:=
\{(a,t):\forall r>0,
SCF_{base}(Q_r^\Phi(a,t))>\varepsilon_m\}.
```

A terminal tail meeting this set has no positive SCF-good scale at that material point. The averaged endpoint grammar records this as

```math
CAVG.J:
\mathcal B_{\varepsilon_m}^{\Phi}\ne\varnothing\Longrightarrow Jump_{avg}.
```

The pointwise field face has the same obstruction: a loss of every positive local coherence scale is `Jump`.

## Exact obstruction

The missing theorem is

```math
GoodScale.TTU:
OriginalSmoothData+Pack.TTU
\Longrightarrow
\mathcal B_{\varepsilon_m}^{\Phi}
\cap Q^\Phi([t_0,T_*),A_\sharp)=\varnothing.
```

Equivalently, every active terminal material point must have a positive SCF-good cylinder.

## Result

`Field.TTU` remains open at `GoodScale.TTU`.

Once `GoodScale.TTU` holds, strict-margin compactness gives `READ.COVER`, `ATD_m^\varepsilon` gives local finite-depth control, and `Field.Read` gives the pointwise `Field` row.

## Verdict

`Field.TTU` and `TowerCover.TTU` share the same obstruction: full terminal positive SCF-good scale. The bad material set is precisely the averaged jump face upstream of readout.