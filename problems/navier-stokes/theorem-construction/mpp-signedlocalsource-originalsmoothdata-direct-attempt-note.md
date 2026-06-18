# MPP SignedLocalSource.A From OriginalSmoothData Direct Attempt Note

## Status

Bounded direct attempt on the current live frontier:

```math
\boxed{
OriginalSmoothData\Longrightarrow SignedLocalSource.A.
}
```

This note tests whether the original smooth-data hypotheses, periodic energy
identity, preterminal smoothness, pressure Poisson law, and installed
source/receiver ledgers already imply the signed/local source theorem.  They do
not.

## Target Being Tested

At the current route resolution, `SignedLocalSource.A` can be supplied by one of
two source-normalization closures.  This note does not prove the two forms
equivalent; each may be spent downstream only after its own hypotheses are
proved:

```math
\text{signed weighted lifted-remainder cancellation with positive/residual
reserve,}
```

or

```math
\text{active-square residual-tail / square-source / active-window Carleson
control.}
```

Either would imply:

```math
SignedLocalSource.A
\Longrightarrow
LocalSource.NoPulse.A
\Longrightarrow
SOURCE.NO\text{-}PULSE.A
\Longrightarrow
Jump_{avg}\Rightarrow\bot.
```

## Direct Energy Test

Original smooth data gives the Leray energy inequality and smoothness on every
compact preterminal interval.  These give finite first-moment dissipation:

```math
\int_0^{T_\ast}\|\nabla u(t)\|_2^2\,dt<\infty.
```

The active-square branch needs shellwise square-strength control on terminal
active windows in the following target form:

```math
\int_I\sum_{j\ge N}2^{-j}D_j(t)^2\,dt=o_N(1)
```

or a Carleson version of that estimate.  First-moment dissipation does not
imply this square-strength estimate on moving terminal active windows.  Short
high-amplitude pulses may have finite first moment while producing order-one
active-square contribution.

## Direct Smoothness Test

For every fixed shell `j` and every compact interval `[0,T]` with `T<T_\ast`,
smoothness bounds the shell flux.  The theorem needs uniform control along
terminal sequences with

```math
j\to\infty,
\qquad
t\uparrow T_\ast.
```

Fixed-shell and compact-preterminal smoothness do not provide the
terminal scale-normalized source gain.

## Fixed-Shell Amplitude Test

The square-source supplier would need a bound of the form

```math
\int_I |F_j(t)|^2\,dt
\le
c\varepsilon\nu^3 2^{3j}|I|
+C\nu^2 2^j2^{-2\delta j}.
```

The audit `square-source-shell-flux-estimate-result.md` shows why this cannot
be a universal consequence of original smooth data.  For smooth finite-mode
divergence-free data scaled by amplitude `A`, the shell flux obeys the exact
amplitude identity

```math
F_j(0;Au_0)=A^3F_j(0;u_0),
```

so the square source is `A^6|F_j(0;u_0)|^2` on a short interval, while the
displayed right-hand side is independent of `A`. A square-source theorem needs an
active-window amplitude normalization or structural cancellation, not merely
smooth initial data.

## Signed Cancellation Test

The signed branch uses the true lifted weighted remainder

```math
G_N^{lift,\sigma}
=
\sum W_{j,k,\ell}^{\sigma}R_{j,k,\ell}^{lift}.
```

The principal term is a low/intermediate strain acting on active-shell energy.
It is sign-indefinite.  Alignment with expanding strain eigendirections gives
positive production; alignment with contracting directions gives negative
production.  The unweighted exchange antisymmetry does not survive the
one-sided weights, cutoffs, and lifted packet reductions as a sign theorem.

Original smooth data plus incompressibility does not imply the needed
positive/residual reserve for the signed lifted remainder.

## Pressure Test

The pressure Poisson law enforces incompressibility and supplies local response
estimates used downstream.  It does not impose a sign on the active strain
production or prove active-window Carleson decay.  Importing
`Hyp(FFSRC.A)=>FCI.5f` here would spend a downstream frozen-family source ledger as
if it were a branch-native no-pulse theorem, which is circular.

## Reduction

The direct route from original smooth data reduces to one of the
following genuinely new PDE inputs:

```math
\textbf{SignedRemainderReserve.A:}
\quad
\int G_N^{lift,\sigma}
\le C2^{-2\delta N}
\quad\text{with a usable positive/residual reserve;}
```

```math
\textbf{ActiveSquareCarleson.A:}
\quad
\text{direct active-square residual-tail / active-window Carleson control;}
```

```math
\textbf{SquareSource.A:}
\quad
\text{heat-scale }L_t^2\text{ source normalization for }F_j;
```

```math
\textbf{ActiveShellAmplitudeGain.A:}
\quad
\text{terminal active-shell amplitude normalization strong enough to imply
active-square control.}
```

These are route-adjacent presentations of the same source no-pulse atom at the
current frontier.  They are not interchangeable proof statements until a
separate theorem proves the conversion between the signed one-sided reserve and
the active-square/source-normalized form.

The first branch is audited directly in
`mpp-signed-remainder-reserve-direct-attempt-note.md`: the positive/residual
reserve required to repair the signed lifted remainder is itself
`ActiveSquareCarleson.A` or a source-normalized theorem with the same
selected-family strength, while
the signed part still needs a new strain-sign cancellation theorem.

## Verdict

`OriginalSmoothData=>SignedLocalSource.A` is not solved by the installed
energy, smoothness, pressure, signed commutator, square-source, source
supplier, or averaged-cover surfaces.

The live terminal theorem target is:

```math
\boxed{
OriginalSmoothData
\Longrightarrow
SignedRemainderReserve.A
\quad\text{or}\quad
ActiveSquareCarleson.A
\quad\text{or}\quad
SquareSource.A
\quad\text{or}\quad
ActiveShellAmplitudeGain.A.
}
```

No promotion to `PCTP.hard / TTU.A` is licensed until one of these is proved.
