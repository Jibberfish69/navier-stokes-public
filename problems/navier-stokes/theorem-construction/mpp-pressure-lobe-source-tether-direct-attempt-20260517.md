# MPP PressureLobeSourceTether.A Direct Attempt

Date: 2026-05-17

Status: direct tether attempt; no unconditional proof.  The only available
tether uses the localized Leray/source-current ledger, so the route loops to
`TerminalSkewLocalizationLedger.A` / one-sided source-current control.

Purpose: test the current sharp bridge from
`mpp-terminal-pressure-partner-saturation-direct-attempt-20260517.md`:

```math
\boxed{PressureLobeSourceTether.A.}
```

The goal is to decide whether an interior missing pressure cancellation lobe
can be converted into a native same-fluid source/donor edge without already
using the source-wall theorem.

## 0. Target

Let `A^- -> P` be an interior negative Calderon--Zygmund pressure lobe missing
from the selected terminal pressure ledger:

```math
\mathsf J^{press}(A^-\to P)<0,
\tag{PLST.1}
```

where `A^-` is physically interior, same-fluid-admissible at the geometric
level, and not a cutoff/collar/off-family pressure exit.

The target is:

```math
\boxed{
PressureLobeSourceTether.A:
A^-\to P
\text{ induces a native same-fluid source/donor edge or legal loss.}
}
\tag{PLST.2}
```

If this holds, the pressure partner saturation route can use the named
same-fluid donor interface: `PressureDonorNoFreeSink.A`, or an equivalent
`TerminalWeightedNoFreeSink` donor ledger, together with the
`TerminalPressureCollarLegal.A` pressure/cutoff/collar legal-loss estimate.

## 1. Poisson tether is only elliptic

The pressure lobe is

```math
\mathsf J^{press}(A^-\to P)
=
E_P^\#\tau_P
\int K_{n_P}(X_P-y):Q_{A^-}(y,t)\,dy\,dt,
\tag{PLST.3}
```

where `Q` is quadratic in `\nabla u`.

The Poisson equation says `Q_{A^-}` contributes to `\nabla^2p` at `P`.  It does
not say that energy, enstrophy, or same-fluid source has traveled from `A^-`
to `P`.  It is an elliptic influence, not a material edge.

Thus the bare pressure Poisson law proves only:

```math
PressureLobe(A^-\to P)
\Longrightarrow
QuadraticGradientInfluence(A^-,P).
\tag{PLST.4}
```

It does not prove `(PLST.2)`.

## 2. Leray-projection tether attempt

Pressure is part of the Leray projection of convection:

```math
P_{\mathrm{Leray}}(u\cdot\nabla u)
=
u\cdot\nabla u+\nabla p.
\tag{PLST.5}
```

Differentiating and localizing gives a coupled convective-pressure source
current:

```math
\nabla(u\cdot\nabla u)+\nabla^2p
=
\nabla P_{\mathrm{Leray}}(u\cdot\nabla u).
\tag{PLST.6}
```

So a pressure lobe can be tethered to native source only after it is recombined
with the convective/Leray partner.  The needed theorem is:

```math
\boxed{
LocalizedLeraySourceTether.A:
\text{the localized convective-pressure pair admits a same-fluid signed
source-current edge ledger at terminal weights.}
}
\tag{PLST.7}
```

But `(PLST.7)` is precisely the localized terminal skew/source-current ledger:

```math
LocalizedLeraySourceTether.A
\equiv_{\mathrm{route}}
TerminalSkewLocalizationLedger.A
\tag{PLST.8}
```

provided the pressure/cutoff/collar remainders are paid by the named legal
input `TerminalPressureCollarLegal.A`, i.e. by an estimate of the form

```math
\sum_{\mathrm{pressure/cutoff/collar}}
\mathrm{Loss}_{pc}
\le
Legal_N+o_N(1).
```

Therefore the Leray tether route is valid only conditionally:

```math
\boxed{
TerminalSkewLocalizationLedger.A
+TerminalPressureCollarLegal.A
\Longrightarrow PressureLobeSourceTether.A.
}
\tag{PLST.9}
```

Using `(PLST.9)` here is circular for the pressure/eigenframe route, because
`TerminalSkewLocalizationLedger.A` is one of the source-wall signed-current
forms the route was trying to replace.

## 3. Strain-equation tether attempt

The strain equation gives

```math
\nabla^2p
=
-D_tS+\nu\Delta S-S^2-\Omega^2.
\tag{PLST.10}
```

Substituting into the pressure lobe rewrites it as:

```math
\mathsf J^{press}
=
\mathsf J^{material\ strain}
+\mathsf J^{heat}
+\mathsf J^{quadratic}.
\tag{PLST.11}
```

The heat term is legal or burst-routed.  The quadratic term is the near-band
material source.  The material strain term is exactly the eigenframe turnover
variation:

```math
E_P^\#\tau_P\int |D_t(n_P\cdot S^{near}n_P)|\,dt.
\tag{PLST.12}
```

Thus the strain-equation tether is not lower than the target.  It returns to:

```math
OneSidedNearBandMaterialStrainBV.A.
\tag{PLST.13}
```

## 4. Compactness tether attempt

Suppose the tether fails.  Then there are pressure-sustain lobes with

```math
\Pi_N^{press,+}\ge c_0>0,
\qquad
Legal_N^{press}\to0,
\tag{PLST.14}
```

but no associated native source/donor edge in the terminal ledger.

Compactness gives a pressure-sustain residue:

```math
\mu_*^{press-sus}(Q_1^-)\ge c_0.
\tag{PLST.15}
```

To use the original two-path Zeno branch, one still needs:

```math
\boxed{
PressureSustainResidueToSourceResidue.A.
}
\tag{PLST.16}
```

The compactness route does not prove this automatically.  It is the limit
version of the same tether problem.

## 5. Verdict

`PressureLobeSourceTether.A` is not proved by:

```text
pressure Poisson ellipticity,
Calderon--Zygmund angular cancellation,
the strain equation,
or compactness alone.
```

The only direct tether goes through the localized Leray convective-pressure
source-current ledger:

```math
TerminalSkewLocalizationLedger.A
+TerminalPressureCollarLegal.A
\Longrightarrow PressureLobeSourceTether.A.
```

That is circular for the independent pressure/eigenframe route.

So the pressure branch currently stops at the exact bridge:

```math
\boxed{
PressureSustainResidueToSourceResidue.A
}
```

or, at finite packet level,

```math
\boxed{
LocalizedLeraySourceTether.A
}
```

proved without importing the terminal skew/source-current ledger it is meant to
replace.

The direct limit test of this bridge is
`mpp-pressure-sustain-residue-to-source-residue-direct-limit-attempt-20260517.md`.
It shows that compactness gives only pressure quadratic-gradient residue unless
one adds:

```math
PressureSourceAC.A
```

or a pure-pressure exclusion theorem:

```math
PurePressureSustainResidueLiouville.A.
```
