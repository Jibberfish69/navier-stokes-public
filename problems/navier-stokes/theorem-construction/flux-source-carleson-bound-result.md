# Flux-Source Carleson Bound Result

## Target

The desired source estimate was

```math
\int_I |F_j(t)|dt
\le
\varepsilon\nu\int_I D_j(t)dt+C2^{-2\delta j},
```

or a stronger version that prevents short active-shell forcing pulses.

Here `F_j` is the nonlinear shell flux in

```math
dE_j(t)+c\nu D_j(t)dt\le F_j(t)dt.
```

## Available cancellation

The dyadic exchange identity gives exact antisymmetry for the unweighted exchange:

```math
\langle \Delta_j(a_k\cdot\nabla\Delta_\ell u),\Delta_j u\rangle
+
\langle \Delta_\ell(a_k\cdot\nabla\Delta_j u),\Delta_\ell u\rangle=0.
```

After shell weights are inserted, the remaining source is the weighted exchange defect. Thus the source estimate reduces to a signed commutator-defect theorem after exchange cancellation.

## Reduction after weighted summation

The required source-Carleson estimate would follow from a bound of the form

```math
\big|\langle [\Delta_j,a_k\cdot\nabla]\Delta_\ell u,\Delta_j u\rangle\big|
\le C_{\mathrm{comm}}
2^{-c(\ell-j)}2^{3k/2}\|\Delta_k u\|_2D_\ell,
```

in the separated lifted geometry, together with a summation that preserves the barrier reserve.

The existing branch calculation reaches a conditional endpoint of the form

```math
\sum_j2^j\mathcal R_{j,lift}^\sigma
\le
\varepsilon\sum_k2^k(\mathcal D_k^{\uparrow,\beta})^2
+C_\varepsilon\sum_{k>N}D_k.
```

The residual tail

```math
\int_0^T\sum_{k>N}D_k(t)dt
```

is stronger than the currently available first-moment surfaces. Hence the flux-source Carleson estimate remains uninstalled.

## Pulse obstruction remains

The shell identity permits short pulses whenever the flux source supplies matching input. Therefore a no-pulse law needs source control beyond the shell identity. The unweighted antisymmetry is useful, yet the weighted defect and residual tail remain open.

## Result

Current surfaces do not prove the flux-source Carleson bound. The exact next theorem is the signed weighted commutator-defect theorem with a residual tail estimate strong enough to imply active-square Carleson control.

## Superseding MPP Closure

The signed weighted commutator-defect plus residual-tail target has now been
executed in `mpp-awg-deep-source-frontier-closure-note.md`. The commutator
branch, positive-carrier branch, residual-tail branch, monotone/source-dominance
branch, and direct active-shell normalization branch all close to
`SOURCE.NO-PULSE.A`. The flux-source Carleson estimate should therefore be read
as conditional on that source-control atom, not as an independently installed
next theorem.
