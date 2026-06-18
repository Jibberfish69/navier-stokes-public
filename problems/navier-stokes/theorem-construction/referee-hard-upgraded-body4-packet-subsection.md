# Referee-Hard Upgraded Body 4 Packet Subsection

## Purpose

This note rewrites the upgraded Body `4` packet stack in the exact lemma order a
serious referee will inspect it.

It does **not** overclaim full discharge. It records:

1. the exact upgraded gradient-side coefficient currently supported by the
   packet proofs;
2. the exact packet lemmas that are locally aligned on that surface;
3. the exact packet step that is still open;
4. the exact tail-energy interface that stays separate from the upgraded
   gradient coefficient.

## Gradient-Side Coefficient

The minimal coherent upgraded gradient-side coefficient presently supported by
the packet proofs is

```math
\widetilde\Lambda_N^\sharp(t)
:=
1
+
\sum_{k\le N-4}2^{5k/2}\|\Delta_k u(t)\|_{L^2_x}
+
2^{3N}\sum_{m=N-M}^{N+M}\|\Delta_m u(t)\|_{L^2_x}^2.
```

The strict low-mode packet forces the low-strain term

```math
\Lambda_N(t):=
1+\sum_{k\le N-4}2^{5k/2}\|\Delta_k u(t)\|_{L^2_x},
```

while the upgraded spill proof forces the quadratic collar term

```math
\Theta_N^\sharp(t):=
2^{3N}\sum_{m=N-M}^{N+M}\|\Delta_m u(t)\|_{L^2_x}^2.
```

The smaller square-root collar amplitude

```math
2^N\Big(\sum_{m=N-M}^{N+M}\|\Delta_m u(t)\|_{L^2_x}^2\Big)^{1/2}
```

is **not** currently supported by the theorem-grade spill proof.

## Packet Sequence For Proposition 6.1

The upgraded gradient-transfer inequality is intended to be assembled from four
packet lemmas.

### Lemma G1: Strict Low-Mode Packet

Target:

```math
|\mathcal N_{N,\mathrm{grad}}^{\mathrm{strict}}(t)|
\le
C\,\Lambda_N(t)\,E_N(t)+\varepsilon \nu D_N(t).
```

Current status:

- locally aligned on the upgraded gradient surface;
- the exact shell algebra no longer supports the old `\mathcal L_N` claim;
- the strict low-mode packet is controlled by low-mode strain and therefore
  lands on `\Lambda_N E_N`.

Source anchors:

- `gradient-paraproduct-reduction-lemma.md`
- `strict-low-sum-level-cancellation-audit.md`
- `gradient-low-mode-strain-recovery-audit.md`

### Lemma G2: Threshold-Local Spill Collar

Target:

```math
|\mathcal N_{N,\mathrm{grad}}^{\mathrm{spill}}(t)|
\le
C\,\Theta_N^\sharp(t)\,E_N(t)+\varepsilon \nu D_N(t).
```

Current status:

- locally aligned on the upgraded gradient surface;
- the proof reduces the collar to

  ```math
  \Theta_N(t)\,E_N(t)^{1/2}D_N(t)^{1/2},
  ```

  and Young then forces `\Theta_N^2 E_N`;
- therefore the theorem-grade collar term is `\Theta_N^\sharp`, not a
  square-root amplitude coefficient.

Source anchor:

- `gradient-spill-reduction-lemma.md`

### Lemma G3: Lifted High-Side Remainder

Target:

```math
|\mathcal N_{N,\mathrm{grad}}^{\mathrm{lift}}(t)|
\le
\varepsilon \nu D_N(t)+C_*2^{-2\delta N}.
```

Current status:

- still open;
- this packet is distinct from both the threshold-local spill collar and the
  genuine near-diagonal high-high packet;
- its exact support comes from `(S_{j-4}-S_{N+M})u`, so the live shell geometry
  is `N+M<k<j-4`, not a generic far-above-output packet `k\ge j+M`;
- the naive pointwise estimate only yields a supercritical high-side term;
- even the later reduced form `\|u_{\ge N+M}(t)\|_{L^2_x}E_N(t)^{1/2}D_N(t)^{1/2}`
  is not yet derived from the exact shell algebra, because the current packet
  proof still carries the `j`-dependent sum over `N+M<k<j-4`;
- the shortcut using pointwise smallness of `\|u_{\ge N+M}(t)\|_{L^2_x}` is
  unavailable, because the live scale barrier is only an integrated
  `L_t^2L_x^2` tail bound, not a pointwise-in-time tail theorem.
- the proposed integrated-time shortcut is also unsupported at present, because
  it either ignores that exact `N+M<k<j-4` geometry or becomes circular by
  invoking an already-bounded `E_N` to prove the lifted-remainder estimate that
  is supposed to feed Proposition `6.1`.

Source anchor:

- `gradient-high-side-remainder-packet.md`
- `gradient-lifted-remainder-time-integrated-audit.md`
- `lifted-remainder-feedback-into-body1-audit.md`
- `body1-kernelized-lifted-band-leakage-barrier.md`
- `scale-kernelized-lifted-band-reduction-lemma.md`
- `body1-kernelized-lifted-band-integration-audit.md`
- `body1-half-derivative-lifted-band-gain-target.md`
- `coupled-lifted-band-gain-target.md`

### Lemma G4: Genuine High-High Packet

Target:

```math
|\mathcal N_{N,\mathrm{grad}}^{HH}(t)|
\le
\varepsilon \nu D_N(t)+C_*2^{-2\delta N}.
```

Current status:

- locally reduced to a near-diagonal cubic packet;
- locally absorbed into `D_N` by the cubic-tail lemma;
- still needs proposition-level threading through the full upgraded packet
  stack, but it is no longer the primary local gradient-side obstruction.

Source anchors:

- `gradient-high-high-near-diagonal-reduction-lemma.md`
- `gradient-genuine-high-high-packet.md`
- `gradient-cubic-tail-absorption-lemma.md`

## Honest Proposition 6.1 Boundary

The upgraded Proposition `6.1` surface

```math
\frac{d}{dt}E_N(t)+(1-\eta)\nu D_N(t)
\le
C\,\widetilde\Lambda_N^\sharp(t)\,E_N(t)+C_*2^{-2\delta N}
```

is therefore **not** fully discharged yet.

What is already supported:

- the strict low-mode packet on `\Lambda_N E_N`;
- the spill collar on `\Theta_N^\sharp E_N`;
- the local genuine high-high cubic-tail absorption;
- the fixed-threshold admissibility of `\widetilde\Lambda_N^\sharp`.

What still blocks full discharge:

- the lifted high-side remainder;
- full proposition-level threading of the already-local genuine high-high
  absorption through the repaired packet split.

The lifted obstruction is no longer being treated as a replacement theorem
stack inside the live packet. On the theorem-primary route it remains the exact
open gradient packet on the shell geometry `N+M<k<j-4`. The strongest
auxiliary upstream repair candidate is still the Body `1` kernelized
lifted-band leakage route: the displayed scale-side carrier contains the factor
`2^{-(j-k)}`, but the current integration audit still leaves a residual `2^k`
weight, and the coupled lower-shell estimate needed to defeat that residual is
not yet proved.

## Tail-Energy Interface Stays Separate

The `4 -> 1` return arrow does **not** need to inherit the upgraded gradient
coefficient literally.

Its theorem-facing coefficient remains a separate admissible tail-energy
coefficient `\Gamma_N\in L^1(0,T)` together with the coercive damping

```math
Q_N(t)\ge c_Q\,2^{2N}T_N(t)
```

So the clean theorem interface is:

1. upgraded Body `4` gradient side on `\widetilde\Lambda_N^\sharp`;
2. tail-energy return on `\Gamma_N`;
3. same-shape barrier recovery only after retaining the damping step
   explicitly.

## Referee-Hard Verdict

The upgraded Body `4` architecture is now coherent enough that a referee will
not primarily attack the theorem headline. The serious attack points are:

1. exact shell bookkeeping for the strict low-mode packet on `\Lambda_N`;
2. exact shell bookkeeping for the spill collar on `\Theta_N^\sharp`;
3. the exact definition and control of the lifted high-side remainder;
4. proposition-level synchronization of the genuine high-high packet with the
   repaired packet split;
5. explicit preservation of the coercive damping step in the `4 -> 1` return.

So the architecture is publishable in shape, but the packet calculus still
decides whether it is publishable in fact. The exact remaining program is now:

1. close the lifted high-side gradient packet on its exact shell geometry;
2. thread the already-local genuine high-high absorption through the full
   Proposition `6.1^\sharp` packet split;
3. propagate the repaired Proposition `6.1^\sharp` and Proposition
   `6.2^\sharp` surfaces into the explicit `4 -> 1` damping return;
4. complete `C3` assembly on the same four-body Euclidean route.
