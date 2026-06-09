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

The June 8 endpoint-consumption route is the governing authority for the
CM-facing whole-space branch after this pass. The older periodic-only and
export-conditional surfaces remain correct only for the stronger positive
`Tail.Hs_R3` theorem and for historical export-route hygiene. They are no
longer a blocker to the CM pass-or-exit conclusion by themselves.

The needed proof payment was the bounded-frequency step in the dyadic-escape
input. That note now records the fixed-band estimate explicitly:
the exterior source is small in `L^1_t L^{3/2}_x` by the energy-class
interpolation `u in L^4_t L^3_x`; fixed low-frequency Bernstein and the
heat/Leray multiplier send this smallness to the low-frequency `L^2`, hence
`H^s`, response. This pays the step without global `H^s`, BKM, or a
continuation-grade Lipschitz integral.

The PDF repair target is therefore promotion and synchronization, not demotion:
the compact paper, human bundle, and source-field appendix must state the same
chain and must not leave the old direct-tail obstruction as a live veto on the
CM branch.

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

## Resolution Work

The authority chain now has this shape:

1. `mpp-r3-tail-hs-duhamel-source-reduction-20260607.md` removes the initial
   heat tail and compact-core far-kernel source.
2. `mpp-r3-exterior-source-dyadic-escape-cm-face-20260607.md` removes bounded
   exterior frequencies by the fixed-band `L^1_tL^{3/2}_x -> L^2_x` Duhamel
   estimate and forces any survivor to dyadic scale.
3. `mpp-r3-exterior-dyadic-survivor-field-incompatibility-20260607.md` proves
   that a dyadic survivor with retained Pack and Part cannot retain a fixed
   positive Field scale.
4. `mpp-r3-exterior-tail-cm-endpoint-consumption-20260608.md` consumes the
   resulting branch into Pack, Part, or Field and leaves direct `Tail.Hs_R3`
   as a stronger optional positive theorem.

The remaining work for `NSPDF-20260608-007` is manuscript synchronization and
fresh reread, not theorem selection.

This note is the object-level target for `NSPDF-20260608-007`.
