# CKN Threshold Transfer Lemma

Status: conditional threshold-transfer theorem.

## Statement

Let `Q_r^Phi` be a CKN-admissible same-fluid moving cylinder with distortion bound `M_sharp`. Define the normalized CKN scale-critical quantity after rescaling and pullback to the unit cylinder by

```math
CKN_{std}(Q_1)
:=
\iint_{Q_1}|\tilde u-\tilde u^{norm}|^3
+
\iint_{Q_1}|\tilde p-\tilde p^{norm}|^{3/2}
+
\iint_{Q_1}|\nabla_y\tilde u|^2.
```

There is a constant

```math
C_{CKN}=C(M_\sharp,\nu,\mathscr P_{req})
```

such that

```math
CKN_{std}(Q_1)
\le C_{CKN}\,SCF_{base}(Q_r^\Phi).
```

Therefore, choosing

```math
\varepsilon_m:=\varepsilon_{CKN}/C_{CKN},
```

gives

```math
SCF_{base}(Q_r^\Phi)\le\varepsilon_m
\Longrightarrow
CKN_{std}(Q_1)\le\varepsilon_{CKN}.
```

## Proof

Rescale by

```math
x=c(t)+rA(t)y,
\qquad
s=(t-t_0)/r^2.
```

The bounded-distortion hypotheses give uniform comparability of spatial volume, parabolic measure, gradients, and cylinders. Hence the velocity term satisfies

```math
\iint_{Q_1}|\tilde u-\tilde u^{norm}|^3
\le
C(M_\sharp)
\,r^{-2}\iint_{Q_r^\Phi}|u-u^{norm}|^3.
```

The pressure normalization lemma supplies the CKN-compatible pressure gauge, so

```math
\iint_{Q_1}|\tilde p-\tilde p^{norm}|^{3/2}
\le
C(M_\sharp,\nu)
\,r^{-2}\iint_{Q_r^\Phi}|p-p^{norm}|^{3/2}.
```

The gradient term transforms through the metric tensor `G=A^{-1}A^{-T}` and satisfies

```math
\iint_{Q_1}|\nabla_y\tilde u|^2
\le
C(M_\sharp)
\,r^{-1}\iint_{Q_r^\Phi}|\nabla_x u|^2.
```

Summing the three components gives

```math
CKN_{std}(Q_1)
\le C_{CKN}SCF_{base}(Q_r^\Phi).
```

The threshold choice above completes the transfer.

## Output

The implication used by the local regularity theorem is now explicit:

```math
SCF_{base}\le\varepsilon_m
\Longrightarrow
CKN_{std}\le\varepsilon_{CKN}
\Longrightarrow
ATD_m^\varepsilon.
```
