# Four-Body Survivor to Selector Readout Dictionary

## Purpose

Record the exact relation between the original classical `4 -> 1` survivor and
the current torus-first selector wall, so the lane does not accidentally treat
`PSJ+`, `PD.70`, or `SG.4` as a replacement program.

In the survivor-equivalence atlas language of
[mpp-survivor-equivalence-atlas-note.md](/Users/thomasbirnie/Workspace/ToE/Research-Consolidation/problems/navier-stokes/theorem-construction/mpp-survivor-equivalence-atlas-note.md),
this note supplies readout-edge compatibility among older four-body and
selector/projective faces. It does not by itself prove that those faces have
already been promoted to the same `Pack / Part / Field` endpoint cell.

The point of this note is narrower and sharper:

```math
\boxed{
\text{the original survivor stays fixed; the current selector/projective objects are its newer readouts.}
}
```

## Source facts already on disk

### 1. The original `4 -> 1` burden is one survivor family

The modernized four-body notes already state that the open lifted remainder in
`Body IV` and the stronger lifted-band theorem needed in `Body I` are two
reformulations of the same packet-level burden. In particular:

```math
\boxed{
\text{Body IV lifted remainder not closed}
\quad\Longleftrightarrow\quad
\text{Body I stronger lifted-band theorem not yet proved.}
}
\tag{FSD.1}
```

and the same open packet should be read through the synchronized faces

```math
\boxed{
\text{tail leakage}
\leftrightarrow
\text{tower flux/debt}
\leftrightarrow
\text{deformation-geometry commutator}.
}
\tag{FSD.2}
```

This is exactly the reading in:

- [defect-reduction-tower-and-four-body-recurrence-note.md](/Users/thomasbirnie/Workspace/ToE/Research-Consolidation/problems/navier-stokes/theorem-construction/defect-reduction-tower-and-four-body-recurrence-note.md)
- [modernized-four-body-schema-torus-tower-geometry.md](/Users/thomasbirnie/Workspace/ToE/Research-Consolidation/problems/navier-stokes/theorem-construction/modernized-four-body-schema-torus-tower-geometry.md)
- [ns-layered-route-graph.md](/Users/thomasbirnie/Workspace/ToE/Research-Consolidation/problems/navier-stokes/theorem-construction/ns-layered-route-graph.md)

### 2. The lane already promotes the live survivor to the selector surface

The layered route map now says the exact live survivor is the `SG.4`
selector-good directional lower-envelope packet, while the older lifted
high-side remainder remains one face of the same obstruction.

Before that selector promotion, the modernized four-body packet already fixes
the `Body III` role. In the original four-body meaning, this is not a sterile
bookkeeping step. It is the physical compactness / extraction argument:

```math
\boxed{
\text{Body III is the compactness / exact-object-production body.}
}
\tag{FSD.2a}
```

Its job is to force the dangerous packet to survive the approximation-to-limit
passage on a real same-surface field rather than disappearing into sequence
artifacts. In the modernized wording this becomes:

```math
u^{(n)}\to u,
\qquad
\mathcal E_{\mathrm{live}}^{(n)}\to \mathcal E_{\mathrm{live}}[u].
\tag{FSD.2b}
```

So Body III is still a physical argument. It is the mechanism that says:

```math
\boxed{
\text{the same survivor must reappear on the exact field after compactness/extraction.}
}
\tag{FSD.2b'}
```

So the correct four-body reading is:

```math
\boxed{
\text{Body I / II / IV expose survivor faces, while Body III is the compactness/extraction passage of that same survivor.}
}
\tag{FSD.2c}
```

So the lane has already moved from the three classical readouts in `(FSD.2)` to
the selector-facing readout

```math
\boxed{
\text{same survivor family}
\rightsquigarrow
\text{SG.4 selector-good directional lower envelope.}
}
\tag{FSD.3}
```

This is not a new theorem program. It is the same survivor seen on the active
torus-first proving surface.

### 3. The pair-defect packet refines the selector face

The pair-defect PDE packet makes one correction that is now decisive.

It says the correct defect variable is **not** `\|W_J\|` by itself, but the
one-sided selector deficit

```math
\eta_J(a,b,t)
:=
\big[\lambda_J(t)-\mathfrak s_J(a,b,t)\big]_+.
\tag{FSD.4}
```

The exact missing bridge is then the selector-calibration theorem

```math
\mathfrak E_{J,2}^{SG}(I)\le \mathfrak F_J^{def}(I),
\tag{FSD.5}
```

with exact remaining pair-defect-side wall

```math
\boxed{
\mathcal E_J^{dir}(I)+\mathcal E_J^{loop}(I)
\le C_{FSD}
\mathcal E_J^{obs}(I).
}
\tag{FSD.6}
```

On the cycle-exact branch this collapses to the directional theorem

```math
\boxed{
\mathcal E_J^{dir}(I)\le C_{FSD}\mathcal E_J^{obs}(I).
}
\tag{FSD.7}
```

So `W_J` is already installed as the signless observable packet that feeds the
selector-adapted readout of the survivor. This is the content of:

- [tps-pair-defect-pde-packet.md](/Users/thomasbirnie/Workspace/ToE/Research-Consolidation/problems/navier-stokes/theorem-construction/tps-pair-defect-pde-packet.md)
- [tps-strong-bridge-sg-lemma-family.md](/Users/thomasbirnie/Workspace/ToE/Research-Consolidation/problems/navier-stokes/theorem-construction/tps-strong-bridge-sg-lemma-family.md)

### 4. The projective packet refines the directional face further

On the exact-potential branch, the projective packet says the remaining
directional defect is already the angular or projector gap

```math
\Xi_J^{ang}(a,b,t)
=
1-\big(e_{ab}(t)\cdot n_J(a,b,t)\big)^2
=
\frac12\big\|P_{ab}(t)-P_{J,\top}^{seg}(a,b,t)\big\|_F^2.
\tag{FSD.8}
```

The exact-potential frontier is then reduced to:

1. pair-to-cocycle synchronization from the signless pair packet into a
   projective projector field;
2. selector-strain compatibility comparing that projector to the top strain
   projector.

In particular, the repo already isolates `PSJ+` as the projective-surrogate
construction from transported pair geometry, with the explicit no-go statement
that projector recovery does **not** follow from `W_J` alone.

So the projective packet does not introduce a new obstruction. It refines the
same selector face from `(FSD.4)`-`(FSD.7)` into its exact-potential geometric
normal form.

Primary surfaces:

- [cycle-exact-projective-synchronization-packet.md](/Users/thomasbirnie/Workspace/ToE/Research-Consolidation/problems/navier-stokes/theorem-construction/cycle-exact-projective-synchronization-packet.md)
- [tps-selector-observability-to-sg4-bridge-proof-attempt.md](/Users/thomasbirnie/Workspace/ToE/Research-Consolidation/problems/navier-stokes/theorem-construction/tps-selector-observability-to-sg4-bridge-proof-attempt.md)

## Proposition

### Proposition FSD.1. The current selector/projective wall is a descendant readout of the original four-body survivor

On the current torus-first theorem-primary stack, the original classical
survivor from the `4 -> 1` return arrow is not replaced by the selector route.
Rather, the current live wall is the same survivor after successive
selector-adapted normal-form reductions:

```math
\boxed{
\text{lifted remainder / Body I leakage}
\leftrightarrow
\text{tower flux/debt}
\xrightarrow{\text{Body III same-surface passage}}
\leftrightarrow
\text{geometry commutator}
\rightsquigarrow
\text{SG.4 lower-envelope face}
\rightsquigarrow
\big[\lambda_J-\mathfrak s_J\big]_+
\rightsquigarrow
\Xi_J
\rightsquigarrow
\frac12\|P_{ab}-P_{J,\top}^{seg}\|_F^2.
}
\tag{FSD.9}
```

The signless pair packet `W_J` is the installed observable carrier for this
selector-side chain; it is not by itself the survivor.

**Proof.**
The four-body recurrence and modernization notes already identify the classical
survivor family `(FSD.1)`-`(FSD.2)` and the Body III carrier passage
`(FSD.2a)`-`(FSD.2c)`. The layered route map promotes that same obstruction to
the `SG.4` selector-good lower-envelope face `(FSD.3)`. The pair-defect packet
then refines the `SG.4` face to the one-sided selector deficit `(FSD.4)` and
the residual pairwise closure `(FSD.6)`-`(FSD.7)`, with `W_J` as the signless
pair observable feeding that reduction. Finally, the exact-potential
projective packet rewrites the same directional face as the angular/projector
defect `(FSD.8)` and isolates `PSJ+` plus selector-strain compatibility as the
remaining theorem slots. This yields the readout chain `(FSD.9)`. ∎

## Important correction

The invariant object is the survivor, not the currently chosen readout.

So the correct lane reading is:

- `SG.4` is the current selector-facing lower-envelope face of the classical
  survivor;
- `Body III` is the physical compactness/extraction passage of that survivor,
  not a separate defect-face;
- `PD.70` / `PD.70s` are the selector-calibration theorems converting the
  signless pair packet into the one-sided selector deficit;
- `PSJ+` is the exact-potential synchronization/readout theorem for that same
  selector face;
- `W_J` is the signless observable carrier, not the defect itself.

This is why `PSJ+` can come **from** the original four-body solution without
being a route reset.

## Honest boundary

This note does **not** prove quantitative contraction of the survivor, nor does
it prove that `W_J` alone determines the projector field. The no-go statement
in the projective packet remains in force.

What this note does prove is narrower and exactly what was missing on disk:

```math
\boxed{
\text{the current }PSJ+/PD.70/SG.4\text{ wall is the selector-adapted descendant of the original }4\to 1\text{ survivor.}
}
\tag{FSD.10}
```
