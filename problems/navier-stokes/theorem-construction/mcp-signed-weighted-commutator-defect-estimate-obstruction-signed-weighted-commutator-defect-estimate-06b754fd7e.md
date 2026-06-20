# Signed weighted commutator-defect estimate — failed discharge and exact replacement target

## Target
Prove the signed weighted commutator-defect estimate needed for the nonlinear shell-flux source theorem.

## Bare commutator test
For the proposed separated estimate

`|<[Delta_j, a_k dot grad] Delta_l u, Delta_j u>| <= 2^{-c(l-j)} 2^{3k/2} ||Delta_k u||_2 D_l`,

with `a_k = Delta_k u` and `j+M < k < l-4`, the Fourier support calculation gives

`Delta_j(a_k dot grad Delta_l u) = 0`

and

`Delta_j Delta_l u = 0`.

Thus the bare commutator vanishes in the declared separated geometry. The displayed estimate is true but vacuous. It does not control the nonlinear shell-flux source.

## True live terminal record
The actual object is the weighted signed lifted remainder created after the one-sided shell weights, projector/cutoff reductions, and lifted summation:

`G_N^{lift,sigma} = sum_{j,k,l} W_{j,l}^{sigma} R_{j,k,l}^{lift}`.

The leading form is a commutatorized strain interaction:

`R_{j,k,l}^{lift} := 2^{2j} < C_j(grad a_k, Delta_j u), Delta_j u >`.

This term has variable sign. Coherent packets aligned with expanding strain directions can make same-sign positive contributions, while contracting directions contribute the opposite sign. The current route supplies shell orientation weights, but no strain-eigendirection cancellation theorem.

## Failure of absolute-value route
Taking absolute values before summation collapses the route to the known positive carrier:

`sum_k 2^k a_k sum_{l>k+4} D_l`,

and Young's inequality produces the active-square tail burden plus a residual `sum_k D_k`. This is exactly the obstruction in the flux-source and active-square notes.

## Verdict
The signed weighted commutator-defect theorem is not discharged by the current surfaces. The bare commutator estimate is vacuous; the true lifted signed remainder requires an additional cancellation theorem.

## Exact replacement theorem
Prove one of:

1. strain-sign cancellation for the true lifted weighted remainder `G_N^{lift,sigma}`;
2. a positive-carrier active-square replacement;
3. a residual-tail estimate strong enough to close the active-square Carleson route.
