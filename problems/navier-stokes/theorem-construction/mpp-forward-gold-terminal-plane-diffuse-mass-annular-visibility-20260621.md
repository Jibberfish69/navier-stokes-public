---
ns_viewer:
  theorem_id: forward-gold-terminal-plane-diffuse-mass-annular-visibility-20260621
  status: exact-measure-split-installed-forward-gold-not-proved
  proof_role: forward_gold_terminal_plane_measure_split
  logical_landing_node: terminal_plane_diffuse_mass_annular_visibility
  edge_effect: "Installs the exact fixed-center measure split for endpoint UI failure. The terminal time-face mass decomposes into point-core mass at (0,0) plus diffuse terminal-plane mass away from the fixed center. Point-core mass is exactly the nested-core no-share obstruction. Diffuse terminal-plane mass is visible in the parent-minus-small-core annulus (B_1 minus B_R) x {0} as R tends to zero, so it is not itself a fixed-chain no-share nested-core recurrence. This is only a measure-theoretic decomposition; it gives no reverse-doubling, no per-step annular share, no endpoint UI, and no Navier-Stokes anti-atom theorem by itself."
  upstream_origin:
    - problems/navier-stokes/theorem-construction/mpp-forward-gold-annular-share-vs-nested-core-tightness-20260621.md
    - problems/navier-stokes/theorem-construction/mpp-forward-gold-same-carrier-nested-core-tightness-endpoint-ui-bridge-20260621.md
    - problems/navier-stokes/theorem-construction/mpp-terminal-source-curve-pass-or-partfield-exit-20260620.md
  downstream_consequence: "Do not fold diffuse terminal-plane endpoint UI failure back into the fixed-chain no-share branch. In a fixed center/gauge/same-carrier chain, the no-share branch is point-core mass. Diffuse terminal-plane mass is annular/collar-visible at that fixed center and still requires a real annular/collar ledger, endpoint/tail UI, unweighted reserve, strict no-waste, source-square domination, or CM admission/consumption."
---

# MPP Forward-Gold Terminal-Plane Diffuse Mass Annular Visibility

Date: 2026-06-21

## Status

Exact measure split installed.  Forward-gold smoothness is not proved.

This note fills the gap left by the endpoint UI bridge.  Endpoint UI failure can
come from terminal mass at the fixed center, or from terminal mass spread across
the terminal spatial plane.  Only the first branch is the fixed-chain
nested-core no-share obstruction.

No Navier-Stokes estimate is used here.  This is a finite-measure identity and
continuity-from-above argument.

## 1. Fixed terminal carrier and terminal face

Work in one fixed terminal center and gauge.  Let

```math
Q_1=B_1\times[-1,0],
\qquad
Q_R=B_R\times[-R^2,0],
\qquad
0<R\le1,
\tag{TPD.1}
```

and let \(\mu\) be the extracted finite nonnegative same-carrier measure on
\(Q_1\).

Define the terminal-face spatial measure by

```math
\mu_T(E)
:=
\mu\big((E\times\{0\})\cap Q_1\big),
\qquad E\subset B_1.
\tag{TPD.2}
```

The selected time marginal is

```math
\bar\mu=(\pi_s)_\#\mu,
\qquad
\pi_s(y,s)=s,
\tag{TPD.3}
```

so the terminal endpoint mass of the time marginal is exactly

```math
\bar\mu(\{0\})
=
\mu_T(B_1).
\tag{TPD.4}
```

The fixed-center point-core mass is

```math
a_0
:=
\mu(\{(0,0)\})
=
\mu_T(\{0\}).
\tag{TPD.5}
```

Thus endpoint mass splits exactly as

```math
\boxed{
\bar\mu(\{0\})
=
\mu(\{(0,0)\})
+
\mu\big(((B_1\setminus\{0\})\times\{0\})\cap Q_1\big).
}
\tag{TPD.6}
```

The first term is point-core mass.  The second term is diffuse terminal-plane
mass relative to the fixed center.

## 2. Point-core branch

Because \(Q_R\downarrow\{(0,0)\}\), continuity from above gives

```math
\lim_{R\downarrow0}\mu(Q_R)
=
\mu(\{(0,0)\})
=
a_0.
\tag{TPD.7}
```

Therefore the fixed-chain no-share recurrence is exactly the point-core branch:

```math
\boxed{
\limsup_{R\downarrow0}\mu(Q_R)>0
\quad\Longleftrightarrow\quad
a_0>0.
}
\tag{TPD.8}
```

This is the branch already handled by the nested-core endpoint UI bridge: its
time marginal has a terminal atom and is CM-facing after same-witness admission.

## 3. Diffuse terminal-plane branch

For every \(R\in(0,1]\),

```math
\mu_T(B_1\setminus B_R)
=
\mu_T(B_1)-\mu_T(B_R).
\tag{TPD.9}
```

Since \(B_R\downarrow\{0\}\), continuity from above gives

```math
\lim_{R\downarrow0}\mu_T(B_R)
=
\mu_T(\{0\})
=
a_0.
\tag{TPD.10}
```

Combining `(TPD.9)` and `(TPD.10)` gives

```math
\boxed{
\lim_{R\downarrow0}\mu_T(B_1\setminus B_R)
=
\bar\mu(\{0\})-a_0.
}
\tag{TPD.11}
```

Equivalently, for every \(\varepsilon>0\), there exists \(R_\varepsilon>0\)
such that for \(0<R<R_\varepsilon\),

```math
\mu\big((B_1\setminus B_R)\times\{0\}\big)
\ge
\bar\mu(\{0\})-a_0-\varepsilon.
\tag{TPD.12}
```

The set \((B_1\setminus B_R)\times\{0\}\) is contained in the parent-minus-core
region

```math
Q_1\setminus Q_R.
\tag{TPD.13}
```

Thus diffuse terminal-plane mass is visible in the fixed-center
parent-minus-small-core annulus.

In the pure diffuse case \(a_0=0\), `(TPD.12)` becomes

```math
\mu\big((B_1\setminus B_R)\times\{0\}\big)
\ge
\bar\mu(\{0\})-\varepsilon
\tag{TPD.14}
```

for all sufficiently small \(R\).  So all terminal endpoint mass is outside the
shrinking point-core, up to an arbitrarily small error.

## 4. What this does not prove

This annular visibility is not a fixed per-step annular-share theorem.  It does
not imply that, for a chosen scale chain \(R_{j+1}=\lambda_jR_j\),

```math
\mu_T(B_{R_j}\setminus B_{R_{j+1}})
\ge
\kappa\,\mu_T(B_{R_j})
\tag{TPD.15}
```

with a uniform \(\kappa>0\).  That would again be a reverse-doubling or scale-gap
theorem.

It also does not prove endpoint UI:

```math
\bar\mu(\{0\})=0.
\tag{TPD.16}
```

It only separates the two ways endpoint UI can fail:

```math
\boxed{
\text{terminal endpoint mass}
=
\text{point-core mass}
+
\text{diffuse terminal-plane mass}.
}
\tag{TPD.17}
```

Point-core mass is the fixed-chain nested-core no-share obstruction.  Diffuse
terminal-plane mass is annular/collar-visible at the fixed center.

## Verdict

The fixed-chain target is now cleaner:

```math
\boxed{
\text{fixed-chain no-share}
\quad=\quad
\text{same-carrier point-core atom}.
}
\tag{TPD.18}
```

Endpoint UI failure has a broader part:

```math
\boxed{
\text{diffuse terminal-plane endpoint mass}
\quad\subset\quad
\text{fixed-center annular/collar-visible terminal mass}.
}
\tag{TPD.19}
```

Turning `(TPD.19)` into a forward-gold contradiction still requires a real
annular/collar ledger, endpoint/tail UI, unweighted reserve, strict no-waste,
source-square domination, or profile production.  Without one of those, this
note is an exact classification of the endpoint mass, not an anti-atom theorem.
