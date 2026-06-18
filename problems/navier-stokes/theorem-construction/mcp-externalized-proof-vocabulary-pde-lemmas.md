# Externalized Proof Vocabulary As Referee-Facing PDE Lemmas

## Status

Closed vocabulary-externalization surface.

## Purpose

This note replaces internal proof names by referee-facing PDE lemma statements.

## Lemma A: terminal good-cylinder cover

Internal name: `Field_avg`.

Referee-facing lemma statement. Let `T` be a bounded-distortion same-fluid terminal approach tail. There is a terminal subtail `T'` and a radius `r_*>0` such that every point of `T'` is the center of a same-fluid parabolic cylinder of radius at least `r_*` on which the scale-critical CKN packet is below `epsilon_m`. Equivalently, `T'` admits a finite positive-scale SCF-good moving-cylinder cover.

Its complementary endpoint face is terminal loss of this positive scale.

## Lemma B: local affine-excess estimate

Internal name: `AACT.KX.local`.

Referee-facing lemma statement. On every SCF-good same-fluid moving cylinder, the affine-subtracted velocity residual satisfies a localized energy inequality

```math
D^+X_R+cN_R\le B_RX_R+C X_R^{1/2}N_R+F_R.
```

On scheduler intervals satisfying the stated smallness conditions, the nonlinear term is absorbed and

```math
X_R\in L^\infty,
\qquad N_R\in L^1,
\qquad \mathcal K_{\le m}^{avg,R}\in L^1.
```

## Lemma C: finite-cover averaged tower control

Internal name: `DTC.A_avg`.

Referee-facing lemma statement. A finite positive-scale family of SCF-good same-fluid moving cylinders, together with the local affine-excess estimate and common scheduler, yields uniform averaged bounds on the transported velocity/forcing tower through depth `N` on the terminal tail.

## Lemma D: averaged endpoint exclusion

Internal name: `End_NS_avg`.

Referee-facing lemma statement. If the averaged class witness persists with closed terminal Part predicates or retained strict response margins, and the terminal averaged faces are supplied with their eliminators, then the averaged terminal endpoint is excluded. Without that Part input, the exact faces are participation failure, response-margin collapse, packing failure, averaged tower-amplitude escape, and loss of positive-scale averaged field cover.

## Lemma E: terminal readout equivalence

Internal name: `READ.END`.

Referee-facing lemma statement. Once the averaged endpoint package gives a finite positive-scale readout cover, the averaged field and averaged tower bounds recover the pointwise field and pointwise transported-center tower bounds on that cover. The recovered pointwise package is exactly the pointwise endpoint-exclusion package used by the continuation argument.

## Dictionary

```text
Field_avg  = terminal positive-scale SCF-good moving-cylinder cover
AACT       = local affine-excess energy estimate
DTC        = transported-center velocity/forcing tower control
End_NS     = pointwise finite-endpoint exclusion package
READ.END   = terminal averaged-to-pointwise readout equivalence
```

## Boundary

The manuscript may use the referee-facing lemma names above and keep the internal symbols only as dependency labels.
