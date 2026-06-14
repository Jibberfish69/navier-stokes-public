# Nonlinear shell-flux source theorem for active pulses — reduction and obstruction

## Target
Prove a nonlinear shell-flux source theorem ruling out source-balanced active-shell pulses.

This theorem would supply the source side needed for:

`OriginalSmoothData -> active-shell amplitude gain -> scale-normalized nu_SCF Carleson -> Jump_avg eliminated -> PCTP.hard`.

## Shell flux structure
For shell energy

`dE_j + c nu D_j dt <= F_j dt`,

source-balanced active pulses are possible at the scalar level whenever `F_j` matches the pulse. Therefore the proof must use Navier-Stokes structure inside `F_j`.

## Available cancellation
The dyadic exchange identity gives exact antisymmetry for the unweighted exchange:

`<Delta_j(a_k dot grad Delta_l u), Delta_j u> + <Delta_l(a_k dot grad Delta_j u), Delta_l u> = 0`.

After shell weights enter, the surviving source is a weighted exchange defect. Thus the source theorem reduces to a signed weighted commutator-defect theorem.

## Required commutator theorem
A sufficient estimate has the target form

`|<[Delta_j, a_k dot grad] Delta_l u, Delta_j u>| <= 2^{-c(l-j)} 2^{3k/2} ||Delta_k u||_2 D_l`,

together with a summation preserving the barrier reserve.

The existing reduction reaches a conditional endpoint of the form

`sum_j 2^j R_{j,lift}^sigma <= eps sum_k 2^k (D_k^{up,beta})^2 + C_eps sum_{k>N} D_k`.

The residual tail `int sum_{k>N} D_k dt` remains stronger than available first-moment controls.

## Verdict
The nonlinear shell-flux source theorem remains open. It is reduced to two exact subtargets:

1. signed weighted commutator-defect estimate in the separated lifted geometry;
2. residual-tail estimate strong enough to convert the reduction into active-square/Carleson control.

## Consequence
The full downstream `PCTP.hard` chain remains conditionally solved after active-shell amplitude gain. The deepest active source frontier is now the weighted commutator-defect plus residual-tail theorem.
