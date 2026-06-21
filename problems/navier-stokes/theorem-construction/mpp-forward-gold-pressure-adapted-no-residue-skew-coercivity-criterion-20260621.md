---
theorem_id: forward-gold-pressure-adapted-no-residue-skew-coercivity-criterion-20260621
status: algebraic-skew-reduction-proved-transported-selector-production-open
logical_landing_node: pressure_adapted_no_residue_skew_coercivity
edge_effect: "Develops the pressure-adapted no-residue route for deleting the current square-source residual. With a same-carrier pressure-adapted incompressible selector A_sigma=S_sigma P and W_sigma=A_sigma u, the mixed interaction decomposes exactly into the incompressible skew term plus the selector/Leray/pressure/cutoff/scale commutator. The skew term vanishes in the closed localized inner product, so the square-source residual is created only when the commutator is estimated crudely by size. The proposed upgrade is the no-residue commutator theorem: the selected positive commutator is paid by epsilon-viscosity, a sigma-capacity drop, and an L1 tail, with no C_epsilon Theta_sigma^2 E_sigma remainder. The transported-selector test adds the concrete mechanism: for G_sigma=A_sigma^*A_sigma, the commutator is -1/2 <(u.grad G_sigma)u,u>, so a material/cotangent transported selector can turn it into scale-capacity/geometry motion. This would give a same-carrier unweighted reserve and close the source-square/no-waste supplement through full-cycle skew coercivity. The note proves the algebraic reduction and the criterion implication; it does not prove the transported pressure-adapted selector production theorem."
parents:
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-source-square-nowaste-fourbody-supplement-criterion-20260621.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-native-precauchy-to-gauge-quotient-tower-bridge-test-20260621.md
  - problems/navier-stokes/theorem-construction/mpp-local-positive-precauchy-source-carleson-direct-attempt-note.md
  - problems/navier-stokes/theorem-construction/mpp-terminal-skew-localization-ledger-direct-attempt-20260505.md
  - problems/navier-stokes/theorem-construction/mpp-localized-skew-current-theorem-grade-audit-20260505.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-transported-pressure-adapted-selector-commutator-potential-test-20260621.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-upgraded-four-body-current-frontier-20260621.md
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

The intended mechanism is not a new source-square estimate.  It is to choose
the selector so that the incompressible transport part is skew, and only the
selector/Leray/pressure/cutoff/scale commutator remains.

## 1. Pressure-adapted incompressible selector

Let

```math
A_\sigma=S_\sigma P,
\qquad
W_\sigma=A_\sigma u,
\tag{PAN.4}
```

where \(P\) is the Leray projection and \(S_\sigma\) is the same-carrier
terminal selector at log scale \(\sigma\).  The point of including \(P\) is
that the selected field \(W_\sigma\) is divergence-free in the pressure-adapted
packet gauge.

If \(S_\sigma\) is a global Fourier multiplier commuting with \(P\), then this
is mostly notation because \(Pu=u\).  The route is nontrivial only for the
localized packet selector, where \(S_\sigma\), \(P\), cutoffs, pressure
normalization, and scale transport do not commute.

The selected mixed interaction is

```math
\mathcal M_\sigma
=
\left\langle
A_\sigma((u\cdot\nabla)u),
W_\sigma
\right\rangle.
\tag{PAN.5}
```

Insert and subtract \(u\cdot\nabla W_\sigma\):

```math
\mathcal M_\sigma
=
\left\langle
u\cdot\nabla W_\sigma,
W_\sigma
\right\rangle
+
\left\langle
[A_\sigma,u\cdot\nabla]u,
W_\sigma
\right\rangle.
\tag{PAN.6}
```

The first term is the incompressible skew part.  Since \(\nabla\cdot u=0\),
and \(W_\sigma\) is the localized field being paired in the same closed
selected inner product,

```math
\left\langle
u\cdot\nabla W_\sigma,
W_\sigma
\right\rangle
=
{1\over2}\int u\cdot\nabla |W_\sigma|^2
=0,
\tag{PAN.7}
```

with any boundary/cutoff contribution included in the definition of the
localized commutator ledger.

Thus

```math
\boxed{
\mathcal M_\sigma=\mathcal C_\sigma,
\qquad
\mathcal C_\sigma
=
\left\langle
[A_\sigma,u\cdot\nabla]u,
W_\sigma
\right\rangle.
}
\tag{PAN.8}
```

This is the exact algebraic place where the square-source term is born.  It is
not born from the incompressible transport itself.  It is born from estimating
the commutator \(\mathcal C_\sigma\) by size.

## 2. What the commutator contains

For the localized pressure-adapted selector, the commutator in `(PAN.8)` is not
a single harmless Fourier commutator.  It contains the full same-carrier packet
mismatch:

```math
\mathcal C_\sigma
=
\mathcal C_\sigma^{sel}
+\mathcal C_\sigma^{P}
+\mathcal C_\sigma^{cut}
+\mathcal C_\sigma^{scale}
+\mathcal C_\sigma^{tail}.
\tag{PAN.9}
```

Here:

```math
\mathcal C_\sigma^{sel}
=
\text{selector/gauge transport mismatch,}
\tag{PAN.10}
```

```math
\mathcal C_\sigma^{P}
=
\text{Leray/pressure-normalization commutator,}
\tag{PAN.11}
```

```math
\mathcal C_\sigma^{cut}
=
\text{cutoff/collar boundary leakage,}
\tag{PAN.12}
```

```math
\mathcal C_\sigma^{scale}
=
\text{motion of the log-scale selector,}
\tag{PAN.13}
```

and

```math
\mathcal C_\sigma^{tail}
=
\text{off-carrier or terminal tail leakage.}
\tag{PAN.14}
```

The older localized skew-current audits show why bare skew symmetry is not
enough: terminal selection, one-sided weights, lifted/cutoff reductions, and
loss of the signed partner can strand a positive commutator on the selected
carrier.

This note does not erase those failures.  It gives their sharper target:
prove that the full commutator package is not a square-source residue, but a
viscous/capacity/tail payment.

## 3. No-residue commutator theorem

The exact new production theorem is:

```math
\boxed{
\text{PressureAdaptedNoResidueCommutator.A}
}
\tag{PAN.15}
```

For every retained terminal same-carrier family, it asserts

```math
\boxed{
\left[\mathcal C_\sigma\right]_{\mathcal S,+}
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

The selected positive part \([\mathcal C_\sigma]_{\mathcal S,+}\) is essential.
The theorem has to apply after the actual terminal selector is chosen, not only
to the global signed sum.

The transported-selector test identifies a concrete way `(PAN.16)` could be
proved.  With

```math
G_\sigma=A_\sigma^\ast A_\sigma,
\qquad
L=u\cdot\nabla,
\tag{PAN.18a}
```

the exact metric identity is

```math
\boxed{
\langle A_\sigma L u,A_\sigma u\rangle
=
-{1\over2}\langle (LG_\sigma)u,u\rangle.
}
\tag{PAN.18b}
```

Thus the commutator is the material derivative of the selector metric.  A
fixed dyadic selector turns \(LG_\sigma\) into the active strain/source-square
residue.  A transported pressure-adapted selector would instead satisfy

```math
LG_\sigma=\partial_\sigma K_\sigma+R_\sigma,
\tag{PAN.18c}
```

where the \(\partial_\sigma K_\sigma\) term gives the capacity drop
\(-\partial_\sigma\Phi_\sigma\), and \(R_\sigma\) is viscous-absorbable or
\(L^1_\sigma\).

So the concrete production target behind `(PAN.16)` is now

```math
\boxed{
\text{TransportedPressureAdaptedSelector.A.}
}
\tag{PAN.18d}
```

With `(PAN.16)`, the native selected positive activity is paid if it is
identified with this commutator carrier:

```math
A_{\rm sel}(\sigma)
\le
C_A\left[\mathcal C_\sigma\right]_{\mathcal S,+}
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
\(P_\ast\) is an exact pressure-balanced incompressible lossless packet.  The
skew identity gives no interior nonlinear production, and vanishing viscous
loss removes the non-gauge tower activity.

The required rigidity conclusion is

```math
\boxed{
\text{lossless pressure-adapted packet}
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

Thus the compactness form needs the same two production clauses:

```math
\boxed{
\text{same-carrier no-loss compactness for the commutator packet}
}
\tag{PAN.30}
```

and

```math
\boxed{
\text{rigidity of lossless pressure-adapted packets.}
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

The pressure-adapted no-residue route replaces `(PAN.32)` by `(PAN.16)`.  The
square-source term is not paid.  It is avoided by preserving the skew structure
until the commutator has been converted into scale-capacity drop and
summable tail leakage.

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

What is proved here is the algebraic skew reduction and the no-residue
criterion:

```math
\boxed{
\text{PressureAdaptedNoResidueCommutator.A}
+
\text{same-carrier selected-commutator identification}
\Longrightarrow
\text{unweighted four-body reserve.}
}
\tag{PAN.34}
```

What remains unproved is the production theorem `(PAN.16)`: the terminal
selector/Leray/pressure/cutoff/scale commutator must be paid by viscosity,
capacity drop, and \(L^1\) tail with no
\(C_\varepsilon\Theta_\sigma^2E_\sigma\) residue.
