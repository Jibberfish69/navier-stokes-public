# MPP Retained Volterra Stress Source Visibility Direct Attempt

## Status

`RetainedVolterraStressSourceVisibility.A` is not proved by the current theorem
stack.

This pass tests whether the coherent positive `H^1` stress packet selected by
the Volterra primitive can already be treated as a same-window nonlinear source
event visible to CKN/local energy, to the installed `B_ASAC` face bridge, to a
direct strain-stress exclusion, or to `(LPAS)`.

## Target

The input object is the coherent positive stress model

```math
\tau_{j,\mathrm{model}}^{H^1}(x,t):= b_j(t)\Phi(x,t),
\qquad b_j(t)\ge 0,
```

which is selected from

```math
T_r(x,t)
=
\int_0^{r/c_1}
\chi_{mid}(\log\ell)\tau_\ell^{H^1}[u](x,t)\,\frac{d\ell}{\ell}.
```

The desired visibility theorem would have to produce one certified landing:

1. a CKN/local-energy carrier that dominates the selected source on the same
   terminal windows and has a terminal modulus;
2. a `B_ASAC` source-residue packet satisfying the installed face-entry
   hypotheses;
3. a direct exclusion of sustained strain-stress alignment;
4. or direct `(LPAS)`.

## Stress density is not yet source density

The Volterra packet gives a positive `H^1` stress/energy density.  The installed
source-wall and `B_ASAC` machinery consumes a different object: the selected
native positive source current

```math
\left[\langle S_{<j}^{loc} w_j,w_j\rangle\right]_+.
```

Those objects are related by the shell energy balance, but they are not
identical.  A packet can carry high-frequency `H^1` stress without the current
ledger having proved that this stress was produced or replenished by a
same-window positive source event.  Turning stress visibility into source
visibility therefore needs a production theorem, not just a relabeling.

## CKN/local-energy visibility test

The current CKN/local-energy surfaces provide raw finite local-energy and
pressure carriers, plus moving-cylinder admissibility.  The checked
`QuantitativeSourceDissipationAbsoluteContinuity.A` and
`SelectedSourceDissipationTether.A` attempts split the missing payment into:

```text
SelectedSourceDissipationTether.A
+
UniformTerminalCKNCarrierAC.A.
```

The first statement is not installed because CKN/local energy does not
dominate the one-sided selected positive source marginal after active selection
and positive-part extraction.  The second is not installed because finite
carrier mass permits terminal concentration of the form

```math
g_m(s)=m\,1_{(-1/m,0]}(s).
```

The coherent Volterra stress packet does not add either missing input.  It
gives the packet whose source production must be explained; it does not prove
same-window source domination by the CKN carrier or a uniform terminal modulus
for that carrier.

So the CKN/local-energy visibility route is not installed.

## `B_ASAC` face-entry test

The installed theorem

```text
TerminalStrainAlignmentFaceBridge_{B_ASAC}.A
```

consumes a specific terminal object:

```text
selected terminal strain-aligned B_ASAC atom
+ terminal heat-time support
+ paid legal/projected/cutoff exits removed
+ finite and non-Zeno donor exits removed
+ ZeroHeatTimeSourceResidue.A.
```

The Volterra stress packet is not yet proved to be such an atom.  It is a
coherent positive stress/readout packet.  It still lacks the bridge from
stress density to native source residue, the `B_ASAC` production clauses, the
zero heat-time source-residue hypothesis, and the paid-exit bookkeeping.

Thus the installed face bridge is available only after a production theorem
has turned the retained Volterra stress packet into the right terminal
source-residue object.

## Strain-stress alignment test

The direct `B_r` route would close before Cauchy if sustained alignment between
the far-corona strain `\widetilde\Sigma_r` and the accumulated stress envelope
`T_r` were excluded.  Current ASAC and active-alignment notes pay selected
alignment terms after a source-wall atom has been formed.  They do not prove a
general sign, angle, or direction decorrelation theorem for the coherent
Volterra stress envelope.

So direct strain-stress alignment exclusion is not installed.

## LPAS fallback

The lower-prefix active-square theorem remains the direct analytic fallback:

```math
\int_0^T
\sum_{j\ge N}
\mathcal P_j^\downarrow(t)\,2^{-j}D_j(t)^2\,dt
\le
\nu\int_0^T D_N(t)\,dt+C_*2^{-2\delta N}.
```

The installed `lower-prefix-active-square-theorem.md` records that the current
upper-tail queue, crude prefix collapse, and Young/Cauchy factorization do not
prove it.  The source-visibility pass does not add a proof of `(LPAS)`.

## What the attempt actually exposes

The missing theorem is a production dichotomy for the retained terminal
Volterra stress packet.

On a heat-scale window, the shell energy balance has the form

```math
E_j'(t)+c\nu D_j(t)\le F_j(t)+L_j(t),
```

where `F_j` is the same-window native positive source/current term and `L_j`
is legal loss.  To make the coherent `H^1` stress packet source-visible, the
proof must show that retained terminal stress cannot persist as an unpaid
packet.  It must be forced into one of the following outcomes:

1. same-window positive source production `F_j` strong enough to create the
   selected source/residue packet;
2. legal, projected, cutoff, pressure, donor, or earlier-slice payment already
   accounted for in the ledger;
3. a terminal dissipation/CKN modulus strong enough to kill the packet;
4. a Pack/Part/Field face failure;
5. direct `(LPAS)`.

The current theorem stack has not installed that dichotomy.  Without it,
coherent positive Volterra stress is only a terminal stress packet, not yet a
source-visible terminal obstruction.

## Verdict

`RetainedVolterraStressSourceVisibility.A` is reduced, not proved.

The exact next target is:

```math
\textbf{RetainedVolterraStressProductionDichotomy.A}.
```

It must prove that a retained coherent positive `H^1` Volterra stress packet on
terminal heat-scale windows either produces a same-window native positive
source/residue event, is paid by an installed legal or earlier-slice ledger, is
killed by a terminal CKN/dissipation modulus, lands in a concrete
Pack/Part/Field face failure, or proves `(LPAS)` directly.

## Closure impact

The current chain becomes:

```math
\text{RetainedVolterraStressSourceVisibility.A}
\Longleftarrow
\text{RetainedVolterraStressProductionDichotomy.A}.
```

This does not close `(LPAS)`, `(FCTS)`, `(EP)`, positive affine endpoint mass,
the retained affine quotient route, `(L-Flux)`, retained tail input, Part-row
compactness, or PDF finality.
