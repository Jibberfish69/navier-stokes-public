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

Let the smooth low-pass have kernel

```math
K_{\le j}(x)=2^{3j}K(2^jx),
\qquad K\in\mathcal S(\mathbb R^3).
```

Assume the localizer has a carrier buffer

```math
d_j(t):=\operatorname{dist}\big(\operatorname{supp}\widetilde Q_i(t),
\mathbb R^3\setminus\mathfrak C_j(t)\big)>0.
```

Choose a smooth radial cutoff `chi_j` equal to one on `|z|\le d_j(t)/2` and
zero on `|z|\ge d_j(t)`.  Define

```math
(P_{\le j}v)_{core}(x)=\int \chi_j(x-y)K_{\le j}(x-y)v(y)\,dy,
\qquad
(P_{\le j}v)_{tail}=P_{\le j}v-(P_{\le j}v)_{core}.
```

Then the core support statement is exact on the localized readout:

```math
\operatorname{supp}\big(\widetilde Q_i(P_{\le j}v)_{core}\big)
\subseteq \mathfrak C_j(t).
```

For every `N` and every `|\alpha|\le 1`, the Schwartz kernel gives

```math
\big\|\partial^\alpha\big((1-\chi_j)K_{\le j}\big)\big\|_{L^1}
\le
C_{\alpha,N}2^{|\alpha|j}(1+2^jd_j(t))^{-N}.
```

With the usual finite-template bounds on `\widetilde Q_i`, this yields the exact
tail estimate

```math
\|\widetilde Q_i(P_{\le j}v)_{tail}\|_{W^{1,\infty}}
\le
C_N\,2^j(1+2^jd_j(t))^{-N}\|v\|_{L^\infty}.
\tag{ARS.7}
```

Thus the old literal global-support claim is replaced by the exact statement

```math
\text{principal support inside }\mathfrak C_j(t)
\quad+
\quad
\text{tail in }\Phi_*.
\tag{ARS.8}
```

## Result

Active-readout subordination is closed under physical localizer containment plus the core/tail lower-order estimate. The global plateau selector then acts on the carrier core and absorbs the smooth kernel tail into `\Phi_*`.

## Boundary

The remaining analytic supplier is the tail estimate `ARS.5` for the chosen Littlewood-Paley cutoff and readout class.

## Source surfaces

- `problems/navier-stokes/theorem-construction/proper-carrier-core-geometric-localization-result.md`
- `problems/navier-stokes/theorem-construction/carrier-core-contains-collar-supports-result.md`
- `problems/navier-stokes/theorem-construction/selector-plateau-fixed-collar-buffer-construction-result.md`
