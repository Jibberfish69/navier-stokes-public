# TerminalDefectLiouville.A external Liouville audit

## Status

External-idea audit for the remaining rigidity wall in the direct
`READ.COVER` bypass route.

Verdict:

```math
\boxed{
\text{Known Liouville tools do not close }TerminalDefectLiouville.measure.A
\text{ for the broad extracted object.}
}
```

The extracted object from the current route is only:

```math
\text{retained ancient local suitable tangent}
+
\text{nonzero terminal SCF defect measure}.
```

That is weaker than the hypotheses in the usable external Liouville theorems.

## Checked external anchors

1. Koch--Nadirashvili--Seregin--Sverak, `Liouville theorems for the
   Navier-Stokes equations and applications`, arXiv:0709.3599.

   The paper studies bounded ancient Navier-Stokes solutions.  Its abstract
   says the general three-dimensional problem is beyond the available
   techniques, with partial results in axisymmetric settings.

   Link: <https://arxiv.org/abs/0709.3599>

2. Albritton--Barker, `On local Type I singularities of the Navier-Stokes
   equations and Liouville theorems`, arXiv:1811.00502.

   The route produces Liouville conclusions under Type I / mild bounded ancient
   structure and an additional `L^3`-type backward-time condition.  Those are
   not outputs of the present `TerminalBadScaleExtraction.A` packet.

   Link: <https://arxiv.org/abs/1811.00502>

3. Koch--Nadirashvili--Seregin--Sverak also emphasize in the singularity
   application section that producing a nonzero bounded ancient solution is
   not itself contradictory; one must add a scale-invariant exclusion or a
   Liouville theorem for the produced class.

   PDF: <https://www-users.cse.umn.edu/~sverak/publications/liouville.pdf>

## Consequence for the bypass route

The current route cannot lawfully insert an unlicensed theorem of the form

```math
\text{ancient local suitable tangent}
+
\text{nonzero local defect measure}
\Longrightarrow
\bot.
```

Such a statement would be stronger than the located external Liouville
technology and is not installed in the repo.

The Liouville target must first produce one of the rigid classes below:

```math
\text{bounded ancient mild},
\qquad
\text{Type I decay},
\qquad
L^3\text{ backward-time control},
\qquad
\text{axisymmetry or lower-dimensional reduction},
\qquad
\text{finite global ancient energy plus a valid exclusion theorem}.
```

## Route-local replacement target

The strongest honest target is therefore:

```math
RigidClassProduction.A:
\quad
\text{retained ancient local suitable tangent}
+
\nu_*^{SCF}\ne0
\Longrightarrow
\mathcal R_*,
```

where `\mathcal R_*` is one of the rigid classes covered by an available
Liouville theorem.  Then prove

```math
Liouville(\mathcal R_*):
\quad
\mathcal R_*+\nu_*^{SCF}\ne0\Longrightarrow\bot.
```

Equivalently, the terminal route is now:

```math
TerminalBadScaleExtraction.A
+
SCFCarrierUpperEnvelope(Q_2^-)
+
RigidClassProduction.A
+
Liouville(\mathcal R_*)
\Longrightarrow
GoodScaleNonCollapse_{1/2}.A.
```

## Remaining live target

The exact surviving theorem target is not generic compactness and not finite
cover extraction.  The broad form is:

```math
\boxed{
RigidClassProduction.A
\text{ for the extracted terminal SCF-defect tangent.}
}
```

The route-local first-pulse reduction in
`mpp-read-cover-bypass-first-pulse-reduction-20260505.md`, together with the
direct temporal-integrability attempt, sharpens that to the existing
source-wall primitive:

```math
\boxed{
SquareReserveEvolution.A
\quad\text{or equivalently scale-normalized }\nu_{SCF}\text{ Carleson control.}
}
```

Without this carrier theorem, `RigidClassProduction.A` and
`TerminalDefectLiouville.measure.A` remain open Clay-strength assertions for
the broad extracted SCF-defect tangent.
