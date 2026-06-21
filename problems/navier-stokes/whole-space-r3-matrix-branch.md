# Whole-Space R3 Matrix Branch

## Status

Whole-space `R^3` matrix with the CM-facing branch now closed by dichotomy.

The direct positive export theorem `OriginalSmoothData_R3 => Tail.Hs_R3`
remains a stronger optional theorem. It is no longer the only way to close the
R3 branch for the CM contrapositive program, because a surviving exterior
source is now forced into Part or Field.

## Closed branch boundary

The current closed theorem-program surface is periodic:

```math
u_0\in C^\infty_\sigma(\mathbb T^3),
\qquad
\int_{\mathbb T^3}u_0\,dx=0
\Longrightarrow
u\in C^\infty([0,\infty)\times\mathbb T^3).
```

The following R3 branch must not be used as release evidence for that periodic surface.
It also does not change the current release authority, which remains blocked /
not-ready until the CM direction-alignment gate is discharged.

## R3 target

The desired whole-space theorem is

```math
u_0\in C^\infty_\sigma(\mathbb R^3)\cap H^s(\mathbb R^3),
\qquad s>5/2
\Longrightarrow
u\in C^\infty([0,\infty)\times\mathbb R^3).
```

The positive export theorem remains conditional:

```math
OriginalSmoothData_{R^3}+Tail.Hs_{R^3}
\Longrightarrow
TTU.A_{R^3}
\Longrightarrow
T_*=\infty.
```

The current CM-facing theorem is the dichotomy:

```math
OriginalSmoothData_{R^3}
\Longrightarrow
\bigl(Tail.Hs_{R^3}\bigr)
\quad\text{or}\quad
\bigl(\neg Pack_Q\vee \neg Part_{M,Q}\vee
\forall\rho>0\,\neg Field_{M,\rho,Q}\bigr).
```

Thus the whole-space branch has no remaining in-class nonsmooth third branch:
positive exterior tail vanishing supplies the usual export input, and exterior
tail survival is a CM Part/Field failure supporting `Exit(Q):=not Member(Q)`.

## Required R3 matrix nodes

| Node | Status | Role |
|---|---|---|
| `SCF_base_R3` | conditional/local | scale-critical moving-cylinder packet on `R^3` |
| `Pressure.R3` | conditional/local | Riesz pressure with local/far split |
| `Tail.L2_R3` | discharged | exterior finite-energy mass tightness |
| `Tail.Hs_R3` | optional-stronger-positive-export | exterior high-order tail tightness |
| `TailFace_R3^Hs` | closed-by-cm-dichotomy | high-frequency derivative escape at infinity lands in Part/Field |
| `READ.COVER_R3` | conditional | compact core plus tail exclusion |
| `DTC.Read_R3` | conditional | pointwise readout using Riesz pressure split |
| `TTU.A_R3` | conditional | whole-space terminal-tail uniformization |
| `Tower.Cont_R3` | conditional | compact-core tower plus exterior `H^s` tail implies continuation |
| `R3.Main` | closed-by-cm-contrapositive | whole-space terminal witness either exports by `Tail.Hs_R3` or exits by Part/Field |

## Live blocker

There is no remaining R3 closure blocker for the CM contrapositive route.

The still-open positive theorem

```math
OriginalSmoothData_{R^3}\Longrightarrow Tail.Hs_{R^3}
```

is a stronger direct export theorem. The current proof no longer needs that
positive estimate to prevent an R3 counterexample branch: exterior `L^2`
tightness plus the Duhamel source split show that any surviving high-order
exterior source is dyadic scale escape, and retained Part plus Field-window evidence is incompatible
with a fixed positive Field scale.

## Promotion rule

R3 promotion may use either branch of the installed dichotomy:

1. `Tail.Hs_R3` supplies the direct positive whole-space export input; or
2. `TailFace_R3^Hs` survival lands as
   `not Pack_Q`, `not Part_{M,Q}`, or `forall rho>0 not Field_{M,rho,Q}`.

The second branch is the CM contrapositive closure now installed by:

- `mpp-r3-tail-hs-duhamel-source-reduction-20260607.md`;
- `mpp-r3-exterior-source-dyadic-escape-cm-face-20260607.md`;
- `mpp-r3-exterior-dyadic-survivor-field-incompatibility-20260607.md`.
