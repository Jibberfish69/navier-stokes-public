---
ns_viewer:
  theorem_id: forward-gold-retained-positive-scale-reserve-cm-promotion-direct-test-20260620
  status: conditional-cm-promotion-proved-forward-payment-not-proved
  proof_role: pack_first_promotion_test_after_unweighted_reserve_failure
  logical_landing_node: retained_positive_scale_reserve_cm_face_after_admission
  edge_effect: "Checks the exact Pack-first promotion condition left by the source-reserve audit. Same-ledger payment is not proved. However, once the retained positive-scale first-created reserve is admitted as the same terminal CM witness, the first-face derivation is automatic: Pack fails, Part fails, or retained Pack+Part plus unbounded active height gives forall r>0 not Field_{N,r,Q}. Thus the remaining non-aliased gold object is still same-ledger payment; the remaining CM-side object is admission, not another active-height theorem."
  upstream_origin:
    - problems/navier-stokes/theorem-construction/mpp-pack-first-source-reserve-face-audit-20260526.md
    - problems/navier-stokes/theorem-construction/mpp-forward-gold-active-height-cm-readout-firewall-20260620.md
    - problems/navier-stokes/theorem-construction/mpp-forward-gold-interior-reserve-promotion-recheck-after-supplier-audit-20260620.md
    - problems/navier-stokes/live-theorem-edge.yaml
  downstream_consequence: "Do not respawn ZeroMomentReserveVisibility.A, ActiveHeightFluxTrichotomy.A, or retained active-height readout as a missing first-face theorem after CM-test admission. Before admission they remain support; after admission the face split is Pack, Part, or Field."
---

# MPP Forward-Gold Retained Positive-Scale Reserve CM Promotion Direct Test

Date: 2026-06-20

## Status

Direct promotion test complete.

This note does not prove the forward-gold reserve payment.  It proves the
narrower Pack-first statement left open by the source-reserve audit:

```math
\boxed{
\text{once the retained positive-scale first-created reserve is admitted as the
same terminal CM witness, the first-face derivation is paid.}
}
\tag{RPC.1}
```

The remaining unpaid gold theorem is still same-ledger payment of the reserve.
The remaining CM-side prerequisite is admission of the retained reserve as the
same terminal witness, not another active-height or zero-moment theorem.

## 1. The promotion condition being tested

The Pack-first source-reserve audit leaves the retained branch in supplier
quarantine until one of two things is proved:

```math
\text{same-ledger payment}
\tag{RPC.2}
```

or

```math
\text{CM-test admission}
+
\text{first Pack/Part/Field face failure}.
\tag{RPC.3}
```

The June 20 forward-gold tests did not prove `(RPC.2)`.  They did prove that a
first-created reserve with vanishing first moment forces active height.

Let

```math
\mathcal R_N(W)
=
\int_W \sum_{k>N}2^k T_k(t)^2\,dt,
\qquad
M_N(W)
=
\int_W \sum_{k>N}T_k(t)\,dt,
\tag{RPC.4}
```

and

```math
H_N(W)
=
\sup_{t\in W}\sup_{k>N}2^kT_k(t).
\tag{RPC.5}
```

The exact factorization is

```math
\mathcal R_N(W)\le H_N(W)M_N(W).
\tag{RPC.6}
```

Thus a first-created reserve sequence satisfying

```math
\mathcal R_N(W_m)\ge \eta>0,
\qquad
M_N(W_m)\to0
\tag{RPC.7}
```

forces

```math
H_N(W_m)\to\infty.
\tag{RPC.8}
```

That is a readout, not a payment.

## 2. Conditional CM theorem

Assume the retained positive-scale first-created reserve branch has been
admitted as the same terminal CM witness \(Q\).  Then the Pack-first split
gives a face failure.

First, if the retained positive-scale same-fluid carrier is absent, then the
first face fails:

```math
\neg Pack_Q.
\tag{RPC.9}
```

Second, if the carrier remains but the same pressure-viscosity-participation
tower is not retained on that carrier, then

```math
Pack_Q\wedge \neg Part_{N,Q}.
\tag{RPC.10}
```

Third, assume both Pack and Part survive.  Then the admitted witness carries
the same-ledger active-height blowup `(RPC.8)`.  A positive Field certificate at
depth \(N\) and radius \(r>0\) supplies finite one-field coherence and the
corresponding finite local tower/readout bound on the same retained packet.
That is incompatible with \(H_N(W_m)\to\infty\) along every terminal tail.
Hence

```math
Pack_Q\wedge Part_{N,Q}
\Longrightarrow
\forall r>0\,\neg Field_{N,r,Q}.
\tag{RPC.11}
```

Combining the three alternatives:

```math
\boxed{
\text{admitted retained positive-scale first-created reserve}
\Longrightarrow
\neg Pack_Q
\vee
\bigl(Pack_Q\wedge\neg Part_{N,Q}\bigr)
\vee
\bigl(Pack_Q\wedge Part_{N,Q}\wedge
\forall r>0\,\neg Field_{N,r,Q}\bigr).
}
\tag{RPC.12}
```

This is exactly a Pack/Part/Field face failure supporting the CM
contrapositive conclusion.

## 3. What this does not prove

This theorem does not prove that the reserve is paid:

```math
\mathcal R_N(W)
\le
o_N(1)+Loss_{legal}(W).
\tag{RPC.13}
```

It also does not allow a support-only reserve calculation to be promoted before
CM-test admission.  Without admission, the reserve is still a supplier object,
not a witness face.

The lawful state is now:

```math
\begin{array}{lll}
\text{same-ledger payment} &\Rightarrow& \text{forward-gold reserve closes},\\[1mm]
\text{CM admission of the retained reserve} &\Rightarrow& \text{Pack/Part/Field face failure},\\[1mm]
\text{neither payment nor admission} &\Rightarrow& \text{supplier quarantine}.
\end{array}
\tag{RPC.14}
```

## 4. Consequence

The first-face half of the promotion condition `(RPC.3)` is no longer the
unpaid part after admission.  The only unpaid alternatives are:

```math
\boxed{
\text{prove same-ledger payment of the unweighted reserve}
}
\tag{RPC.15}
```

or

```math
\boxed{
\text{prove CM-test admission of the retained positive-scale reserve as the
same terminal witness.}
}
\tag{RPC.16}
```

The active-height, zero-moment, signed-pair, and first-created reserve notes
are therefore not independent remaining face-derivation theorems.  They are
support until admission; after admission they give the Field/face readout above.

## Verdict

The retained positive-scale reserve branch is not a forward-gold proof.

It is now closed as a first-face derivation after admission:

```math
\boxed{
\text{admission + first-created reserve}
\Rightarrow
\text{Pack/Part/Field face failure}.
}
\tag{RPC.17}
```

What remains open is exactly:

```math
\boxed{
\text{same-ledger payment or same-witness CM admission.}
}
\tag{RPC.18}
```
