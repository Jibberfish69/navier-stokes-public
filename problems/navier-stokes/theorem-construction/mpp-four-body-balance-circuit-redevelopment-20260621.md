---
theorem_id: mpp-four-body-balance-circuit-redevelopment-20260621
status: conceptual-redevelopment-not-proof-closure
logical_landing_node: four_body_balance_circuit_modernization
edge_effect: "Reworks the legacy four-body Navier-Stokes solution from its original intent: not a defect-sharpening pipeline, but a closed balance circuit in which scale control, participation/monotone control, compactness, and geometry/gradient control mutually feed one another. The current heat-scale unweighted-reserve obstruction is recast as a stress test of the modernized Body-II participation budget inside that four-body balance, not as the whole target."
parents:
  - problems/navier-stokes/four-body-regularity-circuit-and-ontic-extension.md
  - problems/navier-stokes/NS working note - four body problem and braided ontology.md
  - problems/navier-stokes/theorem-construction/modernized-four-body-schema-torus-tower-geometry.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-mixed-derivative-tower-participation-law-20260621.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-post-june21-heat-scale-branch-integration-20260621.md
---

# Four-Body Balance Circuit Redevelopment

Date: 2026-06-21

## 0. Correction of the center

The old four-body solution was not designed to produce a terminal defect after
one pass through the loop.

It was designed to keep four different control measures in balance:

```math
\text{scale control}
\quad\leftrightarrow\quad
\text{monotone / participation control}
\quad\leftrightarrow\quad
\text{compactness}
\quad\leftrightarrow\quad
\text{geometry / gradient control}.
\tag{4B.1}
```

The correct modern resurrection must preserve that intent.

The terminal heat-scale pulse, the unweighted reserve, the tower-radius
collapse, and the source-square obstruction are not the definition of the
four-body program. They are stress tests. They ask whether the rebuilt balance
circuit still holds under the most dangerous terminal localization.

So the modern goal is not:

```math
\text{run the loop until it spits out the sharpest defect.}
\tag{4B.2}
```

The modern goal is:

```math
\boxed{
\text{prove that the four control bodies form a closed invariant balance
region for the full Navier-Stokes participation law.}
}
\tag{4B.3}
```

## 1. The original packet, read faithfully

The legacy four-body packet is

```math
\mathcal P_{\mathrm{cl}}(T)
=
\bigl(
S_{\mathrm{cl}}(T),
Q_{\mathrm{cl}}(T),
C_{\mathrm{cl}}(T),
G_{\mathrm{cl}}(T)
\bigr),
\tag{4B.4}
```

with circuit

```math
S_{\mathrm{cl}}\to Q_{\mathrm{cl}},
\qquad
(S_{\mathrm{cl}},Q_{\mathrm{cl}})\to C_{\mathrm{cl}},
\qquad
C_{\mathrm{cl}}\to G_{\mathrm{cl}},
\qquad
G_{\mathrm{cl}}\to S_{\mathrm{cl}}.
\tag{4B.5}
```

The meanings are:

- `S_cl` controls high-frequency / small-scale escape.
- `Q_cl` controls the total nonlinear transfer budget.
- `C_cl` turns controlled approximation or blowup sequences into an exact
  Navier-Stokes object.
- `G_cl` controls the derivative or geometry quantity needed for continuation.

The real claim was always packet propagation:

```math
\boxed{
\mathcal P_{\mathrm{cl}}(T)
\Longrightarrow
\mathcal P_{\mathrm{cl}}(T^+).
}
\tag{4B.6}
```

The proof object is therefore a circular balance theorem, not four isolated
estimates.

## 2. What the modern resurrection changes

The modern understanding does not change the four jobs. It changes the objects
inside each job.

The old readings were:

```math
\begin{array}{ccl}
S_{\mathrm{cl}} &:& \text{spectral scale barrier},\\
Q_{\mathrm{cl}} &:& Q(t)=\|u(t)\|_2^2+\|\nabla u(t)\|_2^2,\\
C_{\mathrm{cl}} &:& \text{non-Sobolev compactness},\\
G_{\mathrm{cl}} &:& \text{curvature / gradient regularity}.
\end{array}
\tag{4B.7}
```

The updated readings are:

```math
\begin{array}{ccl}
S_{4B} &:& \text{scale distribution plus derivative-tower radius},\\
Q_{4B} &:& \text{pressure-corrected participation budget},\\
C_{4B} &:& \text{exact same-solution compactness with no hidden loss},\\
G_{4B} &:& \text{strain-vorticity-frame / deformation-geometry control}.
\end{array}
\tag{4B.8}
```

The important point is that these are not four replacement slogans. They are
four coordinates on one same-fluid control law.

## 3. Body I: scale control becomes scale-plus-tower control

The old scale barrier was spectral. It controlled energy transfer into high
Fourier modes.

The modern Body I still contains that, but it also contains derivative depth.
After heat-scale normalization, write

```math
V_{m,\alpha}
=
\partial_s^m\partial_y^\alpha V,
\qquad
Q_{m,\alpha}
=
\partial_s^m\partial_y^\alpha Q.
\tag{4B.9}
```

The tower obeys

```math
\left(\partial_s+V\cdot\nabla_y-\nu\Delta_y\right)V_{m,\alpha}
+\nabla_y Q_{m,\alpha}
=B_{m,\alpha},
\tag{4B.10}
```

where the nonlinear source is the differentiated Leibniz sum

```math
B_{m,\alpha}
=
-
\sum_{\substack{a+b=m\\ \beta+\gamma=\alpha\\ (a,\beta)\neq(0,0)}}
{m\choose a}{\alpha\choose\beta}
\left(V_{a,\beta}\cdot\nabla_y\right)V_{b,\gamma}.
\tag{4B.11}
```

This is where Stirling/factorial language belongs. It is not the proof of
regularity. It is the algebra that prevents the derivative tower from losing
purely because of binomial combinatorics.

With factorial/Gevrey weights, the binomial coefficients are absorbed:

```math
{n\choose k}
{ \rho^n\over n!}\|V_k\|\,\|V_{n-k}\|
=
\left({\rho^k\over k!}\|V_k\|\right)
\left({\rho^{n-k}\over (n-k)!}\|V_{n-k}\|\right).
\tag{4B.12}
```

So Body I's modern output is not only a high-frequency tail bound. It is a
scale-and-depth control packet:

```math
S_{4B}
=
\text{spectral tail control}
+
\text{tower radius / factorial-tail control}.
\tag{4B.13}
```

Its feed into Body II is:

```math
\boxed{
\text{the nonlinear participation budget is not allowed to explode merely
because derivatives split across comparable rungs.}
}
\tag{4B.14}
```

That is the correct role of Stirling here.

## 4. Body II: monotonicity becomes full participation budget

The old Body II used

```math
Q(t)=\|u(t)\|_2^2+\|\nabla u(t)\|_2^2.
\tag{4B.15}
```

The modern Body II must be stronger. It has to see the full coupled
velocity-pressure-viscosity-incompressibility law as one balance relation:

```math
\partial_s V+(V\cdot\nabla_y)V+\nabla_y Q
=\nu\Delta_y V,
\qquad
\nabla_y\cdot V=0,
\tag{4B.16}
```

with pressure tied by

```math
-\Delta_y Q
=
\partial_i V_j\,\partial_j V_i.
\tag{4B.17}
```

This is the modern participation law. Pressure, transport, viscosity, and
incompressibility are not separate optional tools. They are one coupled
transaction law.

The local energy balance is the native scalar shadow:

```math
{d\over ds}\int e\phi\,dy
+
\nu\int\phi|\nabla_y V|^2\,dy
=
\int e(\partial_s\phi+\nu\Delta_y\phi)\,dy
+
\int(e+Q)V\cdot\nabla_y\phi\,dy,
\tag{4B.18}
```

where

```math
e={1\over2}|V|^2.
\tag{4B.19}
```

The modern Body II target is therefore not bare energy monotonicity. It is a
pressure-corrected participation functional whose drop controls the actual
dangerous scale-critical activity.

The single-body dream would be

```math
-{d\over d\sigma}L_Q(\sigma)
\ge
cA(\sigma)-\mathrm{legal}(\sigma).
\tag{4B.20}
```

The four-body resurrection suggests the right object is more coupled:

```math
L_{4B}
=
L_Q+\lambda_S L_S+\lambda_C L_C+\lambda_G L_G
+X_{SQ}+X_{QC}+X_{CG}+X_{GS},
\tag{4B.21}
```

where the `X` terms are exchange terms between adjacent bodies.

The desired balance inequality becomes

```math
-{d\over d\sigma}L_{4B}(\sigma)
+
\mathcal R_S(\sigma)
+
\mathcal R_Q(\sigma)
+
\mathcal R_C(\sigma)
+
\mathcal R_G(\sigma)
\ge
cA(\sigma)-\mathrm{legal}(\sigma).
\tag{4B.22}
```

This is the modern version of the old monotone body.

It says that the activity does not need to be paid by energy alone. It can be
paid by the whole circular balance: tower room, participation drain, compactness
no-loss, and gradient-geometry control.

## 5. Body III: compactness becomes no-loss exact object production

The old compactness body was downstream of scale and monotone control.

That remains correct. The modern upgrade is that compactness must preserve the
same-fluid control packet. It is not enough to extract a weak limit while
throwing away the terms that carried the balance.

The Body III feed should have the form:

```math
S_{4B}+Q_{4B}
\Longrightarrow
\left[
V^{(n)}\to U,
\quad
Q^{(n)}\to P,
\quad
V^{(n)}\otimes V^{(n)}\to U\otimes U
\right],
\tag{4B.23}
```

with the adjacent balance terms surviving:

```math
L_S^{(n)},L_Q^{(n)},X_{SQ}^{(n)},X_{QC}^{(n)}
\Longrightarrow
L_S[U],L_Q[U],X_{SQ}[U],X_{QC}[U].
\tag{4B.24}
```

So Body III is not a defect classifier. It is the no-loss relay:

```math
\boxed{
\text{the object produced by compactness must still carry the same four-body
balance packet.}
}
\tag{4B.25}
```

If compactness loses pressure trace, orientation, source carrier, or tower
radius, the balance circuit has not closed. That is a Body III failure of
relay, not a new primary target.

## 6. Body IV: curvature becomes deformation / gradient geometry

The old fourth body was curvature or gradient regularity. In the source stack,
it was genuinely geometric.

The modern version should keep the geometric intent while replacing the
uninstalled Ricci-style carrier by the actual deformation geometry of the
incompressible flow.

Let `X(a,t)` be the flow map and

```math
F(a,t)=D_aX(a,t).
\tag{4B.26}
```

Then

```math
\partial_tF=(\nabla u)(X(a,t),t)F,
\qquad
\det F=1.
\tag{4B.27}
```

At the Eulerian gradient level,

```math
\left(\partial_t+u\cdot\nabla-\nu\Delta\right)\nabla u
+
(\nabla u)^2
+
\nabla^2p
=0.
\tag{4B.28}
```

This is where strain, vorticity, frame rotation, eigenvalue alignment, and
deformation geometry belong.

The Body IV output is not merely "a profile" and not merely "bounded
curvature." It is the return arrow to Body I:

```math
G_{4B}
\Longrightarrow
S_{4B}\text{ is re-certified}.
\tag{4B.29}
```

In words:

```math
\boxed{
\text{controlled deformation geometry prevents the exact object from generating
new uncontrolled scale/tower escape.}
}
\tag{4B.30}
```

This is the modern `4 -> 1` arrow.

## 7. The rebuilt balance theorem

The resurrected theorem should be stated as an invariant-region theorem.

Let

```math
\mathcal P_{4B}(T)
=
\bigl(S_{4B}(T),Q_{4B}(T),C_{4B}(T),G_{4B}(T)\bigr).
\tag{4B.31}
```

The desired theorem is:

```math
\boxed{
\mathcal P_{4B}(T)\in\mathfrak R
\Longrightarrow
\mathcal P_{4B}(T^+)\in\mathfrak R
}
\tag{4B.32}
```

for a common admissible region `\mathfrak R` on one fixed Navier-Stokes surface.

Equivalently, one seeks a combined balance functional

```math
\mathfrak B_{4B}
=
\Phi_S(S_{4B})
+
\Phi_Q(Q_{4B})
+
\Phi_C(C_{4B})
+
\Phi_G(G_{4B})
+
\Phi_{\mathrm{exchange}},
\tag{4B.33}
```

such that

```math
\mathfrak B_{4B}(T^+)
+
\int_T^{T^+}
\left(
\mathcal D_S+\mathcal D_Q+\mathcal D_C+\mathcal D_G
\right)\,dt
\le
\Psi(\mathfrak B_{4B}(T)).
\tag{4B.34}
```

The exchange term is essential. Without it, the modern route falls back into
asking one body to do the whole job by itself.

The four-body idea says the opposite: each body holds the term the next body
would otherwise lose.

## 8. How this reframes the unweighted reserve problem

The current heat-scale obstruction is:

```math
\int_{\sigma_0}^{\infty}e^{-\sigma}A(\sigma)\,d\sigma<\infty
\tag{4B.35}
```

is supplied by physical energy, while the gold route wants

```math
\int_{\sigma_0}^{\infty}A(\sigma)\,d\sigma<\infty.
\tag{4B.36}
```

Inside the four-body resurrection, this is not just "Body II failed."

It means:

```math
\boxed{
\text{the currently used Body-II scalar budget has not yet been coupled to
Bodies I, III, and IV strongly enough to remove the heat-scale discount.}
}
\tag{4B.37}
```

The correct modern search is therefore not only

```math
-{d\over d\sigma}L_Q\ge cA-\mathrm{legal}.
\tag{4B.38}
```

It is the four-body version:

```math
\boxed{
A(\sigma)
\lesssim
\mathcal D_Q(\sigma)
+
\mathcal D_S(\sigma)
+
\mathcal D_G(\sigma)
+
\mathcal D_C(\sigma)
+
{d\over d\sigma}\mathcal X_{4B}(\sigma)
+
\mathrm{legal}(\sigma).
}
\tag{4B.39}
```

Here `\mathcal X_{4B}` is the exchange storage between bodies.

This is the strongest modernization of the old intent. The missing unweighted
reserve may be impossible for the energy body alone, but still possible for the
closed balance circuit if the pressure-transport-viscosity activity is forced
to draw from scale room, compactness room, or deformation-geometry room.

## 9. How the four arrows should now be tested

### 9.1 Body I to Body II

Body I must feed Body II by converting scale/tower control into a usable
nonlinear participation bound.

The exact test is:

```math
S_{4B}
\Longrightarrow
\text{the differentiated nonlinear participation terms are summable in the
functional used by }Q_{4B}.
\tag{4B.40}
```

Stirling and factorial weights help here by turning binomial growth into
convolution. They do not supply the participation budget by themselves.

### 9.2 Body II to Body III

Body II must feed compactness by preventing the participation budget from
disappearing into a terminal layer.

The exact test is:

```math
Q_{4B}
\Longrightarrow
\text{compactness with pressure/source/flux traces retained on the same
solution.}
\tag{4B.41}
```

This is where pressure-corrected local energy and CKN/Carleson quantities
belong if they are used as scale-critical budgets.

### 9.3 Body III to Body IV

Body III must feed Body IV by producing an exact object to which the geometry
law actually applies.

The exact test is:

```math
C_{4B}
\Longrightarrow
\text{the limit object has enough structure for deformation/gradient geometry.}
\tag{4B.42}
```

This prevents a compactness theorem from producing a ghost object that cannot
carry the gradient-geometry return arrow.

### 9.4 Body IV to Body I

Body IV must feed Body I by turning geometry control back into a scale/tower
barrier.

The exact test is:

```math
G_{4B}
\Longrightarrow
\text{no new high-frequency or high-rung escape is created by the exact
flow geometry.}
\tag{4B.43}
```

This is the modern return arrow. It is the part most faithful to the old loop
because it closes the circuit rather than ending with a diagnostic.

## 10. What this changes about the current route

The current source-frontier language has been useful for isolating failed
single-supplier attempts:

- bare physical energy supplies only the radius-discounted budget;
- moving cutoffs provide exact accounting but no sign-definite lower bound;
- enstrophy gives signed first-moment balance, not square reserve;
- tower factorial weights cancel combinatorics but do not force same-carrier
  unweighted payment;
- Hodge/current language splits transfer but cannot charge exact sink-source
  paths alone.

The four-body resurrection does not discard those facts. It changes their role.

They are no longer the center of the proof program. They are tests showing that
no single body, isolated from the circuit, is currently strong enough.

The new center is:

```math
\boxed{
\text{construct the four-body balance functional }L_{4B}\text{ and prove the
four transfer arrows with exchange terms retained.}
}
\tag{4B.44}
```

That is the modern form of the old initial intent.

## 11. Current honest proof state

This note does not prove global regularity.

It does establish the corrected target shape:

```math
\boxed{
\text{the resurrected four-body program is a coupled invariant-balance program,
not a terminal-defect sharpening program.}
}
\tag{4B.45}
```

The heat-scale unweighted reserve remains a real obstruction, but it should now
be attacked as one face of the four-body balance theorem:

```math
\boxed{
\text{can the full scale/participation/compactness/geometry loop produce the
unweighted log-scale control that no isolated supplier produced?}
}
\tag{4B.46}
```

That is the frontier created by bringing the old four-body idea forward in the
current language.

## 12. Direct cyclic-payment continuation

The direct payment attempt is recorded in
[mpp-four-body-cyclic-payment-closure-direct-attempt-20260621.md](/Users/thomasbirnie/Workspace/ToE/Research-Consolidation/problems/navier-stokes/theorem-construction/mpp-four-body-cyclic-payment-closure-direct-attempt-20260621.md).

Its exact output is:

```math
\boxed{
\text{oriented same-carrier four-body exchange inequalities}
\Longrightarrow
\text{unweighted log-scale reserve.}
}
\tag{4B.47}
```

The remaining full-loop theorem is:

```math
\boxed{
\text{every complete four-body cycle with nonzero selected participation
activity has positive scale-critical loss,}
}
\tag{4B.48}
```

or equivalently:

```math
\boxed{
\text{the only zero-loss four-body cycle is removable and has zero selected
participation activity.}
}
\tag{4B.49}
```

This keeps the four-body resurrection centered on balance closure rather than
on a terminal defect funnel.
