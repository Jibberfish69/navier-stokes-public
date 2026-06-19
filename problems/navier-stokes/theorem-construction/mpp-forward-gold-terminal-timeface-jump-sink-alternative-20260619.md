# MPP Forward Gold TerminalTimeFaceJumpSinkAlternative.A Attempt

Date: 2026-06-19

Status: partial theorem / visibility result.  This does not prove the terminal
anti-atom theorem, but it identifies exactly what the time-face language can
and cannot do.

## Target

The live question after the Stirling/factorial-weighted tower, the failed
Laurent form, and the terminal-time discussion is:

```text
what representation handles a source pulse concentrated at the final time?
```

The right representation is not a fixed Laurent expansion and not classical
surface geometry.  It is the local-energy/source-balance trace in time.

For a selected terminal packet family, write the scalar terminal source marginal
schematically as

```math
d\mu_m^{src,+}(s)
```

and test the native local balance on a compact spatial cutoff `chi` and a
terminal time cutoff on `(-eps,0]`.

The desired anti-atom conclusion would be

```math
\lim_{\eps\downarrow0}\limsup_m
\mu_m^{src,+}(\chi\,1_{(-\eps,0]})=0.
```

The weaker theorem tested here is the jump-sink alternative:

```math
\mu_*^{src,+}(\chi\otimes\delta_0)>0
```

forces a nonzero terminal trace in at least one same-balance sink channel:

```text
local energy trace jump,
dissipation concentration,
inward/cutoff/pressure flux,
retained signed counter-current,
or legal/donor spill.
```

## Balance Identity

For a localized packet balance, the terminal slab identity has the schematic
form

```math
\mu_m^{src,+}(\chi\,1_{(-\eps,0]})
=
J_m(\eps;\chi)
+D_m(\eps;\chi)
+F_m^{bdry}(\eps;\chi)
+P_m^{con}(\eps;\chi)
+C_m^{sgn}(\eps;\chi)
+L_m(\eps;\chi)
+o_m(1).
```

Here:

```text
J_m       = terminal variation of the localized energy/source primitive;
D_m       = local dissipation or heat-scale damping sink;
F_bdry    = spatial/cutoff/collar flux;
P_con     = pressure conormal trace;
C_sgn     = retained signed counter-current / donor partner;
L_m       = already legal loss.
```

This identity is the time-face version of conservation accounting.  It says
that a selected positive terminal source cannot vanish from every signed or
energetic ledger at once.  Some terminal trace must carry it.

## Proof of the Visibility Alternative

Assume a nonzero terminal atom:

```math
\lim_{\eps\downarrow0}\limsup_m
\mu_m^{src,+}(\chi\,1_{(-\eps,0]})=a>0.
```

Integrate the localized balance over `(-eps,0]`.  Each term on the right is a
finite signed or positive measure in the installed local-energy topology:
energy trace has bounded variation, dissipation is a finite local measure,
pressure/cutoff fluxes are finite trace distributions after localization, and
legal/donor spill is a finite ledger by construction.

Passing to subsequential weak-* limits gives terminal trace measures for each
term.  If all right-hand terminal traces vanished on `chi\otimes\{0\}`, the
right side would converge to zero on shrinking terminal slabs, contradicting
the positive atom `a`.

Thus:

```math
\mu_*^{src,+}(\chi\otimes\delta_0)>0
\Longrightarrow
|J_*|+D_*+|F_*^{bdry}|+|P_*^{con}|+|C_*^{sgn}|+L_*
\text{ has positive mass on }\chi\otimes\{0\}.
```

This is a real visibility statement.

## Why This Does Not Close Anti-Atom

The visibility theorem does not say the terminal atom is impossible.  It says
the atom must be balanced by a terminal sink or signed partner.

The scalar enemy remains admissible:

```math
g_m(s)=a\tau_m^{-1}1_{(-\tau_m,0]}(s),
\qquad
\tau_m\downarrow0.
```

Its primitive is bounded variation and has a terminal jump.  Bounded variation
records the jump; it does not forbid it.

Likewise, a heat-scale source-balanced packet can spend the positive source
against dissipation on the same shrinking interval:

```math
E_j'(t)+c\nu D_j(t)\le F_j(t)+L_j(t),
\qquad
F_j(t)\approx c\nu D_j(t)
\quad\text{on }I_j,\ |I_j|\sim2^{-2j}.
```

This produces no contradiction from fixed-shell absolute continuity or finite
first-moment source mass.

## Relation To Monotonicity

The corrected time language is:

```text
local-energy trace / BV source-balance measure / terminal jump-sink alternative.
```

A monotonicity or frequency formula would be stronger.  It would close the
route only if its derivative had a sign strong enough to rule out all terminal
sink channels except legal ones.

The attempted Gaussian/material-frequency routes do not currently supply that
sign.  They leave the pressure/cubic flux or the projected localized commutator
term:

```text
RenormalizedPressureFluxAbsorption.A
or
ProjectedLocalizedFluxCommutatorCoercivity.A.
```

So monotonicity is not the base language.  It is a possible coercive upgrade of
the trace language, and the needed upgrade is still open.

## Current Reduction

The terminal time-face branch now has the following sharp form:

```text
TerminalTimeFaceJumpSinkAlternative.A
  gives visibility.
```

To turn visibility into exclusion, one must prove that every possible terminal
sink is paid or impossible:

```text
TerminalEnergyTraceStrongContinuity.A
or TerminalEnergyDropPaidByLegalLedger.A,

TerminalDissipationAtomToCMFace.A
or TerminalDissipationAtomNoFreeSink.A,

PressureConormalTraceAbsorption.A,

TerminalSignedSaturation.A / NoFreeTerminalZenoDonorChain.A,

or a successful pressure-corrected monotone functional.
```

The most economical new theorem is therefore not another name for the source
atom.  It is:

```text
NoFreeTerminalTraceSink.A.
```

Plain meaning: once legal exits, finite donor trees, and retained signed
partners are removed, a terminal source atom cannot be balanced by an unseen
terminal energy/dissipation/pressure sink.

## Verdict

`TerminalTimeFaceJumpSinkAlternative.A` is proved as a visibility alternative
from the localized balance and weak-* trace compactness.

It does not prove terminal anti-atom.  It reduces anti-atom to the new coercive
sink theorem:

```text
NoFreeTerminalTraceSink.A
```

with the known pressure/commutator monotonicity route as one possible supplier.

This is the cleanest time-scenario language recovered from the tensor-related
ideas: a terminal atom is a jump in a BV local-energy/source-balance trace, and
the missing coercivity is exactly the rule forbidding a free terminal sink for
that jump.
