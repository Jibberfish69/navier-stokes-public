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

The intended mechanism is angular mixing: selected active directions should lose persistent alignment with expanding eigendirections of `S_<j^loc`.

## Tests

### Vorticity direction ODE

The active direction can co-rotate with the local expanding eigenspace over a shrinking terminal layer.  The direction equation supplies evolution, while it supplies no source-weighted lower bound on angular separation.

### Eigenframe rotation / BV

Eigenframe rotation would help if terminal windows carried a source-weighted BV or angular-variation lower bound.  Current inputs supply no such bound on the selected positive packet family.

### Constantin-Fefferman coherence

Vorticity-direction coherence can constrain singularity formation in regimes where coherent direction control is generated.  The current route does not generate that coherence on the selected terminal packets carrying the positive source.

### Beltrami / anti-Beltrami depletion

Beltrami or anti-Beltrami structure would deplete the stretching carrier if the selected family entered that class.  Current `B_ASAC` production supplies equality/tangent organization, while it supplies no Beltrami depletion class.

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

Eigenframe mixing remains open.  The next useful target is persistent-alignment rigidity: prove that long enough positive alignment creates measurable amplitude gain or temporal source residence.