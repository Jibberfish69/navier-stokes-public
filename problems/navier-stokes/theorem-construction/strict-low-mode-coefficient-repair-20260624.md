# Strict Low-Mode Coefficient Repair For The Route B `4 -> 1` Packet

Date: 2026-06-24

Status: theorem-construction repair note; local gold-route packet repair, not a full Clay closure claim.

## 1. Placement

This note repairs the coefficient defect identified in:

- `problems/navier-stokes/theorem-construction/tail-energy-strict-low-mode-reduction-lemma.md`,
- `problems/navier-stokes/theorem-construction/euclidean-scale-barrier-recertification-lemma.md`,
- `problems/navier-stokes/theorem-construction/combined-closure-sufficiency-lemma.md`,
- `problems/navier-stokes/theorem-construction/closure-package.md`.

The target is the Route B Euclidean `4 -> 1` return packet.  The surface is the same classical Euclidean Navier--Stokes surface used by the C3 packet:

\[
[0,T)\times \mathbb R^3,
\qquad
\partial_t u+\mathbb P\nabla\cdot(u\otimes u)=\nu\Delta u,
\qquad
\nabla\cdot u=0.
\]

The relevant tail quantities are

\[
T_N(t)=\|P_{\ge N}u(t)\|_{L^2_x}^2,
\qquad
Q_N(t)=\|\nabla P_{\ge N}u(t)\|_{L^2_x}^2.
\]

The goal is to keep the full packet on one same-surface route and avoid replacing the Route B mechanism by a diagnostic side estimate.

## 2. Exact defect in the existing strict low-mode note

The existing note reaches the shellwise bound

\[
\mathcal L_N(t)\,\|\nabla\Delta_j u(t)\|_2\,\|\Delta_j u(t)\|_2.
\]

A direct Young inequality gives

\[
\mathcal L_N ab
\le \varepsilon a^2+C_\varepsilon \mathcal L_N^2 b^2,
\]

so it does not preserve the declared coefficient surface

\[
C\mathcal L_N(t)T_N(t)+\frac{\eta\nu}{4}Q_N(t).
\]

Therefore the existing line cannot be treated as a closed theorem-grade discharge in its current form.

## 3. Correct packet split

The strict low-mode contribution must be split by the actual advective structure rather than treated as a generic paraproduct product.

For low velocity and high gradient,

\[
I_{LH,j,k}
=
\langle \Delta_k u\cdot\nabla\Delta_j u,\Delta_j u\rangle,
\qquad k\le N-4,\ j\ge N,
\]

the divergence-free condition gives exact cancellation:

\[
I_{LH,j,k}
=\frac12\int_{\mathbb R^3}\Delta_k u\cdot\nabla |\Delta_j u|^2\,dx
=-\frac12\int_{\mathbb R^3}(\nabla\cdot\Delta_k u)|\Delta_j u|^2\,dx=0.
\]

This part costs no coefficient and no absorption budget.

The remaining strict low-mode piece is the high-velocity / low-gradient packet.  Its algebraic form is

\[
I_{HL,j,k}
=
\langle \Delta_j u\cdot\nabla\Delta_k u,\Delta_j u\rangle.
\]

For this term the coefficient is a low-gradient coefficient, not the old low-velocity coefficient.

Define

\[
\mathcal G_N(t)
:=
1+\sum_{k\le N-4}2^{3k/2}\|\nabla\Delta_k u(t)\|_{L^2_x}.
\]

Bernstein gives

\[
\|\nabla\Delta_k u(t)\|_{L^\infty_x}
\le C2^{3k/2}\|\nabla\Delta_k u(t)\|_{L^2_x}.
\]

Hence

\[
|I_{HL,j,k}|
\le
C2^{3k/2}\|\nabla\Delta_k u(t)\|_2\,\|\Delta_j u(t)\|_2^2.
\]

Summing over `k\le N-4` and then `j\ge N` gives

\[
\sum_{j\ge N}\sum_{k\le N-4}|I_{HL,j,k}|
\le
C\mathcal G_N(t)T_N(t).
\]

This is coefficient-preserving because no high-shell derivative is created in the bound.

## 4. Same-surface admissibility of the repaired coefficient

The Euclidean gradient-transfer step already supplies

\[
K_T:=\sup_{0\le t<T}\|\nabla u(t)\|_{L^2_x}<\infty
\]

inside the same Route B packet before the `4 -> 1` return is used.

By Cauchy--Schwarz,

\[
\sum_{k\le N-4}2^{3k/2}\|\nabla\Delta_k u(t)\|_2
\le
\left(\sum_{k\le N-4}2^{3k}\right)^{1/2}
\left(\sum_{k\le N-4}\|\nabla\Delta_k u(t)\|_2^2\right)^{1/2}.
\]

Therefore

\[
\mathcal G_N(t)
\le
1+C2^{3N/2}K_T.
\]

Thus

\[
\mathcal G_N\in L^\infty(0,T)\cap L^1(0,T)
\]

for each fixed `N`, and its threshold growth is `2^{3N/2}`.

## 5. Absorption by the retained tail damping

The `4 -> 1` recertification packet keeps the coercive dyadic damping

\[
Q_N(t)\ge c_{LP}2^{2N}T_N(t).
\]

Combining the repaired strict low-mode bound with the spill and high-high packet bounds yields

\[
\frac12\frac{d}{dt}T_N(t)+\frac{\nu}{2}Q_N(t)
\le C\mathcal G_N(t)T_N(t).
\]

Using the coercive tail damping gives

\[
\frac12\frac{d}{dt}T_N(t)
+\left(\frac{\nu c_{LP}}2 2^{2N}-C\mathcal G_N(t)\right)T_N(t)
\le0.
\]

Since

\[
\mathcal G_N(t)\le1+C2^{3N/2}K_T,
\]

the `2^{2N}` damping dominates the repaired low-gradient coefficient for all sufficiently large `N`.  Hence there are `N_*` and `\lambda>0` such that

\[
\frac{d}{dt}T_N(t)+2\lambda2^{2N}T_N(t)\le0
\qquad (N\ge N_*).
\]

Integrating gives

\[
\int_0^T T_N(t)\,dt
\le
\frac{T_N(0)}{2\lambda2^{2N}}.
\]

For smooth compactly supported initial data, `T_N(0)` decays faster than any fixed dyadic project rate, so for the project exponent `\delta>0`,

\[
\int_0^T\|P_{\ge N}u(t)\|_2^2\,dt
\le C_*2^{-2\delta N}.
\]

This recovers the same projector and same exponent barrier shape required by the Route B `4 -> 1` return arrow.

## 6. Exact route update

The strict low-mode packet should therefore be rewritten as:

\[
\mathcal N^{tail}_{N,strict}(t)
\le C\mathcal G_N(t)T_N(t),
\]

with

\[
\mathcal G_N(t)=1+\sum_{k\le N-4}2^{3k/2}\|\nabla\Delta_k u(t)\|_2.
\]

This replaces the unstable line using

\[
\mathcal L_N(t)\|\nabla\Delta_j u\|_2\|\Delta_j u\|_2,
\]

which forces an unwanted square after Young.

The repair uses only the same Route B packet objects:

- exact incompressibility cancellation for the low-velocity/high-gradient piece;
- same-surface `H^1` control already supplied by the Euclidean gradient-transfer step;
- Littlewood--Paley tail coercivity `Q_N\ge c2^{2N}T_N`;
- smooth initial data tail decay.

No `L^\infty_x` continuation norm, modified equation, curvature branch, or extra theorem surface is introduced.

## 7. Remaining audit boundary

This note repairs the coefficient mechanism for the strict low-mode tail packet.  It does not by itself discharge the entire Navier--Stokes MPP.

The next required packet checks are:

1. verify the high-velocity / low-gradient decomposition matches the exact Bony splitting used by the local tail-energy assembly;
2. propagate `\mathcal G_N` through `euclidean-scale-barrier-recertification-lemma.md` in place of the unstable strict-low coefficient line;
3. check the spill and high-high packets against the same `T_N/Q_N` surface;
4. update `combined-closure-sufficiency-lemma.md` so C3 cites the repaired coefficient surface rather than the old compressed `\mathcal L_N` statement;
5. keep the terminal-time-face/new-production frontier separate as a different gold child unless the route-lock explicitly merges it back into the four-body Route B packet.
