# Euler Mirror Branch

This is the quarantined `chat20` parallel branch for rerunning the installed
Navier-Stokes global-regularity program with viscosity removed, including both
the class-membership route and the positive-control scaffold.

Identity:
- name: `NS 20`
- role: parallel Navier-Stokes execution lane for the incompressible Euler mirror
- purpose: preserve the live NS proof order and vocabulary while tracking, file by
  file, what survives, what rewrites, and what breaks when `\nu \Delta u` is
  removed

Branch contract:
- preserve the exact `Pack / Part / Field / Dead / Blown / Jump` ontology
- preserve the parent route labels `L13 -> CFI.A -> OFP.A -> LCI.A`
- record the current branch-local execution order explicitly when it is refined
  on the Euler mirror
- preserve pressure, incompressibility, flow-map, and same-fluid language
- remove viscosity explicitly rather than silently softening it into generic
  transport language
- keep every viscous, Stokes, heat, and parabolic dependency on a visible ledger
- keep this work quarantined from the live Navier-Stokes authority surfaces unless
  it survives promotion

Current branch-local mainline:
- source-locked contradiction/object note
- class-membership contradiction frontier packet
- class-membership forward-invariance theorem program `CFI.A`
- surviving endpoint-exclusion program `L13`
- one-field forward-preservation theorem program `OFP.A`
- one-field reduction note beneath `OFP.A`
- branch-local Euler receiver replacement `ELCI.A`

Current theorem-facing contradiction order:
- `ECFI -> EL13 -> EOFR/EOFP -> ELCI`

Current live obstructions:
- `ELCI.A` now records the first literal missing `2\nu` absorption step on the
  contradiction route instead of leaving the parent `LCI.A` wall implicit
- the positive-control branch still carries explicit Euler gaps in the scale
  barrier, control-functional replacement, and continuation packet
- exact-potential, top-viscous, and static-diffusion packets remain demoted or
  quarantined unless a genuine Euler analogue is written
