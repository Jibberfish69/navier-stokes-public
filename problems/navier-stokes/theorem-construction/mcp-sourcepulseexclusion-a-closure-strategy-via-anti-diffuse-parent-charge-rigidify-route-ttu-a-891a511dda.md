# SourcePulseExclusion.A closure strategy via anti-diffuse parent charge-rigidify route

## Recommendation

Close `SourcePulseExclusion.A` through the localized ancestry route, with the new theorem placed at the anti-diffuse parent step.

The clean target is:

```math
ParentConcentrationOrDiffuseCharge.A.
```

This is the concrete replacement for the broader aliases `active-window Carleson`, `square-source`, `source-parent finite reserve`, and `MSC.Localize^{src}+Ancient.NoPulse^{src}`.

## Starting point

Use the localized core presentation:

```math
\neg SourcePulseExclusion.A
\Longrightarrow
P^0=(Q^\Phi,j,I,\mu^{src},\mu^{mix},\gamma,\mathfrak F),
```

where `P^0` is already a same-fluid heat-scale source-balanced child pulse. This bypasses the older need for `MSC.Localize^{src}`.

Retain the localized pre-Cauchy nonlinear source

```math
\mathcal S_P^{nl}
=
\int_{Q_P^\Phi}
\mathcal N(u_{<j},u_{\sim j},u_{>j})\chi_P\,dxdt.
```

This object preserves the child cylinder and the same-fluid geometry.

## Step 1: edge disintegration

Decompose the child-feeding source into legal predecessor packets:

```math
\mathcal N=
\sum_{\alpha\in\mathcal A(P)}\mathcal N_\alpha(P^-_\alpha\to P).
```

Define the positive source-parent edge measure

```math
d\pi_P(P^-_\alpha)
:=
\bigl(\mathcal N_\alpha(P^-_\alpha\to P)\bigr)_+.
```

The current surfaces support this as `EdgeDisintegrate.A`: source recovery and same-fluid edge fidelity are available once the localized pre-Cauchy source is used.

## Step 2: prove the new anti-diffuse theorem

The required new theorem is:

```math
\boxed{
ParentConcentrationOrDiffuseCharge.A:
\text{ every positive source-parent measure either concentrates on boundedly many legal predecessors or its diffuse part pays a finite route reserve.}
}
```

In formula form, for each child pulse `P`, prove that either

```math
\exists\mathcal C(P)\subset\mathsf{Pred}(P),
\qquad
|\mathcal C(P)|\le B,
\qquad
\pi_P(\mathcal C(P))\ge c\pi_P(\mathsf{Pred}(P)),
```

or

```math
\pi_P(\mathsf{Pred}(P)\setminus\mathcal C(P))
\le Charge_P+Reserve_P+o(1),
```

with a globally summable reserve over terminal pulses.

This is the exact theorem that converts aggregate source recovery into either a comparable legal parent pulse or a finite charge expenditure.

## Step 3: close the concentrated branch

If parent concentration holds, select a legal predecessor `P^-` with comparable normalized source/mixed mass. Iterate.

The iteration then needs one of:

```math
AncestryDrain.A,
```

or

```math
AncestryCompactBound.A+SourceResidueLiouville.A.
```

The first drains an infinite ancestry chain by a monotone finite reserve. The second extracts a bounded ancient source-residue limit and rules it out in the source-residue class.

## Step 4: close the diffuse branch

If parent concentration fails, spend the diffuse part into the finite reserve supplied by `DiffuseParentCharge.A`. Summing over pulses contradicts persistent source-pulse mass.

This branch is the charge route in precise form. It is stronger than raw finite energy because it prices high-branching source diffusion, rather than total mass alone.

## Step 5: downstream propagation

Once the two branches above are closed:

```math
EdgeDisintegrate.A+AntiDiffuseParent.A
\Longrightarrow SourceParent.Measure.
```

Then

```math
SourceParent.Measure+
(AncestryDrain.A\vee AncestryCompactBound.A+SourceResidueLiouville.A)
\Longrightarrow SourcePulseExclusion.A.
```

Finally:

```math
SourcePulseExclusion.A\Longrightarrow Jump_{avg}\Rightarrow\bot
\Longrightarrow PCTP.hard/TTU.A.
```

## Why this is the best closure route

The remove route requires a direct sign/depletion theorem for the active positive part. The existing surfaces show no sign principle for `\omega\cdot S\omega` or the weighted lifted source after terminal selection.

The pure charge route requires active-window Carleson or square-source control. The active-shell source normalization surfaces show that this is equivalent to ruling out source-balanced pulses.

The localized ancestry route keeps the source geometry. It reduces the missing content to a precise finite-branching or diffuse-charge dichotomy on the positive parent measure. This is the most local and least alias-dependent theorem left.

## Closure target to work next

Prove:

```math
ParentConcentrationOrDiffuseCharge.A.
```

A viable proof should use one of two new mechanisms:

```math
\text{reverse-Hölder / inverse Littlewood-Paley concentration for positive localized source edges,}
```

or

```math
\text{diffuse parent entropy charged by a square-source / active-window Carleson reserve.}
```

That theorem is the shortest precise route from current materials to `SourcePulseExclusion.A`.