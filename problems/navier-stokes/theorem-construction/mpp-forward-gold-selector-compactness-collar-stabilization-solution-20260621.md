---
theorem_id: forward-gold-selector-compactness-collar-stabilization-solution-20260621
status: first-defect-clause-solved-under-finite-compact-selector-and-visible-collar-variation
logical_landing_node: selector_compactness_collar_stabilization
parents:
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-fullcycle-production-reduction-and-defect-exhaustion-target-20260621.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-full-hodgestokes-packet-compactness-noloss-attempt-20260621.md
  - problems/navier-stokes/theorem-construction/mpp-participation-tuple-coupling-breaker-live-edge-audit-20260621.md
---

# Selector Compactness / Collar Stabilization Solution

Date: 2026-06-21

## 0. Purpose

This note solves the first concrete branch of `FullPacketDefectExhaustion.A`.

The branch is:

```math
\boxed{\text{finite/compact selector graph + fixed collar topology}}
```

implies

```math
\boxed{\text{same-carrier full-packet convergence or visible legal/collar loss.}}
```

The key point is to measure selector and collar motion as part of the legal packet. Once that motion is visible, a lossless terminal sequence must stabilize its carrier data. Stabilization then activates the existing full Hodge-Stokes packet no-loss criterion.

## 1. Selector data and legal variation

A selected terminal packet at scale `sigma` carries selector data

```math
\mathfrak s_\sigma
=
(\chi_\sigma,\Phi_\sigma,\operatorname{sgn}_\sigma,\ell_\sigma,\Gamma_\sigma),
```

where `chi_sigma` is the cutoff, `Phi_sigma` is the selected test/readout, `sgn_sigma` is the orientation/sign record, `ell_sigma` is the finite packet label, and `Gamma_sigma` is the collar topology.

Define the selector-collar legal variation measure

```math
\begin{aligned}
d\Lambda_{sel}(\sigma):={}&
\|d_\sigma\chi_\sigma\|_{C^2}\,d\sigma
+\|d_\sigma\Phi_\sigma\|_{\mathcal T}\,d\sigma \\
&+dN_{label}(\sigma)
+dN_{sgn}(\sigma)
+d\Lambda_{collar}(\sigma).
\end{aligned}
```

For a finite graph, `dN_label` and `dN_sgn` are counting measures for label and sign jumps. For a compact selector family, the first two terms use the compact topology in which packet convergence is tested. The collar term is the total variation of collar motion, equivalently the measure of collar symmetric-difference motion in the selected packet topology.

This measure is part of the legal channel:

```math
R^{legal}_\sigma\,d\sigma \quad\gets\quad R^{legal}_\sigma\,d\sigma+d\Lambda_{sel}(\sigma).
```

## 2. Stabilization dichotomy

Let `P_n` be a normalized retained terminal packet sequence with selected data `s_n` and full-cycle unpaid loss tending to zero.

Assume the selected graph is finite or compact, and the collar topology is fixed modulo the legal variation measure above.

Then exactly one of the following occurs.

First branch:

```math
\Lambda_{sel}(P_n)\to0.
```

In the finite graph case, positive separation of distinct labels and signs gives eventual stabilization of `ell_n` and `sgn_n`. The cutoff and test terms give

```math
\chi_n\to\chi\quad\text{in }C^2,
\qquad
\Phi_n\to\Phi\quad\text{in }\mathcal T.
```

The collar term gives convergence of `Gamma_n` to the same retained collar topology. Hence the carrier is the same carrier after passing to the stabilized tail.

In the compact graph case, compactness gives a convergent selector subsequence. Vanishing legal variation forces the limiting selector to be the retained same-carrier selector rather than a drifting carrier. Thus again

```math
\mathfrak s_n\to\mathfrak s_\ast
```

in the full selected packet topology.

Second branch:

```math
\limsup_n\Lambda_{sel}(P_n)>0
```

or the scale-tail total variation satisfies

```math
\Lambda_{sel}([\sigma_0,\infty))=\infty.
```

Then the branch is already visible legal/collar loss. It enters the legal packet and cannot remain a hidden positive source residue.

Therefore:

```math
\boxed{
\text{finite/compact selector graph + fixed collar topology}
\Longrightarrow
\text{same-carrier selector stabilization or visible legal/collar loss.}
}
```

## 3. Full-packet convergence after stabilization

On the stabilized branch, use the existing full Hodge-Stokes compactness/no-loss criterion.

The stabilized selector gives the fixed packet data required there:

```math
\chi_n\to\chi\text{ in }C^2,
\qquad
\Phi_n\to\Phi\text{ in the packet dual test topology,}
```

with signs, labels, and collar topology retained.

The routed compactness inputs are:

```math
V_n\to V\quad\text{strongly in }L^3(K),
```

```math
Q_n^{loc}\to Q^{loc}\quad\text{strongly in }L^{3/2}(K),
```

```math
\nabla V_n\to\nabla V\quad\text{strongly in }L^2(K)
```

whenever the viscous defect is zero. A nonzero viscous defect is a visible viscous payment by the installed paid-or-strong dichotomy.

Thus every component of the full Hodge-Stokes packet converges in the selected packet topology:

```math
\mathcal K_n\to\mathcal K_\ast.
```

The selected scalar density satisfies

```math
h_n\to h_\ast\quad\text{in }L^1(K).
```

Since the positive-part map is `1`-Lipschitz,

```math
[h_n]_+\to[h_\ast]_+\quad\text{in }L^1(K).
```

Hence there is same-carrier selected positive no-loss:

```math
\boxed{
\mu_{sel,n}^+\to\mu_{sel,\ast}^+
\quad\text{in total variation on the retained carrier.}
}
```

## 4. Consequence for the lossless branch

If the full-cycle payment also tends to zero, the installed lossless full Hodge-Stokes rigidity applies.

The limit packet has only Galilean/affine-pressure gauge content after quotienting. Any selected singular participation activity that annihilates the gauge vanishes:

```math
A_{sel}(P_\ast)=0.
```

Same-carrier positive no-loss gives

```math
A_{sel}(P_n)\to A_{sel}(P_\ast)=0.
```

So a terminal sequence with

```math
A_{sel}(P_n)\ge a_0>0
```

cannot pass through the stabilized lossless branch.

## 5. Final dichotomy

The first defect clause of `FullPacketDefectExhaustion.A` is solved as:

```math
\boxed{
\begin{array}{c}
\text{finite/compact selector graph}\ +\ \text{fixed collar topology}\ +\ \text{visible selector-collar variation}\
\Longrightarrow\\
\text{full-packet no-loss convergence}\
\text{or}\
\text{legal/collar payment.}
\end{array}
}
```

Thus unbounded selector complexity or carrier/collar drift is a genuine obstruction only when the selector-collar variation is unpaid. Once it is inserted into the legal packet, the branch is either charged or stabilized.

## 6. Remaining branches

After this solution, `FullPacketDefectExhaustion.A` has three remaining theorem clauses:

```math
\boxed{\text{terminal Zeno donor chain;}}
```

```math
\boxed{\text{endpoint storage jump / terminal trace atom;}}
```

```math
\boxed{\text{legal routing terminal-AC and }L^1_\sigma\text{ summability.}}
```

The next direct clause is the donor-chain branch. The clean proof target is a
donor-rank potential whose strict descent rules out infinite unpaid donor
chains on a finite donor graph.  A zero-descent cycle must be tested by total
same-packet exchange, not only signed net circulation: when that total exchange
is retained in the full packet it is counted in \(A_{4B}\), and only failure of
same-packet realization lands in Part or Field.
