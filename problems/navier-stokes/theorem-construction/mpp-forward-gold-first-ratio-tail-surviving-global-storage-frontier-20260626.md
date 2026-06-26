---
theorem_id: forward-gold-first-ratio-tail-surviving-global-storage-frontier-20260626
status: consolidation-installed-surviving-frontier-is-global-same-material-storage-or-first-ratio-tail
created: 2026-06-26
problem: navier-stokes
route: forward-gold
logical_landing_node: GlobalSamePacketFullClockFromOriginalData.A
audits_hinge:
  - SelectedCriticalStrainCapacityGoodLambda.A
  - WeightBeatingTailLaw.A
  - RootPositiveFluxReserveCoercivity.A
  - GlobalSameHistoryAffineBurstNoZeno.A
  - GlobalWeightedLaminarAncestryVariationReserve.A
source_surfaces:
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-pressure-hodge-capacity-bellman-root-test-20260626.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-capacity-inheritance-critical-strain-equivalence-test-20260626.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-selected-critical-strain-goodlambda-strain-equation-direct-test-20260626.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-pressure-hessian-affine-tail-global-poisson-direct-test-20260626.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-root-reserve-minimal-bad-chain-compactness-test-20260626.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-crossband-decay-core-direct-test-20260626.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-same-layer-factor-tail-depletion-direct-test-20260620.md
---

# First-Ratio Tail Surviving Global Storage Frontier

This note records the current proof frontier after the laminar ancestry, capacity,
good-lambda, pressure-Poisson, compactness, and same-layer product checks.

It does not close the Gold route. It prevents already-exhausted coordinate
forms from reappearing as independent proof force.

## 1. The one surviving bad profile

The remaining bad profile is a selected laminar high-ratio terminal half-tail
made of pressure-Hessian-balanced affine material-time visits. On a child scale
`r`,

```math
u_r(x,t)\simeq A_r(t)x,
\qquad
\operatorname{tr}A_r=0,
\qquad
|A_r|\simeq r^{-2},
```

with pressure Hessian

```math
\nabla^2p_r=-(\dot A_r+A_r^2).
```

The scaling is:

```math
\text{raw physical heat/viscous/collar cost}\simeq O(r),
\qquad
\text{normalized selected material action}\simeq O(1).
```

Thus a terminal sequence can have:

```math
\sum_k r_k<\infty
```

while retaining:

```math
\sum_k A(Q_k)=\infty.
```

Equivalently, in ratio-tail notation:

```math
\sum_{\ell\ge0}\nu_\ell<\infty,
\qquad
\sum_{\ell\ge0}2^\ell\nu_\ell=\infty.
```

The model tail

```math
\nu_\ell={2^{-\ell}\over \ell+1}
```

is the sharp half-barrier example.

## 2. Exhausted closure coordinates

The following coordinates are not independent closures.

### Local metric or coefficient storage

A local bounded-below storage paying affine Cauchy-Green growth would have to
pay `c lambda T` during persistent affine strain. For arbitrary duration this
forces the storage below every fixed lower bound. So local finite-depth metric
capacity cannot be the Gold storage.

### Pressure Poisson interaction

Instantaneous pressure ellipticity attaches every affine visit to the same
incompressible pressure-Hodge law, but time-separated visits have no elliptic
cross term. Overlapping cross terms are signed and do not become a one-sided
positive selected-lobe tax after terminal selection.

### Compactness or minimal bad chain

Failure of the first-ratio tail can be normalized to a same-history suitable
packet plus terminal/collar defect. That compactness exposes the bad package;
it does not create the finite unweighted root measure. The missing finite root
measure is the theorem itself.

### Descendant-tail Bellman reserve

The canonical inheritable reserve

```math
B_*(Q)=\sum_{R\subsetneq Q}A(R)+\sum_{R\subseteq Q}R_{\rm legal}(R)
```

satisfies parent-child inheritance tautologically. But `B_*(Q_root)<infinity`
is exactly the desired first-ratio action bound.

### Cross-band decay

Heat damping, subheat absorption, and recirculation remove real branches, but
on the high-ratio branch the natural coefficient reaches the half-barrier. A
one-child laminar chain can still have:

```math
{N_{L+1}\over N_L}\to {1\over2}.
```

So cross-band decay closes only with a strict gain:

```math
N_{L+1}\le\theta N_L+B_L,
\qquad
\theta<{1\over2},
\qquad
\sum_L2^LB_L<\infty.
```

### Selected strain good-lambda

The exact strain equation and pressure ellipticity attach the selected lobe to
the full pressure-viscosity-incompressibility-velocity packet. They do not by
themselves give rectified positive-tail decay. The pressure-Hessian term can
balance selected affine strain, Calderon-Zygmund gives attachment without the
missing exponent, and Betchov is signed rather than rectified.

### Same-layer factor-tail depletion

Same-layer tail depletion of the strain or velocity factor is a valid consumer:
it would kill the endpoint product. But critical factor bounds do not produce
that depletion. The Holder saturation model concentrates both factors on the
same terminal layer with fixed critical masses.

## 3. The surviving closure form

After the above reductions, the only noncircular closure form left is a genuinely
global same-material reserve or storage, finite from original smooth data, whose
drop pays the unweighted high-ratio / first-ratio action directly.

One equivalent form is:

```math
d\mathscr S_N
+
c_N\,d\Omega_N^{\rm first}
\le
dR_N^{\rm legal},
```

with:

```math
\mathscr S_N(t)\ge -C_N(u_0),
\qquad
\mathscr S_N(0)\le C_N(u_0),
\qquad
\int_0^{T^*}dR_N^{\rm legal}<\infty.
```

Here `dOmega_N^first` is the selected same-material first-ratio action:

```math
\int_0^{T^*}d\Omega_N^{\rm first}
\simeq
\sum_{\ell\ge0}2^\ell\nu_\ell.
```

Integrating would give:

```math
\sum_{\ell\ge0}2^\ell\nu_\ell<\infty.
```

The good-lambda and capacity forms are equivalent coordinates of the same
statement:

```math
N_{L+1}\le\theta N_L+B_L,
\qquad
\theta<{1\over2},
\qquad
\sum_L2^LB_L<\infty,
```

or:

```math
\int_{\mathcal F_{\rm lam}}|\Sigma|^{5/2}\,d\mu_{\rm cap}<\infty.
```

## 4. Current route effect

The Gold support package now has this classification:

```text
laminar ancestry: structural support;
single-line Cauchy-Green / frame tax: conditional support;
pressure-Hodge capacity: concrete root-reserve coordinate;
selected critical strain good-lambda: capacity coordinate of the first-ratio wall;
cross-band decay: equivalent if it supplies theta < 1/2;
descendant Bellman tail: circular;
local metric storage / pressure Poisson / compactness / factor-tail depletion: exhausted as producers.
```

So the active theorem is not another renamed support surface. It is:

```text
produce a bounded-below global same-material storage/reserve from original data
that pays the selected first-ratio action.
```

Until that storage or strict tail gain is constructed, the Gold route is not
closed.
