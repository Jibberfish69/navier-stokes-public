# MPP TGC.A No-Escape Jump_avg Hardening Note

## Status

Theorem-facing hardening note for the first continuation-loop item:

```math
TGC.A.noEscape:
\quad
\mathcal B_{\varepsilon_m}^{\Phi}\ne\varnothing
\quad\vee\quad
\inf r_{good}=0
\Longrightarrow
Jump_{avg}.
```

This note isolates the classification step used by the terminal-tail bridge before the finite-cover scheduler and before pointwise readout.

## Source anchors

| Surface | SHA |
|---|---|
| `mcp-tgc-a-terminal-radius-degeneration-classification-sgc-a_-1ec79155da.md` | `1ec79155da37eae1991b5e43d79acded4ab75fef` |
| `mcp-tgc-a-precise-terminal-good-cover-definition-read-cover-773d31e97c.md` | `773d31e97c7524e66052498be2ee558bd77c88ce` |
| `mcp-pctp-hard-discharge-via-averaged-terminal-tail-uniformization-avg-end-a-a92107787f.md` | `a92107787fd2b95ee9beb76b4ef2b5cc8a00790c` |

## Definitions

Let `\mathcal T` be a bounded-distortion same-fluid terminal approach tail.

For each material spacetime point `(a,t)\in\mathcal T`, define the SCF-good radius

```math
r_{good}(a,t)
:=
\sup\{r>0:SCF_{base}(Q_r^{\Phi}(a,t))\le\varepsilon_m\}.
```

Define the bad material set

```math
\mathcal B_{\varepsilon_m}^{\Phi}
:=
\{(a,t)\in\mathcal T:r_{good}(a,t)=0\}.
```

The averaged jump face is the terminal loss of positive SCF-good material scale:

```math
Jump_{avg}(\mathcal T)
\Longleftrightarrow
\forall\text{ terminal subtails }\mathcal T'\subset\mathcal T,
\quad
\inf_{(a,t)\in\mathcal T'}r_{good}(a,t)=0.
```

Equivalently, `Jump_avg` is persistent failure of a positive scale-critical SCF-good averaged one-field coherence packet on every terminal subtail.

## Theorem `TGC.A.noEscape`

```math
\boxed{
\mathcal B_{\varepsilon_m}^{\Phi}\ne\varnothing
\Longrightarrow
Jump_{avg}(\mathcal T).
}
```

and

```math
\boxed{
\forall\mathcal T'\subset\mathcal T\text{ terminal},\quad
\inf_{(a,t)\in\mathcal T'}r_{good}(a,t)=0
\Longrightarrow
Jump_{avg}(\mathcal T).
}
```

In the compact terminal-tail form:

```math
\boxed{
\mathcal B_{\varepsilon_m}^{\Phi}\ne\varnothing
\quad\vee\quad
\text{terminal SCF-good radii degenerate on every terminal subtail}
\Longrightarrow
Jump_{avg}.
}
```

## Proof

### Bad material contact

Assume

```math
\mathcal B_{\varepsilon_m}^{\Phi}\ne\varnothing.
```

Then some terminal material point `(a_0,t_0)` satisfies

```math
r_{good}(a_0,t_0)=0.
```

Thus every positive cylinder centered at `(a_0,t_0)` fails the thresholded SCF-good packet:

```math
\forall r>0,
\qquad
SCF_{base}(Q_r^{\Phi}(a_0,t_0))>\varepsilon_m.
```

Every terminal subtail containing the terminal endpoint of `(a_0,t_0)` has infimum good radius equal to zero. Hence the terminal tail has persistent failure of positive SCF-good averaged one-field coherence. By the definition of the averaged jump face,

```math
Jump_{avg}(\mathcal T).
```

### Terminal radius degeneration

Assume terminal radius degeneration:

```math
\forall\mathcal T'\subset\mathcal T\text{ terminal},
\qquad
\inf_{(a,t)\in\mathcal T'}r_{good}(a,t)=0.
```

This is the defining condition for terminal loss of positive SCF-good material scale. Therefore

```math
Jump_{avg}(\mathcal T).
```

### Compact sequence form

Equivalently, for every terminal subtail `\mathcal T'` and every `\rho>0`, there exists `(a,t)\in\mathcal T'` with

```math
r_{good}(a,t)<\rho.
```

Taking `\rho_n\downarrow0` yields a sequence of material points with good radii tending to zero. Compactness of the retained terminal label-time tail gives a convergent subsequence. If the limit point had a stable positive SCF-good radius, local stability of the SCF packet in bounded-distortion same-fluid charts gives a uniform positive lower radius for all sufficiently large sequence elements. This contradicts `r_{good}\to0`. Thus the limit is a terminal coherence fracture point in the averaged SCF-good sense, giving `Jump_avg`.

## Legal order

This classification consumes only:

1. the definition of `SCF_{base}`;
2. the same-fluid terminal-tail compactness and bounded chart distortion;
3. the definition of `Jump_avg` as persistent loss of positive SCF-good averaged coherence.

It consumes neither `READ.COVER` nor `READ.END` nor pointwise `Field` nor pointwise `DTC.A`.

## Consequence

The terminal no-escape split is locked:

```math
\boxed{
\mathcal B_{\varepsilon_m}^{\Phi}\ne\varnothing
\quad\vee\quad
\inf r_{good}=0
\Longrightarrow
Jump_{avg}.
}
```

The complementary branch is therefore exactly the branch on which a positive SCF-good terminal scale can be pursued by `TGC.A.cover`.
