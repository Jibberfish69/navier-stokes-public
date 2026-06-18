# MPP TGC.A Cover: Positive-Scale Terminal Cover Note

## Status

Theorem-facing hardening note for the second continuation-loop item:

```math
TGC.A.cover:
\quad
\neg Jump_{avg}(\mathcal T)
\Longrightarrow
\text{finite positive-scale SCF-good same-fluid terminal cover}.
```

This note is the complementary branch to `TGC.A.noEscape`.

## Source anchors

| Surface | SHA |
|---|---|
| `mpp-tgc-a-noescape-jumpavg-hardening-note.md` | `b8cec81477bdfbaf538219bf0af567c1bab2ebb7` |
| `mcp-tgc-a-terminal-radius-degeneration-classification-sgc-a_-1ec79155da.md` | `1ec79155da37eae1991b5e43d79acded4ab75fef` |
| `mcp-tgc-a-precise-terminal-good-cover-definition-read-cover-773d31e97c.md` | `773d31e97c7524e66052498be2ee558bd77c88ce` |
| `mcp-aact-global-nojump-finite-cover-scheduler-theorem-avg-end-a-b464d2cdf8.md` | `b464d2cdf8572332a1ae0871a682d19022db4dc4` |

## Definitions

Let `\mathcal T` be a compact bounded-distortion same-fluid terminal approach tail.

For `(a,t)\in\mathcal T`, define

```math
r_{good}(a,t)
:=
\sup\{r>0:SCF_{base}(Q_r^{\Phi}(a,t))\le\varepsilon_m\}.
```

A cylinder is terminal SCF-good when

```math
SCF_{base}(Q_r^{\Phi}(a,t))\le\varepsilon_m.
```

The averaged jump face is persistent terminal loss of positive SCF-good material scale:

```math
Jump_{avg}(\mathcal T)
\Longleftrightarrow
\forall\text{ terminal subtails }\mathcal T'\subset\mathcal T,
\quad
\inf_{(a,t)\in\mathcal T'} r_{good}(a,t)=0.
```

## Theorem `TGC.A.cover`

```math
\boxed{
\neg Jump_{avg}(\mathcal T)
\Longrightarrow
\exists\mathcal T'\subset\mathcal T,
\exists r_*>0,
\forall(a,t)\in\mathcal T',
\quad
r_{good}(a,t)\ge r_*.
}
```

Consequently, there exist finitely many same-fluid cylinders

```math
Q_{r_j}^{\Phi}(a_j,t_j),
\qquad
1\le j\le J,
```

such that

```math
\mathcal T'
\subset
\bigcup_{j=1}^J Q_{r_j}^{\Phi}(a_j,t_j),
```

and

```math
r_j\ge r_*/4>0,
\qquad
SCF_{base}(Q_{r_j}^{\Phi}(a_j,t_j))\le\varepsilon_m,
\qquad
\operatorname{ovlp}\le\Omega<\infty.
```

## Proof

Assume

```math
\neg Jump_{avg}(\mathcal T).
```

By the definition of `Jump_avg`, there is a terminal subtail `\mathcal T'\subset\mathcal T` with positive lower SCF-good radius:

```math
\inf_{(a,t)\in\mathcal T'} r_{good}(a,t)>0.
```

Choose

```math
r_*:=\frac12\inf_{(a,t)\in\mathcal T'} r_{good}(a,t)>0.
```

Then for every `(a,t)\in\mathcal T'`, the definition of `r_good` gives a radius `s(a,t)>2r_*` with

```math
SCF_{base}(Q_{s(a,t)}^{\Phi}(a,t))\le\varepsilon_m.
```

After shrinking if needed, define

```math
\rho(a,t):=\frac14 s(a,t)\ge r_*/2.
```

The smaller cylinder remains SCF-good by monotonicity of the local packet under restriction:

```math
SCF_{base}(Q_{\rho(a,t)}^{\Phi}(a,t))\le\varepsilon_m.
```

The same-fluid charts are bounded-distortion on the retained terminal tail, so each cylinder `Q_{\rho(a,t)}^{\Phi}(a,t)` contains an open label-time neighborhood of `(a,t)`. These neighborhoods cover the compact terminal subtail `\mathcal T'`. Compactness gives a finite subcover

```math
\mathcal T'
\subset
\bigcup_{j=1}^J Q_{\rho_j}^{\Phi}(a_j,t_j).
```

Set

```math
r_j:=\rho_j,
\qquad
r_j\ge r_*/2>0.
```

If the route demands a standardized shrunken cover, replace each `r_j` by `r_j/2`; then still

```math
r_j\ge r_*/4>0,
\qquad
SCF_{base}(Q_{r_j}^{\Phi}(a_j,t_j))\le\varepsilon_m.
```

The retained pack gauge gives bounded chart distortion.  After the fixed shrink,
the selected family is finite, so its multiplicity is the explicit finite
number

```math
\Omega
:=
\sup_z
\sum_{j=1}^{J}1_{Q_{r_j}^{\Phi}(a_j,t_j)}(z)
\le J
<\infty.
```

When the cover is chosen by a maximal \(r_*/4\)-separated label net, the sharper
packing estimate gives \(\Omega\le \Omega_4(M_\sharp)\).  In either case the
finite overlap bound used downstream is

```math
\operatorname{ovlp}(\{Q_{r_j}^{\Phi}\}_{j=1}^J)\le\Omega<\infty.
```

This proves the finite positive-scale SCF-good terminal cover.

## Scheduler-ready consequence

On every selected cylinder, `ATD_m^\varepsilon` applies on the shrunken cylinder

```math
Q_{\theta_m r_j}^{\Phi}(a_j,t_j),
```

with common lower scale

```math
\rho_*:=\theta_m r_*/4>0.
```

For the finite route parameter set `\mathscr P_{req}`, local `AACT.KX` gives local coefficients `B_{j,p},F_{j,p}\in L^1`. Since `J` and `|\mathscr P_{req}|` are finite, define

```math
B_*:=\sum_{j,p}\mathbf 1_{I_j}B_{j,p},
\qquad
F_*:=\sum_{j,p}\mathbf 1_{I_j}F_{j,p}.
```

Then

```math
B_*,F_*\in L^1([t_0,T_*)).
```

Thus the cover is scheduler-ready for `AACT.Global.noJump`.

## Legal order

This proof uses only:

1. the definition of `Jump_avg`;
2. compactness of the retained terminal subtail;
3. bounded same-fluid pack geometry;
4. monotonicity of SCF-good packets under restriction;
5. finite route parameter set only for the scheduler-ready consequence.

It uses neither `READ.COVER` nor `READ.END` nor pointwise `Field` nor pointwise `DTC.A`. The positive-scale terminal cover produced here is an upstream averaged cover, while `READ.COVER` is the downstream endpoint-readout cover produced after `End_NS_avg`.

## Conclusion

```math
\boxed{
\neg Jump_{avg}(\mathcal T)
\Longrightarrow
\text{finite positive-scale SCF-good same-fluid terminal cover with scheduler-ready }L^1\text{ majorants}.
}
```
