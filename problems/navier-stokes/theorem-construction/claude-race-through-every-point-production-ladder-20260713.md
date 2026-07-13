# The through-every-point production ladder: positive critical production owns no scale

**Date:** 2026-07-13. **Author lane:** Claude (solo). **Status:** proved
support + open frontier. No ontology edit; promotions suspended.

## I. Entry declaration

- **Object:** smooth unforced incompressible NS at fixed ν on decaying ℝ³;
  same-solution pair objects V_xy = u(x) − u(y), critical pair density
  e_xy = |V_xy|²/(4π²|x−y|⁴), chord-averaged compression
  α_xy = ∫₀¹ r̂·S(y + s(x−y))r̂ ds, nonlinear critical current density
  j = −4eα (F1.8), H = 𝓗_{1/2} = ∬e.
- **Physical premise being formalized (owner's steer):** the two-point tether
  is not autonomous; it is a restriction of the whole-field cocycle
  V_xy = V_xz + V_zy for every intermediate z. The quantitative content
  extracted below is the dyadic-midpoint contraction of that continuum
  constraint, applied simultaneously to density and to compression.

## II. Two exact ladder laws (midpoint contraction of the cocycle)

Let m = (x+y)/2, r = |x−y|.

**(L1) Density ladder (sharp).** From V_xy = V_xm + V_my and
|a+b|² ≤ 2|a|² + 2|b|²,

  e_xy ≤ (1/8)(e_xm + e_my).

Equality holds exactly for chord-affine increments (V additive in equal
halves) — the linear field saturates the ladder, so the constant 1/8 is
sharp. A formal affine example tests only this formal pointwise claim.

**(L2) Compression coherence (exact identity, not an inequality).**
Splitting the chord parameter at s = 1/2, with both halves sharing the same
direction r̂,

  α_xy = ½(α_xm + α_my).

A coarse pair compresses at exactly the mean rate of its two nested
half-pairs: there is no independent per-scale compression. The transporter
of critical density down scale is one strain field read through every
intermediate point — the "through every point" tether, exactly.

## III. The production ladder

Positive parts: [−α_xy]₊ ≤ ½([−α_xm]₊ + [−α_my]₊) from (L2). Define the
positive production density p₊(x,y) = e_xy[−α_xy]₊ (the positive part of
−j/4). Multiplying (L1) by the positive-part split and expanding the four
terms:

  p₊(x,y) ≤ (1/16)[ p₊(x,m) + p₊(m,y)
                    + e_xm[−α_my]₊ + e_my[−α_xm]₊ ].

For a dyadic separation band, define

  𝒫₊(ρ, t) = ∬_{ρ ≤ |x−y| < 2ρ} p₊ dx dy,
  𝒞(ρ, t)  = ∬_{ρ ≤ |x−m| < 2ρ} e_xm [−α_{m,2m−x}]₊ dx dm,

where 𝒞 is the **adjacent-segment (domino) correlation**: the critical
density of one segment times the positive compression of its collinear
continuation of equal length. The midpoint substitution y = 2m − x has
Jacobian 8 and maps the ρ-band to the ρ/2-band, so integrating the pointwise
ladder gives the exact band law

  **𝒫₊(ρ) ≤ 𝒫₊(ρ/2) + 𝒞(ρ/2).**

## IV. Telescope — no scale owns its production

At a fixed smooth time, 𝒫₊(ρ) ≤ ‖S(t)‖_∞ · 4π²H_band(ρ) → 0 as ρ → 0
(tail of the convergent band sum for H). Iterating the band law n times and
letting n → ∞:

  **𝒫₊(ρ, t) ≤ Σ_{k≥1} 𝒞(ρ 2^{-k}, t).**

Every band's positive critical production is dominated by adjacent-segment
correlation at strictly finer scales, telescoped to arbitrarily fine scale.
Positive production is therefore *entirely inherited*: no separation scale
carries self-owned production; it is all density-compression correlation
transported through intermediate points. This is the exact theorem form of
the physical claim that the blowup candidate is tethered to the whole field
through every point — a pair estimate at scale ρ is derivable from, and
bounded by, the whole-field relation at all finer scales.

## V. Spacetime consequence via the installed fine-scale budget

Since [−α]₊ ≤ ‖S(t)‖_∞ pointwise and Σ_{k≥1} 4π²H_band(ρ2^{-k}) ≤
4π²H_{<ρ}(t), F1.9's radial bound H_{<ρ} ≤ ρK/π gives

  𝒫₊(ρ, t) ≤ 4π ρ ‖S(t)‖_∞ K(t),

and F1.9's throughput law ν∫H_{<ρ}dt ≤ ℰ₀ρ/π makes the fine bands
spacetime-cheap in the density factor: each band's datum-financed spacetime
mass is linear in its radius. The uncontrolled factor is exactly ‖S‖_∞ —
the BKM-grade amplitude. The ladder does not remove it; it localizes the
entire unpaid content of positive production into the single new object 𝒞.

## VI. What is new, what is not, and what it does not prove

- New: (L2) as an exact scale-coherence identity for the production
  transporter; the band law 𝒫₊(ρ) ≤ 𝒫₊(ρ/2) + 𝒞(ρ/2); the telescope; the
  identification of 𝒞 as the minimal unpaid object (production is never
  local-in-scale).
- Not new: the aggregate P_H = −4∬eα (F5.6/F1.8); the fine-scale budgets
  (F1.9); no claim here touches the τ-weighted rate r or the Gold action
  directly.
- Not proved: any datum bound on 𝒞 or on Σ_k∫𝒞 dt; any sign for the
  discarded cancellations (positive parts overcount); any packet, carrier,
  cascade direction, favorable pressure sign, Gold closure, or Silver
  effect. The ladder runs downward in scale only; it does not forbid
  production at fine scales — it says coarse production must be accompanied
  by finer-scale domino correlation, never the reverse.

## VII. Four-field return

1. **Physical verdict:** OPEN. The ladder constrains the anatomy of positive
   production; it does not decide whether a terminal history exists.
2. **Scoped mathematical status:** PROVED — (L1) with sharp constant, (L2)
   exactly, the band law, the telescope, and the F1.9-weighted consequence,
   all at the stated smooth decaying-ℝ³ scope.
3. **Live-burden effect:** SUPPORT ONLY. The burden relocates onto the
   domino correlation 𝒞: a datum-finite bound on Σ_k ∫𝒞(ρ2^{-k}) dt, or a
   cancellation law for the discarded signed parts, would convert the
   telescope into a production bound. Neither is proved.
4. **Proposed ontology delta:** OPEN FRONTIER — the domino correlation 𝒞 and
   the no-self-owned-scale law. Zero premise weight; not installed.
