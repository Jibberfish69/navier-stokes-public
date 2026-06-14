# PositiveBudgetUpperControl.A / SourceUpperControl.A Expansion

## Status

Failed unconditional proof; conditional reductions proved.

The previous audit reduced the scalar-budget branch to an upper-control theorem:

```math
PositiveBudgetUpperControl.A.
```

The sharp component is

```math
SourceUpperControl.A.
```

## Target statements

### `PositiveBudgetUpperControl.A`

```math
\liminf_m\mathcal V_m^{eff}>0
+\text{terminal same-ledger NS structure}
\Longrightarrow
L,F\in L^1
+\Gamma_{pack}\in L^\infty
+\text{source upper control}
+\text{tower readout.}
\tag{PBUC.1}
```

### `SourceUpperControl.A`

For the active-window/source-pulse family selected by the terminal branch, prove one of the equivalent upper controls:

```math
ActiveSquareCarleson.A,
\qquad
SquareSource.A,
\qquad
ScaleCriticalTreeCarleson.A,
\qquad
ActiveShellAmplitudeGain.A,
\qquad
SourcePulseExclusion.A.
\tag{SUC.1}
```

The core desired bound has the model form

```math
\int_I\sum_{j\ge \max(N,k+C)}2^{-j}D_j(t)^2\,dt
\le
\varepsilon\nu 2^{2k}|I|+C2^{-2\delta\max(N,k)}
\tag{SUC.2}
```

on terminal active windows.

## Lemma 1. First-moment budget leaves square pulses possible

Let

```math
D_n(t)=n\mathbf 1_{[0,1/n]}(t).
```

Then

```math
\int_0^1D_n(t)\,dt=1,
```

while

```math
\int_0^1D_n(t)^2\,dt=n\to\infty.
```

Thus a fixed positive first-moment budget gives no square-source upper bound. In particular, a lower budget condition is compatible with unbounded active-square mass on shrinking windows.

### Proof

Immediate calculation:

```math
\int_0^{1/n}n\,dt=1,
\qquad
\int_0^{1/n}n^2\,dt=n.
```

This proves the separation between lower/first-moment budget and square upper control. `\square`

## Lemma 2. Heat-scale shell law reduces upper control to source-pulse exclusion

On an active shell, the shell law is

```math
E_j'(t)+c\nu D_j(t)\le F_j(t),
\tag{SUC.3}
```

where `F_j` is the nonlinear shell flux/source. Suppose there is a terminal heat-scale active window `I_j` with

```math
\int_{I_j}F_j(t)\,dt
\ge
c\nu\int_{I_j}D_j(t)\,dt - o(1).
\tag{SUC.4}
```

Then the viscous drain is source-balanced on `I_j`, and `(SUC.3)` allows an active pulse on that window.

Therefore a proof of `(SUC.2)` must supply a theorem forbidding `(SUC.4)` on the selected terminal active windows. This theorem is exactly the source-pulse exclusion atom:

```math
SourcePulseExclusion.A.
```

### Proof

Integrate `(SUC.3)` over `I_j=[a_j,b_j]`:

```math
E_j(b_j)-E_j(a_j)+c\nu\int_{I_j}D_j(t)\,dt
\le
\int_{I_j}F_j(t)\,dt.
```

If `(SUC.4)` holds, the drain term is balanced by the source term up to lower order. Hence the energy inequality alone gives no active-window decay. A square-source or active-window Carleson estimate must control `F_j` on precisely these terminal windows. This is the route meaning of `SourcePulseExclusion.A`. `\square`

## Lemma 3. Conditional propagation from upper control

If any one of

```math
ActiveSquareCarleson.A,
\quad
SquareSource.A,
\quad
ScaleCriticalTreeCarleson.A,
\quad
ActiveShellAmplitudeGain.A,
\quad
SourcePulseExclusion.A
```

holds on the same terminal active-window family, then the source-pulse upper side closes and propagates to the downstream branch:

```math
SourcePulseExclusion.A
\Longrightarrow
SOURCE.NO\text{-}PULSE.A
\Longrightarrow
AWG.A
\Longrightarrow
Jump_{avg}\Rightarrow\bot
\Longrightarrow
PCTP.hard/TTU.A.
\tag{SUC.5}
```

### Proof

The active-square and square-source notes identify their estimates with upper control of the terminal active-window source mass. `ActiveShellAmplitudeGain.A` supplies the missing scale factor on those windows and implies the active-square Carleson form. `ScaleCriticalTreeCarleson.A` is the tree-carleson reserve version of the same upper-control statement. Each therefore gives `SourcePulseExclusion.A` by the existing source-pulse route reductions. The downstream arrows are the installed source-pulse consumer chain. `\square`

## Attempted proof of `PositiveBudgetUpperControl.A`

Assume

```math
\liminf_m\mathcal V_m^{eff}>0.
```

This gives a lower amount of effective budget on the selected packet family. To prove `PositiveBudgetUpperControl.A`, one would need to derive the square upper control `(SUC.2)` or an equivalent active-window source bound.

Lemma 1 blocks this implication at the scalar level: lower first-moment budget permits unbounded square mass on shrinking active windows. Lemma 2 shows the PDE version of the same issue: the nonlinear source term `F_j` can balance viscous drain unless a source-pulse exclusion theorem controls it on the selected windows.

Therefore the implication

```math
\liminf_m\mathcal V_m^{eff}>0
\Longrightarrow SourceUpperControl.A
```

is unsupported by current estimates.

## Current route equivalence

At the current route resolution,

```math
SourceUpperControl.A
\equiv_{route}
SourcePulseExclusion.A
\equiv_{route}
ScaleCriticalTreeCarleson.A
\equiv_{route}
ActiveSquareCarleson.A
\equiv_{route}
SquareSource.A
\equiv_{route}
ActiveShellAmplitudeGain.A.
```

This is an equivalence of proof burden, not an installed proof.

## Remaining routes

The executed inventory leaves three possible mechanism classes:

```math
\text{remove: positive source/strain depletion or terminal source coherence,}
```

```math
\text{charge: scale-critical tree Carleson / active-square / square-source reserve,}
```

```math
\text{rigidify: Zeno source-residue rigidity in a named ancient class.}
```

Each is still a genuine new theorem target.

## Verdicts

```math
PositiveBudgetUpperControl.A\quad\text{open.}
```

```math
SourceUpperControl.A\quad\text{open.}
```

The rigorous result proved here is narrower:

```math
SourceUpperControl.A
\Longrightarrow
SourcePulseExclusion.A
\Longrightarrow
Jump_{avg}\Rightarrow\bot
\Longrightarrow
PCTP.hard/TTU.A.
```

and scalar lower budget alone cannot supply `SourceUpperControl.A`.

## Next exact targets

The next expansion must choose one of the three mechanism classes.

### `RemoveActiveSource.A`

```math
TerminalSourceCoherence.A
\quad\text{or}\quad
PositiveSourceDepletion.A.
```

### `ChargeActiveSource.A`

```math
ScaleCriticalTreeCarleson.A
\quad\text{or}\quad
ActiveSquareCarleson.A
\quad\text{or}\quad
SquareSource.A.
```

### `RigidifyActiveSource.A`

```math
ZenoBoundedClass_B.A+ZenoResidueLiouville_B.A.
```

The sharpest next target is

```math
ChargeActiveSource.A,
```

because it directly addresses the square-pulse obstruction in Lemma 1.
