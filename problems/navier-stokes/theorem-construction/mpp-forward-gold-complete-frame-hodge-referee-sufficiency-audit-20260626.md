---
title: "Forward Gold Complete-Frame Hodge Referee Sufficiency Audit"
date: 2026-06-26
status: referee-audit-blocked-until-exhaustiveness-synchronized
source_anchor: problems/navier-stokes/theorem-construction/mpp-forward-gold-full-clock-closure-complete-frame-hodge-assembly-20260625.md
live_edge_anchor: problems/navier-stokes/live-theorem-edge.yaml
manuscript_anchor: problems/navier-stokes/submission-bundle/navier-stokes-submission.tex
referee_surfaces:
  - problems/navier-stokes/auto-audit.yaml
  - problems/navier-stokes/cm-contrapositive-referee-audit.yaml
  - problems/navier-stokes/dependency-audit.yaml
  - problems/navier-stokes/gap-audit.yaml
  - problems/navier-stokes/circularity-audit.yaml
---

# Forward Gold Complete-Frame Hodge Referee Sufficiency Audit

## Referee Question

The question is not whether the annular route explains the motivating terminal
pulse.  One physical picture covering one family of examples is not a proof of
smoothness.

The referee question is:

\[
\text{Does the complete-frame same-material clock cover every terminal
concentration mechanism of the original solution?}
\]

The annular route is sufficient only after it is proved to be the outer
same-fluid stress/strain projection of the terminal concentration mechanism
inside the full pressure--viscosity--incompressibility--velocity participation
law.

## Checked Surface State

The current live edge contains a closure entry:

\[
\texttt{gold-full-material-clock-closed-complete-frame-hodge-assembly}.
\]

That entry cites

\[
\texttt{mpp-forward-gold-full-clock-closure-complete-frame-hodge-assembly-20260625.md}.
\]

The older automated referee surfaces are not synchronized with that closure.
The current `auto-audit.yaml` still reports:

\[
\texttt{theorem-open-at-direct-live-frontier}
\]

and keeps route branches quarantined, including the scale-uniform annular
supplier branch.  The CM referee audit still records the older Gold path as
audited to the terminal time-face/new-production obstruction while accepting
the Silver CM contrapositive path.

The active manuscript also contained live text saying that
\(\mathrm{TerminalTimeFaceAntiAtom.A}\) or
\(\mathrm{TerminalNewProductionTheorem}_{B_{\mathrm{ASAC}}}\mathrm{.A}\)
remained open.  The front matter has now been downgraded to a conditional
Gold-route statement pending the exhaustiveness audit.

Therefore the repo does not currently have a clean referee-certified victory
state.  It has a live-edge closure claim plus stale or conflicting referee and
manuscript surfaces.

## Exhaustiveness Criterion

The annular route becomes a proof only if the following implication is installed
for the original smooth solution:

\[
\text{finite terminal concentration}
\Longrightarrow
\text{same-material full-clock charge}
\]

with the clock charge measured by the complete-frame graph-compatible PLS
ledger, not by a detached center pulse, pressure-only clock, viscosity-only
drain, or example-specific annular model.

Equivalently, every terminal concentration must fall into one of these already
covered readings:

1. spatial point hiding is excluded by the spatial coercivity/radius argument;
2. a center endpoint defect is the projection of the same-fluid annular
   stress/strain history;
3. pressure/collar motion is read through the moving material Hodge projector
   and Schur normal defect, not through a free pressure source;
4. primitive positive pump is read on the complete retained frame
   \((p,\widehat\xi,n)\), so trace-free strain sends it into transverse
   wave-covector or annular/collar compression;
5. all of those transverse records are components of the same full PLS clock;
6. finite full PLS clock gives terminal no-atom, finite material record, fixed
   \(H^s\) continuation, and restart.

This is an exhaustive proof shape.  The annular idea alone is not.

## Current Referee Verdict

The current verdict is:

\[
\textbf{not referee-certified as solved yet.}
\]

The live-edge closure note may be the candidate proof of the missing
exhaustiveness implication, but the automated referee surfaces and active
manuscript have not been synchronized around that claim.

The next audit-hardening work must do two things before any victory claim:

1. check that every support anchor in the complete-frame Hodge closure is a
   proof or a valid conditional whose hypotheses are supplied, not a failed
   attempt promoted by naming;
2. remove or explicitly supersede active manuscript and audit surfaces that
   still describe the Gold route as open at
   \(\mathrm{TerminalTimeFaceAntiAtom.A}\) /
   \(\mathrm{TerminalNewProductionTheorem}_{B_{\mathrm{ASAC}}}\mathrm{.A}\).

Only after those two checks pass can the route be described as an exhaustive
smoothness proof rather than a candidate closure assembly.
