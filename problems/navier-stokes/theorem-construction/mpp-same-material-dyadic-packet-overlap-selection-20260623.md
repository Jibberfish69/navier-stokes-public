---
theorem_id: same-material-dyadic-packet-overlap-selection-20260623
status: proof-installed-same-material-log-scale-overlap-selection
logical_landing_node: same_material_dyadic_packet_overlap_selection
edge_effect: >-
  Installs the packet-counting lemma used by the uniform terminal-Zeno annular
  return proof, the R3 exterior Duhamel survivor exclusion, and the original
  smooth data to prelimit master-balance family. The overlap is not a raw
  physical-spacetime assertion: nested heat cylinders may all meet the same
  terminal point. The bounded multiplicity is on the same-material clock atlas,
  where each transported packet also carries its dyadic/log-scale label.
parents:
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-prelimit-master-balance-limit-passage-proof-20260623.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-uniform-terminal-zeno-annular-return-proof-20260623.md
  - problems/navier-stokes/theorem-construction/mpp-r3-duhamel-survivor-to-material-tower-clock-20260623.md
---

# Same-Material Dyadic Packet Overlap Selection

Date: 2026-06-23

## 0. Claim

Let \(\{P_{j,\ell}\}\) be a terminal family of transported material heat-scale
packets.  Each packet is read in the full clock atlas as

```math
\widehat P_{j,\ell}
\subset
\{\sigma:|\sigma-\Sigma_j|\le c_\sigma\}
\times
\{(s,x):s\in I_j,\ x=X_j(a,s),\ a\in B_{j,\ell}^\ast\}.
\tag{SMO.1}
```

Here \(X_j(\cdot,s)\) is the smooth material map for the same preterminal
solution on the selected packet, \(B_{j,\ell}^\ast\) is a fixed finite
enlargement of a material ball or annulus at radius comparable to
\(e^{-\Sigma_j}\), and \(c_\sigma<\infty\) is the fixed log-scale thickness of
the packet clock.

Suppose the material labels at each fixed \(j\) have multiplicity at most
\(K_a\):

```math
\sum_\ell {\bf 1}_{B_{j,\ell}^\ast}(a)\le K_a
\quad\text{for all material labels }a.
\tag{SMO.2}
```

Suppose also that the chosen log-scales are separated:

```math
|\Sigma_j-\Sigma_k|>2c_\sigma
\qquad(j\ne k).
\tag{SMO.3}
```

Then the full clock packets have bounded multiplicity:

```math
\sum_{j,\ell}{\bf 1}_{\widehat P_{j,\ell}}(\sigma,s,x)
\le K_a .
\tag{SMO.4}
```

Consequently, for every nonnegative Radon clock measure \(d\Omega\),

```math
\sum_{j=J}^{M}\sum_\ell
\int_{\widehat P_{j,\ell}} d\Omega
\le
K_a
\int_{\{\sigma\ge \Sigma_J-c_\sigma\}}d\Omega .
\tag{SMO.5}
```

This is the exact bounded-overlap counting line used by the terminal packet
contradictions.

## 1. Proof of multiplicity

Fix \((\sigma,s,x)\).  By the scale separation `(SMO.3)`, there is at most one
index \(j\) such that

```math
|\sigma-\Sigma_j|\le c_\sigma .
\tag{SMO.6}
```

For that \(j\), the material map is a diffeomorphism on the retained smooth
preterminal packet.  Therefore the physical multiplicity of transported labels
equals the material multiplicity:

```math
\sum_\ell
{\bf 1}_{X_j(B_{j,\ell}^\ast,s)}(x)
=
\sum_\ell
{\bf 1}_{B_{j,\ell}^\ast}(X_j^{-1}(x,s))
\le K_a .
\tag{SMO.7}
```

Combining `(SMO.6)` and `(SMO.7)` gives `(SMO.4)`.

Integrating `(SMO.4)` against any nonnegative clock measure gives

```math
\sum_{j=J}^{M}\sum_\ell
\int_{\widehat P_{j,\ell}}d\Omega
=
\int
\sum_{j=J}^{M}\sum_\ell
{\bf 1}_{\widehat P_{j,\ell}}\,d\Omega
\le
K_a
\int_{\bigcup_{j=J}^{M}\bigcup_\ell\widehat P_{j,\ell}}d\Omega .
\tag{SMO.8}
```

Since the selected scales are increasing and \(\Sigma_j\ge\Sigma_J\) for
\(j\ge J\),

```math
\bigcup_{j=J}^{M}\bigcup_\ell\widehat P_{j,\ell}
\subset
\{\sigma\ge \Sigma_J-c_\sigma\}.
\tag{SMO.9}
```

This proves `(SMO.5)`.

## 2. Existence of the separated terminal subfamily

If \(\Sigma_j\to\infty\), then for any fixed \(c_\sigma\) one can extract an
infinite subsequence satisfying `(SMO.3)`.  Choose \(j_1\).  Having chosen
\(j_n\), choose \(j_{n+1}\) so large that

```math
\Sigma_{j_{n+1}}>\Sigma_{j_n}+2c_\sigma+1.
\tag{SMO.10}
```

This produces an infinite separated sequence.

## 3. Material packet partitions

At each fixed scale, the material label family can be chosen with finite
multiplicity by the standard dyadic material atlas.  Equivalently, apply a
Vitali/Besicovitch extraction in the material coordinate \(a\)-space and then
transport the chosen labels by the smooth material map \(X_j(a,s)\).  The
transport does not increase multiplicity because \(X_j(\cdot,s)\) is one-to-one,
as shown in `(SMO.7)`.

Thus exterior translations, nesting at the terminal point, and later-time
annular return do not break the count.  The count is not performed on naked
physical cylinders.  It is performed on the same-material log-scale clock
packets carrying the transported annular labels.

## 4. Consequence for terminal contradictions

Let \(d\Omega_N\) be the full same-material clock measure:

```math
d\Omega_N
=
dA_{4B,N}
+
C_{\log}d[\log(1+\mathcal P_N^{mat})]_+
+
d\mathcal K_{\rm iface}
+
d\mathcal L_{4B,N}.
\tag{SMO.11}
```

If every selected terminal generation carries a fixed lower amount

```math
\sum_\ell\int_{\widehat P_{j,\ell}}d\Omega_N\ge\eta_0>0,
\tag{SMO.12}
```

then `(SMO.5)` gives, for an infinite separated tail,

```math
(M-J+1)\eta_0
\le
K_a
\int_{\{\sigma\ge \Sigma_J-c_\sigma\}}d\Omega_N.
\tag{SMO.13}
```

The prelimit master balance gives

```math
\int_{\sigma_0}^{\infty}d\Omega_N<\infty .
\tag{SMO.14}
```

Therefore the right side of `(SMO.13)` is finite for each \(J\), while the left
side diverges as \(M\to\infty\).  Infinitely many terminal generations with a
fixed same-material clock quantum are impossible.

