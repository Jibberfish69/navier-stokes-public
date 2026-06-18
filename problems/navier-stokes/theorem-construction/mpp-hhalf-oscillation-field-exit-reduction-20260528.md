# MPP H^{1/2} Oscillation Field Exit Reduction

## Status

Conditional reduction. The old unresolved claim was that the pure
`H^{1/2}` shell needed a future "matched-scale control" theorem.  The exact
Field bridge is now supplied by
`mpp-field-coherence-controls-critical-shell-hhalf-20260528.md` together with
`mpp-field-finite-difference-readout-hhalf-20260528.md`:

```math
FieldCoherenceControlsCriticalShell.A.
```

The remaining condition in this note is the same-witness extraction hypothesis
`SameLedgerHHalfExtraction.A`, not an unspecified profile or scale estimate.

## Target

Assume `SameLedgerHHalfExtraction.A` has produced a same-witness dyadic packet on

```math
\mathcal W=(O_{NS}^{work},Q,N,r,\Phi,\mathcal T).
```

The desired Field exit theorem is

```math
HHalfOscillationFieldExit.A:
\quad
Pack_Q(\mathcal W)
\wedge
Part_{N,Q}(\mathcal W)
\wedge
PureOsc_{H^{1/2}}(\mathcal W)
\Longrightarrow
\neg Field_{N,r,Q}(\mathcal W).
```

Here `PureOsc_{H^{1/2}}` means that the selected critical Sobolev defect remains after the `L^3` amplitude-concentration branch is removed. The remaining signal is high-frequency organization on the same material and pressure-viscosity ledger.

## Reduction

Let

```math
v_m:=\chi_{a_m}^{\mathcal W}(t_m)u(t_m)
```

be the same-witness localized packet from the extraction theorem. Suppose dyadic levels `J_m` carry the selected critical shell energy:

```math
2^{J_m}\|P_{J_m}v_m\|_2^2\ge c_0>0
```

or the corresponding normalized terminal quantity diverges.

Choose a matched physical scale

```math
r_m:=2^{-J_m},
\qquad
A_m:=\{h:c_A r_m\le |h|\le C_A r_m\}.
```

The dyadic shell packet is controlled by matched-scale finite-difference energy:

```math
2^{J_m}\|P_{J_m}v_m\|_2^2
\le
C_{\mathrm{LP}}r_m^{-1}\fint_{A_m}\|v_m(\cdot+h)-v_m(\cdot)\|_2^2\,dh
```

The reverse inequality is available only after the same fixed-annulus
Littlewood--Paley localization is imposed on the packet; it is not used as a
profile assumption.

Therefore the pure `H^{1/2}` oscillatory branch is a neighboring-scale coherence signal. It is exactly the kind of object that Field is supposed to control.

The installed bridge used here is the exact matched finite-difference
implication:

```math
FieldCoherenceControlsCriticalShell.A:
\quad
Field_{N(J),r_J,Q}(\mathcal W)
\Longrightarrow
r_J^{-1}\fint_{A_J}\|v(\cdot+h)-v(\cdot)\|_{L^2}^2\,dh
\le
C\,\mathfrak C_{N(J),r_J,Q}(\mathcal W)
\Longrightarrow
2^J\|P_J(\chi_a^{\mathcal W}u)\|_2^2
\le
C\,\mathfrak C_{N(J),r_J,Q}(\mathcal W)
```

for `r_J=2^{-J}` and a depth `N(J)` high enough to read the selected shell.
The first implication is the Field finite-difference readout; the second is the
annular Littlewood-Paley finite-difference estimate above.

Once this theorem is installed, the branch closes: retained Pack keeps the shell on the material packet, retained Part keeps the pressure-viscosity law active, and the remaining pure oscillatory terminal defect exceeds the matched Field coherence bound. The exit face is therefore Field.

## Physical / ontological explanation

The amplitude branch means the velocity becomes large on shrinking regions. The repo already routes that through the `L^3` translator.

The pure oscillatory branch means `PureOsc_{H^{1/2}}(\mathcal W)` remains after
the `L^3` amplitude-concentration branch is removed: the retained signal is
high-frequency organization on the same material and pressure-viscosity ledger.
The material object persists and the NS law still participates, so Pack and
Part stay active. The failure is coherence between neighboring towers at the
selected scale. That is the Field face.

## Hard boundary

A fixed low-depth Field face does not see arbitrary high-frequency escape. The Field witness must be matched to the selected dyadic depth/scale, or the all-depth Field package must be used. This is the exact condition that turns the `H^{1/2}` oscillation argument from a route proposal into proof-bearing CM work.

## Remaining condition

`FieldCoherenceControlsCriticalShell.A` is no longer the open estimate in this
chain.  The remaining condition is that `SameLedgerHHalfExtraction.A` actually
produces the same-witness localized packet with the selected terminal dyadic
shell on the retained Pack+Part record.  Once that packet is present, the
installed matched Field finite-difference readout gives the displayed shell
bound and a persistent terminal shell excess selects `\neg Field_{N(J),r_J,Q}`.
