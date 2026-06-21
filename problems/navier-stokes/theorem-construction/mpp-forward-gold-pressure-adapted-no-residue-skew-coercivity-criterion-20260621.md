---
theorem_id: forward-gold-pressure-adapted-no-residue-skew-coercivity-criterion-20260621
status: algebraic-skew-reduction-proved-full-hodge-stokes-production-open
logical_landing_node: pressure_adapted_no_residue_skew_coercivity
edge_effect: "Develops the no-residue route for deleting the current square-source residual after repairing the projection-only mistake. The selected object is not A_sigma=S_sigma P alone. Leray projection is only one compatibility channel inside a participation-preserving packet carrying convection, pressure complement, viscosity, time, divergence, cutoff/collar, scale, and signed-saturation records on the same carrier. The phrase Hodge-Stokes packet is used only as a working upgrade label over the installed Carrier Leray-Hodge projector and Stokes/Laplacian generator. The transport-channel interaction still has the exact skew/commutator identity with G_sigma=(A_sigma^tr)^*A_sigma^tr, namely <A_sigma^tr(u.grad u),A_sigma^tr u>=-1/2<[u.grad,G_sigma]u,u>. The production theorem is now full-cycle: the selected positive sum of transport, pressure, viscous, time, divergence, cutoff, scale, and signed channels must be paid by epsilon-viscosity, sigma-capacity drop, and L1 tail, with no C_epsilon Theta_sigma^2 E_sigma remainder. The note proves the algebraic transport-channel reduction and the criterion implication; it now points to the exact compactness/no-loss criterion for the full packet, but it does not prove the upgraded full-packet production theorem."
parents:
  - problems/navier-stokes/theorem-construction/carrier-axiom-sheet.md
  - problems/navier-stokes/theorem-construction/carrier-realization-classical-identification.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-source-square-nowaste-fourbody-supplement-criterion-20260621.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-native-precauchy-to-gauge-quotient-tower-bridge-test-20260621.md
  - problems/navier-stokes/theorem-construction/mpp-local-positive-precauchy-source-carleson-direct-attempt-note.md
  - problems/navier-stokes/theorem-construction/mpp-terminal-skew-localization-ledger-direct-attempt-20260505.md
  - problems/navier-stokes/theorem-construction/mpp-localized-skew-current-theorem-grade-audit-20260505.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-transported-pressure-adapted-selector-commutator-potential-test-20260621.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-upgraded-four-body-current-frontier-20260621.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-participation-preserving-hodge-stokes-packet-replacement-20260621.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-lossless-full-hodgestokes-packet-rigidity-20260621.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-full-hodgestokes-packet-compactness-noloss-attempt-20260621.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-full-hodgestokes-transport-product-defect-evacuation-20260621.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-full-hodgestokes-pressure-trace-defect-reduction-20260621.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-harmonic-pressure-memory-collar-routing-20260621.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-full-hodgestokes-viscous-defect-dichotomy-20260621.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-full-hodgestokes-terminal-trace-atom-routing-20260621.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-full-hodgestokes-signed-saturation-residual-reduction-20260621.md
  - problems/navier-stokes/theorem-construction/mpp-participation-tuple-coupling-breaker-live-edge-audit-20260621.md
---

# Pressure-Adapted No-Residue Skew Coercivity Criterion

Date: 2026-06-21

## 0. Aim

The source-square supplement currently appears when the selected nonlinear
interaction is estimated by size:

```math
|\mathcal C_\sigma|
\lesssim
\Theta_\sigma E_\sigma^{1/2}D_\sigma^{1/2}
\le
\varepsilon\nu D_\sigma
+
C_\varepsilon\Theta_\sigma^2E_\sigma.
\tag{PAN.1}
```

The target here is stronger:

```math
\boxed{
\mathcal M_\sigma^+
\le
\varepsilon\nu D_\sigma
-\partial_\sigma\Phi_\sigma
+
T_\sigma,
\qquad
T_\sigma\in L^1_\sigma,
}
\tag{PAN.2}
```

with no residual

```math
\boxed{
C_\varepsilon\Theta_\sigma^2E_\sigma.
}
\tag{PAN.3}
```

The intended mechanism is not a new source-square estimate.  It is to keep the
incompressible transport part skew while the selected carrier still carries the
full pressure-viscosity-incompressibility packet.

## 1. Participation-preserving Hodge-Stokes packet

The packet name is a working label.  The installed repo structure is the
projected carrier

```math
\partial_tX+\mathbb P_DN_D(X)=A_DX,
\tag{PAN.3a}
```

realized classically as

```math
\partial_tu+\mathbb P(u\cdot\nabla u)=\nu\mathbb P\Delta u,
\qquad
\nabla p=(I-\mathbb P)(u\cdot\nabla u)
\tag{PAN.3b}
```

with the Stokes operator \(A=-\mathbb P\Delta\).  The upgrade here is to keep
the projected channel, pressure complement, Stokes/viscous channel, time
channel, and divergence constraint together during terminal selection.

The earlier one-channel formulation

```math
A_\sigma=S_\sigma P
\tag{PAN.4-old}
```

is not the selected object.  It recombines pressure and convection before the
terminal selector acts.  The corrected selected object is the full
Hodge-Stokes balance packet

```math
\boxed{
\mathcal K_{\sigma,P}
=
\Big(
S_\sigma^{tr}((u\cdot\nabla)u),\;
S_\sigma^p\nabla p,\;
\nu S_\sigma^\nu\Delta u,\;
S_\sigma^t\partial_su,\;
S_\sigma^{div}\nabla\cdot u,\;
S_\sigma^P[\chi_P,\mathbb P_{\rm Leray}](u\cdot\nabla u),\;
\mathcal B_{\sigma,P}^{cut},\;
\mathcal S_{\sigma,P}^{sgn}
\Big).
}
\tag{PAN.4}
```

The local equation carried by `(PAN.4)` is

```math
\partial_su
+
(u\cdot\nabla)u
+
\nabla p
-
\nu\Delta u
=0,
\qquad
\nabla\cdot u=0.
\tag{PAN.4a}
```

Leray projection remains a compatibility identity inside the packet:

```math
\mathbb P_{\rm Leray}\big((u\cdot\nabla)u\big)
=
(u\cdot\nabla)u+\nabla p.
\tag{PAN.4b}
```

It is not allowed to replace `(PAN.4)` by only the projected force channel.

For the transport skew subidentity, let

```math
A_\sigma^{tr}=S_\sigma^{tr},
\qquad
W_\sigma=A_\sigma^{tr}u.
\tag{PAN.5}
```

The transport-channel mixed interaction is

```math
\mathcal M_\sigma^{tr}
=
\left\langle
A_\sigma^{tr}((u\cdot\nabla)u),
W_\sigma
\right\rangle.
\tag{PAN.6}
```

Insert and subtract \(u\cdot\nabla W_\sigma\):

```math
\mathcal M_\sigma^{tr}
=
\left\langle
u\cdot\nabla W_\sigma,W_\sigma
\right\rangle
+
\left\langle
[A_\sigma^{tr},u\cdot\nabla]u,W_\sigma
\right\rangle.
\tag{PAN.7}
```

The first term is the incompressible skew part and vanishes in the closed
localized same-carrier pairing.  Boundary and cutoff contributions are retained
in the full packet `(PAN.4)`, not discarded.

Thus

```math
\boxed{
\mathcal M_\sigma^{tr}=\mathcal C_\sigma^{tr},
\qquad
\mathcal C_\sigma^{tr}
=
\left\langle
[A_\sigma^{tr},u\cdot\nabla]u,
W_\sigma
\right\rangle.
}
\tag{PAN.8}
```

This is the exact algebraic place where the square-source term is born.  It is
not born from the incompressible transport itself.  It is born from estimating
the transport commutator, after the full pressure-viscosity-incompressibility
packet has been localized and selected, by size.

## 2. What the full-cycle commutator contains

For the localized participation-preserving packet, the live object is not a
single Fourier commutator.  It is the full same-carrier packet mismatch:

```math
\mathcal C_\sigma^{full}
=
\mathcal C_\sigma^{tr}
+\mathcal C_\sigma^{p}
+\mathcal C_\sigma^{\nu}
+\mathcal C_\sigma^{time}
+\mathcal C_\sigma^{div}
+\mathcal C_\sigma^{cut}
+\mathcal C_\sigma^{scale}
+\mathcal C_\sigma^{sgn}
+\mathcal C_\sigma^{tail}.
\tag{PAN.9}
```

Here:

```math
\mathcal C_\sigma^{tr}
=
\text{transport selector/gauge mismatch,}
\tag{PAN.10}
```

```math
\mathcal C_\sigma^{p}
=
\text{pressure/conormal/gauge channel,}
\tag{PAN.11}
```

```math
\mathcal C_\sigma^{\nu}
=
\text{viscous channel and selector--Laplacian commutator,}
\tag{PAN.12}
```

```math
\mathcal C_\sigma^{div}
=
\text{incompressibility/divergence constraint channel,}
\tag{PAN.13}
```

and

```math
\mathcal C_\sigma^{cut}
+\mathcal C_\sigma^{scale}
+\mathcal C_\sigma^{sgn}
+\mathcal C_\sigma^{tail}
=
\text{cutoff, scale, signed-saturation, and tail records.}
\tag{PAN.14}
```

The older localized skew-current audits show why bare skew symmetry is not
enough: terminal selection, one-sided weights, lifted/cutoff reductions, and
loss of the signed partner can strand a positive commutator on the selected
carrier.

This note does not erase those failures.  It gives their sharper target:
prove that the full Hodge-Stokes packet is not a square-source residue, but a
viscous/capacity/tail/legal payment on the same carrier.

## 3. No-residue commutator theorem

The exact corrected production theorem is:

```math
\boxed{
\text{ParticipationPreservingNoResidueFullCycle.A}
}
\tag{PAN.15}
```

For every retained terminal same-carrier family, it asserts

```math
\boxed{
\left[\mathcal C_\sigma^{full}\right]_{\mathcal S,+}
\le
\varepsilon\nu D_\sigma
-\partial_\sigma\Phi_\sigma
+
T_\sigma
+
R_{\rm legal}(\sigma),
}
\tag{PAN.16}
```

where

```math
T_\sigma\in L^1([\sigma_0,\infty)),
\qquad
R_{\rm legal}\in L^1([\sigma_0,\infty)),
\tag{PAN.17}
```

and \(\Phi_\sigma\) is a bounded-below terminal capacity / scale-motion
corrector:

```math
\inf_{\sigma\ge\sigma_0}\Phi_\sigma>-\infty.
\tag{PAN.18}
```

The selected positive part
\([\mathcal C_\sigma^{full}]_{\mathcal S,+}\) is essential.  The theorem has
to apply after the actual terminal selector is chosen, not only to the global
signed sum.

The transported-selector test identifies a concrete way the transport channel
inside `(PAN.16)` could be produced.  With

```math
G_\sigma^{tr}=(A_\sigma^{tr})^\ast A_\sigma^{tr},
\qquad
L=u\cdot\nabla,
\tag{PAN.18a}
```

the exact metric identity is

```math
\boxed{
\langle A_\sigma^{tr} L u,A_\sigma^{tr}u\rangle
=
-{1\over2}\langle [L,G_\sigma^{tr}]u,u\rangle.
}
\tag{PAN.18b}
```

Thus the transport commutator is the transport commutator of the selector
metric.  At the symbol level this is the cotangent material derivative.  A
fixed dyadic selector turns \([L,G_\sigma^{tr}]\) into the active
strain/source-square residue.  A transported transport-channel selector must
now be compatible with the other Hodge-Stokes channels:

```math
\partial_sG_\sigma^{tr}
+[L,G_\sigma^{tr}]
+\mathcal P_\sigma
+\mathcal V_\sigma
+\mathcal I_\sigma
+\mathcal B_\sigma
=
\partial_\sigma K_\sigma+R_\sigma,
\tag{PAN.18c}
```

where \(\mathcal P_\sigma,\mathcal V_\sigma,\mathcal I_\sigma,\mathcal
B_\sigma\) are the pressure, viscous, incompressibility/divergence, and
boundary/cutoff records.  The \(\partial_\sigma K_\sigma\) term gives the
capacity drop \(-\partial_\sigma\Phi_\sigma\), and \(R_\sigma\) is
viscous-absorbable or \(L^1_\sigma\).

So the concrete production target behind `(PAN.16)` is now

```math
\boxed{
\text{TransportedFullHodgeStokesSelector.A.}
}
\tag{PAN.18d}
```

With `(PAN.16)`, the native selected positive activity is paid if it is
identified with this full-packet carrier:

```math
A_{\rm sel}(\sigma)
\le
C_A\left[\mathcal C_\sigma^{full}\right]_{\mathcal S,+}
+
R_A(\sigma),
\qquad
R_A\in L^1_\sigma.
\tag{PAN.19}
```

Combining `(PAN.16)` and `(PAN.19)` gives

```math
A_{\rm sel}(\sigma)
\le
C_A\varepsilon\nu D_\sigma
-C_A\partial_\sigma\Phi_\sigma
+
C_A T_\sigma
+
R_A(\sigma)
+
C_A R_{\rm legal}(\sigma).
\tag{PAN.20}
```

Choosing \(\varepsilon\) small enough lets the \(D_\sigma\) term be absorbed
into the four-body viscous/tower loss.

## 4. Unweighted reserve consequence

Assume the four-body storage \(L_{4B}\) and the commutator capacity \(\Phi\)
are bounded below on the terminal tail.  Add `(PAN.20)` to the already
installed four-body loss terms.  The resulting strict same-carrier inequality
has the form

```math
dL_{4B}
+
dD_{4B}
+
c\,A_{\rm sel}(\sigma)\,d\sigma
\le
dR_{\rm tail}
-d\Phi_\sigma,
\qquad c>0,
\tag{PAN.21}
```

with

```math
R_{\rm tail}([\sigma_0,\infty))<\infty.
\tag{PAN.22}
```

Equivalently, with

```math
\widetilde L(\sigma)=L_{4B}(\sigma)+\Phi_\sigma,
\tag{PAN.23}
```

one obtains

```math
d\widetilde L
+
dD_{4B}
+
c\,A_{\rm sel}(\sigma)\,d\sigma
\le
dR_{\rm tail}.
\tag{PAN.24}
```

Integrating from \(\sigma_0\) to \(\Sigma\), dropping \(D_{4B}\ge0\), and
sending \(\Sigma\to\infty\) gives

```math
\boxed{
\int_{\sigma_0}^{\infty}A_{\rm sel}(\sigma)\,d\sigma
\le
c^{-1}
\left(
\widetilde L(\sigma_0)-\inf_{\sigma\ge\sigma_0}\widetilde L(\sigma)
+R_{\rm tail}([\sigma_0,\infty))
\right)
<\infty.
}
\tag{PAN.25}
```

This is the desired unweighted same-carrier reserve.  It deletes the
source-square residual by never producing it.

## 5. Compactness-rigidity version

The equivalent compactness route is a minimal counterexample argument.

Assume `(PAN.16)` fails in the strong no-residue sense.  Then there is a
retained packet sequence with

```math
A_{\rm sel}(P_n)\ge a_0>0,
\tag{PAN.26}
```

while the full-cycle pressure-viscosity-incompressibility payment vanishes:

```math
\nu D(P_n)
+
\text{pressure/selector commutator loss}(P_n)
+
\text{tail/legal loss}(P_n)
\to0.
\tag{PAN.27}
```

After same-carrier compactness and no-loss identification, the limit packet
\(P_\ast\) is an exact full Hodge-Stokes lossless packet.  The transport skew
identity gives no interior nonlinear production, the pressure/divergence
channels remain compatible, and vanishing viscous loss removes the non-gauge
tower activity.

The required rigidity conclusion is

```math
\boxed{
\text{lossless full Hodge-Stokes packet}
\Longrightarrow
A_{\rm sel}(P_\ast)=0.
}
\tag{PAN.28}
```

Same-carrier compactness would also give

```math
A_{\rm sel}(P_\ast)\ge a_0,
\tag{PAN.29}
```

contradiction.

Thus the compactness form needs one production clause and one rigidity clause.
The no-loss clause is now exact as a criterion: strong same-carrier convergence
of the full Hodge-Stokes packet gives total-variation convergence of the
selected positive carrier, because the positive-part map is \(1\)-Lipschitz in
\(L^1\).  Standard suitable compactness also evacuates the transport product
loss on a stabilized carrier, through strong \(L^3\) velocity convergence.
The local same-carrier pressure trace passes after Calderon-Zygmund pressure
decomposition.  The viscous defect is either visible payment or strong gradient
convergence.  Standard suitable compactness is still not enough for the full
packet; harmonic pressure memory routes to collar/legal/terminal trace.  Finite
signed-saturation donor graphs are paid by retained partners, legal exits,
local donor balance, and entrance-leaf decay.  The remaining hidden failures
are precisely unbounded selector complexity or carrier drift, terminal Zeno
donor chain inherited from \(dN_{\rm miss}\), endpoint storage jump/no-jump, or
legal-routing loss.

The live-edge coupling audit forbids using the old breaker estimates at this
point.  The selected packet must first carry

```math
R_{j,Q}+N_{j,Q}+P_{j,Q}+V_{j,Q}=L_{j,Q},
\qquad
I_{j,Q}\text{ retained on the same carrier,}
\tag{PAN.29a}
```

and only then may scalar estimates enter as cleanup.

So the remaining production input is:

```math
\boxed{
\text{strong same-carrier full-packet convergence or charged packet defect}
}
\tag{PAN.30}
```

and the already separated rigidity input is:

```math
\boxed{
\text{rigidity of lossless full Hodge-Stokes packets.}
}
\tag{PAN.31}
```

## 6. Relation to the existing square-source wall

The existing source-square route says:

```math
|\mathcal C_\sigma|
\le
\varepsilon\nu D_\sigma
+
C_\varepsilon\Theta_\sigma^2E_\sigma.
\tag{PAN.32}
```

That route is honest but leaves the unweighted source-square budget open.

The participation-preserving no-residue route replaces `(PAN.32)` by
`(PAN.16)`.  The square-source term is not paid.  It is avoided by preserving
the skew structure while the pressure, viscosity, incompressibility, cutoff,
scale, and signed-saturation channels remain visible until the full packet has
been converted into scale-capacity drop, viscous payment, and summable tail
leakage.

This is why the route belongs inside the upgraded four-body loop:

```math
\boxed{
\text{bad selected activity}
\Longrightarrow
\text{positive full-cycle pressure-viscosity-incompressibility payment.}
}
\tag{PAN.33}
```

## Verdict

The idea is mathematically well-aimed.  It attacks the exact point where the
square-source residual enters.

What is proved here is the algebraic transport-channel skew reduction and the
full-cycle no-residue criterion:

```math
\boxed{
\text{ParticipationPreservingNoResidueFullCycle.A}
+
\text{same-carrier selected full-packet identification}
\Longrightarrow
\text{unweighted four-body reserve.}
}
\tag{PAN.34}
```

What remains unproved is the production theorem `(PAN.16)`: the terminal full
Hodge-Stokes packet must be paid by viscosity, capacity drop, and \(L^1\) tail
with no
\(C_\varepsilon\Theta_\sigma^2E_\sigma\) residue.
