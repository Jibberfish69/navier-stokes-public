# Scale-Memory Hardy-Volterra Working Note

## Purpose

This working note preserves the current high-level conclusion from the failed
classical repair routes, the chosen repair target, and the one usable insight
pulled from the ontological example.

The point is not to import ontology into `NS`.
The point is to extract a better category for the live PDE obstruction.

## 1. Common obstruction class

The failed classical routes are not failing for unrelated reasons.
They repeatedly land on the same obstruction class:

```math
\text{an accumulated coarser-scale or lower-frequency tail keeps acting on the active scale as if it were a fresh source.}
```

Equivalently:

```math
\text{lower-prefix / one-sided scale-memory against the active shell.}
```

This is sharper than the looser slogan "uncontrolled high-frequency cascade."
The live burden is one-sided and triangular in scale: coarser scales
accumulate, the active shell is tested against that accumulated prefix, and
dissipation remains local to the active shell.

The local theorem note for this obstruction class is
[one-sided-scale-memory-obstruction-note.md](/Users/thomasbirnie/Documents/Research-Consolidation/problems/navier-stokes/theorem-construction/one-sided-scale-memory-obstruction-note.md).

## 2. Preferred failed route to repair

Among the failed classical routes, the preferred repair target is the
continuum cumulative-tail stress theorem `(CTS)`:

```math
\text{repair `(CTS)` directly}
\quad\Rightarrow\quad
\text{use `(LPAS)` only as the dyadic shadow if direct continuum repair stalls.}
```

Why this route is preferred:

1. it keeps the obstruction in a native continuum two-scale form;
2. it preserves the lower-prefix geometry without premature collapse to the
   harsher dyadic square;
3. it interfaces directly with the far-corona / middle-band route;
4. it is local enough to remain a realistic Body `1` repair target.

By contrast:

- the shell-gain route is already too compressed and asks for a local
  half-derivative miracle;
- the all-scale transfer-inefficiency theorem is a legitimate route broadening
  but is stronger than the local burden and should not be the first repair
  target.

So the live route choice is:

```math
\boxed{
\text{Body 1 repair target: `(CTS)` on the classical surface.}
}
```

## 3. Insight pulled from the ontological example

The usable ontological lesson is not the carrier package.
It is the following method claim:

```text
a refinement defect is a tail, not a new dynamical source.
```

In the ontology, unresolved structure is not automatically treated as a fresh
driver. It is first classified: exact, persistent, or residual/tail. Only the
part that survives the relevant transport/readout remains live.

The parallel PDE insight is:

```math
\text{the accumulated coarser-scale object should not be treated as an ordinary forcing term.}
```

Instead, it should be treated as a one-sided memory object whose live effect
must be extracted as a readout or persistent part, while exact and residual
parts should either die or be absorbed.

This is an insight, not a literal ontology-to-`NS` bridge.

## 4. Route broadening

The broadening is therefore not "use the ontology directly."
It is:

```math
\text{change the category of the object being estimated.}
```

The current Euclidean routes mostly treat the obstruction as:

- an ordinary forcing term,
- a bilinear packet,
- or a symmetric interaction to be estimated by standard square/Schur tools.

The new suggestion is to treat the live obstruction as a one-sided accumulated
primitive in scale.

That points toward:

1. Hardy/Volterra calculus on the scale variable;
2. tent-space / Carleson language as the natural second-stage readout language;
3. lower-triangular operator language as the structural packaging of the same
   ordered interaction.

The recommended order is:

```math
\boxed{
\text{Hardy/Volterra first, tent-space/Carleson second, lower-triangular packaging third.}
}
```

The reason is that the exact far-corona object is already a one-sided primitive
in scale:

```math
T_r
:=
\int_0^{r/c_1}\tau_\ell^{H^1}[u]\,\frac{d\ell}{\ell},
\qquad
r\partial_r T_r = \tau_{r/c_1}^{H^1}[u].
```

So the Volterra language matches the object at birth.

## 5. Current Formalization Target

The current formal move is:

1. write the far-corona / cumulative-tail object as a one-sided Volterra
   primitive on the classical solution;
2. identify exactly where the crude Hardy/Cauchy estimate loses the structure
   and collapses the route to `(CTS)` and then `(LPAS)`;
3. state a replacement theorem in which only the live readout of that primitive
   is estimated against the active dissipation measure.

That exact formalization is recorded in
[volterra-scale-memory-formalization-note.md](/Users/thomasbirnie/Documents/Research-Consolidation/problems/navier-stokes/theorem-construction/volterra-scale-memory-formalization-note.md).

The operator-language continuation of the same route is recorded in
[lower-triangular-scale-memory-formalization-note.md](/Users/thomasbirnie/Documents/Research-Consolidation/problems/navier-stokes/theorem-construction/lower-triangular-scale-memory-formalization-note.md).

The first explicit kill surface for the surviving weighted quotient mode is
recorded in
[persistent-weighted-quotient-kill-note.md](/Users/thomasbirnie/Documents/Research-Consolidation/problems/navier-stokes/theorem-construction/persistent-weighted-quotient-kill-note.md).

The first bounded audit of all three kill routes, and the exact result that
the current signed scale-descent mechanism is one scale derivative short of
killing the affine quotient mode, are recorded in
[persistent-weighted-quotient-kill-routes-audit.md](/Users/thomasbirnie/Documents/Research-Consolidation/problems/navier-stokes/theorem-construction/persistent-weighted-quotient-kill-routes-audit.md)
and
[affine-quotient-kill-from-signed-scale-descent-audit.md](/Users/thomasbirnie/Documents/Research-Consolidation/problems/navier-stokes/theorem-construction/affine-quotient-kill-from-signed-scale-descent-audit.md).

The route-wide synthesis that the failed repairs are successive normal forms of
the same survivor class, and that the four-body circuit is still the live
defect-reduction pipeline rather than dead architecture, is now recorded in
[defect-reduction-tower-and-four-body-recurrence-note.md](/Users/thomasbirnie/Documents/Research-Consolidation/problems/navier-stokes/theorem-construction/defect-reduction-tower-and-four-body-recurrence-note.md).

The stricter terminal comparison now recorded on the live lane is sharper:
the routes currently split into two terminal survivor families rather than one
already-identified terminal class, with three exact bridge obligations between
them. That comparison is recorded in
[two-family-terminal-impasse-note.md](/Users/thomasbirnie/Documents/Research-Consolidation/problems/navier-stokes/theorem-construction/two-family-terminal-impasse-note.md).

The first formal compactness broadening that can actually see moving mesoscopic
bands, rather than only fixed low/high cutoffs, is now recorded in
[relative-band-quotient-compactness-formalization-note.md](/Users/thomasbirnie/Documents/Research-Consolidation/problems/navier-stokes/theorem-construction/relative-band-quotient-compactness-formalization-note.md).

The first concrete route-specific interface showing how quotient compactness of
the affine survivor would actually kill the persistent weighted mode is now
recorded in
[affine-survivor-quotient-compactness-interface-note.md](/Users/thomasbirnie/Documents/Research-Consolidation/problems/navier-stokes/theorem-construction/affine-survivor-quotient-compactness-interface-note.md).

The corresponding brute-force classical derivative reading, organized by
parabolic order rather than by isolated same-order Sobolev levels, is now
recorded in
[parabolic-order-recursion-note.md](/Users/thomasbirnie/Documents/Research-Consolidation/problems/navier-stokes/theorem-construction/parabolic-order-recursion-note.md).

The exact time-order cancellation version of that same brute-force reading is
now recorded in
[time-order-cross-balance-note.md](/Users/thomasbirnie/Documents/Research-Consolidation/problems/navier-stokes/theorem-construction/time-order-cross-balance-note.md).

The explicit substitution-algorithm upgrade of that same time-order reading is
now recorded in
[jet-substitution-and-exponential-closure-note.md](/Users/thomasbirnie/Documents/Research-Consolidation/problems/navier-stokes/theorem-construction/jet-substitution-and-exponential-closure-note.md).

A new parallel spectral direction, lining up the classical local equations, the
ordered tower, the parity split, the Fourier/harmonic picture, and the NC
carrier-floor-leakage packet, is now recorded in
[spectral-carrier-floor-leakage-direction-note.md](/Users/thomasbirnie/Documents/Research-Consolidation/problems/navier-stokes/theorem-construction/spectral-carrier-floor-leakage-direction-note.md).

The base `s=0` classical leakage absorption theorem on that spectral surface is
now recorded in
[classical-spectral-leakage-absorption-proposition.md](/Users/thomasbirnie/Documents/Research-Consolidation/problems/navier-stokes/theorem-construction/classical-spectral-leakage-absorption-proposition.md).

The honest `s=1` / derivative-weighted upgrade of that spectral direction is
now recorded in
[weighted-spectral-carrier-floor-leakage-reduction.md](/Users/thomasbirnie/Documents/Research-Consolidation/problems/navier-stokes/theorem-construction/weighted-spectral-carrier-floor-leakage-reduction.md):
strict low mode, spill, and genuine high-high already align on the upgraded
carrier `\widetilde\Lambda_N^\sharp`, while the only genuinely open weighted
analytic burden remains the lifted packet on `N+M<k<j-4`.

The exact continuous-scale study of that remaining lifted packet is now
recorded in
[lifted-packet-signed-continuous-scale-translation.md](/Users/thomasbirnie/Documents/Research-Consolidation/problems/navier-stokes/theorem-construction/lifted-packet-signed-continuous-scale-translation.md):
keep the dyadic support geometry, but move the theorem object from the shell
sum to the signed commutator density `\mathfrak c_\ell`, then to the upper
boundary term plus middle-band flux, and finally to the far-corona two-scale
density with gap kernel `\ell/r`.

The exact closure program on that signed continuous-scale route is now
recorded in
[signed-continuous-scale-closure-program.md](/Users/thomasbirnie/Documents/Research-Consolidation/problems/navier-stokes/theorem-construction/signed-continuous-scale-closure-program.md):
globalize the signed balance identity on one fixed LP family, treat the upper
boundary and moving-spill pieces as finite-width same-scale theorems, and keep
the real large-gap work on the far-corona `CTS` / `LPAS` surface.

The first exact reduction note for that Step `1` global-LP move is now
recorded in
[global-signed-lp-balance-reduction-note.md](/Users/thomasbirnie/Documents/Research-Consolidation/problems/navier-stokes/theorem-construction/global-signed-lp-balance-reduction-note.md):
with one fixed continuous LP family the signed commutator route is already
globally posed, and the next theorem burden is no longer gluing but the
explicit symbolic rewrite of the transpose/weight channel into
`\nabla_x\cdot J_\ell + \partial_t R_\ell + \mathcal E_\ell`.

The first algebraic move in that closure program is now recorded separately in
[global-signed-lp-balance-identity-note.md](/Users/thomasbirnie/Documents/Research-Consolidation/problems/navier-stokes/theorem-construction/global-signed-lp-balance-identity-note.md):
the signed balance identity should be written globally from one fixed LP family
before any local gluing or cocycle language is treated as theorem-primary.

The same-scale side of that signed route is now packaged in
[same-scale-multiplier-stability-program.md](/Users/thomasbirnie/Documents/Research-Consolidation/problems/navier-stokes/theorem-construction/same-scale-multiplier-stability-program.md):
the upper-boundary packet and the moving-spill family should both be attacked
through one finite-family annular multiplier stability theorem, leaving the
genuine large-gap work only on the far-corona `CTS` / `LPAS` surface.

The far-corona side is now packaged separately in
[far-corona-cts-lpas-execution-program.md](/Users/thomasbirnie/Documents/Research-Consolidation/problems/navier-stokes/theorem-construction/far-corona-cts-lpas-execution-program.md):
the exact continuum debt remains `CTS`, while the dyadic shadow `LPAS` is the
Hardy/Volterra work surface selected by the inherited reduction.

## Working conclusion

The current route choice is therefore:

```math
\boxed{
\text{repair the one-sided scale-memory obstruction on the `(CTS)` surface using Hardy/Volterra language.}
}
```

Alongside that main route, the lane now carries a parallel classical spectral
closure direction:

```math
\boxed{
\text{carrier block + spectral floor + controlled leakage + exact cancellation}
}
```

rewritten directly on the classical Euclidean tail surface.
