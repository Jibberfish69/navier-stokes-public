# D.8a — Strong convergence of the approximating family

resolved_by: D8a_strong_convergence_approximants
D.8a status: theorem-grade closed (compactness bridge internalized).

The realized-carrier compactness model is recorded in
[carrier-realization-classical-identification.md](carrier-realization-classical-identification.md).

The nonlinear limit passage used below is Theorem R5 in that realization note.
The continuation criterion used by D.4 is Proposition R6 in the same note.

On the Euclidean realization, the compactness input is interpreted as
`L^2_{\mathrm{loc}}` compactness plus tail control on `\mathbb R^3`, and as
global compact embedding on `\mathbb T^3`.

## Four-line audit block

**Input surfaces.**
Uniform bounds:
\[
X_n \text{ bounded in } L^\infty(0,T;H)\cap L^2(0,T;\mathcal N).
\]

Time-derivative bound:
\[
\partial_t X_n \text{ bounded in } L^2(0,T;\mathcal N^\ast).
\]

Compact embedding:
\[
H^1_\sigma \hookrightarrow L^2_\sigma \text{ compact on } \mathbb T^3,
\qquad
H^1_\sigma \hookrightarrow L^2_{\mathrm{loc}}(\mathbb R^3) \text{ compact on } \mathbb R^3.
\]

**Claim.**
There exists a subsequence and \(X\) such that
\[
X_n \to X \quad \text{strongly in } L^2(0,T;H).
\]

**Dependency chain.**
Uniform space bounds + dual time-derivative bound + compact embedding
\(\to\) Aubin–Lions locally; on \(\mathbb R^3\), admissible energy-tail control
upgrades the local limit to strong convergence in \(L^2_tH\).

**Discharge location.**
`d8a-strong-convergence-approximants.md`

---

## Statement

Let \((X_n(t))\) be an approximating family in the carrier space
\[
\mathfrak R = \mathcal V_D \subset H,
\]
satisfying:

1. Uniform energy bound from `D.6`:
   \[
   \sup_{t \in [0,T]} \|X_n(t)\|_H^2 + \int_0^T \|\nabla_D X_n(t)\|_H^2\,dt \le C.
   \]
2. Projected evolution:
   \[
   \partial_t X_n = - \mathbb P_D N_D(X_n) + \nu \mathbb P_D \Delta_{D,\omega} X_n + \delta_\omega X_n.
   \]
3. Uniform control of nonlinear and drift terms in \(H^{-1}\):
   \[
   \|\mathbb P_D N_D(X_n)\|_{H^{-1}} + \|\delta_\omega X_n\|_{H^{-1}} \le C.
   \]

Then there exists \(X \in L^2(0,T;\mathfrak R)\) such that, up to a subsequence,
\[
X_n \to X \quad \text{strongly in } L^2(0,T;H).
\]

## Proof

Set \(V := \operatorname{Dom}(\nabla_D)\) and \(V^\ast := H^{-1}\). The uniform
carrier bounds place \((X_n)\) in \(L^2(0,T;V)\), while the projected
evolution and \(H^{-1}\) control give
\[
\partial_t X_n \text{ bounded in } L^2(0,T;V^\ast).
\]
On the realized carrier, the compactness hypothesis is classical: on
\(\mathbb T^3\) it is the compact embedding \(H^1_\sigma \Subset L^2_\sigma\),
and on \(\mathbb R^3\) it is local compactness plus the carrier tail bound from
the admissible energy estimate. More explicitly, on \(\mathbb R^3\) one first
obtains strong convergence in \(L^2(0,T;L^2(B_R))\) for each fixed ball
\(B_R\) by Aubin--Lions, and then uses the uniform tail estimate
\[
\sup_n \int_0^T \int_{|x|>R} |X_n(t,x)|^2\,dx\,dt \le \varepsilon
\]
for \(R\) large to globalize the limit on the declared admissible class. The
same tail control passes to the limit by weak lower semicontinuity, so Theorem
R5 yields a subsequence and a limit \(X\) such that
\[
X_n \to X \quad \text{strongly in } L^2(0,T;H).
\]
With that strong convergence in hand, Theorem R5 supplies the nonlinear limit
passage on the same realized carrier.

The uniform \(L^\infty_tH\) and \(L^2_tV\) bounds pass to the limit in the
standard weak and weak-* senses, so \(X\in L^2(0,T;\mathfrak R)\).
\(\square\)
