# Conditional PCTP.hard discharge modulo scale-normalized nu_SCF Carleson

## Target
Insert the conditional `Jump_avg` no-escape theorem into `PCTP.hard terminal-tail production`.

## Single remaining hypothesis
Assume the scale-normalized `nu_SCF` Carleson estimate on terminal same-fluid windows.

## Proof
Start with `OriginalSmoothData` and a finite terminal same-fluid tail. The terminal SCF dichotomy gives two branches:

1. strict averaged-good terminal branch;
2. `Jump_avg` branch.

On the strict averaged-good branch, the installed conditional route gives

`AACT.Global.noJump -> DTC.A_avg -> AVG.RCV.A -> LCI.A_avg -> CSP.A_avg -> OFP.A_avg -> CFI.A_avg -> End_NS_avg`.

Then the readout layer gives

`End_NS_avg + READ.COVER + Field.Read + DTC.Read -> End_NS`.

The recovered endpoint-to-terminal-tail bridge gives

`End_NS + CFI.A -> PCTP.hard`.

On the `Jump_avg` branch, the conditional no-escape theorem from scale-normalized `nu_SCF` Carleson control eliminates `Jump_avg`. Therefore the complementary branch is empty under the Carleson hypothesis.

Thus every terminal same-fluid tail enters the strict averaged-good branch and reaches `PCTP.hard`.

## Result
`PCTP.hard terminal-tail production` is conditionally discharged modulo one analytic theorem:

`scale-normalized nu_SCF Carleson estimate`.

## Remaining boundary
This note is the completed assembly bridge. The only analytic theorem still outside the assembly is the scale-normalized `nu_SCF` Carleson estimate.