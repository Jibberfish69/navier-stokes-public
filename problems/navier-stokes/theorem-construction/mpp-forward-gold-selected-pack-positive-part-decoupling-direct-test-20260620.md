---
theorem_id: forward-gold-selected-pack-positive-part-decoupling-direct-test-20260620
status: direct-positive-part-decoupling-test-complete-not-proved
logical_landing_node: selected_pack_positive_part_decoupling
edge_effect: "Tests the profile-route subclaim SelectedPackPositivePartDecoupling.A. The algebraic positive-part inequality gives a conditional decoupling only after the selected cross-profile Pack term is controlled on the same terminal selector. Ordinary profile orthogonality acts before selector choice and positive-part extraction, so it does not remove a near-resonant cross term. The branch returns to selected cross-term terminal strip control, one-profile localization, two-profile molecule rigidity, or the same unweighted same-carrier reserve."
parents:
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-selected-carrier-profile-decoupling-direct-test-20260620.md
  - problems/navier-stokes/theorem-construction/mcp-selectedpackpositivepartdecouplinghardstop-a-selectedpackpositivepartdecoupling-a-crossprofileterminalsourceatomexclusion-a-oneprofilepackdefectlocalization-a-ea41c616df.md
  - problems/navier-stokes/theorem-construction/mcp-positivepackdefectorthogonalityattempt-a-positivepackdefectorthogonality-a-486dcd5062.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-two-profile-pack-molecule-rigidity-direct-test-20260619.md
downstream_consequence: "SelectedPackPositivePartDecoupling.A cannot be spent as a profile-compactness supplier from ordinary orthogonality. A valid proof must add selected cross-term terminal strip control on the actual selector, one-profile selected Pack defect localization, TwoProfilePackMoleculeRigidity.A, or a direct same-carrier source-square/no-waste/unweighted reserve."
---

# MPP Forward-Gold Selected Pack Positive-Part Decoupling Direct Test

Date: 2026-06-20

## Status

Direct test complete.  `SelectedPackPositivePartDecoupling.A` is not installed
by ordinary profile decomposition or raw orthogonality.

The theorem is true only after one controls the selected cross-profile Pack
term on the same terminal selector.  Current inputs do not provide that control.

## 1. Target

Let \(u_m\) be a terminal sequence with a profile expansion

```math
u_m=\sum_{\alpha\le A}U_{\alpha,m}+r_{A,m}.
\tag{SPPD.1}
```

For a terminal selector \(\sigma\), let \(F_\sigma(u)\) be the signed local
Pack/source functional before positive-part extraction, and write

```math
P_\sigma(u):=[F_\sigma(u)]_+ .
\tag{SPPD.2}
```

The desired selected positive-part decoupling is

```math
P_{\sigma_m}(u_m)
\le
\sum_{\alpha\le A}P_{\sigma_m}(U_{\alpha,m})
+Legal_{m,A}+o_{m,A}(1)
\tag{SPPD.3}
```

for the actual selected terminal records \(\sigma_m\), followed by
\(m\to\infty\) and then \(A\to\infty\).

This is stronger than ordinary profile orthogonality because the selector
\(\sigma_m\) is chosen after localization, projection, scale normalization,
terminal-window choice, and positive-part extraction.

## 2. Conditional algebra that is paid

Expand the signed functional on the selected record:

```math
F_{\sigma_m}(u_m)
=
\sum_{\alpha\le A}F_{\sigma_m}(U_{\alpha,m})
+C_{\sigma_m}^{cross}(m,A)
+R_{\sigma_m}(m,A).
\tag{SPPD.4}
```

Since

```math
[x+y+z]_+\le [x]_+ + |y|+|z|,
\tag{SPPD.5}
```

one gets

```math
P_{\sigma_m}(u_m)
\le
\sum_{\alpha\le A}P_{\sigma_m}(U_{\alpha,m})
+|C_{\sigma_m}^{cross}(m,A)|
+|R_{\sigma_m}(m,A)|.
\tag{SPPD.6}
```

Thus the conditional theorem is exact:

```math
\lim_{A\to\infty}\limsup_{m\to\infty}
\sup_{\sigma\in\Sigma_m^{sel}}
\left(
|C_{\sigma}^{cross}(m,A)|
+|R_{\sigma}(m,A)|
\right)
=0
\tag{SPPD.7}
```

implies `(SPPD.3)`.

This pays only the algebraic consumer.  The real production burden is `(SPPD.7)`
on the actual selected terminal Pack/source records.

## 3. Why ordinary profile orthogonality does not prove the condition

Profile orthogonality controls separated profiles before the selected positive
functional is formed.  It does not control the supremum over terminal selectors
in `(SPPD.7)`.

The obstruction is local and algebraic.  Take the trace-free matrix

```math
S_0=
\begin{pmatrix}
0&1&0\\
1&0&0\\
0&0&0
\end{pmatrix}.
\tag{SPPD.8}
```

Let

```math
W^{(1)}=\psi(y)e_1,
\qquad
W^{(2)}=\psi(y)e_2.
\tag{SPPD.9}
```

Then

```math
\langle S_0W^{(1)},W^{(1)}\rangle=0,
\qquad
\langle S_0W^{(2)},W^{(2)}\rangle=0,
\tag{SPPD.10}
```

but for \(W=W^{(1)}+W^{(2)}\),

```math
\langle S_0W,W\rangle=2\psi(y)^2.
\tag{SPPD.11}
```

Multiplying by a terminal window factor gives

```math
\tau_m^{-1}\mathbf 1_{(-\tau_m,0]}(s)\,\langle S_0W,W\rangle,
\qquad
\tau_m\downarrow0.
\tag{SPPD.12}
```

After normalizing \(\psi\), the combined selected positive carrier has unit
terminal mass, while the individual profile readings in `(SPPD.10)` carry no
positive mass.

This does not assert an exact Navier--Stokes solution.  It proves that the
desired decoupling is not a formal consequence of signed or diagonal profile
orthogonality.  The missing term is exactly the selected cross contribution
\(C_{\sigma_m}^{cross}\).

## 4. Exact reduction

`SelectedPackPositivePartDecoupling.A` closes only after one proves one of the
following same-selector statements:

```math
\boxed{
\text{SelectedCrossProfileTerminalStripModulus.A}
}
\tag{SPPD.13}
```

or

```math
\boxed{
\text{OneProfilePackDefectLocalization.A}
}
\tag{SPPD.14}
```

or

```math
\boxed{
\text{TwoProfilePackMoleculeRigidity.A}.
}
\tag{SPPD.15}
```

The already tested two-profile molecule branch reduces the remaining
near-resonant low-high molecule to the same terminal heat-scale positive source
atom unless a low-high source-residence, source-square/Carleson, no-waste, or
Liouville theorem is supplied.

Equivalently, the profile route returns to the same non-aliased forward-gold
production object:

```math
\boxed{
\text{UnweightedTerminalCriticalActionReserve.A / SelectedCarrierEndpointUI.A}
\text{ on the actual selected positive carrier.}
}
\tag{SPPD.16}
```

## Verdict

`SelectedPackPositivePartDecoupling.A` is not proved from current inputs.

The exact paid statement is conditional decoupling under selected cross-term
vanishing `(SPPD.7)`.  Current profile orthogonality does not install that
condition because the positive terminal Pack/source carrier is formed after the
near-resonant cross term and selector choice.

Thus this branch gives no independent forward-gold closure.  It sharpens the
profile route to a same-selector cross-term theorem, or else to the already
isolated terminal heat-scale source-square/no-waste reserve.
