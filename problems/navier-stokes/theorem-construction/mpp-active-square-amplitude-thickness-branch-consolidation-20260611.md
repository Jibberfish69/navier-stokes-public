---
ns_viewer:
  theorem_id: active-square-amplitude-thickness-branch-consolidation-20260611
  status: active-square-branch-consolidated-to-residual-source-balanced-lpas-cts-or-stronger-source-depletion
  proof_role: forward_positive_active_square_branch_consolidation
  logical_landing_node: cone_payment_static_hiding_and_flux_maximization
  edge_effect: "Consolidates the two LPAS escape routes exposed by the global-drain test. Active-shell amplitude normalization is not supplied by smoothness, first-moment dissipation, Volterra selection, or fixed-shell damping; terminal pulse thickness is not supplied by finite source mass or minimality. Square-source control is a conditional bridge only, and active-shell source normalization is an alias for the same source-control primitive. The branch is now reduced to signed eigendirection/trilinear cancellation before absolute values, a source-time concentration cost, or residual/source-balanced LPAS/CTS/FCTS/Car."
  upstream_origin:
    - problems/navier-stokes/theorem-construction/mpp-lower-prefix-active-square-global-drain-direct-test-20260611.md
    - problems/navier-stokes/theorem-construction/shell-amplitude-gain-active-interval-result.md
    - problems/navier-stokes/theorem-construction/active-square-control-blocked-by-square-source.md
    - problems/navier-stokes/theorem-construction/mpp-volterra-selector-amplitude-normalization-direct-attempt-20260609.md
    - problems/navier-stokes/theorem-construction/mpp-terminal-time-thickness-minimal-atom-morrey-orlicz-reentry-20260609.md
    - problems/navier-stokes/theorem-construction/mpp-strain-sign-cancellation-weighted-lifted-remainder-reentry-20260609.md
  downstream_consequence: "Do not rerun amplitude-normalization, selector-amplitude, source-normalization, square-source, or bare terminal-thickness labels without one of the named mechanisms. The next forward-positive work must attack SignedTrilinearCancellation.A, ActiveEigendirectionDecorrel.A, SourceTimeConcentrationCost.A, ResidualSourceBalancedLPAS.A, or ResidualDirectCTSOrFCTS.A."
---

# MPP Active-Square Amplitude/Thickness Branch Consolidation

Date: 2026-06-11

Status: forward-positive branch consolidation after the LPAS global-drain test.

## 0. Reason For This Note

The LPAS test exposed the real active-square bill:

```text
P_j^down 2^(-j)D_j(t)^2.
```

The global energy law pays a first moment:

```text
int D_j(t)dt.
```

The remaining question is whether the active square can be paid by either:

```text
amplitude normalization
```

or

```text
pulse/time-thickness.
```

The existing theorem notes already test both families. This note consolidates
the result so the loop does not keep renaming the same obstruction.

## 1. Amplitude Normalization Does Not Follow From The Current Inputs

The desired amplitude gain has the shape

```text
E_j(t) <= C 2^(-j/2)
```

on active windows, or an equivalent bound strong enough to make

```text
int_I 2^(-j)D_j(t)^2 dt
```

barrier-payable.

The fixed-shell amplitude identity blocks this from smoothness or shell localization
alone. At a fixed shell, a divergence-free shell profile can be multiplied by a
large amplitude. The shell remains smooth and localized, while `E_j` grows with
the square of that amplitude.

The scalar shell law also does not cap the amplitude:

```text
E_j'(t) + c nu 2^(2j)E_j(t) <= F_j(t).
```

A source term with

```text
F_j(t)=c_s nu 2^(2j)A
```

can sustain `E_j=A` in the scalar model. Damping only wins after the source amplitude has been
controlled.

So active-shell amplitude normalization reduces to a source theorem, not to
viscosity plus first-moment drain.

## 2. Selector Visibility Has The Wrong Direction

The Volterra/retained-stress selector sees the bad packet through the
far-corona accumulated stress object. That is detection information.

It does not upper-bound the active amplitude. In a coherent packet model,
increasing amplitude increases both the readout and the active-square cost.
Selection becomes easier, not harder.

Thus:

```text
selected by the retained stress readout
```

does not imply

```text
small active-square payment.
```

The selector-amplitude branch returns to a source/amplitude theorem.

## 3. Pulse Thickness Also Needs A New Cost

The terminal pulse-thickness route would pay LPAS by preventing the active shell
from concentrating its first-moment drain into a short time interval.

The obstruction is the explicit zero-thickness concentrating sequence:

```text
g_m(s) = m 1_{(-1/m,0]}(s).
```

It satisfies `int g_m(s) ds = 1` for every `m`, while for every fixed
`\tau>0` its support lies inside `(-\tau,0]` once `m>1/\tau`.  Thus it weakly
converges to a terminal time atom. Finite `L^1` mass alone does not create a
positive lower bound on time thickness.

Orlicz, Morrey, super-`L^1`, or reverse-Holder control closes this branch
if produced. The terminal atom or minimality hypothesis does not produce those
controls by itself.

So pulse thickness reduces to a real source-time concentration cost:

```text
positive source mass in a slab of thickness tau
=> cost blowing up as tau -> 0.
```

That cost is not currently installed.

## 4. Signed Route Before Absolute Values

There is one non-positive way around active-square control: prove a signed
cancellation before the proof takes absolute values.

The live signed object is the weighted lifted remainder

```text
G_N^{lift,sigma}.
```

The bare dyadic exchange cancels before terminal weights, cutoffs, selected
windows, and positive-part extraction. After those operations, the principal
term is a strain readout. It can be positive when the active packet aligns with
an expanding eigendirection.

Therefore signed cancellation reduces to:

```text
ActiveEigendirectionDecorrel.A
```

or an equivalent theorem saying selected active packets cannot spend terminal
weighted time aligned with expanding strain directions.

Without that, taking absolute values returns to the same active-square
residual-tail bill.

## 5. Consolidated Forward-Positive Children

The active-square branch should now be routed only through these mechanisms:

```text
SquareSourceEstimate.A
```

This is a conditional bridge. The existing shell-flux test shows that a
universal square-source estimate fails by cubic amplitude scaling at a fixed
shell. The bridge becomes usable only after a deeper source-control mechanism.
The phrase

```text
ActiveShellSourceNormalize.A
```

is the normalization alias for that mechanism; the existing supplier-cycle
audit shows it is not an independent theorem. The non-alias route is:

```text
SignedTrilinearCancellation.A
```

for the nonlinear source feeding the active shell, or residual active-square /
LPAS control.

```text
ActiveEigendirectionDecorrel.A
```

Prove the signed strain/decorrelation route before absolute values.

```text
SourceTimeConcentrationCost.A
```

Prove a coercive cost for squeezing positive source mass into terminal time
slabs.

```text
ResidualSourceBalancedLPAS.A
```

Prove the residual lower-prefix active-square theorem directly.

```text
ResidualDirectCTSOrFCTS.A
```

Prove the residual continuum accumulated-stress theorem without reducing to
LPAS.

## 6. Result

The amplitude/thickness split is now consolidated.

The loop should not spend another pass on:

```text
active-shell amplitude normalization from energy,
selector-amplitude normalization,
bare damping,
or terminal thickness from finite L1 mass.
```

Those are exhausted first-moment routes. The remaining forward-positive work is
the named mechanism work above, with `SquareSourceEstimate.A` and
`ActiveShellSourceNormalize.A` treated as conditional bridge/alias surfaces
rather than independent endpoints.
