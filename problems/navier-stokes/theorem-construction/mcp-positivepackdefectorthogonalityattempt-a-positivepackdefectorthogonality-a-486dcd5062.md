# Positive Pack Defect Orthogonality Attempt

## Target

Attempt to prove:

```text
PositivePackDefectOrthogonality.A
```

Desired statement:

```text
For a terminal profile decomposition, selected positive Pack defect decouples across profiles: cross-profile positive contributions vanish, are absorbable, reduce to endpoint-strip boundary exit, or belong to one genuine profile.
```

This theorem is the remaining non-strip blocker behind Pack functional stability and full Pack recertification.

## Setup

Let a terminal sequence decompose into profiles:

```text
u_m = sum_alpha U_alpha^m + r_A^m.
```

The Field-window support functional is a selected positive local object.  For each
admissible terminal selector `sigma`, let `F_sigma(u)` be the signed local
low-high / source / tree expression, and define

```text
P_sigma(u):=[F_sigma(u)]_+.
```

For the selected terminal record `sigma_m`, the tested quantity is

```text
P_{sigma_m}(u_m)=[F_{sigma_m}(u_m)]_+.
```

The needed decoupling is stronger than ordinary profile orthogonality:

```text
F_{sigma_m}(u_m)
=
sum_alpha F_{sigma_m}(U_alpha^m)
+ C_{sigma_m}^{cross}(m,A)
+ R_{sigma_m}(m,A),
```

and hence

```text
P_{sigma_m}(u_m)
<=
sum_alpha P_{sigma_m}(U_alpha^m)
+ |C_{sigma_m}^{cross}(m,A)|
+ |R_{sigma_m}(m,A)|.
```

The theorem needs the cross and remainder terms to vanish uniformly over the
admissible selected terminal records, or else to be assigned to one genuine
profile or to endpoint-strip boundary exit.

## What ordinary orthogonality gives

Ordinary profile orthogonality controls signed or unweighted expressions such as energy, some spacetime norms, and separated profile interactions before terminal positive selection.

It does not automatically control:

```text
positive-part extraction,
terminal window selection,
local cutoff,
pressure/Leray projection,
scale normalization,
same-witness selector choice.
```

Those operations can turn a small signed cross term into a selected positive contribution on the terminal window.

## Conditional theorem

A valid conditional form is:

```text
PositivePackDefectOrthogonality.conditional:
If cross-profile Pack contributions are asymptotically sign-cancelled before positive selection, or if the selector is stable enough to assign every nonzero positive terminal Pack defect to one profile, then Pack defect orthogonality holds.
```

Proof under the condition:

1. The decomposition separates self-profile pieces from cross-profile pieces.
2. The condition makes every positive selected cross-profile contribution negligible or assigns it to one profile.
3. The remainder is small in the Pack-functional topology.
4. Therefore nonzero terminal Pack defect is either profile-local, endpoint-strip boundary exit, or absent.

This proves only the conditional version.

## General failure point

The unconditional theorem needs:

```text
SelectedPackPositivePartDecoupling.A
```

or:

```text
CrossProfileTerminalSourceAtomExclusion.A
```

or:

```text
OneProfilePackDefectLocalization.A.
```

Current installed orthogonality does not provide this because it acts before
the exact positive selected Pack operation.  The missing quantitative form is

```text
lim_{A->infty} limsup_{m->infty}
sup_{sigma in Sigma_m}
(
|C_sigma^{cross}(m,A)|+|R_sigma(m,A)|
)
=0,
```

unless a nonzero selected positive cross-profile defect is routed to one
profile or to endpoint-strip boundary exit.

## Verdict

`PositivePackDefectOrthogonality.A` is not proved unconditionally.

A conditional version is proved under explicit selected-positive cross-term decoupling / one-profile localization.

## Final blocker for the Pack non-exclusion route

After the endpoint-strip branch, the remaining non-strip blocker is exactly this positive selected cross-profile problem, plus the affine/material fixed-readout problem already reduced separately.

Full Pack recertification therefore remains conditional until one of these is installed:

```text
SelectedPackPositivePartDecoupling.A,
CrossProfileTerminalSourceAtomExclusion.A,
OneProfilePackDefectLocalization.A,
AffineMaterialReadoutToFixedHs.A
```

## Route consequence

The Pack non-exclusion route made real progress by classifying the endpoint-strip branch and establishing conditional Pack recertification. It did not close the cross-profile positive Pack-defect branch. That branch is now the sharp non-strip mathematical target.
