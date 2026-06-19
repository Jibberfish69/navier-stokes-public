# Pair Topslot And Offaxis Suppliers Imply SSC

## Status

Candidate theorem-facing reduction note for the exact-potential simple-top
branch.

Role: reduce the selector-strain packet to two pair-level suppliers once the
pair-to-reference synchronization packet is available.

Its lawful branch start is upstream: `EWI.A` installs the exact-potential
constitutive import, and this note begins only once the branch-local
projector-first splice has already produced the pair/reference packet.
On the current branch that splice is honestly realized by
`\text{PTC-Lin}+\text{PTC-Shape}\Longrightarrow D.7mq`, and this note keeps
that exact-potential packetization rather than treating `Sync` as a primitive
import.

## Purpose

After `EWI.A` and the projector-first splice, package the corrected direct route

```math
EWI.A
+
\texttt{Pair-OffAxis}
+
\texttt{Pair-TopSlot}
+
\texttt{Sync}
+
\texttt{Ratio}
\Longrightarrow
\texttt{SSC},
\tag{PSS.0}
```

and then use the already audited projector-first splice

```math
\texttt{SSC}
\Longrightarrow
\texttt{D.7mr2}
\Longrightarrow
\texttt{RPC.3}
\Longrightarrow
\texttt{SG.4B}.
\tag{PSS.1}
```

This note is downstream of
[psj-plus-off-axis-smallness-implies-bootstrap-envelope.md](/Users/thomasbirnie/Workspace/ToE/Research-Consolidation/problems/navier-stokes/theorem-construction/psj-plus-off-axis-smallness-implies-bootstrap-envelope.md),
which already showed that off-axis smallness alone is insufficient and that one
also needs a top-slot Rayleigh condition.

It is therefore not a constitutive start and not a synchronization theorem in
its own right. It is a downstream supplier-reduction packet on the already
imported exact-potential branch.

## Branch Notation

Write

```math
\Pi_J^{pair}:=\widehat P_{J,\varepsilon}^{pair},
\qquad
\Pi_J^{ref}:=P_J^{CG},
\qquad
\Pi_J^{top}:=P_{J,\top}^{seg},
\tag{PSS.2}
```

and define

```math
\mathcal B_J^{pair}
:=
(I-\Pi_J^{pair})S_J^N\Pi_J^{pair},
\qquad
\mathcal B_J^{off}
:=
(I-\Pi_J^{ref})S_J^N\Pi_J^{ref},
\tag{PSS.3}
```

```math
\rho_J^{pair}
:=
\operatorname{tr}(\Pi_J^{pair}S_J^N),
\qquad
\rho_J^{ref}
:=
\operatorname{tr}(\Pi_J^{ref}S_J^N),
\tag{PSS.4}
```

```math
g_J^{str}:=\lambda_{J,1}^{top}-\lambda_{J,2}^{top}.
\tag{PSS.5}
```

Fix `\kappa_0>0` and define the normalized reference defects

```math
\delta_J^{off}
:=
\frac{\|\mathcal B_J^{off}\|_F}{g_J^{str}},
\qquad
\delta_J^{ray}
:=
\frac{
\bigl[\kappa_0 g_J^{str}-(\rho_J^{ref}-\lambda_{J,2}^{top})\bigr]_+
}{
g_J^{str}
}.
\tag{PSS.6}
```

Likewise define the pair-level defects

```math
\delta_{J,\mathrm{pair}}^{off}
:=
\frac{\|\mathcal B_J^{pair}\|_F}{g_J^{str}},
\qquad
\delta_{J,\mathrm{pair}}^{ray}
:=
\frac{
\bigl[\kappa_0 g_J^{str}-(\rho_J^{pair}-\lambda_{J,2}^{top})\bigr]_+
}{
g_J^{str}
}.
\tag{PSS.7}
```

## Proposition `Thresholded-OffAxis-Top => SSC`

### Candidate Theorem PSS.A

Assume the simple-top gap floor

```math
g_J^{str}\ge \gamma_0>0
\qquad\text{on }\mathcal G_J,
\tag{PSS.8}
```

and assume

```math
\int_{\mathcal G_J} M_J^2(\delta_J^{off})^2\,d\mu_J=o_J(1),
\qquad
\int_{\mathcal G_J} M_J^2(\delta_J^{ray})^2\,d\mu_J=o_J(1).
\tag{PSS.9}
```

Then

```math
\int_{\mathcal G_J}
M_J^2\bigl\|\Pi_J^{ref}-\Pi_J^{top}\bigr\|_F^2\,d\mu_J
=
o_J(1),
\tag{SSC}
```

so the selector-strain packet closes.

### Proof

Let

```math
\mathcal G_J^{good}
:=
\{\delta_J^{ray}\le \kappa_0/2\},
\qquad
\mathcal G_J^{bad}
:=
\mathcal G_J\setminus\mathcal G_J^{good}.
\tag{PSS.10}
```

On `\mathcal G_J^{good}`,

```math
\rho_J^{ref}
\ge
\lambda_{J,2}^{top}
+
\frac{\kappa_0}{2}g_J^{str}.
\tag{PSS.11}
```

Applying `OA.A` from
[psj-plus-off-axis-smallness-implies-bootstrap-envelope.md](/Users/thomasbirnie/Workspace/ToE/Research-Consolidation/problems/navier-stokes/theorem-construction/psj-plus-off-axis-smallness-implies-bootstrap-envelope.md)
with `\kappa_0/2` in place of `\kappa_0` gives

```math
\bigl\|\Pi_J^{ref}-\Pi_J^{top}\bigr\|_F^2
\le
\frac{8}{\kappa_0^2}(\delta_J^{off})^2
\qquad\text{on }\mathcal G_J^{good}.
\tag{PSS.12}
```

Hence

```math
\int_{\mathcal G_J^{good}}
M_J^2\bigl\|\Pi_J^{ref}-\Pi_J^{top}\bigr\|_F^2\,d\mu_J
\le
\frac{8}{\kappa_0^2}
\int_{\mathcal G_J}
M_J^2(\delta_J^{off})^2\,d\mu_J
=
o_J(1).
\tag{PSS.13}
```

On `\mathcal G_J^{bad}`, one has `\delta_J^{ray}>\kappa_0/2`, so

```math
\mathbf 1_{\mathcal G_J^{bad}}
\le
\frac{4}{\kappa_0^2}(\delta_J^{ray})^2.
\tag{PSS.14}
```

Since rank-one projector differences satisfy
`\|\Pi_J^{ref}-\Pi_J^{top}\|_F^2\le 2`, it follows that

```math
\int_{\mathcal G_J^{bad}}
M_J^2\bigl\|\Pi_J^{ref}-\Pi_J^{top}\bigr\|_F^2\,d\mu_J
\le
\frac{8}{\kappa_0^2}
\int_{\mathcal G_J}
M_J^2(\delta_J^{ray})^2\,d\mu_J
=
o_J(1).
\tag{PSS.15}
```

Adding `(PSS.13)` and `(PSS.15)` proves `(SSC)`. ∎

## Synchronization And Ratio Inputs

The pair-to-reference synchronization packet is

```math
\int_{\mathcal G_J}
M_J^2\bigl\|\Pi_J^{pair}-\Pi_J^{ref}\bigr\|_F^2\,d\mu_J
=
o_J(1).
\tag{Sync}
```

The branch ratio bound is

```math
\sup_{\mathcal G_J}\frac{\|S_J^N\|_F}{g_J^{str}}\le C_S.
\tag{Ratio}
```

## Lemma `OA-Transfer`

Pointwise,

```math
\|\mathcal B_J^{off}\|_F
\le
\|\mathcal B_J^{pair}\|_F
+
2\|S_J^N\|_F\bigl\|\Pi_J^{pair}-\Pi_J^{ref}\bigr\|_F.
\tag{PSS.16}
```

Therefore

```math
\int_{\mathcal G_J}
M_J^2\frac{\|\mathcal B_J^{off}\|_F^2}{(g_J^{str})^2}\,d\mu_J
\le C_{T\text{-}OA}
\int_{\mathcal G_J}
M_J^2\frac{\|\mathcal B_J^{pair}\|_F^2}{(g_J^{str})^2}\,d\mu_J
+
C_S^2
\int_{\mathcal G_J}
M_J^2\bigl\|\Pi_J^{pair}-\Pi_J^{ref}\bigr\|_F^2\,d\mu_J.
\tag{T-OA}
```

### Proof

Insert and subtract `\Pi_J^{pair}`:

```math
\mathcal B_J^{off}
=
(I-\Pi_J^{pair})S_J^N\Pi_J^{pair}
+
(I-\Pi_J^{pair})S_J^N(\Pi_J^{ref}-\Pi_J^{pair})
+
(\Pi_J^{pair}-\Pi_J^{ref})S_J^N\Pi_J^{ref}.
\tag{PSS.17}
```

Take Frobenius norms and use that orthogonal projectors have operator norm `1`.
This gives `(PSS.16)`, and squaring plus `(Ratio)` yields `(T-OA)`. ∎

## Lemma `Ray-Transfer`

Pointwise,

```math
|\rho_J^{ref}-\rho_J^{pair}|
=
|\operatorname{tr}((\Pi_J^{ref}-\Pi_J^{pair})S_J^N)|
\le
\|S_J^N\|_F\bigl\|\Pi_J^{ref}-\Pi_J^{pair}\bigr\|_F.
\tag{PSS.18}
```

Therefore

```math
\bigl[\kappa_0 g_J^{str}-(\rho_J^{ref}-\lambda_{J,2}^{top})\bigr]_+
\le
\bigl[\kappa_0 g_J^{str}-(\rho_J^{pair}-\lambda_{J,2}^{top})\bigr]_+
+
\|S_J^N\|_F\bigl\|\Pi_J^{ref}-\Pi_J^{pair}\bigr\|_F,
\tag{PSS.19}
```

and hence

```math
\int_{\mathcal G_J}
M_J^2(\delta_J^{ray})^2\,d\mu_J
\le C_{T\text{-}Ray}
\int_{\mathcal G_J}
M_J^2(\delta_{J,\mathrm{pair}}^{ray})^2\,d\mu_J
+
C_S^2
\int_{\mathcal G_J}
M_J^2\bigl\|\Pi_J^{pair}-\Pi_J^{ref}\bigr\|_F^2\,d\mu_J.
\tag{T-Ray}
```

### Proof

Equation `(PSS.18)` is the Hilbert-Schmidt trace estimate. Then use
`[x-y]_+\le [x]_+ + y` for `y\ge 0`, divide by `g_J^{str}`, square, and apply
`(Ratio)`. ∎

## Pair-Level Supplier Theorems

The smallest honest pair-level wall is now:

### `Pair-OffAxis`

```math
\int_{\mathcal G_J}
M_J^2(\delta_{J,\mathrm{pair}}^{off})^2\,d\mu_J
=
o_J(1).
\tag{P-OA}
```

### `Pair-TopSlot`

```math
\int_{\mathcal G_J}
M_J^2(\delta_{J,\mathrm{pair}}^{ray})^2\,d\mu_J
=
o_J(1).
\tag{P-Ray}
```

## Theorem `Pair suppliers => SSC`

### Candidate Theorem PSS.B

Assume `(P-OA)`, `(P-Ray)`, `(Sync)`, and `(Ratio)`. Then `(SSC)` holds.
Consequently,

```math
\texttt{SSC}
\Longrightarrow
\texttt{D.7mr2}
\Longrightarrow
\texttt{RPC.3}
\Longrightarrow
\texttt{SG.4B}.
\tag{PSS.20}
```

### Proof

By `(T-OA)`, `(P-OA)`, and `(Sync)`,

```math
\int_{\mathcal G_J} M_J^2(\delta_J^{off})^2\,d\mu_J=o_J(1).
\tag{PSS.21}
```

By `(T-Ray)`, `(P-Ray)`, and `(Sync)`,

```math
\int_{\mathcal G_J} M_J^2(\delta_J^{ray})^2\,d\mu_J=o_J(1).
\tag{PSS.22}
```

Now apply Proposition `PSS.A` to obtain `(SSC)`. The downstream implication is
the already audited projector-first splice from
[exact-potential-angular-ledger-discharge.md](/Users/thomasbirnie/Workspace/ToE/Research-Consolidation/problems/navier-stokes/theorem-construction/exact-potential-angular-ledger-discharge.md). ∎

## Interpretation

This note is the clean lane-facing reduction of the selector-strain side.

The remaining exact-potential wall is no longer the full bootstrap packet, nor
the full current-time Cauchy--Green selector-strain theorem. It is exactly the
pair-level two-supplier package:

```math
\boxed{
\texttt{Pair-OffAxis}
\quad+\quad
\texttt{Pair-TopSlot}.
}
\tag{PSS.23}
```

Everything downstream of those two suppliers is conditional assembly from the
two displayed supplier estimates.
