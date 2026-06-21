---
theorem_id: forward-gold-terminal-storage-jump-criterion-20260621
status: criterion-proved-no_positive_jump_supplier_not_installed
logical_landing_node: positive_storage_atom_equals_terminal_jump
edge_effect: "Proves the exact storage-jump branch produced by the terminal signed atom balance. A positive atom of the limiting storage derivative at s=0 is exactly a positive terminal jump of the limiting local energy/tower storage primitive. This branch is killed only by a terminal readout-continuity/no-positive-jump theorem; otherwise it is a real endpoint jump object carried by Body III, not a hidden loss. Existing local-energy identities permit BV jumps, so this criterion does not close the forward gold theorem by itself."
parents:
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-terminal-trace-signed-atom-balance-20260621.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-positive-trace-defect-compactness-20260621.md
  - problems/navier-stokes/theorem-construction/mpp-four-body-cyclic-payment-closure-direct-attempt-20260621.md
---

# Terminal Storage Jump Criterion

Date: 2026-06-21

## 0. Aim

The terminal signed atom balance gave

```math
\mu_\ast^+(\{0\})
\le
\mu_\ast^-(\{0\})
+
\Lambda_\ast(\{0\})
+
\left[dM_\ast(\{0\})\right]_+.
\tag{TSJ.1}
```

The loss branch \(\Lambda_\ast(\{0\})>0\) is already paid.

This note identifies the storage branch:

```math
\left[dM_\ast(\{0\})\right]_+>0.
\tag{TSJ.2}
```

It is exactly a positive terminal jump of the limiting storage primitive.

## 1. BV storage primitive

Let \(dM_\ast\) be a finite signed Radon measure on \([-1,0]\).  Fix a base
constant \(M_0\), and define the right-continuous cumulative storage

```math
\mathcal M_\ast(s)
=
M_0+dM_\ast([-1,s])
\qquad
(-1\le s\le0).
\tag{TSJ.3}
```

Then \(\mathcal M_\ast\) is a function of bounded variation and

```math
d\mathcal M_\ast=dM_\ast.
\tag{TSJ.4}
```

The left terminal trace is

```math
\mathcal M_\ast(0^-)
=
\lim_{s\uparrow0}\mathcal M_\ast(s)
=
M_0+dM_\ast([-1,0)).
\tag{TSJ.5}
```

Therefore

```math
\mathcal M_\ast(0)-\mathcal M_\ast(0^-)
=
dM_\ast(\{0\}).
\tag{TSJ.6}
```

Consequently,

```math
\boxed{
\left[dM_\ast(\{0\})\right]_+>0
\quad\Longleftrightarrow\quad
\mathcal M_\ast(0)>\mathcal M_\ast(0^-).
}
\tag{TSJ.7}
```

This is the exact storage-jump criterion.

## 2. Base local energy instance

For the base local energy storage,

```math
M_{j,\eta}(s)
=
\int\eta^2 {1\over2}|V_j(s,y)|^2\,dy.
\tag{TSJ.8}
```

If the distributional derivatives \(dM_{j,\eta}\) converge weak-* to
\(dM_{\eta,\ast}\), and

```math
dM_{\eta,\ast}(\{0\})>0,
\tag{TSJ.9}
```

then the limiting localized energy primitive has a positive terminal jump:

```math
\mathcal M_{\eta,\ast}(0)
-
\mathcal M_{\eta,\ast}(0^-)
=
dM_{\eta,\ast}(\{0\})
>0.
\tag{TSJ.10}
```

So the storage branch in `(TSB.17)` is a genuine endpoint discontinuity of the
localized energy readout.

It is not forbidden by bounded variation alone.  BV is the natural output of a
finite signed trace measure, and BV functions may jump.

## 3. Mixed tower instance

For a mixed tower rung,

```math
M_{j,m,\alpha,\eta}(s)
=
\int\eta^2 {1\over2}|W_{j,m,\alpha}(s,y)|^2\,dy.
\tag{TSJ.11}
```

If

```math
dM_{m,\alpha,\eta,\ast}(\{0\})>0,
\tag{TSJ.12}
```

then

```math
\mathcal M_{m,\alpha,\eta,\ast}(0)
-
\mathcal M_{m,\alpha,\eta,\ast}(0^-)
>0.
\tag{TSJ.13}
```

This is a tower-storage endpoint jump.  It is the higher-rung version of the
same readout failure.

## 4. Four-body reading

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
\tag{TSJ.14}
```

The storage-jump criterion lives inside the Body-III output.

Once compactness/no-loss retains the terminal atom, the signed balance split
has three branches:

```math
\boxed{
\text{terminal loss}
}
\qquad
\boxed{
\text{negative countertrace}
}
\qquad
\boxed{
\text{positive storage jump}.
}
\tag{TSJ.15}
```

This note proves that the third branch is exactly a terminal readout jump.

Thus it is removed by a theorem of the form

```math
\boxed{
\mathcal M_\ast(0)=\mathcal M_\ast(0^-)
\quad
\text{for every selected local energy/tower storage.}
}
\tag{TSJ.16}
```

Without `(TSJ.16)`, the storage branch remains a real endpoint object rather
than a contradiction.

## 5. Current exact state

The positive storage branch is now fully typed:

```math
\boxed{
\left[dM_\ast(\{0\})\right]_+>0
\quad\Longleftrightarrow\quad
\text{positive terminal storage jump}.
}
\tag{TSJ.17}
```

The forward gold theorem still needs one of:

```math
\boxed{
\text{terminal readout continuity / no-positive-jump for the selected storage;}
}
\tag{TSJ.18}
```

```math
\boxed{
\text{four-body legal charge of the negative countertrace;}
}
\tag{TSJ.19}
```

or

```math
\boxed{
\text{CM endpoint consumption of the retained jump object.}
}
\tag{TSJ.20}
```

## Verdict

The storage-jump branch is no longer vague.

A positive storage atom at \(s=0\) is exactly a positive terminal jump of the
limiting local energy or tower storage.  Existing local energy/tower identities
produce BV trace structure, and BV permits such jumps.  So the branch closes
only with terminal readout continuity/no-positive-jump, or with the endpoint
jump being consumed by the same four-body/CM-facing machinery.
