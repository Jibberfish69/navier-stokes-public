# MPP FinitePacketLeraySourceAnchoring.A direct attempt

Date: 2026-05-17

Status: failed unconditional discharge. Finite-packet anchoring reduces to signed no-free-sink or PRD once terminal positive selection is applied.

## Target

`FinitePacketLeraySourceAnchoring.A` asks for the Leray-projected pressure/source channel to remain anchored to the selected native source-current packet family strongly enough to contribute to `PressureSourceTimeFaceSpread.A`.

The desired outcome is a terminal time-face modulus for the native source marginal:

```math
\mu_m^{src}(B_R\times[-\varepsilon,0])
\le \omega_R(\varepsilon)+o_m(1).
```

## Attempt 1: signed finite-packet anchoring

Before terminal one-sided selection, Leray projection and pressure-source identities can be organized as signed packet relations. These identities can trace how source-current and pressure channels exchange mass across neighboring packet bands.

The obstruction occurs after localization, terminal weights, and positive-part extraction. A signed identity does not bound the selected positive part unless its signed partner remains usable, exits legally, or is paid by a donor/reserve theorem.

That is exactly the signed no-free-sink problem.

## Attempt 2: same-fluid packet anchoring through terminal weights

Same-fluidity keeps the branch licensed and preserves parent-child packet ancestry. It does not force the Leray-projected signed partner to remain in the selected positive terminal ledger.

After terminal weights, an anchored signed partner can become retained, legal, donor, or terminal Zeno. The first three channels are paid by existing ledgers; the terminal Zeno case is the surviving atom.

Thus same-fluid packet anchoring returns to `TerminalWeightedNoFreeSink.A_ind`.

## Attempt 3: Leray projection locality

The Leray projector is spatially nonlocal. Localization creates commutators and off-packet terms. Existing ledgers route the legal commutator/cutoff pieces, while the principal selected positive source-current remains.

A theorem that bounds the remaining positive localized source-current is precisely `PositiveRemainderDepletion.A` or `LocalPositiveSourceCarleson.A`.

## Attempt 4: anchoring gives temporal anti-atom

Anchoring is a carrier statement. It says where a finite-packet contribution belongs. It gives no lower residence time or `L_t^p` gain for the native source marginal.

A source atom can stay anchored to the same packet family and still concentrate in `(-1/m,0]`.

## Verdict

`FinitePacketLeraySourceAnchoring.A` is not installed as an independent anti-atom mechanism.

The pressure/Leray subtarget cascade is now exhausted:

```text
PressureCarrierTrace.A: carrier binding only;
EllipticTimeSmearing.A: false at model level for time support;
FinitePacketLeraySourceAnchoring.A: returns to signed no-free-sink / PRD.
```

Therefore the sharpened pressure/Leray route does not close `B_ASAC^closed`. The canonical obstruction remains a zero-radius terminal Zeno source atom, Part-side when the same original-NS record remains and true `not Pack_Q` only when that record is absent pending a genuinely new production theorem.