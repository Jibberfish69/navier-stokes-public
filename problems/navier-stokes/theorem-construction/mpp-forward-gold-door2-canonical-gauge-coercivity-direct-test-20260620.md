# Door 2 Canonical Gauge Coercivity Direct Test

Date: 2026-06-20

Status: direct child test; not proved from current installed inputs.  The test
shows that `CanonicalGaugeCoercivity.A` is not supplied by measurable center
selection, canonical atlas language, or zero stress flux.  It requires a
uniform nondegenerate gauge Jacobian on the selected terminal profile class,
plus selector stability and single-bubble separation.

## 1. Target under test

The Door 2 drift branch currently needs

```math
\text{CanonicalGaugeCoercivity.A}
+
\text{ModulationForcingNativeProjection.A}
+
\text{NoNeutralModulationLoop.A}
\Longrightarrow
\text{ZeroFluxDriftVisibility.A}.
\tag{CG.1}
```

The modulation-projection child already reduces to a nondegenerate modulation
Jacobian plus a source-resolved native mode readout.  This note tests the
gauge side.

## 2. Desired gauge coercivity

Let the renormalized orbit be written as

```math
U_{\alpha}(s)
=
g_{\alpha(s)}U(s),
\qquad
\alpha=(x,\lambda,R,\theta,\iota),
\tag{CG.2}
```

where \(\alpha\) contains translation, scale, rotation, phase, and selector
parameters.  A canonical gauge is a family of constraints

```math
\mathcal G_i(U_\alpha)=0,
\qquad i=1,\dots,N_{mod}.
\tag{CG.3}
```

The coercive estimate needed by Door 2 is not mere existence of some selected
\(\alpha(s)\).  It is a quantitative inverse estimate:

```math
|\dot\alpha(s)|
\le
C_{gauge}
\left(
\|\partial_s U_{\alpha(s)}\|_{\mathcal X^\ast}
+\operatorname{Def}_{gauge}(s)
\right),
\tag{CG.4}
```

or equivalently, after differentiating `(CG.3)`,

```math
|\dot\alpha(s)|
\le
C
\left|
\left\langle
\partial_sU_{\alpha(s)},\Psi(U_{\alpha(s)})
\right\rangle
\right|
+C\,\operatorname{Def}_{gauge}(s).
\tag{CG.5}
```

This requires the Jacobian

```math
K_{i\beta}(U)
=
D_\beta\mathcal G_i(U)
=
\left\langle
G_\beta U,\Psi_i(U)
\right\rangle
\tag{CG.6}
```

to have a uniform lower singular value:

```math
\sigma_{\min}K(U)\ge c_0>0
\tag{CG.7}
```

throughout the selected terminal profile class.

## 3. Why canonical selection is not enough

The canonical-center atlas notes prove a different kind of statement: if all
windows use one selected center/projector section, overlap mismatch disappears.
That is an admissibility/globalization fact.  It does not prove `(CG.7)`.

Measurable selection can choose one representative from several candidates,
but it need not give a stable representative.  A selected center can jump, a
selected scale can sit on a flat norm plateau, and a selected packet can switch
between two equally good packets.  These are all failures of coercivity rather
than failures of measurability.

## 4. Exact failure shapes

### 4.1 Flat scale plateau

Let the scale-fixing functional be

```math
A(\lambda;U)
=
\int_{A_1}
|U_\lambda(y)|^2\,dy.
\tag{CG.8}
```

The gauge wants \(A(\lambda;U)=a_0\).  Coercivity needs

```math
\left|\partial_{\log\lambda}A(\lambda;U)\right|
\ge c_0.
\tag{CG.9}
```

The installed inputs do not exclude a terminal profile sequence
\((U_m,\lambda_m)\) where

```math
\partial_{\log\lambda}A(\lambda_m;U_m)\to0
\tag{CG.10}
```

on the selected annular range.  Then the scale parameter can drift with small
or invisible gauge residual.

### 4.2 Rotational degeneracy

If the selected profile is axisymmetric relative to the chosen functional, then

```math
\mathcal G(RU)=\mathcal G(U)
\tag{CG.11}
```

along a nontrivial rotation subgroup.  The rotation block of `(CG.6)` has a
kernel.  The gauge can select a rotation measurably, but no estimate of the
form `(CG.4)` follows.

### 4.3 Two-bubble selector switching

Suppose two packets carry comparable selected weight:

```math
w(P_1)\ge c_b W,
\qquad
w(P_2)\ge c_b W.
\tag{CG.12}
```

and their selector scores differ by

```math
|\operatorname{score}(P_1)-\operatorname{score}(P_2)|\to0.
\tag{CG.13}
```

A measurable selector can choose one packet, but a tiny perturbation can switch
the representative.  The resulting parameter path has jumps or rapid drift
without a uniform coercive Jacobian.

### 4.4 Translation barycenter degeneracy

A symmetric two-lump profile can have a fixed barycenter while the selected
active packet moves from one lump to the other.  The center constraint remains
small, but the packet-level normalization changes.  This is a direct
single-bubble failure, not a stress-flux failure.

## 5. What would prove the child

`CanonicalGaugeCoercivity.A` would follow from the package

```math
\boxed{
\text{GaugeFunctionalSpectralGap.A}
}
\tag{CG.14}
```

```math
\boxed{
\text{SelectorStability.A}
}
\tag{CG.15}
```

```math
\boxed{
\text{SingleBubbleSeparation.A}
}
\tag{CG.16}
```

where:

1. `GaugeFunctionalSpectralGap.A` gives `(CG.7)` for the chosen constraints;
2. `SelectorStability.A` prevents terminal packet-score ties and rapid
   selector switching;
3. `SingleBubbleSeparation.A` prevents two comparable selected bubbles from
   sharing the canonical normalization.

In formula form, the package should produce

```math
\sigma_{\min}K(U)\ge c_0,
\qquad
\operatorname{gap}_{sel}(U)\ge c_{sel}W(U),
\qquad
W_2(U)\le(1-c_b)W(U),
\tag{CG.17}
```

on the terminal compact profile class.

## 6. Exact reduction

The direct test yields

```math
\boxed{
\text{CanonicalGaugeCoercivity.A}
\Leftarrow
\text{GaugeFunctionalSpectralGap.A}
+
\text{SelectorStability.A}
+
\text{SingleBubbleSeparation.A}.
}
\tag{CG.18}
```

The first item is the local implicit-function / spectral-gap part.  The second
and third items are compactness/rigidity parts.  They are not consequences of
zero flux.

This also gives a precise sufficient route for the earlier
`SingleBubbleCanonicalGauge.A` target:

```math
\boxed{
\text{SelectorStability.A}
+
\text{SingleBubbleSeparation.A}
+
\text{GaugeFunctionalSpectralGap.A}
\Longrightarrow
\text{SingleBubbleCanonicalGauge.A}.
}
\tag{CG.19}
```

The reverse implication is not asserted here.

## Verdict

`CanonicalGaugeCoercivity.A` is not installed by the current canonical atlas or
zero-flux inputs.  The atlas can choose coordinates.  Door 2 needs those
coordinates to be quantitatively unique.  The exact missing content is a
uniform gauge Jacobian lower bound, protected against flat scale plateaus,
rotational symmetry kernels, selector ties, and two-bubble switching.
