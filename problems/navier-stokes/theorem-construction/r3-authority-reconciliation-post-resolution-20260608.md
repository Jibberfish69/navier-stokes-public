# R3 Authority Reconciliation After Post-Resolution PDF Reread

Date: 2026-06-08

Status: active PDF/referee blocker, not CMI-final.

## Trigger

The post-resolution CMI criteria pass found a live conflict between the rendered
PDF claim and the installed theorem-state surfaces. The compact paper states a
whole-space `R^3` CM completion route. The expanded bundle and repo theorem
notes still preserve two different authority stories:

- older export-scope surfaces say the final theorem remains periodic unless a
  separate `R^3` export/localization theorem is installed;
- the June 8 exterior-tail CM endpoint note says the surviving whole-space
  exterior source is consumed by Pack, Part, or Field, so the direct positive
  `Tail.Hs_R3` theorem is not required for the CM branch.

This is not a wording-only defect. A CMI referee needs one governing authority
chain for the whole-space branch.

## Checked Surfaces

- `papers/navier-stokes/manuscript/generated/main.tex:470` states
  `Whole-space export reduction`.
- `papers/navier-stokes/manuscript/generated/main.tex:525` states
  `Whole-space CM completion`.
- `problems/navier-stokes/theorem-construction/mpp-r3-exterior-tail-cm-endpoint-consumption-20260608.md`
  promotes the June 8 CM endpoint-consumption route.
- `problems/navier-stokes/theorem-construction/mcp-whole-space-export-decision-standard.md`
  says the final theorem remains periodic unless a separate whole-space theorem
  is installed.
- `problems/navier-stokes/theorem-construction/mcp-whole-space-r3-export-theorem-and-exact-remaining-burden-3744b1be8e.md`
  records the conditional export theorem and exact remaining `R^3` burden.
- `problems/navier-stokes/theorem-construction/mpp-r3-seven-item-tail-branch-resolution.md`
  keeps `Tail.Hs_R3` as the open noncircular whole-space tail theorem.
- `problems/navier-stokes/submission-bundle/source-field-reader-appendix.tex:60501`
  still says a torus-first section does not prove the whole-space `R^3` export
  branch.

## Current Judgment

The June 8 endpoint-consumption note may be the intended supersession of the
older periodic-only/export-conditional boundary, but that supersession is not
yet referee-visible across the installed paper surfaces. The PDFs cannot be
called CMI-final until the paper either:

1. promotes the June 8 `R^3` CM endpoint-consumption route as theorem-grade,
   with its dependency chain stated and all older conflicting export-boundary
   language demoted as historical/support-only; or
2. demotes the rendered theorem claim back to the periodic branch and routes
   `R^3` as a live export/tail-control theorem.

## First Authority Check

The three inputs named by the June 8 endpoint-consumption note do exist:

- `mpp-r3-tail-hs-duhamel-source-reduction-20260607.md` reduces the exterior
  high-order tail to initial ancestry, compact-core far-kernel source, and the
  genuinely exterior nonlinear source. It explicitly says this is not
  whole-space closure.
- `mpp-r3-exterior-source-dyadic-escape-cm-face-20260607.md` turns a surviving
  exterior nonlinear source into high-frequency dyadic escape. Its weak point
  for referee promotion is the bounded-frequency step, which depends on the
  installed exterior `L^2` tightness and low-frequency Duhamel response.
- `mpp-r3-exterior-dyadic-survivor-field-incompatibility-20260607.md` proves
  the retained Pack+Part branch cannot also retain a fixed positive Field scale
  against the dyadic survivor. This is the strongest theorem-grade link in the
  chain.

So the next work is not to silently restore the old `Tail.Hs_R3` positive
theorem as the only target. The next work is to audit the dyadic-escape input,
especially the exterior `L^2`/bounded-frequency response claim, and then either
promote the June 8 CM endpoint-consumption chain into the PDFs or demote the
whole-space claim.

## Next Proof/PDF Work

The next pass should not create another status wrapper. It should work the
authority chain directly:

1. Verify the three installed inputs named by the June 8 endpoint-consumption
   note: Duhamel source reduction, bounded-frequency removal/dyadic escape, and
   retained Pack+Part Field incompatibility.
2. Decide whether those inputs prove the `R^3` whole-space CM branch at Clay
   theorem grade.
3. If yes, rewrite the compact paper and expanded bundle so the `R^3` route is
   one clear theorem chain and older export-conditional surfaces are explicitly
   superseded or support-only.
4. If no, demote the whole-space claim in the PDFs and route the exact live
   theorem burden, most likely `TailFace_R3^Hs` / exterior-source endpoint
   elimination or the noncircular exterior high-order ledger.

This note is the object-level target for `NSPDF-20260608-007`.
