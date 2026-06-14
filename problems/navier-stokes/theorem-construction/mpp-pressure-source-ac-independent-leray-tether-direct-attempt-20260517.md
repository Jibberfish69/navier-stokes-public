# MPP PressureSourceAC.A / LocalizedLeraySourceTether.A_ind Direct Attempt

Date: 2026-05-17

Status: failed direct proof; exact independent gates isolated.

Purpose: continue the pressure/eigenframe branch after the limit attempt isolated

```math
PressureSourceAC.A
```

as the residue-level replacement for

```math
PressureSustainResidueToSourceResidue.A.
```

The finite packet equivalent under test is

```math
LocalizedLeraySourceTether.A_{ind},
```

where `ind` means independence from `TerminalSkewLocalizationLedger.A` and equivalent terminal source-current ledgers.

## 0. Targets

Residue target:

```math
\boxed{
PressureSourceAC.A:
\mu_*^{press-sus}
\ll
\mu_*^{src}+\mu_*^{legal,src}
}
```

on the interior retained terminal region.

Finite packet target:

```math
\boxed{
LocalizedLeraySourceTether.A_{ind}:
\text{an interior pressure lobe in the localized convective-pressure pair
induces a native same-fluid source/donor edge or legal loss.}
}
```

The finite statement must remain independent of `TerminalSkewLocalizationLedger.A`.

## 1. Calderon-Zygmund estimate attempt

For the localized pressure-Hessian operator,

```math
T_N Q_N = \nabla^2p_N^{loc},
```

Calderon-Zygmund theory gives bounds

```math
\|T_NQ_N\|_{L^q}\le C_q \|Q_N\|_{L^q},
\qquad 1<q<\infty,
```

and a weak endpoint estimate at `q=1`.

These estimates control pressure sustain by the quadratic-gradient carrier. The target needs control by the native source-current carrier:

```math
\nu_N^{src}
:=
|w_j|^2\left[e_j\cdot S_{<j}^{loc}e_j\right]_+ dxd t
```

with terminal same-fluid ancestry.

The missing input is therefore

```math
\boxed{
QuadraticDefectSourceDomination.A:
|Q_N|d\eta_N
\ll
\nu_N^{src}+Legal_N
}
```

in the terminal residue topology. The installed pressure estimates supply

```math
\mu_*^{press-sus}\ll |T\sigma_*^{quad}|,
```

or a weaker distributional carrier statement, while the desired theorem is

```math
\mu_*^{press-sus}\ll \mu_*^{src}+\mu_*^{legal,src}.
```

The carrier gap remains.

## 2. Pointwise carrier test

A pointwise domination of the pressure quadratic carrier by the native source carrier is unavailable. Take the trace-free symmetric tangent gradient

```math
S=\operatorname{diag}(2,-1,-1),
\qquad \Omega=0.
```

Then

```math
\omega=0,
\qquad
|\omega|^2[e\cdot Se]_+=0,
```

while the local pressure law gives

```math
-\Delta p=\operatorname{tr}(S^2)>0.
```

With

```math
p(x)=-\frac{\operatorname{tr}(S^2)}{6}|x|^2,
```

one has

```math
-n\cdot \nabla^2p\,n
=
\frac{\operatorname{tr}(S^2)}{3}>0.
```

This tangent test separates pressure-Hessian sustain from the native vorticity source carrier inside the installed local identities. A finite-energy terminal realization or a legal exclusion theorem would add new PDE content; it is exactly the carrier theorem missing above.

## 3. Localized Leray tether attempt

The Leray recombination identity is

```math
\nabla(u\cdot\nabla u)+\nabla^2p
=
\nabla P_{Leray}(u\cdot\nabla u).
```

Localizing to a terminal packet gives

```math
\chi_P\nabla P_{Leray}(u\cdot\nabla u)
=
P_{Leray}(\chi_P\nabla(u\cdot\nabla u))
+[\\chi_P,P_{Leray}]\nabla(u\cdot\nabla u).
```

The first term is a localized convective-pressure pair. The commutator term is a terminal lifted defect. To turn this identity into a native source/donor edge ledger, one needs three gates:

```math
\boxed{TerminalLerayOrientation_{ind}.A}
```

for same-fluid signed edge orientation,

```math
\boxed{TerminalLerayCommutatorLegal_{ind}.A}
```

for terminal one-sided commutator losses, and

```math
\boxed{TerminalLeraySaturation_{ind}.A}
```

for partner saturation after positive selection.

These are the Leray-projection versions of the known terminal skew gates:

```math
SkewSaturationAdmissibility.A,
\qquad
WeightedLiftedSkewDefectLegal.A,
\qquad
OffSaturationBoundaryPricing.A.
```

Thus the finite packet Leray tether reaches the same source-current wall in different notation. The identity supplies recombination; it does not supply terminal orientation, saturation, or legal one-sided lifted-defect summability.

## 4. Local energy and strain rewrites

The local energy route controls pressure work through ordinary pressure integrability and cutoff terms. On terminal positive selection it returns to active-square or source-Carleson strength.

The strain equation rewrite

```math
\nabla^2p=-D_tS+\nu\Delta S-S^2-\Omega^2
```

moves the pressure bill into material strain BV, heat, and quadratic near-band terms. Heat is legal or burst-routed. The quadratic near-band part is the source-weighted angular object. The material term is the eigenframe turnover object. This returns to

```math
OneSidedNearBandMaterialStrainBV.A
```

and to the open source-weighted angular depletion route.

## 5. Conditional theorem

The strongest statement obtained here is conditional:

```math
\boxed{
\begin{aligned}
&QuadraticDefectSourceDomination.A\\
&\quad+TerminalLerayOrientation_{ind}.A\\
&\quad+TerminalLerayCommutatorLegal_{ind}.A\\
&\quad+TerminalLeraySaturation_{ind}.A\\
&\Longrightarrow PressureSourceAC.A
\quad\text{and}\quad
LocalizedLeraySourceTether.A_{ind}.
\end{aligned}
}
```

Proof sketch. The quadratic-defect domination places the pressure-Hessian carrier on the native source-current carrier plus legal losses. The independent Leray orientation and saturation gates convert the localized convective-pressure pair into same-fluid donor/source edges after terminal selection. The commutator gate pays the lifted one-sided projection defects. The resulting measure domination gives `PressureSourceAC.A`, and the finite packet edge statement gives `LocalizedLeraySourceTether.A_ind`.

## 6. Verdict

The direct proof fails. `PressureSourceAC.A` sits at the same height as the source-current wall. Proving it independently requires one genuinely new input:

```math
QuadraticDefectSourceDomination.A,
```

or an independent Leray terminal orientation/saturation theorem,

```math
TerminalLerayOrientation_{ind}.A
+TerminalLerayCommutatorLegal_{ind}.A
+TerminalLeraySaturation_{ind}.A,
```

or a separate legal/Liouville treatment of pure pressure-sustain residue.

This confirms that the pressure/eigenframe route has no lower noncircular bridge through the installed pressure, CZ, Leray, local-energy, or strain identities.
