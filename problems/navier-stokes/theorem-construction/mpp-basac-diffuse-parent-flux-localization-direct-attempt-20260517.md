# MPP BASACDiffuseParentFluxLocalization.A Direct Attempt

Date: 2026-05-17

## Status

Failed unconditional discharge from installed inputs. The attempt separates lateral transported-cylinder incoming flux from terminal time-face source concentration.

## Route position

The previous note reduced the `B_ASAC` Liouville route to source-ancestry compactness:

```math
BASACSourceAncestryCompactness.A
\Longrightarrow
BASACNoIncomingSourceDrain.A
\Longrightarrow
ZenoResidueLiouville_{B_{ASAC}}.A.
```

A proposed lower localization theorem was:

```math
\boxed{BASACDiffuseParentFluxLocalization.A}
```

## Target

Prove that any nonzero diffuse terminal legal same-fluid parent cloud in `B_ASAC` carries nonzero incoming transported-cylinder source flux for the `B_ASAC` tangent class. Then

```math
BASACDiffuseParentFluxLocalization.A
+
TransportedCylinderNoFlux_{B_{ASAC}}.A
\Longrightarrow
BASACSourceAncestryCompactness.A.
```

## Attempt 1: local balance on a transported cylinder

Let `\mathcal C_R(s_0,0)` be a transported cylinder in frozen-strain coordinates.
With `Err_R` defined as the cutoff, transport-coordinate, and localization
remainder, the local source balance is the identity

```math
\mu^{src}(\mathcal C_R\cap\{s=0\})
=
\mu^{src}(\mathcal C_R\cap\{s=s_0\})
+
Flux_{lat,R}
+
Err_R
+
Face_{time,0}.
```

The `B_ASAC` clauses remove fixed earlier selected source slices, legal exits, finite/non-Zeno donor exits, and ASAC-paid defects. They do not remove the terminal time-face contribution `Face_{time,0}`. A zero-thickness terminal source atom may sit entirely in that time-face term.

Therefore a nonzero terminal diffuse parent cloud does not force nonzero lateral transported flux.

## Attempt 2: compact terminal-layer model

Use a terminal layer supported inside a fixed compact spatial ball:

```math
F_m^{src,+}(s,x)=m\,1_{(-1/m,0]}(s)\rho(x),
\qquad \rho\ge0,
\qquad \int\rho=1.
```

The time marginal has bounded `L^1_s` mass and converges to a terminal atom. For every large transported cylinder containing `supp(\rho)`, the lateral boundary flux can be zero while the terminal time-face source charge remains one.

This model records the exact localization gap: compact terminal concentration is a time-face obstruction, not a spatial incoming-flux obstruction.

## Attempt 3: transported-coordinate contracting directions

The older no-incoming audit shows that contracting frozen-strain directions can carry mass from spatial infinity into a compact region. That produces one valid obstruction to backward uniqueness. It does not exhaust all terminal atom mechanisms.

A terminal Zeno parent cloud can concentrate in heat time while staying spatially localized. Such a cloud creates a terminal source atom without forcing large-radius transported boundary flux.

Thus transported-cylinder no-flux controls the spatial-incoming branch, while the terminal time-face branch still needs temporal anti-concentration.

## Attempt 4: full parabolic-boundary reformulation

One can define a full boundary flux that includes the terminal time face. Under that definition the theorem becomes immediate: the nonzero source atom itself is the nonzero terminal boundary flux.

That reformulation gives no Liouville gain. To close the route, the terminal time-face term must be ruled out by an independent theorem such as

```math
TerminalSourceReverseHolder_{B_{ASAC}}.A
```

or

```math
UniformTemporalSourceIntegrability_{p,B_{ASAC}}.A,
\qquad p>1.
```

## Result

`BASACDiffuseParentFluxLocalization.A` fails in the useful lateral/no-incoming form. A terminal Zeno source atom can be compactly supported in space and concentrated on the terminal time face, with zero ASAC defect and no bounded earlier selected source slice.

## Corrected no-flux route

The no-incoming route must carry an explicit time-face anti-atom clause:

```math
\boxed{
TransportedCylinderNoFlux_{B_{ASAC}}.A
+
BASACTimeFaceAntiAtom.A
\Longrightarrow
BASACSourceAncestryCompactness.A.
}
```

Here

```math
BASACTimeFaceAntiAtom.A
```

may be supplied by terminal reverse Holder, super-`L^1_s` temporal residence, branch-entropy reserve, or a stronger rigid `B_ASAC` subclass with residue Liouville.

## Verdict

The lateral flux localization route alone cannot close `ZenoResidueLiouville_{B_ASAC}.A`. The remaining atom is now sharper:

```math
\boxed{BASACTimeFaceAntiAtom.A}
```

or equivalently a theorem that rules out zero-thickness terminal source concentration inside the produced `B_ASAC` class.
