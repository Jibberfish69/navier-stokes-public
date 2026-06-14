# Exact-Potential Angular Ledger Discharge

## Status

Active theorem-facing assembly note for the exact-potential simple-top branch.

Role: package the audited projector-first route from synchronization and
selector-strain compatibility into the branch-facing export `D.7mr2`.

## Target

Discharge the exact-potential angular ledger in the audited form

```math
(D.7m3)+D.7mq+\mathrm{SSC}
\Longrightarrow
D.7mr2.
\tag{C0}
```

In the generated Navier-Stokes frontier surfaces, the installed synchronization
estimate `(D.7m3)` is treated as ambient on this route, so the shorthand there
remains

```math
D.7mq+\mathrm{SSC}\Longrightarrow D.7mr2.
\tag{C0'}
```

## Branch Notation

Let

```math
\Pi_J^{pair}:=\widehat P_{J,\varepsilon}^{pair},
\qquad
\Pi_J^{ref}:=P_J^{CG},
\qquad
\Pi_J^{top}:=P_{J,\top}^{seg},
\tag{C1}
```

and let `\mathcal G_J` be the selector-good family on the exact-potential
branch. Define the weighted observation packet

```math
\mathcal E_{J,M}^{obs}
:=
\int_{\mathcal G_J} M_J^2 |W_J|^2\,d\mu_J.
\tag{C2}
```

On the simple-top branch, set

```math
\Xi_J^{ang}
:=
1-(e_{ab}\cdot n_J)^2
=
\frac12\bigl\|e_{ab}e_{ab}^{\top}-\Pi_J^{top}\bigr\|_F^2.
\tag{C3}
```

Choose a measurable unit lift `r_J` of the signless rank-one projector
`\Pi_J^{ref}`, so

```math
r_Jr_J^\top=\Pi_J^{ref}.
\tag{C4}
```

Then

```math
1-(e_{ab}\cdot r_J)^2
=
\frac12\bigl\|e_{ab}e_{ab}^{\top}-\Pi_J^{ref}\bigr\|_F^2,
\qquad
1-(r_J\cdot n_J)^2
=
\frac12\bigl\|\Pi_J^{ref}-\Pi_J^{top}\bigr\|_F^2.
\tag{C5}
```

## Proposition `D.7mq`

Assume `PTC-Lin` and `PTC-Shape`. Then there exists a remainder
`R_J^{pair}\ge 0` such that

```math
\bigl\|\Pi_J^{pair}-\Pi_J^{ref}\bigr\|_F^2\le R_J^{pair}
\quad\text{on }\mathcal G_J,
\qquad
\int_{\mathcal G_J} M_J^2 R_J^{pair}\,d\mu_J=o_J(1).
\tag{D.7mq}
```

This is the branch-facing form of

```math
\texttt{PTC-Lin + PTC-Shape}\Longrightarrow \texttt{D.7mq}.
\tag{C6}
```

## Installed Synchronization Input `(D.7m3)`

Assume the branch synchronization estimate

```math
\bigl\|e_{ab}e_{ab}^{\top}-\Pi_J^{pair}\bigr\|_F^2
\le C|W_J|^2+R_J^{sync}
\quad\text{on }\mathcal G_J,
\qquad
\int_{\mathcal G_J} M_J^2 R_J^{sync}\,d\mu_J=o_J(1).
\tag{D.7m3}
```

This is the missing ambient input that turns the projector packet `D.7mq` into
a statement about the raw pair direction `e_{ab}`.

## Corollary `RefObs`

From `(D.7m3)` and `(D.7mq)`,

```math
\bigl\|e_{ab}e_{ab}^{\top}-\Pi_J^{ref}\bigr\|_F^2
\le
2\bigl\|e_{ab}e_{ab}^{\top}-\Pi_J^{pair}\bigr\|_F^2
+
2\bigl\|\Pi_J^{pair}-\Pi_J^{ref}\bigr\|_F^2.
\tag{C7}
```

Hence

```math
\bigl\|e_{ab}e_{ab}^{\top}-\Pi_J^{ref}\bigr\|_F^2
\le
2C|W_J|^2+2R_J^{sync}+2R_J^{pair}.
\tag{RefObs.1}
```

Multiplying by `M_J^2` and integrating over `\mathcal G_J` gives

```math
\int_{\mathcal G_J} M_J^2
\bigl\|e_{ab}e_{ab}^{\top}-\Pi_J^{ref}\bigr\|_F^2\,d\mu_J
\le
C_{ref}\mathcal E_{J,M}^{obs}+\varepsilon_J.
\tag{RefObs}
```

After the measurable lift,

```math
\int_{\mathcal G_J} M_J^2\bigl(1-(e_{ab}\cdot r_J)^2\bigr)\,d\mu_J
\le
C_{ref}\mathcal E_{J,M}^{obs}+\varepsilon_J.
\tag{RefObs^\sharp}
```

## Proposition `SSC`

Assume `D.7mp + D.7mo + D.7mm`. Then there exists a remainder
`R_J^{ssc}\ge 0` such that

```math
\bigl\|\Pi_J^{ref}-\Pi_J^{top}\bigr\|_F^2\le R_J^{ssc}
\quad\text{on }\mathcal G_J,
\qquad
\int_{\mathcal G_J} M_J^2 R_J^{ssc}\,d\mu_J=o_J(1).
\tag{SSC}
```

After the measurable lift,

```math
1-(r_J\cdot n_J)^2\le \frac12 R_J^{ssc}.
\tag{SSC^\sharp}
```

This is the projector-first branch form of

```math
\texttt{D.7mp + D.7mo + D.7mm}\Longrightarrow \texttt{SSC}.
\tag{C8}
```

## Corollary `D.7mr2`

Combine `RefObs` and `SSC`:

```math
\bigl\|e_{ab}e_{ab}^{\top}-\Pi_J^{top}\bigr\|_F^2
\le
2\bigl\|e_{ab}e_{ab}^{\top}-\Pi_J^{ref}\bigr\|_F^2
+
2\bigl\|\Pi_J^{ref}-\Pi_J^{top}\bigr\|_F^2.
\tag{C9}
```

Therefore

```math
\int_{\mathcal G_J} M_J^2
\bigl\|e_{ab}e_{ab}^{\top}-\Pi_J^{top}\bigr\|_F^2\,d\mu_J
\le
C_{top}\mathcal E_{J,M}^{obs}+\varepsilon_J.
\tag{C10}
```

Using

```math
\bigl\|e_{ab}e_{ab}^{\top}-\Pi_J^{top}\bigr\|_F^2=2\Xi_J^{ang},
\tag{C11}
```

we obtain

```math
\int_{\mathcal G_J} M_J^2\Xi_J^{ang}\,d\mu_J
\le
C_{ang}\mathcal E_{J,M}^{obs}+\varepsilon_J.
\tag{D.7mr2}
```

This is the audited branch-facing export.

## Quadratic Reconstruction Target

Since `0\le \Xi_J^{ang}\le 1`,

```math
(\Xi_J^{ang})^2\le \Xi_J^{ang}.
\tag{C12}
```

Hence

```math
\int_{\mathcal G_J} M_J^2(\Xi_J^{ang})^2\,d\mu_J
\le
\int_{\mathcal G_J} M_J^2\Xi_J^{ang}\,d\mu_J
\le
C_{ang}\mathcal E_{J,M}^{obs}+\varepsilon_J.
\tag{Quad}
```

So the linear normalization implies the older quadratic reconstruction target.

## Export To The Unweighted Packet

If a separate supplier estimate is available in the form

```math
\mathcal E_{J,M}^{obs}\le C_M\mathcal E_J^{obs}+\varepsilon_J,
\tag{C13}
```

then `(D.7mr2)` yields the unweighted export

```math
\int_{\mathcal G_J} M_J^2\Xi_J^{ang}\,d\mu_J
\le
C_{ang,M}\mathcal E_J^{obs}+\varepsilon_J.
\tag{D.7mr2^\flat}
```

## Route Read

The exact audited spine is:

```math
\texttt{PTC-Lin + PTC-Shape}\Longrightarrow \texttt{D.7mq},
\tag{C14}
```

```math
\texttt{(D.7m3) + D.7mq}\Longrightarrow \texttt{RefObs},
\tag{C15}
```

```math
\texttt{D.7mp + D.7mo + D.7mm}\Longrightarrow \texttt{SSC},
\tag{C16}
```

```math
\texttt{RefObs + SSC}\Longrightarrow \texttt{D.7mr2}.
\tag{C17}
```

This note is pure assembly. The hard debts sit upstream in the pair theorem
packet and the selector-strain sufficiency packet.
