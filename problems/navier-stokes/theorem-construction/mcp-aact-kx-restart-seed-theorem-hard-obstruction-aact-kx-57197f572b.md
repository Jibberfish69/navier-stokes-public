# AACT.KX restart-seed theorem — hard obstruction record

Target: prove the small restart seed needed by repaired local `AACT.KX`.

The required seed is `X_R(s_k) <= eta` at each scheduler restart. The previous scheduler note reduced finite terminal-tail coverage to this seed.

A valid seed theorem would need one of these source-backed mechanisms: scale selection from `SCF_avg^m`, transported-frame minimization, or a finite-cover small-excess selection lemma. The current surfaces cited in the loop provide bounded averaged control and integrable coefficients, while the coefficient-margin repair requires small pointwise-in-time averaged affine excess in the chosen restart frame.

Result: the restart-seed theorem remains the hard remainder inside `AACT.KX`. The local coefficient-margin repair stands, and global `AACT.KX` needs this added seed theorem before `AACT.KX` can be promoted.
