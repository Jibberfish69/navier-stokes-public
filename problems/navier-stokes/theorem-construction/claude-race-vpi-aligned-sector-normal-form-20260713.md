# VPI aligned-sector normal form: the ½-ceiling, the Burgers extremal, and self-consumption of the catalyst

**Date:** 2026-07-13. **Author lane:** Claude (solo, foreground derivation).
**Status:** proved (pointwise tensor-algebra scope) + open frontier. No
ontology edit; promotions suspended.

## I. Entry declaration

- **Object:** the local reaction row of the joined rate equation. F7.16/F7.18
  give, for r = −S:Π with Π = T_u/τ PSD trace-one,
  𝖡:Π = r² + V_{S,Π} − |S|²/3 − |ω|²/12 + ¼ω·Πω + 𝖧_p°:Π°,
  where V_{S,Π} = S²:Π − r² ≥ 0 and +𝖡:Π° = 𝖡:Π feeds r-growth in
  𝓕̃_r. This note treats the LOCAL rows only (everything except 𝖧_p°:Π°);
  the pair-redistribution row −S:𝒦_Π and the viscous orientation rows of
  F7.16 are outside its scope and are named as such.
- **Proof role:** normal form for the "aligned sector" of the VPI
  self-coercivity conjecture — the sector where strain and all-chord
  orientation act as one compressive eigen-direction (V_{S,Π} = 0).
- **Typing per gate:** pointwise algebra of the PSD triple (S, ω, Π). It is
  the same typing as the F7.27 tensor countertests: no claim that an
  arbitrary triple is realized by one NS snapshot.

## II. Lemma — classification of perfect alignment

Let S be symmetric trace-free, Π PSD with trace one, S:Π = −r < 0, and
V_{S,Π} = 0. Spectrally Π = Σ pᵢ vᵢ⊗vᵢ and, treating {vᵢ, pᵢ} as a
direction distribution,

  V_{S,Π} = [E|Sn|² − E(n·Sn)²] + Var(n·Sn),

both terms nonnegative (|Sn| ≥ |n·Sn| for unit n). Vanishing forces every
support direction to be an eigenvector of S with one common eigenvalue
μ = S:Π = −r. Hence **range(Π) ⊆ ker(S + rI)**. Two cases by multiplicity
of the eigenvalue −r:
- m = 1: spectrum (−r, λ₂, λ₃) with λ₂ + λ₃ = r, and Π = v⊗v is rank one
  on the compression axis;
- m = 2: spectrum (−r, −r, 2r), Π supported in the compressive plane.

## III. Theorem — the aligned local ceiling is exactly ½, at the Burgers configuration

Under the Lemma's hypotheses, case m = 1:

  𝖡:Π − 𝖧_p°:Π°
  = r² − |S|²/3 − |ω|²/12 + ¼(ω·v)²
  ≤ **r²/2 + |ω|²/6**,

since |S|² = r² + λ₂² + λ₃² ≥ (3/2)r² (minimum at λ₂ = λ₃ = r/2) and the
rotation combination is maximized by ω ∥ v. Equality holds **iff**
S = diag(−r, r/2, r/2) in the v-frame (axisymmetric compression) **and**
ω ∥ v (swirl on the compression axis). In case m = 2 the same computation
gives ≤ −r² + |ω|²/6: the double-compression sector is self-killing at
strain level before any nonlocal row is read.

Physical return (licensed): at perfect alignment, the slaved pressure trace
— forced by incompressibility, not by viscosity — cancels exactly half of
the bare self-amplification, and the **unique** local configuration that
attains the remaining half with a positive rotation bonus is axisymmetric
compression with axial swirl: the classical Burgers-vortex geometry emerges
from the algebra of the one tangent, unprompted.

## IV. Self-consumption of the catalyst

At the m = 1 extremal, the vorticity that supplies the +|ω|²/6 bonus lies
along a compressive eigendirection of the same strain:

  ω·Sω = −r|ω|² < 0.

The same tangent that uses the swirl compresses it: formally, the local
reaction rows give r′ ~ r²/2 + |ω|²/6 while (|ω|²)′ ~ −2r|ω|² — the
catalyst is destroyed on exactly the 1/r clock on which r grows. This is
normal-form anatomy (pointwise reaction rows only; no diffusion, no
Π-evolution, no nonlocal row, no realization claim): the configuration the
aligned sector selects is one that consumes its own helper.

## V. What this sets up (open, named exactly)

1. **Non-attainability question:** Π = v⊗v requires all critical chord
   weight on one direction; an actual all-chord tensor is an integral of
   ĥ⊗ĥ with nonnegative weights over all chords, and the installed shear
   classes have Π = (I + n̂⊗n̂)/4 — far from rank one. A quantitative lower
   bound λ_min(Π) ≥ λ₀ > 0 for realizable states would push the aligned
   ceiling strictly below ½ by a computable margin. Open.
2. **Nonlocal census:** the sign and size of 𝖧_p°:Π° relative to r² on
   the active sets of the installed exact states (ABC, triangular F6.13,
   pure-2D F7.36) — the remaining row of the rigidity conjecture. Open.
3. **Row completion:** the pair-redistribution and viscous-orientation rows
   of F7.16 evaluated at the extremal. Open.

## VI. Four-field return

1. **Physical verdict:** OPEN overall; within the pointwise scope, the
   aligned local reaction is PREVENTED from exceeding r²/2 + |ω|²/6.
2. **Scoped mathematical status:** PROVED (Lemma + Theorem + the
   self-consumption identity), pointwise tensor-algebra scope, with the
   F7.16 non-covered rows named.
3. **Live-burden effect:** SUPPORT ONLY — normal form for the rigidity
   route; no datum bound, no closure.
4. **Proposed ontology delta:** OPEN FRONTIER — the Burgers extremal
   selection, the catalyst self-consumption, and the λ_min(Π)
   non-attainability question. Zero premise weight.
