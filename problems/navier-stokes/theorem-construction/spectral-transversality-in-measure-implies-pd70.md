# Spectral Transversality In Measure Implies `PD.70`

## Status

Theorem-facing splice note for the exact live `SG.4` bridge on the
Law-2-survivor side.

This note does **not** claim that the theorem below is already discharged. It
records the cleanest direct theorem shape currently visible on the torus-first
TPS route.

## Purpose

The current live obstruction is not another generic coercive estimate. It is a
one-sided selector calibration theorem:

```math
\text{signless pair defect built from }W_J
\Longrightarrow
[\lambda_J-\mathfrak s_J]_+ \text{ one-sided directional deficit}.
```

The direct missing theorem is therefore stated in the language of:

1. spectral/bundle transversality on the coarse expanding plane,
2. pair-gap cocycle exactness or controlled loop defect,
3. selector calibration on the good active family.

YM-heat / deformation geometry remains relevant, but only one layer upstream:
it is required to supply the spectral floor and coherence packet that this direct
selector theorem consumes.

## Route Position

For the current live survivor-side route, the chain is:

```text
torus-first 4-packet
-> derivative tower
-> material-derivative / Lagrangian correction
-> Hopf/shuffle survivor packet
-> pair-defect PDE
-> spectral transversality + pair-gap cocycle control
-> selector calibration (PD.70)
-> SG.4
```

So this note belongs at the exact splice:

```text
pair-defect PDE -> one-sided selector deficit.
```

## Direct Inputs Already On Disk

The best direct geometric supplier is the coarse expanding-plane packet from
`CF-bundle-coercive`:

```math
v^\top P_{N_a}\operatorname{Sym}\nabla u_{\le J}P_{N_a}v
\ge
\big(\Lambda_J-\varepsilon_J^{spec}-2M_J\theta_J^2\big)|v|^2.
\tag{ST.1}
```

This gives the exact coarse strain-side transversality quantity:

```math
\lambda_{2,\le J} \text{ floor}
\quad+\quad
\theta_J^2 \text{ bundle-angle defect}.
```

The best exactness supplier is the active pair-gap cocycle packet:

```math
D_J(t;Q,Q')=-D_J(t;Q',Q),
\qquad
\sum_{e\in\gamma}D_J(t;e)=0
\text{ on closed active cycles.}
\tag{ST.2}
```

This is the right structure for recovering selector labels as derived
potentials rather than primitive scalars.

## Candidate Theorem Shape

### Theorem `PD.70` (minimal source-aligned form)

Let `G_J^{pair,\angle}` be a selector-good active pair family on the torus-first
TPS branch, and let `I=[t_0,t_1]`.

Assume:

1. the coarse expanding-plane packet `(CF.6c)`-`(CF.6j)` supplies the spectral
   floor and bundle-angle losses already peeled off by `CF-bundle-coercive`,
2. the pair-defect PDE supplies the signless defect field `W_J`,
3. the active pair-gap cocycle is exact up to an `L^2` loop residual
   `\operatorname{Err}_J^{loop}`,
4. the selector observation `\mathcal O_J[W_J]` is the observation norm
   extracted from the same active pair-gap packet.

Then there exists a measurable calibration error `\operatorname{Err}_J^{cal}`
such that

```math
\mathfrak d_J^-(a,b,t)
\le
C_{cal}
\mathcal O_J[W_J](a,b,t)
+
\operatorname{Err}_J^{cal}(a,b,t),
\tag{ST.3}
```

and

```math
\int_I\!\!\int_{G_J^{pair,\angle}}
\big(\operatorname{Err}_J^{cal}\big)^2
\le
C_{cal}'
\mathcal E_J^{spec}(I)
+
\mathcal E_J^{bundle}(I)
+
\mathcal E_J^{loop}(I).
\tag{ST.4}
```

Consequently the selector-adapted one-sided defect energy is controlled by the
same residual packet that appears in `PD.70`:

```math
\mathfrak E_{J,2}^{SG}(I)
\le
C_{SG}
\mathcal E_J^{spec}(I)
+
\mathcal E_J^{bundle}(I)
+
\mathcal E_J^{obs}(I),
\tag{ST.5}
```

where `\mathcal E_J^{obs}(I)` is the residual pair-defect observability budget,
and the exact remaining open input is the pairwise closure

```math
\mathcal E_J^{dir}(I)+\mathcal E_J^{loop}(I)
\le
C_{PD}
\mathcal E_J^{obs}(I).
\tag{ST.6}
```

This is the minimal source-aligned selector-calibration theorem on the torus
branch. The Euclidean strict-shadow discharge branch remains separate and is not
part of this splice.

### Corollary `ST.7` (conditional splice to `PD.70` and `SG.4B`)

Assume the theorem above and the residual pairwise closure `(ST.6)`. Then the
selector-defect budget sharpens to

```math
\mathfrak E_{J,2}^{SG}(I)
\le
C_{SG}
\mathcal E_J^{spec}(I)
+
\mathcal E_J^{bundle}(I)
+
\mathcal E_J^{obs}(I).
\tag{ST.7}
```

This is exactly the sharper budget `(PD.70r)` from
[tps-pair-defect-pde-packet.md](/Users/thomasbirnie/Workspace/ToE/Research-Consolidation/problems/navier-stokes/theorem-construction/tps-pair-defect-pde-packet.md).
Hence `(PD.70)`, `(PD.70aa)`, and the refined-good-family extraction of `SG.4B`
follow formally from the installed pair-defect packet.

### Proof

Combine `(ST.5)` with `(ST.6)`. The result is `(ST.7)=(PD.70r)`. The pair-defect
packet then turns that budget into `(PD.70)`, `(PD.70aa)`, and the `SG.4B`
extraction via `TPS-selector-defect-budget` and
`TPS-selector-defect-bridge-to-SG4B`.

On the exact-potential branch `(ST.2)` forces the graph-Hodge harmonic part to
vanish, so `\mathcal E_J^{loop}(I)=0` and `(ST.6)` collapses to the directional
estimate

```math
\mathcal E_J^{dir}(I)\le C_{PD}\mathcal E_J^{obs}(I).
\tag{ST.6a}
```

That collapse is a genuine reduction, not a discharge. A bounded self-attempt
shows the remaining obstruction is now purely directional: the current bridge
packet still leaves the pair-direction defect `\Xi_J` and its reconstruction
energy abstract, so the route has not yet identified a concrete observable map
from the pair-defect packet to `(ST.6a)`. See
[pd70z-cycle-exact-closure-obstruction-note.md](/Users/thomasbirnie/Workspace/ToE/Research-Consolidation/problems/navier-stokes/theorem-construction/pd70z-cycle-exact-closure-obstruction-note.md).

Outside that branch, the loop burden is better read as a harmonic-circulation
observability theorem for the Hodge part `h_J`, rather than as an undifferentiated
error term.

## Why This Is The Right Direct Theorem

This theorem is a better fit than a raw YM-heat or deformation-energy theorem
for the exact live splice because:

1. `SG.4` is an orientation-recovery problem, not just a dissipative-sign
   problem;
2. the pair-defect PDE already gives signless energy, so the missing ingredient
   is directional calibration;
3. the expanding-plane packet is already the lane’s direct transversality
   language;
4. the cocycle/loop packet is already the lane’s direct exactness language.

So the sharp route is:

```text
deformation geometry / YM-heat
-> spectral floor on coarse expanding plane
-> bundle-angle transversality
-> pair-gap cocycle exactness or loop control
-> selector calibration
-> PD.70
-> SG.4.
```

## Anti-Slop Rule

Do **not** restate this burden as “more coercivity” or “more dissipation.”

The live missing theorem is narrower:

```text
convert signless pair defect into one-sided directional selector deficit.
```

Any theorem statement that does not explicitly include:

- expanding-plane / bundle transversality, and
- pair-gap cocycle exactness or loop control

is too weak to count as the direct `PD.70` supplier.

## Consequence For The Route

This shifts the direct theorem frontier to:

```text
spectral transversality in measure + residual pairwise closure (PD.70s).
```

It correspondingly demotes YM-heat/deformation geometry to the upstream role of
manufacturing the spectral floor/coherence packet consumed here.

More precisely, the current exact frontier is branch-sensitive:

```text
cycle-exact branch -> directional observability only;
general Hodge branch -> directional observability + harmonic-circulation observability.
```
