---
theorem_id: forward-gold-transported-full-hodgestokes-selector-payment-direct-attempt-20260621
status: direct-attempt-open-reduces-to-fourbody-trace-ac-or-strict-nowaste
logical_landing_node: transported_full_hodgestokes_selector_payment
edge_effect: "Directly tests TransportedFullHodgeStokesSelector.A under the participation-tuple audit, with Hodge-Stokes understood as a working shorthand for the upgraded packet built over the installed Carrier Leray-Hodge projector and Stokes/Laplacian generator. The transport metric identity is exact, and a material/cotangent selector can remove the principal fixed-selector strain commutator. The direct proof still does not close: a scalar heat-scale selector cannot be transported by direction-dependent strain, while an anisotropic transported selector must pay its return to the heat-scale packet through Body-IV deformation geometry. Pressure, viscosity, incompressibility, cutoff, signed, and tail channels also have to be transported and returned on the same carrier. The attempt therefore reduces the producer to full-tuple transported metric compatibility, heat-scale return AC, pressure trace AC, viscous metric-commutator absorption, signed saturation, bounded-below capacity, and same-carrier selected full-packet identification. Under current installed inputs this is FourBodyTerminalTraceAC.A or StrictFourBodyNoWasteLyapunov.A plus same-carrier compactness/no-loss, not a smaller proof."
parents:
  - problems/navier-stokes/theorem-construction/carrier-axiom-sheet.md
  - problems/navier-stokes/theorem-construction/carrier-realization-classical-identification.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-pressure-adapted-no-residue-skew-coercivity-criterion-20260621.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-transported-pressure-adapted-selector-commutator-potential-test-20260621.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-participation-preserving-hodge-stokes-packet-replacement-20260621.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-full-hodgestokes-packet-compactness-noloss-attempt-20260621.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-lossless-full-hodgestokes-packet-rigidity-20260621.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-fourbody-terminal-trace-ac-component-test-20260621.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-strict-nowaste-full-tuple-recheck-20260621.md
  - problems/navier-stokes/theorem-construction/mpp-participation-tuple-coupling-breaker-live-edge-audit-20260621.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-upgraded-four-body-current-frontier-20260621.md
---

# Transported Full Hodge-Stokes Selector Payment Direct Attempt

Date: 2026-06-21

## 0. Aim

The open producer behind the no-residue route is

```math
\boxed{
\text{TransportedFullHodgeStokesSelector.A.}
}
\tag{TFH.1}
```

Here "Hodge-Stokes" is a working shorthand.  The installed repo labels are the
Carrier Leray-Hodge projector and the carrier Stokes/Laplacian generator,
classically realized as Leray projection plus Stokes viscosity.  This note tests
the upgraded selected packet that keeps the projected force, pressure
complement, viscosity, time, divergence, and selection records together.

It is meant to prove the full-cycle payment

```math
\left[
\mathcal C_\sigma^{tr}
+\mathcal C_\sigma^p
+\mathcal C_\sigma^\nu
+\mathcal C_\sigma^{time}
+\mathcal C_\sigma^{div}
+\mathcal C_\sigma^{cut}
+\mathcal C_\sigma^{scale}
+\mathcal C_\sigma^{sgn}
+\mathcal C_\sigma^{tail}
\right]_{\mathcal S,+}
\le
\varepsilon\nu D_\sigma
-\partial_\sigma\Phi_\sigma
+T_\sigma
+R_{\rm legal}(\sigma),
\tag{TFH.2}
```

with \(T_\sigma,R_{\rm legal}\in L^1_\sigma\), \(\Phi_\sigma\) bounded below,
and no square-source remainder

```math
C_\varepsilon\Theta_\sigma^2E_\sigma.
\tag{TFH.3}
```

The participation-tuple audit forbids a one-channel proof.  The selected packet
must first retain

```math
R_{\sigma,P}+N_{\sigma,P}+P_{\sigma,P}+V_{\sigma,P}=L_{\sigma,P},
\qquad
I_{\sigma,P}\text{ on the same carrier.}
\tag{TFH.4}
```

Only after `(TFH.4)` is retained may scalar estimates enter as cleanup.

## 1. The exact part that works

Let

```math
A_\sigma^{tr}=S_\sigma^{tr},
\qquad
G_\sigma^{tr}=(A_\sigma^{tr})^\ast A_\sigma^{tr},
\qquad
L=u\cdot\nabla .
\tag{TFH.5}
```

For an incompressible velocity field, \(L^\ast=-L\) in the closed localized
pairing.  Therefore

```math
\boxed{
\langle A_\sigma^{tr}Lu,A_\sigma^{tr}u\rangle
=
-{1\over2}\langle[L,G_\sigma^{tr}]u,u\rangle.
}
\tag{TFH.6}
```

This is an exact algebraic identity.  The selected transport contribution is
the transport commutator of the selector metric.

At symbol level, the cotangent material derivative is

```math
D_s^c
=
\partial_s
+u\cdot\nabla_x
-(\nabla u)^T\xi\cdot\nabla_\xi .
\tag{TFH.7}
```

For a transported metric symbol \(g_\sigma^{tr}(s,x,\xi)\), the desired
principal transport condition is

```math
D_s^c g_\sigma^{tr}
=
\partial_\sigma k_\sigma
+r_\sigma.
\tag{TFH.8}
```

If `(TFH.8)` held with \(r_\sigma\) viscous-absorbable or \(L^1_\sigma\), then
`(TFH.6)` would contribute a scale-capacity drop plus legal tail, rather than
the fixed-selector strain commutator.

So the transport-channel idea is correct.  The problem is whether it survives
the heat-scale carrier and the other Hodge-Stokes channels.

## 2. Scalar heat-scale selectors cannot be transported exactly

A scalar dyadic heat-scale selector has the form

```math
g_\sigma(s,x,\xi)=\gamma(\log|\xi|-\sigma).
\tag{TFH.9}
```

Along the cotangent flow,

```math
D_s^c\log|\xi|
=
-\hat\xi\cdot S\hat\xi,
\qquad
S={1\over2}\big(\nabla u+\nabla u^T\big).
\tag{TFH.10}
```

Hence

```math
D_s^c g_\sigma
=
\gamma'(\log|\xi|-\sigma)
\big(
-\hat\xi\cdot S\hat\xi-\sigma_s
\big)
\tag{TFH.11}
```

if the center \(\sigma\) is allowed to move.  A single scalar \(\sigma_s\)
cannot equal the direction-dependent quantity
\(-\hat\xi\cdot S\hat\xi\) on a genuine packet unless the selected strain is
isotropic on the whole carrier.

Thus a scalar heat-scale selector has two choices.

First, keep the heat-scale selector fixed.  Then `(TFH.11)` is exactly the
active strain commutator that leads back to
\(C_\varepsilon\Theta_\sigma^2E_\sigma\).

Second, move the selector with the cotangent geometry.  Then the selected
object becomes anisotropic and material.  It no longer remains the original
heat-scale packet without a return map.

So the no-residue route cannot be a scalar LP trick.  It must be an anisotropic
moving-metric theorem plus a return-to-heat-scale theorem.

## 3. The return to heat scale is Body IV payment

Let \(F\) be the deformation gradient of the material flow and let cotangent
vectors move by \(F^{-T}\).  A transported metric can be represented
schematically by

```math
g_\sigma^{tr}(s,x,\xi)
=
g_{\sigma_0}\big(a,F(s,a)^T\xi\big),
\qquad
x=X(s,a).
\tag{TFH.12}
```

This removes the principal transport commutator, but it stores the strain in
the deformation of \(F^{-T}\).  Returning this anisotropic selected metric to a
heat-scale packet requires control of the same deformation clock that Body IV
tracks.

The exact obstruction is:

```math
\boxed{
\text{transported metric no-residue}
+
\text{same heat-scale carrier}
\Longrightarrow
\text{unweighted Body-IV deformation return.}
}
\tag{TFH.13}
```

Without terminal absolute continuity or strict no-waste for that deformation
return, the return map can carry an infinite Zeno schedule of anisotropic
relocalizations.  That is not a new payment; it is the same unweighted
terminal geometry/modulus wall.

## 4. Pressure channel test

The pressure is tied to the same carrier by

```math
-\Delta p
=
\partial_i u_j\,\partial_j u_i.
\tag{TFH.14}
```

A transported anisotropic selector does not commute with the local pressure
decomposition, the conormal pressure trace, or the collar/harmonic pressure
split.  The pressure contribution therefore has to remain as a channel

```math
\mathcal C_\sigma^p
=
\text{pressure trace/gauge/collar contribution on the same selected carrier.}
\tag{TFH.15}
```

For `(TFH.2)` to follow, this channel must satisfy

```math
\mathcal C_\sigma^p
\le
-\partial_\sigma\Phi_\sigma^p
+T_\sigma^p
+R_{\rm legal}^p(\sigma),
\qquad
T_\sigma^p,R_{\rm legal}^p\in L^1_\sigma,
\tag{TFH.16}
```

or else it must be visibly charged as pressure/collar/legal loss.  Current
inputs route harmonic pressure memory to collar/legal/terminal trace, but they
do not prove `(TFH.16)` as an unweighted terminal producer.

Thus pressure does not destroy the route, but it keeps the route at the
terminal trace/no-waste wall.

## 5. Viscous channel test

The viscosity term is favorable only when the selected metric is compatible
with the isotropic heat operator.  For a moving anisotropic metric,

```math
\nu\langle G_\sigma^{tr}\Delta u,u\rangle
=
-\nu\langle G_\sigma^{tr}\nabla u,\nabla u\rangle
+\nu\,\mathcal E_\sigma^\nu,
\tag{TFH.17}
```

where \(\mathcal E_\sigma^\nu\) contains metric-gradient, cutoff, and
Laplacian-selector commutators.  The no-residue route requires

```math
\mathcal E_\sigma^\nu
\le
\varepsilon D_\sigma
+T_\sigma^\nu
+R_{\rm legal}^\nu(\sigma),
\qquad
T_\sigma^\nu,R_{\rm legal}^\nu\in L^1_\sigma.
\tag{TFH.18}
```

This is again not supplied by viscosity alone.  It needs the moving metric to
have unweighted terminal regularity and bounded geometry return.  Otherwise
the viscous commutator is another copy of the four-body terminal trace problem.

## 6. Incompressibility, sign, and selected positivity

Incompressibility gives the skew identity `(TFH.6)` and preserves volume under
the material flow.  It does not by itself preserve the terminal positive part
after localization, weighting, lifting, and selector choice.

The selected positive carrier still needs

```math
h_n\to h\text{ in }L^1
\quad\Longrightarrow\quad
[h_n]_+\to[h]_+\text{ in }L^1,
\tag{TFH.19}
```

on the same carrier, or a charged defect.  The current full-packet compactness
note proves this as a criterion, not as an automatic consequence of weak
suitable compactness.

The signed side also still needs terminal saturation.  Finite donor chains are
paid, but the infinite terminal Zeno donor chain remains unless it is charged,
no-waste-paid, or converted to profile production.

## 7. Capacity lower bound

The intended capacity is

```math
\Phi_\sigma
=
{1\over2}\langle K_\sigma u,u\rangle.
\tag{TFH.20}
```

The integration step for the unweighted reserve needs

```math
\inf_{\sigma\ge\sigma_0}\Phi_\sigma>-\infty.
\tag{TFH.21}
```

For a transported anisotropic selector, \(K_\sigma\) records scale return,
pressure gauge return, viscous metric correction, cutoff/collar motion, and
signed-carrier stabilization.  Current inputs do not prove `(TFH.21)` for that
combined object.  Proving it is a strict no-waste Lyapunov theorem or the
terminal absolute-continuity theorem in another form.

## 8. Direct attempt verdict

The direct attempt gives one exact positive result:

```math
\boxed{
\text{the fixed-selector square-source residue is the cotangent material
derivative of the selector metric.}
}
\tag{TFH.22}
```

It also gives one exact obstruction:

```math
\boxed{
\text{a transported full Hodge-Stokes selector must be anisotropic, returned
to heat scale, pressure-compatible, viscous-compatible, sign-compatible, and
capacity-bounded on the same carrier.}
}
\tag{TFH.23}
```

Therefore the direct theorem does not close from current installed inputs.  It
reduces to

```math
\boxed{
\text{TransportedFullHodgeStokesSelector.A}
\Leftarrow
\begin{gathered}
\text{full-tuple transported metric compatibility}\\
+\text{heat-scale return terminal AC}\\
+\text{pressure trace terminal AC}\\
+\text{viscous metric-commutator absorption}\\
+\text{signed saturation/no-loss}\\
+\text{bounded-below combined capacity}\\
+\text{selected full-packet identification.}
\end{gathered}
}
\tag{TFH.24}
```

Under the current frontier, `(TFH.24)` is not smaller than the already isolated
producer.  It lands in the same fork:

```math
\boxed{
\text{FourBodyTerminalTraceAC.A}
\quad\text{or}\quad
\text{StrictFourBodyNoWasteLyapunov.A}
}
\tag{TFH.25}
```

together with same-carrier full-packet compactness/no-loss and selected
full-packet identification.

So this branch is now exhausted at the direct-selector level.  The transported
selector idea is still the right way to understand where the square-source
residue comes from, but it does not independently supply the unweighted
terminal reserve without the full four-body trace/no-waste theorem.
