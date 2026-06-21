---
theorem_id: mpp-four-body-bodyii-bodyiii-arrow-fill-20260621
status: conditional-arrow-fill-proved-with-explicit-defect-ledger
logical_landing_node: four_body_bodyii_bodyiii_arrow_fill
parents:
  - problems/navier-stokes/theorem-construction/mpp-four-body-cyclic-payment-closure-direct-attempt-20260621.md
  - problems/navier-stokes/theorem-construction/mpp-four-body-balance-circuit-redevelopment-20260621.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-fullcycle-production-reduction-and-defect-exhaustion-target-20260621.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-selector-compactness-collar-stabilization-solution-20260621.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-full-hodgestokes-packet-compactness-noloss-attempt-20260621.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-lossless-full-hodgestokes-packet-rigidity-20260621.md
---

# Four-Body Body II / Body III Arrow Fill

Date: 2026-06-21

## 0. Purpose

This note fills the Body II and Body III arrows of the four-body loop at the current level of proof.

The arrows are:

```math
Q_{4B}\longrightarrow C_{4B}
\qquad\text{and}\qquad
C_{4B}\longrightarrow G_{4B}.
```

Body II is the pressure-viscosity-incompressibility participation budget. Body III is the same-carrier compactness/no-loss relay. Body IV is the deformation/gradient geometry recipient.

The current result is a conditional arrow theorem with a complete defect ledger. Each failed arrow component becomes a named payment or a CM-facing defect branch.

## 1. Full packet carried by Body II

A retained terminal packet carries

```math
\mathcal K_n
=
\big(
\chi_n(V_n\cdot\nabla V_n),
\chi_n\nabla Q_n,
\nu\chi_n\Delta V_n,
\chi_n\partial_sV_n,
\chi_n\nabla\cdot V_n,
\mathcal B_n^{cut},
\mathcal S_n^{sgn},
\mathfrak s_n
\big),
```

where

```math
\mathfrak s_n=(\chi_n,\Phi_n,\operatorname{sgn}_n,\ell_n,\Gamma_n)
```

is the selector/collar datum.

Define the Body-II full participation payment measure

```math
\begin{aligned}
\mathfrak M_Q(P_n):={}&
\nu |\nabla V_n|^2\,dy\,ds
+|Q_n^{H}V_n\cdot\nabla\chi_n|\,dy\,ds \\
&+d\Lambda_{sel,n}
+d\Lambda_{legal,n}
+d\Lambda_{sgn,n}
+d\Lambda_{term,n}.
\end{aligned}
```

Here `Q_n^H` is the harmonic/nonlocal pressure memory after local Calderon-Zygmund pressure decomposition. The selector-collar measure is

```math
\begin{aligned}
d\Lambda_{sel,n}:={}&
\|d\chi_n\|_{C^2}+\|d\Phi_n\|_{\mathcal T}
+dN_{label,n}+dN_{sgn,n}+d\Lambda_{collar,n}.
\end{aligned}
```

This is the Body-II rule:

```math
\boxed{
\text{every local source payment is first typed inside }\mathcal K_n
\text{ and then charged to }\mathfrak M_Q.
}
```

Scalar estimates enter only after this typing.

## 2. Body II to Body III relay theorem

### Theorem: FullParticipationToSameCarrierCompactness.A

Assume a normalized retained terminal packet sequence satisfies:

```math
\sup_n\left(\|V_n\|_{L_s^\infty L_y^2(Q_1)}+\|\nabla V_n\|_{L^2(Q_1)}+\|Q_n\|_{L^{3/2}(Q_1)}\right)<\infty,
```

and the full local NS packet identity holds:

```math
\partial_sV_n+(V_n\cdot\nabla)V_n+\nabla Q_n-\nu\Delta V_n=R_n,
\qquad
\nabla\cdot V_n=C_n,
```

with `R_n`, `C_n`, cutoff/collar terms, signed terms, and selector variation included in `\mathfrak M_Q`.

Assume

```math
\mathfrak M_Q(P_n)\to0
```

on the unpaid lossless branch, after removing already-paid visible terms.

Then, after subsequence extraction, the selected carrier stabilizes and

```math
V_n\to V\quad\text{strongly in }L^3_{loc}(Q_1),
```

```math
Q_n^{loc}\to Q^{loc}\quad\text{strongly in }L^{3/2}_{loc}(Q_1),
```

```math
\nabla V_n\to\nabla V\quad\text{strongly in }L^2_{loc}(Q_1)
```

on the zero-viscous-defect branch.

Consequently

```math
\mathcal K_n\to\mathcal K_\ast
```

in the full selected packet topology, and the selected positive carrier has no loss:

```math
\mu_{sel,n}^+\to\mu_{sel,\ast}^+
\quad\text{in total variation on the retained same carrier.}
```

### Proof

The uniform local energy bounds and the equation give compactness for `V_n`. The nonlinear term is bounded in a negative Sobolev space by the standard local energy scale, so Aubin-Lions gives local strong convergence of the velocity below the energy-critical exponent. Interpolation gives

```math
V_n\to V\quad\text{strongly in }L^3_{loc}.
```

Then

```math
V_n\otimes V_n\to V\otimes V
\quad\text{strongly in }L^{3/2}_{loc}.
```

The local pressure part is obtained from

```math
Q_n^{loc}=\mathcal R_i\mathcal R_j\big((V_n)_i(V_n)_j\chi\big)
```

on a fixed retained interior packet. Calderon-Zygmund boundedness gives

```math
Q_n^{loc}\to Q^{loc}
\quad\text{strongly in }L^{3/2}_{loc}.
```

The harmonic pressure memory appears only in

```math
Q_n^H V_n\cdot\nabla\chi_n,
```

which is a collar/legal term and is included in `\mathfrak M_Q`.

For the viscous channel, weak convergence of gradients gives the usual defect measure

```math
|\nabla V_n|^2\,dy\,ds\rightharpoonup |\nabla V|^2\,dy\,ds+\mu^\nu.
```

If `\mu^\nu` is nonzero, it is a visible Body-II payment. On the unpaid lossless branch, `\mu^\nu=0`, hence

```math
\nabla V_n\to\nabla V\quad\text{strongly in }L^2_{loc}.
```

The selector/collar stabilization theorem gives

```math
\chi_n\to\chi\text{ in }C^2,
\qquad
\Phi_n\to\Phi\text{ in }\mathcal T,
```

with signs, labels, and collar topology retained, unless visible legal/collar loss has already occurred.

Thus every component of `\mathcal K_n` converges in the selected topology. If `h_n` is the scalar selected density extracted from `\mathcal K_n`, then

```math
h_n\to h\quad\text{in }L^1.
```

The positive part is `1`-Lipschitz:

```math
|[a]_+-[b]_+|\le |a-b|.
```

Therefore

```math
[h_n]_+\to[h]_+\quad\text{in }L^1,
```

which proves same-carrier selected positive no-loss.

This fills the arrow

```math
\boxed{Q_{4B}\longrightarrow C_{4B}}
```

under the full Body-II payment ledger.

## 3. Body III to Body IV relay theorem

### Theorem: SameCarrierCompactnessToExactGeometry.A

Assume the conclusion of `FullParticipationToSameCarrierCompactness.A`:

```math
\mathcal K_n\to\mathcal K_\ast
```

with strong local convergence of velocity, local pressure, and gradient on the unpaid branch.

Then the limit packet `(V,Q)` is an exact local Navier-Stokes object carrying the Body-IV gradient/deformation geometry on the same carrier:

```math
\partial_sV+(V\cdot\nabla)V+\nabla Q-\nu\Delta V=0,
\qquad
\nabla\cdot V=0,
```

and, distributionally,

```math
(\partial_s+V\cdot\nabla-\nu\Delta)\nabla V
+(\nabla V)^2+
abla^2Q=0.
```

Moreover the Body-IV readouts have no hidden compactness loss:

```math
S(V_n)\to S(V),
\qquad
\omega_n\to\omega,
\qquad
\nabla V_n\to\nabla V
```

in the selected `L^2` topology on the retained packet.

### Proof

Strong `L^3` convergence passes the transport product:

```math
V_n\otimes V_n\to V\otimes V
\quad\text{in }L^{3/2}_{loc}.
```

Strong local pressure convergence passes the pressure channel. Strong gradient convergence passes the viscous channel. Distributional convergence of the packet identity gives the local Navier-Stokes equation for `(V,Q)` on the same carrier.

Apply a spatial derivative to the limit equation. The gradient equation follows in distributions:

```math
(\partial_s+V\cdot\nabla-\nu\Delta)\nabla V
+(\nabla V)^2+
abla^2Q=0.
```

The Body-IV readouts are algebraic or first-order functions of `\nabla V`. Strong `L^2` convergence of gradients gives convergence of strain, vorticity, and selected frame/gradient stores. Any missing strong-gradient convergence is exactly the viscous defect already charged in Body II.

Thus compactness produces the exact object required by geometry. This fills

```math
\boxed{C_{4B}\longrightarrow G_{4B}}.
```

## 4. Lossless cycle consequence

If the full cycle is lossless and Body II registers zero normalized viscous/strain loss, then

```math
\int_{Q_1}|\nabla V_n|^2\to0.
```

Poincare gives

```math
V_n-\overline V_n(s)\to0\quad\text{in }L_s^2L_y^2.
```

After Galilean centering, `V_n` converges to zero spatial variation. The pressure equation gives only affine-pressure gauge content. Hence

```math
S(V)=0,
\qquad
\omega=0,
\qquad
(V\cdot\nabla)V=0,
\qquad
\nabla Q=\text{affine-pressure gauge}.
```

Every selected Galilean-invariant singular participation activity vanishes:

```math
A_{sel}(P_\ast)=0.
```

Same-carrier positive no-loss then gives

```math
A_{sel}(P_n)\to0.
```

So a lossless Body II/III passage cannot carry persistent selected activity.

## 5. Defect ledger for failed arrows

Every failure of the Body II/III arrows has a typed payment site:

```math
\mu^\nu\ne0
\quad\Rightarrow\quad
\text{visible Body-II viscous payment.}
```

```math
Q_n^H V_n\cdot\nabla\chi_n\text{ persists}
\quad\Rightarrow\quad
\text{collar/legal pressure-memory payment.}
```

```math
\mathfrak s_n\text{ drifts}
\quad\Rightarrow\quad
\text{selector/collar legal payment or Pack failure.}
```

```math
[h_n]_+\text{ creates a terminal atom}
\quad\Rightarrow\quad
\text{terminal trace/storage branch.}
```

```math
\text{signed partner is missing}
\quad\Rightarrow\quad
\text{donor-chain/saturation branch.}
```

```math
\text{geometry readout loses carrier}
\quad\Rightarrow\quad
\text{Body-IV visible geometry defect or Field failure.}
```

Therefore the Body II/III arrows are filled once the current legal, donor, and terminal trace branches are completed.

## 6. Output for the four-body loop

The filled arrows are:

```math
\boxed{
Q_{4B}\xrightarrow{\text{full participation payment}}
C_{4B}\xrightarrow{\text{same-carrier exact object}}
G_{4B}.
}
```

In the lossless branch, this chain forces a removable Galilean/affine-pressure profile and hence zero selected participation activity.

In the paid branch, the missing activity is charged to Body-II payment, Body-III legal/collar loss, or Body-IV geometry loss.

Thus Body II/III now supports the four-body full-cycle theorem in the precise form:

```math
\boxed{
\text{persistent selected participation activity across }Q\to C\to G
\text{ implies positive full-cycle loss or a typed CM exit.}
}
```
