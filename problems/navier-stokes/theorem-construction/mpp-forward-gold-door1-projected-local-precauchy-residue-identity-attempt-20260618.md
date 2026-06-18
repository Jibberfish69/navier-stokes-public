# Door 1 Projected Local Pre-Cauchy Residue Identity Attempt

Date: 2026-06-18

Status: Door 1 continuation; conditional closure proved; identity not installed.

Role: continue the repaired two-door gold packet after
`mpp-forward-gold-two-door-sharp-form-repair-20260618.md`.  The finite vector
selector is already paid.  This note tests the next Door 1 theorem:

```math
\boxed{
\text{ProjectedLocalPreCauchyResidueIdentity.A}
}
\tag{PLP.1}
```

This is forward-positive gold work, not CM contrapositive consumption.

## Current Door 1 state

The stress-flux identity gives the vector point-force residue

```math
-\nu\Delta U+\nabla\cdot(U\otimes U)+\nabla P=\Phi_0\delta_0.
\tag{PLP.2}
```

The finite selector lemma is solved:

```math
\max_{\ell\in\{\pm e_1,\pm e_2,\pm e_3\}}
[\ell\cdot\Phi_0]_+
\ge {|\Phi_0|\over\sqrt3}.
\tag{PLP.3}
```

The native source carrier is not the full projected stress divergence.  In the
checked source-pulse measure note it is

```math
\mu_{src,N}^+(P)
=
\int_{Q(P)}
\left[
\mathcal N_{preCauchy}^{loc}(u;P)
\right]_+
\,dxdt.
\tag{PLP.4}
```

Thus Door 1 now needs a signed representation of the projected stress residue
by the signed local pre-Cauchy carrier before the positive part is taken.

## Target identity

For the selector direction `\ell` chosen by `(PLP.3)`, the needed identity is:

```math
\boxed{
\sum_{P\in\mathcal F_N}
\int_{Q(P)}
\mathcal N_{preCauchy}^{loc}(u;P)\,dxdt
=
\ell\cdot\Phi_0
-\mathrm{Legal}_N
-o_N(1).
}
\tag{PLP.5}
```

Here `\mathcal F_N` must be the bounded-overlap same-fluid terminal active
family selected on the same branch, and `\mathrm{Legal}_N` must contain only
already routed pressure, cutoff, commutator, collar, projection, and
packetization losses.

## Conditional Door 1 closure

Assume `(PLP.5)`, with `\mathrm{Legal}_N+o_N(1)=o(1)` on the extracted terminal
branch after the legal ledger is paid.  Then

```math
\sum_{P\in\mathcal F_N}
\int_{Q(P)}
\left[
\mathcal N_{preCauchy}^{loc}(u;P)
\right]_+
\,dxdt
\ge
\left[
\sum_{P\in\mathcal F_N}
\int_{Q(P)}
\mathcal N_{preCauchy}^{loc}(u;P)\,dxdt
\right]_+.
\tag{PLP.6}
```

Combining `(PLP.5)` and `(PLP.6)` gives

```math
\sum_{P\in\mathcal F_N}
\int_{Q(P)}
\left[
\mathcal N_{preCauchy}^{loc}(u;P)
\right]_+
\,dxdt
\ge
[\ell\cdot\Phi_0-\mathrm{Legal}_N-o_N(1)]_+.
\tag{PLP.7}
```

Choosing `\ell` by `(PLP.3)` gives

```math
\sum_{P\in\mathcal F_N}
\mu_{src,N}^+(P)
\ge
{|\Phi_0|\over\sqrt3}
-\mathrm{Legal}_N-o_N(1).
\tag{PLP.8}
```

So `(PLP.5)` closes the `\Phi_0\ne0` door: nonzero critical stress flux forces
nonzero selected positive native source carrier.

## Direct proof attempt for the identity

Let

```math
T:=U\otimes U+P I-\nu\nabla U.
\tag{PLP.9}
```

The distributional stress equation says

```math
\nabla\cdot T=\Phi_0\delta_0.
\tag{PLP.10}
```

Testing against a localized constant vector `\chi_R\ell` gives the full-stress
projection

```math
-\int T:\nabla(\chi_R\ell)\,dy
\longrightarrow
\ell\cdot\Phi_0
\tag{PLP.11}
```

as the annulus collapses to the origin, up to the sign convention in `(PLP.2)`.
This is the part supplied by the stress-flux identity.

To get `(PLP.5)`, one must prove that the packetized signed pre-Cauchy source
is exactly this full-stress projection modulo legal terms:

```math
\sum_{P\in\mathcal F_N}
\int_{Q(P)}
\mathcal N_{preCauchy}^{loc}(u;P)\,dxdt
=
-\int T:\nabla(\chi_R\ell)\,dy
-\mathrm{Legal}_N-o_N(1).
\tag{PLP.12}
```

This comparison is not installed.

## Why the comparison is not automatic

The installed localized pre-Cauchy split has the form

```math
\mathcal N_{preCauchy}^{loc}(u;P)
=
\partial_t\mathcal E_P
+\mathcal D_P
+\operatorname{div}_{\Phi}\mathcal J_P
+\mathcal R_P.
\tag{PLP.13}
```

After legal routing, the remaining interior obstruction is the active
strain/source carrier

```math
\mathcal R_P^{main}
=
\chi_P\langle S_{<j_P}^{loc}w_{j_P},w_{j_P}\rangle.
\tag{PLP.14}
```

This is not visibly the same object as the full projected momentum stress
divergence in `(PLP.11)`.  The stress-flux projection is vectorial and uses the
full stress tensor.  The native carrier is a scalar one-sided source packet
after localization, cutoff, projection, active-window selection, lifted
reduction, packetization, and same-fluid restriction.

The nearby signed-current audit reaches the same wall.  Bare dyadic skew
current is available before terminal operations, but the needed localized
comparison is exactly the open theorem

```math
\text{WeightedLiftedSkewDefectLegal.A},
\tag{PLP.15}
```

or its split into

```math
\text{PairWeightFlattening.A}
+
\text{LiftedSkewCommutator.A}
+
\text{ProjectedCutoffLedger.A}.
\tag{PLP.16}
```

Those theorems are not installed.  Without them, the gap between the full
stress projection and the native pre-Cauchy carrier can be of the same order as
the positive source wall.

## Exact reduction

Door 1 has now sharpened from

```math
\text{ProjectedStressFluxNativeCarrierIdentification.A}
\tag{PLP.17}
```

to

```math
\boxed{
\text{ProjectedLocalPreCauchyResidueIdentity.A}.
}
\tag{PLP.18}
```

More explicitly:

```math
\text{ProjectedLocalPreCauchyResidueIdentity.A}
\Leftarrow
\text{ProjectedStressTestCompatibility.A}
+
\text{StressAnnulusPacketPartition.A}
+
\text{WeightedLiftedSkewDefectLegal.A}.
\tag{PLP.19}
```

where:

```text
ProjectedStressTestCompatibility.A:
the chosen constant-vector stress test is an admissible licensed local
pre-Cauchy source test on the same terminal branch.

StressAnnulusPacketPartition.A:
the collapsing stress annulus is covered by the bounded-overlap same-fluid
active family with only legal leakage.

WeightedLiftedSkewDefectLegal.A:
the localized weighted/lifted/projected/cutoff packet source differs from the
bare stress-current projection only by legal losses.
```

The first two are geometry/test-compatibility requirements.  The third is the
known signed-current obstruction.

## Verdict

The conditional implication is proved:

```math
\text{ProjectedLocalPreCauchyResidueIdentity.A}
\Longrightarrow
\Phi_0\ne0\text{ Door 1 closes.}
\tag{PLP.20}
```

The identity itself is not proved from installed inputs.  The remaining Door 1
blocker is exactly:

```math
\boxed{
\text{ProjectedLocalPreCauchyResidueIdentity.A}.
}
\tag{PLP.21}
```

This is narrower than `ProjectedStressFluxNativeCarrierIdentification.A` and is
the next productive Door 1 proof target.
