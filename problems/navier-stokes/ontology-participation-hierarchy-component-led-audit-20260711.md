# Superseded component-led audit: questions after F1–F7

**Superseded on 2026-07-11 for dependency order, not mathematical erasure.**
This file preserves the calculations, examples, and countertests produced in
the first eighteen passes. It cannot govern the ontology because several
passes began from a pressure, viscous, strain, or readout component and only
rejoined the one participant afterward. The active rebuild is
`ontology-participation-hierarchy-20260711.md`; it reparents every survivor to
the full fixed-\(\nu\) Navier--Stokes tangent before any component projection.

**Status:** superseded evidence archive. It preserves exact answers,
candidates, counterexamples, and open surfaces from the first ordering. It is
not active authority, is not a second canonical ontology, and grants no premise
weight.

**Authority:** `ontology.md` remains the hard-fact store. This archived audit
the seven-dimension completion walk in
`ontology-derivation-walk-20260711-missing-dimensions.md`; the latter remains
the detailed candidate record. A later hierarchy status overrides an earlier
candidate's status only for this map. Canonical promotion still requires the
separate ledger validation and promotion transaction.

## Status vocabulary

- **Canonical** means an installed F1–F7 fact.
- **Hierarchy-verified** means the stated derivation or counterexample has been
  checked at its stated scope and may direct future questions. It remains
  noncanonical until the promotion process succeeds.
- **Candidate** means the exact source exists but its canonical candidate has
  not completed independent validation and consumer re-gating.
- **Boundary** means a counterexample or scope failure blocks a stronger claim.
- **Open** means no premise weight.
- **Proof grammar** means a rule about how a theorem test is interpreted, not a
  physical fact about the fluid.

## Root: participation

One datum-anchored velocity–pressure history on one declared surface is the
object. Transport, pressure, viscosity, incompressibility, material flow, and
every derivative or readout remain rows of that history. Everything below asks
what this one-history condition settles before a proof label is allowed to do
any work.

## 1. Object identity and surface

**Question.** When do two descriptions still refer to the same participant?

**Chain.** Participation → F1.1 plus smooth-class regularity → difference of
two smooth same-datum histories.

For smooth unforced histories on the declared periodic or decaying surface,
the difference \(w=u_1-u_2\) obeys the usual energy inequality

\[
\frac12\frac{d}{dt}\|w\|_2^2+\nu\|\nabla w\|_2^2
\le \|\nabla u_2\|_\infty\|w\|_2^2.
\]

The common datum gives \(w(0)=0\), so Grönwall gives \(w=0\) through every
common smooth interval. The pressure gauge does not affect this argument.

**Hierarchy result.** **Hierarchy-verified at smooth scope:** one datum has at
most one smooth history on every common interval and therefore at most one
maximal smooth history. Standard local smooth existence supplies nonemptiness
for the datum classes on which it is invoked; that source statement still needs
its own candidate check before canonical promotion. The uniqueness estimate
uses the full smooth momentum law, incompressibility, and viscosity. It does
not need F1.2's separate elliptic pressure-slaving theorem. Weak-class
uniqueness remains outside this statement.

## 2. Material persistence

**Question.** What persists with a material object, and what continues to be
exchanged or changed?

**Chain.** Participation → smooth flow map → F1.3 → F5.2 and F5.3.

On every compact subinterval of the smooth lifespan, the flow map is a smooth
diffeomorphism. Labels neither merge nor split, and

\[
\det D_aX=1.
\]

The material carrier therefore persists with its volume. Its energy remains
open to pressure, viscous, and advective boundary flux; its circulation has the
signed viscous defect in F5.3; and its Fourier support is not material data.

**Hierarchy result.** **Canonical** for volume preservation and **hierarchy-
verified** for lifespan-scoped label persistence. The stronger claim that the
compensating compression lies in a particular annulus, or that a material
packet closes its own energy account, is **open**. F5.2 supplies the exact
boundary-flux obstruction.

### Material identity does not freeze pulled-back vorticity

**Physical reasoning before mathematics.** A material part is the image of its
initial labels under the one Navier–Stokes flow. Its ancestry and volume
persist through the smooth lifespan. Its shape, vorticity, and circulation are
properties evolving inside that same history. Pressure changes the deformation
history without becoming an independent curl source; viscosity can change
vorticity relative to the persistent labels.

**Exact mathematical test.** With \(F=D_aX\),

\[
\frac{d}{dt}\left[F^{-1}\omega(X,t)\right]
=\nu F^{-1}\Delta\omega(X,t).
\]

In material coordinates the Eulerian Laplacian has principal tensor
\((F^TF)^{-1}\). Exact smooth periodic shears realize local viscous vorticity
growth, local decay, pure viscous turning with zero stretching, and creation of
signed material circulation from an instantaneous zero. These invariant shear
histories have zero nonlinear transfer, so they settle local viscous sign and
direction freedom rather than a general cross-scale mechanism.

**Physical reasoning after mathematics.** Material identity is label ancestry
and volume preservation. Pulled-back pointwise vorticity and material
vorticity flux remain mutable. Deformation and diffusion are simultaneous
dependencies of the one part: the deformation carries and stretches
vorticity, while viscosity is the exact defect to deterministic frozen-in
transport. Eulerian isotropy and material-coordinate anisotropy are coordinate
descriptions of the same viscous law.

**Hierarchy result.** **Hierarchy-verified candidate refinement** of F4.1,
with F5.3 as its integrated circulation reading. It permits each exact shear
history above and blocks
universal deterministic frozen-in vorticity and universal pointwise viscous
damping at positive viscosity. The proof and scope audit are in
[the material-vorticity ontology cycle](theorem-construction/codex-ontology-adjunct-viscous-cauchy-material-vorticity-20260711.md).
It has no canonical premise weight.

### Signed vector vorticity is source-free while enstrophy is produced

**Physical reasoning before mathematics.** The same divergence-free vorticity
field has an oriented vector account and a magnitude account. Anisotropic
strain may amplify, suppress, or turn local vorticity, and viscosity may change
material circulation. The question is whether those changes create net signed
vector vorticity in the interior or rearrange it while changing its magnitude.

**Exact mathematical test.** F2.1 and F4.1 give the componentwise conservation
law

\[
\partial_t\omega_i
+\partial_j\!\left(
u_j\omega_i-u_i\omega_j-\nu\partial_j\omega_i
\right)=0,
\]

while the local enstrophy law is

\[
\partial_t\frac{|\omega|^2}{2}
+\nabla\cdot\left(
u\frac{|\omega|^2}{2}
-\nu\nabla\frac{|\omega|^2}{2}
\right)
=\omega\cdot S\omega-\nu|\nabla\omega|^2.
\]

For a moving surface with boundary velocity \(v_\Sigma\),

\[
\frac d{dt}\int_{\Sigma(t)}\omega\cdot n\,dS
=\oint_{\partial\Sigma(t)}
\left[(u-v_\Sigma)\times\omega+\nu\Delta u\right]\cdot d\ell.
\]

Thus a material surface has the F5.3 viscous defect. Under the canonical
Laplacian convention, the viscous term is

\[
+\nu\oint\Delta u\cdot d\ell
=-\nu\oint(\nabla\times\omega)\cdot d\ell.
\]

An early draft occurrence with the opposite sign is refuted; later adjudicated
sources and canonical F5.3 use the corrected sign. Exact smooth periodic
histories realize increasing enstrophy with zero total vector vorticity, local
vorticity emergence from zero, and arbitrarily large positive vorticity mass
and critical height despite zero signed total vorticity.

**Physical reasoning after mathematics.** Transport and stretching combine
into boundary flux in the signed vector account. The same directional
stretching is a genuine volumetric source in the quadratic magnitude account.
Viscosity can redistribute signed flux and alter local vorticity zero sets
without supplying an independently owned bulk curl source. Signed flux
therefore supplies no positive inventory, no zero-set preservation, and no
Gold critical-height bound.

**Hierarchy result.** **Hierarchy-verified candidate refinement** of F4.1,
F5.3, and F6.1, with no new fact ID. F6.1's phrase “vorticity or enstrophy
production” must be read at promotion as local vorticity-magnitude
amplification or suppression and global enstrophy production, not net signed
vector-vorticity birth. The proof, sign correction, participant
counterexamples, and Gold/Silver return are in
[ontology goal cycle 001](theorem-construction/codex-goal-ontology-cycle-001-vorticity-flux-enstrophy-20260711.md).
It has no canonical premise weight.

## 3. Dependency and part–whole relations

**Question.** Can a derivative, band, packet, localization, or region become
an autonomous piece of fluid?

**Chain.** Participation → F2.1 and F2.2 → the exact view law and its
stress–pressure lock.

For a linear view \(v=Au\), the view equation carries precisely the
commutators produced by \(A\). For a time-independent constant-coefficient
scalar operator acting componentwise, one tensor

\[
\tau_A=A(u\otimes u)-(Au)\otimes(Au)
\]

is both the view's nonlinear defect and the source of its pressure defect. A
view cannot keep one row and discard the other. A spatial scalar cut also
requires its Leray repair and pressure-collar/commutator terms.

**Hierarchy result.** **Hierarchy-verified** as a dependent-view rule. The
correctly scoped F2.2/F2.3/F2.5 bundle is now a **candidate with a confirmed
ledger-owned independent validation**:
`20260711-f2-candidate-v2-independent-validation-confirmed` (2026-07-11, a
distinct hook turn) confirmed
`20260711-participation-pressure-graph-f2-ontology-candidate-v2` by fresh
derivation with independent witnesses and bound digests
(`cad2c4d1…3074` record, `1feda82c…2a89` delta, after-hash
`d78d07c3…a077`); see
`theorem-construction/mpp-f2-bundle-v2-independent-validation-fresh-derivation-20260711.md`.
The earlier Codex artifact check (`F2_V2_ARTIFACT_OK`) and PD re-derivations
remain corroborating evidence. Canonical promotion still requires its own
explicit later turn reproducing the validated bytes with complete consumer
re-gating; the candidate carries no premise weight until then.
Shared-interface stress-work antisymmetry remains a separately proved
candidate refinement of F5.2.

### One pressure response has two inseparable geometric roles

**Physical reasoning before mathematics.** The pressure Hessian read at one
point belongs to the elliptic response of the whole current field. Nonzero
strain is anisotropic. The pressure row remains part of the same strain law,
while its directional action may vanish. Its isotropic and trace-free pieces
are roles of one tensor fixed by the same elliptic problem. Anisotropy alone
does not force \(H^\circ\ne0\).

**Exact mathematical test.** For

\[
g=|S|^2-\frac12|\omega|^2,
\qquad
-\Delta p=g,
\]

the pressure Hessian has the exact split

\[
\nabla^2p=-\frac g3I+H^\circ,
\qquad
\operatorname{tr}H^\circ=0,
\]

and the trace-free strain law is

\[
D_tS+(S^2+W^2)^\circ+H^\circ=\nu\Delta S.
\]

The isotropic third cannot change an eigenvalue gap or rotate an eigenframe.
All pressure-induced directional strain action is carried by the nonlocal
same-field response \(H^\circ\). Exact smooth periodic histories realize zero
pressure action, nonzero co-diagonal action with zero frame turning, and both
orientations of pressure-driven frame turning.

**Physical reasoning after mathematics.** The local source constrains one
scalar trace without locally determining the directional tensor. The
trace-free response remains dependent on the whole source field and surface
data. Global pressure–strain cancellation permits signed local action, and
pressure slaving supplies no universal braking, restoring, or alignment sign.

**Hierarchy result.** **Hierarchy-verified candidate refinement** of F7.3,
with an F4.1 cross-reference and no separate fact ID. The proof and scope audit
are in
[the pressure-Hessian ontology cycle](theorem-construction/codex-ontology-adjunct-pressure-hessian-anisotropic-geometry-20260711.md).
It has no canonical premise weight.

### The critical height is a whole-field material-pair relation

**Physical reasoning before mathematics.** The global critical height compares
separated points of the same velocity field. Under the material flow, those
points are two persistent labels whose measure is preserved, while their
separation, relative velocity, vorticity, and orientation change together.
Every material partition therefore has within-part and cross-part pairs.

**Exact mathematical test.** On decaying \(\mathbb R^3\), with
\(R_{ab}=X(a)-X(b)\) and
\(V_{ab}=u(X(a))-u(X(b))\),

\[
\mathcal H_{1/2}
=\frac1{4\pi^2}\iint
\frac{|V_{ab}|^2}{|R_{ab}|^4}\,da\,db.
\]

The signed production current is

\[
j_{ab}
=-\frac1{\pi^2}
\frac{|V_{ab}|^2(V_{ab}\cdot R_{ab})}{|R_{ab}|^6},
\]

so positive critical production is net inward relative-energy flux in the
separation variable. Pressure cancels, and viscosity becomes dissipative, only
after every pair is summed. Exact smooth periodic participants give both signs
for each unsummed pair row.

With \(q=F^{-1}\omega\circ X\), the same height has the exact vorticity reading

\[
\mathcal H_{1/2}
=\frac1{4\pi^2}\iint
\frac{q(a)\cdot F(a)^TF(b)q(b)}{|X(a)-X(b)|^2}\,da\,db.
\]

The periodic version uses the mean-zero periodic \(|k|^{-1}\) kernel. The
Euclidean distance kernel is not a global torus formula.

**Physical reasoning after mathematics.** Volume preservation fixes label
measure without fixing pair geometry. The positive velocity-pair storage and
the signed vorticity correlation are compatible readings of one complete
field. Anisotropy enters through pair direction, Cauchy–Green deformation, and
the mixed tensor \(F(a)^TF(b)\); viscosity changes \(q\); the nonlocal pressure
response shapes the common velocity and deformation history. A localized part
does not own an additive critical height because cross pairs remain
load-bearing.

The pair index is an exact integration coordinate over two material labels;
it does not create an independent pair-participant, owner, or lineage.

**Hierarchy result.** **Hierarchy-verified causal/provenance refinement** under
F1.3, F2.1, F4.1, and F6.3, cross-referenced to F2.2 and F7.1, with no new fact
ID. It gives the exact physical bridge from material participation to the Gold
readout. It supplies no datum-controlled pair compensation, and bounding its
positive current over all record doublings is already Gold-strength. The
derivation, pairwise sign countertests, Cauchy–Green no-go, and gate return are
in
[ontology goal cycle 002](theorem-construction/codex-goal-ontology-cycle-002-critical-height-material-pair-geometry-20260711.md).
It has no canonical premise weight.

### Incompressibility leaves an anisotropic angular critical current

**Physical reasoning before mathematics.** At small material-pair separation,
trace-free strain gives extension and compression with zero unweighted
spherical mean. The critical current weights those directions by their
relative kinetic energy. The flow's anisotropy can therefore survive the
unweighted cancellation.

**Exact mathematical test.** For \(A=S+W\), \(\operatorname{tr}S=0\), and
ordinary surface measure on \(S^2\), define

\[
\mathcal I(A)
=\int_{S^2}|A\theta|^2(\theta\cdot S\theta)\,d\theta.
\]

The fourth spherical moment gives

\[
\mathcal I(A)
=\frac{8\pi}{15}
\left(
\operatorname{tr}(S^3)-\frac14\omega\cdot S\omega
\right).
\]

For the gross positive angular current,

\[
\mathcal B(A)
=\int_{S^2}
[-|A\theta|^2(\theta\cdot S\theta)]_+\,d\theta
\ge
\frac{8\pi}{15}[-\operatorname{tr}(S^3)]_+.
\]

The strain–spin cross term cancels by reflection on the compression region and
the remaining spin square is nonnegative. For an actual differentiable fluid,
this is the exact \(r\downarrow0\) limit of its positive critical increment
current. Exact smooth two-dimensional histories have strictly positive local
gross current while their signed global nonlinear critical production is zero.

**Physical reasoning after mathematics.** The surviving current is a
quadrupole relation between trace-free strain and the anisotropic second moment
of relative energy. Spin cannot erase the gross positive sector forced by a
negative strain cubic, though it can cancel the signed angular mean. The local
floor has no one-way history: signed cancellation, radial thinning, annulus
escape, and failure of strong limit passage remain possible. The current is a
readout of the complete trajectory, not a participant or lineage.

**Hierarchy result.** The signed identity is a provenance recombination of
F6.2, F7.1, and F7.2. The positive-part floor is a
**hierarchy-verified candidate negative refinement** under F6.3 and F7.1, with
no new fact ID. It deletes only the local affine scenario in which
\(-\operatorname{tr}(S^3)>0\) is completely silent in the positive native
angular current. It supplies no finite Gold resource or Silver Part/Field
failure. The proof, scope boundaries, exact countertests, and fixed-annulus
passage audit are in
[ontology goal cycle 003](theorem-construction/codex-goal-ontology-cycle-003-affine-angular-critical-current-anisotropy-20260711.md).
It has no canonical premise weight.

### Viscous irreversibility permits recurrent material-pair geometry

**Physical reasoning before mathematics.** Global kinetic-energy loss makes
the complete viscous state mechanically irreversible. It does not yet decide
whether the distance between two persistent material labels is one-way.
Pressure can preserve a cellular velocity pattern while viscosity damps its
speed, allowing incompressible transport to carry labels repeatedly through
the same anisotropic geometry.

**Exact mathematical test.** On the normalized three-torus, for every integer
\(n\ge1\),

\[
u=a(t)(-\sin(ny),\sin(nx),0),
\qquad
p=-a(t)^2\cos(nx)\cos(ny),
\qquad
a(t)=Ae^{-\nu n^2t}
\]

is an exact smooth unforced positive-viscosity solution. Pressure cancels its
nonlinear acceleration and viscosity decays its amplitude. In the scaled
material coordinates \(X=nx\), \(Y=ny\), the clock

\[
\tau(t)
=\frac{A}{\nu n}(1-e^{-\nu n^2t})
\]

reduces the trajectories to

\[
X_\tau=-\sin Y,
\qquad
Y_\tau=\sin X.
\]

The Hamiltonian \(\cos X+\cos Y\) has closed regular orbits around the fixed
center. For a second label on one such orbit,

\[
\frac12\frac d{d\tau}(X^2+Y^2)
=-X\sin Y+Y\sin X
\]

has both signs. If the orbit period is \(T_h\), every integer \(k\) with

\[
kT_h<\frac{A}{\nu n}
\]

gives an exact finite-time spatial return of the same label pair. Choosing
\(A>N\nu nT_h\) produces at least \(N\) contraction–expansion circuits at
fixed positive viscosity.

The full state remains irreversible:

\[
\frac d{dt}\frac12\|u\|_2^2
=-\nu\|\nabla u\|_2^2<0,
\qquad
\frac d{dt}\mathcal H_{1/2}
+\nu\|\Lambda^{3/2}u\|_2^2
=0.
\]

Each fixed datum has the finite material-time budget \(A/(\nu n)\). At every
complete spatial circuit the amplitude falls by exactly \(\nu nT_h\).

**Physical reasoning after mathematics.** The same labels can return to the
same separation while carrying less relative velocity. Anisotropic strain
alternates their contraction and expansion; the slaved pressure response
preserves the cellular spatial pattern; viscosity weakens each visit and
limits the number of circuits. Irreversibility belongs to the full energetic
state rather than to a monotone ordering of all material distances.

The selected pair is a recurrent coordinate of one nonrecurrent participant.
Its inward–outward geometry coexists with zero global nonlinear critical
production. The torus critical kernel remains periodic; the Euclidean
inverse-distance pair current is not silently imported as a global torus
formula.

**Hierarchy result.** **Hierarchy-verified candidate negative refinement**
under F1.3 and F5.1, cross-referenced to F4.1, F6.3, and F7.1, with no new fact
ID. It refutes unrestricted material-pair no-return and any inference from
total energy dissipation to pair-distance monotonicity. It leaves
record-conditioned weighted no-return, datum-dependent bounds, Gold, and every
Silver Part/Field obligation open. The full derivation and scope audit are in
[ontology goal cycle 004](theorem-construction/codex-goal-ontology-cycle-004-viscous-material-pair-recurrence-20260711.md).
It has no canonical premise weight.

### Finite energy does not bound the material deformation clock

**Physical reasoning before mathematics.** Material deformation is driven by
the strain sampled along one persistent label, while kinetic-energy
dissipation is an \(L^2\) spacetime account over the whole field. Many
anisotropic scales can therefore add their derivatives coherently at one label
even when their Fourier energies add only quadratically.

**Exact mathematical test.** For a smooth material flow, define the
strain-envelope clock

\[
\mathfrak D(a;T)
=
\int_0^T\|S(X(a,t),t)\|_{\mathrm{op}}\,dt,
\]

because every material line \(r=F\xi\) obeys

\[
\frac d{dt}\log|r|
=\widehat r\cdot S(X(a,t),t)\widehat r.
\]

The directional rate is exact; \(\mathfrak D\) is its exact upper envelope,
not an equality with every endpoint deformation.

On the normalized three-torus, let

\[
K_N=\{(m,\ell):1\le m,\ell\le N\},
\qquad
c_{m,\ell}=\frac{m}{m^2+\ell^2},
\qquad
L_N^2=\sum_{K_N}c_{m,\ell}^2,
\]

\[
b_{m,\ell}=\frac{B}{L_N}c_{m,\ell},
\qquad
f_N(t,y,z)
=\sum_{K_N}
b_{m,\ell}e^{-\nu(m^2+\ell^2)t}\sin(my+\ell z),
\]

and \(u_N=(f_N,0,0)\), \(p_N=0\). This is an exact global smooth
Navier–Stokes participant: the nonlinear term and pressure source vanish, and
viscosity evolves every mode by the heat law. The sine modes are orthogonal,
so every member has the same kinetic energy \(B^2/4\).

Its actual volume-preserving flow is

\[
X_N(t;x_0,y_0,z_0)
=
(x_0+G_N(t,y_0,z_0),y_0,z_0),
\qquad
G_N=\int_0^t f_N\,ds.
\]

At the fixed material label \((x_0,0,0)\),

\[
\partial_yG_N(\infty,0,0)
=\frac{B}{\nu}L_N,
\qquad
\mathfrak D_N(a_0;\infty)
\ge\frac{B}{2\nu}L_N.
\]

Writing \(r_N=|\nabla_{y,z}G_N|\), the singular values of the actual
deformation are

\[
1,
\qquad
\frac{\sqrt{r_N^2+4}+r_N}{2},
\qquad
\frac{\sqrt{r_N^2+4}-r_N}{2}.
\]

Its growing extension is accompanied by reciprocal compression in the same
volume-preserving \(F_N\).

The exact coefficient identity

\[
2L_N^2
=\sum_{m,\ell=1}^N\frac1{m^2+\ell^2}
\]

gives \(L_N\asymp\sqrt{\log N}\). The same divergence occurs on every fixed
positive time interval. Thus pointwise accumulated strain and actual material
deformation are unbounded across exact smooth participants with one fixed
surface, viscosity, and kinetic energy.

The family also identifies its own boundary. For a general invariant shear
with transverse coefficients \(d_k\),

\[
\int_0^\infty\|S(t,q)\|_{\mathrm{op}}\,dt
\le
\frac1{2\nu}\sum_k\frac{|d_k|}{|k|}
\le
\frac{C_s}{\nu}
\left(\sum_k|k|^{2s}|d_k|^2\right)^{1/2},
\qquad s>0.
\]

Energy is the logarithmic endpoint \(s=0\); every positive transverse
regularity, including \(\dot H^{1/2}\), controls the entire clock in this
invariant shear class. The fixed-energy counterfamily has
\(\mathcal H_{1/2,N}(0)\asymp B^2N/\log N\), so it carries no uniform critical
height.

**Physical reasoning after mathematics.** Viscosity gives a mode of wave
number \(|k|\) a lifetime \((\nu|k|^2)^{-1}\); taking one derivative leaves an
accumulated contribution of order \((\nu|k|)^{-1}\). The two-dimensional
transverse lattice is logarithmically too large for energy-level summation
when all phases align at one material label.

Pressure is still slaved: its forced response is exactly zero. Vortex
stretching and nonlinear scale transfer also vanish. The modes are preloaded
and only decay. The family therefore isolates an energy-to-material-clock
failure and simultaneously shows that passive shear cannot supply the
three-dimensional replenishment required by a dangerous Gold history.

**Hierarchy result.** **Hierarchy-verified candidate negative refinement**
under F1.3, F3.2, F3.3, and F5.1, cross-referenced to F2.2, with no new fact
ID. It strengthens the scaling obstruction to a fixed-surface, fixed-energy
exact family. It refutes energy-only material-clock control while leaving
datum-dependent control, the global critical-height bound, and every Silver
Part/Field obligation open. The derivation and independent scope audit are in
[ontology goal cycle 005](theorem-construction/codex-goal-ontology-cycle-005-fixed-energy-multiscale-material-deformation-20260711.md).
It has no canonical premise weight.

## 4. Representation versus model

**Question.** When is a description a coordinate of the participant, and when
is it a different evolution that needs a bridge?

**Chain.** Participation → F2.2, F3.3, and F7.4.

A complete Fourier, dyadic, or Littlewood–Paley decomposition is an exact
coordinate system for the same field. A fixed finite projection is exact only
along an invariant subspace. A reduced model changes the equation unless its
omitted pressure and viscous rows vanish along an actual Navier–Stokes
solution.

**Hierarchy result.** **Canonical.** This dimension adds no separate fact:
the representation/model distinction is already physically paid by F2.2 and
F7.4. A weak-limit sequence may refute graph closure without becoming a
same-history terminal object.

## 5. Lawful transformations

**Question.** Which transformations preserve the equation, which preserve the
declared surface and datum, and which only produce a new history or a view?

**Chain.** Participation → F3.1 → direct substitutions and the F2 scalar
localizer test.

The following scoped identities survive direct substitution:

- Spatial and time translations preserve the equation on their translated
  interval.
- Orthogonal changes preserve the equation on \(\mathbb R^3\); on a fixed
  torus they require a lattice-preserving orthogonal map.
- The Galilean transform

  \[
  u_c(x,t)=u(x-ct,t)+c,
  \qquad p_c(x,t)=p(x-ct,t)
  \]

  preserves the periodic equation and shifts its mean. A nonzero boost leaves
  the decaying finite-energy \(\mathbb R^3\) surface.
- Time reversal sends the equation with \(\nu>0\) to the equation with
  \(-\nu\), so it is a parity diagnostic rather than another positive-viscosity
  history.
- On connected \(\mathbb T^3\), a universal pointwise multiplier
  \(u\mapsto\chi u\) sends every same-law participant to a same-law participant
  only for \(\chi=0\) or \(\chi=1\). This is the F2 candidate's exact scope.

**Falsification.** The completion walk's claim of an *exact inventory* is
false. Pressure gauges \(p\mapsto p+C(t)\) were omitted, and every integer
\(n\ge2\) gives the fixed-torus discrete dilation

\[
u^{(n)}(x,t)=n u(nx,n^2t),
\qquad
p^{(n)}(x,t)=n^2p(nx,n^2t),
\]

which remains periodic and solves the same equation. These transformations
change the datum. Periodicity survives because \(n\) is an integer, and each
term in the momentum equation acquires the same factor \(n^3\). The dilation
does not contradict F3.1's statement that continuous scaling changes a fixed
torus surface.

**Hierarchy result.** The scoped identities are **hierarchy-verified**. The
complete-inventory candidate is a **boundary/refutation** and has no F3
promotion path. The correct future question is a classified transformation
group with explicit surface and datum effects, never an unqualified inventory.

## 6. Possible and terminal histories

**Question.** Which histories are physically permitted, and what must a
finite terminal history carry?

**Chain.** Participation → F4.1–F4.3, F5.4, F6.3, and F7.2.

The canonical facts leave helicity sign, local pressure-Hessian sign,
strain–vorticity alignment, and interscale-transfer direction genuinely
variable. A terminal event cannot be a large snapshot alone: BKM says a finite
smooth breakdown requires

\[
\int_0^{T_*}\|\omega(t)\|_{L^\infty}\,dt=\infty.
\]

For \(\mathbb R^3\), the
[Escauriaza–Seregin–Šverák endpoint result](https://www.mathnet.ru/eng/rm609)
gives a
second verified exclusion: a bounded \(L_t^\infty L_x^3\) norm prevents a
finite singularity, and the Sobolev embedding
\(\dot H^{1/2}\hookrightarrow L^3\) gives the corresponding critical-norm
exclusion. The periodic extension, rate floors, and instant-analyticity
statements remain source-queue material in this hierarchy.

### Critical transfer and vorticity-aligned stretching are distinct

**Physical reasoning.** Critical kinetic transfer redistributes velocity
activity across frequencies. Vortex stretching changes vorticity magnitude
through the relation between the vorticity direction and anisotropic strain.
They occur inside the same participant and act on different field properties.

The exact planar triad in
[cycle 006](theorem-construction/codex-goal-ontology-cycle-006-critical-transfer-versus-vorticity-stretch-20260711.md)
has positive initial critical-height growth while

\[
S\omega=0.
\]

It remains globally smooth. Conversely, the exact heat-decaying ABC Beltrami
history has positive local

\[
\frac{\omega\cdot S\omega}{|\omega|^2}
\]

at some points while its global enstrophy production and nonlinear critical
transfer both vanish. Local aligned stretch, global enstrophy production, and
critical kinetic transfer are therefore three distinct readings.

The exact aligned envelope

\[
\mathcal A(t)
=\operatorname*{ess\,sup}_{|\omega|>0}
\left[
\frac{\omega\cdot S\omega}{|\omega|^2}
\right]_+
\]

satisfies

\[
\|\omega(t)\|_\infty
\le
\|\omega(s)\|_\infty
\exp\!\left(\int_s^t\mathcal A(\tau)\,d\tau\right).
\]

A finite maximal smooth time requires

\[
\int_0^{T_*}\mathcal A(t)\,dt=\infty.
\]

**Physical return.** Positive critical transfer can be harmless, and positive
local alignment can cancel globally. The aligned clock is a terminal
vorticity-amplification envelope, not a signed critical-transfer account.

**Hierarchy result.** **Hierarchy-verified refinement** of F4.1, F4.3, F6.1,
and F6.3. It has no canonical premise weight and supplies no Gold bound or
Silver landing.

### Unbounded critical height cannot remain stretching-free

Let

\[
E=\frac12\|u\|_2^2,
\qquad
H=\frac12\|\Lambda^{1/2}u\|_2^2,
\qquad
Z=\frac12\|\omega\|_2^2,
\]

and write

\[
Q_\omega(t)=\int\omega\cdot S\omega\,dx.
\]

Fourier interpolation, energy dissipation, and the enstrophy balance give

\[
H(t)^2\le E(t)Z(t)\le E(0)Z(t),
\]

\[
Z'(t)+\nu\|\nabla\omega(t)\|_2^2=Q_\omega(t).
\]

For every smooth interval \(a<b\),

\[
H(b)^2
\le E(b)
\left(
Z(a)+\int_a^b[Q_\omega(t)]_+\,dt
\right),
\]

\[
H(b)
\le
\sqrt{E(b)Z(a)}
\exp\!\left(\int_a^b\mathcal A(t)\,dt\right).
\]

The stored enstrophy \(Z(a)\) is the exact obstruction to charging every
finite height upcrossing. The planar triad can make arbitrarily large absolute
finite height gains across smooth data with zero stretching charge.

An unbounded history is different:

\[
\sup_{t<T}H(t)=\infty
\Longrightarrow
\sup_{t<T}Z(t)=\infty
\Longrightarrow
\begin{cases}
\displaystyle\int_0^T[Q_\omega(t)]_+\,dt=\infty,\\[4pt]
\displaystyle\int_0^T\mathcal A(t)\,dt=\infty.
\end{cases}
\]

The Betchov identity supplies the same anisotropic strain reading,

\[
Q_\omega
=-\frac43\int\operatorname{tr}(S^3)\,dx
=-4\int\det S\,dx.
\]

Ordering the strain eigenvalues as
\(\lambda_1\ge\lambda_2\ge\lambda_3\), incompressibility gives
\(\lambda_1+\lambda_2+\lambda_3=0\). Hence \(\det S<0\) exactly on the
nondegenerate sector with two extensional axes and one compressive axis. At
each time,

\[
[Q_\omega(t)]_+
\le 4\int(-\det S(x,t))_+\,dx.
\]

The terminal implication above therefore has the sharper same-field
consequence

\[
\sup_{t<T}H(t)=\infty
\Longrightarrow
\int_0^T\!\int(-\det S)_+\,dx\,dt=\infty.
\]

Thus an unbounded critical-height history must accumulate infinite spacetime
action in the two-extension/one-compression strain sector. This is a signed
topological necessity, not a localization or persistence theorem: it names
neither one material owner nor one spatial region, and cancellation against
the opposite strain sector remains free.

The exact heat-decaying ABC history blocks a stronger co-location claim. At
the origin, vorticity is positively stretched along the single extensional
axis while \(\det S>0\). At \((\pi,\pi,\pi)\), the strain has two extensional
axes and \(\det S<0\), while vorticity lies on the compressive axis. Betchov
therefore locks the global signed accounts without assigning their local
spatial ownership or forcing positive vortex stretching inside the
two-extension sector.

**Physical return.** A finite critical rearrangement may reuse derivative
strength already stored in the field. Unbounded critical ascent must create
unbounded first-derivative strength and must repeatedly overcome viscosity
through net-positive three-dimensional vortex stretching. In the same global
account, that terminal production requires infinite action of biaxial
extension coupled to compression; isotropic or purely planar amplification
cannot carry it.

**Hierarchy result.** **Hierarchy-verified terminal refinement** joining F5.1
and F6.3 to F6.1 and F7.1. The proof is in
[cycle 007](theorem-construction/codex-goal-ontology-cycle-007-terminal-critical-growth-requires-vortex-stretching-20260711.md).
It filters out terminal scenarios with bounded enstrophy, finite aligned
clock, or permanently vanishing \(S\omega\). Bounding either surviving
quantity is stronger continuation-grade work; this refinement does not close
Gold.

### Terminal growth requires scale-critical two-directional extension

Let \(\lambda_1\ge\lambda_2\ge\lambda_3\) be the ordered eigenvalues of the
trace-free strain tensor. The middle positive part detects the sector with two
extensional axes. Equivalently, the Courant--Fischer formula says that
\(\lambda_2>0\) precisely when some two-dimensional plane has positive
instantaneous line-stretch rate in every direction. Pointwise,

\[
-\det S\le \frac12(\lambda_2)_+|S|^2.
\]

Combining this with the Betchov strain identity gives, for a smooth unforced
history,

\[
\frac d{dt}\|S\|_2^2+2\nu\|\nabla S\|_2^2
\le 2\int(\lambda_2)_+|S|^2\,dx.
\]

If

\[
\frac2p+\frac3q=2,
\qquad \frac32<q\le\infty,
\]

then Hölder, Gagliardo--Nirenberg, and viscous absorption give

\[
\|S(t)\|_2^2
\le
\|S(0)\|_2^2
\exp\!\left(
C_q\nu^{-(p-1)}
\int_0^t\|(\lambda_2)_+(s)\|_q^p\,ds
\right).
\]

Since \(Z=\|S\|_2^2\) and \(H^2\le E(0)Z\), the same exponential gives a
quantitative bound for the live critical height.

Consequently a finite terminal history must satisfy

\[
\int_0^{T_*}\|(\lambda_2)_+(t)\|_q^p\,dt=\infty
\]

for every such pair \((p,q)\). The endpoint \(q=3/2\) is excluded from this
divergence family. On decaying \(\mathbb R^3\), the sharp Sobolev estimate still
forces the terminal threshold

\[
\limsup_{t\uparrow T_*}\|(\lambda_2)_+(t)\|_{3/2}
\ge 3\left(\frac{\pi}{2}\right)^{4/3}\nu.
\]

This is a viscosity-scale lower threshold, not endpoint norm divergence. The
Lebesgue family is scale-critical on \(\mathbb R^3\). The \(q=\infty\),
\(p=1\) case follows directly from Grönwall, with exponent constant \(2\).
The same argument extends to a smooth periodic history, where the exponents are
dimensionally and local-scale critical rather than an exact continuous
fixed-torus symmetry; the cited whole-space theorem is stronger in
solution-class scope. The critical endpoint Besov extension replaces the
displayed Lebesgue clock by
\((\lambda_2)_+\in L_t^2\dot B^{-1}_{\infty,\infty}\).

The theorem was proved in earlier work of Neustupa--Penel, independently
recovered through the strain equation by
[Miller](https://arxiv.org/abs/1710.05569), with the priority correction in
Miller's [addendum](https://link.springer.com/article/10.1007/s00205-020-01527-1).
The endpoint Besov extension is due to
[Guo--O](https://www.sciencedirect.com/science/article/abs/pii/S0893965924003744).

**Physical return.** A terminal history cannot remain planar or essentially
uniaxial. It must accumulate scale-critical positive middle-eigenvalue action:
simultaneous extension in a second strain direction. This is not pointwise
vorticity alignment. The ABC history has positive local vorticity stretching
where \((\lambda_2)_+=0\), while its two-extension antipode compresses
vorticity. The criterion acts through the global same-field Betchov identity.

At a simple middle eigenvalue with unit eigenvector \(e_2\), the exact causal
law is

\[
D_t\lambda_2
=-\lambda_2^2
+\frac14\left(|\omega|^2-(\omega\cdot e_2)^2\right)
-e_2\cdot\nabla^2p\,e_2
+\nu e_2\cdot\Delta S\,e_2.
\]

When \(\omega\parallel e_2\), vorticity is stretched at rate \(\lambda_2\)
while the rotational term that directly replenishes \(\lambda_2\) vanishes.
Persistent positive middle-axis residence must then be sustained by the
same-field pressure and viscous/eigenframe terms against the local
\(-\lambda_2^2\) lapse. The pressure contribution has no free sign. At a
repeated eigenvalue, \(e_2\) is not unique and this directional formula stops;
the invariant \((\lambda_2)_+\) continuation criterion remains valid.

Viscosity supplies no scalar maximum principle for the middle eigenvalue. At a
simple eigenvalue,

\[
e_2\cdot\Delta S\,e_2
=\Delta\lambda_2
-2\sum_k\sum_{j\ne2}
\frac{|e_j\cdot(\partial_kS)e_2|^2}{\lambda_2-\lambda_j}.
\]

The two middle-eigenvalue gaps have opposite signs. An independently checked
compactly supported divergence-free initial jet realizes

\[
S(0)=\operatorname{diag}(2,1,-3),
\qquad
e_2\cdot\Delta S(0)e_2=1,
\qquad
\nabla^2\lambda_2(0)=\operatorname{diag}(-5,-1,-1).
\]

Thus viscosity can locally increase \(\lambda_2\) at its strict spatial
maximum, even though globally

\[
\int S:\Delta S\,dx=-\int|\nabla S|^2\,dx.
\]

Viscosity dissipates the full strain while redistributing individual principal
rates through eigenframe curvature. The exact polynomial jet and its
compactification were checked independently; no strain-compatibility
obstruction occurs.

**Hierarchy result.** **Hierarchy-verified and independently validated
classical theorem extension** under F6.2 and F7.1, plus a **causal refinement**
of F5.1/F7.3 at simple eigenvalues. It supplies an exact terminal rejection
gate and a conditional quantitative Gold bound. No original-data estimate of
the middle-eigenvalue clock is known here, so SHR.7 remains open.

### The sharp biaxial producer belongs to a core--collar whole field

**Physical reasoning before mathematics.** The middle-eigenvalue criterion
forces terminal histories into two-directional extension. The next local
question is which such strain shape produces the most cubic growth at fixed
strain magnitude. Participation then asks whether that sharp local shape owns
its pressure response and production, or whether the surrounding same fluid is
part of the mechanism.

**Exact mathematical test.** For every trace-free symmetric \(3\times3\)
matrix,

\[
-4\det S\le \frac{2\sqrt6}{9}|S|^3.
\]

Apart from \(S=0\), equality holds exactly, up to orthogonal conjugacy, at

\[
\operatorname{spec}S=(a,a,-2a),\qquad a>0.
\]

The sign-reversed atom saturates the opposite bound, while planar strain has
zero determinant. Thus the biaxial Vieillefosse atom is the pointwise maximizer
of positive cubic strain production at fixed \(|S|\).

This atom is realizable as part of a lawful finite-energy datum. For any
trace-free matrix \(A\), set

\[
\mathcal A(x)=-\frac13x\times(Ax),
\qquad
U=\nabla\times(\chi\mathcal A),
\]

where \(\chi=1\) on an inner ball and is compactly supported in a larger ball.
Then \(U\) is smooth, compactly supported, divergence-free, and equals \(Ax\)
on the inner ball. The same construction fits inside a periodic chart on
\(\mathbb T^3\).

For a symmetric affine core, \(\omega=0\) there and the local pressure source is
\(\operatorname{tr}(A^2)\). Inside the core the exact pressure decomposition is

\[
\nabla^2p
=-\frac{\operatorname{tr}(A^2)}3I+\nabla^2h,
\qquad \Delta h=0.
\]

The core fixes the trace; the collar and surrounding field fix the harmonic
trace-free part. On \(\mathbb T^3\), the exact shear-cell construction makes
this freedom decisive: for every \(K\in\operatorname{Sym}_0(3)\), there is a
smooth divergence-free field with \(u(0)=0\), \(\nabla u(0)=0\), and
\(\nabla^2p(0)=K\). A local velocity-gradient jet therefore does not determine
the local pressure Hessian.

The whole affine model makes the same boundary visible. If
\(u(x,t)=A(t)x\), then

\[
\nabla^2p=-(\dot A+A^2).
\]

The isotropic choice is the restricted-Euler closure, not a consequence of the
affine source. Although this whole affine model lies outside the finite-energy
decaying and periodic surfaces, it is a decisive local-algebra countertest:
for constant symmetric \(A\), the exact affine balance uses
\(p=-\tfrac12x\cdot A^2x\), whose Hessian is generally anisotropic.

Finally, for the compactly supported realization, Betchov forces the core's
cubic strain production into one global account with the vorticity and strain
created in the cutoff region. For the extremal core \(C\) and its surrounding
region \(K\),

\[
\int_K\left(\omega\cdot S\omega+4\det S\right)dx
=8a^3|C|.
\]

**Physical reasoning after mathematics.** The extremal atom identifies the
sharp local geometry of positive strain production. Its finite-energy
realization is a core--collar object: the collar carries the vorticity and
additional strain required by the global identity, while the whole field fixes
the directional pressure response. The local atom supplies neither an
autonomous amplifier nor its own pressure sign, alignment, persistence, or
material recurrence.

**Hierarchy result.** **Hierarchy-verified and independently validated causal
refinement** under F1.2, F2.1, F6.2, F7.3, and F7.4. The sharp inequality,
equality cases, finite-energy realization, affine-pressure counterexample, and
periodic shear-cell freedom have each survived exact structural tests. This
refutes the literal c0 statement that affine pressure is isotropic and re-gates
the Vieillefosse atom as a sharp local Navier--Stokes state plus a typed
restricted-Euler comparison, rather than a self-owned Navier--Stokes mechanism.
It supplies no original-data clock bound and no admitted Part/Field failure, so
Gold and Silver remain open.

### Euler comparison enters through the viscosity-altered participation law

**Physical reasoning before mathematics.** One datum launches two different
histories: the Euler velocity--pressure history and the fixed-positive-viscosity
Navier--Stokes history. Their difference is a comparison coordinate, not a third
fluid. Viscosity acts first on the velocity, and the changed velocity then
changes transport, the material map, strain, vorticity, pressure, circulation,
scale transfer, and every later derivative rung. An Euler fact can enter the
Navier--Stokes ontology only through this whole-record difference.

This is also a typing boundary. An Euler theorem remains Euler-side comparison
evidence. The Navier--Stokes ontology can receive only the exact fixed-\(\nu\)
difference identities and the consequences actually proved from their full
coupled system at a stated scope. The dissipative sign of the Laplacian in one
energy identity does not order the two histories, because the velocity change
rebuilds every other row of participation.

**Exact mathematical test.** On a common smooth interval, set

\[
w=u^\nu-u^E,\qquad
\pi=p^\nu-p^E,\qquad
w(0)=0.
\]

Then

\[
(\partial_t+u^\nu\cdot\nabla-\nu\Delta)w
+w\cdot\nabla u^E+\nabla\pi
=\nu\Delta u^E,
\qquad \nabla\cdot w=0,
\]

and pressure is slaved to the entire changed field:

\[
-\Delta\pi
=\partial_i\partial_j
\left(u_i^Ew_j+w_i u_j^E+w_iw_j\right).
\]

If \(R=S^\nu-S^E\), \(\zeta=\omega^\nu-\omega^E\), and \(W^\nu,W^E\)
are the antisymmetric parts of the two velocity gradients, the same pressure
source is

\[
-\Delta\pi
=2S^E:R+|R|^2-\omega^E\cdot\zeta-\frac12|\zeta|^2.
\]

The first derivative rows obey

\[
(D_t^\nu-\nu\Delta)R
+\left((S^\nu)^2-(S^E)^2\right)
+\left((W^\nu)^2-(W^E)^2\right)
+\nabla^2\pi
=\nu\Delta S^E-w\cdot\nabla S^E,
\]

\[
(D_t^\nu-\nu\Delta)\zeta
=S^\nu\zeta+R\omega^E
+\nu\Delta\omega^E-w\cdot\nabla\omega^E.
\]

For the two flow maps, \(Y=X^\nu-X^E\) satisfies

\[
\dot Y
=w(X^\nu,t)+u^E(X^\nu,t)-u^E(X^E,t),
\qquad
\det D_aX^\nu=\det D_aX^E=1.
\]

Thus both histories preserve volume while their same-label trajectories and
deformations separate. Euler circulation is constant on its own material loop,
whereas

\[
\frac d{dt}\oint_{C^\nu(t)}u^\nu\cdot d\ell
=\nu\oint_{C^\nu(t)}\Delta u^\nu\cdot d\ell.
\]

Even the relative kinetic energy has no monotone comparison sign:

\[
\frac12\frac d{dt}\|w\|_2^2+\nu\|\nabla w\|_2^2
=-\int w\cdot S^Ew\,dx
-\nu\int\nabla u^E:\nabla w\,dx.
\]

With the common pressure gauge,

\[
w_t(0)=\nu\Delta u_0,\qquad
R_t(0)=\nu\Delta S_0,\qquad
\zeta_t(0)=\nu\Delta\omega_0.
\]

Viscosity directly starts the separation. The nonlinear and elliptic rows then
make that separation a change of the entire participation history. On the
periodic or decaying surface, a nonconstant history cannot solve Euler and
fixed-\(\nu\) Navier--Stokes identically on the same interval: subtraction
would give \(\nabla\pi=\nu\Delta u\), hence \(\Delta u=0\) and only the constant
or zero admissible history.

**The first purpose is concrete; the second is a conditional leap.** Under the
working assumption that Euler is not smooth for every datum and all time, the
first purpose is the same-datum, same-interval scenario inclusion

\[
\operatorname{EulerSmooth}(u_0,[0,T])
\Longrightarrow
\operatorname{NSSmooth}_\nu(u_0,[0,T])
\qquad(\nu>0\text{ fixed}).
\]

This is the theorem that viscosity cannot be the sole creator of a smoothness
failure. Smooth Euler comparison proves it for sufficiently small \(\nu\), and
the critical small-data estimate proves it for sufficiently large \(\nu\).
The unresolved theorem is confined to a compact intermediate-viscosity band,
where the high-order difference equation retains its own three-dimensional
nonlinear participation.

The second purpose is a conditional research comparison on an Euler-nonsmooth
scenario. It enters live Navier--Stokes authority only after an exact same-event
map and the full difference audit above prove that the alleged Navier--Stokes
event is inviscid-only, with no Reynolds stress, defect measure, source residue,
or untyped pressure remainder. The fixed-\(\nu\) candidate must then produce a
concrete failure of original Navier--Stokes participation in
\(\operatorname{Part}_{N,Q}\), or, after participation and the required
Field-window evidence are retained, a failure of
\(\operatorname{Field}_{N,r,Q}\). Euler membership identifies the law the event
does satisfy; it does not create the Navier--Stokes exit by itself. Exact slip
and shear witnesses realize this crossing only in restricted nonsmooth-data
classes. The general scenario-matching bridge remains open.

**Physical reasoning after mathematics.** Euler supplies comparison evidence.
The Navier--Stokes ontology receives only facts proved through the
viscosity-generated whole-record difference. The smooth-side bridge requires
uniform control of that coupled record. The nonsmooth-side bridge requires the
same record to prove an inviscid-only Part or Field incompatibility. Pattern
resemblance, removal of a term, or Euler nonsmoothness alone carries no
Navier--Stokes premise weight.

**Hierarchy result.** The displayed difference identities are
**hierarchy-verified and independently validated** refinements under F1.2,
F1.3, F4.1, F5.1, F5.3, F6.3, and F7.3. They add exact causal detail to the
representation-versus-model boundary. The compact intermediate-\(\nu\) band is
a strict reduction of the first comparison theorem, not a Gold closure. The
general comparison-to-exit statement remains an open Silver bridge until it
derives the named Part or Field failure. None of these comparison routes has
canonical premise weight yet.

### The aligned amplifier is a whole-field pressure--strain evolution

On \(|\omega|>0\), let

\[
\xi=\frac{\omega}{|\omega|},
\qquad
\alpha=\xi\cdot S\xi,
\qquad
b=(I-\xi\otimes\xi)S\xi.
\]

[Cycle 008](theorem-construction/codex-goal-ontology-cycle-008-vorticity-alignment-pressure-geometry-20260711.md)
derives the exact material law

\[
D_t\alpha
=|b|^2-\alpha^2
+\frac{\mathcal Q}{3}
-\xi\cdot(\nabla^2p)^\circ\xi
+\nu R_\alpha,
\qquad
\mathcal Q=|S|^2-\frac12|\omega|^2.
\]

Here \(|b|^2\) is the strain-eigenvalue variance sampled by the vorticity
direction. At exact eigen-alignment it vanishes, and the direct local
self-term is \(-\alpha^2\). The future aligned rate is jointly set by the
pressure-source trace, the nonlocal traceless pressure curvature, viscosity,
and any renewed relative frame turning.

On decaying \(\mathbb R^3\),
[cycle 009](theorem-construction/codex-goal-ontology-cycle-009-pressure-hessian-whole-field-quadrupole-20260711.md)
identifies the trace-free directional pressure term. For a unit direction
\(e\),

\[
e\cdot\nabla^2p(0)e
=-\frac13\mathcal Q(0)
+\frac1{2\pi}
\lim_{\substack{\varepsilon\downarrow0\\R\uparrow\infty}}
\int_\varepsilon^R
\left[
\int_{S^2}\mathcal Q(r\theta)P_2(e\cdot\theta)\,d\theta
\right]\frac{dr}{r}.
\]

The kernel samples anisotropic source at every physical distance. The global
identity \(\int\mathcal Q=0\) forces strain-dominated and
vorticity-dominated source regions to coexist when \(\mathcal Q\ne0\), while
removing only the total spatial monopole. It supplies no sign for the
directional quadrupole.

**Physical return.** Persistent alignment is not owned by strain alone.
Pressure is the simultaneous whole-field incompressibility response: its local
trace and nonlocal anisotropic curvature act in the same material equation.
Off-diagonal frame turning, co-diagonal pressure curvature, and viscous
direction change are distinct effects of that one coupled history.

**Hierarchy result.** Cycle 008 is a **hierarchy-verified causal refinement**
of F2.1, F4.1, F7.2, and F7.3. Cycle 009 is its
**hierarchy-verified provenance annotation**, not a new fact ID. Together they
exclude autonomous strain-only stretching, pressure lag, trace-only pressure
signs, restricted-Euler substitution, and off-diagonal turning as an
exhaustive pressure mechanism. They prove the geometry of one surviving
terminal coordinate and no a priori bound on it.

### Terminal coherence loss and the material-custody boundary

The source-verified Constantin--Fefferman and Beirão da Veiga--Berselli
criteria act on sufficiently near pairs whose two vorticity magnitudes exceed
a fixed threshold. Either of the conditions

\[
|\sin\theta(x,x+z,t)|
\le \frac{|z|}{\rho(t)},
\qquad
\rho^{-1}\in L^2_t,
\]

or

\[
|\sin\theta(x,x+z,t)|
\le C|z|^{1/2}
\]

at its exact stated scope forces regularity on \(\mathbb R^3\). The sine reads
the vorticity axis rather than an oriented arrow, so parallel and antiparallel
organization both deplete the singular stretching contraction.

[Cycle 010](theorem-construction/codex-goal-ontology-cycle-010-vorticity-direction-coherence-terminal-loss-20260711.md)
therefore supplies a terminal exclusion: a finite singular history must escape
every applicable scale-critical high-vorticity line-coherence criterion. The
escape can be coefficient-norm divergence or violating near-pair sequences;
it does not imply global directional randomization.

This spatial theorem still does not create a persistent material owner for
the aligned envelope. With

\[
f(a,t)
=\left[\alpha(X(a,t),t)\right]_+,
\qquad
\mathcal A(t)=\operatorname*{ess\,sup}_a f(a,t),
\]

one only has

\[
\sup_a\int_s^t f(a,\tau)\,d\tau
\le
\int_s^t\mathcal A(\tau)\,d\tau.
\]

There is no reverse inequality. Disjoint smooth pulses in label and time can
make the right side infinite while every fixed label accumulates finite
action. This is a logical countermodel, not an asserted Navier--Stokes
history.

The exact ABC solution supplies the fluid-side custody warning: the origin is
a stationary Eulerian perfect-alignment site with
\(\alpha(0,t)=e^{-\nu t}\), while
\(u(0,t)=e^{-\nu t}(1,1,1)\ne0\). Different material labels pass through the
site. Eulerian location, maximizing selector, and material participant cannot
be identified without a theorem.

**Hierarchy result.** Cycle 010 is a **hierarchy-verified classical theorem
extension** under F4.1/F6.1/F7.2. The integral-versus-supremum inequality and
ABC witness install a **custody boundary**, not a new physical fact ID:
divergent \(\mathcal A\) proves repeated high alignment somewhere, while
persistent same-label alignment remains open. None of these statements closes
Gold or lands Silver.

### Viscosity supplies a finite direction-disorder budget below the critical scale

**Physical reasoning before mathematics.** A finite singular history cannot
retain a known sufficient high-vorticity coherence criterion through its
terminal time. Since viscosity diffuses the vorticity vector, direction
variation changes its magnitude and its direction inside the same participant.

**Exact mathematical test.** On \(\rho=|\omega|>0\), with
\(\xi=\omega/\rho\) and \(\alpha=\xi\cdot S\xi\),

\[
(D_t-\nu\Delta)\rho
=\alpha\rho-\nu\rho|\nabla\xi|^2,
\]

and

\[
|\nabla\omega|^2
=|\nabla\rho|^2+\rho^2|\nabla\xi|^2.
\]

If

\[
G_\nu(t)
=\operatorname*{ess\,sup}_{\rho>0}
\left[\alpha-\nu|\nabla\xi|^2\right]_+,
\]

then the maximum principle gives

\[
\|\omega(t)\|_\infty
\le
\|\omega_0\|_\infty
\exp\left(\int_0^tG_\nu(s)\,ds\right).
\]

Hence a finite singular history must satisfy

\[
\int_0^{T_*}G_\nu(t)\,dt=\infty.
\]

There is also a finite lower-weight global budget. If
\(E_0=\frac12\|u_0\|_2^2\) and \(\omega_0\in L^1\), then

\[
\|\omega(t)\|_1
+\nu\int_0^t\!\!\int
\rho|\nabla\xi|^2dx\,ds
\le
\|\omega_0\|_1+\frac{E_0}{\sqrt2\,\nu}.
\]

Thus direction variation is a real viscous sink for vorticity magnitude and a
positive part of global enstrophy dissipation. The accompanying
\(\nu\Delta\rho\) term retains both local signs away from maxima, so the full
pointwise viscous magnitude response is not sign-definite. The direction sink
does not automatically close the coherence branch. A qualifying pair can fail
the criterion on a shrinking-capacity set with vanishing global gradient cost.
Under exact fixed-\(\nu\) Navier--Stokes scaling, critical height is invariant;
the finite \(\rho\)-weighted direction budget and kinetic-energy dissipation
over a heat interval scale like \(\ell\), while the
\(\rho^2\)-weighted polar enstrophy dissipation scales like \(\ell^{-1}\).
The finite direction resource is subcritical for a fixed record toll, while
the critical-strength direction cost has no a priori terminal bound.

**Physical reasoning after mathematics.** Viscosity opposes direction disorder
and supplies a genuine finite \(L^1\)-vorticity direction budget. Positive
aligned stretching can occur in a locally constant-direction affine core,
while an exact shear can undergo viscous direction turning with no stretching.
A Gold conversion still needs criterion failure to have positive critical-
scale capacity, remain attached to the same record event and material carrier,
and acquire the inverse-scale normalization needed for a fixed toll without
destroying the finite no-recount budget.

**Hierarchy result.** [Cycle 011](theorem-construction/codex-goal-ontology-cycle-011-coherence-loss-viscous-direction-cost-20260711.md)
is an **independently validated exact causal refinement and critical-scaling
obstruction** under F4.1/F5.1/F6.1/F7.2. It adds the finite
\(\rho\)-weighted direction-disorder budget as a derived hierarchy consequence
and earns no new constitutive fact ID. It proves no quantitative original-data
bound implying SHR.7 and gives Silver no Part or Field failure. Its terminal
refinement is that a finite singular history must accumulate infinite aligned
stretching after its own local viscous direction sink is deducted.

### Critical-height transfer is anisotropic pair compression with a viscous surcharge

**Physical reasoning before mathematics.** Every contribution to the critical
height comes from a velocity difference across two points of the same field.
The longitudinal contraction of that pair is the average strain encountered
along its connecting segment. The production mechanism is therefore a
relation between local strain and the whole field's anisotropic distribution
of increment-bearing segments. For Navier--Stokes, an actual height record
must also survive the direct critical dissipation generated by positive
viscosity.

**Exact mathematical test.** On the smooth decaying \(\mathbb R^3\) surface,
define

\[
\mathsf T_u(z)
=\frac1{\pi^2}\int_0^1\int_{\mathbb R^3}
\frac{|u(z+(1-\theta)r)-u(z-\theta r)|^2}{|r|^4}
\frac{r\otimes r}{|r|^2}\,dr\,d\theta.
\]

Then \(\mathsf T_u\) is symmetric positive semidefinite,

\[
\int\operatorname{tr}\mathsf T_u=4\mathcal H_{1/2},
\qquad
P_H=-\int S:\mathsf T_u=-\int S:\mathsf T_u^\circ.
\]

Thus the isotropic pair distribution cancels by incompressibility; only its
orientation relative to the strain eigenframe drives critical production.
With

\[
d\mu=\frac{\operatorname{tr}\mathsf T_u}{4H}\,dx,
\qquad
A=\frac{\mathsf T_u}{\operatorname{tr}\mathsf T_u},
\]

and

\[
c_H=\int[-S:A]_+d\mu,
\qquad
e_H=\int[S:A]_+d\mu,
\]

the full positive-viscosity balance is

\[
(\log H)'=4(c_H-e_H)-\nu\frac{\|\Lambda^{3/2}u\|_2^2}{H}.
\]

Every height doubling therefore obeys the exact record law

\[
\int_a^b c_Hdt
=\frac14\log2
+\int_a^b e_Hdt
+\frac\nu4\int_a^b
\frac{\|\Lambda^{3/2}u\|_2^2}{H}\,dt.
\]

The last term is the Navier--Stokes viscous surcharge. It and both orientation
clocks are scale critical. The corresponding Euler balance lacks the
surcharge, while its strain and pair distribution also belong to a different
history. Euler geometry has no Navier--Stokes ontology weight until a
same-datum comparison theorem controls those differences.

**Physical reasoning after mathematics.** Critical growth is net same-field
pair compression that survives simultaneous pair expansion and viscous
critical dissipation. Pressure has no direct work in this complete global
pairing, while its slaved nonlocal response changes the later strain and pair
geometry. The tensor is a derived distribution of the one participant rather
than an independently evolving stress.

**Hierarchy result.** [Cycle 012](theorem-construction/codex-goal-ontology-cycle-012-critical-pair-orientation-strain-coupling-20260711.md)
is an **independently validated exact causal refinement** under F2.1/F5.1/F6.3/F7.1.
It globalizes Cycle 003's small-pair angular law to every separation and
identifies the exact positive-viscosity record surcharge. It earns no new
constitutive fact ID. The compressive clock is spatially rectified before
cancellation and has no finite original-data bound; its finiteness is
continuation-strength. SHR.7 and Silver's Part/Field burden remain open.

### Viscosity selects scale without a monotone critical-isotropization law

**Physical reasoning before mathematics.** The Laplacian is rotationally
isotropic, while the fluid field is generally anisotropic. Viscosity preserves
each Fourier wavevector direction and damps its amplitude at the rate
\(\nu|k|^2\). Directional weights therefore change whenever scale and
direction are correlated in the same field.

**Exact mathematical test.** On the normalized torus, let

\[
H=\frac12\sum_{k\ne0}|k||\widehat u_k|^2,
\qquad
\mathsf B_H
=\frac{\sum|k||\widehat u_k|^2\widehat k\otimes\widehat k}
{2H}.
\]

This positive trace-one tensor is the normalized angular part of the spatial
mean of Cycle 012's all-lattice-lift pair tensor:

\[
\overline{\mathsf T}_u=H(I+\mathsf B_H).
\]

Its exact viscous row is

\[
(\partial_t\mathsf B_H)_\nu
=-2\nu\operatorname{Cov}_w
\left(|k|^2,\widehat k\otimes\widehat k\right),
\qquad
w_k=|k||\widehat u_k|^2.
\]

The matrix covariance has no universal sign. At local pair-tensor level, the
same viscous response is

\[
(\partial_t\mathsf T_u)_\nu
=\nu\Delta\mathsf T_u-2\nu\mathsf G_u,
\qquad
\mathsf G_u\succeq0,
\qquad
\int\operatorname{tr}\mathsf G_u
=2\|\Lambda^{3/2}u\|_2^2.
\]

The complete evolution adds the signed transport--pressure row
\(\mathsf R_{u,p}\):

\[
\partial_t\mathsf T_u
=\mathsf R_{u,p}+\nu\Delta\mathsf T_u-2\nu\mathsf G_u,
\qquad
\int\operatorname{tr}\mathsf R_{u,p}=4P_H.
\]

Thus viscosity diffuses local pair mass and removes gradient-increment mass;
pressure-constrained transport supplies the remaining signed redistribution.
Normalization converts unequal directional loss into the sign-free covariance
above. For the exact pressure-free Navier--Stokes shear

\[
u=\left(ae^{-\nu m^2t}\sin(my)
+be^{-\nu n^2t}\sin(nz),0,0\right),
\qquad m<n,
\]

write

\[
\theta
=\frac{ma^2e^{-2\nu m^2t}}
{ma^2e^{-2\nu m^2t}+nb^2e^{-2\nu n^2t}}.
\]

Then

\[
\mathsf B_H
=\theta e_y\otimes e_y+(1-\theta)e_z\otimes e_z,
\qquad
\theta'=2\nu(n^2-m^2)\theta(1-\theta),
\]

and

\[
\frac d{dt}\left\|\mathsf B_H-\frac13I\right\|_F^2
=4\nu(n^2-m^2)\theta(1-\theta)(2\theta-1).
\]

The sign can be positive or negative. One exact history with \(m=1\),
\(n=2\), and \(a=b\) first becomes less anisotropic and then more anisotropic
while its critical height decreases throughout. A heat-decaying Beltrami wave
keeps its normalized anisotropic pair tensor fixed while viscosity dissipates
the height. By contrast, the critical-weighted mean squared frequency obeys
the definite pure-diffusion law

\[
\frac d{dt}\mathbb E_w[|k|^2]
=-2\nu\operatorname{Var}_w(|k|^2)\le0.
\]

**Physical reasoning after mathematics.** Viscosity selects smaller scales
monotonically under pure diffusion. Its angular response is the signed
scale--direction covariance of the anisotropic field. This does not conflict
with Cycle 011's viscous sink for spatial vorticity-direction disorder: the
spectral angular tensor and the physical vorticity direction are different
same-field coordinates.

**Hierarchy result.** [Cycle 013](theorem-construction/codex-goal-ontology-cycle-013-viscous-scale-direction-covariance-20260711.md)
is an **independently validated exact negative refinement** under F2.2/F3.3/F5.1/F7.1.
It blocks viscosity-only critical isotropization as a universal Gold
mechanism. It does not block a full VPI theorem controlling the relational
alignment between local pair geometry and compressive strain on dangerous
intervals. It earns no new constitutive fact ID and gives neither SHR.7 nor a
Silver Part/Field failure.

### Cycle 014 — viscosity changes both sides of critical production

**Generated question.** Does the full fixed-viscosity evolution of
\(-S:\mathsf T_u^\circ\) acquire a favorable sign once strain, pair geometry,
pressure, and viscosity are evolved together?

**Dependency chain.** Participation → Cycle 012 pair–strain contraction →
Cycle 013 pair-tensor evolution + exact strain evolution → full VPI
production derivative → exact same-solution sign tests.

For \(C=-S:\mathsf T_u\), the exact parabolic material law is

\[
\begin{aligned}
(D_t-\nu\Delta)C
={}&(S^2+W^2+\nabla^2p):\mathsf T_u
-S:\mathsf Q_u\\
&+2\nu\nabla S::\nabla\mathsf T_u
+2\nu S:\mathsf G_u.
\end{aligned}
\]

After complete-field integration,

\[
P_H'=Q_C+\nu Q_V^{P_H},
\qquad
Q_V^{P_H}
=2\int
\bigl(\nabla S::\nabla\mathsf T_u+S:\mathsf G_u\bigr)dx.
\]

Pressure acts through both the strain Hessian and the pressure-increment part
of the pair tensor. Viscosity acts through diffusion of both slots and the
positive pair-gradient sink. The sink becomes signed after contraction with
trace-free strain.

An exact two-scale globally smooth 2D3C family has \(P_H>0\) and
\(Q_V^{P_H}>0\), while its one-scale parent has \(P_H>0\) and
\(Q_V^{P_H}<0\). Both can be amplitude-set to satisfy \(H'>0\). Two further
exact globally smooth families realize the two signs of the complete
derivative \(P_H'\) while \(P_H>0\) and \(H'>0\). The instantaneous full-VPI
alignment law therefore has no coercive or monotone sign on dangerous growth
intervals.

The quantity historically called the Euler row is only the non-viscous
tangent coordinate evaluated at the current Navier–Stokes field. A theorem
about the same-datum Euler history reaches Navier–Stokes only through control
of the complete viscosity-forced difference history; no Euler trajectory fact
is imported as a Navier–Stokes ontology premise.

**Hierarchy result.** [Cycle 014](theorem-construction/codex-goal-ontology-cycle-014-full-vpi-critical-production-evolution-20260711.md)
is an **independently validated exact causal refinement and route
obstruction** under F2.1/F3.3/F5.1/F6.3/F7.1. It rules out pointwise
production monotonicity and a universal viscous brake. It supplies neither
SHR.7 nor a Silver Part/Field failure and earns no canonical fact ID.

### Cycle 015 — positive pair compression has a self-strain row and a live sign interface

**Generated question.** Can time propagation, viscous averaging, or finite
memory control the positive local pair–strain production after Cycle 014
rules out an instantaneous sign?

**Dependency chain.** Participation → Cycle 014 full local VPI equation →
forced advection–diffusion representation → positive-region Kato law → exact
smooth residence and sign countertests → critical-height record contact.

For Cycle 014's local production density \(C=-S:\mathsf T_u\), write

\[
(\partial_t+u\cdot\nabla-\nu\Delta)C
=S^2:\mathsf T_u+\mathcal R_C,
\]

where \(\mathcal R_C\) retains rotation, both nonlocal pressure roles, pair
transport, and the remaining viscous rows. The exact Duhamel and reversed-time
Brownian formulas are representations of this same forced equation. They
create no material ancestry and no hard finite-memory cutoff: the heat kernel
has an infinite temporal tail, while the source remains signed.

Positive semidefiniteness of the pair tensor gives

\[
(S:\mathsf T_u)^2
\le (S^2:\mathsf T_u)\operatorname{tr}\mathsf T_u.
\]

With \(J=\int C_+\) and \(\int\operatorname{tr}\mathsf T_u=4H\),

\[
\int_{\{C>0\}}S^2:\mathsf T_u\,dx
\ge\frac{J^2}{4H}.
\]

The exact distributional sign-interface law is

\[
(\partial_t+u\cdot\nabla-\nu\Delta)C_+
=\mathbf1_{\{C>0\}}
\bigl(S^2:\mathsf T_u+\mathcal R_C\bigr)
-\nu\mu_C,
\qquad
\mu_C\ge0.
\]

At a regular zero level,

\[
\mu_C=|\nabla C|\,\mathcal H^2\!\restriction_{\{C=0\}}.
\]

Thus positive pair compression has a positive quadratic self-strain row,
diffusion across its nodal interface, and a fully signed same-field remainder.
Exact smooth 2D3C participants make the complete residual dominate the
self-strain row in either integrated direction. The residual restricted to
the positive region remains open.

The exact heat-decaying ABC participant satisfies

\[
C(x,t)=e^{-3\nu t}C(x,0)
\]

with a nonempty positive set for every finite time. Viscosity therefore does
not erase positive local pair compression after a finite residence time. The
historical hard-memory and “no pre-banking” claims are false: \(r^2/\nu\) is a
characteristic exponential damping scale, not a hard horizon.

At every first higher critical-height record, with
\(M_0=\|u_0\|_2^2\),

\[
J\ge\frac{8\nu H^3}{M_0^2},
\qquad
\int_{\{C>0\}}S^2:\mathsf T_u\,dx
\ge\frac{16\nu^2H^5}{M_0^4}.
\]

Consequently

\[
\sup_{t<T_*}H(t)=\infty
\Longrightarrow
\int_0^{T_*}\int_{\{C>0\}}
[\mathcal F_C]_+\,dx\,dt=\infty.
\]

**Physical reasoning after mathematics.** A high record requires increasingly
large compressive pair–strain reaction inside the same viscous field. The
nonlocal pressure, rotation, transport, viscous reshaping, and sign-interface
rows can counter that reaction, while no hard heat horizon or material owner
makes their cumulative action finite.

**Hierarchy result.** [Cycle 015](theorem-construction/codex-goal-ontology-cycle-015-positive-pair-compression-source-interface-20260711.md)
is an **independently validated exact causal refinement and route
obstruction** under F2.1/F3.3/F5.1/F6.3/F7.1. Its pair–strain record lower
bound and full-source divergence are new necessary consequences. They give no
contact duration, original-data upper bound, Gold closure, Silver Part/Field
failure, or canonical fact ID.

### Cycle 016 — positive pair compression has three forced physical geometries

**Generated question.** What same-field geometry is already forced by the
negative rotational row in Cycle 015's positive pair-compression equation?

**Dependency chain.** Participation → Cycle 015 positive-region reaction →
exact \(W^2:\mathsf T_u\) row → pressure-source/vorticity-direction
trichotomy → exact record-contact alternatives → smooth same-participant
branch tests.

Write

\[
q_p=-\Delta p=|S|_F^2-\frac12|\omega|^2,
\qquad
\mathcal B_\omega
=-W^2:\mathsf T_u
=\frac14\left(
|\omega|^2\operatorname{tr}\mathsf T_u
-\omega\cdot\mathsf T_u\omega
\right)\ge0.
\]

On \(\{C=-S:\mathsf T_u>0\}\), put
\(\tau=\operatorname{tr}\mathsf T_u\),
\(\mathsf A=\mathsf T_u/\tau\), and \(c=C/\tau\). The exact sharp brake
lemma says that nonnegative vorticity stretching forces

\[
\mathcal B_\omega
\ge
\frac{C^2|\omega|^2}{8\tau|S|_F^2}.
\]

For a fixed quantitative record reading, partition the positive set into:

- \(E_p\): \(|\omega|^2\le|S|_F^2\);
- \(E_v\): \(|\omega|^2>|S|_F^2\) and
  \(n\cdot Sn\le-C/(2\tau)\);
- \(E_b\): the remaining positive region.

Then

\[
\tau q_p\ge\frac34\frac{C^2}{\tau}
\quad\text{on }E_p,
\]

\[
\tau[-\omega\cdot S\omega]
\ge\frac34\frac{C^3}{\tau^2}
\quad\text{on }E_v,
\]

and

\[
\mathcal B_\omega
>\frac1{32}\frac{C^2}{\tau}
\quad\text{on }E_b.
\]

Thus every positive local pair-compression event is quantitatively
pressure-source dominated, vorticity compressing, or rotationally braked at
these proof-coordinate thresholds. Positive \(q_p\) is only the local scalar
source of the nonlocal pressure equation; it supplies no pressure-Hessian
sign.

At every first higher critical-height record, one branch carries at least one
third of the positive \(C\)-mass. With \(M_0=\|u_0\|_2^2\), at least one of

\[
\int_{E_p}\tau q_p\,dx
\ge\frac43\frac{\nu^2H^5}{M_0^4},
\]

\[
\int_{E_v}\tau[-\omega\cdot S\omega]\,dx
\ge\frac89\frac{\nu^3H^7}{M_0^6},
\]

or

\[
\int_{E_b}\mathcal B_\omega\,dx
\ge\frac1{18}\frac{\nu^2H^5}{M_0^4}
\]

holds. These are alternatives, never three simultaneous conclusions.

Three exact points of the same globally smooth heat-decaying ABC participant
realize \(E_p\), \(E_v\), and \(E_b\) for every finite time. The branches are
therefore physical and nonterminal. Their thresholds and constants are proof
coordinates rather than canonical ontology constants.

**Physical reasoning after mathematics.** When vorticity is weak, positive
pair compression lies in a strain-dominated positive pressure-source region.
When vorticity is strong, the pair tensor either follows a vorticity direction
being compressed or its transverse mass produces a definite negative
rotational row. Nonlocal pressure, surrounding-field production, viscosity,
and spatial branch switching remain able to redistribute or cancel these
instantaneous relations.

**Hierarchy result.** [Cycle 016](theorem-construction/codex-goal-ontology-cycle-016-pressure-source-vorticity-compression-rotational-brake-20260711.md)
is an **independently validated exact instantaneous algebraic recombination** under
F2.1/F4.1/F6.1/F7.1 and Cycles 012–015. It adds a new necessary physical
trichotomy and record alternatives, with no dwell estimate, finite action,
Gold closure, Silver Part/Field failure, or canonical fact ID.

### Cycle 017 — finite pressure-source mass does not control the complete pressure response

**Generated question.** Does the full nonlocal pressure response constrain the
sign, dwell, or recurrence of Cycle 016's three regions strongly enough to
control high critical-height records?

**Dependency chain.** Participation → local Poisson source and whole-field
pressure → Cycle 016 pressure-source branch → both pressure slots in the
Cycle 014 pair–strain law → finite source measure and exact branch-transition
tests → SHR.7.

Let \(\mathsf Q_p\) be the pressure-increment part of the Cycle 013 pair-tensor
evolution and write

\[
\mathsf H_p^\circ
=\nabla^2p+\frac{q_p}{3}I,
\qquad
\mathsf T^\circ
=\mathsf T-\frac{\tau}{3}I.
\]

The complete pressure contribution to the local pair–strain production law is

\[
\Pi_p
=-\frac{\tau q_p}{3}
+\mathsf H_p^\circ:\mathsf T^\circ
-S:\mathsf Q_p^\circ.
\]

The first term is the isotropic response to the local scalar source. The last
two terms are the trace-free pressure curvature and pressure-gradient-increment
change of the pair tensor made by the same whole field. The complete-field
matrix mean satisfies

\[
\int\mathsf Q_p\,dx=0,
\]

while \(\int S:\mathsf Q_p\) need not vanish.

On Cycle 016's proof-coordinate set \(E_p\), the isotropic pressure row is
negative and the record alternative sharpens algebraically into a large
negative complete pressure row or a comparably large positive nonlocal
same-pressure compensation. This is a same-time alternative with no
duration. Its threshold, one-third pigeonhole, and numerical constants remain
Cycle 016 proof coordinates rather than durable ontology facts.

Energy gives the invariant raw-source bounds

\[
\int_0^T\!\int(q_p)_+\,dx\,dt
\le\frac{M_0}{4\nu},
\qquad
\int_0^T\|q_p(t)\|_{L^1}\,dt
\le\frac{M_0}{2\nu}.
\]

Consequently the trace-free pressure Hessian obeys the spacetime weak-type
bound

\[
\left|
\left\{(x,t)\in\Omega\times(0,T):
|\mathsf H_p^\circ|>\lambda\right\}
\right|
\le\frac{C_{\rm CZ}M_0}{2\nu\lambda}.
\]

This weak source control does not bound its scale-critical contraction against
\(\mathsf T^\circ\) or the pressure-increment row. On \(\mathbb R^3\), or
between correspondingly rescaled domains, the source spacetime \(L^1\) mass
scales like \(\lambda^{-1}\), while the spacetime pressure-compensation action
scales like \(\lambda^2\).

The source and the internal Cycle 016 pressure/non-pressure selector have exact
signed fixed-viscosity equations. In particular,

\[
\begin{aligned}
(D_t-\nu\Delta)q_p
={}&-2\operatorname{tr}(S^3)
-\frac32\omega\cdot S\omega
-2S:\mathsf H_p^\circ\\
&-2\nu|\nabla S|_F^2
+\nu|\nabla\omega|^2.
\end{aligned}
\]

Inside \(\{C>0\}\), the internal boundary
\(|S|^2-|\omega|^2=0\) has the same signed structure, with coefficient
\(-5/2\) on \(\omega\cdot S\omega\) and coefficient \(+2\nu\) on
\(|\nabla\omega|^2\). The other boundary of \(E_p\) is the Cycle 015 nodal
face \(C=0\).

Two exact heat-eigenflow Navier–Stokes histories give opposite signs of the
complete integrated pressure row for every finite time. An exact 2D3C
cellular participant carries the planar projection of one material label
through strict \(E_p\), \(E_b\), and \(C\le0\) regions on every circuit and
permits arbitrarily many circuits across its datum family. A small-amplitude
heat-decaying ABC participant can keep one material label inside any chosen
strict branch for every finite time. These exact pressure-coupled VPI histories
rule out a universal favorable pressure sign, forced finite upper dwell,
datum-independent recurrence cap across exit and re-entry, or global acyclic
branch order.

**Physical reasoning after mathematics.** The local positive pressure source
forces a real isotropic counter-row, and its raw spacetime mass is finite. The
same pressure can still concentrate its trace-free curvature and
pressure-increment geometry on the anisotropic pair field. Exact smooth
participants realize both pressure signs, persistent branch membership, and
repeated branch passage. The physical obstruction is the co-concentration and
material-time correlation of those same-pressure rows, rather than unlimited
scalar source mass.

**Hierarchy result.** [Cycle 017](theorem-construction/codex-goal-ontology-cycle-017-full-pressure-compensation-source-budget-branch-recurrence-20260711.md)
is an **independently validated exact component-identity refinement and route
obstruction** under F1.2/F4.1/F5.1/F6.2/F7.3 and Cycles 008–016. Its finite
source budget, complete dual-slot pressure formula, signed selector evolution,
and smooth sign/dwell/recurrence counterfamilies are new at their stated
scopes. They give no pressure-compensation action bound, Gold closure, Silver
Part/Field failure, or canonical fact ID.

### Cycle 018 — strong pressure curvature is still multiplied and internally recombined

**Generated question.** Does compensated incompressibility strengthen the
pressure budget enough to control Cycle 017's complete pressure action?

**Dependency chain.** Participation → div–curl structure of the pressure
source → strong Hardy/pressure-curvature control → complete pressure detector
and exact fixed-energy counterfamily → convective–pressure recombination →
SHR.7.

For each component, \(\partial_j u\) is divergence free and \(\nabla u_j\)
is curl free. Hence

\[
q_p
=\partial_i u_j\,\partial_j u_i
=\sum_j(\partial_j u)\cdot\nabla u_j
\]

is a compensated div–curl quantity. On \(\mathbb R^3\), and in the periodic
mean-zero analogue on \(\mathbb T^3\),

\[
\|q_p(t)\|_{\mathcal H^1}
+\|\mathsf H_p^\circ(t)\|_{L^1}
\le C_\Omega\|\nabla u(t)\|_2^2.
\]

Therefore

\[
\int_0^T\|\mathsf H_p^\circ(t)\|_{L^1}dt
\le C_\Omega\frac{M_0}{2\nu}.
\]

This strong spacetime \(L^1\) pressure-curvature theorem is already installed
at TFE2748B.193–TFE2748B.197. It strictly sharpens the direct weak-type
estimate displayed in Cycle 017.

The complete two-slot pressure action can be written as one Hardy–BMO pairing

\[
\int\chi\Pi_p\,dx
=\int q_p\,\mathcal B_{u,\chi}\,dx,
\]

where \(\mathcal B_{u,\chi}\) is the pressure adjoint of the pair tensor,
pressure-increment operator, strain, and selector together. Consequently

\[
\left|\int\chi\Pi_p\,dx\right|
\le C\|\nabla u\|_2^2
\|\mathcal B_{u,\chi}\|_{\mathrm{BMO}}.
\]

This is an exact correlation identity. No installed theorem controls the
complete detector, and a sharp branch selector carries its own interface
defect.

An exact family on one fixed normalized torus shows why the strong curvature
bound is insufficient. For

\[
U_n=
\left(
0,
-n\cos(y-nz)+n\cos(y+nz),
-\cos(y-nz)-\cos(y+nz)
\right),
\]

let

\[
u_n(t)=A_ne^{-\nu(1+n^2)t}U_n,
\qquad
A_n^2=\frac{M}{1+n^2}.
\]

Every member is an exact fixed-\(\nu\) Navier–Stokes history with the same
kinetic energy \(M\). For \(n\ge3\), both pressure slots and their complete
sum have positive spacetime action, while

\[
\int_0^\infty\fint|\mathsf H_{p_n}^\circ|\,dx\,dt
\asymp\frac{M}{\nu n^2},
\qquad
\int_0^\infty\fint\Pi_p[u_n]\,dx\,dt
\asymp\frac{M^2}{\nu n}.
\]

The ratio diverges linearly in \(n\). Strong pressure-curvature mass therefore
cannot linearly fund either pressure slot, even with surface, viscosity, and
kinetic energy fixed. The missing multiplier is visible in the critical pair
mass,

\[
\fint\operatorname{tr}\mathsf T_{u_n}(0)\,dx
=2M\sqrt{1+n^2}.
\]

The same family supplies the participation correction. Its nonlinear
acceleration is a gradient and its pressure cancels that gradient exactly:

\[
(u_n\cdot\nabla)u_n+\nabla p_n=0.
\]

Thus the separated pressure action is positive while the Leray-projected
nonlinear direction and the global critical nonlinear transfer are zero. The
convective contribution is exactly equal and opposite to the pressure
contribution. A separated positive pressure action is therefore an internal
coordinate of the one projection law and does not independently imply the
Gold conclusion.

**Physical reasoning after mathematics.** Incompressibility makes pressure
curvature strongly integrable through div–curl cancellation. Anisotropic
critical pair geometry can still multiply that finite curvature, and the
convective row can cancel the resulting pressure action before it changes the
velocity. The causal object is the residual after transport, pressure,
incompressibility, and viscosity are recombined on the same field.

**Hierarchy result.** [Cycle 018](theorem-construction/codex-goal-ontology-cycle-018-hardy-pressure-curvature-anisotropic-multiplier-vpi-recombination-20260711.md)
is an **independently validated exact causal refinement and route correction**
under F1.2/F3.1/F5.1/F6.3/F7.3 and Cycles 012–017. It upgrades pressure
curvature from weak to strong spacetime control, proves an exact fixed-energy
obstruction to a linear curvature-action budget, and proves that separated
pressure action is not an independently sufficient Gold mechanism. It gives
no bound on the recombined VPI residual, no Gold closure, no Silver Part/Field
failure, and no canonical fact ID.

**Hierarchy result.** BKM is **canonical**; the \(\mathbb R^3\) endpoint is
**hierarchy-verified source material** and remains a canonical candidate until
its own promotion record exists. The physical mechanism that controls the
signed critical height remains **open**. Cycles 006--018 now force any
unbounded-height history through unbounded enstrophy, net-positive
three-dimensional stretching, infinite aligned-clock action, and failure to
retain a known high-vorticity coherence criterion, then expose the exact
pressure--strain equation, polar viscous costs, and anisotropic pair-compression
law governing that action. They also prove that raw viscosity supplies no
monotone critical-isotropization shortcut, hard heat-memory horizon, or finite
positive-sign residence law. Positive pair compression must now enter a
pressure-source, vorticity-compression, or rotational-brake region, while the
field may switch among them. The raw pressure source has finite spacetime
Hardy mass and its trace-free Hessian has a strong spacetime \(L^1\) bound,
while neither controls the critical correlation with the pair tensor or
pressure-increment row. A positive separated pressure action may also cancel
exactly against convection, so only the recombined VPI residual can carry Gold
weight. The hierarchy still does not bound the relational alignment, branch
dwell, or recombined positive-source action, and it does not convert either
the finite subcritical direction budget or the critical compressive clock
into a finite original-history resource. A concrete same-solution Part/Field
failure for Silver also remains open.

## 7. Participation versus class membership

**Question.** Does one datum-anchored participant automatically satisfy the
CM class predicate?

**Chain.** Participation → same-solution CM admission → a concrete Part or
Field failure, or the pass-side membership readout → `Member(Q)` or
`Exit(Q)`.

Participation is physical: it fixes the object whose stress, pressure,
viscosity, and incompressibility rows must remain coupled. `Member(Q)` is a
downstream proof predicate. Participation is required before a terminal
obstruction can be typed as a same-solution Part/Field witness; it does not by
itself certify membership. A failure capable of nonsmoothness becomes class
exit only after CM-test admission and a derived Part or Field failure.

**Hierarchy result.** **Proof grammar.** This distinction must guide every
CM-facing argument and must never be promoted into `ontology.md` as a physical
law.

## Coherent dependency tree

Participation: one datum, one declared surface, one coupled history.

- Identity and surface establish the referent.
  - Material persistence identifies what continues through that history.
  - Dependency and part–whole relations keep every local or spectral view
    attached to its whole-field rows.
    - Representation/model status distinguishes a coordinate from a new
      equation.
    - Lawful transformations distinguish equation symmetries, surface changes,
      datum changes, gauges, and readouts.
- Possible and terminal histories ask what the same object may do through time
  and what a terminal history must accumulate.
  - Participation then enters the separate CM proof grammar, where membership
    or exit is decided by the stated test rather than by ontology vocabulary.

## First autonomous use: the live Gold/Silver object

The July 10 supersession block in `target-operating-contract.yaml` demotes
`SignedCriticalHeightSignPersistenceOrPeakBound.A` as a theorem-grade wrapper.
The live Gold object is the uniform critical-height bound SHR.7 itself. Silver
remains the same-object CM contrapositive through Part/Field.

Running the hierarchy on that object gives seven answers.

1. **Identity and surface.** The critical height is a global readout of one
   smooth datum-anchored history. Pressure has zero direct work in this global
   constant-coefficient pairing, while its slaved response still changes the
   later strain and transport geometry. A localized packet statement is not
   the global bound.
2. **Material persistence.** A material carrier used to explain the sign or
   duration of height growth must be the image of labels under this history's
   flow. Naming a selected packet does not prove that ancestry.
3. **Part-whole.** Every localized record inherits pressure-collar,
   commutator, viscosity, and flux terms. A scalar cut cannot become an
   autonomous source, payer, or owner of the global height.
4. **Representation versus model.** Storage, capacity, matrix, and ledger
   objects remain coordinates or support until an exact same-history theorem
   bridges them to SHR.7. Closure inside the coordinate system does not bound
   the physical height.
5. **Lawful transformations.** A proposed bound must respect its exact
   translation, orthogonal, scaling, gauge, datum, and surface behavior. A
   sign-definite mechanism may use the time orientation supplied by positive
   viscosity and material history; a time-even magnitude or dissipation amount
   cannot supply that sign by itself.
6. **Possible histories.** Exact planar histories have positive critical
   production with zero vortex stretching, and exact Beltrami histories have
   positive local aligned stretch with decreasing critical height. Finite
   growth and local alignment therefore carry no terminal weight by
   themselves. Unbounded height is stricter: it forces unbounded enstrophy,
   infinite positive global stretching action, an infinite aligned clock, and
   infinite spacetime action in the two-extension/one-compression strain
   sector. The ABC history proves that the last two actions need not be
   spatially co-located: Betchov locks their global signed accounts without
   assigning one local owner. The aligned-rate equation then places the
   surviving history inside one strain--pressure--viscosity geometry whose
   trace-free pressure term is nonlocal and unsigned. The all-separation tensor
   identity places critical production inside the related anisotropic
   pair-compression geometry. Every actual height doubling requires
   compressive action sufficient to pay expansion, a fixed logarithmic rise,
   and the scale-critical viscous surcharge. Cycle 016 further forces that
   positive compression into a pressure-source, vorticity-compression, or
   rotational-brake region. Cycle 017 then shows that the one pressure response
   acts through its isotropic trace, whole-field trace-free curvature, and
   pressure-increment pair redistribution at once. Its raw source has finite
   spacetime mass, while exact smooth histories still realize both signs of the
   complete integrated pressure action, repeated exit and re-entry between
   branch regions, and lifetime branch residence. Cycle 018 upgrades pressure
   curvature to strong spacetime \(L^1\), then proves on a fixed-energy fixed-
   torus family that neither pressure slot is linearly controlled by that
   curvature mass. On the same family, positive pressure action cancels exactly
   against convection and the projected nonlinear transfer is zero. SHR.7
   therefore needs a bound on the recombined same-field residual or another
   exact mechanism giving the uniform height bound.
7. **Membership.** Failure of a Gold estimate is not a Silver exit. Silver use
   starts after the same physical history is admitted to the CM test and a
   concrete Part or Field failure is derived.

The hierarchy now generates three sharper causal questions for continued use:

- What same-trajectory law can bound the cumulative positive action of
  \(-S:\mathsf T_u^\circ\) or its recombined VPI source, now that Cycle 015
  refutes finite sign residence and a hard heat-memory horizon?
- Can the recombined Cycle 014 convective–pressure row and its two-slot viscous
  response be controlled on actual high-record intervals after separated
  pressure action and its exact convective counter-row have been canceled?
- Can the finite \(\rho\)-weighted direction-disorder budget constrain the
  same instantaneous pair–strain field at the inverse scale required by the
  critical record law without selecting a persistent carrier or owner?

The historical signed-net/rectified-clock and signed-height owner-and-charge
formulations are coordinate programs, not live ontology consequences. Their
exact whole-field identities survive as readouts; their lineage, ownership,
bill/service, and finite-reserve layers are withdrawn by participation. The
one generated owner-free question is whether the recombined VPI source on \(\{C>0\}\)
and its nodal-interface defect can be controlled strongly enough to preclude
unbounded critical-height records. The live theorem target remains SHR.7 or a
genuinely smaller quantitative theorem implying it.

The direct authority surfaces contain no closed theorem answering those three
questions. They are the unresolved causal surfaces produced by using the
hierarchy on SHR.7.

## Promotion ledger

The hierarchy admits only the scoped survivors above. The F2 bundle now holds
a confirmed independent validation and awaits only its explicit promotion
turn; the smooth-history F1 extension, the F1.3 persistence refinement, and
the \(\mathbb R^3\) endpoint remain candidates for their own candidate,
validation, and promotion transactions.
The material-vorticity cycle is a hierarchy-verified F4.1 refinement with
F5.3 as its integrated reading, and the pressure-Hessian cycle is a
hierarchy-verified F7.3 refinement with an F4.1 cross-reference. Both now
contain physical reasoning before the mathematical test and a physical return
after it; neither has entered the canonical fact store.
Ontology goal cycle 001 is a hierarchy-verified semantic and causal refinement
joining F2.1, F4.1, F5.3, and F6.1. It distinguishes source-free signed vector
vorticity from genuine enstrophy production, corrects one superseded draft
sign, and proves that the signed account supplies no Gold critical-height
control. It has not entered the canonical fact store or feedback ledger.
Ontology goal cycle 002 is a hierarchy-verified causal/provenance refinement
joining material deformation, viscous pulled-back vorticity, and the global
critical-height readout through an exact all-label-pair formula. It proves that
pressure cancellation and viscous sign occur only after the full pair sum and
that localized parts do not own additive height. It adds no canonical fact ID
and has not entered the feedback ledger.
Ontology goal cycle 003 proves the small-pair anisotropic angular law and its
spin-robust positive-current floor. It is a candidate negative refinement of
F6.3 and F7.1 with no new fact ID: local positive strain self-amplification
cannot be gross-current silent, while persistence, all-scale passage, and
finite Gold storage remain open. It has not entered the feedback ledger.
Ontology goal cycle 004 proves that strict viscous energy loss permits
arbitrarily many finite material-pair contraction–expansion circuits across
exact smooth positive-viscosity participants, while every fixed member of the
family has a finite viscous material clock and strictly decreasing critical
height. It is a candidate negative refinement under F1.3/F5.1 with no new fact
ID and has not entered the feedback ledger.
Ontology goal cycle 005 proves on one fixed torus that equal kinetic energy and
equal total viscous loss do not uniformly bound pointwise accumulated material
strain or deformation. Its exact multiscale shears grow like
\(\sqrt{\log N}\), while every positive transverse Sobolev regularity controls
the same clock and the counterfamily's initial critical height diverges. It is
a candidate negative refinement under F1.3/F3.2/F3.3/F5.1 with no new fact ID
and has not entered the feedback ledger.
Ontology goal cycle 006 proves in both directions that local
vorticity-aligned stretch, global enstrophy production, and nonlinear critical
transfer are distinct. It also proves the scale-critical aligned envelope and
its necessary divergence at finite breakdown. It is an independently
validated refinement of F4.1/F4.3/F6.1/F6.3 with no canonical premise weight.
Ontology goal cycle 007 proves the terminal bridge
\[
\sup H=\infty
\Longrightarrow
\sup Z=\infty
\Longrightarrow
\begin{cases}
\displaystyle\int[Q_\omega]_+=\infty,\\[3pt]
\displaystyle\int\mathcal A=\infty,
\end{cases}
\]
with the two terminal integrals understood as separate consequences of
unbounded enstrophy. Its exact interval envelope identifies stored enstrophy
as the obstruction to a fresh charge on every finite height event. It is an
independently validated F5.1/F6.1/F6.3/F7.1 refinement and gives no Gold bound.
Ontology goal cycle 008 gives the exact material evolution of
\(\alpha=\xi\cdot S\xi\), including relative eigenframe turning, local
square-rate lapse, pressure trace, nonlocal traceless pressure curvature, and
the explicit signed viscous residual. It is an independently validated causal
refinement of F2.1/F4.1/F7.2/F7.3 and gives no a priori estimate.
Ontology goal cycle 009 rewrites the trace-free \(\mathbb R^3\) pressure
curvature as the independently validated \(P_2\) quadrupole over logarithmic
physical distance. It is a provenance annotation under cycle 008 and F7.3,
not a new fact ID or promotion transaction. None of cycles 006--009 has
entered the canonical fact store or feedback ledger.
Ontology goal cycle 010 imports the exact high-vorticity near-pair
vorticity-direction coherence criteria at \(\mathbb R^3\) scope and takes
their terminal contrapositive. It is a hierarchy-verified classical theorem
extension, not a constitutive root fact and not new Gold progress. Its
Eulerian-envelope/material-label distinction is a custody boundary rather
than a promotion candidate. Cycle 010 has not entered the canonical fact store
or feedback ledger.
Ontology goal cycle 011 proves the polar-vorticity direction sink, its finite
\(L^1\)-weighted original-history budget, and the critical-scaling obstruction
to charging each height record from that budget. It is an independently
validated causal refinement under F4.1/F5.1/F6.1/F7.2, not a new constitutive
fact and not Gold progress. It has not entered the canonical fact store or
feedback ledger.
Ontology goal cycle 012 proves that the exact all-separation critical current
is strain contracted against a positive semidefinite anisotropic pair-
orientation tensor of the same field. Its full Navier--Stokes balance adds the
exact viscous surcharge to every height record. It is an independently
validated causal refinement under F2.1/F5.1/F6.3/F7.1, not a new constitutive
fact and not Gold progress. It has not entered the canonical fact store or
feedback ledger.
Ontology goal cycle 013 proves that pure viscosity changes the normalized
critical spectral-direction tensor through scale--direction covariance, whose
angular sign is free, while its critical-weighted scale moment decreases. An
exact pressure-free shear can become more or less spectrally anisotropic while
its critical height decreases. This is an independently validated negative
refinement under F2.2/F3.3/F5.1/F7.1, not a new constitutive fact and not Gold
progress. It has not entered the canonical fact store or feedback ledger.
Ontology goal cycle 014 derives the full fixed-viscosity material evolution
of the critical pair–strain contraction. It proves that viscosity changes
both the strain and pair slots and that its direct effect on positive critical
production has both signs, including during strict critical-height growth.
It also gives exact smooth histories with both signs of the complete
production derivative on growth intervals. This is an independently
validated causal refinement under F2.1/F3.3/F5.1/F6.3/F7.1 and an
instantaneous-route obstruction, not a new constitutive fact and not Gold
progress. It has not entered the canonical fact store or feedback ledger.
Ontology goal cycle 015 proves the positive-region pair–strain inequality,
the exact Kato nodal-interface law, a smooth lifetime-residence counterexample,
and the record-contact lower bound for the self-strain row. It also proves
that unbounded critical height requires infinite positive action of the full
recombined VPI source. This is an independently validated causal refinement
under F2.1/F3.3/F5.1/F6.3/F7.1 and a time-propagation route obstruction, not a
new constitutive fact and not Gold progress. It has not entered the canonical
fact store or feedback ledger.
Ontology goal cycle 016 proves an exact pointwise trichotomy and record-contact
alternatives: positive pair compression is quantitatively pressure-source
dominated, vorticity compressing, or rotationally braked. Exact points of one
globally smooth ABC participant realize all three regions. This is an
independently validated instantaneous algebraic recombination under F2.1/F4.1/F6.1/F7.1 and
Cycles 012–015, not a new constitutive fact and not Gold progress. It has not
entered the canonical fact store or feedback ledger.
Ontology goal cycle 017 proves the complete dual-slot pressure formula for the
pair–strain evolution, finite spacetime \(L^1\) mass of the raw pressure
source, the direct weak-\(L^1\) distribution estimate for its trace-free
curvature, and the signed evolution of the internal pressure/non-pressure
branch boundary. Exact smooth
fixed-viscosity histories realize both signs of the complete integrated
pressure action, arbitrarily many finite branch exit/re-entry circuits across
varying data, and lifetime branch residence. This is an independently
validated derived refinement under F1.2/F4.1/F5.1/F6.2/F7.3 and Cycles
008–016, not a new constitutive fact and not Gold progress. Cycle 016's branch
thresholds, pigeonhole constants, and brake-or-compensation record alternative
remain proof-coordinate route support rather than durable ontology facts.
Cycle 017 has not entered the canonical fact store or feedback ledger.
Ontology goal cycle 018 recovers the already installed div–curl Hardy theorem
and upgrades the trace-free pressure curvature to strong spacetime \(L^1\).
It proves an exact fixed-energy, fixed-torus Navier–Stokes family for which
both pressure slots are positive and their action-to-curvature-mass ratios
diverge. The same family has zero Leray-projected nonlinearity, so its positive
pressure action is canceled exactly by convection. This is an independently
validated component-identity refinement and route correction under
F1.2/F3.1/F5.1/F6.3/F7.3 and Cycles 012–017, not a new constitutive fact and
not Gold progress. It has not entered the canonical fact store or feedback
ledger.
The complete transformation inventory is demoted by its two exact omissions.
The uniform critical-height Gold bound and Silver's concrete Part/Field
failure stay open.
