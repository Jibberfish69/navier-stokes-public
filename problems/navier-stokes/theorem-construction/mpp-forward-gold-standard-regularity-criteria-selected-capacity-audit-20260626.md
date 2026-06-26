---
theorem_id: forward-gold-standard-regularity-criteria-selected-capacity-audit-20260626
status: support-classification-installed-standard-criteria-do-not-produce-selected-capacity-gain
created: 2026-06-26
problem: navier-stokes
route: forward-gold
logical_landing_node: GlobalSamePacketFullClockFromOriginalData.A
audits_hinge:
  - AdjointSelectedCapacityGain.A
  - RootPositiveFluxReserveCoercivity.A
  - SelectedCriticalStrainCapacityGoodLambda.A
  - WeightBeatingTailLaw.A
source_surfaces:
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-laminar-adjoint-stress-test-estimate-direct-test-20260626.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-root-positive-flux-reserve-tail-equivalence-20260626.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-selected-capacity-goodlambda-weight-tail-equivalence-20260626.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-strict-tail-support-anchor-classification-20260626.md
---

# Standard regularity criteria versus selected-capacity gain

This note classifies the standard Navier-Stokes regularity criteria against the
current Gold hinge.

The active target is not a continuation criterion.  It is the strict selected
same-material capacity gain:

```math
\sum_{\ell\ge0}2^\ell\nu_\ell<\infty,
```

equivalently:

```math
N_{L+1}\le\theta N_L+B_L,
\qquad
\theta<{1\over2},
\qquad
\sum_L2^LB_L<\infty,
```

or the corrected monotone-dual statement `AdjointSelectedCapacityGain.A`,
including the constant ancestry test \(\alpha\equiv1\).

## 1. Serrin and Escauriaza-Seregin-Sverak

The Serrin family and the endpoint \(L_t^\infty L_x^3\) criterion are
restart/continuation criteria.  They say that a suitable critical velocity
norm prevents breakdown.

They do not produce the selected-capacity gain from finite-energy original
data.  The energy class gives:

```math
u\in L_t^\infty L_x^2\cap L_t^2\dot H_x^1
\Longrightarrow
u\in L_{t,x}^{10/3}.
```

That is the velocity-side critical interpolation already used in the Gold
support package.  It does not imply a bound on the selected first-ratio strain
tail:

```math
\sum_{\ell\ge0}2^\ell\nu_\ell.
```

Therefore Serrin/ESS may be used after the Gold clock has produced a critical
continuation norm.  They are not the missing producer of
`AdjointSelectedCapacityGain.A`.

## 2. Beale-Kato-Majda type strain or vorticity clocks

Any criterion of the form

```math
\int_0^{T^*}\|\omega(t)\|_{L^\infty}\,dt<\infty
```

or

```math
\int_0^{T^*}\|S(t)\|_{L^\infty}\,dt<\infty
```

is a material-deformation continuation criterion.  It directly controls the
Cauchy-Green / frame growth part of the material record.

But the current Gold problem is exactly to prove a selected same-material clock
strong enough to control that record.  Importing a BKM-type clock as an input
would assume the continuation-strength quantity.  It is a readout target, not
an original-data proof of the strict half-barrier gain.

## 3. Caffarelli-Kohn-Nirenberg epsilon regularity

The CKN epsilon criterion is a local smallness theorem.  It says that small
scale-critical local density implies regularity at the point.

A singular terminal point can fail that smallness test on arbitrarily small
scales without contradicting CKN.  CKN partial regularity also does not exclude
a single terminal point or a one-line laminar ancestry chain.

Thus CKN supplies a consumer/readout: if the Gold route produces enough
critical-density or capacity smallness, CKN converts it into regularity.  CKN
does not by itself sum the selected first-ratio action or beat the half-barrier:

```math
\nu_\ell={2^{-\ell}\over \ell+1}.
```

That tail has finite raw mass but divergent selected first-ratio action.

## 4. Calderon-Zygmund pressure attachment

Pressure ellipticity and Calderon-Zygmund estimates attach pressure to the same
incompressible velocity-gradient packet.  They are essential for same-carrier
admission.

They do not create the missing one-sided selected-capacity gain.  The pressure
Hessian can balance affine trace-free strain locally, and the CZ estimate is
signed or norm-equivalent attachment rather than a strict positive selected-tail
decay.  The pressure-Hodge capacity route remains equivalent to the current
root-reserve hinge unless it proves a strict capacity gain.

## 5. Classification

| Standard criterion | Gold-route role |
| --- | --- |
| Serrin / ESS endpoint | continuation consumer after a critical norm is produced |
| BKM / strain-clock criterion | material-record readout; equivalent in strength to controlling the clock |
| CKN epsilon regularity | local smallness consumer; does not rule out a single laminar terminal chain |
| CZ pressure ellipticity | same-carrier attachment; no one-sided strict tail gain |
| Energy interpolation \(L^{10/3}\) | velocity-side support only |

## 6. Result

No standard regularity criterion currently installed in the repo proves
`AdjointSelectedCapacityGain.A`.

They remain valid support anchors only after they are kept in their correct
roles: attachment, readout, or consumer.  The live Gold proof still needs the
strict selected-capacity/root-reserve gain:

```math
\sum_{\ell\ge0}2^\ell\nu_\ell<\infty.
```

This prevents the standard criteria from being promoted into proof force unless
one of them is supplemented by a genuine original-data estimate that beats the
selected half-barrier.
