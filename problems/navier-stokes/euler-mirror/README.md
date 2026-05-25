# Euler Mirror Branch

This is the quarantined `chat20` parallel branch for rerunning the installed
Navier-Stokes global-regularity program with viscosity removed, while keeping
Euler membership separate from Euler regularity.

Identity:
- name: `NS 20`
- role: parallel Navier-Stokes execution lane for the incompressible Euler mirror
- purpose: use the live NS proof order as comparison authority while tracking,
  file by file, what survives, what rewrites, and what breaks when
  `\nu \Delta u` is removed

Branch contract:
- define Euler membership natively as `Member_E = EVol + EMom`
- read Euler pressure/incompressibility participation as volume and normal-flux
  compatibility only; it does not supply one-field shear participation
- treat `Pack / Part / Field / Dead / Blown / Jump` as parent-route comparison
  vocabulary or optional regularity labels, not primitive Euler membership
- preserve the parent route labels, including `L13`, `CFI.A`, `OFP.A`, and the
  receiver chain `RSCB.NKF -> NKF.Native -> ACT.KX -> ... -> LCI.A`
- record the current branch-local execution order explicitly when it is refined
  on the Euler mirror
- preserve pressure and incompressibility; use flow-map and same-fluid language
  only after the needed Euler regularity has been supplied
- remove viscosity explicitly rather than silently softening it into generic
  transport language
- keep every viscous, Stokes, heat, and parabolic dependency on a visible ledger
- keep this work quarantined from the live Navier-Stokes authority surfaces unless
  it survives promotion

Current branch-local mainline:
- Euler flux-volume membership definition
- pressure-nonparticipation vortex-sheet witness
- global periodic slip-sheet nonsmoothness bridge for base `Member_E`
- global periodic unbounded-shear receiver-ledger failure bridge for base `Member_E`
- global periodic smooth-layer singular-limit bridge to the slip sheet
- global periodic same-datum weak-branch import
- boundary/axisymmetric smooth-data blowup import
- shared Pack / non-one-field grammar closure
- smooth-data singular-limit bridge to that witness
- Euler / Navier-Stokes viscosity scenario separation map
- Euler-NS smoothness continuum program
- Euler-NS continuum closure ledger and closure theorem
- referee audit ledger: `referee-audit-ledger.yaml` mechanically classifies every
  branch surface as smooth-by-hypothesis, nonsmooth-control, proved-conditional,
  false-base-implication, non-Euler-import, provenance/comparison, or machinery
- fixed-datum classical blowup split: boundary/axisymmetric known externally;
  no-boundary smooth finite-energy is outside this terminal mirror branch
- source-locked contradiction/object note
- class-membership contradiction frontier packet
- regularity-forward-invariance boundary formerly called `CFI.A`
- endpoint vocabulary demotion formerly called `L13`
- optional one-field regularity program formerly called `OFP.A`
- one-field regularity reduction note beneath `OFP.A`
- branch-local Euler receiver support `ELCI.A`

Current theorem-facing order:
- `Member_E -> ESM classification -> Euler-NS continuum program`
- `smooth data -> nonsmooth Euler` stays typed as singular-limit, weak-branch,
  boundary fixed-datum, or no-boundary fixed-datum; it is terminally classified
  on this mirror

Terminal readback:
- [referee-audit-ledger.yaml](/Users/thomasbirnie/Workspace/ToE/Research-Consolidation/problems/navier-stokes/euler-mirror/referee-audit-ledger.yaml)
  is the branch-local readback authority for where Euler is smooth, where it is
  nonsmooth, and where Navier-Stokes viscosity is doing proof work
- its `case_matrix` is the controlling split: `ESM.S*` smooth-by-hypothesis,
  `ESM.C*` conditional Euler-control, `ESM.N*` nonsmooth or false-from-base,
  and `ESM.V*` viscosity-import
- the base membership layer is `EVol + EMom`; smoothness does not follow from it
- `ELCI.A` now records the Euler replacement for the expanded parent `ACT.KX` /
  `2\nu` absorption and top-viscous readout chain as the closed
  `ELCI.CP.A-Separation` split: the ledger is `L^1` under explicit Euler
  regularity/control envelopes, and base `Member_E` does not force it; the
  expanded comparison cell is
  `ACT.X-Cut + ACT.X-Press + ACT.X-MidRaw + ACT.X-TopVisc => ACT.KX`, followed
  by `ACT.X-Scale + RWS.C_scale -> ACT.X-Readout`
- the positive-control branch is terminally conditional at the audit layer:
  extra Euler controls are assumptions or a named theorem surface, and the
  continuum closure records how those rows feed smoothness-overlap work
- exact-potential, top-viscous, static-diffusion, and other parabolic/viscous
  packets are closed here as non-Euler imports
- terminal classification is audit closure, not Euler program shutdown; the
  continuum surface
  [euler-ns-smoothness-continuum-program-20260523.md](/Users/thomasbirnie/Workspace/ToE/Research-Consolidation/problems/navier-stokes/euler-mirror/theorem-construction/euler-ns-smoothness-continuum-program-20260523.md)
  now carries the Euler-only smoothness extraction and nonsmooth
  class-membership boundary program
- [euler-ns-continuum-closure-ledger.yaml](/Users/thomasbirnie/Workspace/ToE/Research-Consolidation/problems/navier-stokes/euler-mirror/euler-ns-continuum-closure-ledger.yaml)
  and
  [euler-ns-continuum-closure-theorem-20260523.md](/Users/thomasbirnie/Workspace/ToE/Research-Consolidation/problems/navier-stokes/euler-mirror/theorem-construction/euler-ns-continuum-closure-theorem-20260523.md)
  close that continuum as route control: smooth-overlap rows, viscosity-divergence
  rows, nonsmooth-boundary rows, and the local/global bridge surfaces are all
  explicitly typed; `ESM.N1` and `ESM.N2` now have global periodic weak-Euler
  nonsmoothness theorems with nonsmooth initial data, and `ESM.N3` has a global
  smooth-layer singular-limit theorem; `ESM.N4` and `ESM.N5` are closed as
  source-typed external weak-branch and boundary-blowup imports; `ESM.N6` is
  closed as the grammar split between shared flux-volume membership and
  one-field regularity
