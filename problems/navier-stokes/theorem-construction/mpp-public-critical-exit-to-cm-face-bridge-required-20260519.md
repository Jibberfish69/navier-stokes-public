# Public Critical Exit To CM Face Bridge

Date: 2026-05-19

## Status

Missing bridge statement. This file writes the exact theorem target; it does
not claim the theorem is proved.

## Point

The repo already has internal CM first-exit machinery. The missing public
analogue bridge is narrower:

```math
\text{public critical-class exit}
\Longrightarrow
\text{CM witness-face exit}.
```

Public critical-class exit means exit or concentration in a public class such
as

```math
L^\infty_tL^3_x,\qquad
\dot B^{-1+3/p}_{p,q},\qquad
H^{1/2},\qquad
L^{3,q},
```

or a dynamically restricted local critical norm.

CM witness-face exit means failure of one of the repo's three route-relative
faces on the same terminal object:

```math
\neg Pack_Q
\quad\vee\quad
\neg Part_{N,Q}
\quad\vee\quad
\neg Field_{N,r,Q}.
```

## Ledger

Use the existing synchronized witness-ledger notation from
`mpp-cm-cross-face-synthesis-bridge-license-audit-20260505.md`:

```math
\mathcal W
=
(O_{NS}^{work},Q,N,r,\Phi,\mathcal T).
```

Here `Q` is the selected terminal region, `N` is the tower depth, `r` is the
positive field scale, `\Phi` is the same-fluid family, and `\mathcal T` is the
still-live terminal window. When a candidate first singular time is needed,
write it separately as `T_\ast`; it is not a new coordinate of `\mathcal W`.

Let `CritExit_X(\mathcal W)` mean:

```math
\text{the public critical class }X\text{ exits or concentrates on the terminal
sequence selected by }\mathcal W.
```

This symbol is not a new CM face and `\mathcal W` is not a new theorem object.
It is only the already-installed bookkeeping demand that the public readout and
the CM faces refer to the same `Q,N,r,\Phi,\mathcal T` witness ledger.

## Missing theorem

For each public critical class `X` used as support, the required bridge is:

```math
\boxed{
PublicCriticalExitToCMFace_X.A:
\quad
CritExit_X(\mathcal W)
\Longrightarrow
\neg Pack_Q(\mathcal W)
\vee
\neg Part_{N,Q}(\mathcal W)
\vee
\neg Field_{N,r,Q}(\mathcal W).
}
\tag{PCE-CM.A}
```

Equivalently, in the form usually easier to prove:

```math
\boxed{
CMToNoPublicCriticalExit_X.A:
\quad
Pack_Q(\mathcal W)
\wedge
Part_{N,Q}(\mathcal W)
\wedge
Field_{N,r,Q}(\mathcal W)
\Longrightarrow
\neg CritExit_X(\mathcal W).
}
\tag{PCE-CM.B}
```

Since

```math
CM_{N,r,Q}=Pack_Q\wedge Part_{N,Q}\wedge Field_{N,r,Q},
```

`(PCE-CM.B)` gives `(PCE-CM.A)` by contrapositive.

## What must be proved

The bridge has three independent obligations.

### 1. Same-ledger extraction

The public critical exit must be extracted on the same terminal ledger:

```math
CritExit_X
\leadsto
CritExit_X(\mathcal W).
```

It is not enough to know that some global norm blows up. The blow-up sequence
has to be placed on the same `Q,N,r,\Phi,\mathcal T` object used by the CM
witness faces.

### 2. CM-to-public-control

Retaining all three CM faces must control the public critical readout:

```math
Pack_Q(\mathcal W)
\wedge
Part_{N,Q}(\mathcal W)
\wedge
Field_{N,r,Q}(\mathcal W)
\Longrightarrow
\text{the }X\text{ criterion stays inside its non-exit regime}.
```

Depending on `X`, this could be a uniform critical bound, a compact critical
element, a Lorentz/Besov endpoint bound, or a local concentration exclusion.

### 3. Face landing

If the public readout exits anyway, the proof must say which CM face failed:

```math
CritExit_X(\mathcal W)
\Longrightarrow
\begin{cases}
\neg Pack_Q(\mathcal W), & \text{cover / carrier legality failed;}\\
\neg Part_{N,Q}(\mathcal W), & \text{same-PDE participation failed;}\\
\neg Field_{N,r,Q}(\mathcal W), & \text{one-field coherence / pressure-source readout failed.}
\end{cases}
```

A theorem that only says "`X` blows up" has not landed in CM yet.

## Immediate classification

Most public critical-norm exits should be treated as `Field`-side candidates
unless the proof identifies a cover/carrier failure or a same-PDE participation
failure. That is only a preliminary sort. The theorem still has to prove the
typed landing:

```math
CritExit_X(\mathcal W)
\Longrightarrow
\neg Field_{N,r,Q}(\mathcal W)
```

on the retained `Pack` and `Part` branch.

This sorting rule applies to the public readout or to a surviving retained
residue. It does not classify positive supplier theorems. In particular,
`PositiveRemainderDepletion.A` remains a source-control supplier burden; only
the residue left after such a supplier fails can be routed through a CM face.

The narrow theorem target for that useful version is
[mpp-retained-pack-part-critical-concentration-to-field-bridge-20260519.md](/Users/thomasbirnie/Workspace/ToE/Research-Consolidation/problems/navier-stokes/theorem-construction/mpp-retained-pack-part-critical-concentration-to-field-bridge-20260519.md).

The first direct `L^3` attempt is now recorded in
[mpp-public-l3-critical-exit-to-cm-field-reduction-20260519.md](/Users/thomasbirnie/Workspace/ToE/Research-Consolidation/problems/navier-stokes/theorem-construction/mpp-public-l3-critical-exit-to-cm-field-reduction-20260519.md). It reduces the bridge to the native lemma
`CriticalL3ConcentrationToNativeSourceResidue.A`: under retained `Pack` and
`Part`, same-ledger critical `L^3` concentration must produce either
`\mu_*^{sing}>0` or a selected `ScaleCriticalTreeCarleson.A` failure before the
installed Field diagnostics can be spent.

## Relation to installed repo machinery

Installed:

```math
CM_{N,r,Q}\Longrightarrow Member(Q;\mathfrak O_{NS}^{work}).
```

Installed internally:

```math
Exit(Q;\mathfrak O_{NS}^{work})
\Longrightarrow
\neg Pack_Q\vee\neg Part_{N,Q}\vee\neg Field_{N,r,Q}
```

on the route-relative first-exit witness.

Missing here:

```math
CritExit_X(\mathcal W)
\Longrightarrow
Exit(Q;\mathfrak O_{NS}^{work})
```

or directly:

```math
CritExit_X(\mathcal W)
\Longrightarrow
\neg Pack_Q\vee\neg Part_{N,Q}\vee\neg Field_{N,r,Q}.
```

That is the public-analogue-to-CM bridge.

## Safe use

Until `(PCE-CM.A)` or `(PCE-CM.B)` is proved for a specific public class `X`,
the public theorem is support only. It can guide the shape of the proof, but it
cannot be counted as a CM discharge.
