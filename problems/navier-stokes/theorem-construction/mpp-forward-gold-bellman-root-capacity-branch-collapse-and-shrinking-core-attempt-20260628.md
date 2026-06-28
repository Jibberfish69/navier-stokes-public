---
theorem_id: forward-gold-bellman-root-capacity-branch-collapse-and-shrinking-core-attempt-20260628
status: bellman-capacity-collapsed-to-two-branch-wall-shrinking-core-noescape-open
created_at: 2026-06-28
problem: navier-stokes
route: forward-gold same-material selected-density / original root reserve
logical_landing_node: BoundedBelowSameMaterialServiceStorage.A
attacks_hinge:
  - RetainedActiveRawBellmanCapacity.A
  - SelectedGeneratorStorageCoercivity.A
  - RepeatedCorePositiveVariationRootBound.A
  - ScaleInvariantSelectedCapacityNoEscape.A
  - SelectedReserveAbsoluteContinuityExponentLift.A
source_surfaces:
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-thomas-dialogue-requirements-and-root-reserve-attempt-20260628.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-active-route-metric-bellman-capacity-pressure-test-20260627.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-selected-capacity-goodlambda-weight-tail-equivalence-20260626.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-two-branch-selected-capacity-closure-audit-20260626.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-extremal-bad-tree-two-branch-reduction-20260626.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-installed-support-axioms-half-tail-model-no-go-20260626.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-reused-core-raw-volume-bound-selected-exponent-gap-20260627.md
completion_truth: partial-not-mpp-closed
---

# Bellman root capacity collapse and shrinking-core attempt

The live hinge is still the original-data selected root reserve.  A Bellman
capacity closes the proof only when it is finite before selected readout and its
drop pays retained selected action; a descendant-tail Bellman is just the
theorem restated with a new name.

## 1. Proof-method pass

Proof program: forward Gold same-material continuation.

Target object: selected first-ratio/root action

\[
\mathcal A_{\rm sel}(P)=\sum_{Q\subset P}^{ret}A(Q).
\tag{1}
\]

Object role: live producer, not support or readout.

Logical skeleton: contradiction on a finite stopped tree, then exhaustion.

Mechanism: Bellman/corona capacity plus branch dichotomy.

The proposed Bellman theorem is

\[
\sum_{C\in ch(P)}A(C)
+\sum_{C\in ch(P)}B(C)
\le
B(P)+C\mu_{\rm raw}(\widehat P)+R_{\rm legal}(P)+Stop(P),
\tag{2}
\]

with

\[
B(P)\ge0,
\qquad
B(P_{\rm root})\le C_N(u_0)+R_{\rm legal}+Stop.
\tag{3}
\]

If `(2)` and `(3)` are proved from original history, the tree sum telescopes:

\[
\sum_{Q\subset P_{\rm root}}^{ret}A(Q)
\le
B(P_{\rm root})
+C\mu_{\rm raw}(\widehat P_{\rm root})
+R_{\rm legal}+Stop.
\tag{4}
\]

This is the paid algebraic line.  It is useful but purely formal until \(B\)
is constructed noncircularly.

## 2. Thomas-dialogue check on the Bellman claim

Question: is this the live object?

Yes, only if \(A(Q)\) is the retained selected first-ratio/root action and \(B\)
is parent-known before descendant selected readout.

Question: did it prove smoothness?

No.  `(4)` proves the selected tail only after `(2)` and `(3)` have been proved
from original data.  Those are the missing producer.

Question: did it only rename the hinge?

The canonical choice

\[
B_\ast(P)=\sum_{Q\subsetneq P}^{ret}A(Q)
\tag{5}
\]

makes `(2)` true by definition, but

\[
B_\ast(P_{\rm root})<\infty
\quad\Longleftrightarrow\quad
\mathcal A_{\rm sel}(P_{\rm root})<\infty .
\tag{6}
\]

So \(B_\ast\) is circular.  It is the selected tail, not a producer.

Question: what does the noncircular \(B\) have to see physically?

It must see selected retained work before it is scalarized: repeated reading of
one material core, or shrinking material cores that each carry unit selected
pressure-Hodge / critical-strain action while raw energy and raw capacity stay
summable.

Question: is this full packet or a scalar proxy?

The scalar proxy is raw stress-square mass or raw capacity.  The full packet is
pressure-viscosity-incompressibility-velocity participation with the material
metric, pressure-Hodge frame, collar/turnstile, and selected density all kept on
the same original history.  A Bellman built from the scalar proxy misses the
selected exponent gap.

## 3. Bellman collapse to the two branch wall

The monotone dual correction removes adversarial multiplier freedom.  Since
\(A(Q)\ge0\), the extremal monotone test is \(\alpha_Q\equiv1\).  Therefore
any Bellman certificate strong enough for all monotone tests must prove exactly

\[
\sum_{Q\in\mathcal T_{\rm sel}}A(Q)<\infty .
\tag{7}
\]

The installed tree dichotomy says failure of `(7)` has exactly two forms:

\[
\text{reused-core branch: }
\exists Q_0\supset Q_1\supset\cdots,\quad
\sum_kA(Q_k)=\infty,
\tag{8}
\]

or

\[
\text{shrinking-core branch: }
r_k\downarrow0,\quad A(Q_k)\simeq1,\quad
\sum_kA(Q_k)=\infty,
\tag{9}
\]

with every material ancestry line carrying finite action in the second case.

Thus a noncircular Bellman proof must produce one of the following:

\[
\int \mathcal V_{\rm core}(a)\,d\mathcal R_{\rm ancestry}^{sel}(a)
\le C_N(u_0)+R_{\rm legal},
\tag{10}
\]

or

\[
\text{no infinite shrinking selected unit bursts at summable raw capacity cost.}
\tag{11}
\]

If it does neither, the Bellman theorem is only an alias for the selected tail.

## 4. Mechanism attempted on shrinking-core escape

Try to prove `(11)` by raw pressure-Hodge/collar/turnstile capacity.

For a retained affine heat-scale core \(Q_r\),

\[
|\Sigma|\simeq r^{-2},\qquad |Q_r|\simeq r^5.
\tag{12}
\]

The raw \(L^2\) strain/capacity bill is radius-discounted:

\[
\int_{Q_r}|\Sigma|^2\simeq r.
\tag{13}
\]

The selected critical action is scale-invariant:

\[
A(Q_r)\simeq
\int_{Q_r}|\Sigma|^{5/2}\simeq1.
\tag{14}
\]

Hence a dyadic escaping family can satisfy

\[
\sum_k r_k<\infty,
\qquad
\sum_k A(Q_{r_k})=\infty.
\tag{15}
\]

Raw capacity cannot prove `(11)`.

Try compactness.  Rescale \(Q_{r_k}\) to unit heat scale.  The limit may be a
local affine pressure-strain packet

\[
u(y,s)=A(s)y,\qquad \operatorname{tr}A(s)=0,
\tag{16}
\]

with pressure choosing

\[
(u\cdot\nabla)u+\nabla p=0,\qquad \Delta u=0.
\tag{17}
\]

This packet is compatible with the local incompressible Navier-Stokes law.
Global matching and collar cost live in the boundary package and scale like
\(r_k\).  Compactness gives a legal local packet plus terminal/collar defect;
it does not contradict the branch.

Try tree counting.  Antichains are disjoint, but disjointness counts raw
capacity, not selected unit action.  The half-tail model

\[
\nu_\ell={2^{-\ell}\over \ell+1}
\tag{18}
\]

has finite raw mass and infinite selected first-ratio action:

\[
\sum_\ell\nu_\ell<\infty,\qquad
\sum_\ell2^\ell\nu_\ell=\infty .
\tag{19}
\]

So support-tree counting does not prove `(11)`.

## 5. Exact failed line and structural reason

The failed proof line is

\[
\sum_k A(Q_{r_k})
\le
C\sum_k R_{\rm raw}(Q_{r_k})+C_N(u_0)+R_{\rm legal}.
\tag{20}
\]

The structural reason for failure is the scale exponent gap:

\[
R_{\rm raw}(Q_r)\sim r,
\qquad
A(Q_r)\sim1.
\tag{21}
\]

This is not a bookkeeping failure.  It is the mathematical place where the
selected measure is singular relative to raw material capacity at the critical
half-tail.  Any proof that pays `(20)` from raw capacity has silently inserted
the missing strict good-lambda/exponent gain.

## 6. Sharper mechanism forced by failure

The shrinking-core branch needs a selected change-of-measure theorem:

\[
d\mathcal R_{\rm sel}
\ll
d\mathcal R_{\rm raw}
\quad\text{with enough reverse-Holder or square-function gain to make}\quad
\int |\Sigma|^{5/2}\,d\mathcal R_{\rm sel}<\infty.
\tag{22}
\]

Equivalently, the parent-known Bellman capacity must contain a genuine
same-material exponent lift:

\[
f_{\rm sel}\in RH_{1+\varepsilon}(d\mathcal R_{\rm raw})
\quad\text{or}\quad
S_{\rm mart}(f_{\rm sel})\in L^2(d\mathcal R_{\rm raw}),
\tag{23}
\]

constructed from original pressure-viscosity-incompressibility-velocity history
before child selected readout.

That is not a new theorem label.  It is the exact content that would make
Bellman capacity non-tautological in the shrinking-core branch.  In the current
alias ledger it is the same producer as
`SelectedGeneratorStorageCoercivity.A`, `OriginalHistoryHilbertBMOProducer.A`,
and `BoundedBelowSameMaterialServiceStorage.A`.

## 7. Truth ledger

Proved consumer: a finite noncircular Bellman drop `(2)` implies selected action
packing by telescoping.

Proved support: monotone dual extremal is the constant test; failure of the
constant test splits exhaustively into reused-core and shrinking-core branches.

Conditional relay: either branch theorem, or the selected exponent-lift
statement `(22)`/`(23)`, gives the selected tail and then the installed full
clock/H^s continuation relay.

Failed route: raw capacity, compactness/Liouville, and support-tree counting do
not close shrinking-core no-escape.

Equivalent hinge: Bellman capacity is noncircular only when it supplies selected
measure exponent lift/root reserve from original data.

Live producer: prove the selected exponent-lift/root-capacity drop from the
full same-material packet, or prove a specific noncircular obstruction showing
that the selected-density formalism cannot supply it.

Partial, not Gold closed.
