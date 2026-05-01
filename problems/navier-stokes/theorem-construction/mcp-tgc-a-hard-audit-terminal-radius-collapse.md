# TGC.A Hard Audit: Terminal Radius Collapse

## Status

Conditional hard audit for `TGC.A`.

The audit question is whether terminal SCF-good radius collapse has theorem content as `Jump_avg`, rather than serving as a bare relabeling.

## Objects

For a same-fluid terminal tail `\mathcal T`, define

```math
r_{good}(a,t):=\sup\{r>0:SCF_{base}(Q_r^\Phi(a,t))\le\varepsilon_m\}.
```

The pointwise bad set is

```math
\mathcal B_{\varepsilon_m}^{\Phi}:=\{(a,t):r_{good}(a,t)=0\}.
```

The hard-audit version of the averaged field face is:

```math
Field_{avg}(\mathcal T)
\quad\Longleftrightarrow\quad
\exists\mathcal T'\subset\mathcal T\text{ terminal},\ \exists r_*>0
\text{ such that }r_{good}(a,t)\ge r_*\text{ on }\mathcal T'.
```

Thus

```math
Jump_{avg}(\mathcal T)
\quad\Longleftrightarrow\quad
\text{failure of }Field_{avg}(\mathcal T),
```

i.e. every terminal subtail has arbitrarily small SCF-good radius somewhere.

## Theorem `TGC.hard`

Terminal SCF-good radius collapse implies the averaged jump face in the field/coherence sense:

```math
\left[
\forall\mathcal T'\subset\mathcal T\text{ terminal},\ \inf_{(a,t)\in\mathcal T'}r_{good}(a,t)=0
\right]
\Longrightarrow
Jump_{avg}(\mathcal T).
```

## Proof

Assume terminal radius collapse. Then for every terminal subtail `\mathcal T'` and every `r>0`, there exists `(a,t)\in\mathcal T'` with

```math
r_{good}(a,t)<r.
```

Equivalently, no terminal subtail carries a uniform positive SCF-good scale. Hence `Field_avg(\mathcal T)` fails under the averaged field/coherence convention above.

The averaged endpoint grammar identifies failure of the averaged field/coherence scale with `Jump_avg`. Therefore terminal radius collapse implies `Jump_avg`.

This proof is stronger than the pointwise bad-set row

```math
\mathcal T\cap\mathcal B_{\varepsilon_m}^{\Phi}\ne\varnothing\Longrightarrow Jump_{avg},
```

because it also covers the sequence scenario

```math
(a_n,t_n)\to T_*,\qquad r_{good}(a_n,t_n)\downarrow0,
\qquad r_{good}(a_n,t_n)>0\text{ for each }n.
```

## Audit verdict

`TGC.A` passes the hard audit exactly under the field/coherence reading:

```math
Field_{avg}=\text{uniform positive terminal SCF-good scale on a terminal subtail}.
```

Under that reading, terminal radius collapse is a genuine averaged field failure, hence an endpoint face.

If `Jump_avg` is read only as literal intersection with the pointwise bad set `\mathcal B_{\varepsilon_m}^{\Phi}`, the theorem fails to cover the terminal sequence-collapse scenario. The current route must therefore keep the broadened terminal-scale reading of `Jump_avg` explicit.

## Consequence for AACT.Global

With `TGC.hard` installed, the terminal cover dichotomy becomes

```math
Field_{avg}(\mathcal T)
\quad\vee\quad
Jump_{avg}(\mathcal T).
```

On the `Field_avg` branch, a uniform positive SCF-good scale exists on a terminal subtail. Together with `SGC.A_{a.e.}` compact-good coverage and bounded same-fluid distortion, this gives the strict averaged-good finite cover used by `TGC.A` and `AACT.Global.noJump`.

On the `Jump_avg` branch, the face is carried to the averaged endpoint theorem and removed downstream by

```math
CFI.A_{avg}+AVG.END.Cert\Longrightarrow End_{NS,avg}.
```

## Boundary

This audit proves the classification only under the explicit terminal-scale definition of averaged field coherence. It does not prove local `AACT.KX`, source closure, or final release promotion.