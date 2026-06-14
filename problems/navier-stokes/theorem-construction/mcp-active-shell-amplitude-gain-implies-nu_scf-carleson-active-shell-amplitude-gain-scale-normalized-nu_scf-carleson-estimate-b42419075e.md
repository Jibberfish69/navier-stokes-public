# Active-shell amplitude gain implies scale-normalized nu_SCF Carleson

## Target
Prove the implication

`active-shell amplitude gain -> scale-normalized nu_SCF Carleson estimate`.

Here

`nu_SCF = |grad u|^2 dxdt + sum_chi |p_chi^loc|^(3/2) dxdt`.

## Hypotheses
Work on a finite bounded-overlap same-fluid terminal atlas. For every terminal window `Q` with radius `c_Q2^{-k_Q}\le r_Q\le C_Q2^{-k_Q}`, assume:

1. shell-to-window comparison:

`SCF_norm(Q) <= C int_{I_Q} sum_{j >= k_Q-C0} 2^{-j} D_j(t)^2 dt + R_Q`,

where `SCF_norm(Q)` is the scale-normalized analytic `nu_SCF` density on `Q`, and the reserves satisfy

`sum_Q R_Q <= C_R`.

2. active-shell amplitude gain: for active shells on the terminal atlas,

`2^{-j} D_j(t)^2 <= eps nu D_j(t) + r_j(t)`,

with summable reserve

`int_I sum_{j >= k-C0} r_j(t) dt <= C 2^{-2 delta k}`.

3. heat-scale dissipation tail control on active intervals:

`int_I sum_{j >= k-C0} D_j(t) dt <= C 2^{2k} |I|`.

## Theorem
For every separated terminal window family `{Q_l}`,

`sum_l SCF_norm(Q_l) <= C(E0, nu, atlas, reserves)`.

This is the required scale-normalized `nu_SCF` Carleson estimate.

## Proof
Apply the shell-to-window comparison to each `Q_l` and sum. Bounded overlap allows the window sum to be dominated by finitely many dyadic tail integrals:

`sum_l SCF_norm(Q_l) <= C sum_l int_{I_l} sum_{j >= k_l-C0} 2^{-j}D_j^2 dt + C_R`.

Use the amplitude gain on every active shell:

`2^{-j}D_j^2 <= eps nu D_j + r_j`.

After summing over `j` and integrating over each active time interval,

`int_{I_l} sum_{j >= k_l-C0} 2^{-j}D_j^2 dt <= eps nu int_{I_l} sum_{j >= k_l-C0}D_j dt + C 2^{-2 delta k_l}`.

The heat-scale dissipation tail bound gives

`eps nu int_{I_l} sum_{j >= k_l-C0}D_j dt <= C eps nu 2^{2k_l}|I_l|`.

For a terminal Carleson packing family, the heat-scale intervals satisfy `c_I2^{-2k_l}\le |I_l|\le C_I2^{-2k_l}` and bounded overlap, so the first term sums finitely. The reserve term also sums by the dyadic decay and terminal packing. Hence

`sum_l SCF_norm(Q_l) <= C(E0, nu, atlas, reserves)`.

## Result
The implication is proved: active-shell amplitude gain, together with the standard shell-to-window comparison and heat-scale dissipation tail control, yields scale-normalized `nu_SCF` Carleson control.

## Boundary
The implication is installed as a theorem bridge. The remaining analytic load is the active-shell amplitude gain itself, or an equivalent direct active-square theorem.
