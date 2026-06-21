# MPP Terminal Source Residue CM Exit

Date: 2026-05-22

Status: CM-facing theorem note / polarity correction.

Theorem label:

```text
TerminalSourceResidueCMExit.A
```

## Point

The source residue is not the next object to delete. In the CM contrapositive
route, the source residue is the bad object that proves class exit.

The theorem is:

```math
\boxed{
\text{terminal source residue from a finite-failure scenario}
\Longrightarrow
\neg Pack_Q
\vee
\neg Part_{N,Q}.
}
```

So the residue is carried into the Pack-out-of-CM audited CM decision tree. It is not first
converted into a positive smoothness estimate.

## Setup

Let `\mathcal R_{src}` be a selected terminal native positive source residue
extracted from a finite-time failure scenario after:

- legal boundary/cutoff/collar losses have been removed;
- non-selected branches have been discarded;
- paid finite route ledgers have been subtracted;
- readout-only artifacts have been quarantined.

Equivalently, on a bounded-overlap same-fluid terminal family
`\mathcal F_N`, the native positive source measure has an unpaid retained
component:

```math
\mu_*^{src,+}(\mathcal F_N)>0.
```

The residue may be singular to the installed reserve ledger:

```math
\mu_*^{sing}\perp\rho_*^{inst},
\qquad
\mu_*^{sing}\ne0.
```

The point is not to prove `\mu_*^{sing}=0`. The point is to prove that, if this
residue exists as part of a finite-failure scenario, it cannot be a legal CM
survivor.

## Theorem

For every terminal source residue `\mathcal R_{src}` from the same maximal
Navier--Stokes evolution,

```math
\boxed{
\mathcal R_{src}
\Longrightarrow
\neg Pack_Q
\vee
\neg Part_{N,Q}.
}
\tag{TSR.CMExit}
```

Equivalently, in Field-certification form:

```math
\boxed{
\mathcal R_{src}
\Longrightarrow
\begin{cases}
\neg Pack_Q,\\
Pack_Q\wedge\neg Part_{N,Q}.
\end{cases}
}
```

## Proof

### 1. Carrier gate

If the terminal residue has no positive same-fluid carrier, then it is already
outside Pack:

```math
\mathcal R_{src}\Longrightarrow\neg Pack_Q.
```

This covers the zero-radius terminal source atom and unpaid donor-refill
ancestry. The proof stops at the Field-window evidence.

### 2. Participation gate

Assume the carrier survives:

```math
Pack_Q.
```

If the residue is not carried by the same differentiated Navier--Stokes
pressure-viscosity tower, then it is outside Part:

```math
\mathcal R_{src}+Pack_Q\Longrightarrow\neg Part_{N,Q}.
```

The proof stops at the Part face.

### 3. No raw source-residue Field gate

There is no third raw-source-residue branch.

Assume, for contradiction, that both carrier and participation survive:

```math
Pack_Q\wedge Part_{N,Q}.
```

A raw source residue is an unpaid forcing/participation defect in the same
Navier--Stokes tower. `Part_{N,Q}` is exactly the claim that the tower
participates with its pressure-viscosity/source terms through depth `N` on the
same carrier:

```math
D_tU_k=K_k+B_k,
\qquad
K_k=-\nabla^{k+1}p+\nu\Delta U_k.
```

The selected residue was defined after paid finite ledgers and legal losses
were removed:

```math
\mu_*^{sing}\perp\rho_*^{inst},
\qquad
\mu_*^{sing}\ne0.
```

Thus it is not a lawful retained source/forcing term inside `Part_{N,Q}`. It is
the failure of participation, not a later failure of one-field coherence.

Therefore the retained-carrier branch gives:

```math
Pack_Q\wedge\mathcal R_{src}
\Longrightarrow
\neg Part_{N,Q}.
```

This proves `TerminalSourceResidueCMExit.A`.

## Relation To Earlier Source-Wall Language

The positive supplier theorem

```math
OriginalSmoothData\Longrightarrow\mu_*^{sing}=0
```

is a different proof program. It would erase the residue.

The CM theorem proved here uses the residue:

```math
\mu_*^{sing}\ne0
\Longrightarrow
\neg Pack_Q
\vee
\neg Part_{N,Q}.
```

So `PositiveRemainderDepletion.A`, `NativeSourceAC.A`,
`NativeTrilinearDefectDomination.A`, and `SourcePulseExclusion.A` remain
positive supplier presentations only when the route explicitly switches to the
positive no-residue program. They are not required to classify the retained
residue as CM exit.

## Consequence

The terminal source residue is now legally seated:

```math
\boxed{
\text{terminal source residue}
\Longrightarrow
\text{Pack exit or Part exit.}
}
```

That closes the polarity defect in the previous no-exit wording. The bad object
is not discarded. It is the witness, and for a raw source residue the earliest
possible retained-carrier face is Part.
