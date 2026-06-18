# MPP TerminalSignedSaturation.A Direct Attempt

## Status

Direct theorem-grade attempt on the common primitive left by the parabolic
source-current route:

```math
\boxed{
TerminalSignedSaturation.A.
}
```

Verdict:

```math
\boxed{
TerminalSignedSaturation.A
\text{ is not proved from the currently installed Navier--Stokes lane inputs.}
}
```

The attempt shows that the saturation theorem is not a bookkeeping corollary
of bare dyadic skewness, same-fluid transport, first-current selection, or
heat-action graph decomposition.  It is a signed positive-source depletion
theorem.  In the current route it is equivalent to the same unresolved native
positive source-control wall.

## Target

For every selected same-fluid terminal active packet family `\mathcal F_N`,
every positive localized source edge feeding a selected terminal packet must
have its signed counter-edge either:

```math
\text{inside the same usable terminal ledger,}
```

or:

```math
\text{paid by installed legal pressure/cutoff/collar/off-family/boundary,
residual, heat, or earlier-arrival ledgers.}
```

Equivalently, for the selected active source carrier,

```math
\boxed{
\int_{\mathcal F_N}
(\mathfrak S_{N,loc}^{active})_+
\le
\int_{\mathcal F_N}
(\mathfrak S_{N,loc}^{active})_-
+o_N(1)+Loss_{legal}.
}
\tag{TSS.1}
```

This is the terminal same-fluid version of `SignedPositiveBalance.A`.

## Installed Algebra

Before terminal localization, one-sided weights, lifted commutators, and
positive-part extraction, the incompressible dyadic energy exchange is skew:

```math
\mathcal I_{j;k,\ell}+\mathcal I_{\ell;k,j}=0.
\tag{TSS.2}
```

On a finite unweighted closed interaction graph, this gives a bare
antisymmetric current:

```math
BareDyadicSkewCurrent.0.
```

This is installed.  It is not the desired terminal theorem.

## Direct Attempt

Fix a selected positive terminal edge

```math
e:P^-\to P^+,
\qquad
d\mathcal S_e(P^+)>0.
```

Use `(TSS.2)` to assign its formal counter-edge.  The hoped-for proof is:

1. retain both endpoints in a same-fluid signed ledger;
2. charge all defects created by localization and weighting as legal loss;
3. use first-current selection to discard earlier arrivals;
4. use heat-action estimates for remaining parabolic cycles.

Each step is valid only conditionally.  The proof fails before heat action is
relevant.

After the live source-wall operations, the paired contributions have the form

```math
W_+A_+
\qquad\text{and}\qquad
-W_-A_-
```

plus lifted/cutoff/window defects.  The mismatch is

```math
\Delta_e
=
W_+A_+-W_-A_-
+R_e^{lift/cut}
+R_e^{window/off}.
\tag{TSS.3}
```

The desired theorem requires

```math
\sum_{e\text{ feeding }\mathcal F_N}
\int |\Delta_e|\,dt
\le
o_N(1)+Loss_{legal}.
\tag{TSS.4}
```

No installed input proves `(TSS.4)`.

## Failure Modes

### One-sided weights

The source-wall tail weights are not symmetric under exchange of the paired
endpoints.  The coefficient mismatch is order-size, not a commutator already
paid by legal loss.

### Lifted localized remainder

The live principal term is not the bare shell flux.  In separated scale form it
contains the localized lifted strain product

```math
|w_j|^2
\left[
e_j\cdot S_{<j}^{loc}e_j
\right]_+.
\tag{TSS.5}
```

This can be positive on selected terminal packets aligned with expanding
strain.  Current pressure recovery, incompressibility, finite energy, and
packet transport do not force a negative partner on the same terminal ledger.

### Terminal selection

The negative formal counter-edge may lie outside `\mathcal F_N`, outside the
same time window, in a donor packet not selected as terminal bad, or in a
collar/off-family spill.  Same-fluid fidelity preserves admissible labels, but
it does not prove the counter-edge remains in the selected consumer ledger or
is legally small.

### First-current selection

First-current selection excludes earlier positive arrivals of the same
selected class.  It does not charge an internal negative donor sink feeding the
terminal receiver in the same window.  That is exactly the no-free-sink
obstruction.

### Heat-action graph decomposition

Closed parabolic cycles can be priced only after the selected positive source
has been converted into a cycle or a legal boundary/earlier-arrival object.  An
internal donor-sink-to-receiver-source path need not cross a heat edge before
producing positive terminal divergence.

## Strongest Valid Reduction

The following conditional statement is valid:

```math
\boxed{
\begin{aligned}
&WeightedLiftedDefectCarleson.A\\
&\quad+
OffFamilyCounteredgeCharge.A\\
&\quad+
ParabolicNoFreeSink.A\\
&\Longrightarrow
TerminalSignedSaturation.A.
\end{aligned}
}
\tag{TSS.6}
```

Here `WeightedLiftedDefectCarleson.A` is `(TSS.4)` for one-sided weights and
lifted/cutoff remainders.  `OffFamilyCounteredgeCharge.A` is the charge for
signed partners that leave the selected terminal family or time window.
`ParabolicNoFreeSink.A` rules out unpaid donor-sink paths feeding terminal
positive divergence.

However, these are not lower installed inputs.  On the current route they are
three faces of the same signed positive-source balance:

```math
\boxed{
TerminalSignedSaturation.A
\equiv_{\mathrm{route}}
SignedPositiveBalance.A
\equiv_{\mathrm{route}}
\text{native positive source-control on selected terminal windows.}
}
\tag{TSS.7}
```

Taking absolute values instead of proving `(TSS.1)` returns to:

```math
ScaleCriticalTreeCarleson.A.
```

Passing to compactness instead returns to:

```math
ZenoBoundedClass_B.A+ZenoResidueLiouville_B.A.
```

## Consequence

`TerminalSignedSaturation.A` conditionally supplies both missing parabolic
source-current gates:

```math
TerminalSignedSaturation.A
\Longrightarrow
TerminalSkewLocalizationLedger.A
\Longrightarrow
LocalizedSkewCurrent.A,
```

and

```math
TerminalSignedSaturation.A
\Longrightarrow
ParabolicNoFreeSink.A.
```

Together with a genuine heat-edge resistance/coercivity input, this feeds
the signed-current route to `ScaleCriticalTreeCarleson.A`.

But this note does not prove the saturation theorem.  The exact obstruction is:

```math
\boxed{
\text{after one-sided weights, lifted localization, and terminal selection,
the selected positive source edge can lose its negative signed partner outside
the usable same-fluid ledger, and current legal losses do not charge that
loss.}
}
```

Thus the source wall remains:

```math
\boxed{
ScaleCriticalTreeCarleson.A
\quad\text{or}\quad
ZenoBoundedClass_B.A+ZenoResidueLiouville_B.A.
}
```

with the preferred direct signed route sharpened to the uninstalled primitive

```math
\boxed{
TerminalSignedSaturation.A
\text{ / }
SignedPositiveBalance.A.
}
```
