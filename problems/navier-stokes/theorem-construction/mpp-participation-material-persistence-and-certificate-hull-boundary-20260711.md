---
theorem_id: participation-material-persistence-and-certificate-hull-boundary-20260711
created: 2026-07-11
problem: navier-stokes
route: ontology-generation / participation-first / material-persistence
status: smooth-history-flow-persistence-and-family-closure-criterion-proved; scaling-obstruction-proved; w9-flow-coordinate-sharpened; ontology-candidates-unpromoted
source_refs:
  - problems/navier-stokes/ontology.md
  - .claude/physical-reasoning-gate.txt
  - problems/navier-stokes/target-operating-contract.yaml
  - problems/navier-stokes/live-theorem-edge.yaml
  - problems/navier-stokes/source-frontier.yaml
  - problems/navier-stokes/review-verdict.yaml
  - problems/navier-stokes/claim-ladder.md
  - problems/navier-stokes/spine.md
  - problems/navier-stokes/ontology-derivation-walk-20260711-missing-dimensions.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-c0-material-time-certificate-shift-hull-invariance-reduction-20260706.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-codex-b3-material-time-flow-certificate-closure-audit-20260706.md
  - problems/navier-stokes/theorem-construction/frontier-dissolution-loop-stall-actual-history-flow-action-codex-gate-20260708.md
completion_truth: >-
  This cycle proves the exact smooth-lifespan persistence of material identity,
  a quantitative stability theorem for families of material flows, and an exact
  Navier–Stokes scaling obstruction to deriving family-level deformation
  compactness from kinetic energy. The result validates and sharpens the D2
  candidate under F1.3. It also isolates the flow-coordinate component of the
  compact certified material-time path hull required by W9. The global critical
  height remains open, W9 retains its certificate-family topology burden, and
  the canonical ontology remains unchanged because these candidates have not
  been integrated.
---

# Participation-rooted material persistence and the certificate-hull boundary

## 0. Joint dependency question and target lock

The participant is one smooth unforced incompressible Navier–Stokes history
with fixed viscosity on decaying \(\mathbb R^3\) or periodic \(\mathbb T^3\):

\[
\partial_tu+(u\cdot\nabla)u+\nabla p=\nu\Delta u,
\qquad \nabla\cdot u=0.
\tag{MP.0}
\]

The dependency question is:

> Which material identities persist automatically within one smooth
> participant, and which additional topology is required when rescaled
> participant histories are compactified into the certified material-time hull
> used by W9?

Parents are Root participation, F1.3, F2.3, F3.1–F3.2, and the smooth-lifespan
scope in F4. The live authority demotes every W9 or c0 compactness construction
to a Gold consumer unless it yields a genuine quantitative consequence for the
global critical height. This cycle therefore tests W9 as a consumer while
preserving the global Gold burden.

## 1. Exact material persistence inside one smooth history

For \(0\le s,t<T_*\), let

\[
\partial_tX(t,s,a)=u(X(t,s,a),t),
\qquad X(s,s,a)=a.
\tag{MP.1}
\]

On every compact interval \(I\Subset[0,T_*)\), smoothness and the declared
surface conditions give

\[
L_I:=\int_I\|\nabla u(\tau)\|_{L^\infty}\,d\tau<\infty.
\tag{MP.2}
\]

Picard–Lindelöf gives one trajectory for each label. Uniqueness gives the
cocycle and inverse laws

\[
X(t,r,X(r,s,a))=X(t,s,a),
\qquad X(s,t,\cdot)=X(t,s,\cdot)^{-1}.
\tag{MP.3}
\]

Smooth dependence on labels gives a smooth diffeomorphism. Its deformation
matrix satisfies

\[
F(t,s,a):=D_aX(t,s,a),
\qquad
\partial_tF=(\nabla u)(X(t,s,a),t)F,
\qquad F(s,s,a)=I.
\tag{MP.4}
\]

Jacobi’s formula and incompressibility yield

\[
\partial_t\det F=(\nabla\cdot u)(X,t)\det F=0,
\qquad \det F=1.
\tag{MP.5}
\]

For \(s\le t\), Grönwall gives

\[
|X(t,s,a)-X(t,s,b)|
\le
\exp\!\left(\int_s^t\|\nabla u(\tau)\|_\infty d\tau\right)|a-b|.
\tag{MP.6}
\]

Applying the same estimate to the inverse flow gives

\[
\exp(-L_{s,t})|a-b|
\le
|X(t,s,a)-X(t,s,b)|
\le
\exp(L_{s,t})|a-b|,
\tag{MP.7}
\]

where \(L_{s,t}=\int_s^t\|\nabla u(\tau)\|_\infty d\tau\).

Thus every label has one trajectory, distinct labels remain distinct, material
volume is preserved, and the two-parameter material flow is a smooth
volume-preserving diffeomorphism throughout the smooth lifespan.

## 2. Quantitative closure criterion for a family of material flows

Let \(u_n,u\) be divergence-free velocity fields on a compact interval \(I\),
with flows \(X_n,X\). Assume

\[
\sup_n\int_I\|\nabla u_n(t)\|_\infty dt\le L,
\tag{MP.8}
\]

and

\[
\int_I\|u_n(t)-u(t)\|_\infty dt\longrightarrow0.
\tag{MP.9}
\]

For \(s\le t\), write
\(d_n(t,a)=|X_n(t,s,a)-X(t,s,a)|\). Then

\[
\begin{aligned}
d_n(t,a)
&\le
\int_s^t
|u_n(X_n(\tau),\tau)-u_n(X(\tau),\tau)|d\tau\\
&\quad+
\int_s^t\|u_n(\tau)-u(\tau)\|_\infty d\tau\\
&\le
\int_s^t\|\nabla u_n(\tau)\|_\infty d_n(\tau,a)d\tau
+
\|u_n-u\|_{L^1_tL^\infty_x(I)}.
\end{aligned}
\tag{MP.10}
\]

Grönwall yields the uniform estimate

\[
\sup_{s,t\in I}\sup_a
|X_n(t,s,a)-X(t,s,a)|
\le
e^L\|u_n-u\|_{L^1_tL^\infty_x(I)}.
\tag{MP.11}
\]

The same estimate applies to inverse flows.

Define the velocity equiintegrability modulus

\[
\Omega_0(\delta)
:=
\sup_n\sup_{J\subset I,\ |J|\le\delta}
\int_J\|u_n(t)\|_\infty dt.
\tag{MP.12}
\]

When \(\Omega_0(\delta)\to0\), the flow family has a common modulus in both
time variables:

\[
|X_n(t,s,a)-X_n(t',s,a)|
\le \Omega_0(|t-t'|),
\tag{MP.13}
\]

and, using the cocycle plus `(MP.6)`,

\[
|X_n(t,s,a)-X_n(t,s',a)|
\le e^L\Omega_0(|s-s'|).
\tag{MP.14}
\]

Together with `(MP.7)`, these estimates give compactness of the flow coordinate
in the uniform local topology and preserve the cocycle, inverse, and
volume-preserving properties in the limit.

Deformation-gradient closure requires one further spatial-modulus row. Set

\[
\Omega_1(r)
:=
\sup_n\int_I
\sup_{|x-y|\le r}
|\nabla u_n(t,x)-\nabla u_n(t,y)|dt.
\tag{MP.15}
\]

Assume

\[
\Omega_1(r)\to0
\quad\text{as }r\downarrow0,
\qquad
\int_I\|\nabla u_n-
abla u\|_\infty dt\to0.
\tag{MP.16}
\]

The coefficient matrices in `(MP.4)` then converge in \(L^1_t\), uniformly in
labels, because

\[
\begin{aligned}
&|\nabla u_n(X_n,t)-\nabla u(X,t)|\\
&\quad\le
\sup_{|x-y|\le\|X_n-X\|_\infty}
|\nabla u_n(x,t)-\nabla u_n(y,t)|
+
\|\nabla u_n-
abla u\|_\infty.
\end{aligned}
\tag{MP.17}
\]

Variation of constants and Grönwall therefore give

\[
D_aX_n\longrightarrow D_aX
\quad\text{uniformly on compact material-time windows}.
\tag{MP.18}
\]

Equations `(MP.8)`–`(MP.16)` are an explicit sufficient topology for the
flow and deformation coordinates of a certified material-time path hull.
Pressure, cover, differentiated tower, service, selector, and zero-payer rows
retain their own closed-graph requirements.

## 3. Navier–Stokes scaling falsifies an energy-only family modulus

Take a smooth decaying \(\mathbb R^3\) participant \(u\) on \([0,\tau]\) and
define the exact fixed-viscosity scaling

\[
u_\lambda(x,t)=\lambda u(\lambda x,\lambda^2t).
\tag{MP.19}
\]

Its material flow is

\[
X_\lambda(t,0,a)
=
\lambda^{-1}X(\lambda^2t,0,\lambda a).
\tag{MP.20}
\]

Direct differentiation gives

\[
D_aX_\lambda(t,0,a)
=
D_aX(\lambda^2t,0,\lambda a).
\tag{MP.21}
\]

The heat-scaled deformation action is invariant:

\[
\int_0^{\tau/\lambda^2}
\|\nabla u_\lambda(t)\|_\infty dt
=
\int_0^\tau\|\nabla u(s)\|_\infty ds.
\tag{MP.22}
\]

At the same time,

\[
\|u_\lambda(0)\|_2^2
=
\lambda^{-1}\|u(0)\|_2^2.
\tag{MP.23}
\]

Material deformation action can therefore remain fixed on heat-scaled windows
while kinetic energy tends to zero.

The derivative-flow family also exposes the missing spatial modulus. Suppose
\(D_aX(\tau,0,\cdot)\) is nonconstant. Choose \(x,y\) with

\[
D_aX(\tau,0,x)\ne D_aX(\tau,0,y),
\]

and set \(a_\lambda=x/\lambda\), \(b_\lambda=y/\lambda\). Then

\[
|a_\lambda-b_\lambda|\to0,
\tag{MP.24}
\]

while

\[
|D_aX_\lambda(\tau/\lambda^2,0,a_\lambda)
-D_aX_\lambda(\tau/\lambda^2,0,b_\lambda)|
=
|D_aX(\tau,0,x)-D_aX(\tau,0,y)|>0.
\tag{MP.25}
\]

Hence the unscaled derivative-flow family lacks a common spatial modulus.
A scale-normalized certificate topology can restore the normalized profile;
that normalization and every associated legality row must appear explicitly in
the certificate state.

This scaling family changes the datum. It therefore tests a proposed universal
energy-to-family-compactness inference. The same-history terminal family still
requires its own original-data theorem.

## 4. Reconciliation with W9 and the live Gold program

The repo audit gives three levels.

1. On each actual smooth prelimit history, material-time shift and material
   label persistence follow from `(MP.1)`–`(MP.7)`.
2. The flow coordinate of a compactified history family closes under
   `(MP.8)`–`(MP.16)`.
3. The full W9 certificate hull also carries pressure law, Reynolds defect,
   material ancestry, finite cover, differentiated tower, service modulus,
   selector legality, zero-payer closure, and terminal-window room.

The scaling test `(MP.19)`–`(MP.25)` blocks the inference from finite kinetic
energy and intrahistory label persistence to the family topology required in
level 2. The current ontology supplies each actual flow and leaves the
scale-family compactness question open.

W9 therefore retains one exact flow-coordinate burden inside
`CertifiedMaterialTimeShiftHullCompactness.A`: establish a scale-normalized
common material-time modulus and deformation-row closure for the retained
same-history family, or expose the failed coordinate through the already typed
legal, participation, field, cover, selector, or payer row. The remaining W9
certificate rows survive unchanged.

The global critical-height bound receives no quantitative estimate from this
cycle. Gold remains open at the current global critical-height burden. Silver
receives no new Part or Field failure.

## 5. Return to the ontology

### Candidate refinement of F1.3

Proposed canonical text:

> On every compact interval contained in the smooth lifespan, the material
> flow \(X(t,s,\cdot)\) is a unique smooth volume-preserving diffeomorphism
> with the cocycle law and inverse \(X(s,t,\cdot)\). Distinct labels remain
> distinct and each label determines one trajectory. With
> \(L_{s,t}=\int_s^t\|\nabla u(\tau)\|_{L^\infty}d\tau\),
> \[
> e^{-L_{s,t}}|a-b|
> \le |X(t,s,a)-X(t,s,b)|
> \le e^{L_{s,t}}|a-b|.
> \]
> These conclusions apply inside the smooth lifespan. Compactness across a
> rescaled family requires uniform family-level topology in addition to this
> intrahistory persistence.

The derivation `(MP.1)`–`(MP.7)` independently validates the D2 candidate from
`ontology-derivation-walk-20260711-missing-dimensions.md`, with the quantitative
distortion row added.

### Candidate refinement of F3.2

Proposed canonical text:

> Under the \(\mathbb R^3\) Navier–Stokes scaling, the material flow obeys
> \(X_\lambda(t,0,a)=\lambda^{-1}X(\lambda^2t,0,\lambda a)\). Material
> deformation action on a heat-scaled interval is invariant, while kinetic
> energy scales by \(\lambda^{-1}\). A rescaled family can therefore retain a
> fixed amount of material deformation while its kinetic energy tends to zero.

The exact proof is `(MP.19)`–`(MP.23)`. The spatial-modulus countertest is
`(MP.24)`–`(MP.25)`.

Both deltas remain candidate material. Canonical integration requires exact
independent validation and complete consumer re-auditing. The canonical
ontology remains unchanged in this cycle.

## 6. Four-field gate return

- **Physical verdict:** smooth participation causes unique material
  trajectories, volume-preserving diffeomorphic transport, cocycle structure,
  and quantitative distortion control throughout the smooth lifespan. Exact
  Navier–Stokes scaling permits fixed heat-window deformation action alongside
  vanishing kinetic energy. Family-level certificate compactness remains open.
- **Scoped mathematical status:** `(MP.1)`–`(MP.18)` prove the actual-history
  persistence and family closure criterion. `(MP.19)`–`(MP.25)` prove the
  scaling obstruction at the declared \(\mathbb R^3\) scope.
- **Live-burden effect:** checked route obstruction plus support. The
  energy-to-W9 compactness shortcut is blocked. The flow-coordinate component
  of W9 is sharpened to explicit moduli. The global critical-height burden is
  unchanged.
- **Proposed ontology delta:** candidate refinement of F1.3 and candidate
  refinement of F3.2. The proof supports both candidates at the exact scopes
  stated above; their premise weight depends on mathematical validity and
  nonredundancy.
