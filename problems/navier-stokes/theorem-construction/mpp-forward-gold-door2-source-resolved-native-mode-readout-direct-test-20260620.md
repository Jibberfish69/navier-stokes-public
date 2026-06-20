# Door 2 Source-Resolved Native Mode Readout Direct Test

Date: 2026-06-20

## Status

Direct child test complete.  `SourceResolvedNativeModeReadout.A` is not
installed from the current zero-flux Zeno inputs.

The result is a sharper reduction.  A signed modulation-mode projection does
not by itself force the proof's native scalar positive source carrier.  It
does so only after a sign-coherent same-shadow identity has been proved on the
selected packets.

## 1. Target under test

In the normalized Door 2 modulation equation, write

```math
\partial_sU-\nu\Delta U+(U\cdot\nabla)U+\nabla P
=
F^{mod}+F^{src}+\operatorname{div}M^{def},
\tag{SMR.1}
```

with

```math
F^{mod}
=
\sum_{\alpha} b_\alpha(s)G_\alpha U.
\tag{SMR.2}
```

Let \(\Psi_i(U)\) be finite dual modulation tests.  The signed mode projection
is

```math
p_i(s):=
\left\langle F^{mod}(s),\Psi_i(U(s))\right\rangle.
\tag{SMR.3}
```

The desired readout is a same-selected-family identity of the form

```math
\sum_{P\in\mathcal F_m^{sel}}
\int_{Q(P)}
\mathcal N^{loc}_{preCauchy}(u;P)\,\psi_i(P)\,dxdt
=
p_i-\operatorname{Legal}_{m,i}-o_m(1),
\tag{SMR.4}
```

where \(\psi_i(P)\) is the packet realization of the test \(\Psi_i\).

The native carrier available to the gold route is not the signed quantity in
`(SMR.4)`.  It is

```math
\mu^+_{src,m}
=
\sum_{P\in\mathcal F_m^{sel}}
\int_{Q(P)}
\left[
\mathcal N^{loc}_{preCauchy}(u;P)
\right]_+\,dxdt.
\tag{SMR.5}
```

Thus `SourceResolvedNativeModeReadout.A` must bridge `(SMR.4)` to `(SMR.5)`.

## 2. Conditional positive-carrier implication

Assume the mode tests are normalized by

```math
|\psi_i(P)|\le 1.
\tag{SMR.6}
```

Assume the signed mode identity `(SMR.4)`.  Also assume the selected shadow is
sign-coherent for the chosen mode:

```math
\psi_i(P)\ge \kappa_i>0
\quad\text{on the retained source-shadow subfamily},
\tag{SMR.7}
```

and all packets outside that subfamily are paid by legal spill, retained signed
partners, or donor-chain routing.  Then

```math
\sum_{P\in\mathcal F_m^{sel}}
\int_{Q(P)}
\left[
\mathcal N^{loc}_{preCauchy}(u;P)
\right]_+\,dxdt
\ge
\kappa_i
\left[
p_i-\operatorname{Legal}_{m,i}-o_m(1)
\right]_+.
\tag{SMR.8}
```

So a finite mode selector plus `(SMR.8)` would make modulation forcing visible
in the native positive carrier.

This proves the conditional route:

```math
\boxed{
\text{signed mode identity}
+
\text{sign-coherent selected shadow}
+
\text{legal routing of the complement}
\Longrightarrow
\text{SourceResolvedNativeModeReadout.A}.
}
\tag{SMR.9}
```

## 3. Why the bridge is not automatic

The inequality from a signed mode projection to `(SMR.5)` fails without
sign-coherent localization.

Take one packet region where

```math
\psi_i=-1,
\qquad
\mathcal N^{loc}_{preCauchy}=-A,
\qquad
A>0.
\tag{SMR.10}
```

Then the signed mode contribution is positive:

```math
\int
\mathcal N^{loc}_{preCauchy}\,\psi_i\,dxdt
=A\,|Q(P)|,
\tag{SMR.11}
```

but the native positive carrier on that region is zero:

```math
\int
\left[
\mathcal N^{loc}_{preCauchy}
\right]_+\,dxdt
=0.
\tag{SMR.12}
```

Thus a positive signed modulation-mode readout can be carried by a negative
source on the negative side of the test.  The scalar positive carrier does not
see it.

A second failure is cancellation between two selected shadows:

```math
\begin{array}{c|cc}
&\mathcal N^{loc}_{preCauchy}&\psi_i\\
\hline
P_1&A&1\\
P_2&-A&-1
\end{array}
\tag{SMR.13}
```

Both packets contribute positively to the signed mode projection, but only
`P_1` contributes to the scalar positive carrier.  If the terminal selector
keeps `P_2` as the visible modulation shadow while `P_1` is routed into another
donor packet or lost through a lifting/projection defect, the mode readout and
native positive carrier no longer represent the same object.

This is exactly the same structural mismatch as Door 1: the signed shadow is
available before terminal positive-part extraction, while the native carrier is
chosen after localization, lifting, weighting, projection, selector choice, and
positive-part extraction.

## 4. Exact missing pieces

The bridge can be stated as three concrete inputs:

```math
\boxed{
\text{ModeTestCompatibility.A}
}
\tag{SMR.14}
```

The dual mode tests must be legal local pre-Cauchy tests on the same selected
packet family.

```math
\boxed{
\text{ModeSignCoherentShadowLocalization.A}
}
\tag{SMR.15}
```

The selected source-shadow must be partitioned into bounded-overlap pieces on
which the chosen mode test has a retained sign and a lower bound away from zero,
with nodal-zone loss paid by legal or donor ledgers.

```math
\boxed{
\text{ModeProjectedMinimalChainResidueIdentity.A}
}
\tag{SMR.16}
```

The signed mode projection must be identified with the localized signed
pre-Cauchy source on the same selected shadow:

```math
\sum_{P\in\mathcal F_m^{sel}}
\int_{Q(P)}
\mathcal N^{loc}_{preCauchy}(u;P)\,\psi_i(P)\,dxdt
=
\left\langle F^{mod},\Psi_i(U)\right\rangle
-\operatorname{Legal}_{m,i}
-o_m(1).
\tag{SMR.17}
```

The third input is the mode-resolved version of
`MinimalChainProjectedResidueIdentity.A`.  The first two inputs are the extra
mode-test requirements that are invisible in the scalar Door 1 notation.

## 5. Relation to Door 1

Door 1 uses a constant vector stress test.  Door 2 uses modulation tests
\(\Psi_i(U)\), whose packet realization can change sign and can have nodal
sets.  This makes Door 2 strictly more delicate at the source-readout step:
even after the signed same-shadow identity is available, the scalar positive
carrier needs sign-coherent localization.

Thus the exact reduction is

```math
\boxed{
\text{SourceResolvedNativeModeReadout.A}
\Leftarrow
\text{ModeTestCompatibility.A}
+
\text{ModeSignCoherentShadowLocalization.A}
+
\text{ModeProjectedMinimalChainResidueIdentity.A}.
}
\tag{SMR.18}
```

At current input strength,

```math
\text{ModeProjectedMinimalChainResidueIdentity.A}
\Longrightarrow
\text{MinimalChainProjectedResidueIdentity.A}
\tag{SMR.19}
```

on the same selected shadow, but the converse is not automatic because a
constant-vector identity does not control sign-changing mode tests.

## Verdict

`SourceResolvedNativeModeReadout.A` is not an independent closure theorem from
current inputs.  It reduces Door 2's mode forcing visibility to a
mode-compatible same-shadow source identity plus sign-coherent localization.

The non-aliased surviving bridge is:

```math
\boxed{
\text{ModeTestCompatibility.A}
+
\text{ModeSignCoherentShadowLocalization.A}
+
\text{ModeProjectedMinimalChainResidueIdentity.A}.
}
\tag{SMR.20}
```

Without that bridge, a signed modulation readout can remain positive while the
native scalar positive pre-Cauchy carrier records no corresponding source.
