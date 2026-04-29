# PTC-Shape Conditional Finite-Frame Proof

## Status

Conditional proof of the constructive finite-frame form of `PTC-Shape`.

This closes the shape side from the current stop-line suppliers. It does not prove those suppliers unconditionally.

## Target

Prove the shape packet consumed by the exact-potential `D.7mq` route:

```text
PTC-Shape: selector-good shape normalization / balanced-frame replacement
```

The constructive target is a finite selector frame

```math
\sum_{\ell=1}^m w_\ell\,\omega_\ell\otimes\omega_\ell=\Pi_{N_a},
\qquad w_\ell>0,
\qquad \sum_\ell w_\ell=d=\dim N_a.
```

This is the finite-frame replacement for normalized degree-2 isotropy of the selector-good shape tensor.

## Hypotheses on the same selector-good strip

1. Sectorwise relative oscillation of the diagonal density around the parent-cell average:

```math
\operatorname*{ess\,sup}_{a\in Q_s^{ent}}
|\delta_{j,Q}(a)-\bar\delta_j(Q)|
\le \sigma_{diag}\bar\delta_j(Q),
\qquad 0\le \sigma_{diag}<1.
```

2. Finite shell comparability on the same core-cap family:

```math
\int_{G_J}|\delta_{J,r}^{\pm}(a)-s_{\pm,r}^{shell}|\,d\mu_j(a)
\le \varepsilon_J^{shell},
\qquad
\max_{r,\pm}s_{\pm,r}^{shell}\le \varsigma_J,
```

with `\varepsilon_J^{shell}\to0` and `\varsigma_J\to0`.

3. Active-segment regular-window control, written as the transport-stability input used by the constructive QSP chain, for example a uniform `\sup |\nabla v_J|` bound on the active segments.

4. The inherited bounded-multiplicity sector graph and parent sign packet from the TPS entrance-sector refinement.

## Proof

First, the sectorwise oscillation hypothesis gives diagonal restriction stability. Indeed, on every terminal entrance-sector cell `Q_s^{ent}`,

```math
\delta_{j,Q}(a)\ge (1-\sigma_{diag})\bar\delta_j(Q)
\quad\text{for a.e. }a\in Q_s^{ent}.
```

Integrating over `Q_s^{ent}` gives

```math
d_j^{diag}(Q_s^{ent})
\ge
(1-\sigma_{diag})d_j^{diag}(Q)
\frac{\mu_j(Q_s^{ent})}{\mu_j(Q)}.
```

Thus diagonal restriction stability holds with `\theta_{diag}=1-\sigma_{diag}`.

Second, by the inherited bounded-multiplicity sector graph, the edge-localization half of the entrance-sector sign packet is already supplied. The diagonal restriction bound above supplies the remaining diagonal half. Hence the entrance-sector selector sign primitive holds.

Third, finite shell comparability gives the shell-leakage packet. For every shell cap,

```math
\int_{G_J}\delta_{J,r}^{\pm}(a)\,d\mu_j(a)
\le
\varepsilon_J^{shell}+\varsigma_J\mu_j(G_J).
```

Thus the shell leakage is `o_J(1)` on the chosen core-cap family.

Fourth, the constructive QSP chain combines the entrance-sector sign primitive, shell leakage, and active-segment transport stability into the two-sided quadratic sign-separation packet: for every nonzero traceless symmetric operator `A` on `N_a`, the selector-good directional support contains positive sign mass in both sets

```math
\{\omega:\omega^\top A\omega\ge \kappa\|A\|_{op}\},
\qquad
\{\omega:\omega^\top A\omega\le -\kappa\|A\|_{op}\}.
```

Fifth, two-sided sign separation gives support-level quadratic interiority. Therefore

```math
\frac1d\Pi_{N_a}\in\operatorname{int}\operatorname{conv}\{\omega\otimes\omega:\omega\in\Omega_J(a,t)\}.
```

By the balanced-frame lemma, there exist finitely many selector-good directions and positive weights such that

```math
\sum_{\ell=1}^m w_\ell\,\omega_\ell\otimes\omega_\ell=\Pi_{N_a}.
```

This is exactly the constructive finite-frame form of `PTC-Shape`.

## Downstream consequence

With `PTC-Lin` on the same selected finite frame, the finite-frame linearization tensor obeys

```math
\mathcal K_J^{frame}
= W_J^{coc}\Pi_{N_a}(W_J^{coc})^* + \text{small error}.
```

Together with the exact-potential comparison packet and the Cauchy-Green simple-top gap, this feeds `EP.Frame.Closure` and yields `D.7mq`.

## Conclusion

`PTC-Shape` is proved in the constructive finite-frame sense from the current stop-line suppliers:

```text
sectorwise diagonal-density oscillation
+ finite shell comparability
+ active-segment gradient control
=> finite balanced selector frame
=> PTC-Shape.
```

The remaining non-formal work is upstream of this proof: prove the sectorwise diagonal-density oscillation theorem, prove finite shell comparability on the same core-cap family, and keep the active-segment transport bound on the same selector-good strip.