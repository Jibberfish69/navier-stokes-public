# MPP ScaleNormalizedBranchEntropy.A direct attempt

Date: 2026-05-17

Status: failed direct entropy production. The entropy route needs parent-cloud concentration or a finite branching alphabet, neither follows from current same-fluid ancestry.

## Target

`ScaleNormalizedBranchEntropy.A` asks for a finite branch entropy budget along the same-fluid Zeno source ancestry:

```math
\mathsf H_{sc}(\mathcal A_0)<\infty,
```

and a uniform entropy spend along every positive refill edge:

```math
\mathsf H_{sc}(\mathcal A_{k+1})
\le
\mathsf H_{sc}(\mathcal A_k)-\eta,
\qquad \eta>0.
```

Those two inequalities rule out an infinite terminal Zeno ancestry carrying fixed positive source residue: each positive refill edge spends at least `\eta`, while the initial entropy budget is finite.

## Attempt 1: same-fluid label entropy

Same-fluidity preserves carrier identity. It supplies a licensed ancestry and prevents off-family bookkeeping drift.

It gives no finite label alphabet. A single same-fluid carrier can have many legal parent packets and many legal descendants across scales. Thus label fidelity supplies coherence, while it supplies no decreasing entropy rank.

## Attempt 2: bounded-overlap entropy budget

Bounded overlap gives local multiplicity control for selected cylinders. It permits summation over packet families.

Entropy control is stronger. It requires a bound on how source mass splits among legal parent clouds across generations. Bounded overlap allows diffuse parent clouds with many small contributions, all within bounded local multiplicity.

## Attempt 3: scale-normalized parent entropy drop

A scale-normalized entropy could be defined from parent weights

```math
p_{k,i}=\frac{m_{k,i}}{\sum_j m_{k,j}}.
```

The entropy drop requires concentration of the parent distribution or a rule forcing a selected parent to carry a fixed fraction of mass.

Current inputs allow diffuse legal parentage. Therefore the entropy can remain high, or change by arbitrarily small amounts, along infinitely many Zeno steps.

## Attempt 4: finite donor balance as entropy monotonicity

Finite donor balance telescopes source and energy terms on finite truncations. It identifies leaves and legal losses.

It does not impose a monotone entropy law on how mass splits among terminal leaves. Passing to infinite depth returns to the terminal source atom.

## Verdict

`ScaleNormalizedBranchEntropy.A` fails from installed inputs.

The entropy route reduces to a parent-cloud concentration theorem. The next refined alternative is therefore:

```math
QuantizedParentCharge.A.
```
