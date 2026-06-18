# SourceWeightedEigenframeMixing.PersistentAlignmentAttempt

## Status

Failed direct discharge.  This note tests the eigenframe-mixing route for the source-weighted terminal angular carrier.

## Target

The desired theorem is

```math
SourceWeightedEigenframeMixing.A:
\quad
\sum_{P\in\mathcal F_N}\int_{Q(P)}
|w_{j_P}|^2[e_{j_P}\cdot S^{loc}_{<j_P}e_{j_P}]_+dxdt
\le
Drain_{parent}+Loss_{legal}+o_N(1).
```

The angular-mixing route requires a source-weighted nonalignment estimate, not
a qualitative mixing expectation.  One sufficient form is

```math
\sum_{P\in\mathcal F_N}\int_{Q(P)}
\chi_P |w_{j_P}|^2
[e_{j_P}\cdot S^{loc}_{<j_P}e_{j_P}]_+
\mathbf 1_{\angle(e_{j_P},E^+_{<j_P})\le\alpha}\,dxdt
\le
\theta D_N(\mathcal F_N)+Legal_N(\mathcal F_N)+o_N(1),
\qquad 0<\theta<1.
```

The complementary aligned branch must instead spend a persistent-alignment
reserve theorem.

## Tests

### Vorticity direction ODE

The active direction can co-rotate with the local expanding eigenspace over a shrinking terminal layer.  The direction equation supplies evolution, while it supplies no source-weighted lower bound on angular separation.

### Eigenframe rotation / BV

Eigenframe rotation helps only if terminal windows carry a source-weighted BV or
angular-variation lower bound.  Current inputs supply no such bound on the
selected positive packet family.

### Constantin-Fefferman coherence

Vorticity-direction coherence can constrain singularity formation in regimes where coherent direction control is generated.  The current route does not generate that coherence on the selected terminal packets carrying the positive source.

### Beltrami / anti-Beltrami depletion

Beltrami or anti-Beltrami structure depletes the stretching carrier only when the
selected family enters that class.  Current `B_ASAC` production supplies
equality/tangent organization, while it supplies no Beltrami depletion class.

## Result

The route reduces to a sharper dynamic theorem:

```math
\boxed{PersistentExpansionAlignmentForcesReserve.A}
```

stating that persistent source-weighted alignment with expanding strain forces at least one of:

```math
ActiveShellAmplitudeGain.A,
\quad
TerminalSourceReverseHolder.A,
\quad
BASACNoIncomingSourceDrain.A,
\quad
Loss_{legal}.
```

## Verdict

Eigenframe mixing remains open.  The remaining theorem is
`PersistentExpansionAlignmentForcesReserve.A`: persistent positive alignment
must create measurable amplitude gain, temporal source residence, no-incoming
source drain, or legal loss on the same selected terminal packet family.
