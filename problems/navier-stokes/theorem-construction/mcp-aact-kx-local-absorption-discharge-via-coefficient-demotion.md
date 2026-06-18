# AACT.KX local coefficient-margin discharge

## Target

Discharge the local coefficient-margin obligation created by the independent mathematical audit. The audit defect is specific: the previous local proof tried to control `(V_R^{1/3}+P_R^{2/3})N_R` using only `L^1_t` smallness of `V_R` and `P_R`. The repaired local proof removes those terms from the dissipation coefficient.

## Sources checked

- `problems/navier-stokes/proof-obligation-matrix.yaml`
- `problems/navier-stokes/theorem-construction/mpp-independent-math-verification-audit.md`
- `problems/navier-stokes/theorem-construction/mcp-local-aact-kx-line-by-line-averaged-act-proof-tgc-a-7bea54d655.md`
- `problems/navier-stokes/theorem-construction/mcp-direct-aact-kx-local-classical-variables.md`
- `problems/navier-stokes/theorem-construction/mcp-aact-kx-local-absorption-repaired-bootstrap-lemma-aact-kx-1ccded98f4.md`
- `problems/navier-stokes/theorem-construction/mcp-aact-kx-local-averaged-budget-audit.md`

## Repaired theorem statement

Work on one shrunken same-fluid moving cylinder `Q_R^Phi` where `SCF_avg^m` holds after `ATD_m^epsilon`. Let `X_R(t)` be the averaged affine-subtracted excess and let `N_R(t)` be the corresponding dissipative packet.

Assume the local term audit is organized in the direct-variable form

`D^+ X_R + c_1 N_R <= bar B_R(t) X_R + C_0 X_R^{1/2} N_R + bar F_R(t),`

where `c_1>0`, `C_0<infty`, and `bar B_R, bar F_R in L^1(I)` on the scheduler cell `I`. Here `bar B_R` contains the lower-order affine, frame, cutoff, pressure-response, viscous-commutator, and finite-rung coefficient ledgers, while `bar F_R` contains source, residual, harmonic/far-pressure, cutoff, and finite-frame remainder ledgers.

Choose

`eta_X <= c_1^2/(64 C_0^2)`.

If a restart time `s in I` satisfies `X_R(s) <= eta_X`, and if the scheduler cell satisfies

`exp(int_I bar B_R) ( X_R(s) + int_I bar F_R ) <= 2 eta_X,`

then on the whole scheduler cell

`X_R in L^infty(I),   N_R in L^1(I),   K_{<=m}^{avg,R} in L^1(I).`

This is the repaired local `AACT.KX.local` input for the averaged ACT route.

## Proof

Let `J subset I` be the maximal first-exit interval from `s` on which `X_R(t) <= 4 eta_X`. On `J`,

`C_0 X_R(t)^{1/2} <= 2 C_0 eta_X^{1/2} <= c_1/4.`

Therefore the only remaining dissipation coefficient is controlled pointwise by the bootstrap smallness of `X_R`, and

`D^+ X_R + (3c_1/4) N_R <= bar B_R(t) X_R + bar F_R(t)`

holds on `J`.

Gronwall gives

`sup_J X_R + (3c_1/4) int_J N_R <= exp(int_J bar B_R) ( X_R(s) + int_J bar F_R ).`

The scheduler condition gives `sup_J X_R <= 2 eta_X`, improving the first-exit bound `4 eta_X`. Continuity extends the estimate through the whole scheduler cell. Integrating the retained-margin inequality gives `N_R in L^1(I)`. The averaged tower ledger then gives `K_{<=m}^{avg,R} in L^1(I)`.

## Coefficient-margin audit

The proof uses the direct-variable local calculation as the authority for the repaired inequality. Frame, cutoff, pressure-response, affine-core, viscous-commutator, harmonic/far-pressure, source, and finite-frame packets are estimated before the first-exit coefficient-margin step and are placed into `bar B_R X_R` plus `bar F_R`, with fixed small fractions of `N_R` already consumed inside the term audit.

The genuine affine-excess nonlinear term is the only term left as a coefficient multiplying `N_R`, and it has the form `C_0 X_R^{1/2}N_R`. This coefficient is controlled through pointwise bootstrap smallness of `X_R`.

Thus the local proof spends no `L^1_t` smallness of `V_R` or `P_R` to control a pointwise coefficient multiplying `N_R`.

## Discharge verdict

`AACT.KX.local` is locally discharged in the following scoped sense: on a scheduler cell where the direct-variable local ledger supplies the repaired inequality and the restart/Gronwall scheduler conditions hold, the AACT.KX local packet follows with a valid first-exit coefficient-margin step.

## Remaining route boundaries

The following obligations remain outside this local discharge:

- global terminal-tail production from `OriginalSmoothData`;
- finite or summable terminal scheduler cover construction;
- `Jump_avg` branch elimination;
- global pressure/source supplier expansion.

These boundaries belong to the other live Navier-Stokes frontier items. They do not reopen the local coefficient-margin mechanism proved here.
