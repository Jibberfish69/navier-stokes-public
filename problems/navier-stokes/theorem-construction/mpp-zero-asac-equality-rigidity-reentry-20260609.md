# MPP ZeroASACEqualityRigidity.A Reentry

## Status

Active-completion proof attempt after
`mpp-one-sided-pressure-source-tether-reentry-20260609.md`.

This note tests whether the produced `B_ASAC` equality clauses themselves force
terminal time thickness.  It does not close public Clay finality.

## Target

The target is:

```math
ZeroASACEqualityRigidity.A
```

or equivalently:

```math
BASACZeroThicknessExclusion.A.
```

The desired implication is:

```math
B_{ASAC}^{closed}
\Longrightarrow
\mu_m^{src,+}(B_R\times[-\varepsilon,0])
\le
\omega_R(\varepsilon)+o_m(1),
\qquad
\omega_R(\varepsilon)\to0.
```

It must use the equality-class clauses themselves:

```text
same-fluid terminal carrier,
nonzero inherited native positive source residue,
no earlier selected source slice,
zero ASAC defect measure,
no legal/projected/cutoff/boundary exit,
no finite or non-Zeno donor-refill exit,
terminal Zeno source support.
```

## Installed Equality Production

The installed production theorem:

```math
ASACDefectMeasure.A
+
TerminalNoFreeSinkEqualityClassProduction.A
```

does real work.  It removes ASAC-paid defect measure, legal exits, finite donor
trees, non-Zeno entrance leaves, and fixed earlier selected slices.  It
produces the canonical `B_ASAC` terminal source-residue class.

That is production and organization.  It is not yet time-thickness.

## Direct Rigidity Test

The equality clauses still permit the terminal squeeze model:

```math
d\mu_m^{src,+}(y,s)
=
\rho(y)\tau_m^{-1}{\bf 1}_{(-\tau_m,0]}(s)\,dy\,ds,
\qquad
\tau_m\downarrow0.
```

This model has:

```math
\int_{-1}^{0}\|\mu_m^{src,+}(s)\|_{\mathcal M(B_R)}\,ds
\le C_R,
```

and:

```math
\mu_m^{src,+}
\rightharpoonup
\rho(y)\,dy\otimes\delta_{s=0}.
```

It is compatible with the installed `B_ASAC` clauses:

- same-fluid terminal carrier is kept by using one retained packet-local
  source profile;
- zero ASAC defect is unaffected because no active-alignment / pair-weight
  leakage is forced by the scalar time squeeze;
- legal/projected/cutoff/boundary exits are absent by construction of the
  selected survivor;
- finite and non-Zeno donor refill is absent;
- no fixed earlier selected source slice holds because the support collapses
  into `(-\tau_m,0]`;
- local `L^1_s` source mass remains finite.

The equality clauses therefore do not imply:

```math
\sup_m
\left\|
\|\mu_m^{src,+}(s)\|_{\mathcal M(B_R)}
\right\|_{L_s^p}
<\infty
\qquad(p>1),
```

and do not imply a terminal strip modulus.

## CM Placement Boundary

The zero-thickness source residue is already useful in the CM contrapositive
grammar: once admitted as a terminal source-residue occurrence, it can be read
as a Pack/Part/Field face exit according to the installed first-face sorting.

That CM diagnostic is not the public supplier theorem:

```math
OriginalSmoothData\Longrightarrow SourcePulseExclusion.A.
```

The current public-finality loop is asking for the stronger supplier exclusion
needed by the active first-exit Pack-survival chain.  The equality clauses do
not supply that stronger theorem.

## Verdict

`ZeroASACEqualityRigidity.A` is not proved.

`BASACZeroThicknessExclusion.A` is not proved.

The installed equality route produces the all-doors-closed terminal atom; it
does not by itself eliminate that atom.

## Next Loop Target

The smallest honest theorem left inside this exact class is:

```math
\boxed{
BASACTemporalSpreading.A
}
```

equivalently:

```math
TerminalSourceReverseHolder_{B_{ASAC}}.A
```

or:

```math
UniformTemporalSourceIntegrability_{p,B_{ASAC}}.A,\qquad p>1.
```

This theorem must produce a super-`L^1` or strip-modulus time estimate for the
native positive source marginal from something beyond the installed equality
clauses.  It cannot cite zero ASAC defect, no fixed earlier slice, pressure
time-spread, branch entropy, active-square reserve, or generic anti-atom as if
one of those were already the missing modulus.

Until such temporal spreading is installed and propagated through
`SourcePulseExclusion.A` and `OriginalSmoothDataPackSurvival.A`, both PDFs
remain non-final.
