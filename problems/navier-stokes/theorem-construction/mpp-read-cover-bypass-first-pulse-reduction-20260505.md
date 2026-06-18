# READ.COVER bypass first-pulse reduction

## Status

Theorem-facing continuation of the direct `SOURCE.NO-PULSE.A` bypass route
after the good-scale, extraction, persistence, and buffered tightness packets.

Verdict:

```math
\boxed{
\text{The surviving first-pulse solve path reduces to the existing
source-wall square-reserve primitive.}
}
```

The bypass does not create an easier generic Liouville theorem.  The attempted
temporal-integrability escape collapses back to the same scale-critical carrier
primitive already isolated under the post-reconcile source wall:

```math
\boxed{
SquareReserveEvolution.A
\quad\text{or equivalently scale-normalized }\nu_{SCF}\text{ Carleson control.}
}
```

## Source anchors

| Surface | Role |
|---|---|
| `mpp-source-no-pulse-read-cover-bypass-discharge-20260505.md` | current `READ.COVER` bypass map |
| `mpp-terminal-bad-scale-extraction-compactness-20260505.md` | extracted retained ancient local suitable tangent |
| `mpp-terminal-defect-persistence-measure-split-20260505.md` | measure-valued defect persistence |
| `mpp-interior-scf-tightness-buffer-20260505.md` | buffered tightness discharge |
| `mpp-terminal-defect-liouville-external-audit-20260505.md` | generic Liouville audit and rigid-class target |
| `mpp-temporal-nonatomic-scf-carrier-audit-20260505.md` | bypass-local temporal anti-atom audit for the SCF carrier |
| `mpp-uniform-temporal-dissipation-integrability-attempt-20260505.md` | direct temporal-integrability attempt, reducing back to square reserve |
| `mpp-scalecriticaltreecarleson-squarefirstpulse-solve-attempt-gate2-obstruction-20260505.md` | direct square-first-pulse Gate 2 obstruction |
| `mpp-square-reserve-evolution-sufficiency-and-temporal-fork-20260505.md` | direct/Zeno fork |
| `mpp-zeno-rigid-class-next-attempt-20260505.md` | temporal-support rigid class reduction |

## 1. Current bypass frontier

The installed bypass chain is:

```math
GoodScaleNonCollapse_{1/2}.A
\Longrightarrow
READ.COVER
\Longrightarrow
CM
\Longrightarrow
Smooth.
```

The terminal contradiction route has been reduced to:

```math
TerminalBadScaleExtraction.A
+
SCFCarrierUpperEnvelope(Q_2^-)
+
RigidClassProduction.A
+
Liouville(\mathcal R_*)
\Longrightarrow
GoodScaleNonCollapse_{1/2}.A.
```

`TerminalBadScaleExtraction.A` is installed under retained suitable compactness.
The buffered cutoff note reduces measure persistence to the same local carrier
upper envelope already needed for extraction.  The remaining question is how to
produce a rigid class for the extracted nonzero SCF-defect tangent.

## 2. First-crossing carrier selection

The natural first attempt is:

```math
FirstCrossingCarrier.A:
\quad
\text{select the earliest same-fluid scale/window where }
SCF_{base}>\varepsilon_m/2.
```

A lawful version must be dyadic and buffered.  Let `W_n` be the first retained
dyadic same-fluid window, after legal losses are removed, such that

```math
\nu_n^{SCF}(W_n)>\varepsilon_m/2.
```

Then the rescaled unit cylinder carries positive SCF carrier.  A buffered
upper envelope on `Q_2^-` would follow if one had either:

```math
\nu_n^{SCF}(2W_n)\le C,
```

or the dichotomy

```math
\nu_n^{SCF}(2W_n)>C
\Longrightarrow
\text{a legal earlier/larger scale-critical reserve pulse}.
```

The second alternative is exactly the square-reserve problem: repeated failure
of the buffered upper envelope builds a stack of same-fluid carrier reserve
across scales.

### Selection lemma

The selection part itself is closed.  On the retained compact window, restrict
to the dyadic same-fluid grid used by the terminal packet calculus and remove
legal loss windows.  If the bad-scale route supplies at least one window with

```math
\nu_n^{SCF}(W)>\varepsilon_m/2,
```

the dyadic time-scale-label order and the fixed lexicographic tie-break choose
an earliest such `W_n`.  This is measurable and route-local.  It proves:

```math
\boxed{
BadScaleFailure
\Longrightarrow
FirstCrossingCarrier.A.
}
```

No analytic bound is obtained from this selection.  The analytic content begins
only when one tries to control the buffered carrier `\nu_n^{SCF}(2W_n)`.

## 3. Direct branch reduction

Define the square reserve of the buffered SCF-carrier stack by the same object
used in the post-reconcile source wall:

```math
\mathcal R_N(W)
:=
\int_W
\sum_{k>N}2^k
\left(\sum_{\ell>k+4}D_\ell(t)\right)^2dt.
```

Then:

```math
\boxed{
FirstCrossingCarrier.A
+
SquareReserveEvolution.A
\Longrightarrow
SCFCarrierUpperEnvelope(Q_2^-).
}
```

### Proof sketch

If the buffered carrier bound failed for the first crossing windows, the
excess buffered mass would generate a positive reserve pulse in the past or
parent buffer.  `SquareReserveEvolution.A` gives

```math
\mathcal R_N(W)
\le
Charge_N(W)
+
(1-\delta)\mathcal R_N(Past(W))
+
Loss_{legal}(W)
+
o_N(1).
```

Firstness removes an earlier order-one reserve pulse.  Iteration kills the
contractive inherited term, and the charge is controlled by the high-frequency
dissipation tail.  Thus the assumed buffered blowup contradicts firstness plus
tail smallness.  Hence the buffered carrier envelope holds.

This is not a new proof of `SquareReserveEvolution.A`; it is a reduction of
the bypass carrier problem to that exact direct source-wall theorem.

## 4. Zeno branch reduction

If the buffered carrier upper envelope fails by concentration into shorter and
shorter terminal times, the extraction produces a terminal measure defect that
can sit on the final time slice:

```math
d\nu_n(y,s)
=
\rho(y)n\mathbf 1_{(-1/n,0]}(s)\,dy\,ds
\rightharpoonup
\rho(y)\,dy\otimes\delta_{s=0}.
```

First-pulse minimality excludes earlier selected pulses on every fixed slice
`s<-a`, but it does not exclude this terminal atom.  The bypass therefore
needs the SCF-carrier version of the temporal anti-atom theorem:

```math
TemporalNonAtomicSCF.A:
\quad
\nu_*^{SCF}(B_R\times\{0\})=0
\quad\forall R<\infty.
```

This is the `READ.COVER`-bypass analogue of the older source-wall target
`TemporalNonAtomicSource.A`.  They should not be identified unless a separate
source/SCF carrier comparison theorem is installed.

With no earlier selected SCF carrier and temporal non-atomicity, the
temporal-support Liouville argument is:

```math
\nu_*^{SCF}(B_R\times[-R^2,-a])=0\quad\forall a>0,
\qquad
\nu_*^{SCF}(B_R\times\{0\})=0
\Longrightarrow
\nu_*^{SCF}(Q_R^-)=0,
```

contradicting the positive defect lower bound.

Thus:

```math
\boxed{
FirstPulseSelection
+
TemporalNonAtomicSCF.A
\Longrightarrow
RigidClassProduction.A+Liouville(\mathcal R_*).
}
```

Again, this is not a proof of `TemporalNonAtomicSCF.A`; it is the sharp
Zeno-side reduction.  The SCF-carrier audit reduces `TemporalNonAtomicSCF.A` to
a superlinear temporal dissipation bound, and the direct
`UniformTemporalDissipationIntegrability_p.A` attempt shows that this stronger
bound is not produced by the installed energy/local-energy ledgers.  It is
another form of the scale-normalized square-reserve or `\nu_{SCF}` Carleson
primitive.

## 5. Exact theorem replacement

The first-pulse solve path for the `READ.COVER` bypass is:

```math
\boxed{
FirstCrossingCarrier.A
+
SquareReserveEvolution.A
\Longrightarrow
GoodScaleNonCollapse_{1/2}.A.
}
```

Then the installed cover/readout chain gives:

```math
GoodScaleNonCollapse_{1/2}.A
\Longrightarrow
READ.COVER
\Longrightarrow
CM
\Longrightarrow
Smooth.
```

## 6. What is genuinely solved here

The following are no longer live standalone targets on this bypass:

```math
READ.COVER.FiniteExtraction.A,
\quad
TerminalBadScaleExtraction.A,
\quad
TerminalDefectPersistence.measure.A,
\quad
InteriorSCFTightness.A,
\quad
FirstCrossingCarrier.A.
```

They have been discharged or reduced to the existing compactness/carrier
normalization.

The surviving theorem target is exactly:

```math
\boxed{
SquareReserveEvolution.A
\quad\text{or equivalently scale-normalized }\nu_{SCF}\text{ Carleson control.}
}
```

That is terminal for this pass: any proof claiming to solve the bypass without
this carrier theorem is silently reintroducing `SOURCE.NO-PULSE.A`, assuming a
generic ancient-suitable Liouville theorem that the external audit does not
support, or smuggling in the same square-reserve control under temporal
integrability language.
