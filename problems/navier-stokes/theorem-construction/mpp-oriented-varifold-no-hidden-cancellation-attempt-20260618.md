# Oriented Varifold No Hidden Cancellation Attempt

Date: 2026-06-18

Status: direct no-hidden-cancellation proof fails.  A conditional polar-saturation
version is proved below, but that saturation is a new theorem-level input.

Role: audit the orientation-cancellation part of the proposed
`TerminalAnnularStressCurrentCompactness.A` package and map it to Door 1 signed
saturation / native positive source carrier.

## Checked Door 1 context

The exact theorem label `TerminalAnnularStressCurrentCompactness.A` is not
installed as a theorem-construction file or exact text in the checked
Navier-Stokes surfaces.  The closest governing Door 1 sources say:

```text
ProjectedLocalPreCauchyResidueIdentity.A
<= ProjectedStressTestCompatibility.A
 + StressAnnulusPacketPartition.A
 + WeightedLiftedSkewDefectLegal.A.
```

The sharp unpaid content of `WeightedLiftedSkewDefectLegal.A` is recorded as

```math
\boxed{\text{TerminalSignedSaturation.A}}
\qquad\text{or}\qquad
\boxed{\text{InternalDonorSinkDepletion.A}}.
```

After finite signed-current accounting, the remaining atom is

```math
\boxed{\text{NoFreeTerminalZenoDonorChain.A}},
```

with the newer direct attempt reducing it to terminal trace compactness or
visible trace-defect production.

## Target

Let the annular stress-current package carry three objects:

```math
T_n,\qquad \mu_n,\qquad \eta_n:=n_n\,\mu_n.
```

Here `T_n` is the signed oriented current, `mu_n` is the unsigned mass or
varifold base measure, and `eta_n` is the first orientation/normal moment.

The desired no-hidden-cancellation conclusion is stronger than current
compactness.  It asks that a terminal positive native source carrier cannot
survive inside `mu_n` while opposite orientations cancel in `T_n` or `eta_n`.

## What the pair proves

Assume

```math
\mu_n \rightharpoonup \mu,
\qquad
\eta_n=n_n\mu_n \rightharpoonup \eta,
\qquad
|n_n|=1.
```

Then

```math
\eta\ll\mu,
\qquad
\left|{d\eta\over d\mu}\right|\le 1
\quad \mu\text{-a.e.}
```

Proof.  For every compactly supported continuous vector test field `phi`,

```math
\left|\int \phi\cdot d\eta\right|
=\lim_n\left|\int \phi\cdot n_n\,d\mu_n\right|
\le \limsup_n\int |\phi|\,d\mu_n
=\int |\phi|\,d\mu.
```

Taking the supremum over all compactly supported continuous `phi` with
`|\phi|\le f` gives `|\eta|(f)\le\mu(f)` for every nonnegative
`f\in C_c`, hence `|\eta|\le\mu` by outer regularity of the finite Radon
measures.

This is only mass-compatible compactness.  It does not give

```math
|\eta|=\mu
```

and it does not identify the positive selected carrier.

## Countermodel

In `R^2`, take two oriented line segments collapsing onto the same segment:

```math
T_n
=\llbracket [-1,1]\times\{1/n\}, e_1\rrbracket
 -\llbracket [-1,1]\times\{-1/n\}, e_1\rrbracket.
```

Equivalently the lower sheet has orientation `-e_1`.  Let

```math
\mu_n
=\mathcal H^1\!\llcorner([-1,1]\times\{1/n\})
 +\mathcal H^1\!\llcorner([-1,1]\times\{-1/n\}),
```

and

```math
\eta_n
= e_1\,\mathcal H^1\!\llcorner([-1,1]\times\{1/n\})
 - e_1\,\mathcal H^1\!\llcorner([-1,1]\times\{-1/n\}).
```

Then

```math
T_n\rightharpoonup 0,
\qquad
\eta_n\rightharpoonup 0,
\qquad
\mu_n\rightharpoonup
2\,\mathcal H^1\!\llcorner([-1,1]\times\{0\}).
```

The boundary currents converge to zero as signed endpoint pairs, so this does
not violate current compactness.  The unsigned carrier survives, while the
signed orientation moment vanishes.

For the selector `ell=e_1`, the positive oriented part on the top sheet has
mass

```math
\int [\ell\cdot n_n]_+\,d\mu_n
=\mathcal H^1([-1,1]),
```

but the limiting first moment gives

```math
[\ell\cdot \eta]_+=0.
```

So `(T_n, mu_n, n_n mu_n)` records that mass survived and that the average
orientation canceled.  It does not recover or charge the positive selected
carrier.

The loss is not just a technicality.  Two different orientation distributions
can have the same `(mu, eta)` with different selected positive parts.  At a
single base point,

```math
{1\over2}\delta_{e_1}+{1\over2}\delta_{-e_1}
\quad\text{and}\quad
{1\over2}\delta_{e_2}+{1\over2}\delta_{-e_2}
```

both have the same base mass and zero first moment, but their `e_1`-positive
parts differ.

## Conditional theorem that does work

The minimal true statement is conditional:

```math
\boxed{\text{OrientedVarifoldNoHiddenCancellation.A}_{sat}}
```

Let

```math
W_n:=(x,n_n)_\#\mu_n
```

be the oriented paired measure on base point and orientation, and suppose

```math
W_n\rightharpoonup W,
\qquad
(\pi_x)_\#W=\mu,
\qquad
\int \xi\,dW_x(\xi)\,\mu(dx)=\eta.
```

If the terminal carrier is polar-saturated,

```math
|\eta|=\mu
\quad\text{on the selected terminal carrier},
```

then `W_x` is a Dirac mass for `mu`-a.e. `x`.  Hence no opposite-orientation
mixing remains in the limit, and for every selector `ell`,

```math
\int [\ell\cdot \xi]_+\,dW_x(\xi)\,d\mu(x)
=
\left[\ell\cdot {d\eta\over d\mu}\right]_+\,d\mu.
```

Proof.  Since `|\xi|=1`,

```math
\left|\int \xi\,dW_x(\xi)\right|
\le
\int |\xi|\,dW_x(\xi)=1.
```

Equality holds exactly when all orientations in the fiber point in one direction.
The polar-saturation hypothesis is exactly this equality for `mu`-a.e. `x`.
The positive-part identity follows from the Dirac disintegration.

This proves no hidden cancellation only after the saturation condition is
assumed.

## Door 1 interpretation

The current/mass package has the right two records:

```text
T_n or eta_n: signed flux / boundary / orientation,
mu_n: unsigned mass / curvature / compactness.
```

That pair prevents the proof from losing mass silently.  It does not prevent
the Door 1 failure mode where the native positive source carrier remains in
`mu_n` while its signed partner cancels in `T_n` or in the first moment
`eta_n`.

To make Door 1 spendable, the annular stress-current theorem needs one of the
following extra inputs:

```text
1. polar saturation: |eta| = mu on the selected terminal carrier;
2. full paired-orientation measure W with a positive cone lower bound;
3. edgewise terminal signed saturation:
   dpi^+(e) <= dpi^-(e^*) + dD_legal(e);
4. terminal trace compactness / trace-defect visibility that turns failure of
   saturation into a visible Door 1 or Door 2 residue.
```

Item 3 is exactly the Door 1 surface already named as
`TerminalSignedSaturation.A`.  After finite donor accounting, the live unproved
case remains `NoFreeTerminalZenoDonorChain.A`, equivalently the minimal terminal
trace compactness / trace-defect visibility problem.

## Final status

`(T_n, mu_n, n_n mu_n)` is not enough to prove no hidden cancellation.

The provable compactness statement is only

```math
\eta\ll\mu,\qquad |d\eta/d\mu|\le1.
```

The missing Door 1 theorem is a genuine noncancellation or paired-measure
theorem.  The clean minimal version is:

```math
\boxed{
\text{PairedOrientationCompactness.A}
+
\text{PolarSaturationOnSelectedCarrier.A}
\Longrightarrow
\text{OrientedVarifoldNoHiddenCancellation.A}.
}
```

Without `PolarSaturationOnSelectedCarrier.A` or an equivalent
`TerminalSignedSaturation.A` / terminal trace-defect theorem, orientation
cancellation can hide the terminal positive carrier.
