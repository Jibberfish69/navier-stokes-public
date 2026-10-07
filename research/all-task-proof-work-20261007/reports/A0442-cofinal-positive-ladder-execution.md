# Finite compensated ladders: an explicit cofinal absorption attempt

**Reviewed scope and currentness.** [Executed datum-to-terminal calculations on the complete native graph](A0449-datum-to-terminal-execution.md) summarizes; later all-depth temporal/shift research explores operations outside this limitation, not a refutation or supersession. Original finite-rectangle membership, when supplied, implies downstream source and selected-current bounds. Optional sufficient criteria in this report are not added as upstream premises of the printed producer. The mathematical body retains its stated strict-time, terminal, pressure and force hypotheses. Publication adds no unconditional global theorem claim.


6 October 2026. New calculation on the original forced graph.

The original C1–C9 operation gives a positive finite force-compensated ladder while retaining its complete signed nonlinear production. This report executes a particular next operation: pay each spatial production absolutely into a higher spatial viscous row, and choose positive weights to make the resulting ladders cofinal. It derives the optimal positive price and permits weights and recipient depths chosen afresh at every finite stage.

A uniform first-row weight and uniform positive price budget impose an exponential lower bound on every receiving weight along such a cofinal payment path. The positive initial stock of an admitted datum with unbounded Fourier support requires faster decay. These requirements conflict for this selected operation. The original signed identities retain their full nonlinear terms and remain available for further operations.

## 1. Primary operation, history, and full source

The source is [forced-native-assembly-20260914.md](../SOURCES.md#S152): complete graph LF18–70, energy production LF74–99, kinetic force budget LF103–112, and spatially closed compensation C1–C9 LF214–390. The ordered-tensor interpolation is in [00-analytic-framework.tex](../SOURCES.md#S087), LF418–435. Exact excerpts with hashes and LF bounds are in [primary-operation-excerpts.json](../COVERAGE.md#A0444).

Fix \(\nu>0\), \(u_0\in H^\infty_\sigma(\mathbb R^3)\), and the source's arbitrary prescribed force: all mixed derivatives are smooth and rapidly decreasing in space, uniformly on every finite time interval. It may have arbitrary amplitude and a nonzero gradient component. Let \(u,p\) be its one classical history on \([0,T_*)\). In a finite-terminal case use the prescribed force horizon \(T=T_*>0\). All identities are initially integrated only to \(t<T_*\); no terminal value of a velocity derivative is assumed.

Write
\[
 V_n=\partial_t^nu,\quad F_n=\partial_t^nf,\quad
 G_n=\mathbb P F_n,\quad Q_n=\partial_t^np,\quad \Lambda=\sqrt{-\Delta}.
\]
The complete graph and datum-generated initial jet are
\[
 \begin{aligned}
 B_n&=\sum_{a=0}^n\binom na(V_a\cdot\nabla)V_{n-a},\\
 V_{n+1}+B_n+\nabla Q_n&=\nu\Delta V_n+F_n,\\
 \nabla Q_n&=(I-\mathbb P)(F_n-B_n),\\
 -\Delta Q_n&=\partial_i\partial_j
     \sum_{a=0}^n\binom naV_{a,i}V_{n-a,j}-\nabla\cdot F_n,\\
 \partial_x^\alpha B_n&=
  \sum_{a=0}^n\sum_{\beta\le\alpha}
  \binom na\binom\alpha\beta
  ((\partial_x^\beta V_a)\cdot\nabla)
       \partial_x^{\alpha-\beta}V_{n-a},\\
 A_0&=u_0,\qquad
 A_{n+1}=\nu\Delta A_n-
  \mathbb P\sum_{a=0}^n\binom na(A_a\cdot\nabla)A_{n-a}+G_n(0).
 \end{aligned}\tag{L1}
\]
Both nonlinear parents and all spatial and temporal allocations remain present. The calculation changes coefficients of this history's finite energy identities.

The kinetic datum quantity is
\[
 K=K_T=\|u_0\|_2+\|G_0\|_{L^1(0,T;L^2)},\qquad
 \|u(t)\|_2\le K.\tag{L2}
\]
Assume \(K>0\) for the coefficient calculation. If \(K=0\), kinetic energy and local uniqueness give \(u\equiv0\). A prescribed gradient force may still give its canonical pressure, whose gradient has a finite \(L^2\) time norm on this finite horizon.

## 2. The exact force-compensated ledger

The original energy and complete production are
\[
 E_{r,s}=\tfrac12\|\Lambda^sV_r\|_2^2,\quad
 \mathcal P_{r,s}=-\operatorname{Re}
       \langle\Lambda^sV_r,\Lambda^sB_r\rangle,\quad
 W_{r,s}=\operatorname{Re}\langle V_r,\Lambda^{2s}G_r\rangle .
\]
Pressure has zero energy pairing because these are solenoidal fields and the spatial multiplier commutes with divergence. Its full row (L1) still determines it.

The source's C1–C2 operation acts only on prescribed fields by
\[
 \mathscr M=\partial_t+2\nu\Lambda^2,\qquad
 \mathscr M^jG_r=\sum_{\ell=0}^j\binom j\ell
                 (2\nu)^\ell\Lambda^{2\ell}G_{r+j-\ell},
\]
\[
 \widetilde C_{r,s}
 =\sum_{j=0}^{r-1}(-1)^j\operatorname{Re}
      \langle V_{r-1-j},\Lambda^{2s}\mathscr M^jG_r\rangle,\qquad
 \widetilde C_{0,s}=0,
\]
\[
 (E_{r,s}-\widetilde C_{r,s})'
 +2\nu(E_{r,s+1}-\widetilde C_{r,s+1})
 =\mathcal P_{r,s}
  +(-1)^r\operatorname{Re}\langle u,\Lambda^{2s}\mathscr M^rG_r\rangle .
 \tag{L3}
\]
For the finite temporal block \(w_r=\tau^{2r}\), the complete prescribed terms are
\[
 \widetilde H_{k,s}=\sum_{r=k+1}^R(-1)^{r-1-k}
       \tau^{2r-k}\Lambda^s\mathscr M^{r-1-k}G_r,\qquad
 \widetilde\Psi^*_{R,s}=\sup_{[0,T]}\sum_{k<R}\|\widetilde H_{k,s}\|_2^2,
\]
\[
 \widetilde{\mathcal L}_{R,s}
   =\sum_{r=0}^R(-1)^rw_r\operatorname{Re}
       \langle u,\Lambda^{2s}\mathscr M^rG_r\rangle,\qquad
 |\widetilde{\mathcal L}_{R,s}|\le
 \widetilde\beta_{R,s}:=
  K\sum_{r=0}^Rw_r\sup_{[0,T]}\|\Lambda^{2s}\mathscr M^rG_r\|_2 .
\]
C3 square completion and C5 backward prescribed budgets produce C6–C7:
\[
 \widetilde Y_j'+2\nu\widetilde Y_{j+1}
   =\mathcal P^{\rm blk}_{R,h_j}-\widetilde d_j,\qquad
 0\le\widetilde d_j\le2\widetilde\beta_{R,h_j},\qquad
 \tfrac12\mathcal E_{R,h_j}\le\widetilde Y_j
 \le\tfrac32\mathcal E_{R,h_j}+\widetilde\Psi^*_{R,h_j}+a_j .
 \tag{L4}
\]
The full source is paid at each fixed finite block without a force smallness restriction. C9 retains every derivative of the nonlinear production and of the velocity–force pairings; the derivatives of the nonnegative defects have no inherited positivity.

The cofinal operation tested below starts with the exact \(R=0\) specialization. It retains the full physical spatial production and requires no temporal convergence hypothesis. Put
\[
 E_j=\tfrac12\|\Lambda^ju\|_2^2,\quad
 P_j=-\operatorname{Re}\langle\Lambda^ju,
          \Lambda^j\mathbb P\nabla\cdot(u\otimes u)\rangle,\quad
 \beta_j=K\sup_{[0,T]}\|\Lambda^{2j}G_0\|_2 .
\]
For a finite top \(N+1\), set \(a_{N+1}=0\) and
\[
 a_j(t)=\int_t^T[\beta_j+2\nu a_{j+1}(s)]\,ds
 =\sum_{\ell=0}^{N-j}(2\nu)^\ell\beta_{j+\ell}
       \frac{(T-t)^{\ell+1}}{(\ell+1)!},\qquad 1\le j\le N .
\]
The complete interior identities and positivity are
\[
 Y_j=E_j+a_j,\quad d_j=\beta_j-W_{0,j}\in[0,2\beta_j],\qquad
 Y_j'+2\nu Y_{j+1}=P_j-d_j,\quad Y_j\ge E_j .
 \tag{L5}
\]
Every force budget here is finite from prescribed data. Its growth with \(N\) is retained.

## 3. Complete higher-row product bound

For an integer \(m\ge2\), the native interpolation printed at analytic-framework LF428–435 gives
\[
 \|\nabla^ku\|_{L^{2m/k}}
 \le(2m-2+\sqrt3)^{k(m-k)/2}
       \|u\|_\infty^{1-k/m}\|\nabla^mu\|_2^{k/m}.
\]
The \(k=0\) endpoint means \(L^\infty\). The full ordered Leibniz rule for \(u\otimes u\), followed by Hölder for every allocation, gives the explicit bound
\[
 \|\Lambda^m(u\otimes u)\|_2
 \le T_m\|u\|_\infty\|\Lambda^mu\|_2,\qquad
 T_m=\sum_{k=0}^m\binom mk(2m-2+\sqrt3)^{k(m-k)} .
 \tag{L6}
\]
Both endpoints and every interior allocation are retained. The ordered derivative norm equals the homogeneous integer Fourier norm. Fourier divergence followed by Leray has tensor-to-vector norm at most \(|\xi|\); hence
\[
 \|\Lambda^j\mathbb P\nabla\cdot(u\otimes u)\|_2
 \le T_{j+1}\|u\|_\infty\|\Lambda^{j+1}u\|_2 .
 \tag{L7}
\]

For an integer \(M\ge3\), the source's unitary Fourier convention and a split at
\(r=(\|\Lambda^Mu\|_2/K)^{1/M}\) give
\[
 \|u\|_\infty\le C_M
       K^{1-3/(2M)}\|\Lambda^Mu\|_2^{3/(2M)},\qquad
 C_M=(2\pi)^{-3/2}\sqrt{4\pi}
       \left(\frac1{\sqrt3}+\frac1{\sqrt{2M-3}}\right).
 \tag{L8}
\]
The low Fourier integral is at most
\((2\pi)^{-3/2}\sqrt{4\pi/3}\,r^{3/2}K\), and the high integral is at most
\((2\pi)^{-3/2}\sqrt{4\pi/(2M-3)}\,r^{3/2-M}\|\Lambda^Mu\|_2\).
If the last norm vanishes, the finite-energy field vanishes. Fourier Hölder also gives
\(\|\Lambda^\ell u\|_2\le K^{1-\ell/M}\|\Lambda^Mu\|_2^{\ell/M}\)
for \(0\le\ell\le M\).

Thus, for every \(j\ge1\) and every integer \(M\ge j+2\),
\[
 |P_j|\le C_{j,M}K^{1+2\mu}
          \bigl(\|\Lambda^Mu\|_2^2\bigr)^{1-\mu},\qquad
 C_{j,M}=T_{j+1}C_M,\qquad
 d=1-\mu=\frac{j+5/4}{M}\in(0,1).
 \tag{L9}
\]
The receiving energy row is \(L=M-1>j\), whose viscous action is
\(\|\Lambda^Mu\|_2^2\). This is a bound on the complete actual nonlinear production.

The explicit selected constants have the uniform lower bound
\[
 C_{j,M}\ge C_*:=2(2\pi)^{-3/2}\sqrt{4\pi/3}>0,\qquad
 C_{j,M}K^{1+2\mu}\ge c_K:=C_*\min(K,K^3)>0 .
 \tag{L10}
\]
This is a lower bound for the price coefficient of this chosen estimate. No lower bound for the actual signed production, or for arbitrary optimal product constants, is asserted.

## 4. Exact positive price and retained nonlinear boundary

Choose positive coefficients \(\alpha_j,\alpha_L\), static within one finite attempt. Allocating half the receiving viscous action gives
\[
 \alpha_j C_{j,M}K^{1+2\mu}D^d
 \le(\nu/2)\alpha_LD+R_{j,M},\qquad D=\|\Lambda^Mu\|_2^2,
\]
\[
 R_{j,M}=\mu d^{d/\mu}
   (C_{j,M}K^{1+2\mu})^{1/\mu}
   (2/\nu)^{d/\mu}
   \frac{\alpha_j^{1/\mu}}{\alpha_L^{d/\mu}} .
 \tag{L11}
\]
This is the exact supremum of \(aD^d-bD\) for \(D\ge0\), attained at
\(D=(ad/b)^{1/\mu}\). The scalar optimization is applied to the actual bound (L9).

For adjacent recipients \(M=j+2\), \(\mu_j=3/[4(j+2)]\) and
\(d_j/\mu_j=(4j+5)/3\). Summing the actual (L5) with
\(S_N=\sum_{j=1}^N\alpha_jY_j\), paying rows \(j<N\) by (L11), and using the defects in their given sign yields
\[
 S_N'+\nu\alpha_1\|\Delta u\|_2^2
 +\frac{\nu}{2}\sum_{j=2}^N\alpha_j\|\Lambda^{j+1}u\|_2^2
 \le\alpha_NP_N+\sum_{j=1}^{N-1}R_{j,j+2}.
 \tag{L12}
\]
The complete signed top production \(\alpha_NP_N\) remains.

For arbitrary jumps, a summed ledger must allocate each receiving row's viscous action without overbooking it. A smaller individual allocation increases the optimal price. Permitting the entire available viscous coefficient in each individual comparison replaces \(\nu/2\) by \(\nu\) below and gives the same conclusion with that datum constant. This more generous allocation is enough to establish the limitation even before simultaneous capacity constraints are imposed.

## 5. The normalized logarithmic invariant

Put \(b_j=-\log\alpha_j\). If the selected price satisfies \(R_{j,M}\le B\), \(B>0\), its exact logarithm gives
\[
 d\,b_L\le b_j+\mu\log B-\mu\log\mu-d\log d
    -\log C_{j,M}-(1+2\mu)\log K+d\log(\nu/2),
 \qquad L=M-1 .
 \tag{L13}
\]
Using the entropy bound \(-\mu\log\mu-d\log d\le\log2\) and (L10), set
\[
 C_B=\log^+B+\log2+\log^+(1/c_K)+\log^+(\nu/2)\ge0 .
 \tag{L14}
\]
Here \(\log^+x=\max(0,\log x)\). This upper constant uses the documented lower bound for the explicit constants in (L9).

Normalize \(h_j=b_j/(j+1)\). Since \(dM=j+5/4\), (L13) implies
\[
 h_L\le\frac{j+1}{j+5/4}h_j+\frac{C_B}{j+5/4}
      =\theta_jh_j+(1-\theta_j)4C_B,\qquad
 \theta_j=\frac{j+1}{j+5/4}\in(0,1) .
 \tag{L15}
\]
This is a convex upper bound for every permitted jump. If \(\alpha_1\ge c>0\), put
\[
 H=\max\{0,-\tfrac12\log c,4C_B\}.
\]
Along every finite strictly increasing payment path from row 1, including its terminal receiving row,
\[
 h_j\le H,\qquad \alpha_j\ge e^{-H(j+1)} .
 \tag{L16}
\]
For full-viscous allocation, replace \(\log^+(\nu/2)\) in (L14) by \(\log^+\nu\); the proof is identical.

## 6. Depth-dependent selections and the actual datum

The precise selected-operation hypotheses are these. At finite stage \(n\), choose fresh positive static weights and arbitrary higher recipients forming a finite strictly increasing payment path from row 1 to row \(L_n\). Require a first weight \(\alpha_1^{(n)}\ge c>0\), a uniform bound \(B\) on every individual optimal positive price, inclusion of every recipient's initial positive stock in the finite ledger, a uniform total initial stock \(I<\infty\), and \(L_n\to\infty\). A uniform sum of these constant positive prices implies the individual bound; a uniform time-integrated sum on a fixed positive horizon implies it as well.

Equation (L16) applies separately at every stage with the SAME \(H\). No fixed infinite weight sequence, subsequential coordinate convergence, or exchange of limits is used:
\[
 \alpha_{L_n}^{(n)}\ge e^{-H(L_n+1)},\qquad
 \tfrac12\alpha_{L_n}^{(n)}\|\Lambda^{L_n}u_0\|_2^2\le I .
 \tag{L17}
\]
Inclusion of a receiver is essential: its action comes from its own C6 row, whose integration includes that row's initial positive stock. An independently paid action outside this ledger is outside the selected operation.

For any actual nonzero \(H^\infty\) datum with essentially unbounded Fourier support, put \(A_j=\|\Lambda^ju_0\|_2^2\). For each radius \(r\) with nonzero exterior Fourier mass \(m_r\),
\[
 A_j\ge r^{2j}m_r,\qquad
 \lim_{j\to\infty} A_j^{1/j}=+\infty .
 \tag{L18}
\]
The last conclusion follows by letting these radii increase without bound. Every \(A_j\) is finite by \(H^\infty\). The same divergence holds with exponent \(1/(j+1)\), and along every sequence tending to infinity.

Equation (L17) instead gives
\[
 A_{L_n}\le2I e^{H(L_n+1)},\qquad
 \limsup_n A_{L_n}^{1/L_n}\le e^H<\infty ,
 \tag{L19}
\]
contradicting (L18). One concrete admitted datum is the real Schwartz solenoidal field
\[
 u_0=\operatorname{curl}(0,0,e^{-|x|^2})
       =(-2x_2e^{-|x|^2},\,2x_1e^{-|x|^2},\,0).
\]
It has essentially unbounded Fourier support. No substitute history or model of its derivatives enters the argument.

Thus these uniform normalization and positive budgets cannot all hold for this cofinal absorption procedure on that datum class. Arbitrarily large recipient jumps, arbitrarily long paths, and fresh weights at each depth retain the conflict. It already occurs at \(f=0\). With forcing, (L5) adds prescribed nonnegative stocks and preserves the physical initial-stock lower bound used above.

## 7. Exact desired output and relation to normalized first-rectangle action

If the finite ledger (L12) had a uniformly bounded initial stock, uniformly bounded total positive price, first weight bounded below, and an upper cumulative payment of its complete top production for every \(t<T_*\), its integrated inequality would give
\[
 \sup_{t<T_*}\|\nabla u(t)\|_2^2<\infty,\qquad
 \int_0^{T_*}\|\Delta u(t)\|_2^2\,dt<\infty .
 \tag{L20}
\]
Indeed \(S_N\ge(c/2)\|\nabla u\|_2^2\), and the first dissipative coefficient is at least \(\nu c\). The top payment remains a separate complete signed quantity in this implication.

These outputs pay the complete first rectangle. With \(B_0=(u\cdot\nabla)u\), Sobolev interpolation gives
\[
 \|B_0\|_2^2\le C\|\nabla u\|_2^3\|\Delta u\|_2 .
 \tag{L21}
\]
Its integral is bounded by
\(C(\sup\|\nabla u\|_2^2)^{3/2}
 \sqrt{T_*}\bigl(\int\|\Delta u\|_2^2\bigr)^{1/2}\).
The exact full rows
\[
 u_t=\nu\Delta u-\mathbb P B_0+G_0,\qquad
 \nabla p=(I-\mathbb P)(f-B_0)
 \tag{L22}
\]
then give \(u\in L^2H^2\), \(u_t\in L^2L^2\), and \(\nabla p\in L^2L^2\) on the whole terminal interval. The normalized nonlinear pressure also has a bounded \(L^2\) norm from \(\|u\|_4^2\); the prescribed force potential has its finite \(H^1\) budget from the source's low-frequency Riesz/Leray lemma, analytic-framework LF284–299. Hence the complete normalized pressure row is retained.

For any \(A>0\), (L20) gives a strictly positive terminal lower bound for
\(z=(A+\|\nabla u\|_2^2)^{-1}\). It would exclude the zero reciprocal terminal branch of the datum-paid weighted first-rectangle action. The uniform-price contradiction establishes exactly why this particular cofinal positive absorption does not supply that exclusion on the indicated datum class.

## 8. Coverage and additional coefficients

The new calculations are the complete explicit product bound (L6)–(L10), arbitrary higher-recipient optimal price (L11), logarithmic invariant (L13)–(L16), and adaptive finite-depth contradiction (L17)–(L19). They act on the original signed C1–C9 ladder with its prescribed force horizon and physical initial jet.

The coefficients in each selected attempt are static, though they may be chosen afresh at every finite depth. For time-dependent coefficients the exact ledger has the additional term
\[
 \left(\sum_j\alpha_j(t)Y_j(t)\right)'
 +2\nu\sum_j\alpha_j(t)Y_{j+1}(t)
 =\sum_j\alpha_j(t)(P_j-d_j)+\sum_j\alpha_j'(t)Y_j(t).
 \tag{L23}
\]
That term must be paid in such an operation. Signed contractions of productions, temporal cross-row cancellations, coefficient histories, and independently paid receiving actions have their own full ledgers; the limitation proved here is restricted to the explicit positive Young procedure above.

The original sources and prior reports remain read only. Before/after source integrity, exact primary excerpts, and this report's final hash are recorded in this new directory.
