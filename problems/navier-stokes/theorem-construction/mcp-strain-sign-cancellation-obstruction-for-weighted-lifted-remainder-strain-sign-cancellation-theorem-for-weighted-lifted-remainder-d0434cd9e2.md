# Strain-sign cancellation for the weighted lifted remainder — failed discharge

## Target
Prove strain-sign cancellation for the true weighted lifted remainder in the shell-flux route.

The live object is not the bare separated commutator, which vanishes by Fourier support. The live object is the weighted lifted remainder after one-sided shell weights and projector/cutoff reductions:

`G_N^{lift,sigma} = sum W_{j,l}^{sigma} R_{j,k,l}^{lift}`.

A sufficient theorem would show signed cancellation before absolute values, for example

`int_0^T G_N^{lift,sigma}(t) dt <= C 2^{-2 delta N}`.

## Attempt
The principal lifted term is a strain interaction of the form

`R_{j,k,l}^{lift,prin} := 2^{2j}<C_j(grad a_k, Delta_j u), Delta_j u>`.

This term is sign-indefinite. Positive contributions occur when active-shell packets align with expanding strain eigendirections. Negative contributions occur in contracting directions. One-sided shell weights orient the scale sum, but they do not impose eigendirection cancellation.

The unweighted dyadic exchange identity cancels paired shell exchange exactly. After weights enter, the cancellation leaves an order-size mismatch and a true weighted defect. Current surfaces provide no theorem forcing that defect to oscillate, decorrelate, or cancel across active terminal packets.

## Verdict
The strain-sign cancellation theorem is not discharged from current surfaces.

## Exact missing input
A valid proof needs one of:

1. an eigendirection decorrelation theorem for active packets;
2. a signed measure cancellation theorem for `G_N^{lift,sigma}`;
3. a structural identity converting the weighted lifted remainder into a nonpositive or exact-divergence term;
4. replacement by a positive-carrier route with active-square residual-tail control.

## Consequence
The nonlinear shell-flux/source frontier remains open. The remaining supplied route is active-square residual-tail control.

## Superseding MPP Closure

The active-square residual-tail route is now audited in
`mpp-awg-deep-source-frontier-closure-note.md`. It is not a separate installed
escape from the strain-sign obstruction; it is equivalent at this route level
to `SOURCE.NO-PULSE.A`, the no-pulse nonlinear shell-flux/source theorem.
