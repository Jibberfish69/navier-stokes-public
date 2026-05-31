# Navier-Stokes PDF Rebuild Workplan: Branch Sections To CM-Exit Resolution

Status: active working plan.
Date created: 2026-05-30.
Source: Thomas Birnie corrected authorial direction.
Target artifact: final Clay-facing Navier-Stokes PDF / TeX manuscript.

## Governing Direction

The paper should be rebuilt around independent branch sections rather than strict chronology. The historical development matters, but the main ordering should serve mathematical readability.

The governing proof method is the CM-exit contrapositive program. The four-body route is a motivating example and diagnostic exercise showing how positive-forward smoothness attempts generate persistent terminal obstruction objects.

The appendix source `proof-attempt-failure-appendix.tex` is a compressed source reservoir. It should be mined, verified, curated, and rewritten into human-authored sections.

## Main Rebuild Principle

Each major branch gets its own section or chapter. Each branch section follows one path in depth and ends by applying the CM-exit method to the branch's terminal obstruction.

Required section pattern:

1. Branch question.
2. Why the branch looked promising.
3. Formal setup.
4. Attempted positive-forward payment.
5. Main calculation.
6. Terminal stops along the path.
7. Surviving defect, tail, residue, or witness object.
8. Reason positive-forward closure stalls.
9. CM-exit classification: Pack, Part, Field, continuation readout, scope boundary, or unresolved support.
10. Branch conclusion inside the global CM-exit program.

## Proposed Top-Level PDF Shape

### Front matter

- Formal abstract.
- Table of contents.
- Scope statement: periodic branch, whole-space export boundary, and branch-local claims.

### Part I: Why positive-forward closure produces terminal objects

Purpose: motivate CM-exit without making four-body the governing route.

Candidate sections:

1. The positive-forward smoothness standard.
2. The four-body circuit as diagnostic exercise.
3. Energy/enstrophy and the source obstruction.
4. Scale barrier and tail transfer obstruction.
5. Compactness and exact-object capture obstruction.
6. Gradient/curvature/recovery obstruction.

### Part II: Branch-by-branch obstruction map

Purpose: one branch family per section, with full derivation and branch-specific stops.

Candidate branch sections:

1. Four-body circuit branch.
2. Scale barrier / high-frequency tail branch.
3. Enstrophy / source-reserve branch.
4. Compactness / exact-object branch.
5. Curvature, deformation, or gradient recovery branch.
6. Lower-prefix / upper-tail survivor branch.
7. Kernelized lifted-band branch.
8. Shell gain and half-derivative branch.
9. LPAS / cumulative tail stress branch.
10. Volterra / lower-triangular memory branch.
11. Signed-pair / no-free-sink branch.
12. Pressure / vortex-stretching sustain branch.
13. Local-critical / endpoint branch.
14. Torus branch.
15. Whole-space export branch.

### Part III: CM-exit method

Purpose: introduce the silver-standard method after the obstruction landscape is motivated.

Sections:

1. From survivor deletion to witness classification.
2. Same-solution terminal witness.
3. Working class object \(\mathfrak O_{\NS}^{\mathrm{work}}\).
4. Membership and exit: \(\Exit(Q;\mathfrak O_{\NS}^{\mathrm{work}})=\neg\Member(Q;\mathfrak O_{\NS}^{\mathrm{work}})\).
5. Pack service.
6. Part service.
7. Field service.
8. No-third-branch law.

### Part IV: Re-reading every branch under CM-exit

Purpose: turn every positive-forward obstruction into a branch-local CM-exit analysis.

Each section should reuse the same branch pattern:

- terminal obstruction selected;
- CM-test admissibility checked;
- first failed service identified;
- positive branch read as continuation;
- fail branch read as exit;
- unresolved support explicitly parked.

### Part V: Assembly and Clay-facing boundary

Purpose: collect branch results, state the final claim boundary, and record what belongs to periodic scope, whole-space export, support, or debt.

Sections:

1. Global CM-exit ledger.
2. Periodic branch result.
3. Whole-space export boundary.
4. Reopening tests.
5. Final theorem statement.

## Immediate PDF Work Items

### Work item 1: Reframe the abstract

The abstract should remain formal, but it should avoid making Pack/Part/Field feel unmotivated. It should announce the proof polarity and the terminal-witness idea, then name Pack/Part/Field as the classification grammar after one explanatory sentence.

### Work item 2: Replace the current first body sequence

The current body sequence begins with original problem statement, gold-standard route, and enstrophy obstruction. The next major draft should open with a short scope/problem section, then move directly into the positive-forward proof standard and the four-body diagnostic exercise.

### Work item 3: Promote curated branch content from the compressed appendix

Use `proof-attempt-failure-appendix.tex` as a source reservoir. Extract one branch at a time. Rewrite each branch into the section pattern above. Preserve mathematical calculations while replacing compressed route-summary language with human-readable exposition.

### Work item 4: Build the branch inventory table

Create a table with columns:

- branch;
- positive aim;
- key calculation;
- terminal obstruction;
- survivor object;
- CM role;
- scope status.

This table guides the PDF rebuild and prevents raw archive dumping.

### Work item 5: Draft the first branch section

Start with the four-body diagnostic branch because it is the clearest example of the positive-forward failure pattern. The section should explicitly state that four-body is motivational/diagnostic, not the governing route.

## First Draft Target

Create a new TeX staging file for the first rebuilt body section:

`problems/navier-stokes/submission-bundle/sections/rebuilt-positive-forward-and-four-body-diagnostic.tex`

The staging file should contain:

1. A scope paragraph.
2. The positive-forward proof standard.
3. The four-body diagnostic circuit.
4. The failure mode: circular payment/debt among the four bodies.
5. The survivor/residue produced by the diagnostic exercise.
6. The handoff sentence to CM-exit, without fully introducing Pack/Part/Field yet.

## Worklog

- 2026-05-30: Saved corrected authorial direction.
- 2026-05-30: Created branch-section PDF rebuild plan.

---

## Worklog Update: Maximized Staging Pass

Date: 2026-05-31.

Created additional PDF rebuild staging surfaces:

1. `problems/navier-stokes/submission-bundle/pdf-rebuild-branch-inventory-20260530.md`
   - Branch inventory and section-control map.

2. `problems/navier-stokes/submission-bundle/sections/rebuilt-front-matter-and-scope.tex`
   - Rebuilt abstract draft and scope/proof-polarity section.

3. `problems/navier-stokes/submission-bundle/sections/rebuilt-energy-enstrophy-source-branch.tex`
   - Energy, enstrophy, and source-reserve branch.

4. `problems/navier-stokes/submission-bundle/sections/rebuilt-scale-barrier-tail-branch.tex`
   - Scale barrier and high-frequency tail branch.

5. `problems/navier-stokes/submission-bundle/sections/rebuilt-compactness-exact-object-branch.tex`
   - Compactness and exact-object capture branch.

6. `problems/navier-stokes/submission-bundle/sections/rebuilt-recovery-surface-fidelity-branch.tex`
   - Derivative recovery and surface-fidelity branch.

7. `problems/navier-stokes/submission-bundle/sections/rebuilt-cm-exit-method.tex`
   - Central class-membership exit method section.

8. `problems/navier-stokes/submission-bundle/rebuilt-main-staging.tex`
   - Standalone rebuilt TeX staging master assembling the new sections.

Current staging structure:

```text
rebuilt-main-staging.tex
  -> rebuilt-front-matter-and-scope.tex
  -> rebuilt-positive-forward-and-four-body-diagnostic.tex
  -> rebuilt-energy-enstrophy-source-branch.tex
  -> rebuilt-scale-barrier-tail-branch.tex
  -> rebuilt-compactness-exact-object-branch.tex
  -> rebuilt-recovery-surface-fidelity-branch.tex
  -> rebuilt-cm-exit-method.tex
```

Next section queue:

1. lower-prefix / upper-tail survivor branch;
2. kernelized lifted-band branch;
3. shell gain / half-derivative branch;
4. LPAS / cumulative tail stress branch;
5. Volterra / lower-triangular memory branch;
6. signed-pair / no-free-sink branch;
7. pressure / vortex-sustain branch;
8. no-pulse / source-wall branch;
9. local-critical / endpoint branch;
10. torus branch;
11. whole-space export branch.

Next build actions:

1. Run a TeX build check on `rebuilt-main-staging.tex`.
2. Fix any syntax or package issues.
3. Begin converting the compressed appendix branch records into the next staged sections.
4. Add a branch-status ledger table inside the rebuilt master after the first full section set is complete.
5. Compare the rebuilt staging master against the current submission PDF and decide which existing sections should be replaced, preserved, or moved to appendix.