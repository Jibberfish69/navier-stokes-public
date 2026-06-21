# MPP Volterra-Selected Source-Balanced Pulse Reserve Spend Direct Attempt

## Status

`VolterraSelectedSourceBalancedPulseReserveSpend.A` is not proved by the
current theorem stack.

This pass tests the source-balanced refill branch left by the retained Volterra
stress production dichotomy.  The extra information is that the terminal pulse
is selected by the retained Volterra stress readout, hence by the lower-prefix
active `H^1` stress geometry.  The question is whether that extra selection
forces a finite same-ledger payment.

## Target

For a terminal heat-scale active packet selected by the retained Volterra
stress readout, prove that source-balanced refill spends one of:

1. a same-ledger active-square or lower-prefix reserve;
2. a `B_ASAC` source-residue packet satisfying the installed face-entry
   hypotheses;
3. a terminal CKN/dissipation modulus;
4. direct `(LPAS)`;
5. or a concrete Part/Field Part/Field landing strong enough to feed the
   first-exit survival bridge.

## Normal form

The source-balanced packet has shell balance

```math
E_j'(t)+c\nu D_j(t)\le F_j(t)+L_j(t),
```

and on the retained refill branch

```math
F_{j,\mathrm{model}}(t):=c\nu D_j(t)
```

on terminal heat-scale windows.  This maintains the active shell against
viscous damping.

The Volterra selection says that the same packet is visible to the accumulated
stress readout.  In dyadic form the associated lower-prefix weight is

```math
\mathcal P_j^\downarrow(t)
=
\sum_{k\le j-C_1}E_k(t),
```

and the direct LPAS-type payment would be

```math
\int_I
\mathcal P_j^\downarrow(t)\,2^{-j}D_j(t)^2\,dt.
```

So the Volterra-specific question is whether being selected by the retained
stress readout supplies a scale-normalized square payment, rather than only
the first-moment source balance.

## Branch 1: lower-prefix active-square payment

The desired theorem would be a selected-family version of `(LPAS)`:

```math
\sum_{(j,I)\in\mathcal V_N}
\int_I
\mathcal P_j^\downarrow(t)\,2^{-j}D_j(t)^2\,dt
\le
\varepsilon\nu\int D_N
+C2^{-2\delta N},
```

where `\mathcal V_N` is the Volterra-selected terminal packet family.

Current inputs do not prove this.  The shell balance gives first-moment source
or dissipation mass:

```math
\int_I D_j(t)\,dt,
```

while the payment needs square density:

```math
\int_I 2^{-j}D_j(t)^2\,dt,
```

with the lower-prefix multiplier.  A heat-scale source-balanced pulse can keep
the first moment finite while the square density remains order-one or worse on
the selected normalized window.  The Volterra lower-prefix weight records that
the packet is seen by the accumulated stress readout; it does not by itself
bound the active amplitude.

Thus the Volterra selection does not install the lower-prefix active-square
payment.

## Branch 2: `B_ASAC` source-residue production

The same-window source refill gives weak source visibility.  It does not
automatically produce the `B_ASAC` object needed by the installed face bridge.
That bridge requires:

```text
selected terminal strain-aligned B_ASAC atom,
terminal heat-time support,
paid legal/projected/cutoff exits removed,
finite and non-Zeno donor exits removed,
ZeroHeatTimeSourceResidue.A.
```

The current Volterra-selected pulse has not been proved to satisfy the
`B_ASAC` production clauses or the terminal anti-atom / reverse-Holder
subclass.  The checked `BASACTimeFaceAntiAtom.A` and
`UniformTemporalSourceIntegrability_{p,B_ASAC}.A` reentries show that finite
local `L^1_t` source mass still permits the terminal layer

```math
g_m(s)=m\,1_{(-1/m,0]}(s).
```

So `B_ASAC` production and time-face anti-atom control remain open.

## Branch 3: CKN/dissipation modulus

The CKN route needs both:

```text
SelectedSourceDissipationTether.A
+
UniformTerminalCKNCarrierAC.A.
```

The first is not installed because raw CKN/local energy does not dominate the
selected one-sided source marginal.  The second is not installed because a raw
finite CKN carrier can concentrate at terminal heat time.  Volterra selection
does not add either missing theorem.

So the CKN/dissipation route remains open.

## Branch 4: CM Part/Field landing

Once the source-balanced pulse is admitted as a same-solution terminal
source/residue object, the CM witness tree can type it as Part/Field
support for

```text
Exit(Q):=not Member(Q).
```

That classification is useful, but it is not the same as the public
first-exit survival bridge.  It does not prove that original smooth data cannot
realize the first terminal Part/Field failure unless the no-genuine-exit bridge is
also paid.

## Verdict

`VolterraSelectedSourceBalancedPulseReserveSpend.A` is reduced, not proved.

The Volterra selector adds the lower-prefix stress-readout weight, but the
current theorem stack does not convert that weight into an active-square
payment, a `B_ASAC` time-face anti-atom, a terminal CKN modulus, or a completed
first-exit survival bridge.

The exact next target is:

```math
\textbf{VolterraSelectedLowerPrefixActiveSquarePayment.A}.
```

It must prove a selected-family lower-prefix active-square estimate for
Volterra-selected source-balanced pulses, or produce a genuinely new mechanism
showing why the Volterra selector forces active-shell amplitude normalization.
If it fails, the remaining non-Volterra branches are the already exposed
`BASACTimeFaceAntiAtom.A / UniformTemporalSourceIntegrability_{p,B_ASAC}.A`
and native-source domination/CKN source-tether routes.

## Closure impact

The current chain becomes:

```math
\text{VolterraSelectedSourceBalancedPulseReserveSpend.A}
\Longleftarrow
\text{VolterraSelectedLowerPrefixActiveSquarePayment.A}.
```

This does not close `(LPAS)`, `(FCTS)`, `(EP)`, positive affine endpoint mass,
the retained affine quotient route, `(L-Flux)`, retained tail input, Part-row
compactness, or PDF finality.
