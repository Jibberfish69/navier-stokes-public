# Localized Projector-Moment Concentration Implies Pair Suppliers

## Status

Candidate theorem-facing reduction note for the exact-potential simple-top
branch.

Role: collapse the pair-level supplier wall to one surrogate operator
concentration theorem.

## Purpose

Sharpen the pair-level route

```math
\texttt{Pair-OffAxis}
+
\texttt{Pair-TopSlot}
+
\texttt{Sync}
+
\texttt{Ratio}
\Longrightarrow
\texttt{SSC}
\tag{LPM.0}
```

by showing that the two pair suppliers already follow from one normalized
operator concentration estimate for a symmetric pair surrogate whose top
projector is `\Pi_J^{pair}`.

This is stronger than the earlier scalar-plus-operator package: the scalar
top-direction test turns out to be redundant once the surrogate is
operator-close to `S_J^N`.

## Generic Surrogate Packet

Let `T_J^{pair}` be a symmetric bundle tensor on the selector-good family with
simple top rank-one projector

```math
\Pi_J^{pair}
:=
\Pi_{\max}\!\bigl(T_J^{pair}\bigr),
\tag{LPM.1}
```

and top eigenvalue

```math
\tau_{J,1}^{pair}:=\lambda_1(T_J^{pair}).
\tag{LPM.2}
```

Write

```math
\rho_J^{pair}:=\operatorname{tr}(\Pi_J^{pair}S_J^N),
\qquad
\mathcal B_J^{pair}:=(I-\Pi_J^{pair})S_J^N\Pi_J^{pair},
\tag{LPM.3}
```

and define the normalized operator-concentration defect

```math
\delta_J^{sur}
:=
\frac{\|S_J^N-T_J^{pair}\|_{\mathrm{op}}}{g_J^{str}},
\qquad
g_J^{str}:=\lambda_{J,1}^{top}-\lambda_{J,2}^{top}.
\tag{LPM.4}
```

For the pair-topslot packet from
[pair-topslot-and-offaxis-suppliers-imply-ssc.md](/Users/thomasbirnie/Workspace/ToE/Research-Consolidation/problems/navier-stokes/theorem-construction/pair-topslot-and-offaxis-suppliers-imply-ssc.md),
fix `0<\kappa_0\le 1` and define

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
\tag{LPM.5}
```

## Proposition `SurrogateConcentration => PairSuppliers`

### Candidate Theorem LPM.A

Assume `g_J^{str}>0` on `\mathcal G_J` and

```math
\int_{\mathcal G_J}
M_J^2(\delta_J^{sur})^2\,d\mu_J
=
o_J(1).
\tag{LPM.6}
```

Then both pair-level suppliers hold:

```math
\int_{\mathcal G_J}
M_J^2(\delta_{J,\mathrm{pair}}^{off})^2\,d\mu_J
=
o_J(1),
\tag{P-OA}
```

```math
\int_{\mathcal G_J}
M_J^2(\delta_{J,\mathrm{pair}}^{ray})^2\,d\mu_J
=
o_J(1).
\tag{P-Ray}
```

### Proof

Because `\Pi_J^{pair}` is the top spectral projector of `T_J^{pair}`,

```math
(I-\Pi_J^{pair})T_J^{pair}\Pi_J^{pair}=0.
\tag{LPM.7}
```

Hence

```math
\mathcal B_J^{pair}
=(I-\Pi_J^{pair})(S_J^N-T_J^{pair})\Pi_J^{pair},
\tag{LPM.8}
```

so

```math
\|\mathcal B_J^{pair}\|_F
\le
\|S_J^N-T_J^{pair}\|_{\mathrm{op}}.
\tag{LPM.9}
```

Dividing by `g_J^{str}` gives the pointwise bound

```math
\delta_{J,\mathrm{pair}}^{off}\le \delta_J^{sur},
\tag{LPM.10}
```

and integrating yields `(P-OA)`.

For the Rayleigh side, choose a measurable unit vector `u_J` spanning
`\Pi_J^{pair}`. Then

```math
\rho_J^{pair}
=
\langle u_J,S_J^N u_J\rangle
=
\langle u_J,T_J^{pair}u_J\rangle
+
\langle u_J,(S_J^N-T_J^{pair})u_J\rangle
=
\tau_{J,1}^{pair}
+
\langle u_J,(S_J^N-T_J^{pair})u_J\rangle.
\tag{LPM.11}
```

Therefore

```math
\rho_J^{pair}
\ge
\tau_{J,1}^{pair}-\|S_J^N-T_J^{pair}\|_{\mathrm{op}}.
\tag{LPM.12}
```

Now `\tau_{J,1}^{pair}\ge \langle n_J,T_J^{pair}n_J\rangle`, while

```math
\langle n_J,T_J^{pair}n_J\rangle
=
\lambda_{J,1}^{top}
+
\langle n_J,(T_J^{pair}-S_J^N)n_J\rangle
\ge
\lambda_{J,1}^{top}-\|S_J^N-T_J^{pair}\|_{\mathrm{op}}.
\tag{LPM.13}
```

Combining `(LPM.12)` and `(LPM.13)` gives

```math
\rho_J^{pair}
\ge
\lambda_{J,1}^{top}
-2\|S_J^N-T_J^{pair}\|_{\mathrm{op}}
=
\lambda_{J,2}^{top}
+g_J^{str}
-2\|S_J^N-T_J^{pair}\|_{\mathrm{op}}.
\tag{LPM.14}
```

So

```math
\bigl[\kappa_0 g_J^{str}-(\rho_J^{pair}-\lambda_{J,2}^{top})\bigr]_+
\le
\bigl[2\|S_J^N-T_J^{pair}\|_{\mathrm{op}}-(1-\kappa_0)g_J^{str}\bigr]_+
\le
2\|S_J^N-T_J^{pair}\|_{\mathrm{op}},
\tag{LPM.15}
```

because `0<\kappa_0\le 1`. Dividing by `g_J^{str}` yields

```math
\delta_{J,\mathrm{pair}}^{ray}\le 2\delta_J^{sur}.
\tag{LPM.16}
```

Integrating `(LPM.16)` proves `(P-Ray)`. ∎

## Corollary `SurrogateConcentration + Sync + Ratio => SSC`

### Candidate Corollary LPM.B

Assume `(LPM.6)` together with the synchronization packet

```math
\int_{\mathcal G_J}
M_J^2\|\Pi_J^{pair}-\Pi_J^{ref}\|_F^2\,d\mu_J=o_J(1),
\tag{Sync}
```

and the branch ratio bound

```math
\sup_{\mathcal G_J}\frac{\|S_J^N\|_F}{g_J^{str}}\le C_S.
\tag{Ratio}
```

Then `SSC` holds. Consequently,

```math
\texttt{SSC}
\Longrightarrow
\texttt{D.7mr2}
\Longrightarrow
\texttt{RPC.3}
\Longrightarrow
\texttt{SG.4B}.
\tag{LPM.17}
```

### Proof

By `LPM.A`, hypotheses `(LPM.6)` imply `(P-OA)` and `(P-Ray)`. Apply Theorem
`PSS.B` from
[pair-topslot-and-offaxis-suppliers-imply-ssc.md](/Users/thomasbirnie/Workspace/ToE/Research-Consolidation/problems/navier-stokes/theorem-construction/pair-topslot-and-offaxis-suppliers-imply-ssc.md)
to obtain `SSC`, then splice into the already audited projector-first route. ∎

## Localized Projector-Moment Route

The natural exact-potential candidate is the on-disk localized projector-moment
tensor `\widetilde S_J`, whose top spectral projector is the pair projector
used on that route. So if

```math
T_J^{pair}:=\widetilde S_J,
\qquad
\Pi_J^{pair}=\Pi_{\max}(\widetilde S_J),
\tag{LPM.18}
```

then one strengthened sufficient route reduces the pair-level wall to the
single normalized operator-concentration theorem

```math
\int_{\mathcal G_J}
M_J^2
\frac{\|S_J^N-\widetilde S_J\|_{\mathrm{op}}^2}{(g_J^{str})^2}\,d\mu_J
=
o_J(1).
\tag{LPM.19}
```

Once `(LPM.19)` is proved, the pair-level suppliers, `SSC`, `D.7mr2`,
`RPC.3`, and `SG.4B` follow through the cited supplier chain on this
subroute. This is a sufficient reduction only; it does not replace the later
averaged projector dynamics and moment-closure supplier.

Audit correction: this does **not** mean `(LPM.19)` is the honest first local
wall forced by the projector-moment construction. The new note
[localized-projector-moment-dynamics-and-moment-closure.md](/Users/thomasbirnie/Workspace/ToE/Research-Consolidation/problems/navier-stokes/theorem-construction/localized-projector-moment-dynamics-and-moment-closure.md)
shows that the direct comparison to the raw tensor `S_J^N` is overstrong, and
that the canonical local dynamics supplier is the moment-closure packet built
from `PSJ+.6`.

## Interpretation

This is the smallest strengthened sufficient closure package on this particular
subroute.

The scalar top-direction mass test suggested earlier is useful as a diagnostic
or fallback, but it is not needed for theorem closure once one has normalized
operator concentration of the surrogate toward `S_J^N`.

So this strengthened subroute would tighten to:

```math
\boxed{
\text{prove the gap-normalized weighted operator concentration }
\|S_J^N-T_J^{pair}\|_{\mathrm{op}}/g_J^{str}\to 0.
}
\tag{LPM.20}
```
