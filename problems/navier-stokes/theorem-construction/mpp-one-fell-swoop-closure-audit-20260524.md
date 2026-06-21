# MPP One-Fell-Swoop Closure Audit

Date: 2026-05-24

Status: corrected CM-contrapositive polarity audit; no positive no-exit target.

## Question

What is the closing role of the current CM contrapositive chain?

## Answer

The CM move is the obstruction split.

Follow the ordinary positive proof program until it hits a possible failure
scenario: some estimate, packet, reserve, source, or coherence condition may
fail. At that point split the obstruction:

```text
1. the obstruction fails and a blow-up / non-smooth event can happen;
2. the obstruction passes and the branch remains smooth.
```

The CM contrapositive program does not try to prove branch 2 by controlling the
estimate. It proves that branch 1, if it really happens, can only happen outside
the CM class:

```text
failed obstruction capable of non-smoothness
=> canonical same-solution terminal obstruction
=> Part/Field failure
=> Exit(Q):=not Member(Q).
```

The flip side is:

```text
smooth branch
=> Member(Q),
```

regardless of which precise estimate, packet, or mechanism witnesses the
control. The estimate is only the place where the ordinary route gets stuck and
creates the case split. CM supplies the class decision:

```text
failure capable of non-smoothness => Exit(Q),
smooth/pass branch => Member(Q).
```

## Program Boundary

Do not add a final obstruction estimate to this CM argument. The CM target is
the legal dichotomy:

```text
failure/non-smooth branch => Exit(Q),
smooth branch => Member(Q).
```

Part and Field are the typed faces used to prove the first line.
