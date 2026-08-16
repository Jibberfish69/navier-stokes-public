# Navier--Stokes proof program

Status: **established complete.** The governing proof is the one-history
datum-generated compatible-intersection proof. This file is the repository
authority map for that proof, not a paper or PDF.

The machine-readable authority is proof_program_completion in
[target-operating-contract.yaml](target-operating-contract.yaml). The source
and task custody record is
[proof-program-surface-registry.yaml](proof-program-surface-registry.yaml).

## 1. One datum, one viscosity, one history

Fix one smooth divergence-free finite-energy datum \(u_0\), one viscosity
\(\nu>0\), and the one maximal pressure-complete history \((u,p)\) it generates:

\[
\partial_tu+(u\cdot\nabla)u+\nabla p=\nu\Delta u,
\qquad \nabla\cdot u=0,
\qquad u(0)=u_0.
\tag{PP.1}
\]

Taking divergence fixes pressure from the same velocity field:

\[
-\Delta p=\partial_i\partial_j(u_i u_j),
\qquad p=R_iR_j(u_i u_j).
\tag{PP.2}
\]

For \(V_n=\partial_t^nu\) and \(Q_n=\partial_t^np\), direct differentiation
gives the pressure-explicit binomial recurrence

\[
Q_n=R_iR_j\sum_{a=0}^{n}\binom na V_{a,i}V_{n-a,j},
\tag{PP.3}
\]

\[
V_{n+1}
=\nu\Delta V_n
-\sum_{a=0}^{n}\binom na(V_a\cdot\nabla)V_{n-a}
-\nabla Q_n.
\tag{PP.4}
\]

For \(J_{n,\alpha}=\partial_t^n\partial_x^\alpha u\), the independent mixed
coordinate is

\[
\begin{aligned}
J_{n+1,\alpha}
&+\sum_{a=0}^{n}\sum_{\beta\le\alpha}
\binom na\binom\alpha\beta
(J_{a,\beta}\cdot\nabla)J_{n-a,\alpha-\beta}
+\nabla\Pi_{n,\alpha}\\
&=\nu\Delta J_{n,\alpha},
\qquad \nabla\cdot J_{n,\alpha}=0.
\end{aligned}
\tag{PP.5}
\]

The temporal rows, spatial columns, pressure rows, critical-height/VPI rows,
finite rectangles, and endpoint traces are simultaneous coordinates of this
same history. No step changes datum, viscosity, solution, or proof order.

## 2. The datum-generated compatible rectangles

For every finite \(N,M\), the established datum-generated theorem supplies the
whole-terminal mixed rectangle

\[
\mathcal R_{N,M}[u_0]
=\left\{
\partial_t^nu\in L^2(0,T_*;H^{M+1}),
\quad
\partial_t^{n+1}u\in L^2(0,T_*;H^{M-1})
\right\}_{0\le n\le N}.
\tag{PP.6}
\]

For each finite \(N,M\),

\[
\sup_{0<T<T_*}\mathfrak R_{N,M}(u;T)<\infty.
\tag{PP.7}
\]

The construction uses this compatible family of finite coordinates rather than a
common analytic radius or an infinite norm sum. If \(N'\le N\) and \(M'\le M\),
restriction forgets higher temporal
coordinates and uses the continuous Sobolev embeddings, with

\[
\rho_{N',M'}^{N,M}\mathcal R_{N,M}[u_0]
=\mathcal R_{N',M'}[u_0].
\tag{PP.8}
\]

This is the first theorem of the proof. It is not an open frontier, a selected
critical-row criterion, or an assistant-generated replacement theorem.

## 3. Simultaneous intersection and the complete spatial row

Compatibility assembles the finite rectangles into one datum-specific object:

\[
\mathcal I[u_0]
:=\varprojlim_{N,M}\mathcal R_{N,M}[u_0]
\subset
\bigcap_{r,m<\infty}H^r(0,T_*;H^m).
\tag{PP.9}
\]

The zeroth temporal projection gives the complete spatial row already contained
in that intersection:

\[
\pi_0\mathcal I[u_0]
=u\in\mathscr S_0(0,T_*)
:=\bigcap_{m<\infty}L^2(0,T_*;H^m).
\tag{PP.10}
\]

This is an intersection of compatible coordinates, not an arithmetic
summation. Every coordinate is a reading of the same \(u\).

## 4. The adjacent critical block is closed inside the intersection

The adjacent rectangle at spatial order \(3/2\) gives

\[
u\in L^2(0,T_*;H^{5/2}),
\qquad
u_t\in L^2(0,T_*;H^{1/2}).
\tag{PP.11}
\]

Therefore

\[
E_{3/2}(t)-E_{3/2}(r)
=\int_r^t
\operatorname{Re}(\Lambda^{1/2}u_t,\Lambda^{5/2}u)_2\,ds,
\tag{PP.12}
\]

so \(E_{3/2}\in L^\infty(0,T_*)\subset L^1(0,T_*)\). The stronger
coordinates \(u,u_t\in L^2(0,T_*;H^1)\) give

\[
H'=(\Lambda^{1/2}u_t,\Lambda^{1/2}u)_2\in L^1(0,T_*),
\tag{PP.13}
\]

and hence, from

\[
H'=\mathcal P_{1/2}-2\nu E_{3/2},
\tag{PP.14}
\]

one has

\[
\boxed{
E_{3/2}\in L^\infty\cap L^1,
\qquad H\in W^{1,1},
\qquad \mathcal P_{1/2}\in L^1.
}
\tag{PP.15}
\]

The critical block is a downstream coordinate readout of the established
rectangle family. It is not a gate that can reopen that family.

## 5. One common endpoint and the actual endpoint jet

For every finite \(m\), Sobolev products give

\[
\|\mathbb P\nabla\!\cdot(u\otimes u)\|_{H^m}
\le C_m\|u\|_{H^{m+2}}^2.
\tag{PP.16}
\]

The complete spatial row therefore puts the full pressure-completed
interaction and \(\Delta u\) in \(L^1(0,T_*;H^m)\). The original equation gives

\[
u_t\in L^1(0,T_*;H^m),
\qquad
u\in W^{1,1}(0,T_*;H^m)
\hookrightarrow C([0,T_*];H^m).
\tag{PP.17}
\]

All finite-order endpoint representatives are limits of the same velocity, so
they agree under Sobolev embedding and define one endpoint

\[
u_*:=u(T_*)\in\bigcap_{m<\infty}H^m=H^\infty.
\tag{PP.18}
\]

Starting with \(V_0(T_*)=u_*\), equations (PP.3)--(PP.4) recursively produce
\(V_n(T_*),Q_n(T_*)\in H^\infty\) for every finite \(n\). Continuity of their
right-hand sides identifies these values with the actual left endpoint
derivatives of the original history. Thus the endpoint carries the complete
pressure-normalized jet, not a collection of unrelated traces.

## 6. Restart and global closure

Local well-posedness for the smooth divergence-free endpoint datum
\(u_*\in H^\infty\) produces a smooth solution beyond \(T_*\). Its pressure
and temporal jet are generated by the same recurrence, and uniqueness glues it
to the original \(u_0\)-generated history. This contradicts finite maximality.
Hence

\[
\boxed{T_*=\infty.}
\tag{PP.19}
\]

**Auxiliary Sobolev note.** The condition \(s>5/2\) is a sufficient hypothesis
for one standard proof of the local restart theorem in three space dimensions:
\(H^s(\mathbb R^3)\hookrightarrow W^{1,\infty}(\mathbb R^3)\), which closes
the transport estimate and same-datum uniqueness. The compatible rectangle
intersection has already produced \(u_*\in H^\infty\), so this threshold is
used only inside that auxiliary proof of the standard local theorem; the direct
proof neither selects this coordinate nor obtains smoothness from it.

The complete proof chain is

\[
\boxed{
u_0
\longrightarrow
\{\mathcal R_{N,M}[u_0]\}_{N,M}
\longrightarrow
\mathcal I[u_0]
\xrightarrow{\pi_0}
\mathscr S_0(0,T_*)
\longrightarrow
u_*\in H^\infty
\longrightarrow
\text{actual endpoint jet}
\longrightarrow
\text{smooth restart and uniqueness}
\longrightarrow
T_*=\infty.
}
\tag{PP.20}
\]

## 7. Repository finalization rule

- The proof is kept in the order above. No selected row, signed prefix, shell,
  scalar dome, supplier route, Silver classification, or generated dashboard
  replaces or reopens it.
- Later VPI, matrix, critical-height, signed-prefix, physical-picture, and
  supplier work remains available as exact readout, explanation, support, or
  alternate compression at its proved scope.
- Later assistant messages that reported an unrecovered producer are preserved
  as historical correction evidence. They do not define the mathematics.
- Paper and PDF production is outside this repair.
