# Door 1 Minimal Zeno Donor Chain Trace Dichotomy Attempt

Date: 2026-06-18

Status: direct attempt on `NoFreeTerminalZenoDonorChain.A`; not closed.  The
attempt sharpens the infinite donor-chain atom to a terminal-trace compactness
/ defect-visibility dichotomy.

Role: continue the Door 1 proof after
`mpp-forward-gold-door1-no-free-terminal-zeno-donor-chain-20260618.md`.

## Target

The live Door 1 blocker is

```math
\boxed{
\text{NoFreeTerminalZenoDonorChain.A}.
}
\tag{MZ.1}
```

The finite donor graph is available only under the conditional payment package:

```math
\text{ASAC.A}
+
\text{PositivePairWeightDefectCharge.A}
+
\text{ProjectedCutoffLedger.A}
+
\text{LegalBoundaryLedger.A}
+
\text{LocalDonorBalance.A}
+
\text{EntranceLeafDecay.A}
\Longrightarrow
\text{TerminalDonorGraphDecomposition.A}
\tag{MZ.2}
```

With that package installed, the remaining implication is

```math
\text{TerminalDonorGraphDecomposition.A}
+
\text{NoFreeTerminalZenoDonorChain.A}
\Longrightarrow
\text{TerminalSignedSaturation.A}.
\tag{MZ.2a}
```

So this attempt starts only with the infinite same-fluid internal donor chain:

```math
D_0\to D_1\to D_2\to\cdots,
\qquad
r_m\downarrow0,
\qquad
\sum_m r_m^2<\infty,
\tag{MZ.3}
```

carrying inherited selected positive native source residue.

## Checked installed facts

The older no-free-sink surface

```text
mcp-terminalzenorefillnofreesink-a_ind-0238bb3507.md
```

already identifies the same obstruction.  It says the branch closes only by

```math
\text{LocalPositiveSourceCarleson.A / PositiveRemainderDepletion.A},
\tag{MZ.4}
```

or

```math
\text{PositiveActiveCarlesonReserve.A},
\tag{MZ.5}
```

or

```math
\text{ZenoBoundedClass}_{B}\text{.A}
+
\text{ZenoResidueLiouville}_{B}\text{.A}.
\tag{MZ.6}
```

The compactness half is installed:

```math
\text{ZenoCompactnessExtraction.A}.
\tag{MZ.7}
```

It gives an ancient local suitable source-residue limit

```math
(u_\ast,p_\ast,\mu_\ast^{src})
\tag{MZ.8}
```

with

```math
\mu_\ast^{src}(Q_1^-)\ge c_0>0.
\tag{MZ.9}
```

The non-Carleson temporal route is also checked: finite `L^1_s` source mass
does not rule out a terminal atom.  The model

```math
g_m(s)=m\,1_{(-1/m,0]}(s)
\tag{MZ.10}
```

remains compatible with the installed source currencies.

## Minimal unpaid chain setup

Assume `(MZ.1)` fails after the conditional finite-graph payment package in
`(MZ.2)` has been supplied.  After passing to a minimal unpaid chain, the
following quantities are exhausted along the selected branch:

```math
\mathcal L_m+\mathcal P_m+\mathcal E_m\to0.
\tag{MZ.11}
```

Here:

```text
L_m = legal spill/cutoff/pressure/collar/projection losses,
P_m = retained signed partner deficit after the proved ASAC/positive-pair-weight
      payment hypotheses in (MZ.2),
E_m = finite donor / entrance depletion residue.
```

If the ASAC/positive-pair-weight payment hypotheses are not supplied, this note
does not reduce Door 1 to the infinite Zeno chain; it returns to the retained
signed-partner payment gate.

The selected positive source survives:

```math
\mu_m^{src}(Q_1^-)\ge c_0>0.
\tag{MZ.12}
```

The point of minimality is not to add a new estimate.  Under the conditional
finite-graph payment package, it removes those exits from the branch so that any
remaining obstruction must be visible as terminal trace failure, modulation
drift, defect measure, or zero-flux profile production.

## First split: temporal source support

If the minimal branch has a temporal anti-atom modulus,

```math
\mu_m^{src}(B_R\times[-\varepsilon,0])
\le
\omega_R(\varepsilon)+o_m(1),
\qquad
\omega_R(\varepsilon)\downarrow0,
\tag{MZ.13}
```

then `TemporalNonAtomicSource.A` holds and the Zeno source-residue route closes.

This is exactly the source-control fork.  It is not installed.

If `(MZ.13)` fails, the checked no-earlier-source support reduces the branch to
a terminal source atom:

```math
\mu_\ast^{src}(B_R\times\{0\})>0
\tag{MZ.14}
```

for some fixed `R`, with zero heat-time participation:

```math
\lim_m
\int_{B_R\times[-R^2,0]}
(-s)\,d\mu_m^{src}
=0.
\tag{MZ.15}
```

This is only a classification.  It does not by itself contradict fixed
positive-viscosity Navier-Stokes.

## New pressure point: terminal trace compactness

The minimal-chain formulation leaves the following exact theorem target.

```math
\boxed{
\text{MinimalZenoTerminalTraceCompactness.A}
}
\tag{MZ.16}
```

For the rescaled minimal donor chain, suppose the terminal traces satisfy

```math
u^{(m)}(\cdot,0)\to u_\ast(\cdot,0)
\quad\text{strongly in }L^2_{loc},
\tag{MZ.17}
```

and the selected local pre-Cauchy source carrier is trace-continuous under this
convergence.  Then no positive native source atom can remain at `s=0`:

```math
\mu_\ast^{src}(B_R\times\{0\})=0.
\tag{MZ.18}
```

This would discharge the terminal atom without importing
`LocalPositiveSourceCarleson.A`.

## Why the trace route does not close from installed inputs

The available compactness gives strong convergence in spacetime:

```math
u^{(m)}\to u_\ast
\quad\text{strongly in }L^2_{loc}(Q_R^-),
\tag{MZ.19}
```

plus weak gradient and pressure convergence.  It does not give the terminal
trace convergence `(MZ.17)` on the selected endpoint time.

Weak `L^2_{loc}` trace continuity is not enough for the positive-part native
source carrier.  The carrier is localized, projected, weighted, and then
positive-part selected.  A defect can survive exactly at `s=0` while spacetime
compactness remains valid on every open interval `[-R^2,-a]`.

Thus the trace route reduces to a real new theorem:

```math
\boxed{
\text{MinimalZenoTerminalTraceCompactness.A}.
}
\tag{MZ.20}
```

## If terminal trace compactness fails

Failure of `(MZ.17)` is not an invisible donor-chain event.  It means the
minimal Zeno chain has one of the following residual objects:

```text
terminal trace defect,
modulation drift,
selector/profile switching,
renormalized source residue,
annular defect measure.
```

The needed visibility theorem is:

```math
\boxed{
\text{MinimalZenoTraceDefectVisibility.A}.
}
\tag{MZ.21}
```

The exact target is: failure of `(MZ.17)` for a minimal unpaid chain produces a
renormalized residue functional `mathfrak R` and a stress-flux number `Phi_*`
on the same selected terminal trace.  The residue then splits by `Phi_*`.

### Nonzero flux branch

If the visible residue has

```math
\Phi_\ast\ne0,
\tag{MZ.22}
```

then the branch returns to Door 1 only after the minimal-chain native carrier
identification is proved:

```math
\boxed{
\text{MinimalChainProjectedResidueIdentity.A}.
}
\tag{MZ.23}
```

This is narrower than the original `ProjectedLocalPreCauchyResidueIdentity.A`
because retained partners, legal exits, pair-weight defects, and finite donor
branches have been removed only under the conditional payment package `(MZ.2)`.

### Zero flux branch

If

```math
\Phi_\ast=0,
\tag{MZ.24}
```

then the branch is exactly the Door 2 object.  To use the zero-flux Landau
consumer, the minimal chain must produce a fixed stationary `(-1)`-homogeneous
profile.  The needed theorem is:

```math
\boxed{
\text{MinimalZenoProfileProduction.A}.
}
\tag{MZ.25}
```

Its internal content is the same Door 2 production problem:

```math
\text{ZenoNoDriftUniqueTangent.A}
+
\text{RenormalizedZenoStationarity.A}
+
\text{DefectMeasureEvacuation.A}
+
\text{HomogeneityExtraction.A}.
\tag{MZ.26}
```

The minimal-chain framing may reduce drift by removing legal exits and finite
donor switching, but it does not itself prove no-drift or stationarity.

## Resulting dichotomy

The direct attempt gives the conditional reduction:

```math
\boxed{
\begin{aligned}
&\text{MinimalZenoTerminalTraceCompactness.A}\\
&\quad\vee\,
\big(
\text{MinimalZenoTraceDefectVisibility.A}
+\text{MinimalChainProjectedResidueIdentity.A}
\big)\\
&\quad\vee\,
\big(
\text{MinimalZenoTraceDefectVisibility.A}
+\text{MinimalZenoProfileProduction.A}
\big)
\end{aligned}
\Longrightarrow
\text{NoFreeTerminalZenoDonorChain.A}.
}
\tag{MZ.27}
```

Plainly: the minimal infinite chain must either lose its terminal source by
strong trace compactness, show a nonzero flux/native-carrier residue, or become
the zero-flux Zeno profile-production problem.

## Verdict

`NoFreeTerminalZenoDonorChain.A` is not proved here.

The useful new pressure point is:

```math
\boxed{
\text{MinimalZenoTerminalTraceCompactness.A}
}
\tag{MZ.28}
```

or, when trace compactness fails,

```math
\boxed{
\text{MinimalZenoTraceDefectVisibility.A}.
}
\tag{MZ.29}
```

This is the first formulation in which Door 1 and Door 2 genuinely meet: the
unpaid Door 1 chain is either killed by terminal trace compactness or becomes a
visible Zeno defect, whose zero-flux branch is exactly Door 2 profile
production.
