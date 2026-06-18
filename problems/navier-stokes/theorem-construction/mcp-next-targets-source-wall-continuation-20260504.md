# Next-target source-wall continuation `NTC.A`

## Target list

The current branch-support chain has the following remaining targets:

1. `ScaleNormalizedParentInverse.A`.
2. `ScaleCriticalTreeCarleson.A`.
3. `LocalPositiveSourceCarleson.A`.
4. `PositiveSourceDepletion.A`.
5. `TerminalSourceCoherence.A`.
6. `ReverseHolderParentConcentration.A`.
7. `ZenoBoundedClass_B.A` for an explicit rigid class `B`.
8. `ZenoResidueLiouville_B.A`.
9. `RefillTreeWellFounded.A`.
10. `TwoTowerDonorDepletion.A`.
11. unconditional `FirstPulseKill.A`.
12. unconditional `LemmaB.SourceDrain` assembly.

## Direct solving pass

### 1. `ScaleNormalizedParentInverse.A`

This target asks diffuse legal parentage to pay a finite scale-normalized donor reserve. The direct attempt gives the diffuse legal model

```math
\pi_P=M^{-1}\sum_{\alpha=1}^{M}\delta_{P^-_\alpha},
\qquad M\to\infty.
```

Finite shell banding controls shell type, while physical packet and phase multiplicity stay unrestricted. Raw donor energy is quadratic at the wrong normalization and can remain small under diffusion. Same-fluid transport gives edge fidelity after selection and gives no inverse selector.

Result:

```math
ScaleNormalizedParentInverse.A
\equiv_{route}
ScaleCriticalTreeCarleson.A.
```

### 2. `ScaleCriticalTreeCarleson.A` / `LocalPositiveSourceCarleson.A`

The local positive source target is

```math
\sum_{P\in\mathcal F_N}\int_{Q(P)}[\mathcal N_{preCauchy}^{loc}(u;P)]_+dxdt
\le o_N(1)+\text{legal losses}.
```

Cauchy/Young estimates produce active-square envelopes and return to the same Carleson reserve. Global skew symmetry acts before localization, one-sided weights, terminal selection, and positive-part extraction. Pressure and cutoff estimates route legal losses and leave legal interior positive source production.

Result:

```math
LocalPositiveSourceCarleson.A
\equiv_{route}
ScaleCriticalTreeCarleson.A
\equiv_{route}
SourcePulseExclusion.A.
```

### 3. `TerminalSourceCoherence.A`

The concrete supplier children are:

```math
LocalPressureStrainDeplete.A,
ActiveVorticityCoherence.A,
EigenDecorrel.A,
SignedPositiveBalance.A.
```

Pressure recovery supplies elliptic control and no sign law for positive stretching. Original smooth data supplies no terminal vorticity-direction modulus on shrinking endpoint windows. Trace-free strain allows expanding eigendirections. Signed dyadic exchange cancels before terminal localization and positive-part extraction.

Result: `TerminalSourceCoherence.A` remains open.

### 4. Zeno rigid-class branch

The audited rigid candidates are finite global ancient energy, Type I, critical smallness, bounded vorticity, self-similarity, two-dimensionality/axisymmetry, and source-cancellation class.

For the Zeno rescaling `u_m(y,s)=r_m u(x_m+r_m y,t_m+r_m^2s)`,

```math
\int_{B_R}|u_m(y,s)|^2\,dy
=
r_m^{-1}\int_{B_{Rr_m}(x_m)}|u(x,t_m+r_m^2s)|^2\,dx.
```

The global `L^2` energy has the same `r_m^{-1}` factor when the whole rescaled domain is used.  Type I needs an amplitude envelope absent from refill geometry. Critical smallness conflicts with persistent normalized residue. Bounded vorticity, self-similarity, and symmetry are not produced by local suitable compactness or same-fluid ancestry. Weak signed cancellation leaves positive residue; strong native cancellation is the contradiction itself.

Result:

```math
ZenoBoundedClass_B.A+ZenoResidueLiouville_B.A
```

remains open for every currently named class `B`.

### 5. `RefillTreeWellFounded.A` and `TwoTowerDonorDepletion.A`

The non-Zeno refill branch closes through entrance leaves and preterminal high-shell decay. The terminal Zeno branch remains:

```math
\sum_m r_m^2<\infty,
\qquad r_m\downarrow0.
```

This branch requires either the source-Carleson reserve or a rigid Zeno ancient class. Therefore:

```math
RefillTreeWellFounded.A
```

remains open at terminal Zeno, and

```math
TwoTowerDonorDepletion.A
```

remains open because its well-foundedness input is unavailable.

## Final result of this continuation

The chain reaches the same irreducible primitive wall:

```math
ScaleCriticalTreeCarleson.A
```

or equivalently

```math
LocalPositiveSourceCarleson.A
```

or a genuinely new rigid-Zeno package

```math
ZenoBoundedClass_B.A+ZenoResidueLiouville_B.A.
```

Unconditional `FPK.A` and unconditional `LemmaB.SourceDrain` remain blocked exactly by this source-parent / terminal-Zeno wall.
