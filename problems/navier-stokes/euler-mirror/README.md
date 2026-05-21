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
- smooth-data singular-limit bridge to that witness
- Euler / Navier-Stokes viscosity scenario separation map
- fixed-datum classical blowup split: boundary/axisymmetric known externally;
  no-boundary smooth finite-energy remains separate and open
- source-locked contradiction/object note
- class-membership contradiction frontier packet
- regularity-forward-invariance boundary formerly called `CFI.A`
- endpoint vocabulary demotion formerly called `L13`
- optional one-field regularity program formerly called `OFP.A`
- one-field regularity reduction note beneath `OFP.A`
- branch-local Euler receiver support `ELCI.A`

Current theorem-facing order:
- `Member_E -> chosen regularity class -> Euler-native propagation estimate`
- `smooth data -> nonsmooth Euler` must stay typed as singular-limit,
  weak-branch, boundary fixed-datum, or no-boundary fixed-datum before use

Current live obstructions:
- the base membership layer is now `EVol + EMom`; the open theorem work is a
  genuine Euler regularity upgrade over that base
- `ELCI.A` now records the missing Euler replacement for the expanded parent
  `ACT.KX` / `2\nu` absorption and top-viscous readout chain, and the May 21
  scenario map sharpens the live target to `ELCI.CP.A-Separation`: split the
  ledger into regularity-conditional cases where `L^1` can be proved and base
  `Member_E` nonsmooth cases where it is not forced; the expanded comparison cell is
  `ACT.X-Cut + ACT.X-Press + ACT.X-MidRaw + ACT.X-TopVisc => ACT.KX`, followed
  by `ACT.X-Scale + RWS.C_scale -> ACT.X-Readout`
- the positive-control branch still carries explicit Euler gaps in the scale
  barrier, control-functional replacement, and continuation packet
- exact-potential, top-viscous, and static-diffusion packets remain demoted or
  quarantined unless a genuine Euler analogue is written
