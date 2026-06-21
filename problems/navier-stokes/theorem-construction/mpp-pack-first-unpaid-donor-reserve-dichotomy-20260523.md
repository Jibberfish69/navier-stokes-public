# MPP Pack First-Unpaid Donor Reserve Dichotomy

Date: 2026-05-23

Status: proof-method pivot / conditional reduction; not a closure theorem.

## Target lock

The live Clay-facing target is still

```text
TerminalCMNoExit.A / NoGenuineCMExit.A.
```

The governing program is CM contrapositive class exit:

```text
Exit(Q;O_NS^work) := not Member(Q;O_NS^work).
```

This note works only on the Field-window branch of that no-exit target.  The current
Pack burden is

```text
TerminalPackStrainIntegrabilityNoExit.A,
```

realized as

```text
OriginalSmoothData => ScaleCriticalTreeCarleson.A.
```

The method used here is not another positive source-deletion pass.  It is a
minimal-counterexample/descent argument on the first unpaid donor-reserve
window, combined with reserve double counting.

## Statement

Let `Q` be a retained same-fluid terminal packet candidate satisfying the Pack
face hypotheses, and write the scale-critical donor-refill reserve as

```text
R_N(I) = int_I sum_{k>N} 2^k (sum_{ell>k+4} D_ell(t))^2 dt.
```

Assume the installed parent/residual/legal ledgers available to the Pack-side
route:

- `ParentSquareEmbed.A`;
- `WeightedAdjRes.A`;
- `LocalDonorBalance.A`;
- `EntranceLeafDecay.A`;
- bounded overlap for the selected same-fluid terminal family;
- declared legal-loss ledgers.

Then the following reduction is the sharp Pack-side method statement:

```text
Pack_Q
+ installed parent/residual/legal ledgers
+ TerminalReserveFirstAppearanceCharge.A
=> ScaleCriticalTreeCarleson.A.
```

Equivalently, in contrapositive Pack language,

```text
not ScaleCriticalTreeCarleson.A
=> not Pack_Q
   or not TerminalReserveFirstAppearanceCharge.A.
```

After finite donor trees and legal entrances are paid, the retained
positive-scale branch of `not TerminalReserveFirstAppearanceCharge.A` is the
same live supplier atom currently called `PositiveRemainderDepletion.A` on the
localized pre-Cauchy source carrier.

## Proof attempt

Assume `Pack_Q` and all listed installed ledgers, and suppose
`ScaleCriticalTreeCarleson.A` fails.  Then for some fixed surplus `eta>0` and
for arbitrarily large `N`, there is a terminal interval/window with

```text
R_N(W) > legal_losses_N(W) + o_N(1) + eta.
```

Choose such a window `W` minimal under the terminal past-window order, and
inside it choose the first scale/depth at which the surplus is created.  This is
the proof-method pivot: the object is now the first unpaid creation event, not a
global source-control wall.

Split the reserve in `W` into four pieces:

```text
R_N(W)
= inherited_from_Past(W)
  + first_appearances(W)
  + child_residual(W)
  + legal_losses(W).
```

The inherited parent cloud is controlled by `ParentSquareEmbed.A`.  Minimality
of `W` bounds the past-window reserve by the allowed smaller-window budget, up
to the contraction and legal losses:

```text
inherited_from_Past(W)
<= (1-delta) R_N(Past(W)) + legal_losses_N(W) + o_N(1).
```

The normalized child residual is priced by `WeightedAdjRes.A`.  Legal, boundary,
cutoff, and non-selected terms are already in the declared loss ledger.  Thus
the assumed surplus cannot be inherited, residual, or legal.  It must sit in a
first-created square-reserve contribution:

```text
first_appearances(W) >= c eta
```

for a fixed route constant `c>0`, after the prescribed loss shrinkage.

If `TerminalReserveFirstAppearanceCharge.A` is available, that first-created
reserve is charged.  A charged first appearance is paid inside the same window
ledger, so it cannot produce the selected surplus.

The remaining alternatives are exactly the first-face exits:

1. A finite or non-Zeno donor tree fails to telescope.  This is failure of the
   donor/entrance Pack ledger, hence a Pack-face defect, not a retained Pack
   counterexample.
2. The first-created branch collapses to terminal zero-radius Zeno ancestry.
   The terminal Zeno Pack-out-of-CM correction gives Part-side when original participation remains and true `not Pack_Q` only when that record is absent.
3. A retained positive-scale first-created contribution remains uncharged.
   This is precisely `not TerminalReserveFirstAppearanceCharge.A`, equivalently
   the localized `PositiveRemainderDepletion.A` supplier atom.

Therefore a retained Pack counterexample to `ScaleCriticalTreeCarleson.A` cannot
survive once `TerminalReserveFirstAppearanceCharge.A` is proved.  Without that
charge theorem, the Pack no-exit proof remains open at the first unpaid
positive-scale donor-reserve birth.

## Method readback

The proof method adds real structure: the Pack burden is not a vague
`HeightFluxControl.A` or `BASACTerminalSourceAntiConcentration.A` target.  Those
are ways to prove the first-appearance charge.  The exact retained positive-scale
object is:

```text
TerminalReserveFirstAppearanceCharge.A
```

or, on the source-carrier presentation,

```text
PositiveRemainderDepletion.A.
```

The terminal zero-radius branch is not automatically a Pack-only exit witness.
It is typed first:

```text
terminal zero-radius donor ancestry with a pointwise original-NS record
=> not Part_{N,Q} / (Part, Dead);

terminal zero-radius donor ancestry with no original participation record
=> true not Pack_Q.
```

So the next Pack-side proof attempt attacks the retained positive-scale
first-appearance charge directly, and does not spend the `L^3` translator unless
a separate bridge first proves

```text
FirstReservePulseToCriticalL3.A.
```

## Verdict

This note does not prove `TerminalCMNoExit.A`, `ScaleCriticalTreeCarleson.A`, or
global smoothness.

It proves a sharper conditional reduction:

```text
Pack no-exit at ScaleCriticalTreeCarleson.A
reduces to the first unpaid positive-scale donor-reserve birth.
```

That is the current Pack pressure point after applying the broader proof-method
pass: minimal counterexample first, donor-reserve double counting second, and
CM witness landing throughout.
