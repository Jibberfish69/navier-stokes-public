# Single-Lobe Source Carrier Direct Test

Date: 2026-06-20

## Status

Direct test complete.  `SingleLobeSourceCarrier.A` is not installed by the
current source-mode, selector-stability, single-bubble, nodal-zone, finite-mass,
or bounded-overlap inputs.

The target asks the original native selected positive source carrier to live on
one sign lobe of a mode test.  The current inputs do not force that.  They allow
one stable selected carrier to straddle the mode nodal set while carrying
positive source away from the nodal zone on both sides.

## 1. Target under test

Let

```math
q_m(P)
:=
\int_{Q(P)}
\mathcal N^{loc}_{preCauchy}(u;P)\,dxdt,
\qquad
d\sigma_m^+(P):=[q_m(P)]_+,
\qquad
|\psi_m(P)|\le1.
\tag{SLSC.1}
```

For \(0<\kappa<1\), `SingleLobeSourceCarrier.A` is the statement

```math
\boxed{
\exists\,\varepsilon_m\in\{-1,1\}:
\sum_{P:\varepsilon_m\psi_m(P)<\kappa}
d\sigma_m^+(P)
\le
\operatorname{Legal}^{single}_{m,\kappa}+o_m(1).
}
\tag{SLSC.2}
```

This is stronger than nodal-zone evacuation.  It pays the whole wrong sign lobe
for the selected positive source carrier, not only the small-mode region.

## 2. Stable one-carrier countermodel

Let the selected carrier be one stable packet family

```math
F_m^{src}=\{P_-,P_0,P_+\},
\tag{SLSC.3}
```

with mode values

```math
\psi_m(P_-)=-1,
\qquad
|\psi_m(P_0)|<\kappa,
\qquad
\psi_m(P_+)=1.
\tag{SLSC.4}
```

Put positive native source only on the two non-nodal end packets:

```math
q_m(P_-)=A,
\qquad
q_m(P_0)=0,
\qquad
q_m(P_+)=A,
\qquad
A>0.
\tag{SLSC.5}
```

Then the nodal-zone source is zero:

```math
\sum_{|\psi_m(P)|<\kappa}[q_m(P)]_+=0.
\tag{SLSC.6}
```

The negative-mode sink is also zero, because all nonzero source in `(SLSC.5)` is
positive:

```math
\sum_{\psi_m(P)\le-\kappa}[-q_m(P)]_+=0.
\tag{SLSC.7}
```

But either orientation leaves one end packet outside the positive lobe:

```math
\inf_{\varepsilon\in\{-1,1\}}
\sum_{\varepsilon\psi_m(P)<\kappa}
[q_m(P)]_+
=A.
\tag{SLSC.8}
```

This violates `(SLSC.2)` unless \(A\) is charged to a new legal term.  The model
has finite source mass and bounded overlap.  It can also be a stable selected
family: the selector always chooses the same connected carrier \(F_m^{src}\).

Thus selector stability does not imply single-lobe concentration.  It can
stabilize a carrier that crosses both sign lobes.

## 3. Why single-bubble separation does not prove it

`SingleBubbleSeparation.A` prevents two comparable selected bubbles for one
source weight.  The countermodel above can be one selected bubble whose support
crosses a mode nodal surface.  The failure is not two selected bubbles.  It is
one selected source carrier with source mass on both sign sides of the chosen
mode.

Equivalently, let the selected carrier have one graph component and let
\(\psi_m\) change sign along that component.  Source mass can sit on the two
ends while the packets near the nodal crossing carry no source.  Then
`NodalZoneSourceEvacuation.A` and `SingleBubbleSeparation.A` both hold, while
`SingleLobeSourceCarrier.A` fails by `(SLSC.8)`.

## 4. Exact sufficient inequality

The exact one-line inequality that proves single-lobe concentration is a
source-weighted mode-deficit bound:

```math
\boxed{
\inf_{\varepsilon\in\{-1,1\}}
\sum_P
\left(1-\varepsilon\psi_m(P)\right)
[q_m(P)]_+
\le
\operatorname{Legal}^{def}_{m}+o_m(1).
}
\tag{SLSC.9}
```

Indeed, on the bad set

```math
B_{\varepsilon,\kappa}
:=
\{P:\varepsilon\psi_m(P)<\kappa\},
\tag{SLSC.10}
```

one has

```math
1-\varepsilon\psi_m(P)>1-\kappa.
\tag{SLSC.11}
```

Therefore `(SLSC.9)` gives

```math
\sum_{P\in B_{\varepsilon_m,\kappa}}[q_m(P)]_+
\le
{1\over 1-\kappa}
\left(
\operatorname{Legal}^{def}_{m}+o_m(1)
\right).
\tag{SLSC.12}
```

This is `(SLSC.2)` with

```math
\operatorname{Legal}^{single}_{m,\kappa}
:=
{1\over 1-\kappa}\operatorname{Legal}^{def}_{m}.
\tag{SLSC.13}
```

So

```math
\boxed{
\text{SourceWeightedModeDeficit.A}
\Longrightarrow
\text{SingleLobeSourceCarrier.A}.
}
\tag{SLSC.14}
```

where `SourceWeightedModeDeficit.A` is `(SLSC.9)`.

## 5. Moment form of the same condition

Let

```math
M_m^+
:=
\sum_P[q_m(P)]_+,
\qquad
I_m
:=
\sum_P\psi_m(P)[q_m(P)]_+.
\tag{SLSC.15}
```

Then `(SLSC.9)` is equivalent to

```math
M_m^+-|I_m|
\le
\operatorname{Legal}^{def}_{m}+o_m(1).
\tag{SLSC.16}
```

The two-lobe countermodel has

```math
M_m^+=2A,
\qquad
I_m=0,
\qquad
M_m^+-|I_m|=2A.
\tag{SLSC.17}
```

Thus the exact missing information is not finite mass, bounded overlap, or a
stable selector.  It is near-maximal alignment of the positive source measure
with one orientation of the mode.

## 6. Geometric sufficient route

A geometric route can also prove `(SLSC.2)`.  It must supply both a source-size
bound near the mode nodal crossing and a no-two-lobe source split:

```math
\boxed{
\text{NodalCrossingSourceEvacuation.A}
+
\text{SourceCarrierSignComponentUniqueness.A}
\Longrightarrow
\text{SingleLobeSourceCarrier.A}.
}
\tag{SLSC.18}
```

`NodalCrossingSourceEvacuation.A` is stronger than ordinary nodal-zone
evacuation.  It must pay source paths that cross from \(\psi_m\ge\kappa\) to
\(\psi_m\le-\kappa\), not merely source located where \(|\psi_m|<\kappa\).

`SourceCarrierSignComponentUniqueness.A` says the retained positive source
carrier has only one source-bearing sign component after nodal-crossing loss is
paid.  This is the geometric version of the deficit bound `(SLSC.9)`.

## 7. Exact reduction

At current input strength,

```math
\boxed{
\text{SingleLobeSourceCarrier.A}
\Leftarrow
\text{SourceWeightedModeDeficit.A},
}
\tag{SLSC.19}
```

or

```math
\boxed{
\text{SingleLobeSourceCarrier.A}
\Leftarrow
\text{NodalCrossingSourceEvacuation.A}
+
\text{SourceCarrierSignComponentUniqueness.A}.
}
\tag{SLSC.20}
```

The first route is an exact measure/moment route.  The second route is a
geometric sign-component route.  Neither is installed by the existing
source-mode package.

## Verdict

`SingleLobeSourceCarrier.A` is a real missing concentration theorem.  The
current notes prove only that source near nodal zones, negative source on a
negative lobe, and selected-family mismatch are separate problems.  They do not
exclude positive source on both sign lobes of one stable selected carrier.

The sharp new supplier is `SourceWeightedModeDeficit.A`, equivalently
\(M_m^+-|I_m|\) being legal.  Without that near-maximal source/mode alignment,
the positive source carrier can remain two-lobed and the reverse source-to-mode
score comparison stays open.
