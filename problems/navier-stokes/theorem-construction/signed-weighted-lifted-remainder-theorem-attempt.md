# Signed Weighted Lifted-Remainder Theorem Attempt

## Target

The desired signed theorem was

```math
\int_0^T\mathfrak G_N^{lift,\sigma}(t)dt
\le C2^{-2\delta N},
```

where

```math
\mathfrak G_N^{lift,\sigma}
=
\sum_{j\ge N}\sum_{N+M<k<j-4}\sum_{|\ell-j|\le C_{LP}}
W_{j,k,\ell}^{\sigma}\mathcal R_{j,k,\ell}^{lift}.
```

The live lifted remainder is

```math
\mathcal R_{j,k,\ell}^{lift}
=
2^{2j}\langle [\Delta_j,a_k\cdot\nabla]\Delta_\ell u,\Delta_j u\rangle,
\qquad a_k=\Delta_k u.
```

## Principal commutator form

For `k<j` and `ell` in the output collar, the commutator has the standard paracommutator expansion

```math
[\Delta_j,a_k\cdot\nabla]\Delta_\ell u
=
2^{-j}\mathcal C_j(\nabla a_k,\nabla\Delta_\ell u)+\text{lower order collar terms}.
```

Since `ell` is comparable to `j`, this yields the leading size

```math
\mathcal R_{j,k,\ell}^{lift}
:=
2^{2j}\langle \mathcal C_j(\nabla a_k,\Delta_j u),\Delta_j u\rangle.
```

The coefficient is the low/intermediate strain `\nabla a_k` acting on the active shell energy density.

## Sign obstruction

The leading bilinear form has no fixed sign. A local wave packet can be aligned with an expanding eigen-direction of the symmetric part of `\nabla a_k`, giving a positive contribution. Aligning with a contracting direction gives the opposite sign.

The weights `W_{j,k,ell}^sigma` are fixed by the one-sided tail route. They supply scale orientation, while they supply no algebraic sign reversal tied to the strain eigendirection.

Thus the signed weighted sum can have many same-sign leading contributions when the active shell packets are arranged coherently relative to the low/intermediate strain.

## Consequence

The exact unweighted shell exchange antisymmetry applies to the vacuous bare separated exchange. The true output-collar commutatorized remainder is a different object. Its principal symbol is the paracommutator strain form above, and the current algebra supplies no cancellation theorem for its weighted signed sum.

## Result

The signed weighted lifted-remainder theorem remains unproved and fails as a consequence of the current exchange algebra alone. The route now needs one of two new inputs:

```math
\text{a strain-sign cancellation theorem for }\mathfrak G_N^{lift,\sigma},
```

or

```math
\text{a positive-carrier replacement controlling the absolute-value envelope.}
```

The next branch is the positive-carrier replacement.

## Superseding MPP Closure

The positive-carrier branch has now been executed inside
`mpp-awg-deep-source-frontier-closure-note.md`. It closes only conditionally on
active-square residual-tail control, which is again the same
`SOURCE.NO-PULSE.A` source-control atom. Retrying the positive-carrier branch in
its current form does not eliminate `Jump_avg` without that atom.
