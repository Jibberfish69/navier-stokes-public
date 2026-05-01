# Active-Readout Subordination To Persistent Carrier Core Result

## Target

The proper carrier-core theorem requires

```math
\operatorname{supp}(\widetilde Q_iP_{\le j}v)
\subseteq
\mathfrak C_j(t)
\qquad
\text{for every active coherent readout }v.
\tag{ARS.1}
```

## Localizer-core sufficient condition

Assume a persistent carrier core `\mathfrak C_j(t)` and a physical localizer satisfying

```math
\operatorname{supp}\widetilde Q_i(t)
\subseteq
\mathfrak C_j(t).
\tag{ARS.2}
```

If the low-pass readout is localized in the theorem-facing core/tail sense,

```math
P_{\le j}v=(P_{\le j}v)_{core}+(P_{\le j}v)_{tail},
\tag{ARS.3}
```

with

```math
\operatorname{supp}\big(\widetilde Q_i(P_{\le j}v)_{core}\big)
\subseteq
\mathfrak C_j(t),
\tag{ARS.4}
```

and

```math
\|\widetilde Q_i(P_{\le j}v)_{tail}\|_{W^{1,\infty}}
\le
C\Phi_*(\mathcal E_D(X)),
\tag{ARS.5}
```

then all active readouts are subordinate to the carrier core modulo lower-order tail.

## Proof

The core part satisfies `ARS.4` by construction. The tail part contributes only through `ARS.5`, which is admitted into the lower-order ledger. Thus the collar support used for the principal estimate lies inside `\mathfrak C_j(t)`, and the discarded part is lower order. ∎

## Exact-support corollary

If the chosen low-pass implementation is compactly supported after localization, then `ARS.5` is absent and

```math
\operatorname{supp}(\widetilde Q_iP_{\le j}v)
\subseteq
\mathfrak C_j(t)
\tag{ARS.6}
```

holds exactly from `ARS.2`.

## Schwartz-kernel boundary

For standard smooth Littlewood-Paley cutoffs, the kernel has rapid tails. The route therefore uses the core/tail interpretation. The exact global support statement is replaced by

```math
\text{principal support inside }\mathfrak C_j(t)
\quad+
\quad
\text{tail in }\Phi_*.
\tag{ARS.7}
```

## Result

Active-readout subordination is closed under physical localizer containment plus the core/tail lower-order estimate. The global plateau selector then acts on the carrier core and absorbs the smooth kernel tail into `\Phi_*`.

## Boundary

The remaining analytic supplier is the tail estimate `ARS.5` for the chosen Littlewood-Paley cutoff and readout class.

## Source surfaces

- `problems/navier-stokes/theorem-construction/proper-carrier-core-geometric-localization-result.md`
- `problems/navier-stokes/theorem-construction/carrier-core-contains-collar-supports-result.md`
- `problems/navier-stokes/theorem-construction/selector-plateau-fixed-collar-buffer-construction-result.md`