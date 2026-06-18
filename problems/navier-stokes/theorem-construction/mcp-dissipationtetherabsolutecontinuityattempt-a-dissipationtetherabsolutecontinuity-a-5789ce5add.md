# DissipationTetherAbsoluteContinuity.A Attempt

## Target

Prove a two-part tether:

```math
\mu_m^{src,+}(E)\le C\mathcal D_m(E)+o_m(1),
```

and

```math
\mathcal D_m(B_R\times[-\varepsilon,0])
\le \omega_R(\varepsilon)+o_m(1),
\qquad \omega_R(\varepsilon)\downarrow0.
```

Together these imply terminal source anti-atom.

## Direct attempt

The first inequality is a source-domination statement: selected positive source must be controlled by the chosen dissipation/CKN/source-charge measure.

The second inequality is a uniform terminal strip absolute-continuity statement for the controlling measure.

Both are needed. Either one alone is insufficient.

## Failure of source domination alone

Even if `\mu_m^{src,+}\le C\mathcal D_m`, finite total `\mathcal D_m` mass does not rule out terminal concentration. The controlling measure could also concentrate as

```math
\mathcal D_m(ds)=\frac{a}{\tau_m}1_{(-\tau_m,0]}(s)ds.
```

Then domination holds but terminal anti-atom fails.

## Failure of terminal strip modulus alone

A terminal strip modulus for a dissipation measure does not help unless the selected positive source is actually tethered to that measure after localization, cutoff, pressure projection, positive-part extraction, and selector choice.

The selected source is one-sided and terminally localized. The installed signed/energy ledgers do not automatically dominate that selected marginal after all terminal operations.

## Verdict

`DissipationTetherAbsoluteContinuity.A` is not proved from installed inputs.

It reduces to two independent missing inputs:

```text
SelectedSourceDissipationDomination.A
TerminalDissipationStripModulus.A
```

or one stronger combined theorem:

```text
SelectedSourceTerminalAC.A
```

Claimed status:

```text
failed; sufficient if both domination and terminal strip modulus are installed.
```