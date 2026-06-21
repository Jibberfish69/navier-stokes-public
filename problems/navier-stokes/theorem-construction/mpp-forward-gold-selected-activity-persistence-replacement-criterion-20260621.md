---
theorem_id: forward-gold-selected-activity-persistence-replacement-criterion-20260621
status: abstract-persistence-criterion-proved-ns-carrier-compactness-not-installed
logical_landing_node: selected_activity_persistence_replacement_criterion
edge_effect: "Replaces the continuity hypothesis in the four-body compactness-rigidity coercivity principle with the exact condition the proof really needs: selected positive activity must persist under same-carrier compactness, except through declared four-body defect/loss terms. Proves that upper semicontinuity or retained nonnegative carrier-measure compactness is sufficient, while lower semicontinuity or signed-current-only compactness is not sufficient. The remaining Navier-Stokes production statement is selected carrier tightness/polar retention/no-loss relay for the actual positive native carrier."
parents:
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-fourbody-compactness-rigidity-coercivity-principle-20260621.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-packet-selector-polar-retention-criterion-20260621.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-local-positive-selection-signed-current-gap-20260621.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-endpoint-polar-readout-vs-carrier-saturation-20260620.md
---

# Selected Activity Persistence Replaces Continuity

Date: 2026-06-21

## 0. Aim

The compactness-rigidity coercivity principle used the hypothesis

```math
A_{\rm sel}\text{ is continuous on the compact packet space.}
\tag{SAP.1}
```

That hypothesis is stronger than the proof needs and weaker than the actual
Navier-Stokes danger if it is read carelessly.

The proof only needs this:

```math
\boxed{
\text{positive selected activity cannot disappear in the compact limit unless
one of the declared four-body defect/loss channels records that disappearance.}
}
\tag{SAP.2}
```

This note proves the exact replacement criterion.

## 1. Sequence-level replacement for continuity

Let \(\mathcal K\) be a compact normalized packet space.  Let

```math
\mathcal L:\mathcal K\to[0,\infty]
\tag{SAP.3}
```

be lower semicontinuous.  Let \(A_{\rm sel}\ge0\) be the selected activity
assigned to approximating packets, and let \(A_{\rm ret}\ge0\) be the activity
retained by the compact limit.

Assume the following persistence condition.  For every \(\eta>0\), there is
\(\eta_*(\eta)>0\) such that whenever

```math
X_n\to X
\quad\text{in }\mathcal K,
\qquad
A_{\rm sel}(X_n)\ge\eta,
\tag{SAP.4}
```

and the declared disappearance defects vanish along the same sequence, then

```math
\boxed{
A_{\rm ret}(X)\ge \eta_*(\eta).
}
\tag{SAP.5}
```

Assume also the zero-loss rigidity statement

```math
\boxed{
\mathcal L(X)=0
\Longrightarrow
A_{\rm ret}(X)=0.
}
\tag{SAP.6}
```

Then strict full-cycle coercivity follows:

```math
\boxed{
A_{\rm sel}(X)\ge\eta
\Longrightarrow
\mathcal L(X)\ge c_\eta>0.
}
\tag{SAP.7}
```

### Proof

Suppose `(SAP.7)` fails.  Then for some \(\eta>0\) there are packets \(X_n\)
with

```math
A_{\rm sel}(X_n)\ge\eta,
\qquad
\mathcal L(X_n)\to0.
\tag{SAP.8}
```

By compactness, pass to a subsequence \(X_n\to X\).  Lower semicontinuity gives

```math
\mathcal L(X)
\le
\liminf_{n\to\infty}\mathcal L(X_n)
=0,
\tag{SAP.9}
```

hence \(\mathcal L(X)=0\).

Since every declared disappearance defect is included in the full-cycle loss,
`(SAP.8)` also forces those defects to vanish along the sequence.  The
persistence condition gives

```math
A_{\rm ret}(X)\ge\eta_*(\eta)>0.
\tag{SAP.10}
```

This contradicts zero-loss rigidity `(SAP.6)`.  Therefore `(SAP.7)` holds.

## 2. Defect upper semicontinuity is the exact usable form

The most useful way to prove `(SAP.5)` is a defect upper semicontinuity estimate:

```math
\boxed{
\limsup_{n\to\infty} A_{\rm sel}(X_n)
\le
A_{\rm ret}(X)
+
\limsup_{n\to\infty}
\Big(
K_{{\rm sel},n}
+
K_{C,n}^+
+
R_{{\rm legal},n}
\Big).
}
\tag{SAP.11}
```

If

```math
A_{\rm sel}(X_n)\ge\eta
\tag{SAP.12}
```

and

```math
K_{{\rm sel},n}
+
K_{C,n}^+
+
R_{{\rm legal},n}
\to0,
\tag{SAP.13}
```

then `(SAP.11)` gives

```math
A_{\rm ret}(X)\ge\eta.
\tag{SAP.14}
```

Thus `(SAP.11)` implies `(SAP.5)` with \(\eta_*(\eta)=\eta\).

The terms in `(SAP.11)` have their already installed four-body meanings:

```math
K_{\rm sel}
\quad
\text{is selected polar-retention failure,}
\tag{SAP.15}
```

```math
K_C^+
\quad
\text{is positive-carrier loss in the compactness/no-loss relay,}
\tag{SAP.16}
```

and

```math
R_{\rm legal}
\quad
\text{is declared legal spill.}
\tag{SAP.17}
```

So `(SAP.11)` says exactly this: selected positive activity may vanish in the
limit only by being recorded as selector loss, compactness-relay loss, or legal
spill.

## 3. Upper semicontinuity is sufficient

The direct topological sufficient condition is upper semicontinuity:

```math
X_n\to X
\Longrightarrow
\limsup_{n\to\infty}A_{\rm sel}(X_n)
\le
A_{\rm sel}(X).
\tag{SAP.18}
```

Then `(SAP.5)` holds with

```math
A_{\rm ret}=A_{\rm sel},
\qquad
\eta_*(\eta)=\eta.
\tag{SAP.19}
```

Continuity in the compactness-rigidity note was therefore a convenient
sufficient hypothesis, not the exact minimum hypothesis.

## 4. Lower semicontinuity is not sufficient

Lower semicontinuity has the wrong direction for this proof.

Let

```math
\mathcal K=\{0\}\cup\{1/n:n\ge1\}
\tag{SAP.20}
```

with its usual compact topology.  Define

```math
\mathcal L(0)=0,
\qquad
\mathcal L(1/n)=1/n,
\tag{SAP.21}
```

and

```math
A(0)=0,
\qquad
A(1/n)=1.
\tag{SAP.22}
```

Then \(\mathcal L\) is lower semicontinuous, \(A\) is lower semicontinuous,
and zero-loss rigidity holds because the only zero-loss point is \(0\), where
\(A(0)=0\).

But for \(\eta=1\),

```math
A(1/n)\ge1,
\qquad
\mathcal L(1/n)\to0.
\tag{SAP.23}
```

Hence there is no positive coercivity constant \(c_1\).  The positive activity
has disappeared at the compactness limit.

This is the abstract model of a terminal selected carrier that is present on
every approximating packet but absent from the limiting packet.

## 5. Retaining the nonnegative selected carrier measure is sufficient

Let \(C\) be the normalized same-carrier packet support, compact after the
heat-scale normalization and quotient by harmless symmetries.  Suppose each
packet carries a nonnegative selected activity measure

```math
\mu_X^A\in\mathcal M_+(C),
\qquad
A_{\rm sel}(X)=\mu_X^A(C).
\tag{SAP.24}
```

Assume packet convergence includes narrow convergence of these nonnegative
measures:

```math
X_n\to X
\Longrightarrow
\mu_{X_n}^A\rightharpoonup \mu_X^A
\quad\text{in }\mathcal M_+(C).
\tag{SAP.25}
```

Since \(C\) is compact, the constant function \(1\) is an admissible test
function.  Therefore

```math
A_{\rm sel}(X_n)
=
\int_C 1\,d\mu_{X_n}^A
\longrightarrow
\int_C 1\,d\mu_X^A
=
A_{\rm sel}(X).
\tag{SAP.26}
```

Thus the selected activity is continuous when the nonnegative selected carrier
measure itself is retained by the compact packet.

If the carrier is not compact, the replacement is tightness of the selected
carrier:

```math
\lim_{R\to\infty}
\limsup_{n\to\infty}
\mu_{X_n}^A(C\setminus C_R)
=0.
\tag{SAP.27}
```

With `(SAP.27)`, the same mass-retention conclusion follows on the exhausting
compact sets \(C_R\).

## 6. Signed-current compactness alone is not sufficient

The signed current does not determine the selected positive carrier.

On \(C=[-1,1]\), set

```math
J_n=\delta_{1/n}-\delta_{-1/n}.
\tag{SAP.28}
```

Then

```math
J_n\rightharpoonup 0
\quad
\text{as signed measures,}
\tag{SAP.29}
```

but the positive carrier has fixed mass:

```math
J_n^+(C)=1
\qquad
\text{for every }n.
\tag{SAP.30}
```

If the compact packet records only \(J_n\), the limit records zero.  The
selected positive activity has been lost through cancellation.

If the compact packet also records \(J_n^+\), then

```math
J_n^+=\delta_{1/n}\rightharpoonup\delta_0,
\tag{SAP.31}
```

and the unit positive mass is retained.

This is the exact compactness form of the selected positive-part problem:
signed-current visibility is not selected-carrier persistence.  The missing
positive mass must either be carried as a nonnegative measure or charged to
\(K_{\rm sel}\), \(K_C^+\), or \(R_{\rm legal}\).

## 7. Four-body replacement theorem

The compactness-rigidity coercivity principle should therefore not spend the
bare phrase "continuity of selected activity" as a black box.

The exact Navier-Stokes production theorem is:

```math
\boxed{
X_n\to X,
\qquad
A_{\rm sel}(X_n)\ge\eta,
\qquad
K_{{\rm sel},n}+K_{C,n}^+ +R_{{\rm legal},n}\to0
\Longrightarrow
A_{\rm ret}(X)\ge\eta_*(\eta)>0.
}
\tag{SAP.32}
```

Equivalently, prove the defect upper semicontinuity estimate `(SAP.11)`.

Under `(SAP.32)`, the four-body compactness-rigidity argument becomes exact:

```math
\text{compactness}
+
\text{lower semicontinuity of }\mathcal L
+
\text{selected activity persistence}
+
\text{zero-loss rigidity}
\Longrightarrow
\text{strict same-carrier payment.}
\tag{SAP.33}
```

## 8. Current state

This note proves the abstract replacement criterion.

It does not prove the Navier-Stokes production theorem `(SAP.32)`.

The next measure-level production criterion is now explicit.  It is enough to
prove that the retained four-body packet carries nonnegative selected carrier
measures \(\mu_n^A\), that these measures are tight on the normalized
same-carrier packet space, and that their weak limit is identified with the
canonical selected carrier of the limiting Navier-Stokes profile up to
\(K_C^+\).  Under those three conditions, `(SAP.32)` follows.

The current four-body frontier is sharpened as follows:

```math
\boxed{
\text{continuity of }A_{\rm sel}
}
\tag{SAP.34}
```

is replaced by

```math
\boxed{
\text{same-carrier selected positive activity persistence, with loss recorded
as }K_{\rm sel},K_C^+,\text{ or }R_{\rm legal}.
}
\tag{SAP.35}
```

This keeps the original four-body concept intact.  The derivative tower,
participation law, compactness/no-loss relay, and geometry return must all
act on the same selected carrier, because only that same-carrier retention
turns compactness-rigidity into an unweighted terminal reserve.
