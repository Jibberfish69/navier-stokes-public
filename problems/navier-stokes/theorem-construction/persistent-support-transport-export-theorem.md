# Persistent-Support Transport Export Theorem

## Status

This note isolates the second post-refactor theorem debt on the corrected
object stack

```text
\mathfrak R \supset K_D \xrightarrow{\rho} u_{\mathrm{coh}}
\to
\mathbb S_D(j_0)\text{-localized coherent readout}
\to
\text{classical low-mode transport channel}.
```

Its job is not to re-derive the classical low-mode strain theorem from shell
algebra. Its job is to state the exact operator-level bridge by which coherent
transport on persistent support produces the principal classical low-mode
transport term after selector localization and readout.

## Definitions

Fix `s>\frac52`, a threshold `j_0`, a localization label `i`, and a carrier
state `X`.

Let

```math
u_{\mathrm{coh}}:=\rho(\mathbb H_D X).
```

For any `Y\in K_D`, define the selector-localized coherent transport output by

```math
\mathcal T^{\mathrm{coh}}_{i,j_0}[X]Y
:=
B_i(X)\,\mathbb S_D(j_0)\mathbb H_D Y.
```

Let `v:=\rho(Y)` denote the classical readout of `Y`.

## Transport Export Surface

The correct transport target is not a raw equality with
`u_{\mathrm{coh}}\cdot\nabla`. The selector/localizer has to survive on the
classical side. So the exact bridge surface is

```math
\rho(\mathcal T^{\mathrm{coh}}_{i,j_0}[X]Y)
=
\widetilde Q_i P_{\le j_0}\big((u_{\mathrm{coh},i}\partial_i)v\big)
+
R^{\mathrm{collar}}_{i,j_0}[X;Y],
```

where `\widetilde Q_i` is the classical image of the carrier localizer `Q_i`
and `R^{\mathrm{collar}}_{i,j_0}[X;Y]` is a selector-collar remainder.

## Theorem PSTE

Assume, on one common bridge surface:

1. **Selector-localized transport intertwining.**

   For every `Y\in K_D`,

   ```math
   \rho(\mathcal T^{\mathrm{coh}}_{i,j_0}[X]Y)
   =
   \widetilde Q_i P_{\le j_0}\big((u_{\mathrm{coh},i}\partial_i)v\big)
   +
   R^{\mathrm{collar}}_{i,j_0}[X;Y].
   ```

2. **Inherited readout Sobolev comparison.**

   ```math
   \|\rho(Z)\|_{H^s(\mathbb R^3)}
   \le
   C_s\|Z\|_{H_D^s}.
   ```

3. **Carrier-side coherent transport bound on persistent support.**

   ```math
   \|\mathcal T^{\mathrm{coh}}_{i,j_0}[X]Y\|_{H_D^s}
   \le
   c_{i,s}\,\nu\,2^{2j_0}\|Y\|_{H_D^s}.
   ```

Then

```math
\|\nabla \widetilde Q_i P_{\le j_0}((u_{\mathrm{coh},i}\partial_i)v)\|_{L^\infty_x}
\le
C_s c_{i,s}\,\nu\,2^{2j_0}\|Y\|_{H_D^s}
+
\|\nabla R^{\mathrm{collar}}_{i,j_0}[X;Y]\|_{L^\infty_x}.
```

In particular, if the collar remainder satisfies the same bridge-surface bound
as the displayed `R^{\mathrm{collar}}_{i,j_0}` term above, then
selector-localized coherent transport exports to the classical side at the
viscous scale.

## Proof

Start from the transport intertwining identity:

```math
\widetilde Q_i P_{\le j_0}\big((u_{\mathrm{coh},i}\partial_i)v\big)
=
\rho(\mathcal T^{\mathrm{coh}}_{i,j_0}[X]Y)
- R^{\mathrm{collar}}_{i,j_0}[X;Y].
```

Take one spatial derivative and `L^\infty_x` norm:

```math
\|\nabla \widetilde Q_i P_{\le j_0}((u_{\mathrm{coh},i}\partial_i)v)\|_{L^\infty_x}
\le
\|\nabla \rho(\mathcal T^{\mathrm{coh}}_{i,j_0}[X]Y)\|_{L^\infty_x}
+
\|\nabla R^{\mathrm{collar}}_{i,j_0}[X;Y]\|_{L^\infty_x}.
```

Since `s>\frac52`, Sobolev embedding gives

```math
\|\nabla f\|_{L^\infty_x}
\le C_s
\|f\|_{H^s_x}.
```

Apply this to `f=\rho(\mathcal T^{\mathrm{coh}}_{i,j_0}[X]Y)` and then use the
readout Sobolev comparison:

```math
\|\nabla \rho(\mathcal T^{\mathrm{coh}}_{i,j_0}[X]Y)\|_{L^\infty_x}
\le C_s
\|\rho(\mathcal T^{\mathrm{coh}}_{i,j_0}[X]Y)\|_{H^s_x}
\le
C_s\|\mathcal T^{\mathrm{coh}}_{i,j_0}[X]Y\|_{H_D^s}.
```

Now insert the carrier-side transport bound:

```math
\|\mathcal T^{\mathrm{coh}}_{i,j_0}[X]Y\|_{H_D^s}
\le
c_{i,s}\nu2^{2j_0}\|Y\|_{H_D^s}.
```

Combining the three displayed inequalities yields the theorem. `\square`

## Meaning

This is the exact second bridge surface after the ontology refactor.

It shows that once selector-localized coherent transport is correctly
intertwined with the classical transport channel, the inherited readout
Sobolev comparison is already enough to turn a carrier-side viscous-scale
bound into the corresponding classical `W^{1,\infty}` bound.

So the remaining content on this interface is not “find another shell
estimate.” It is:

1. prove the selector-localized transport intertwining;
2. prove the carrier-side viscous-scale operator bound;
3. show the collar remainder satisfies the bridge-surface residual bound.

## Interfaces

- [carrier-to-classical-low-mode-export-theorem.md](/Users/thomasbirnie/Documents/Research-Consolidation/problems/navier-stokes/theorem-construction/carrier-to-classical-low-mode-export-theorem.md)
- [coherent-readout-low-mode-comparison-theorem.md](/Users/thomasbirnie/Documents/Research-Consolidation/problems/navier-stokes/theorem-construction/coherent-readout-low-mode-comparison-theorem.md)
- [carrier-frequency-aligned-readout-theorem.md](/Users/thomasbirnie/Documents/Research-Consolidation/problems/navier-stokes/theorem-construction/carrier-frequency-aligned-readout-theorem.md)
- [carrier-coherence-defect-to-low-mode-strain-suppression.md](/Users/thomasbirnie/Documents/Research-Consolidation/problems/navier-stokes/theorem-construction/carrier-coherence-defect-to-low-mode-strain-suppression.md)
