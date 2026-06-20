# Positive Atlas Common-Nodal Closure Test

Date: 2026-06-20

## Status

Direct route test complete.  A finite positive partition of unity kills the
common nodal set algebraically, but it does not close the Door 2 lobe route
unless those positive atlas tests also feed the same stress/modulation residue
identity as the finite Door 2 mode tests.

The route is useful only as a bridge into a test-enriched same-shadow residue
identity.  By itself it sees the native source carrier but does not pay the
terminal source atom.

## 1. Positive atlas algebra

Let `F_m^{src}` be the selected positive source packet family and let

```math
\mu_m^+(P):=[q_m(P)]_+.
\tag{PAC.1}
```

Assume a finite nonnegative packet atlas

```math
0\le \chi_a(P)\le1,
\qquad
a=1,\dots,N_\chi,
\tag{PAC.2}
```

with exact coverage on the selected source family:

```math
\sum_{a=1}^{N_\chi}\chi_a(P)=1
\qquad
\text{for every }P\in F_m^{src}.
\tag{PAC.3}
```

Then, for every packet `P`,

```math
\mu_m^+(P)
=
\sum_{a=1}^{N_\chi}[q_m(P)\chi_a(P)]_+.
\tag{PAC.4}
```

Indeed, if `q_m(P)>0`, then the right side is
`q_m(P)\sum_a\chi_a(P)=q_m(P)`.  If `q_m(P)\le0`, both sides are zero.

Summing gives the exact identity

```math
\sum_{P\in F_m^{src}}\mu_m^+(P)
=
\sum_{a=1}^{N_\chi}
\sum_{P\in F_m^{src}}
[q_m(P)\chi_a(P)]_+.
\tag{PAC.5}
```

So a positive atlas has no nodal loss.  It sees the entire selected positive
source carrier.

## 2. Why this does not close the Door 2 mode route

The Door 2 finite modes are not introduced only to cover the source.  They are
introduced to read modulation or stress forcing through a downstream identity.
Replacing them by arbitrary nonnegative coverage tests changes the object being
read.

For an atlas test `chi_a`, the needed identity is

```math
\sum_{P\in F_m^{src}}q_m(P)\chi_a(P)
=
\mathcal R_{m,a}
-
\operatorname{Legal}_{m,a}
-
o_m(1),
\tag{PAC.6}
```

where `R_{m,a}` is a residue already controlled by the stress-flux or
renormalized modulation equation.  Current Door 2 inputs do not install
`(PAC.6)` for arbitrary positive atlas tests.

Without `(PAC.6)`, `(PAC.5)` only restates the native positive carrier.  It
does not prove that the carrier is paid by legal ledgers, source-square
reserve, pressure-corrected no-waste, or rigid zero-flux profile production.

## 3. Exact obstruction after adjoining atlas tests

One can adjoin the positive atlas tests to the finite mode family:

```math
\{\psi_i\}_{i=1}^{N_{mode}}
\quad\leadsto\quad
\{\psi_i\}_{i=1}^{N_{mode}}\cup\{\chi_a\}_{a=1}^{N_\chi}.
\tag{PAC.7}
```

Then the common nodal set of the enlarged family is empty on `F_m^{src}` up to
legal spill, because `(PAC.3)` implies some `chi_a(P)\ge 1/N_\chi` for every
selected source packet.

The cost is that the enlarged family is no longer a pure finite modulation
dual family.  The enlarged route requires the atlas tests to satisfy the same
same-shadow residue identity as the mode tests:

```math
\boxed{
\text{PositiveAtlasTestEnrichedResidueIdentity.A}.
}
\tag{PAC.8}
```

This is not supplied by `NondegenerateModulationJacobian.A`, because a
modulation-frame lower bound says that the original mode tests see tangent
directions.  It does not say that arbitrary positive packet atlas tests have a
controlled stress or modulation residue.

## 4. Relation to the older cap-bump route

The older finite cap/bump route tested whether predetermined positive bumps
receive source mass from total source mass, incompressibility, smooth transport,
or moment information.  That route failed: a selected source measure can avoid
a predetermined cap bump.

The positive-atlas route avoids that failure only by covering the whole selected
family.  That makes source visibility tautological.  The remaining burden moves
to the residue side: the atlas tests must be legal readout tests with a
controlled downstream residue.

So the old cap-bump obstruction and the present atlas obstruction are different
forms of the same rule:

```math
\text{finite positive tests help only after source support and residue readout
live on the same family.}
\tag{PAC.9}
```

## 5. Exact conditional closure supplied by the atlas

The positive atlas closes the common nodal part only under the following
additional bridge:

```math
\boxed{
\text{PositiveAtlasCoverage.A}
+
\text{PositiveAtlasTestEnrichedResidueIdentity.A}
+
\text{FiniteAtlasLegalSummability.A}
\Longrightarrow
\text{CommonModeNodalSourceEvacuation.A}.
}
\tag{PAC.10}
```

Here `PositiveAtlasCoverage.A` is `(PAC.2)`--`(PAC.3)`, and
`FiniteAtlasLegalSummability.A` is the bounded-overlap finite-sum statement for
the atlas tests.

But `PositiveAtlasTestEnrichedResidueIdentity.A` is exactly a test-enriched
version of the same-shadow residue wall:

```math
\text{PositiveAtlasTestEnrichedResidueIdentity.A}
\Leftarrow
\text{TestEnrichedMinimalChainResidueIdentity.A}
+
\text{NoFreeTerminalZenoDonorChain.A}
\tag{PAC.11}
```

at the present resolution.

## Verdict

The positive atlas is an exact way to remove nodal invisibility after the test
family is enlarged.  It is not an exact way to solve the gold obstruction,
because the enlarged tests lack the needed residue identity.

This route returns to the same live wall as the mode-residue branch:
`TestEnrichedMinimalChainResidueIdentity.A` plus
`NoFreeTerminalZenoDonorChain.A`, or an independent source-square/no-waste
theorem on the selected carrier.
