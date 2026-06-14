# PSJ Plus Off-Axis Smallness Implies Bootstrap Envelope

## Status

Candidate theorem-facing audit note for the exact-potential simple-top branch.

Role: test whether the current live weighted bootstrap envelope

```math
\int_{\mathcal G_J}
M_J^2\bigl(\Lambda_J^{boot}\eta_J^{boot}\bigr)^2\,d\mu_J=o_J(1)
\tag{OA.0}
```

can be reduced to a single off-axis theorem for the instantaneous strain block.

## Audit Result

The proposed reduction

```math
\text{off-axis smallness}
\Longrightarrow
(\mathrm{Boot})
\tag{OA.1}
```

is **not honest as stated** on the current branch variables.

There are two separate obstructions.

1. The installed bootstrap packet runs in the direction

```math
\eta_J^{boot}
\Longrightarrow
\bigl\|\Pi_J^{ref}-\Pi_J^{top}\bigr\|_F^2,
\tag{OA.2}
```

via `D.7mm5`; the reverse implication
`\eta_J^{boot}{}^2\le C_{\mathrm{OA}}\|\Pi_J^{ref}-\Pi_J^{top}\|_F^2` is not currently on
disk.

2. The off-axis block alone does not identify the top line. If `\Pi` is any
rank-one invariant projector for `S_J^N`, then
`(I-\Pi)S_J^N\Pi=0`, even if `\Pi` is a lower eigenspace rather than the top
eigenspace. So one needs a second hypothesis asserting that the reference line
actually lives in the top spectral slot.

So the correct direct theorem is not

```math
\text{off-axis smallness only}
\Longrightarrow
(\mathrm{Boot}),
\tag{OA.3}
```

but rather

```math
\text{off-axis smallness}
+
\text{top-slot Rayleigh lower bound}
\Longrightarrow
\text{selector-strain compatibility}.
\tag{OA.4}
```

This is a sharper branch-local route: it bypasses the `D.7mb` bootstrap
envelope instead of deriving it.

## Branch Notation

Write

```math
\Pi_J^{ref}:=P_J^{CG},
\qquad
\Pi_J^{top}:=P_{J,\top}^{seg},
\qquad
g_J^{str}:=\lambda_{J,1}^{top}-\lambda_{J,2}^{top}.
\tag{OA.5}
```

Let

```math
\rho_J^{ref}
:=
\operatorname{tr}\!\bigl(\Pi_J^{ref}S_J^N\bigr),
\tag{OA.6}
```

the Rayleigh quotient of `S_J^N` on the rank-one line `\Pi_J^{ref}`.

Define the off-axis strain block

```math
\mathcal B_J^{off}
:=
(I-\Pi_J^{ref})S_J^N\Pi_J^{ref}.
\tag{OA.7}
```

## Proposition `OffAxis-Top`

### Candidate Theorem OA.A

Assume on `\mathcal G_J` that

```math
g_J^{str}\ge \gamma_0>0,
\tag{OA.8}
```

and that there is a fixed `\kappa_0>0` such that

```math
\rho_J^{ref}
\ge
\lambda_{J,2}^{top}
+
\kappa_0 g_J^{str}.
\tag{OA.9}
```

Then

```math
\bigl\|\Pi_J^{ref}-\Pi_J^{top}\bigr\|_F^2
\le
\frac{2}{\kappa_0^2}
\frac{
\bigl\|\mathcal B_J^{off}\bigr\|_F^2
}{
\bigl(g_J^{str}\bigr)^2
}
\qquad\text{on }\mathcal G_J.
\tag{OA.10}
```

### Proof

Choose a measurable unit vector `u_J` spanning `\Pi_J^{ref}` and an orthonormal
eigenbasis `\{n_J,e_{J,2},\dots,e_{J,N}\}` for `S_J^N`, where
`n_J` spans `\Pi_J^{top}` and `S_J^N e_{J,i}=\lambda_{J,i}^{top}e_{J,i}` for
`i\ge 2`.

Write

```math
u_J
=
\alpha_1 n_J+\sum_{i\ge 2}\alpha_i e_{J,i},
\qquad
\sum_i |\alpha_i|^2=1,
\tag{OA.11}
```

and set

```math
s_J^2
:=
\sum_{i\ge 2}|\alpha_i|^2
=
1-|\langle u_J,n_J\rangle|^2.
\tag{OA.12}
```

Since `\Pi_J^{ref}` is rank one,

```math
\bigl\|\Pi_J^{ref}-\Pi_J^{top}\bigr\|_F^2
=
2s_J^2.
\tag{OA.13}
```

Now `\mathcal B_J^{off}u_J=(I-\Pi_J^{ref})S_J^N u_J`, so
`\|\mathcal B_J^{off}\|_F=\|(I-\Pi_J^{ref})S_J^N u_J\|`. But
`(I-\Pi_J^{ref})S_J^N u_J = S_J^N u_J-\rho_J^{ref}u_J`, hence

```math
\bigl\|\mathcal B_J^{off}\bigr\|_F^2
=
\sum_{i\ge 1} |\alpha_i|^2\bigl(\lambda_{J,i}^{top}-\rho_J^{ref}\bigr)^2.
\tag{OA.14}
```

For `i\ge 2`, one has `\lambda_{J,i}^{top}\le \lambda_{J,2}^{top}`, so by
`(OA.9)`,

```math
\bigl|\lambda_{J,i}^{top}-\rho_J^{ref}\bigr|
\ge
\rho_J^{ref}-\lambda_{J,2}^{top}
\ge
\kappa_0 g_J^{str}.
\tag{OA.15}
```

Therefore

```math
\bigl\|\mathcal B_J^{off}\bigr\|_F^2
\ge
\sum_{i\ge 2} |\alpha_i|^2\bigl(\kappa_0 g_J^{str}\bigr)^2
=
\kappa_0^2\bigl(g_J^{str}\bigr)^2 s_J^2.
\tag{OA.16}
```

Combine `(OA.13)` and `(OA.16)` to obtain `(OA.10)`. ∎

## Weighted Corollary

### Corollary OA.B

Assume `(OA.8)`-`(OA.9)` and

```math
\int_{\mathcal G_J}
M_J^2
\bigl\|\mathcal B_J^{off}\bigr\|_F^2\,d\mu_J
=
o_J(1).
\tag{OA.17}
```

Then

```math
\int_{\mathcal G_J}
M_J^2
\bigl\|\Pi_J^{ref}-\Pi_J^{top}\bigr\|_F^2\,d\mu_J
=
o_J(1),
\tag{OA.18}
```

so `SSC` follows directly. Consequently the already audited projector-first
splice yields

```math
\texttt{RefObs + SSC}
\Longrightarrow
\texttt{D.7mr2}
\Longrightarrow
\texttt{RPC.3}
\Longrightarrow
\texttt{SG.4B}.
\tag{OA.19}
```

So the honest off-axis theorem wall is

```math
\boxed{
\text{weighted off-axis smallness}
+
\text{weighted top-slot Rayleigh control}.
}
\tag{OA.20}
```

## If One Insists On The Bootstrap Envelope

To recover the live envelope `(OA.0)` from off-axis data, one still needs a
separate reverse bootstrap theorem of the form

```math
\eta_J^{boot}{}^2
\le C_{\mathrm{OA21}}
\bigl\|\Pi_J^{ref}-\Pi_J^{top}\bigr\|_F^2.
\tag{OA.21}
```

That statement is not presently on disk and is stronger than the installed
`D.7mm` direction `(OA.2)`.

So the clean theorem-facing conclusion is:

1. `PSJ+-OffAxis-Small => Boot` is not currently justified on the live branch;
2. the honest direct route is `OffAxis-Top` plus weighted off-axis smallness;
3. if a future reverse-bootstrap normalization like `(OA.21)` is proved, then
   the envelope `(OA.0)` becomes a short corollary.

## Interpretation

This note sharpens the current frontier rather than moving it. The remaining
math can be read in two equivalent ways:

1. the installed live wall `(OA.0)` on the `D.7mb` route;
2. the alternate direct wall `(OA.20)` on the instantaneous off-axis route.

The second formulation shows exactly what the first is hiding: off-axis
invariance failure is not enough by itself; one also needs the reference line
to occupy the top spectral slot of `S_J^N`.
