# TerminalSourceCoherence.A supplier-route direct attempt

## Status

Failed direct discharge.  `TerminalSourceCoherence.A` remains a valid sufficient supplier for `LocalPositiveSourceCarleson.A`, but none of its concrete child routes follows from `OriginalSmoothData` with the currently installed inputs.  Each child route hits the same legal interior positive-source obstruction: terminal active packets may align with positive strain/source production on shrinking selected windows.

## Target

The source-wall continuation records the bridge

```math
TerminalSourceCoherence.A\Longrightarrow LocalPositiveSourceCarleson.A.
```

The goal of this note is to test whether

```math
OriginalSmoothData\Longrightarrow TerminalSourceCoherence.A
```

can be proved by one of the concrete supplier children

```math
LocalPressureStrainDeplete.A,
\quad
ActiveVorticityCoherence.A,
\quad
EigenDecorrel.A,
\quad
SignedPositiveBalance.A.
```

## 1. LocalPressureStrainDeplete.A

The dangerous legal interior source on a terminal packet has pressure/strain form

```math
\mathcal N_{ps}^{loc}(P)
:=
(e_P\cdot S(u) e_P)_+ |u_P|^2
+\text{pressure-coupled source terms},
```

where `S(u)` is the symmetric strain and `e_P` is the active packet polarization.

Calderon--Zygmund pressure recovery gives only the operator bound

```math
\|p^{loc}\|_{L^q(Q)}
\le
C_q\|\chi\,u\otimes u\|_{L^q(Q^*)},
\qquad 1<q<\infty,
```

and the corresponding differentiated/localized pressure-loss estimates after
cutoff.  This is size control of the pressure response.  It does not give a
one-sided sign or coherence law for

```math
(e_P\cdot S(u)e_P)_+.
```

Since `tr S(u)=0` only forces the sum of eigenvalues to vanish, it permits positive expanding eigendirections.  A high packet may align with such a direction on a selected terminal window.  Therefore the desired depletion

```math
\int_{Q(P)}\mathcal N_{ps}^{loc,+}\le \text{legal losses}+o_N(1)
```

is not obtained from Calderon--Zygmund recovery and incompressibility alone.

## 2. ActiveVorticityCoherence.A

A vorticity-direction route requires a terminal modulus controlling the
direction of active vorticity on shrinking endpoint windows, strong enough to
deplete vortex stretching and to match the exact weighted source packet.

Original smooth data supplies smoothness on every compact preterminal interval.  It does not supply a uniform terminal vorticity-direction modulus on the shrinking active windows selected by the source-pulse branch.  The needed statement is exactly a terminal coherence theorem, not a consequence of the baseline data.

Thus

```math
OriginalSmoothData\not\Rightarrow ActiveVorticityCoherence.A
```

by the current route inputs.

## 3. EigenDecorrel.A

An eigendecorrelation route requires a theorem proving that terminal
high-frequency packets cannot remain aligned with expanding eigendirections of
the low/intermediate strain.  In symbols it must force a bound of the type

```math
\sum_P\int_{Q(P)}(e_P\cdot S_{low}e_P)_+|u_P|^2
\le o_N(1)+\text{legal losses}.
```

Incompressibility only gives trace-free strain.  It does not prevent expanding eigendirection alignment.  The selected terminal packet family may concentrate on those directions unless a new decorrelation or source-control theorem is supplied.

Therefore `EigenDecorrel.A` remains open.

## 4. SignedPositiveBalance.A

The signed dyadic exchange identities cancel unlocalized exchange before the source is localized, one-sidedly weighted, terminally selected, and positive-parted.  The target source is

```math
[\mathcal N_{preCauchy}^{loc}(u;P)]_+,
```

not the global signed exchange.  Passing to positive parts destroys the cancellation unless an additional balance theorem survives the terminal localization.

No such balance theorem is installed.  Thus signed cancellation does not prove `TerminalSourceCoherence.A`.

## Conclusion

All four supplier children fail from current inputs:

```math
LocalPressureStrainDeplete.A,
\quad
ActiveVorticityCoherence.A,
\quad
EigenDecorrel.A,
\quad
SignedPositiveBalance.A.
```

Hence the direct implication

```math
OriginalSmoothData\Longrightarrow TerminalSourceCoherence.A
```

is not proved by the current route.

The result is the sharper equivalence:

```math
TerminalSourceCoherence.A
```

is a valid sufficient presentation of the source wall, but proving it requires a new terminal source-control mechanism.  It is not a consequence of pressure ellipticity, preterminal smoothness, trace-free strain, or global signed dyadic cancellation alone.

## Remaining primitive

The source-wall options remain

```math
ScaleCriticalTreeCarleson.A,
\qquad
LocalPositiveSourceCarleson.A,
\qquad
ReverseHolderParentConcentration.A,
\qquad
ZenoBoundedClass_B.A+ZenoResidueLiouville_B.A.
```

or a genuinely new child theorem that proves terminal source coherence on the selected terminal packet family.
