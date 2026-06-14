# MPP Retained Volterra Stress Production Dichotomy Direct Attempt

## Status

`RetainedVolterraStressProductionDichotomy.A` is partially reduced and not
proved in the form needed for CMI finality.

The weak Duhamel split is available: retained terminal high-shell stress cannot
persist on heat-scale windows without either inherited energy from the earlier
side of the window or same-window nonlinear source refill.  The proof-relevant
branch is the refill branch.  That branch is not yet paid by the installed
theorem stack.

## Target

The target left by the source-visibility pass is:

```text
RetainedVolterraStressProductionDichotomy.A
```

For a retained coherent positive `H^1` Volterra stress packet on terminal
heat-scale windows, prove one of:

1. same-window native positive source/residue production;
2. payment by an installed legal, projected, cutoff, pressure, donor, or
   earlier-slice ledger;
3. terminal CKN/dissipation modulus killing the packet;
4. concrete Pack/Part/Field face failure;
5. direct `(LPAS)`.

## Weak Duhamel split

On each selected shell the energy balance has the form

```math
E_j'(t)+c\nu D_j(t)\le F_j(t)+L_j(t),
```

where `F_j` is the native nonlinear active shell source/current and `L_j` is
legal loss.  Since

```math
c_D2^{2j}E_j(t)\le D_j(t)\le C_D2^{2j}E_j(t),
```

Duhamel on a heat-scale window `I_j` gives

```math
E_j(t)
\le
e^{-c\nu2^{2j}(t-s)}E_j(s)
+
\int_s^t e^{-c\nu2^{2j}(t-\tau)}
\big(F_j(\tau)+L_j(\tau)\big)\,d\tau.
```

Thus the inherited part decays across a terminal heat-scale window unless it is
already present at the earlier side of the window, and the renewed part must be
supplied by `F_j+L_j`.

This proves only a weak dichotomy:

```text
retained terminal stress
=> earlier-window inherited stress
   or same-window nonlinear refill
   or legal loss.
```

The weak split does not by itself prove source visibility, Pack survival, or
CMI finality.

## Earlier-window branch

If the packet is inherited from the earlier side of the heat-scale window, the
proof still needs a same-ledger payment.  The installed ledgers remove fixed
earlier selected source slices only after a `B_ASAC` source-residue object has
been produced.  A Volterra `H^1` stress packet is not yet such an object.

Pushing the window backward also cannot be repeated for free.  A backward chain
requires one of:

```text
finite ancestry / refill-tree well-foundedness,
parent concentration or diffuse-charge payment,
or a scale-normalized reserve spent at each refill step.
```

Those are not installed for the Volterra-selected stress packet.  The existing
source-balanced pulse notes record the same obstruction: same-fluid ancestry
and finite first-moment ledgers do not impose a quantized reserve spend on a
diffuse terminal refill cloud.

So the earlier-window branch reduces to a refill/ancestry reserve theorem, not
to closure.

## Same-window nonlinear refill branch

If the packet is renewed on the same terminal window, then `F_j` is active at
heat-scale strength.  This is genuine source visibility in the weak sense: the
stress packet is not passive; it is being maintained by nonlinear source input.

What remains missing is the strong payment.  The current installed stack does
not prove that such source-balanced refill:

```text
spends an active-square reserve,
has a square-source estimate,
has a terminal CKN modulus,
lands in B_ASAC with the installed face-entry hypotheses,
or proves LPAS.
```

The scalar source-balanced model survives the shell law:

```math
F_{j,\mathrm{model}}(t):= c\nu D_j(t)
```

on heat-scale terminal windows.  In that case the nonlinear source replenishes
exactly the amount viscosity dissipates.  This is the already checked
source-balanced pulse wall, now with the extra information that the pulse was
selected by the Volterra stress readout.

The Volterra selection adds the lower-prefix stress weight.  It does not add a
sign, terminal modulus, or finite reserve.  Without a new theorem, the branch
returns to the same scale-normalized active-square/source-pulse obstruction.

## Legal-loss branch

If the renewal is paid by legal loss, then the packet must be explicitly charged
to an installed legal, projected, cutoff, pressure, donor, or earlier-slice
ledger.  The current Volterra packet has not been routed to any such ledger.
The existing pressure/source and ASAC notes already checked the tempting
payments and found no installed source-time modulus or pressure/Leray tether
for the one-sided selected source current.

So legal payment is conditional, not installed.

## CM face branch

A terminal source-balanced refill event can be typed inside the CM witness tree
once it has been admitted as a same-solution terminal source/residue object.
That gives support for

```text
Exit(Q):=not Member(Q)
```

through Pack/Part/Field.  It does not by itself prove the public first-exit
survival theorem from original smooth data.  The bridge still needs either a
reserve spend that prevents the first exit, a no-genuine-exit theorem, or a
checked explanation that the face landing itself excludes the finite Clay
counterexample rather than merely classifying it.

## Verdict

`RetainedVolterraStressProductionDichotomy.A` is not proved in the strong form
needed by the active loop.

The Duhamel split narrows the obstruction: retained Volterra stress is either
inherited through a backward refill/ancestry chain, renewed by same-window
source-balanced nonlinear refill, or paid by a legal ledger.  Current installed
inputs do not close any of those branches for the Volterra-selected packet.

The exact next target is:

```math
\textbf{VolterraSelectedSourceBalancedPulseReserveSpend.A}.
```

It must prove that a source-balanced active pulse selected by the retained
Volterra stress readout spends a same-ledger finite reserve, produces the
`B_ASAC` source-residue hypotheses required by the installed face bridge, gives
a terminal CKN/dissipation modulus, or proves `(LPAS)` directly.  If that
theorem fails, it must split the Volterra-selected refill branch into native
source domination, ancestry/diffuse-parent charge, rigid source-residue
Liouville, or lower-prefix active-square components without reusing those open
targets as conclusions.

## Closure impact

The current chain becomes:

```math
\text{RetainedVolterraStressProductionDichotomy.A}
\Longleftarrow
\text{VolterraSelectedSourceBalancedPulseReserveSpend.A}.
```

This does not close `(LPAS)`, `(FCTS)`, `(EP)`, positive affine endpoint mass,
the retained affine quotient route, `(L-Flux)`, retained tail input, Part-row
compactness, or PDF finality.
