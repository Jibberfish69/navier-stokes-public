# EndpointSelector.TTU — Jump Finite Selector Test

## Status

Threshold-selector theorem proved. Fixed-selector theorem remains open.

## Jump face

The pointwise jump face is loss of every positive one-field coherence scale on the active terminal tail.

The averaged version is encoded by the bad material set

```math
\mathcal B_{\varepsilon_m}^{\Phi}
:=
\{(a,t):\forall r>0,
SCF_{base}(Q_r^\Phi(a,t))>\varepsilon_m\}.
```

and

```math
CAVG.J:
\mathcal B_{\varepsilon_m}^{\Phi}\ne\varnothing
\Longrightarrow
Jump_{avg}.
```

## Threshold selector

For every positive scale threshold `r>0`, failure of positive field / SCF-good scale gives an active material point `(a_r,t_r)` on the terminal tail such that no same-fluid cylinder at that threshold is good:

```math
SCF_{base}(Q_r^\Phi(a_r,t_r))>\varepsilon_m.
```

Thus `{a_r}` is a finite selector witnessing failure at scale `r`.

So

```math
Jump
\Longrightarrow
\forall r>0\ \exists\text{ finite threshold selector witnessing scale failure.}
```

## Fixed selector issue

A fixed finite selector set

```math
\{a_1,\dots,a_J\}
```

requires the same labels to witness loss of every positive scale through the terminal tail. The definition of `Jump` allows the failing label to depend on the scale or time. A moving bad-set pattern can place the loss of scale at fresh labels, while every fixed finite selector retains some positive good scale.

Therefore threshold selectors do not prove the fixed-selector theorem.

## Result

The valid result is

```math
Jump
\Longrightarrow
\text{finite threshold selectors exist for every positive scale threshold.}
```

The missing strengthening is

```math
JumpSelector.Fixed:
Jump
\Longrightarrow
\exists\{a_1,\dots,a_J\}\text{ fixed such that Jump occurs on this selector packet.}
```

## Boundary

A fixed selector follows from a finite-complexity rule, compact-uniform scale modulus, or a theorem excluding moving bad-set labels. It is not a consequence of the `Jump` definition alone.