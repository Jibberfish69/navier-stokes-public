# AACT.KX scheduler seed and terminal-tail coverage — failed attempt

Target: prove the scheduler restart seed and finite terminal-tail coverage needed by the repaired local `AACT.KX` coefficient-margin lemma.

Local closure from the prior note needs intervals `J_k` with `X_R(s_k) <= eta` and `exp(int_{J_k} B_R)(X_R(s_k)+int_{J_k}F_R) <= 2 eta`.

The finite-coverage portion is formal once the seed exists: integrability of `B_R` and `F_R` on a finite retained tail gives a finite partition with small Gronwall packets.

The obstruction is the seed. Carrying forward the previous interval gives a bounded value of `X_R`; the coefficient-margin lemma needs a fresh small averaged affine-excess value at the restart frame. The current cited route needs an added theorem producing that seed from `SCF_avg^m`, transported-frame minimization, or a finite-cover small-excess selection principle.

Result: finite scheduler coverage is reduced to a restart-seed theorem. Full `AACT.KX` remains open at that seed theorem.
