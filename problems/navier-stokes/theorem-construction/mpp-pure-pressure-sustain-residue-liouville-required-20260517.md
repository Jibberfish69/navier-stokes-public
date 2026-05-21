# MPP Pure Pressure-Sustain Residue Liouville Required

Date: 2026-05-17

Status: decision note; separate residue class isolated.  Closure requires a new Liouville/exclusion theorem or a new legal classification theorem.

Purpose: finish the pressure/eigenframe continuation after the carrier dichotomy

```math
\mu_*^{press-sus}=f\Lambda_*^{src}+\mu_*^{press\perp src},
\qquad
\Lambda_*^{src}:=\nu_*^{src}+\nu_*^{legal,src}.
```

The remaining question is whether the singular part

```math
\mu_*^{press\perp src}
```

is an existing legal residue class or a new class requiring its own Liouville theorem.

## 0. Legal-ledger test

The existing pressure legal ledgers cover the following exits:

```text
cutoff/projector pressure errors,
harmonic pressure collar,
off-family pressure tail,
geometric collar/boundary pressure work.
```

The residue under discussion is produced after those exits have been removed and is supported on the interior retained terminal pressure region.  Therefore the existing pressure legal ledgers do not classify it.

A theorem of the form

```math
\boxed{PurePressureSustainResidueLegal.A}
```

would have to prove that every interior pure pressure-sustain singular residue actually exits through one of those legal channels.  Current surfaces provide no such theorem.

## 1. Source-wall test

The source-wall Zeno branch acts on native same-fluid source-current residue.  Its carrier includes source ancestry, donor/refill structure, and the native terminal source time marginal.

The singular pressure part satisfies

```math
\mu_*^{press\perp src}\perp \Lambda_*^{src}.
```

It therefore lacks source-legal carrier mass by definition.  The installed source-wall Liouville machinery cannot consume it without first proving

```math
\mu_*^{press\perp src}=0
```

or converting it to source residue.

## 2. Required pressure-residue theorem

The required endpoint theorem is

```math
\boxed{
PurePressureSustainResidueLiouville.A:
\mu_*^{press\perp src}=0
}
```

inside the pressure tangent class:

```text
interior retained terminal pressure-sustain residue,
zero native source-legal carrier,
zero legal pressure exit,
bounded local energy / pressure compactness structure,
Calderon-Zygmund pressure-Hessian relation.
```

Equivalent names for the same endpoint are

```math
NoPurePressureSourceSingularResidue.A
```

or

```math
PressureResidueLiouville.A_{pure}.
```

## 3. Conditional closure

The valid conditional chain is

```math
\boxed{
\begin{aligned}
&PressureQuadraticCarrierDichotomy.A\\
&\quad+TerminalPressureCollarLegal.A\\
&\quad+PurePressureSustainResidueLiouville.A\\
&\Longrightarrow PressureSustainResidueToSourceResidue.A.
\end{aligned}
}
```

Proof.  Remove geometric pressure exits by `TerminalPressureCollarLegal.A`.  Apply `PressureQuadraticCarrierDichotomy.A`.  The source-carried branch gives positive native source/legal source residue.  The singular branch is exactly `\mu_*^{press\perp src}` and is excluded by `PurePressureSustainResidueLiouville.A`.  The surviving alternative is the desired source-residue bridge.

## 4. Verdict

The pressure-sustain residue is a separate residue class relative to the installed source-wall machinery.  It is not currently legal under the existing pressure ledgers.  It requires one new endpoint theorem:

```math
\boxed{PurePressureSustainResidueLiouville.A}
```

or an equally strong exclusion/legal-classification theorem.

Thus the pressure/eigenframe route terminates at a clean fork:

```math
PressureSourceAC.A
```

or

```math
PurePressureSustainResidueLiouville.A.
```

The finite packet version remains

```math
LocalizedLeraySourceTether.A_{ind},
```

with independence from `TerminalSkewLocalizationLedger.A`.