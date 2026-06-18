# AACT.KX scheduler seed and terminal-tail coverage — failed attempt

Target: prove the scheduler restart seed and finite terminal-tail coverage needed by the repaired local `AACT.KX` coefficient-margin lemma.

Local closure from the prior note needs intervals `J_k` with `X_R(s_k) <= eta` and `exp(int_{J_k} B_R)(X_R(s_k)+int_{J_k}F_R) <= 2 eta`.

The finite-coverage portion is conditional on the seed and on an explicit
small-integral scheduler partition.  On a finite retained tail, assume
`B_R,F_R in L^1`, `B_R,F_R>=0`, and choose a finite partition into intervals
`J_k` with

```math
\int_{J_k}B_R\le\log(4/3),
\qquad
\int_{J_k}F_R\le\eta/2.
```

Then any restart time satisfying `X_R(s_k)<=eta` obeys

```math
\exp\!\left(\int_{J_k}B_R\right)
\left(X_R(s_k)+\int_{J_k}F_R\right)
\le2\eta.
```

Thus the scheduler part is paid by `L^1` control plus the seed; the unproved
part remains the production of the fresh small seed `X_R(s_k)<=eta` in the
restart frame.

The obstruction is the seed. Carrying forward the previous interval gives a bounded value of `X_R`; the coefficient-margin lemma needs a fresh small averaged affine-excess value at the restart frame. The current cited route needs an added theorem producing that seed from `SCF_avg^m`, transported-frame minimization, or a finite-cover small-excess selection principle.

Result: finite scheduler coverage is reduced to a restart-seed theorem. Full `AACT.KX` remains open at that seed theorem.
