# Source-wall solver pass and next targets `SWP.A`

## Ordered targets

The source-parent compactness wall after the adjoint packet chain has the following target order:

1. `LocalPositiveSourceCarleson.A`.
2. `TerminalSourceCoherence.A`.
3. `ReverseHolderParentConcentration.A`.
4. `ZenoBoundedClass.A`.
5. `ZenoResidueLiouville.A`.
6. `RefillTreeWellFounded.A`.
7. `TwoTowerDonorDepletion.A`.
8. unconditional `FPK.A` and `LemmaB.SourceDrain` assembly.

## Target 1: `LocalPositiveSourceCarleson.A`

The target is

```math
\sum_{P\in\mathcal F_N}
\int_{Q(P)}[\mathcal N_{preCauchy}^{loc}(u;P)]_+\,dxdt
\le o_N(1)+\text{summable legal losses}.
```

The installed supplier bridge is

```math
TerminalSourceCoherence.A\Longrightarrow LocalPositiveSourceCarleson.A.
```

Direct Cauchy/Young estimates bound the positive source by active-square envelopes. This returns to `ScaleCriticalTreeCarleson.A`. Global skew symmetry applies to signed unlocalized exchange, while the target is localized, weighted, terminal-selected, and positive-parted. Hence the direct path does not close.

## Target 2: `TerminalSourceCoherence.A`

The concrete supplier children are:

```math
LocalPressureStrainDeplete.A,
\quad
ActiveVorticityCoherence.A,
\quad
EigenDecorrel.A,
\quad
SignedPositiveBalance.A.
```

`LocalPressureStrainDeplete.A` fails from current inputs because pressure recovery gives elliptic control and no sign law for localized stretching. Trace-free strain admits positive stretching, for instance expanding eigendirection alignment.

`ActiveVorticityCoherence.A` fails because original smooth data supplies no uniform terminal vorticity-direction modulus on shrinking endpoint windows. Direction coherence also needs a bridge to the exact weighted source packet.

`EigenDecorrel.A` fails because incompressibility gives zero trace while permitting expanding eigendirections. Current inputs do not force high packets away from those directions on selected active windows.

`SignedPositiveBalance.A` fails because signed Littlewood-Paley cancellations occur before one-sided localization, cutoff, terminal selection, and positive-part extraction.

Thus `TerminalSourceCoherence.A` remains open.

## Target 3: `ReverseHolderParentConcentration.A`

The target asks a localized positive source-parent measure to concentrate on boundedly many legal parents, or for diffuse parentage to pay a reserve.

Finite shell banding allows the diffuse legal model

```math
\pi_P=M^{-1}\sum_{\alpha=1}^M\delta_{P^-_\alpha},
\qquad M\to\infty.
```

Every bounded parent selector captures vanishing mass. The diffuse branch requires a scale-normalized donor reserve, which is route-equivalent to `ScaleCriticalTreeCarleson.A`. Therefore this target remains open.

## Target 4-6: Zeno and refill route

`RefillTreeWellFounded.A` closes every non-Zeno branch: entrance leaves and branches with

```math
\sum_m r_m^2=\infty
```

reach preterminal control. The remaining branch is terminal Zeno:

```math
\sum_m r_m^2<\infty,
\qquad r_m\downarrow0.
```

Compactness extracts a local suitable ancient source-residue object. The extracted object lacks the rigid hypotheses needed by available Liouville principles: bounded ancient class, Type I, finite global ancient energy, critical smallness, self-similarity, or symmetry reduction.

Thus the Zeno route needs

```math
ZenoBoundedClass.A+ZenoResidueLiouville.A
```

or a source-Carleson reserve. Current inputs supply neither.

## Result of this solver pass

The adjoint packet chain remains cleared up to the source-parent wall. The next primitive theorem is still one of:

```math
LocalPositiveSourceCarleson.A,
```

```math
ReverseHolderParentConcentration.A,
```

or

```math
ZenoBoundedClass.A+ZenoResidueLiouville.A.
```

No unconditional source-parent compactness/drain proof follows from the currently installed inputs.