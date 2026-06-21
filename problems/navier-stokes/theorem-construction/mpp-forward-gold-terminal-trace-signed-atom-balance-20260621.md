---
theorem_id: forward-gold-terminal-trace-signed-atom-balance-20260621
status: signed-measure-balance-lemma-proved-forward-rigidity-not-closed
logical_landing_node: terminal_positive_atom_saturates_or_jumps
edge_effect: "Proves the exact signed terminal atom balance for the upgraded four-body program. Once positive trace compactness produces a terminal atom, the signed trace identity gives a sharp split: the positive atom is bounded by a negative terminal countertrace, terminal dissipation/loss, or a positive terminal storage jump. This converts the retained Body-III atom into a same-face signed-saturation object. It does not by itself prove the forward gold no-atom theorem; the remaining step is to charge the countertrace/jump through the four-body loop or route the jump to the typed endpoint face."
parents:
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-positive-trace-defect-compactness-20260621.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-terminal-trace-positive-ac-criterion-20260621.md
  - problems/navier-stokes/theorem-construction/mpp-four-body-cyclic-payment-closure-direct-attempt-20260621.md
---

# Terminal Trace Signed Atom Balance

Date: 2026-06-21

## 0. Aim

The positive trace compactness lemma produced an explicit terminal atom

```math
\mu_\ast^+(\{0\})>0.
\tag{TSB.1}
```

This note tests whether that atom is automatically a positive storage jump.

The answer is exact:

```math
\boxed{
\text{positive terminal trace atom}
\le
\text{negative terminal countertrace}
+
\text{terminal loss}
+
\text{positive terminal storage jump}.
}
\tag{TSB.2}
```

So the positive atom is not invisible, but it is not automatically a
contradiction.  It either has a signed partner, pays loss, or creates a terminal
jump.

This is the terminal signed-saturation form of the upgraded four-body loop.

## 1. Abstract signed balance

Let \(M_j\) be scalar storages and suppose the preterminal identity is

```math
M_j(b)-M_j(a)+D_j(a,b)
=
\int_a^b H_j(s)\,ds
\tag{TSB.3}
```

for \(-1<a<b<0\), with

```math
D_j(a,b)\ge0.
\tag{TSB.4}
```

Write the positive and negative trace measures as

```math
d\mu_j^+(s)=[H_j(s)]_+\,ds,
\qquad
d\mu_j^-(s)=[H_j(s)]_-\,ds.
\tag{TSB.5}
```

Assume, after subsequence extraction, that

```math
\mu_j^+\stackrel{*}{\rightharpoonup}\mu_\ast^+,
\qquad
\mu_j^-\stackrel{*}{\rightharpoonup}\mu_\ast^-.
\tag{TSB.6}
```

Assume also that the dissipation/loss measures converge:

```math
D_j \stackrel{*}{\rightharpoonup}\Lambda_\ast,
\qquad
\Lambda_\ast\ge0.
\tag{TSB.7}
```

Finally assume the storage derivatives converge as measures:

```math
dM_j \stackrel{*}{\rightharpoonup} dM_\ast.
\tag{TSB.8}
```

Then the limiting signed measure identity is

```math
dM_\ast+\Lambda_\ast
=
\mu_\ast^+-\mu_\ast^-.
\tag{TSB.9}
```

Evaluating `(TSB.9)` at the terminal atom \(\{0\}\) gives

```math
dM_\ast(\{0\})
+
\Lambda_\ast(\{0\})
=
\mu_\ast^+(\{0\})
-
\mu_\ast^-(\{0\}).
\tag{TSB.10}
```

Therefore

```math
\boxed{
\mu_\ast^+(\{0\})
\le
\mu_\ast^-(\{0\})
+
\Lambda_\ast(\{0\})
+
\left[dM_\ast(\{0\})\right]_+.
}
\tag{TSB.11}
```

This is the exact signed terminal atom balance.

## 2. Proof of the inequality

From `(TSB.10)`,

```math
\mu_\ast^+(\{0\})
=
\mu_\ast^-(\{0\})
+
\Lambda_\ast(\{0\})
+
dM_\ast(\{0\}).
\tag{TSB.12}
```

Since

```math
dM_\ast(\{0\})
\le
\left[dM_\ast(\{0\})\right]_+,
\tag{TSB.13}
```

we obtain `(TSB.11)`.

No sign assumption on \(dM_\ast(\{0\})\) is used.

## 3. Navier-Stokes trace instance

For the base local energy trace, the storage is

```math
M_{j,\eta}(s)
=
\int\eta^2 {1\over2}|V_j(s,y)|^2\,dy,
\tag{TSB.14}
```

and the trace integrand is

```math
H_{j,\eta}(s)
=
\int (e_j+Q_j)V_j\cdot\nabla(\eta^2)\,dy
+
\nu\int e_j\Delta(\eta^2)\,dy.
\tag{TSB.15}
```

The loss measure is

```math
dD_{j,\eta}(s)
=
\nu\int\eta^2|\nabla V_j|^2\,dy\,ds.
\tag{TSB.16}
```

If the measures \(dM_{j,\eta}\), \(dD_{j,\eta}\), and
\([H_{j,\eta}]_\pm ds\) have the stated weak-* limits, then

```math
\mu_{\eta,\ast}^+(\{0\})
\le
\mu_{\eta,\ast}^-(\{0\})
+
\Lambda_{\eta,\ast}(\{0\})
+
\left[dM_{\eta,\ast}(\{0\})\right]_+.
\tag{TSB.17}
```

So a positive base-energy trace atom is one of:

1. saturated by a negative terminal pressure/flux/cutoff trace;
2. paid by terminal dissipation/loss;
3. retained as a positive terminal storage jump.

## 4. Mixed tower trace instance

For a mixed tower rung

```math
W_{j,m,\alpha}=\partial_s^m\partial_y^\alpha V_j,
\tag{TSB.18}
```

the storage is

```math
M_{j,m,\alpha,\eta}(s)
=
\int\eta^2 {1\over2}|W_{j,m,\alpha}|^2,
\tag{TSB.19}
```

and the trace integrand is

```math
\begin{aligned}
H_{j,m,\alpha,\eta}(s)
&=
\int F_{j,m,\alpha}\cdot\nabla(\eta^2)\,dy \\
&\quad
-\int\eta^2 W_{j,m,\alpha}\cdot B_{j,m,\alpha}\,dy.
\end{aligned}
\tag{TSB.20}
```

The same proof gives

```math
\mu_{m,\alpha,\eta,\ast}^+(\{0\})
\le
\mu_{m,\alpha,\eta,\ast}^-(\{0\})
+
\Lambda_{m,\alpha,\eta,\ast}(\{0\})
+
\left[dM_{m,\alpha,\eta,\ast}(\{0\})\right]_+.
\tag{TSB.21}
```

Thus the tower atom cannot float free either.  It is a signed countertrace, a
loss atom, or a tower-storage jump.

## 5. Four-body reading

The upgraded four-body loop is

```math
\text{tower/scale}
\to
\text{participation}
\to
\text{compactness/no-loss}
\to
\text{gradient/geometry}
\to
\text{tower/scale}.
\tag{TSB.22}
```

The previous note moved the terminal pulse from Body II into Body III as a
positive terminal trace atom.

This note proves the exact Body-III signed split:

```math
\boxed{
\text{positive terminal atom}
\Rightarrow
\text{negative countertrace}
\;\vee\;
\text{terminal loss}
\;\vee\;
\text{positive storage jump}.
}
\tag{TSB.23}
```

The terminal loss branch is already a four-body payment.  The positive storage
jump branch is an endpoint discontinuity object.  The negative countertrace
branch is the terminal signed-saturation branch: the positive selected atom has
a same-face signed partner.

## 6. What remains

This note does not prove that the negative countertrace is legal, nor that the
positive storage jump is impossible.

It proves the exact reduction:

```math
\boxed{
\text{to finish the forward gold terminal-face branch, charge the negative
countertrace through the same four-body loop, or prove that the positive
storage jump is an endpoint face failure / rigidity contradiction.}
}
\tag{TSB.24}
```

This is the current refined object.  The positive atom is no longer merely
visible; it is signed-balanced.

## Verdict

The retained terminal atom has now been forced into one of three exact places:

```math
\boxed{
\mu_\ast^+(\{0\})
\le
\mu_\ast^-(\{0\})
+
\Lambda_\ast(\{0\})
+
\left[dM_\ast(\{0\})\right]_+.
}
\tag{TSB.25}
```

The remaining gold work is not to locate the last-instant pulse.  It is to
finish the terminal signed-saturation branch or consume the storage jump inside
the same tower/participation/compactness/geometry loop.
