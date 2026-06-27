---
theorem_id: forward-gold-stopped-primitive-pls-strict-half-barrier-break-relay-20260627
status: relay-refinement-stopped-free-driver-reduced-to-strict-half-barrier-break
created: 2026-06-27
problem: navier-stokes
route: forward-gold same-material selected-density / stopped primitive PLS strict half-barrier
logical_landing_node: GlobalSamePacketFullClockFromOriginalData.A
audits_hinge:
  - StoppedFreeMaterialGraphDriverCarleson.A
  - StoppedPrimitivePLSStrictHalfBarrierBreak.A
  - PrimitivePLSBoundedBelowLyapunov.A
  - GlobalWeightedLaminarAncestryVariationReserve.A
  - WeightBeatingTailLaw.A
source_surfaces:
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-stopped-free-material-graph-driver-better-idea-20260627.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-stopped-free-material-graph-driver-direct-attack-20260627.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-primitive-pls-no-free-upcrossing-complete-frame-laminar-test-20260627.md
  - problems/navier-stokes/theorem-construction/mcp-primitiveplsdriver-pointwise-contraction-ancestry-test-20260625.md
  - problems/navier-stokes/theorem-construction/mcp-primitiveplsdriver-temporal-volterra-payback-test-20260625.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-primitive-pls-driver-post-tangent-normal-closure-audit-20260625.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-installed-support-axioms-half-tail-model-no-go-20260626.md
---

# Stopped primitive PLS strict half-barrier relay

The previous relay hinge was:

```text
StoppedFreeMaterialGraphDriverCarleson.A
```

That was the right producer surface after the pressure/collar graph split, but
the checked direct attack reduces it one level further.

## 1. What was ruled out

The stopped primitive free-material graph driver is

```math
d\Omega_N^{PLS,primitive}
\simeq
\sum_j w_j
\left[
\langle H_{j,N},\mathcal M_{<j-C,N}H_{j,N}\rangle
\right]_+dt
+dR_N^{paid}.
```

The checked attack rules out these shortcuts:

1. Pointwise sign or contraction.  A smooth divergence-free high packet can align
   with a positive low strain direction, so the positive low-high form is real.
2. Shell-gap heat absorption.  This closes the subheat branch only; the live
   branch is superheat material motion.
3. Complete-frame and laminarity alone.  They prove same-packet compression
   partner and same-history ancestry, but do not insert the missing first-ratio
   weight into a finite root reserve.
4. Temporal Volterra or later payback.  These prove causal attachment and
   subheat absorption; on the superheat branch the exponent is the material clock
   being sought.
5. Natural shell storage.  Its lower bound is equivalent to the continuation-depth
   weighted material record.

So `StoppedFreeMaterialGraphDriverCarleson.A` is not closed by any local support
currency already installed.

## 2. Exact stopped hinge

The next nonduplicate theorem is:

```text
StoppedPrimitivePLSStrictHalfBarrierBreak.A
```

It can be stated in three equivalent forms.

Strict good-lambda form:

```math
N_{L+1}
\le
\theta N_L+B_L,
\qquad
\theta<{1\over2},
\qquad
\sum_{L\ge0}2^LB_L<\infty.
```

Bounded-below Lyapunov form:

```math
d\mathscr A_N
+c_Nd\Omega_N^{PLS,primitive}
\le
dR_N^{legal},
\qquad
\mathscr A_N\ge -C_N(u_0).
```

Weighted laminar ancestry reserve form:

```math
\int_{\mathcal F_{lam}}
\left(
V_C+V_F+V_{collar}+V_{turnstile}
\right)
d\mathcal R_{selected}
\le
C_N(u_0)+R_{legal}.
```

The stopped theorem applies after relative Schur defect, recirculation,
spent-source reuse, selector/reselection jumps, silent-source zero-cost escape,
entrance/legal, subheat, complete-frame local orientation, and laminar ancestry
reductions are removed.

## 3. Why this is the better idea

The route should stop trying to find one more local detector.  The half-tail
survives every checked local detector because each selected visit can be locally
attached, locally oriented, locally laminar, and locally paid, while the global
weighted first-ratio sum still diverges.

The better proof object is the strict stopped half-barrier itself: force the
good-lambda coefficient below one half, or build the same-material storage whose
bounded lower edge makes the positive primitive graph-driver spend a finite
original-data budget.

In plain terms, Gold closes only when the same original material packet cannot
keep making one-way positive low-high PLS motion with the half-tail arithmetic

```math
\nu_\ell={2^{-\ell}\over \ell+1},
\qquad
\sum\nu_\ell<\infty,
\qquad
\sum 2^\ell\nu_\ell=\infty.
```

That is the exact hard object now.