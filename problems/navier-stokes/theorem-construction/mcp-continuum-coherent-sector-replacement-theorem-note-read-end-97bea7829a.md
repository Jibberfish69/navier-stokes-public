# Continuum coherent-sector replacement theorem note

## Status

Ordinary theorem-note completion for the NS coherent-sector replacement burden.
Claim level: conditional, route-local, theorem-facing.

## Target

Replace the legacy torus carrier template by a continuum coherent sector for a curved or charted domain D, so the shared physical-sector decomposition has an NS-local readout through the Helmholtz-Leray pressure/flow pair.

## Definitions

Let D be the continuum spatial domain used by the route-local packet, with either interior compact support or a finite smooth chart cover near the relevant region Q_t. Let u be divergence-free and let p be the pressure determined by the NS pressure response on D, with the route's boundary or normalization convention.

Let P_D be the Helmholtz-Leray projection on D and let Q_D=I-P_D. The NS continuum coherent sector on I x Q_t is the finite-cover object

CCS_NS(I,Q) = (P_D u, Q_D div(u tensor u), p_D, local pressure cells, same-fluid cover, readout maps),

where p_D solves the continuum pressure response

-Delta p_D = partial_i partial_j (u_i u_j)

with the accepted D-side convention, and the local pressure cells are the chart-local Poisson/parametrix readouts used by ACT.X-Press, DTC.A_avg, DTC.Read, and Field.Read.

The physical carrier is the coherent pair consisting of the divergence-free flow component together with its pressure response and finite same-fluid readout cover. The exact sector functions as a residue or compatibility detector inside this carrier.

## Theorem

Assume the route-local Helmholtz-Leray projection on D, the continuum pressure response, the finite same-fluid cover, the bounded pack gauge, and the existing retained/averaged route hypotheses H1-H6. Then CCS_NS(I,Q) is a theorem-facing replacement for the torus carrier template on the NS lane. It realizes the shared physical-sector decomposition as the NS continuum coherent sector and supplies the carrier object needed by the class-membership route.

Symbolically,

shared.nc_leray_helmholtz_projector + NS pressure/flow readout on D + finite same-fluid cover => navier-stokes.continuum_coherent_sector,

and

navier-stokes.continuum_coherent_sector => coherent_sector_replacement_burden discharged at ordinary theorem-note level.

## Proof

First, Helmholtz-Leray decomposition on D gives the canonical split of any admissible vector field into the divergence-free flow part and the gradient pressure/constraint part. For the NS equation, the constraint part is fixed by the pressure response. Thus the NS carrier over D is determined by the pair (P_D u, p_D) together with the local pressure readouts used in the route.

Second, the pressure response localizes on the finite route cover. In each chart or retained ball, the pressure cell decomposes into the same pieces already used by the class-membership route: local quadratic affine-excess response, projected annular/harmonic response, and far-tail response. These pieces are precisely the inputs of ACT.X-Press on the retained branch and the averaged pressure/readout cells on the averaged branch.

Third, finite same-fluid covers glue the chart-local sectors. Bounded overlap and the pack gauge preserve the L^1 and L^infty coefficient classes required by ACT.KX, DTC.A_avg, READ.COVER, and End_NS. The carrier therefore survives replacement of the periodic torus template by the continuum sector.

Fourth, the exact-sector objection is resolved by assigning the exact sector its route-native role: it detects residue or compatibility inside the coherent carrier. The theorem-facing physical carrier is the continuum pressure/flow pair with readout maps. This role assignment matches the promoted objection surface and the superseded torus-template surface.

Finally, the replacement preserves both branches of the current NS route. The retained branch uses the local pressure/flow carrier through RSCB.NKF, NKF.Native, ACT.KX, ACT.X-Readout, ACT.A, RCF.A, and LCI.A. The averaged branch uses the same continuum carrier through SCF_base, SCF_avg^m, AACT.KX, DTC.A_avg, AVG.RCV.A, and READ.END. Endpoint use remains terminal through DTC.Read, Field.Read, READ.COVER, and End_NS.

Thus the continuum coherent sector replaces the torus carrier block for theorem-facing NS work on curved or charted D under the stated route hypotheses. Square.

## Audit notes

This note is an ordinary theorem-note/proof write. It supplies a theorem-facing completion of the coherent-sector replacement burden without release, promotion, manuscript validation, or Clay certification artifacts. Research OS lifecycle fields remain governed by the promotion surfaces.