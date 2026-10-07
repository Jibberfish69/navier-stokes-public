# Joint invariant Gram and signed current execution

**Reviewed scope and currentness.** The mathematical statements retain their recorded hypotheses and the reconciliations listed in the supersession register. E_delta finiteness is a sufficient condition in this new analysis; no arbitrary-datum bound on it is asserted. Original finite-rectangle membership, when supplied, implies downstream source and selected-current bounds. Optional sufficient criteria in this report are not added as upstream premises of the printed producer. The mathematical body retains its stated strict-time, terminal, pressure and force hypotheses. Publication adds no unconditional global theorem claim.


This calculation continues the actual proof after the earlier bounded composition pass. It keeps the nonlinear current, invariant constraints and Gram cross terms together before taking magnitude bounds. All fields are coordinates of the one prescribed Navier–Stokes history on the same \(I=(0,T)\), with \(T\) finite and at most its maximal classical endpoint. Identities first hold on \(S<T\).

Primary mathematical sources read in full:

- [Invariant-transverse recruitment, ITR1–ITR46](../SOURCES.md#S230).
- [Actual first-binomial commutator, ITC1–ITC29](../SOURCES.md#S221).
- The exact source Sobolev constant in [unforced analytic framework](../SOURCES.md#S136) and the complete three-factor current pairing in [refutation body](../SOURCES.md#S126).

The status statements and prior countertests in these documents are not evidence for the implications derived below.

## 1. Exact tangencies before duality

Use \(Q=-\mathbb P((u\cdot\nabla)u)\), \(g=\mathbb Pf\), so
\[
u_t+\nu\Lambda^2u=Q+g.
\]
The original pressure is \(p=R_iR_j(u_i u_j)-(-\Delta)^{-1}\operatorname{div}f\). Projection is its exact solenoidal coordinate.

Incompressibility gives \((Q,u)=0\). With \(\omega=\nabla\times u\), the full vector identity
\[
(u\cdot\nabla)u=\omega\times u+\nabla(|u|^2/2)
\]
also gives \((Q,\omega)=0\). These two identities hold at every classical time even when the prescribed force is nonzero; \(Q\) denotes the intrinsic nonlinear source.

Let \(\mathsf S=\Lambda^{-1}\nabla\times\) on solenoidal fields, and set
\[
a=\Lambda^{1/2}u,\quad h=\mathsf S\Lambda^{3/2}u,\quad
c=\Lambda^{3/2}u,\quad \eta=\Lambda^{-1/2}Q.
\]
Then \((\eta,a)=(\eta,h)=0\), while the complete signed critical production is \(P=(\eta,c)\).

Write
\[
R=\|a\|_2^2,\quad Z=\|\Lambda u\|_2^2,\quad D=\|c\|_2^2,\quad
J_2=(\Lambda u,\mathsf S\Lambda u),\quad J_3=(c,\mathsf Sc),\quad
b_Q=\|\eta\|_2.
\]
The actual Gram matrix of these four fields is
\[
\begin{pmatrix}
R&J_2&Z&0\\
J_2&D&J_3&0\\
Z&J_3&D&P\\
0&0&P&b_Q^2
\end{pmatrix}\succeq0.
\]
Let \(\Pi_u\) project onto \(\operatorname{span}_{\mathbb R}\{a,h\}\), and put \(d=(I-\Pi_u)c\), \(\delta=\|d\|_2\). Its exact Schur complement is
\[
\begin{pmatrix}\delta^2&P\\P&b_Q^2\end{pmatrix}\succeq0,
\qquad
\delta^2=D-v^{\mathsf T}G^\dagger v,
\quad
G=\begin{pmatrix}R&J_2\\J_2&D\end{pmatrix},\quad v=\binom Z{J_3}.
\]
Thus \(P=(\eta,d)\) and \(P^2\le b_Q^2\delta^2\), retaining both invariant cancellations. At rank loss \(G^\dagger\) is the Moore–Penrose inverse; no singular quotient is used.

## 2. A newly composed whole-terminal implication

The stated source embedding is \(\|v\|_3\le C_3\|\Lambda^{1/2}v\|_2\), \(C_3=2^{-1/6}\pi^{-1/3}\), for vectors and tensors without a component factor. For a solenoidal test field \(\phi\), Hölder gives
\[
|(Q,\phi)|
\le \|u\|_3\|\nabla u\|_3\|\phi\|_3
\le C_3^3\sqrt R\sqrt D\,\|\Lambda^{1/2}\phi\|_2.
\]
Self-adjoint projection permits the same dual bound for arbitrary tests. Consequently
\[
b_Q\le C_*\sqrt R\sqrt D,\qquad C_*=C_3^3=\frac1{\sqrt2\,\pi}.
\]
Combining this with the full Schur complement, rather than discarding its invariant directions, yields
\[
P\le C_*\sqrt R\sqrt D\,\delta.
\]
The original critical equation is
\[
\tfrac12R'+\nu D=P+(g,\Lambda u).
\]
Young on the retained nonlinear pairing and moving the entire source weight onto the prescribed \(g\) therefore gives
\[
R'+\nu D
\le \frac{C_*^2}{\nu}R\delta^2+2K\|\Lambda g\|_2,
\qquad
K=\|u_0\|_2+\int_0^T\|g\|_2.
\tag{JG1}
\]
No initial critical smallness and no positive terminal coordinate has been assumed to derive JG1.

Let \(E_\delta(S)=\int_0^S\delta^2\), \(A(S)=E_\delta(S)/(2\pi^2\nu)\), and \(F_\Lambda(T)=2K\int_0^T\|\Lambda g\|_2\). The integrating factor gives exactly
\[
e^{-A(S)}R(S)+\nu\int_0^S e^{-A(t)}D(t)\,dt
\le R(0)+\int_0^S 2K e^{-A(t)}\|\Lambda g(t)\|_2\,dt.
\]
Because \(A\) is nondecreasing,
\[
\boxed{
R(S)+\nu\int_0^S D
\le (R(0)+F_\Lambda(T))e^{E_\delta(S)/(2\pi^2\nu)}.}
\tag{JG2}
\]
Hence one finite \(E_\delta(T)\) supplies the actual critical square action and the complete original mixed intersection, pressure endpoint and same-force restart. The constants are independent of \(S<T\). This is a new composition of the recovered invariant Gram formulas and the actual source bound; the read ITR/ITC notes do not state this action criterion.

The source's upper faces give
\[
\delta^2\le D-\frac{Z^2}{R},
\qquad
\delta^2\le \frac{4D_+D_-}{D}\le4\min(D_+,D_-),
\]
where \(D_\pm=\|\Lambda^{3/2}u_\pm\|_2^2\). Ratios at a zero field are read as zero. Thus finite accumulated spectral-breadth defect, or finite accumulated lesser-helicity critical action, suffices for the same complete continuation. These are conditions on the actual history, not assumptions that initial helicity or spectral support persists.

Conversely \(\delta^2\le D\). Thus finiteness of \(E_\delta\) and the critical action are equivalent along this actual history, with the quantitatively different bounds in JG2. The new implication does not itself pay \(E_\delta\) from arbitrary datum.

## 3. Keep the actual signed transverse evolution

On a fixed-rank classical portion let \(L=\Lambda-\alpha I-\beta\nabla\times\) be the minimizing frame, so \(d=\Lambda^{1/2}Lu\). The original graph gives
\[
d_t+\nu\Lambda^2d
=\Lambda^{1/2}L(Q+g)-\alpha'a-\beta'h.
\]
Since \(d\perp\{a,h\}\), every moving-frame derivative cancels in the storage equation:
\[
\tfrac12(\delta^2)'+\nu\|\Lambda d\|_2^2
=(d,\Lambda^{1/2}LQ)+(d,\Lambda^{1/2}Lg).
\tag{JG3}
\]
The intrinsic right side is exactly \((Q,\Lambda L^2u)\), retaining all coefficients and signs. For solenoidal \(u\), \((\nabla\times)^2u=\Lambda^2u\), so it expands to
\[
(1+\beta^2)(Q,\Lambda^3u)-2\alpha(Q,\Lambda^2u)
-2\beta(Q,\Lambda^2\nabla\times u)
+\alpha^2(Q,\Lambda u)+2\alpha\beta(Q,\Lambda\nabla\times u).
\]
These are joined higher spatial/helical productions of the same fluid; the two zero invariant pairings have already been used. JG3 neither discards them nor assigns them a damping sign.

Likewise the full first-binomial source row is
\[
Q_t+\nu\Lambda^2Q=DQ(u)[Q]+2\nu\mathcal C(u)+DQ(u)[g],
\]
\[
DQ(u)[v]=-\mathbb P((v\cdot\nabla)u+(u\cdot\nabla)v),\quad
\mathcal C(u)=\sum_j\mathbb P((\partial_ju\cdot\nabla)\partial_ju).
\]
Differentiating the two tangent constraints in a direction \(v\) cancels all frame coefficients in the signed current derivative. Its frame-free form is
\[
P'=\mathfrak K_{1/2}(u;u_t),\qquad
\mathfrak K_{1/2}(u;v)
=(DQ(u)[v],\Lambda u)-(DQ(u)[\Lambda v],u).
\tag{JG4}
\]
Every actual temporal insertion remains in JG4. In the unforced case, for the high-transverse occupation set \(\{\delta>M\}\), Fubini on each strict horizon gives
\[
\int_0^S\mathbf1_{\{\delta>M\}}P
=P(0)W_{M,S}(0)+
\int_0^S W_{M,S}(t)\mathfrak K_{1/2}(u;u_t)(t)\,dt,
\]
\[
W_{M,S}(t)=\int_t^S\mathbf1_{\{\delta(r)>M\}}\,dr.
\]
This keeps the signed occupation-weighted commutator joined. No absolute sum over parents is substituted.

The current continuation avenue is therefore exact: pay either the transverse action in JG2, or the signed high-transverse occupation primitive together with its already paid bounded-transverse complement. JG3/JG4 identify the full remaining dynamic terms. A datum-only bound for those terms has not yet been derived in this calculation; no claim that all possible history-dependent cancellations are exhausted is made.
