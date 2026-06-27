---
theorem_id: forward-gold-stopped-free-material-graph-driver-direct-attack-20260627
status: stopped-free-driver-direct-attacks-reduce-to-strict-half-barrier-break
created: 2026-06-27
problem: navier-stokes
route: forward-gold same-material selected-density / stopped primitive graph driver
logical_landing_node: GlobalSamePacketFullClockFromOriginalData.A
attacks_hinge:
  - StoppedFreeMaterialGraphDriverCarleson.A
  - PrimitivePLSNoFreeUpcrossing.A
  - PrimitivePLSBoundedBelowLyapunov.A
  - GlobalWeightedLaminarAncestryVariationReserve.A
  - WeightBeatingTailLaw.A
refined_hinge:
  - StoppedPrimitivePLSStrictHalfBarrierBreak.A
source_surfaces:
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-stopped-pressop-collar-graph-split-free-driver-audit-20260627.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-primitive-pls-no-free-upcrossing-complete-frame-laminar-test-20260627.md
  - problems/navier-stokes/theorem-construction/mcp-primitiveplsdriver-pointwise-contraction-ancestry-test-20260625.md
  - problems/navier-stokes/theorem-construction/mcp-primitiveplsdriver-temporal-volterra-payback-test-20260625.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-primitive-pls-driver-post-tangent-normal-closure-audit-20260625.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-high-ratio-goodlambda-half-barrier-20260626.md
---

# Stopped free-material graph-driver direct attack

The relay hinge is:

```text
StoppedFreeMaterialGraphDriverCarleson.A
```

After the pressure/collar graph split, the active object is the stopped
primitive free-material participation-law--strain driver:

```math
d\Omega_N^{PLS,primitive}
\simeq
\sum_j w_j
\left[
\left\langle
H_{j,N},
\mathcal M_{<j-C,N}H_{j,N}
\right\rangle
\right]_+dt
+
dR_N^{paid}.
\tag{1}
```

Here \(\mathcal M_{<j-C,N}\) is the moving lower material coefficient: strain,
pressure Hessian through the strain equation, coefficient/frame motion,
Hodge/Stokes projection motion, transported collar motion, annular interface
service, and viscous graph service.  It is one free-material driver, not a
pressure-only or collar-only object.

This note tests the direct closure currencies for `(1)` after stopping.

## 1. Pointwise sign/contraction route

Pointwise contraction would require the positive low-high form

```math
\left[
\left\langle
H_{j,N},
\mathcal M_{<j-C,N}H_{j,N}
\right\rangle
\right]_+
\tag{2}
```

to be absorbed by incompressibility, trace-free strain, pressure ellipticity, or
the shell gap.

The installed pointwise contraction test gives a divergence-free smooth normal
form where a high packet aligns with the positive low strain direction and the
Leray correction vanishes in the high-low limit.  Thus `(2)` can be genuinely
positive at top rank.

The shell gap only proves the subheat split:

```math
\Theta_j^{mat}\le \delta 2^{2j}
\quad\Longrightarrow\quad
\text{same-shell viscosity absorbs}.
\tag{3}
```

The live branch is exactly:

```math
\Theta_j^{mat}>\delta 2^{2j}.
\tag{4}
```

So pointwise algebra does not prove the stopped Carleson estimate.

## 2. Complete-frame and laminarity route

Complete-frame trace-free payment proves a local orientation law.  A selected
positive primitive pump has a same-packet compression partner:

```math
[p\cdot Sp]_+
\le
[-\widehat\xi\cdot S\widehat\xi]_+
+
[-n\cdot Sn]_+.
\tag{5}
```

After paid nonlaminar exits, the surviving high-ratio visits also lie on a
laminar same-material ancestry forest.

Those are real structural facts.  They do not insert the missing high-ratio
weight into a finite root reserve.  In ratio variables, raw ledgers give:

```math
\sum_{\ell\ge0}\nu_\ell<\infty.
\tag{6}
```

The stopped free-driver theorem needs:

```math
\sum_{\ell\ge0}2^\ell\nu_\ell<\infty.
\tag{7}
```

The half-tail

```math
\nu_\ell={2^{-\ell}\over \ell+1}
\tag{8}
```

satisfies `(6)` and fails `(7)`, while still allowing a compression partner and
a laminar single-line tax at every selected visit.  Thus complete-frame payment
and laminarity are support, not closure.

## 3. Temporal Volterra / later-payback route

The active-shell Volterra inequality is:

```math
{d\over dt}e_j
+
c\nu2^{2j}e_j
\le
C\Theta_j^{mat}e_j
+
r_j.
\tag{9}
```

On the subheat branch, heat wins.  On the superheat branch, the Gronwall
exponent contains:

```math
\int (C\Theta_j^{mat}-c\nu2^{2j})\,dt,
\tag{10}
```

which is the same material clock being sought.

The transported annular payback identity similarly supplies attachment:

```math
{d\over dt}M_\phi
+
2\nu\int\phi |S|^2dx
=
-\int u\cdot T\nabla\phi\,dx.
\tag{11}
```

It gives signed same-fluid return.  Rectifying positive action requires the
variation of the same annular stress/strain service, which is again the full
primitive/free-material graph-driver clock.  So temporal causality does not
produce a noncircular stopped Carleson bound.

## 4. Natural storage route

The natural shell storage

```math
X_{j,N}:=-{1\over2}w_jE_{j,N}
\tag{12}
```

has the right oriented derivative, but its lower bound is:

```math
X_{j,N}\ge -C
\quad\Longleftrightarrow\quad
w_jE_{j,N}\le C.
\tag{13}
```

Summed over active shells and stopped roots, `(13)` is the continuation-depth
material record.  It is the conclusion, not an input.

The coefficient-coupled storage has the same failure.  It can differentiate
into the wanted coefficient, but its lower bound requires the same product of
coefficient size and active high-shell energy that the stopped free-driver
Carleson theorem is meant to bound.

## 5. Exact remaining theorem

All direct closure currencies reduce to the strict half-barrier break:

```math
N_{L+1}
\le
\theta N_L+B_L,
\qquad
\theta<{1\over2},
\qquad
\sum_L2^LB_L<\infty,
\tag{14}
```

or equivalently a bounded-below same-material Lyapunov law:

```math
d\mathscr A_N
+
c_N d\Omega_N^{PLS,primitive}
\le
dR_N^{legal},
\qquad
\mathscr A_N\ge -C_N(u_0).
\tag{15}
```

or equivalently a global weighted laminar ancestry reserve:

```math
\int_{\mathcal F_{\rm lam}}
\bigl(
V_C+V_F+V_{\rm collar}+V_{\rm turnstile}
\bigr)
d\mathcal R_{\rm selected}
\le
C_N(u_0)+R_{\rm legal}.
\tag{16}
```

The stopped version of the exact hinge is therefore:

```text
StoppedPrimitivePLSStrictHalfBarrierBreak.A
```

Statement:

For the stopped free-material graph driver on one original smooth material
history, after relative Schur defect, recirculation, spent-source reuse,
selector/reselection jumps, silent-source zero-cost escape, entrance/legal,
subheat, complete-frame local orientation, and laminar ancestry reductions are
removed, prove the strict high-ratio half-barrier break `(14)`, equivalently
the bounded-below Lyapunov law `(15)` or the weighted laminar reserve `(16)`.

## 6. Result

`StoppedFreeMaterialGraphDriverCarleson.A` is not closed by pointwise
contraction, complete-frame payment, laminar ancestry alone, temporal Volterra
payback, or the natural shell storage.

The next nonduplicate hinge is:

```text
StoppedPrimitivePLSStrictHalfBarrierBreak.A
```

This is the exact stopped form of the remaining Gold producer: a strict
same-material high-ratio gain, not another local support calculation.
