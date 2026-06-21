# MPP ChargeLedgerInjection.A Proof-Method Audit

Date: 2026-05-23

Status: non-promotion audit; sharpens the open Pack-side supplier atom.

## Target lock

This audits the generated chain

```text
TerminalReserveFirstAppearanceCharge.A
=> ChargeLedgerInjection.A
=> closed.
```

The audit is inside the Field-window branch of
`TerminalCMNoExit.A / NoGenuineCMExit.A`.  It does not change the governing CM
program:

```text
Exit(Q;O_NS^work) := not Member(Q;O_NS^work).
```

## Method pass

- Proof program: CM contrapositive class exit, Field-window branch.
- Object role: supplier bridge for `ScaleCriticalTreeCarleson.A`, not the final
  CM target.
- Logical skeleton: contradiction by minimal first reserve birth.
- Mechanism tested: first-birth descent, adjoint duality, reserve double
  counting, and positive-source sign/depletion.
- Attractive wrong substitution: treating "uncharged birth creates a zero-cost
  packet contradiction" as a proof rather than the theorem to be proved.

## What the generated proof really proves

The generated `ChargeLedgerInjection.A` note has a valid formal shape:

1. choose a first terminal reserve birth;
2. remove inherited `Past(W)` mass by minimality;
3. pair the remaining child residual with `WeightedAdjRes.A`;
4. declare that a positive residual outside `Charge_N` plus legal loss is
   impossible.

Steps 1 and 2 are legitimate descent bookkeeping.  They reduce the problem to a
same-window first-created reserve contribution.

Step 3 is legitimate only for residual already visible to the weighted adjoint
ledger.  It prices ledger-visible residual mass.  It does not prove that every
retained positive first-created square reserve contribution is ledger-visible.

Step 4 is therefore the live theorem content.  It is not a terminal mechanism.

## Counterpattern

The unresolved pattern is a selected terminal packet with:

```text
Past(W) contribution = 0 or paid,
legal/cutoff/boundary losses paid,
finite donor trees paid,
ASAC/legal partners paid,
and a retained positive source-current / active strain contribution
aligned with the expanding packet direction.
```

This creates positive square reserve on the terminal strip without contradicting
the installed energy, local energy, parent-square, or weighted-adjoint inputs.
Those inputs bound represented or paid pieces.  They do not by themselves force
the selected positive aligned contribution to inject into `Charge_N`.

In source-carrier language this is the exact already-known obstruction:

```text
PositiveRemainderDepletion.A.
```

After the May 17 source-weighted reduction, the same obstruction is

```text
SourceWeightedTerminalAngularDepletion.A
=> BASACTerminalSourceAntiConcentration.A
=> UniformTemporalSourceIntegrability_p_BASAC.A
```

or an equivalent class-specific reverse-Holder/no-incoming/backward-uniqueness
theorem for the produced `B_ASAC` equality class.

## Corrected reduction

The non-tautological statement is:

```text
ChargeLedgerInjection.A
<= PositiveRemainderDepletion.A
   or SourceWeightedTerminalAngularDepletion.A
   or an equivalent same-ledger terminal anti-concentration theorem.
```

Thus the Field-window branch should read:

```text
Pack_Q
+ installed parent/residual/legal ledgers
+ PositiveRemainderDepletion.A
=> ScaleCriticalTreeCarleson.A.
```

The first-birth formulation is still useful because it gives the exact support
where the positive-source theorem must act:

```text
minimal retained positive-scale first-created donor reserve.
```

## Verdict

`ChargeLedgerInjection.A` is not promoted as closed from `WeightedAdjRes.A` plus
minimality.  It remains conditional on a real sign/depletion/anti-concentration
mechanism for the selected positive first birth.

The proof-method gain is narrower and cleaner:

```text
ScaleCriticalTreeCarleson.A
reduces to first-created reserve charge,
and first-created reserve charge reduces to PositiveRemainderDepletion.A
on the minimal retained positive-scale source carrier.
```

Terminal zero-radius residue remains a Pack/Part witness in the CM
contrapositive route.  The retained positive-scale branch is the only branch
that still asks for a forward supplier theorem.
