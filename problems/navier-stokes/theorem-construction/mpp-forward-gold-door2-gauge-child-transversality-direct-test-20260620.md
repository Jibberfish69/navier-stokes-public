# Door 2 Gauge Child Transversality Direct Test

Date: 2026-06-20

## Status

Direct child test complete.  The gauge child package is useful, but it is not
produced by the current zero-flux Zeno inputs.

Update after the compact-frame proof: the finite-dimensional spectral-gap step
is paid relative to a compact selected profile class, quotient-free modulation
action, and legal tangent separation.  The remaining Navier--Stokes production
content is not the open-cover argument; it is producing that compact/free/legal
profile class together with selector stability and single-bubble separation.

The exact result is conditional:

```math
\text{compact selected profile class}
+
\text{transverse gauge constraints}
+
\text{strict selector gap}
+
\text{single-bubble separation}
\Longrightarrow
\text{CanonicalGaugeCoercivity.A}.
\tag{GCT.1}
```

Zero point-force flux, measurable gauge selection, and ordinary profile
compactness still allow isotropy, flat scale plateaus, selector ties, and
two-bubble switching.

## 1. Gauge object

Let the selected renormalized profiles lie in a normalized class
\(\mathcal K_{sel}\).  Let the modulation group act by

```math
g_\alpha U,
\qquad
\alpha=(x,\lambda,R,\vartheta,\iota),
\tag{GCT.2}
```

where the parameters represent center, scale, rotation, phase, and selector
choice.  Let the gauge be fixed by constraints

```math
\Gamma_i(g_\alpha U)=0,
\qquad i=1,\dots,N_{mod}.
\tag{GCT.3}
```

The gauge Jacobian is

```math
\mathsf K_{i\beta}(U)
:=
\left\langle
D\Gamma_i(U),X_\beta(U)
\right\rangle,
\tag{GCT.4}
```

where \(X_\beta\) is the infinitesimal generator for the \(\beta\)-th
modulation direction.

The desired spectral statement is

```math
\sigma_{\min}\mathsf K(U)\ge c_0>0
\qquad
\text{for every } U\in\mathcal K_{sel}.
\tag{GCT.5}
```

## 2. What compactness would prove if transversality were known

Assume:

1. \(\mathcal K_{sel}\) is compact in the topology in which `(GCT.4)` is
   continuous.
2. For every \(U\in\mathcal K_{sel}\), the selected gauge is transverse:

```math
\sigma_{\min}\mathsf K(U)>0.
\tag{GCT.6}
```

Then compactness gives the uniform bound `(GCT.5)` by taking the minimum of the
continuous function \(U\mapsto\sigma_{\min}\mathsf K(U)\) on
\(\mathcal K_{sel}\).

Differentiating `(GCT.3)` along a normalized orbit gives

```math
0
=
D\Gamma(U_\alpha)\partial_s U_\alpha
+
\mathsf K(U_\alpha)\dot\alpha
+
\operatorname{Def}_{gauge}.
\tag{GCT.7}
```

Using `(GCT.5)` yields

```math
|\dot\alpha|
\le
c_0^{-1}
\left(
\|D\Gamma(U_\alpha)\partial_s U_\alpha\|
+
\|\operatorname{Def}_{gauge}\|
\right).
\tag{GCT.8}
```

This is the canonical gauge coercivity estimate.  Thus the local implicit
function theorem part is not the obstruction.  The obstruction is producing
the compact, transverse, single-selected profile class.

## 3. Four exact degeneracies not excluded by current inputs

### 3.1 Isotropy

If \(U\) is invariant under a nontrivial subgroup of rotations, then for a
rotation generator \(X_\beta\),

```math
X_\beta(U)=0.
\tag{GCT.9}
```

The corresponding column of \(\mathsf K(U)\) vanishes, so

```math
\sigma_{\min}\mathsf K(U)=0.
\tag{GCT.10}
```

Zero point-force flux does not exclude such symmetry.  A measurable gauge can
choose a rotation, but it cannot turn a zero column into a quantitative inverse
estimate.

### 3.2 Flat scale plateau

Let a scale constraint be formed from an annular score

```math
A(\rho;U)
:=
\int_{1<|y|<2}|U(e^\rho y)|^2\,dy.
\tag{GCT.11}
```

Scale coercivity needs

```math
|\partial_\rho A(\rho;U)|\ge c_0.
\tag{GCT.12}
```

The current Zeno compactness inputs do not rule out a selected sequence
\((U_m,\rho_m)\) with

```math
\partial_\rho A(\rho_m;U_m)\longrightarrow0.
\tag{GCT.13}
```

Then the scale coordinate may drift along a nearly flat annular score without
visible native readout.

### 3.3 Selector tie

Let two candidate packets have selected scores \(s_1(U)\) and \(s_2(U)\).  A
strict selector gap would require

```math
s_1(U)-s_2(U)\ge c_{sel}W(U)>0.
\tag{GCT.14}
```

The current inputs allow

```math
s_1(U_m)-s_2(U_m)\longrightarrow0.
\tag{GCT.15}
```

A measurable selector still chooses one packet, but the selected packet can
switch under an arbitrarily small perturbation.  That produces gauge jumps or
rapid gauge motion without contradicting zero stress flux.

### 3.4 Two-bubble switching

Take two separated normalized bubbles with comparable selected weight:

```math
U_m(y)=V_m(y-a_m)+W_m(y+a_m),
\qquad
W(V_m)\ge c_b W(U_m),
\qquad
W(W_m)\ge c_b W(U_m).
\tag{GCT.16}
```

When the two scores are tied up to \(o_m(1)\), the canonical center and
orientation can switch from one bubble to the other while the total stress flux
remains zero or cancels between the two sides.  This is not a failure of
compactness; it is a failure of single-bubble separation.

The needed single-bubble statement is

```math
W_2(U)\le (1-c_b)W(U)
\tag{GCT.17}
```

on the selected terminal class, where \(W_2\) is the second-largest selected
packet score.  Current inputs do not supply `(GCT.17)`.

## 4. Exact child reduction

The direct test proves the following conditional route:

```math
\boxed{
\text{GaugeFunctionalSpectralGap.A}
+
\text{SelectorStability.A}
+
\text{SingleBubbleSeparation.A}
\Longrightarrow
\text{CanonicalGaugeCoercivity.A}.
}
\tag{GCT.18}
```

It also proves that none of the three inputs is a formal consequence of
zero-flux compactness:

```math
\begin{array}{ll}
\text{GaugeFunctionalSpectralGap.A}
& \text{fails under isotropy or flat scale plateau},\\
\text{SelectorStability.A}
& \text{fails under packet-score ties},\\
\text{SingleBubbleSeparation.A}
& \text{fails under two comparable selected bubbles}.
\end{array}
\tag{GCT.19}
```

## 5. Route consequence

This branch does not remove the main heat-scale time-face wall.  It removes
only one possible Door 2 drift ambiguity after the zero-flux branch has already
produced a compact selected profile class with one dominant bubble and an
isotropy-free transverse gauge.

Thus canonical gauge coercivity is not a replacement for
`StrictRescaledNoWasteLyapunov.A`, `UnweightedTerminalCriticalActionReserve.A`,
or `MinimalZenoProfileProduction.A`.  It is a Door 2-specific consumer clause:
it can freeze modulation only after the profile class has already been reduced
to a compact, transverse, single-selected-bubble class.

## Verdict

`CanonicalGaugeCoercivity.A` is conditionally proved from a precise
transversality package, but the package is not installed from current inputs.

The live Door 2-specific unresolved content is exactly

```math
\boxed{
\text{GaugeFunctionalSpectralGap.A}
+
\text{SelectorStability.A}
+
\text{SingleBubbleSeparation.A}
}
\tag{GCT.20}
```

and this content remains downstream of profile production, source-readout
evacuation, and unweighted terminal action/no-waste control.

With `GaugeFunctionalSpectralGap.A` now discharged as a relative compact-frame
theorem, the first term in `(GCT.20)` should be read through its production
inputs:

```math
\text{CompactSelectedProfileClass.A}
+
\text{UniformQuotientFreeModulationAction.A}
+
\text{PointwiseLegalTangentSeparation.A},
\tag{GCT.21}
```

with stabilizer-neutral directions handled by stabilizer readout compatibility.
The unresolved native content is therefore selector stability, single-bubble
separation, compact/free selected profile production, and same-shadow legal
tangent readout.
