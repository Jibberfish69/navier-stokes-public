# MPP TerminalSourceCoherence.A Direct Audit Note

## Status

Direct audit of the coherence supplier introduced by
`mpp-positive-source-depletion-coherence-bridge-note.md`:

```math
\boxed{
TerminalSourceCoherence.A.
}
```

The bridge itself is valid:

```math
TerminalSourceCoherence.A
\Longrightarrow
PositiveSourceDepletion.A.
```

This note tests whether terminal source coherence is installed from the current
original-data route inputs.

## Target

For each bounded-overlap same-fluid terminal family `\mathcal F_N`, prove

```math
\boxed{
\sum_{P\in\mathcal F_N}
\mathfrak C_{\mathrm{src}}(P)
=o_N(1),
}
\tag{TSC.1}
```

where `\mathfrak C_{\mathrm{src}}(P)` controls the positive localized
pre-Cauchy source:

```math
\int_{Q(P)}
\left[
\mathcal N_{preCauchy}^{loc}(u;P)
\right]_+
\,dxdt
\le
C\mathfrak C_{\mathrm{src}}(P)+\ell(P).
\tag{TSC.2}
```

Concrete versions include vorticity-direction incoherence, anti-Beltrami /
mixed-helicity defect, positive strain-alignment defect, or exact lifted
signed-remainder positive-part defect.

## Direct Tests

The pressure-vortex and vorticity-direction audits show that pressure Poisson
structure and energy-class vorticity information do not force a DFD/CKN-style
direction modulus on arbitrary terminal active packets.

The Beltrami/helical audit shows that helical alignment is not excluded by the
installed source-pulse package; coherent active strain/source alignment is a
possible terminal bad-window geometry until a separate depletion theorem
removes it.

The signed lifted-remainder route requires cancellation before absolute values
on the true weighted lifted remainder, plus active-square residual-tail control.
Current shell-exchange identities cancel only before terminal weights, cutoffs,
and positive-part selection.

Same-fluid transport preserves the carrier once selected.  It does not force
coherence defects to vanish on the selected terminal family.

The concrete supplier split is audited in
`mpp-terminal-source-coherence-supplier-split-audit-note.md`.  It checks the
candidate sufficient mechanisms
`EigenDecorrel.A`, `SignedPositiveBalance.A`,
`LocalPressureStrainDeplete.A`, `ActiveVorticityCoherence.A`, and
`AntiBeltramiCarleson.A`, and records that none is installed in the native
positive active source topology by the current route inputs.

## Verdict

`TerminalSourceCoherence.A` is not installed by current energy, pressure
Poisson, vorticity-direction, Beltrami/helical, signed-commutator, or
same-fluid geometry inputs.

The coherence route is a valid sufficient lane:

```math
\boxed{
TerminalSourceCoherence.A
\Longrightarrow
PositiveSourceDepletion.A
\Longrightarrow
ScaleCriticalTreeCarleson.A
\Longrightarrow
SourcePulseExclusion.A.
}
```

but `TerminalSourceCoherence.A` itself remains an open source-pulse primitive,
route-equivalent to the current positive-source depletion wall.
