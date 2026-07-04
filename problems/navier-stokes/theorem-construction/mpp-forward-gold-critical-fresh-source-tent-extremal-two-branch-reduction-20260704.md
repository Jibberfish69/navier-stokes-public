---
theorem_id: forward-gold-critical-fresh-source-tent-extremal-two-branch-reduction-20260704
status: strict-reduction-not-proof
created: 2026-07-04
problem: navier-stokes
route: forward-gold original-history selected-critical fresh source
target_object: CriticalFreshSourceTentCarleson.A / FreshSourceCriticalScaleMemoryBound.A
role: >
  Translates the fresh-source tent/scale-memory producer into the same physical
  half-tail story and reduces failure to the reused-core or shrinking-core
  extremal branches.
source_refs:
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-retained-record-edge-paid-rotation-producer-collapse-20260704.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-stopped-source-carrier-to-critical-fresh-source-tent-carleson-20260627.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-selected-capacity-goodlambda-weight-tail-equivalence-20260626.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-extremal-bad-tree-two-branch-reduction-20260626.md
completion_truth: >-
  This note does not prove the fresh-source tent Carleson / scale-memory bound.
  It installs the nonduplicate physical reduction: once local payments and
  inherited parent pieces are removed, failure of the selected-critical fresh
  source bound for one retained original history must be realized either as
  repeated same-core material reuse or as shrinking selected-core escape. The two
  branch theorems remain open.
---

# Critical fresh source tent extremal two-branch reduction

## 1. Same physical packet before tent language

Start with one original smooth datum and one retained stopped root \(P\). The
physical object is the same fluid history under transport, pressure, viscosity,
incompressibility, scale, sign, alignment, and time. The selector and record
meters are readouts of that history before terminal positive bookkeeping.

Fresh source is not new physical mass. It is the part of the same retained
packet's stress production left after inherited parent pieces, spent projector
components, selector/reselection payment, silent-source normal form,
full-exchange refunds, entrance/legal losses, subheat, and recirculation have
already been removed.

The half-tail has a concrete physical meaning. At deeper selected scales the
same original history may emit fresh selected-critical increments \(\nu_\ell\)
that are small enough for the raw square-energy or Bessel meter,

\[
\sum_{\ell\ge 0}\nu_\ell<\infty,
\]

while still being too frequent or too thin for the selected critical record
meter,

\[
\sum_{\ell\ge 0}2^\ell \nu_\ell=\infty.
\]

The model tail

\[
\nu_\ell={2^{-\ell}\over \ell+1}
\]

is exactly this physical danger: ordinary dissipation sees finite total fresh
mass, but the selected record sees infinitely much critical scale action.

## 2. What the fresh-source bound asks

The stopped source-carrier reduction states the remaining producer as

```text
CriticalFreshSourceTentCarleson.A / FreshSourceCriticalScaleMemoryBound.A.
```

For every retained stopped root \(P\), the genuinely fresh original-history
visible/silent/exchange increments must satisfy the selected-critical tent bound
with the critical weight generated before terminal selection.

In scale-memory form, the same burden is

\[
\int a(r,t)
\left(
\int_0^r K(\ell,r)z_{fresh}(\ell,t){d\ell\over\ell}
\right)^2
{dr\over r}\,dt
\le
C_N(u_0)+R_{legal}.
\]

The physical producer has to be original-history scale memory, annular
stress/strain exchange, or bounded-below same-material storage. A norm defined
from the future selected tail would only rename the half-tail.

## 3. Extremal failure split

Assume the fresh-source tent/scale-memory bound fails after the local consumers
above have been removed. Then one retained original history has finite raw
fresh mass but infinite selected-critical fresh action.

That failure has only two physical geometries after pruning finite early
generations.

First, the action can keep returning to one material ancestry core:

\[
Q_0\supset Q_1\supset Q_2\supset\cdots,
\qquad
\sum_k A(Q_k)=\infty.
\]

Then the missing theorem is

```text
RepeatedCorePositiveVariationRootBound.A
```

for the same material core. It must say that repeated positive deformation,
Hodge-frame rotation, collar-normal separation, or annular turnstile variation
has finite original-data root cost.

Second, every material ancestry line can have finite selected action, while the
divergence escapes through antichain blocks of shrinking selected cores:

\[
r_k\downarrow0,
\qquad
A(Q_k)\simeq 1,
\qquad
\sum_k A(Q_k)=\infty,
\qquad
\sum_k r_k<\infty.
\]

Then the missing theorem is

```text
ScaleInvariantSelectedCapacityNoEscape.A
```

for the same original history. It must rule out infinitely many selected unit
critical cores whose raw capacity or energy costs remain summable.

## 4. Strict reduction

Modulo the already installed local removals and consumer payments,

\[
\texttt{RepeatedCorePositiveVariationRootBound.A}
+
\texttt{ScaleInvariantSelectedCapacityNoEscape.A}
\Longrightarrow
\texttt{CriticalFreshSourceTentCarleson.A / FreshSourceCriticalScaleMemoryBound.A}.
\]

Equivalently, a counterexample to the fresh-source tent/scale-memory producer
would produce either a reused-core divergence or a shrinking-core escape.

## 5. Current proof truth

This is a stricter reduction of the current Gold source wall, not closure. It
prevents the paid-rotation, detector-silent, selector-motion, Bessel freshness,
and local source-routing surfaces from pretending to be separate producers.

The remaining physical question is whether the same original material history
has a finite root cost for repeated selected-critical reuse, or whether
Navier-Stokes forbids infinite selected-critical births on shrinking cores with
summable raw cost.
