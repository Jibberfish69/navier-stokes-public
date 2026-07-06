---
theorem_id: forward-gold-c0-surplus-zero-self-similar-spectral-gap-obstruction-20260706
status: closure-attempt-fails-surplus-zero-reduces-to-self-similar-spectral-gap
created: 2026-07-06
problem: navier-stokes
route: forward-gold / c_0 endgame / route (b) material-time marginal profile
target_object:
  - c0.CoercivityModulus
  - SurplusZeroMarginalRelay
  - SelfSimilarDifferenceOperatorGap.A
  - MaterialTimeMarginalProfileLiouville.A
source_refs:
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-relay-record-reversibility-kernel-and-epsilon-extraction-20260706.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-marginal-relay-all-zero-payment-exclusion-20260706.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-participation-break-even-identities-c0-is-rigidity-deficit-20260706.md
  - problems/navier-stokes/theorem-construction/mpp-shared-participation-and-tower-coherence-law.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-full-tower-signed-total-exchange-retention-direct-attempt-20260622.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-logtime-small-tail-reaction-direct-test-20260619.md
  - problems/navier-stokes/theorem-construction/mpp-ancient-nopulse-rigidity-audit-note.md
  - problems/navier-stokes/theorem-construction/mpp-zeno-rigid-class-option-b-full-run-20260506.md
completion_truth: >-
  Direct closure attempt and obstruction. The record-currency zero-bill kernel
  remains useful only on the absolute-zero reading of the bills. A half-speed
  marginal relay gives surplus-zero bills: viscosity, pressure redistribution,
  Field motion, and four-body exchange may all be nonzero but exactly
  scale-covariant, posting no surplus over the marginal 1/2 transfer. The
  step "zero bill implies horizontal freeze/common-mode recordlessness" is
  therefore invalid for the sequence needed to extract c_0. In log-time /
  self-similar variables the missing estimate is a uniform spectral gap for
  the renormalized neighboring-tower difference operator after quotienting
  symmetries and legal exits. That gap is exactly c_0. Current repo inputs do
  not prove it: finite-difference tower closure still needs flux/cutoff
  control, full-tower signed-total retention is open, log-time reaction only
  absorbs after smallness, and broad ancient no-pulse rigidity is false without
  extra source-residue hypotheses. No closure claimed.
---

# Surplus-zero obstruction to the c_0 extraction

## 1. The attempted closure

The proposed coercivity formula was

```math
\varepsilon
=
\inf_{\substack{dR_N^+=1\\ \text{retained same-fluid relay}}}
\left(
dE_{N,h}^{Field}+dA_{4B,N}+dVisc
\right),
\qquad
c_0=2\varepsilon .
\tag{SZS.1}
```

The zero-bill kernel tries to prove `\varepsilon>0` by contradiction: if a
normalized relay has total bill tending to zero, compactness should produce a
retained profile with positive `dR_N^+` and zero bills; the kernel then says
zero bills force recordless common-mode motion.

This is the right contradiction shape, but the closure attempt fails at the
meaning of "zero bill."

## 2. The equivocation

There are two different zero notions.

```math
\text{absolute-zero:}
\qquad
\nu\int|\nabla\delta_hU_k|^2=0
\quad\text{and the other bill densities vanish pointwise/as measures.}
\tag{SZS.2}
```

```math
\text{surplus-zero:}
\qquad
\text{the full bill is nonzero but exactly scale-covariant,}
\quad
\text{leaving no surplus over the marginal }1/2\text{ transfer.}
\tag{SZS.3}
```

The zero-bill kernel proves something on `(SZS.2)`. A half-speed marginal relay
produces `(SZS.3)`. The compactness sequence for `c_0=0` approaches
surplus-zero, not absolute-zero.

## 3. The neighboring-tower identity in the marginal variables

The finite-difference tower law gives

```math
(\partial_t+u(x+h,t)\cdot\nabla)\delta_hU_k
+(\delta_hu)\cdot\nabla U_k(x,t)
+\delta_h\nabla^{k+1}p
-\nu\Delta\delta_hU_k
=
\delta_hB_k .
\tag{SZS.4}
```

After pairing with `\delta_hU_k`, the signed part is

```math
\nu\int|\nabla\delta_hU_k|^2 .
\tag{SZS.5}
```

But in a scale-covariant marginal relay every term in the paired identity has
the same scaling degree. The balance can be

```math
\nu\int|\nabla\delta_hU_k|^2
=
\text{transport/strain production}
+\text{pressure redistribution}
+\text{cascade transfer}
\tag{SZS.6}
```

with neither side zero. This is the equality-speed pursuit case: the chaser
pays exactly the covariant fare, trails forever, and posts no strict surplus.
Thus zero surplus does not imply horizontal freeze.

## 4. Log-time formulation of the missing theorem

In backward self-similar variables

```math
s=-\log(T-t),
\qquad
y={x-x_0\over\sqrt{T-t}},
\qquad
v(s,y)=\sqrt{T-t}\,u(t,x),
\tag{SZS.7}
```

the marginal profile is a bounded-or-periodic trajectory of the renormalized
Navier-Stokes flow. The neighboring-tower difference variable `w` satisfies a
linearized/transported equation of the schematic form

```math
\partial_s w+\mathcal L_{v(s)}w=\mathcal N_{\rm legal}(w),
\tag{SZS.8}
```

where `\mathcal L_{v(s)}` contains the Ornstein-Uhlenbeck drift, viscosity,
linearized transport, pressure redistribution, and the tower-cascade
linearization along the same VPI field.

The needed strict estimate is not a bookkeeping identity. It is a spectral
gap/coercivity statement:

```math
\mathcal Q_{v(s)}(w)
\ge
\varepsilon\,\mathcal R(w)
\quad
\text{uniformly on the certified marginal class, after symmetries and legal exits.}
\tag{SZS.9}
```

Here `\mathcal R(w)` is the normalized one-way relay record read, and
`\mathcal Q_{v(s)}` is the surplus of viscous/Field/four-body payment over the
scale-covariant marginal balance. This `\varepsilon` is exactly `c_0/2`.

## 5. What current repo inputs do not supply

The checked sources leave the strict gap open.

1. The finite-difference tower identity records the correct Field energy, but
   the source note says the localized tower closure still needs a legal
   flux/cutoff bound before it becomes a usable coercive estimate.
2. The full-tower four-body note says signed cancellation is installed, while
   signed-total retention of positive material-record growth is not installed.
3. The log-time reaction inequality is only a consumer after late smallness; it
   does not force the terminal packet to enter the small regime.
4. Broad ancient no-pulse rigidity is false; smooth ancient packets exist
   unless the source-residue class is sharpened.
5. The Zeno rigid-class search explicitly says current extraction does not
   produce finite global ancient energy, Type I control, critical smallness,
   self-similarity, axisymmetry, or any other rigid class that would activate a
   Liouville theorem.

These are not independent annoyances. They are all views of `(SZS.9)`.

## 6. Result of the closure attempt

The attempted closure does not prove `c_0>0`. It proves the following exact
reduction:

```math
c_0>0
\quad\Longleftrightarrow\quad
\text{the certified surplus-zero marginal relay class has a positive}
\text{ renormalized difference-operator gap.}
\tag{SZS.10}
```

Equivalently, a unit-record vanishing-surplus sequence must be stopped by one
of:

```math
\begin{array}{ll}
\text{Field flux/cutoff failure} &\Rightarrow \text{legal Field/Pack/Part route-out},\\[1mm]
\text{lost signed-total retention} &\Rightarrow \text{same-material Part-record loss},\\[1mm]
\text{temporal concentration} &\Rightarrow \text{record thickness/charge theorem},\\[1mm]
\text{certified surplus-zero profile} &\Rightarrow \text{self-similar/log-time spectral gap or Liouville}.
\end{array}
\tag{SZS.11}
```

The last line is the true route-(b) theorem. The zero-bill bookkeeping kernel
cannot replace it, because the marginal enemy has nonzero covariant payment
and zero surplus, not zero payment.

No closure is claimed.
