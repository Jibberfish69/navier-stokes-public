---
ns_viewer:
  theorem_id: forward-gold-same-carrier-nested-core-tightness-endpoint-ui-bridge-20260621
  status: exact-bridge-installed-forward-gold-not-proved
  proof_role: forward_gold_nested_core_endpoint_ui_bridge
  logical_landing_node: nested_core_tightness_endpoint_ui_bridge
  edge_effect: "Installs the exact measure bridge after the annular-share theorem-form correction. On a fixed terminal center/gauge/same-carrier chain, nested-core tightness is exactly absence of a point atom at the terminal core: lim_R mu(Q_R)=mu({(0,0)}). Endpoint UI of the time marginal is stronger and implies nested-core tightness, because mu({(0,0)}) <= (pi_s)#mu({0}). Failure of nested-core tightness gives a terminal time-marginal atom, hence the installed terminal source-curve Part/Field consumer after same-witness admission. The converse is false: a diffuse terminal-time-plane atom may violate endpoint UI without creating a point-core atom."
  upstream_origin:
    - problems/navier-stokes/theorem-construction/mpp-forward-gold-annular-share-vs-nested-core-tightness-20260621.md
    - problems/navier-stokes/theorem-construction/mpp-forward-gold-endpoint-ui-production-clause-recheck-20260620.md
    - problems/navier-stokes/theorem-construction/mpp-forward-gold-same-carrier-tail-ui-production-normal-form-20260620.md
    - problems/navier-stokes/theorem-construction/mpp-terminal-source-curve-pass-or-partfield-exit-20260620.md
  downstream_consequence: "Do not treat SameCarrierNestedCoreTightness.A and SelectedCarrierEndpointUI.A as identical. Endpoint/tail UI is a sufficient stronger producer for fixed-chain nested-core tightness. The minimal fixed-chain target is no point atom; its failure is a terminal source-curve atom and is CM-facing after same-witness admission. Endpoint UI failure may also include diffuse terminal-plane mass and remains the broader forward-gold terminal time-face atom problem."
---

# MPP Forward-Gold Same-Carrier Nested-Core Tightness Endpoint UI Bridge

Date: 2026-06-21

## Status

Exact bridge installed.  Forward-gold smoothness is not proved.

The annular-share correction isolated the minimal fixed-chain target:

```math
\lim_{R\downarrow0}\mu(Q_R)=0.
\tag{NCB.1}
```

This note records exactly how that target relates to endpoint uniform
integrability of the selected time marginal.

## 1. Fixed-chain measure object

Work in one fixed terminal center and gauge.  Let

```math
Q_R=B_R\times[-R^2,0],
\qquad 0<R\le1,
\tag{NCB.2}
```

and let \(\mu\) be the extracted finite nonnegative same-carrier measure on
\(Q_1\).  Define

```math
A(R):=\mu(Q_R).
\tag{NCB.3}
```

Since \(Q_R\downarrow\{(0,0)\}\), continuity from above gives

```math
\boxed{
\lim_{R\downarrow0}A(R)
=
\mu(\{(0,0)\}).
}
\tag{NCB.4}
```

Thus the exact fixed-chain theorem is:

```math
\boxed{
\text{SameCarrierNestedCoreTightness.A}
\quad\Longleftrightarrow\quad
\mu(\{(0,0)\})=0.
}
\tag{NCB.5}
```

This is a point-core statement, not yet the full terminal time-face statement.

## 2. Time marginal bridge

Let

```math
\pi_s(y,s)=s,
\qquad
\bar\mu:=(\pi_s)_\#\mu.
\tag{NCB.6}
```

Then

```math
\{(0,0)\}\subset \pi_s^{-1}(\{0\}),
\tag{NCB.7}
```

so

```math
\boxed{
\mu(\{(0,0)\})
\le
\bar\mu(\{0\}).
}
\tag{NCB.8}
```

Therefore:

```math
\boxed{
\bar\mu(\{0\})=0
\Longrightarrow
\mu(\{(0,0)\})=0
\Longrightarrow
\text{SameCarrierNestedCoreTightness.A}.
}
\tag{NCB.9}
```

Endpoint UI of the selected time marginal kills the point-core atom, hence it
kills fixed-chain retained recurrence.

## 3. Failure direction

The converse needed by the CM consumer is also exact in the failure direction.
If nested-core tightness fails, then by `(NCB.4)`,

```math
\mu(\{(0,0)\})=a_0>0.
\tag{NCB.10}
```

Using `(NCB.8)`,

```math
\bar\mu(\{0\})\ge a_0>0.
\tag{NCB.11}
```

So a fixed-chain nested-core failure is a terminal source-curve atom.  The
installed source-curve theorem then gives, after same-witness admission,

```math
\boxed{
\neg\text{SameCarrierNestedCoreTightness.A}
\Longrightarrow
\neg Part_{N,Q}
\quad\text{or}\quad
\forall r>0\,\neg Field_{N,r,Q}.
}
\tag{NCB.12}
```

This is a CM-facing consumption statement.  It is not a forward-gold proof of
nested-core tightness.

## 4. Endpoint UI is stronger than nested-core tightness

Endpoint UI is not equivalent to nested-core tightness.  It forbids all
terminal time-face mass in the selected marginal:

```math
\bar\mu(\{0\})=0.
\tag{NCB.13}
```

Nested-core tightness only forbids mass at the selected terminal point:

```math
\mu(\{(0,0)\})=0.
\tag{NCB.14}
```

For example, a measure supported on

```math
(B_1\setminus B_{1/2})\times\{0\}
\tag{NCB.15}
```

has

```math
\bar\mu(\{0\})>0,
\qquad
\mu(\{(0,0)\})=0.
\tag{NCB.16}
```

It violates endpoint UI but satisfies nested-core tightness at the chosen
center.  So the exact implication is one-way:

```math
\boxed{
\text{SelectedCarrierEndpointUI.A}
\Longrightarrow
\text{SameCarrierNestedCoreTightness.A},
}
\tag{NCB.17}
```

not an equivalence.

## 5. Supplier consequence

All same-carrier tail/UI suppliers remain valid because they prove the stronger
time-marginal statement.  In particular,

```math
\text{SameCarrierTailUI.A}
\Longrightarrow
\text{SelectedCarrierEndpointUI.A}
\Longrightarrow
\text{SameCarrierNestedCoreTightness.A}.
\tag{NCB.18}
```

The same is true for same-carrier \(p>1\), Orlicz, source-square domination,
selected critical-strain terminal-tail depletion, normalized CKN Carleson, and
strict no-waste when they are actually proved on the selected carrier.

Current inputs do not prove those producers.  This note only installs the exact
bridge once such a producer is available.

## Verdict

The fixed-chain target is now precisely typed:

```math
\boxed{
\text{minimal fixed-chain target}
=
\text{no same-carrier point atom at }(0,0).
}
\tag{NCB.19}
```

Endpoint/tail UI is a stronger sufficient route:

```math
\boxed{
\text{no terminal time-marginal atom}
\Longrightarrow
\text{no terminal point-core atom}.
}
\tag{NCB.20}
```

Failure of the point-core target automatically produces the terminal
source-curve atom consumed by Part/Field after same-witness admission.
