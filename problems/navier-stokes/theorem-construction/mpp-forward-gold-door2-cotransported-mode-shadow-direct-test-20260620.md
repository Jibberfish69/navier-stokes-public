# Door 2 Co-Transported Mode Shadow Direct Test

Date: 2026-06-20

## Status

Direct route test complete.  `CoTransportedModeShadow.A` is a real conditional
way to kill finite donor-edge mode defects, but it is not installed from the
current Door 2 inputs.

Transporting the mode test along donor edges can make scalar cancellation imply
mode cancellation.  The price is that the transported test may no longer equal
the canonical Door 2 dual modulation test at all packet endpoints.  Branching,
merging, selector changes, and gauge drift create endpoint mismatch terms.

## 1. Target under test

For a finite retained donor edge `e=(D,R)`, donor-edge mode coherence is paid if
the packet test value satisfies

```math
\theta_i(D)=\theta_i(R).
\tag{CTS.1}
```

Then a signed donor pair

```math
q_R=A,
\qquad
q_D=-A
\tag{CTS.2}
```

cancels after multiplying by `theta_i`:

```math
q_R\theta_i(R)+q_D\theta_i(D)=0.
\tag{CTS.3}
```

The question is whether one can choose a transported test `theta_i` that also
represents the actual Door 2 mode weight `psi_i`.

## 2. Exact obstruction: one edge with endpoint mismatch

On one donor edge, suppose

```math
\psi_i(R)=1,
\qquad
\psi_i(D)=-1.
\tag{CTS.4}
```

No function can satisfy both

```math
\theta_i(D)=\theta_i(R)
\tag{CTS.5}
```

and

```math
\theta_i(D)=\psi_i(D),
\qquad
\theta_i(R)=\psi_i(R).
\tag{CTS.6}
```

If we choose the transported value `theta_i(D)=theta_i(R)=1`, then the source
projection with `theta_i` cancels on the edge, but the difference from the real
mode test is

```math
q_D(\psi_i(D)-\theta_i(D))
=
(-A)(-2)
=
2A.
\tag{CTS.7}
```

So co-transport removes the edge defect only by moving it into an endpoint
mode-mismatch term.

## 3. Exact obstruction: branching donor graph

If one donor packet feeds two receiver packets with different mode values,

```math
\psi_i(R_1)=1,
\qquad
\psi_i(R_2)=-1,
\tag{CTS.8}
```

and the transported test is constant along both donor edges, then

```math
\theta_i(D)=\theta_i(R_1)=\theta_i(R_2).
\tag{CTS.9}
```

This cannot match both endpoint values in `(CTS.8)`.  Thus a co-transported
mode shadow requires either no mode-branching on the retained donor graph or a
legal charge for the branching mismatch.

## 4. Conditional theorem

The co-transport route would prove `ModeDonorEdgeCoherence.A` if the following
inputs are installed.

First, an admissible transported mode test:

```math
\theta_i(D)=\theta_i(R)
\quad\text{on retained donor edges,}
\tag{CTS.10}
```

with the same local multiplier and commutator legality required by
`ModeTestCompatibility.A`.

Second, endpoint mode-mismatch charge:

```math
\sum_P |q_m(P)|\,|\psi_i(P)-\theta_i(P)|
\le
\operatorname{Legal}_{m,i}^{mis}+o_m(1).
\tag{CTS.11}
```

Third, branching and selector-drift charge:

```math
\operatorname{Branch}_{m,i}
+\operatorname{SelectorDrift}_{m,i}
\le
\operatorname{Legal}_{m,i}^{branch}+o_m(1).
\tag{CTS.12}
```

Then

```math
\sum_{e=(D,R)}|q_e|\,|\psi_i(R)-\psi_i(D)|
\le
2\operatorname{Legal}_{m,i}^{mis}
+\operatorname{Legal}_{m,i}^{branch}
+o_m(1),
\tag{CTS.13}
```

after finite donor telescoping with `theta_i`.

## 5. Current input gap

Current inputs do not prove `(CTS.11)` or `(CTS.12)`.

`ModeTestCompatibility.A` gives legal admissibility for a chosen local mode
test.  It does not prove that a co-transported replacement remains the same dual
modulation test, nor that the mismatch is legal.

The normalized-adjoint and donor-adjoint packages are conditional source-drain
support.  They do not provide the lower-frame/no-null-source theorem needed to
turn the transported test into an exact same-carrier mode readout.  Existing
adjoint notes already identify that gap for square reserves; the same gap
appears here as endpoint mode-mismatch.

## 6. Exact reduction

At current input strength,

```math
\boxed{
\text{CoTransportedModeShadow.A}
\Leftarrow
\text{AdmissibleDonorTransportedModeTest.A}
+
\text{EndpointModeMismatchCharge.A}
+
\text{DonorModeBranchingCharge.A}.
}
\tag{CTS.14}
```

These are not installed.  Without them, co-transport is a useful gauge choice
for finite donor edges but not a proof of the Door 2 mode-projected residue
identity.

## Verdict

The co-transported mode-shadow route does not close the source-mode branch.  It
can kill finite donor-edge mismatch only after paying the mismatch between the
transported test and the actual Door 2 dual mode test.

So this route returns to the same missing currencies: endpoint mode-mismatch
charge, selector/gauge drift charge, and the no-null-source/lower-frame adjoint
readout needed to make transported tests represent the native selected carrier.
