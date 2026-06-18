# MPP BASACAtomEscapeDichotomy.A Direct Attempt

## Status

Direct attempt on the current positive-scale source-pulse atom isolated by the
June 9 active-completion loop.

This note is not a final proof.  It tests whether the terminal `B_ASAC` native
positive source atom can be forced to escape through source-drain, temporal
residence, or pressure/eigenframe sustain without smuggling the active-square
Carleson target back in.

## Target

The desired theorem is:

```math
BASACAtomEscapeDichotomy.A:
\quad
\mu_\ast^{src}(B_R\times\{0\})>0
\Longrightarrow
BASACNoIncomingSourceDrain.A^{fail}
\vee
TerminalSourceReverseHolder_{B_{ASAC}}.A^{gain}
\vee
PressureEigenframeSustain.A.
```

The intended use is:

```math
BASACAtomEscapeDichotomy.A
\Longrightarrow
SourceWeightedTerminalAngularDepletion.A
\Longrightarrow
PositiveRemainderDepletion.A
\Longrightarrow
SourcePulseExclusion.A.
```

The proof must keep the native positive source-residue measure:

```math
\mu_\ast^{src},
```

not just the signed source distribution.

## Setup

Assume a surviving terminal `B_ASAC` source atom:

```math
\mu_\ast^{src}(B_R\times\{0\})>0.
```

Choose normalized backward transported adjoint packets `\psi_m` centered on the
selected terminal atom so that:

```math
\langle \mu_m^{src},\psi_m\rangle \to c_0>0.
```

The desired diagnostic identity is:

```math
\langle \mu_m^{src},\psi_m\rangle
=
Flux_{tr,cyl,m}
+Residence_m
+PressureEigenframeSustain_m
+LegalLoss_m
+o_m(1).
```

To become a theorem, each term must retain the one-sided positive native source
carrier.  Signed cancellation of the distribution is insufficient.

## Attempt 1: Incoming Source-Drain

If a fixed earlier selected same-fluid parent captures positive source mass,
then the atom has incoming source-drain:

```math
BASACNoIncomingSourceDrain.A^{fail}.
```

This is the first escape door.

The installed no-earlier-selected-source slice only removes fixed selected
parents.  It does not rule out a diffuse legal source-parent cloud:

```math
\pi_P^{(M)}:= {1\over M}\sum_{\alpha=1}^M\delta_{P^-_\alpha},
\qquad M\to\infty.
```

Every bounded selected subfamily captures vanishing mass while the full native
positive source residue remains bounded below by `M_0>0`.  Thus first-pulse
no-parent does not prove the source-drain door.

## Attempt 2: Temporal Residence / Reverse Holder

If the terminal atom has super-`L^1` residence, then Holder gives temporal
non-atomicity and the atom is impossible:

```math
\|F_m^{src,+}\|_{L_s^p((-1,0);\mathcal M(B_R))}\le C_R,
\qquad p>1.
```

This would give:

```math
TerminalSourceReverseHolder_{B_{ASAC}}.A^{gain}
```

and then temporal source anti-concentration.

The installed source ledger is only `L^1_s`.  The endpoint time-marginal witness:

```math
g_m(s)=m\,{\bf 1}_{(-1/m,0]}(s)
```

has unit `L^1_s` mass, divergent `L^p_s` norm for every `p>1`, and converges
to a terminal atom.  Local energy, pressure bounds, same-fluid legality, and
finite donor balance do not upgrade this to super-`L^1` residence.

Thus the temporal residence door is a genuine theorem, not installed.

## Attempt 3: Pressure / Eigenframe Sustain

If the atom has no fixed incoming source-drain and no temporal residence, the
remaining hope is that the pressure/eigenframe channel must sustain the native
positive source in a way that becomes a legal charge or witness-face failure:

```math
PressureEigenframeSustain.A.
```

Pressure recovery and Leray projection are spatial at each time slice.  They
can bind the terminal source geometry to a pressure-Hessian / eigenframe
configuration, but the installed pressure ledgers price boundary, cutoff,
commutator, harmonic tail, and off-family terms.  They do not prove a
time-face spread estimate, a pressure-source anti-atom theorem, or a
one-sided positive source depletion theorem for the retained interior atom.

The pure pressure/eigenframe residue can still live in a shrinking terminal
time layer with finite `L^1_s` source mass.  Turning that residue into a
contradiction needs one of:

```math
PressureSourceTimeFaceSpread.A,
```

```math
TerminalPressureHessianNoSustain.A
+OneSidedNearBandMaterialStrainBV.A,
```

or a direct theorem classifying the pressure/eigenframe sustain as Pack, Part,
or licensed Field face failure on the same retained ledger.

None of these is installed.

## Failure Of The Dichotomy Proof

The diagnostic pairing is valid, but promotion to a theorem-grade dichotomy
fails at the following point:

```math
\text{one-sided terminal native source mass}
\not\Longrightarrow
\text{fixed incoming parent}
\vee
\text{super-}L^1\text{ residence}
\vee
\text{installed pressure/eigenframe contradiction}.
```

A diffuse terminal parent cloud in a shrinking time layer avoids fixed incoming
parent selection and temporal reverse Holder.  Existing pressure structure
does not force enough time-face spread or one-sided source depletion to close
the third door.

## Sharpened Next Atom

The failed dichotomy isolates one smaller theorem:

```math
\boxed{
PressureSourceTimeFaceSpread.A
}
```

or, equivalently at this resolution:

```math
\boxed{
TerminalPositiveSourceAtomEscape.A:
\quad
\text{a terminal native positive source atom in }B_{ASAC}
\text{ cannot be simultaneously diffuse in parents, zero-thickness in time,
and pressure/eigenframe-sustained without a same-ledger Pack/Part/Field face
failure.}
}
```

This atom is smaller than `SourcePulseExclusion.A` and smaller than broad
`PositiveRemainderDepletion.A`.  It is the exact place where the current proof
needs new content after ASAC, donor balance, entrance decay, and Pack-first
zero-radius sorting have been spent.

## Verdict

`BASACAtomEscapeDichotomy.A` is not installed.

The active branch remains:

```math
TerminalPositiveSourceAtomEscape.A
\Longrightarrow
BASACAtomEscapeDichotomy.A
\Longrightarrow
PositiveRemainderDepletion.A
\Longrightarrow
SourcePulseExclusion.A.
```

Until `TerminalPositiveSourceAtomEscape.A` or an equivalent theorem is proved,
the PDFs must not say that the source-pulse branch, and hence finite Clay
terminal counterexamples, have been excluded.
