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
\neg Part_{N,Q}
\vee
\forall r>0\,\neg Field_{N,r,Q}.
}
```

So the residue is carried into the Pack-first CM decision tree. It is not first
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
\neg Part_{N,Q}
\vee
\forall r>0\,\neg Field_{N,r,Q}.
}
\tag{TSR.CMExit}
```

Equivalently, in Pack-first form:

```math
\boxed{
\mathcal R_{src}
\Longrightarrow
\begin{cases}
\neg Pack_Q,\\
Pack_Q\wedge\neg Part_{N,Q},\\
Pack_Q\wedge Part_{N,Q}\wedge\forall r>0\,\neg Field_{N,r,Q}.
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
ancestry. The proof stops at the Pack face.

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

### 3. Field gate

Assume both carrier and participation survive:

```math
Pack_Q\wedge Part_{N,Q}.
```

We prove the retained residue breaks Field.

Suppose, for contradiction, that some positive field scale survives:

```math
Field_{N,r,Q}
```

for some `r>0`.

By the installed CM witness definition, `Field_{N,r,Q}` supplies finite
one-field coherence on the same carrier and same participation tower:

```math
\mathfrak C_{N,r,Q}(t)
:=
\sup_{\substack{x,x+h\in Q_t\\0<|h|\le r}}
\sum_{k=0}^{N}
\frac{
|\delta_hU_k(x,t)|+|\delta_hK_k(x,t)|
}{|h|}
<\infty.
```

Under `Pack_Q+Part_{N,Q}`, the native positive source carrier is an interior
term of that same differentiated tower. On a bounded-overlap terminal family,
finite one-field coherence makes the source carrier chargeable by the finite
Field/tower/legal ledger:

```math
\mu_{src,N}^+
\le
C_{N,r,Q}\,
\rho_{Field,N,r,Q}
+o_N(1),
\tag{FieldCharge}
```

where `\rho_{Field,N,r,Q}` is built from the finite-difference coherence
modulus, the pressure-viscosity participation terms `K_k`, and the already
installed legal losses on the same family.

This is not a positive source-deletion theorem. It is just the meaning of
retained Field coherence for the same source carrier: if the neighboring tower
is one finite coherent field at a positive scale, then a source measure inside
that tower is accounted for by the tower ledger and cannot remain as an unpaid
retained singular residue on that same family.

But `\mathcal R_{src}` was selected precisely after paid finite ledgers and
legal losses were removed:

```math
\mu_*^{sing}\perp\rho_*^{inst},
\qquad
\mu_*^{sing}\ne0.
```

The Field-charge ledger is one of the retained tower/legal ledgers on this same
family. Therefore `Field_{N,r,Q}` would make the selected residue chargeable,
contradicting its selected unpaid retained status.

Hence no positive Field scale survives:

```math
Pack_Q\wedge Part_{N,Q}\wedge\mathcal R_{src}
\Longrightarrow
\forall r>0\,\neg Field_{N,r,Q}.
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
\neg Part_{N,Q}
\vee
\forall r>0\,\neg Field_{N,r,Q}.
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
\text{CM exit by the first broken face.}
}
```

That closes the polarity defect in the previous no-exit wording. The bad object
is not discarded. It is the witness.
