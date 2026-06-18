# Normalized Localized Projector Kernels Absorb Overlap Into Retained Cover Geometry

## Status

Active theorem-facing coarse globalization note for the localized-projector
exact-potential branch.

Role: port the older `EP.10ai / EP.10aj` coarse overlap reduction onto the
current localized-projector packet.

## Purpose

The finer localized-projector overlap route now runs through

```math
\texttt{kernel mismatch}
\Longrightarrow
\texttt{localizer modulus}
\Longrightarrow
\texttt{overlap center spacing}.
\tag{NLP.0}
```

That is an honest fine route. But there is also a coarser theorem-safe route:
normalize each local kernel to a probability density. Then any overlap kernel
mismatch is automatically at most `2`, so the overlap price is absorbed into the
same retained cover geometry packet used elsewhere on the exact-potential
branch.

This note records that coarse route explicitly.

## Normalized Local Kernel Realization

Keep one local synchronization family `\{\Lambda_\ell\}_\ell`. On each local
window, let

```math
\widetilde S_{J,\ell}(z)
=
\int w_\ell(z;p)\,P_J(z,p)\,d\bar\nu_{J,z}(p),
\qquad
m_\ell(z):=\int w_\ell(z;p)\,d\bar\nu_{J,z}(p)>0.
\tag{NLP.1}
```

Define the normalized kernel and normalized local surrogate

```math
\vartheta_\ell(z;p):=\frac{w_\ell(z;p)}{m_\ell(z)},
\qquad
\overline S_{J,\ell}(z):=\frac{\widetilde S_{J,\ell}(z)}{m_\ell(z)}.
\tag{NLP.2}
```

Then

```math
\vartheta_\ell(z;p)\ge 0,
\qquad
\int \vartheta_\ell(z;p)\,d\bar\nu_{J,z}(p)=1,
\tag{NLP.3}
```

and

```math
\Pi_{\max}(\overline S_{J,\ell}(z))
=
\Pi_{\max}(\widetilde S_{J,\ell}(z)).
\tag{NLP.4}
```

So normalization does not change the local projector field.

## Proposition `NLP.A` (normalized kernels make the overlap price universal)

Assume that on every active overlap `\Lambda_\ell\cap\Lambda_{\ell'}` the
normalized local surrogates `\overline S_{J,\ell}` and
`\overline S_{J,\ell'}` have simple top gaps bounded below by
`\overline\gamma_\ast>0`.

Then on every active overlap,

```math
\int
\bigl|
\vartheta_\ell(z;p)-\vartheta_{\ell'}(z;p)
\bigr|
d\bar\nu_{J,z}(p)
\le 2,
\tag{NLP.5}
```

hence

```math
d_{\mathrm{proj}}\!\bigl(
\Pi_{\max}(\widetilde S_{J,\ell}(z)),
\Pi_{\max}(\widetilde S_{J,\ell'}(z))
\bigr)^2
\le
\frac{16}{\overline\gamma_\ast^2}.
\tag{NLP.6}
```

### Proof

`(NLP.5)` is the total-variation bound between two probability densities.
Apply
[localized-projector-kernel-mismatch-implies-overlap-surrogate.md](/Users/thomasbirnie/Workspace/ToE/Research-Consolidation/problems/navier-stokes/theorem-construction/localized-projector-kernel-mismatch-implies-overlap-surrogate.md)
with `\mathfrak k_J=2`, then use `(NLP.4)`. ∎

## Corollary `NLP.B` (bounded multiplicity absorbs overlap into overlap measure)

Assume the local synchronization family has bounded multiplicity

```math
\sum_\ell \mathbf 1_{\Lambda_\ell}(z)\le N_\Lambda
\qquad
\text{for a.e. }z.
\tag{NLP.7}
```

Then

```math
\sum_{(\ell,\ell')\in\mathcal O_\Lambda}
\nu_J(\Lambda_\ell\cap\Lambda_{\ell'})
\le
N_\Lambda^2\,\nu_J\!\Bigl(\bigcup_\ell \Lambda_\ell\Bigr),
\tag{NLP.8}
```

and the overlap contribution satisfies

```math
\sum_{(\ell,\ell')\in\mathcal O_\Lambda}
\operatorname*{ess\,sup}_{\Lambda_\ell\cap\Lambda_{\ell'}}
d_{\mathrm{proj}}\!\bigl(
\Pi_{\max}(\widetilde S_{J,\ell}),
\Pi_{\max}(\widetilde S_{J,\ell'})
\bigr)^2

\nu_J(\Lambda_\ell\cap\Lambda_{\ell'})
\le
\frac{16N_\Lambda^2}{\overline\gamma_\ast^2}\,
\nu_J\!\Bigl(\bigcup_\ell \Lambda_\ell\Bigr).
\tag{NLP.9}
```

### Proof

The geometric counting `(NLP.8)` is exactly the bounded-multiplicity
estimate. Combine it with `(NLP.6)`. ∎

## Corollary `NLP.C` (subordination to retained windows)

Assume further that each local synchronization window `\Lambda_\ell` lies over
one retained exact-potential box `\mathcal J_{k(\ell)}\times I_{k(\ell)}`, and
at most `M_{\mathrm{sub}}` local synchronization windows lie over any one such
retained box. Then

```math
\nu_J\!\Bigl(\bigcup_\ell \Lambda_\ell\Bigr)
\le
\sum_\ell \nu_J(\Lambda_\ell)
\le
M_{\mathrm{sub}}
\sum_k |I_k|\,\mu_J^{pair}(\mathcal J_k).
\tag{NLP.10}
```

Consequently

```math
\sum_{(\ell,\ell')\in\mathcal O_\Lambda}
\operatorname*{ess\,sup}_{\Lambda_\ell\cap\Lambda_{\ell'}}
d_{\mathrm{proj}}\!\bigl(
\Pi_{\max}(\widetilde S_{J,\ell}),
\Pi_{\max}(\widetilde S_{J,\ell'})
\bigr)^2

\nu_J(\Lambda_\ell\cap\Lambda_{\ell'})
\le
\frac{16N_\Lambda^2M_{\mathrm{sub}}}{\overline\gamma_\ast^2}
\sum_k |I_k|\,\mu_J^{pair}(\mathcal J_k).
\tag{NLP.11}
```

### Proof

Insert `(NLP.10)` into `(NLP.9)`. ∎

## Interpretation

This gives a second honest localized-projector overlap route.

The fine route keeps track of actual kernel closeness and reduces overlap to a
localizer-modulus / center-spacing theorem.

The coarse route normalizes the local kernels and absorbs overlap into retained
cover geometry:

```math
\boxed{
\texttt{normalized local kernels}
}
\quad+\quad
\boxed{
\texttt{bounded multiplicity + retained cover geometry}
}
\Longrightarrow
\boxed{
\texttt{no separate overlap theorem}
}.
\tag{NLP.12}
```

So the localized-projector branch now has two honest overlap mechanisms on
disk:

1. the finer localizer-modulus / center-spacing route;
2. the coarser normalized-kernel / retained-cover route.

The routing note
[localized-projector-coarse-overlap-is-f1-consumer.md](/Users/thomasbirnie/Workspace/ToE/Research-Consolidation/problems/navier-stokes/theorem-construction/localized-projector-coarse-overlap-is-f1-consumer.md)
sharpens the exact downstream handoff: in coarse mode this retained-cover price
lands on the bounded-overlap side `(F.1)` of the retained-family packet, not on
the observation/error series `(F.6)`-`(F.7)`.
The further note
[localized-projector-coarse-overlap-is-retained-cover-counting-consumer.md](/Users/thomasbirnie/Workspace/ToE/Research-Consolidation/problems/navier-stokes/theorem-construction/localized-projector-coarse-overlap-is-retained-cover-counting-consumer.md)
records the exact primitive consumer below that split: the scalar retained-cover
counting term `\sum_k |I_k|\,\mu_J^{pair}(\mathcal J_k)`.
The next routing note
[localized-projector-coarse-overlap-is-familywise-summability-consumer.md](/Users/thomasbirnie/Workspace/ToE/Research-Consolidation/problems/navier-stokes/theorem-construction/localized-projector-coarse-overlap-is-familywise-summability-consumer.md)
identifies the exact upstream theorem wall named in the older synchronization
packet: the same familywise summability theorem that prices the retained drift
windows.
The further reduction in
[localized-projector-coarse-route-reduces-to-force-ceiling-plus-familywise-summation.md](/Users/thomasbirnie/Workspace/ToE/Research-Consolidation/problems/navier-stokes/theorem-construction/localized-projector-coarse-route-reduces-to-force-ceiling-plus-familywise-summation.md)
shows that once the entrance side is reduced by `EP.10ab`, the coarse
localized-projector route lands exactly on the two-packet `EP.10af` wall.
The sharper localized-projector refinement in
[localized-projector-coarse-route-bypasses-force-ceiling-via-angular-forcing-ledger.md](/Users/thomasbirnie/Workspace/ToE/Research-Consolidation/problems/navier-stokes/theorem-construction/localized-projector-coarse-route-bypasses-force-ceiling-via-angular-forcing-ledger.md)
then replaces that inherited wall by the actual current-packet one: the local
force-ceiling theorem is bypassed by `AFR.A/B/G`, leaving only the familywise
source-summation theorem genuinely new on the coarse route.

This note does **not** claim that the retained-cover / bounded-overlap packet is
already closed on the current localized-projector branch. It only shows that if
that packet is admitted, overlap is no longer a separate theorem debt.
