# MPP Active-Square Source-Carleson Production Reentry

## Status

Active-completion reentry. This note does not close the public Clay bridge.

It checks whether the source-Carleson / active-square route supplies the missing
production theorem for the current leaf:

```math
TerminalPositiveSourceAtomEscape.A
\quad/\quad
BASACTerminalSourceAntiConcentration.A.
```

## Why this route matters

The terminal native positive source atom survives because current inputs only
give finite local `L^1_t` source mass. A true source-Carleson or active-square
reserve would give uniform terminal time-thickness control, and that would rule
out the atom.

So this route is worth attacking: it is one of the few forms that would actually
pay the missing terminal anti-atom theorem.

## Local positive source Carleson reduction

The direct target is a same-fluid terminal packet estimate for the localized
positive source:

```math
\sum_{P\in\mathcal F_N}
\int_{Q(P)}[\mathcal N^{loc}_{preCauchy}(u;P)]_+\,dxdt
\le o_N(1)+\text{summable legal losses}.
```

Transport terms cancel in the transported frame up to cutoff terms, and cutoff
/ off-packet terms are legal. The remaining live term is the localized positive
pressure-strain/source term:

```math
\sum_{P\in\mathcal F_N}
\int_{Q(P)}[\mathcal N^{loc}_{ps}]_+.
```

Global signed cancellation does not discharge this term after localization,
terminal selection, weights, and positive-part extraction.

## Active-square requirement

Cauchy and Young estimates send the remaining positive term to an active-square
envelope. The relevant active-square density has the form

```math
2^{-j}D_j(t)^2
=
2^{3j}E_j(t)^2,
\qquad
D_j(t)=2^{2j}E_j(t).
```

The needed estimate is a terminal heat-scale Carleson bound such as

```math
\int_I\sum_{j\ge\max(N,k+C_1)}2^{-j}D_j(t)^2\,dt
\le
\varepsilon\nu2^{2k}|I|
+C2^{-2\delta\max(N,k)}.
```

That estimate would feed `LocalPositiveSourceCarleson.A` and then the terminal
anti-atom / source-pulse exclusion route.

## Conditional bridge that is installed

The active-square notes prove a valid conditional implication. A shell-amplitude
gain

```math
2^{-j}D_j(t)^2
\le
\varepsilon\nu D_j(t)+r_j(t),
```

with summable reserve `r_j`, gives active-square Carleson control on the
bounded-overlap terminal window family.

Equivalently, active-shell source normalization or a heat-scale square-source
estimate gives the same downstream result:

```math
ActiveShellSourceNormalize.A
\Longrightarrow
SquareSourceEstimate.A
\Longrightarrow
ActiveShellAmplitudeGain.A
\Longrightarrow
ActiveSquareUpperTailCarleson.A.
```

This implication is useful, but it is conditional.

## Direct proof from installed inputs fails

Original smooth data gives smoothness on compact preterminal intervals, finite
raw energy, and finite raw dissipation. Those facts control fixed shells before
the endpoint. The active-square theorem controls moving active shells with
`j\to\infty` and `t\uparrow T_*`.

The scalar shell law shows the obstruction:

```math
E_j'(t)+c\nu2^{2j}E_j(t)\le F_j(t).
```

On a terminal heat-scale window, the nonlinear source `F_j` can balance damping
at a chosen active amplitude. Source mass or first-moment dissipation does not
force the amplitude decay

```math
E_j^2\le C_A\nu2^{-j}
```

needed to absorb the active-square density.

## Exact reduced primitive

The route has not produced `TerminalPositiveSourceAtomEscape.A`. It has reduced
one viable entrance to a sharper analytic primitive:

```math
\boxed{
NonlinearShellFluxSourceControl.A
}
```

This theorem must rule out source-balanced active pulses on selected terminal
heat-scale shells. Equivalent forms are:

```text
ActiveShellSourceNormalize.A,
SquareSourceEstimate.A with source normalization,
direct ActiveSquareUpperTailCarleson.A,
terminal active-shell amplitude decay,
or a monotone flux/source domination law for the normalized active-square charge.
```

## Verdict

The source-Carleson / active-square route is a genuine production route, not a
closure at current authority.

It cannot be used in the PDFs as a solved proof step until
`NonlinearShellFluxSourceControl.A` or an equivalent active-square production
theorem is proved.

The top-level live leaf remains:

```math
TerminalPositiveSourceAtomEscape.A
\quad/\quad
BASACTerminalSourceAntiConcentration.A.
```

The next object-level attack should be the nonlinear shell-flux source-control
primitive, because that is the current deepest version of the source-weighted
active reserve route.
