# Navier-Stokes Closure Execution Contract

This note records the execute-now contract for the live Navier-Stokes theorem
route. A turn counts as progress only if it discharges a labeled implication,
replaces a packet of hypotheses by one scalar gate, or verifies one carrier law
on the chosen geometry. Route narration by itself does **not** count.

## Local Packet

The local same-depth route is now

```math
\text{(WEP.2')}
+
\text{(WERS.3Cap-TT)}
+
\text{freezing discharge}
\Longrightarrow
\text{(WERS.2b)/(WERS.2s)}.
```

The pairwise frozen bound `(FCP.4)` is already the single-pair corollary of the
operator route `(WERS.3Cap-TT)`, and the cap-graph summation `(FCP.5)` is
already discharged as `(FCP-graph)`. So the only local scalar gate that still
has to be verified on the chosen carrier is

```math
\varepsilon_j^{freeze}
\le
c\,2^{-2j},
\tag{EXEC-L}
```

with `\varepsilon_j^{freeze}` defined in
[frozen-cap-pair-bilinear-form-lemma.md](/Users/thomasbirnie/Documents/Research-Consolidation/problems/navier-stokes/theorem-construction/frozen-cap-pair-bilinear-form-lemma.md)
by `(FCP.3u)`.

## Reserve Sign Packet

The reserve signed defect route now counts as progress only when the cap-graph
margin is made positive. The scalar gate is

```math
m_j^{sign}
:=
d_j^{diag}-C_{\mathrm{edge}}\Lambda_j\Sigma_j^{edge}.
\tag{EXEC-S}
```

On a finite-valence angular carrier this sharpens to

```math
m_j^{sign,\rho}
:=
d_j^{diag}-C_{\mathrm{edge}}N_{\mathrm{cap}}\rho_j\Lambda_j.
\tag{EXEC-S'}
```

The reserve sign packet is discharged only when one proves

```math
m_j^{sign}>0
\qquad\text{or, on the angular carrier,}\qquad
m_j^{sign,\rho}>0.
\tag{EXEC-S+}
```

That is exactly the block-Gershgorin / diagonal-dominance test in
[capwise-signed-defect-positivity-theorem-candidate.md](/Users/thomasbirnie/Documents/Research-Consolidation/problems/navier-stokes/theorem-construction/capwise-signed-defect-positivity-theorem-candidate.md).

## Reserve Dynamic Packet

The reserve dynamic route is not an exact telescoping shell flux law. It is a
weighted boundary-transfer problem. The only dynamic quantity that counts as
live progress on the strong route is the boundary-transfer coefficient

```math
\beta_J(\eta)
:=
\eta(1+C_B)+C_\eta C_C\,\Gamma_J.
\tag{EXEC-D}
```

Together with the high-high tail estimate `(CNCR.3e)`, the dynamic reserve
packet is discharged when one proves

```math
\big|\mathcal T^{bdry}_{\ge J}\big|
\le
\beta_J(\eta)
\sum_{j\ge J} w_{j-J}\kappa_j\mathcal E_j
+
C_\eta o_J(1),
\qquad
\beta_J(\eta)<1
\text{ for large }J.
\tag{EXEC-D+}
```

So the remaining dynamic work is exactly: verify `(CNCR.3e)` and force
`\beta_J(\eta)` below the absorption threshold on the chosen carrier.

There is also a weaker honest endpoint on an averaged ledger. Define

```math
\overline{\Gamma}_J
:=
\frac1{T_J}\int_0^{T_J}\Gamma_J(t)\,dt,
\qquad
\overline{\mathcal T}^{bdry}_{\ge J}
:=
\frac1{T_J}\int_0^{T_J}\mathcal T^{bdry}_{\ge J}(t)\,dt,
\qquad
\overline{\mathcal D}_{\ge J}
:=
\frac1{T_J}\int_0^{T_J}\sum_{j\ge J}w_{j-J}\kappa_j\mathcal E_j(t)\,dt,
\qquad
\overline{\beta}_J(\eta)
:=
\eta(1+C_B)+C_\eta C_C\,\overline{\Gamma}_J.
\tag{EXEC-Davg}
```

The weak dynamic reserve packet is discharged when one proves the averaged
boundary-transfer estimate

```math
\big|\overline{\mathcal T}^{bdry}_{\ge J}\big|
\le
\overline{\beta}_J(\eta)\,\overline{\mathcal D}_{\ge J}
+
C_\eta o_J(1),
\qquad
\overline{\beta}_J(\eta)<1
\text{ for large }J.
\tag{EXEC-Davg+}
```

So the pointwise coefficient `\beta_J(\eta)` belongs only to the strong route,
while the weak shadow-time / occupancy route closes only the averaged
coefficient `\overline{\beta}_J(\eta)`.

## Execution Rule

The live route is now reduced to three scalar gates:

```math
\varepsilon_j^{freeze},
\qquad
m_j^{sign},
\qquad
\beta_J(\eta)\ \text{or}\ \overline{\beta}_J(\eta).
```

Work should only be reported as theorem progress when at least one of the
following happens:

1. `(WERS.3Cap-TT)` is proved on the chosen carrier, hence `(FCP.4)` is closed.
2. `\varepsilon_j^{freeze}` is forced onto the `2^{-2j}` ledger.
3. `m_j^{sign}` is proved positive.
4. `(CNCR.3e)` is proved and either the strong coefficient `\beta_J(\eta)` or
   the averaged coefficient `\overline{\beta}_J(\eta)` is forced below the
   corresponding absorption threshold.

Everything else is bookkeeping, source recovery, or route hygiene.

The clean bundling theorem for those three gates is now recorded separately in
[transported-phase-space-selector-theorem-candidate.md](/Users/thomasbirnie/Documents/Research-Consolidation/problems/navier-stokes/theorem-construction/transported-phase-space-selector-theorem-candidate.md).
That note is reserve-only and does not change the carrier ontology; it bundles
the remaining work as one selector/localizer theorem candidate on top of the
classical carrier.
Within that selector packet, the local and sign sides are now reduced to
stopping-time and Gershgorin consequences, while the only genuinely bespoke
remaining theorem input is the transport-decorrelation / nonshadowing burden,
now split there into a strong bad-set route and a weaker occupancy route. The
Lagrangian nonshadowing specialization `(TPS.4h)`-`(TPS.4i)` remains the strong
gate, while the oriented pair-gap / derived-label criteria `(TPS.4j)`-`(TPS.4q)`
and coarea/transversality `(TPS.4x)`-`(TPS.4aa)` now feed the weaker
shadow-time / time-averaged overlap endpoint unless supplemented by a
no-return theorem. The strong mechanism is measure-linearized transverse
expansion `(TPS.4r)`-`(TPS.4w)` or any equivalent package, such as
`TPS-strain-bundle`, that proves `(TPS.4i)` directly. The normalized family
theorem `(TPS.4ai)`-`(TPS.4am)` therefore now packages one strong bad-set
endpoint and one weak shadow-time endpoint, rather than one common bad set with
three equal mechanisms. The conservative primary target inside that family is
now the named good-set theorem `TPS-ns-good-set`, which bundles measurable
pairwise linearization with either strong transverse expansion or weaker coarea
control on active pairs. Scalar selector labels are now explicitly treated as
derived corollaries, chart refinements, or pair-gap potentials, not as
primitive dynamic data. The remaining NS-specific burden inside the strong
route is now further reduced to the bundle strain lower bound `(GS.15)`, while
the transverse derivative lower bound `(GS.21)` is the reserve coarea /
occupancy route unless paired with an extra no-return input.
The primary strain-side dynamic route is now the named packet
[tps-strain-bundle-packet.md](/Users/thomasbirnie/Documents/Research-Consolidation/problems/navier-stokes/theorem-construction/tps-strain-bundle-packet.md),
which realizes the `(GS.15)` branch as a bundle-localized strain theorem on
the transported transverse bundle. The reserve alternative remains the
separation-map derivative bound `(GS.21)`, but only as a coarea / occupancy
route unless it is strengthened by an extra no-return input.
There is now also a weaker direct endpoint packet
[tps-shadow-time-budget-packet.md](/Users/thomasbirnie/Documents/Research-Consolidation/problems/navier-stokes/theorem-construction/tps-shadow-time-budget-packet.md):
it does not prove the existential bad-set theorem, but it is the weakest
currently honest route that acts directly on the time-averaged packet-overlap
side. So the dynamic hierarchy is:

1. weak endpoint route: shadow-time budget `\Rightarrow` time-averaged overlap collapse;
2. primary strong route: `TPS-strain-bundle`;
3. reserve weak route: `(GS.21)` / coarea occupancy;
4. hybrid bridge: coarse-flow pair-gap + HFG deviation control.

More precisely, the corrected weak-endpoint coarse theorem now needs:

```math
\text{coarea-in-time strip speed lower bound}
\quad+\quad
\text{packet-decay scale condition }2^{J/2}\sigma_J\to\infty
\quad+\quad
\delta_J=o(\sigma_J).
```

That is the exact mathematically honest replacement for the earlier overstrong
shadow-time sketch.

There is now also one direct bridge back to the Euclidean high-frequency
package: the flow-comparison estimate in
[tps-high-frequency-tail-to-coarse-flow-deviation-bridge.md](/Users/thomasbirnie/Documents/Research-Consolidation/problems/navier-stokes/theorem-construction/tps-high-frequency-tail-to-coarse-flow-deviation-bridge.md)
shows that a time-integrable high-frequency velocity tail, and in particular
the dyadic gain package `HFG`, forces the actual/coarse selector-flow
deviation `\delta_J` to be small on the same interval.
