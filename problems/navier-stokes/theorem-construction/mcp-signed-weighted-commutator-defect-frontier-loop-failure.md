# Signed weighted commutator-defect theorem — frontier-loop failure note

## Target

Test the next `Jump_avg` branch-elimination item:

`Signed weighted commutator-defect theorem`.

The theorem must supply the missing flux-source control behind the active-square
Carleson route.

## Sources checked

- `problems/navier-stokes/theorem-construction/signed-weighted-commutator-defect-theorem-attempt.md`
- `problems/navier-stokes/theorem-construction/weighted-signed-shell-exchange-sum-theorem.md`
- `problems/navier-stokes/theorem-construction/signed-weighted-lifted-remainder-theorem-attempt.md`
- `problems/navier-stokes/theorem-construction/flux-source-carleson-bound-result.md`
- `problems/navier-stokes/theorem-construction/monotone-flux-law-active-shell-pulse-attempt.md`

## Result

The target fails from the current MCP-visible surfaces.

The bare separated commutator estimate is vacuous. In the separated geometry, Fourier support forces

`[Delta_j, a_k dot grad] Delta_l u = 0`

for the bare pairwise exchange. This proves only that the bare exchange target is the wrong object.

The real object is the true lifted commutatorized remainder

`R_{j,k,l}^{lift} = 2^{2j} < [Delta_j, a_k dot grad] Delta_l u, Delta_j u >,`

with `l` in the output collar. Its principal paracommutator form is the low/intermediate strain acting on active-shell energy density:

`R_{j,k,l}^{lift,prin} := 2^{2j} < C_j(grad a_k, Delta_j u), Delta_j u >.`

This form has variable sign. Coherent active-shell packets aligned with an expanding strain eigendirection give same-sign positive contributions. Alignment with contracting directions gives the opposite sign. The current weighted route supplies scale orientation; it supplies no strain-eigendirection cancellation theorem.

## Failure audit

The one-sided weights break exact antisymmetry by an order-size mismatch. The outer `2^j` weight turns the mismatch into an order `2^l` defect. Once absolute values enter, the route collapses into the known positive carrier

`sum_k 2^k a_k sum_{l>k+4} D_l,`

and Young's inequality gives the active-square tail burden plus `sum_k D_k`. That burden is exactly the obstruction already recorded by the flux-source and pulse notes.

Therefore the signed weighted theorem is unavailable from current exchange algebra.

## Required next theorem

A valid continuation needs one of the following:

1. a strain-sign cancellation theorem for the true lifted remainder `G_N^{lift,sigma}`;
2. a positive-carrier replacement controlling the active-square envelope;
3. a residual tail estimate strong enough to imply active-square Carleson.

## Superseding MPP Closure

These three continuations are now consolidated in
`mpp-awg-deep-source-frontier-closure-note.md`. Each requires the same
`SOURCE.NO-PULSE.A` primitive: nonlinear shell-flux/source control excluding
source-balanced active pulses. The note is therefore historical obstruction
evidence, not a fresh independent next-target menu.

## Status

`Signed weighted commutator-defect theorem` is a failed loop item. It should not be promoted as a discharge of `Jump_avg branch elimination`.
