# Pressure/source supplier line-by-line expansion — partial verification and hard remainder

## Target
Expand the named pressure/source suppliers into direct estimates.

## Verified line available from accessible source
For the pressure-flux supplier, the accessible closure surface gives the annular decomposition

`||p-c_k||_{L2(A_k)} <= C ||u tensor u||_{L2(A_k^*)} + F_k`.

Multiplying by `2^((2a-1)k)||u||_{L2(A_k)}` and summing yields two terms:

1. near term: `sum_k 2^((2a-1)k) int ||u tensor u||_{L2(A_k^*)} ||u||_{L2(A_k)}`;
2. far term: `sum_k 2^((2a-1)k) int F_k ||u||_{L2(A_k)}`.

The supplier closes conditionally once near summability and far summability are installed. This is a valid line-by-line reduction for `PFlux.Supplier`.

## Exact same-depth pressure remainder
The accessible `FIRP.A0` surface records a failed exact same-depth discharge. It reduces the finite frozen-net pressure wall to `FIRP.A0(eta^ell)` for each frozen increment, then states that no installed exact theorem gives

`Q_{N,eta}^{press,loc,src,RR,alpha} in L1(I)`.

Thus the exact branch has a hard remainder at resonant local pressure integrability. The strengthened route through `FFSRC.A => FCI.5f` remains available as a sufficient replacement, while exact `FIRP.A0 -> FPCR.C` still needs proof.

## Result
Pressure/source expansion is partial:

- `PFlux.Supplier` has a line-by-line conditional closure from annular decomposition plus near/far summability.
- `FIRP.A0` remains open as the exact same-depth resonant pressure integrability theorem.
- Full pressure/source verification therefore remains open until near/far summability and the exact resonant pressure branch, or an explicitly accepted strengthened replacement, are installed as source-backed theorem rows.

## Boundary
This note verifies the accessible pressure-flux algebraic reduction and records the exact pressure hard remainder. It does not promote full pressure/source closure.