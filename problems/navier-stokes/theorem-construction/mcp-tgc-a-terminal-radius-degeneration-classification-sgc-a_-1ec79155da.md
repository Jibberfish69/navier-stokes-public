# TGC.A Terminal Radius Degeneration Classification

## Status

Theorem-facing classification lemma for `TGC.A`.

## Definitions

For a same-fluid terminal tail `\mathcal T`, define the local SCF-good radius

```math
r_{good}(a,t):=
\sup\{r>0:SCF_{base}(Q_r^\Phi(a,t))\le\varepsilon_m\}.
```

Define the bad material set

```math
\mathcal B_{\varepsilon_m}^{\Phi}
:=\{(a,t):r_{good}(a,t)=0\}.
```

The averaged jump face is the terminal loss of positive SCF-good material scale:

```math
Jump_{avg}(\mathcal T)
\Longleftrightarrow
\inf_{(a,t)\in\mathcal T'}r_{good}(a,t)=0
```

for every terminal subtail `\mathcal T'` of `\mathcal T`.

## Theorem `TGC.class`

If terminal SCF-good radii degenerate along `\mathcal T`, then

```math
Jump_{avg}(\mathcal T).
```

Equivalently,

```math
\neg Jump_{avg}(\mathcal T)
\Longrightarrow
\exists r_*>0\text{ and a terminal subtail }\mathcal T'\subset\mathcal T
\text{ with }r_{good}(a,t)\ge r_*\text{ on }\mathcal T'.
```

## Proof

Terminal radius degeneration means that for every terminal subtail `\mathcal T'` and every `r>0`, there exists `(a,t)\in\mathcal T'` such that

```math
SCF_{base}(Q_r^\Phi(a,t))>\varepsilon_m.
```

This is exactly the statement

```math
\inf_{(a,t)\in\mathcal T'}r_{good}(a,t)=0
```

for every terminal subtail. By the definition of the averaged jump face, this is `Jump_avg(\mathcal T)`.

For the equivalent contrapositive, suppose `Jump_avg(\mathcal T)` is absent. Then some terminal subtail `\mathcal T'` has positive good-radius margin. Hence there is `r_*>0` with

```math
r_{good}(a,t)\ge r_*\qquad ((a,t)\in\mathcal T').
```

The same-fluid geometry and bounded distortion turn this positive margin into a finite SCF-good cover with fixed lower radius after choosing a finite route-required parameter set and applying compactness to the retained material tail.

## Consequence For `TGC.A`

`SGC.A_{a.e.}` covers compact subsets of the good region. `TGC.class` supplies the missing terminal margin statement. Therefore on the no-`Jump_avg` branch the terminal tail has a finite SCF-good cover with a uniform positive radius and bounded overlap.

## Boundary

This note classifies scale degeneration. The averaged ACT scheduler and `DTC.A_avg` production are supplied by `TGC.A` and `AACT.Global.noJump`.