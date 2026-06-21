---
ns_viewer:
  theorem_id: forward-gold-terminal-plane-split-source-curve-consumption-20260621
  status: exact-assembly-installed-forward-gold-not-proved
  proof_role: forward_gold_endpoint_ui_failure_split_and_cm_consumption
  logical_landing_node: terminal_plane_split_source_curve_consumption
  edge_effect: "Assembles the endpoint UI failure split with the installed terminal source-curve consumer. In a fixed center/gauge/same-carrier chain, endpoint UI failure gives a nonzero terminal atom in the selected time marginal. That terminal time atom decomposes into point-core mass plus diffuse terminal-plane mass. Point-core mass is the nested-core no-share obstruction. Diffuse terminal-plane mass is annular/collar-visible and not a no-share recurrence. Both branches still have the same nonzero terminal time-marginal atom, so after same-witness admission the installed terminal source-curve pass-or-Part/Field theorem consumes the branch as neg Part_N,Q or forall r>0 neg Field_N,r,Q. This is CM-facing assembly, not a forward-gold endpoint UI proof."
  upstream_origin:
    - problems/navier-stokes/theorem-construction/mpp-forward-gold-terminal-plane-diffuse-mass-annular-visibility-20260621.md
    - problems/navier-stokes/theorem-construction/mpp-forward-gold-same-carrier-nested-core-tightness-endpoint-ui-bridge-20260621.md
    - problems/navier-stokes/theorem-construction/mpp-terminal-source-curve-pass-or-partfield-exit-20260620.md
    - problems/navier-stokes/theorem-construction/mpp-forward-gold-selected-carrier-cm-service-certification-recheck-20260620.md
  downstream_consequence: "Do not respawn diffuse terminal-plane endpoint mass as a fourth in-class terminal branch. The forward-gold production target remains endpoint UI, source-square/unweighted reserve, strict no-waste, or profile production. The CM side is already pass-or-exit after same-witness admission because both point-core and diffuse terminal-plane endpoint mass are seen by the selected time marginal."
---

# MPP Forward-Gold Terminal-Plane Split Source-Curve Consumption

Date: 2026-06-21

## Status

Exact assembly installed.  Forward-gold smoothness is not proved.

This note connects the fixed-center terminal-plane split to the already
installed terminal source-curve consumer.  It prevents one specific mistake:
diffuse terminal-plane mass should not be folded back into fixed-chain no-share,
and it also should not be treated as a fourth surviving in-class endpoint
branch.

## 1. Selected time marginal

Let \(\mu_m\) be the selected same-carrier finite measures on the normalized
terminal cylinders, and let

```math
\bar\mu_m=(\pi_s)_\#\mu_m
\tag{TPS.1}
```

be the selected time marginals.  After subselection,

```math
\mu_m\stackrel{*}{\rightharpoonup}\mu,
\qquad
\bar\mu_m\stackrel{*}{\rightharpoonup}\bar\mu.
\tag{TPS.2}
```

Endpoint UI for the selected time marginal is

```math
\lim_{\theta\downarrow0}
\limsup_m
\bar\mu_m((-\theta,0])
=0.
\tag{TPS.3}
```

By the installed terminal source-curve measure lemma, failure of `(TPS.3)` is
exactly the production of a nonzero terminal atom in the selected time marginal:

```math
\bar\mu(\{0\})>0.
\tag{TPS.4}
```

This statement is independent of where the terminal mass sits in space.

## 2. Fixed-center spatial split

Now fix one terminal center and gauge.  Let the terminal-face spatial measure be

```math
\mu_T(E)
:=
\mu\big((E\times\{0\})\cap Q_1\big).
\tag{TPS.5}
```

Then

```math
\bar\mu(\{0\})
=
\mu_T(B_1).
\tag{TPS.6}
```

The endpoint atom splits into

```math
\boxed{
\bar\mu(\{0\})
=
\mu(\{(0,0)\})
+
\mu\big(((B_1\setminus\{0\})\times\{0\})\cap Q_1\big).
}
\tag{TPS.7}
```

There are two spatial presentations of the same time-marginal atom.

First, the point-core branch:

```math
\mu(\{(0,0)\})>0.
\tag{TPS.8}
```

This is exactly failure of same-carrier nested-core tightness, because

```math
\lim_{R\downarrow0}\mu(Q_R)=\mu(\{(0,0)\}).
\tag{TPS.9}
```

Second, the diffuse terminal-plane branch:

```math
\mu(\{(0,0)\})=0,
\qquad
\bar\mu(\{0\})>0.
\tag{TPS.10}
```

This branch is not a fixed-chain no-share recurrence.  Instead, by the
terminal-plane diffuse-mass note,

```math
\mu\big((B_1\setminus B_R)\times\{0\}\big)
\longrightarrow
\bar\mu(\{0\})
\qquad
\text{as }R\downarrow0.
\tag{TPS.11}
```

So diffuse terminal-plane mass is visible in fixed-center parent-minus-core
annuli.

## 3. Both branches have the same source-curve consumer

The source-curve consumer uses only the selected time marginal atom `(TPS.4)`.
It does not require the terminal mass to be concentrated at the fixed spatial
center.

Therefore the point-core and diffuse-plane branches have the same CM-facing
consequence after same-witness admission and uniform service certification:

```math
\boxed{
\bar\mu(\{0\})>0
\Longrightarrow
\neg Part_{N,Q}
\quad\text{or}\quad
\forall r>0\,\neg Field_{N,r,Q}.
}
\tag{TPS.12}
```

The point-core branch gives this conclusion through the nested-core bridge and
then the source-curve theorem.  The diffuse branch gives it directly through the
same time marginal atom; its spatial difference is only that it is annular or
collar visible rather than nested-core retained.

## 4. Exact three-way reading

For a fixed center/gauge/same-carrier endpoint branch, the exact reading is:

```math
\boxed{
\text{endpoint UI}
\quad\text{or}\quad
\text{point-core terminal atom}
\quad\text{or}\quad
\text{diffuse terminal-plane terminal atom}.
}
\tag{TPS.13}
```

The last two alternatives are not separate in the selected time curve; both are
contained in

```math
\bar\mu(\{0\})>0.
\tag{TPS.14}
```

After same-witness admission, `(TPS.14)` is consumed by the installed
Part/Field service-topology theorem.

## Verdict

The diffuse terminal-plane branch changes the spatial diagnosis, not the
source-curve outcome:

```math
\boxed{
\text{diffuse terminal-plane mass}
\neq
\text{fixed-chain no-share recurrence},
}
\tag{TPS.15}
```

but

```math
\boxed{
\text{diffuse terminal-plane mass}
\subset
\text{terminal source-curve atom}.
}
\tag{TPS.16}
```

Thus endpoint UI failure has no new surviving in-class endpoint branch after
same-witness admission.  The forward-gold production theorem is still open: it
must actually prove endpoint UI, source-square/unweighted reserve, strict
no-waste, or profile production on the selected carrier.  This note only
prevents the diffuse terminal-plane case from being misclassified.
