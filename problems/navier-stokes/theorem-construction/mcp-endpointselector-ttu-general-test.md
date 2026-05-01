# EndpointSelector.TTU General Test

## Status

Failed as a general continuum-label theorem.

## Target

```math
EndpointSelector.TTU:
\text{endpoint face occurs}
\Longrightarrow
\exists\{a_1,\dots,a_J\}\subset A_Q
\text{ fixed and finite, carrying the same endpoint face.}
```

## General endpoint gauges

The current endpoint witnesses use supremal gauges over the active terminal family:

```math
\Gamma_{pack,Q}(t)=\sup_{a\in A_Q}\max\{\|F(a,t)\|,\|F(a,t)^{-1}\|\},
```

```math
\mathfrak A_{N,Q}(t)=\sup_{x\in Q_t}\sum_{k=0}^{N}(|U_k(x,t)|+|K_k(x,t)|),
```

and field/jump failure is also read over the active terminal approach family.

## Threshold selector issue

A face escaping every finite bound gives this weaker object:

```math
\forall M\ \exists (a_M,t_M):\quad gauge(a_M,t_M)>M.
```

The selector may depend on `M`. This supplies a threshold-dependent sequence, rather than one fixed finite selector set.

## Moving-spike obstruction

Let `A_Q=[0,1]`. Choose disjoint label neighborhoods `U_n` and terminal time intervals `I_n\to T_*`. Put smooth strain or tower bumps on `U_n\times I_n` with height tending to infinity. The endpoint supremum escapes every finite bound, while any fixed finite selector set avoids all but finitely many `U_n` after refinement.

Hence a terminal face can occur through moving labels without a fixed finite active selector carrying the whole face.

## Valid finite case

If the endpoint packet already supplies

```math
A_Q=\{a_1,\dots,a_J\},
```

then the finite selector route closes as recorded in the finite-packet reduction note.

## Required extra structure

A successful theorem needs one of:

```math
\text{fixed finite active selector packet},
```

```math
\text{finite-complexity partition with representatives},
```

or

```math
\text{integrable label-modulus controlling all labels from a finite net}.
```

## Verdict

`EndpointSelector.TTU` fails in the bare continuum-label setting. The next tests are facewise selector behavior for `tower-blown`, `packing-detached`, and `Jump`, then the finite-complexity or label-modulus replacement.