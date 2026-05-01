# Local CKN Contrapositive: SCF-Bad Endpoint Face

## Status

Conditional endpoint-typing theorem.

## Local epsilon theorem

The local theorem is

```math
SCF_{base}(Q_r^\Phi(a,t))\le \varepsilon_m
\Longrightarrow
ATD_m^\varepsilon\text{ on a smaller same-fluid cylinder.}
```

Thus its contrapositive says that failure of local finite-depth regularity at every smaller scale forces persistent scale-critical largeness:

```math
\forall r>0,
\quad
SCF_{base}(Q_r^\Phi(a,t))>\varepsilon_m.
```

## SCF-bad point

This condition is exactly membership in the bad material set

```math
(a,t)\in\mathcal B_{\varepsilon_m}^{\Phi}.
```

Equivalently, the active material point has no positive SCF-good cylinder.

## Endpoint face

By the averaged endpoint grammar,

```math
\mathcal B_{\varepsilon_m}^{\Phi}
\cap Q^\Phi([t_0,T_*),A_\sharp)
\ne\varnothing
\Longrightarrow
Jump_{avg}.
```

Therefore the local CKN contrapositive gives the endpoint face

```math
SCF\text{-bad at every scale}
\Longrightarrow
Jump_{avg}.
```

## Relation to other faces

The implication to `tower-blown` requires an additional theorem turning scale-critical concentration into unbounded finite-depth tower amplitude.

The implication to `packing-detached` requires an additional theorem turning scale-critical concentration into pack-gauge escape.

The direct endpoint face supplied by the local CKN contrapositive is `Jump_avg`.

## Consequence

GoodScale is equivalent to upstream exclusion of this face:

```math
GoodScale.TTU
\Longleftrightarrow
\neg Jump_{avg}
```

inside the active terminal averaged endpoint grammar.

## Verdict

The local CKN contrapositive supplies endpoint typing, not endpoint exclusion. The remaining target is still

```math
JumpExclusion.Upstream.
```