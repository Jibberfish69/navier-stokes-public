# MPP TerminalSourceFirstAppearanceTimeSpread.A Direct Attempt

Date: 2026-06-09

Status: active-completion proof attempt. This note does not close public Clay
finality and does not license PDF finality.

## Target

This pass attacks the selected child target from
`mpp-basac-temporal-spreading-production-fanout-reentry-20260609.md`:

```math
TerminalSourceFirstAppearanceTimeSpread.A.
```

The desired theorem is:

```text
minimal retained terminal source mass
=> inherited earlier parent mass
   or charge-ledger injection with terminal time modulus
   or Part/Field witness failure.
```

The theorem must do more than the older first-birth bookkeeping. It must price
time concentration itself.

## Normal form

Assume a minimal retained terminal source packet `W_m` with time thickness
`\tau_m\downarrow0` and fixed positive native source mass:

```math
\mu_m^{src,+}(W_m)\ge c_0>0.
```

All represented exits have already been removed:

```text
parent mass represented in Past(W_m),
legal/cutoff/boundary/projector loss,
finite donor trees,
non-Zeno refill,
ASAC-paid pair leakage,
fixed earlier selected source slice.
```

The surviving model is still the terminal squeeze

```math
g_m(s)=\tau_m^{-1}1_{(-\tau_m,0]}(s).
```

## Attempt 1: minimal first appearance

Minimality gives a first window in which the retained positive source mass is
visible. It removes older represented parent mass. It does not give a lower
bound on residence time.

A measure can first appear inside `(-\tau_m,0]` and keep all its mass there.
That is exactly the squeeze model. Thus first appearance is a localization
tool, not a spreading theorem.

## Attempt 2: charge-ledger injection

Suppose the packet injects into a finite charge ledger:

```math
\mu_m^{src,+}(W_m)\le C_{\mathrm{TSF}}Charge_m(W_m).
```

This is useful only if the charge ledger has a terminal time modulus at the
same scale-normalized resolution:

```math
Charge_m(B_R\times[-\varepsilon,0])
\le \eta_R(\varepsilon)+o_m(1),
\qquad \eta_R(\varepsilon)\downarrow0.
```

Finite total charge is not enough. A finite measure can concentrate on the
terminal face. For the original unscaled smooth solution, ordinary time
absolute continuity controls fixed physical windows. The Pack-survival problem
uses scale-normalized terminal heat windows, and current inputs do not give a
uniform modulus after normalization.

So charge injection without scale-normalized time absolute continuity does not
prove `TerminalSourceFirstAppearanceTimeSpread.A`.

## Attempt 3: Part/Field Part/Field landing

The third branch is valid as CM witness classification. A retained uncharged
terminal source atom with no positive terminal time thickness can be routed as
a proof-bearing Part/Field failure once it is admitted to the CM witness tree.

That does not prove the public supplier theorem:

```text
OriginalSmoothDataPackSurvival.A.
```

The public-finality route needs to show original smooth data cannot realize the
first Pack face, or else prove the direct finite-Clay exclusion bridge. Merely
classifying the terminal atom as class exit repeats the underpaid public bridge.

## Result

`TerminalSourceFirstAppearanceTimeSpread.A` is not proved.

The pass isolates the next smaller non-alias theorem:

```math
\boxed{
ScaleNormalizedTerminalChargeTimeAC.A
}
```

or in first-birth language:

```math
FirstBirthChargeTimeModulus.A.
```

This theorem would say that any charge ledger capable of receiving a minimal
retained terminal source birth has a terminal time modulus in the same
scale-normalized packet topology. It is stronger than finite charge and
stronger than ordinary unscaled time absolute continuity.

## New live criticism

`NS-LIVE-20260609-098`: `TerminalSourceFirstAppearanceTimeSpread.A` reduces to
scale-normalized terminal time absolute continuity for the receiving charge
ledger. Minimal first appearance localizes the terminal source packet but does
not spread it; charge injection helps only with a scale-normalized terminal
time modulus; Part/Field Part/Field landing remains classification, not public
Clay finality. The next pass must attack
`ScaleNormalizedTerminalChargeTimeAC.A / FirstBirthChargeTimeModulus.A` or find
an independent public-finality bridge before either PDF can be marked final.
