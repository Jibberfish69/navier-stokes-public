# A datum-paid weighted first rectangle of the actual mixed history

**Reviewed scope and currentness.** Zero-terminal family strengthens zero branch. [Executed datum-to-terminal calculations on the complete native graph](A0449-datum-to-terminal-execution.md) summarizes; reciprocal compactness transports its weighted topology. Original finite-rectangle membership, when supplied, implies downstream source and selected-current bounds. Optional sufficient criteria in this report are not added as upstream premises of the printed producer. The mathematical body retains its stated strict-time, terminal, pressure and force hypotheses. Publication adds no unconditional global theorem claim.


6 October 2026. New mathematical analysis, kept separate from verification of what the original papers already establish. This calculation uses the actual classical Navier–Stokes history and its complete first momentum row.

## Source definitions and the precise target

The complete equation, temporal/spatial Leibniz allocations, canonical pressure and recursive initial jet are (1)–(5) in [forced-native-assembly-20260914.md](../SOURCES.md#S152). The whole-terminal finite output is (N11a), and the datum-paid kinetic stock is (N13), in [forced-native-proof-custody-20260919.md](../SOURCES.md#S153). The actual common local constructor and full higher-order persistence are (F52)–(F55), in [forced-ns-sequential-conversion-20260914.md](../SOURCES.md#S154).

Fix an admitted datum, viscosity nu>0, and the prescribed smooth force with Schwartz spatial values on every finite force horizon. Let u be their one classical history, with canonical pressure p. Suppose its maximal right endpoint T_* is finite, and set I=(0,T_*). All differentiations below are first performed on [0,S], S<T_*. Only nonnegative integrals or proved bounds are then passed to I. No norm on I is initially assumed beyond the kinetic row.

Write

\[
 Y(t)=\|\nabla u(t)\|_2^2,\qquad
 Z(t)=\|\Delta u(t)\|_2^2,\qquad
 B(t)=(u(t)\cdot\nabla)u(t).
\]

The first selected native rectangle (N=0,M=1) is exactly

\[
 \mathfrak R_{0,1}(I)
 =\int_I\bigl(\|u\|_{H^2}^2+\|u_t\|_2^2\bigr)\,dt.
 \tag{A1}
\]

For the Bessel norm, Parseval gives

\[
 \|u\|_{H^2}^2=\|u\|_2^2+2Y+Z.
 \tag{A2}
\]

## 1. The complete momentum square

The original unprojected equation is

\[
 u_t+\nu(-\Delta)u+\nabla p=f-B.
\]

Both velocity terms are solenoidal and therefore orthogonal to the canonical pressure gradient. They are not mutually orthogonal: their cross term is the derivative of Y. Consequently the exact full square is

\[
 Q+\nu Y'=\|f-B\|_2^2,
 \qquad Q=\|u_t\|_2^2+\nu^2 Z+\|\nabla p\|_2^2.
 \tag{A3}
\]

In particular, the force–nonlinear cross term and the complementary pressure allocation have not been removed before forming the identity. The two orthogonal projections of f-B are precisely the velocity response and pressure response of the same row.

Use the unitary Fourier transform. For a,b>0, Fourier Cauchy–Schwarz and direct radial integration give

\[
 \|u\|_\infty^2
 \le\frac{aY+bZ}{4\pi\sqrt{ab}},
 \qquad
 \int_{\mathbb R^3}\frac{d\xi}{|\xi|^2(a+b|\xi|^2)}
 =\frac{2\pi^2}{\sqrt{ab}}.
\]

Optimizing a/b=Z/Y gives

\[
 \|u\|_\infty^2\le\frac{\sqrt{YZ}}{2\pi},\qquad
 \|B\|_2^2\le\frac{Y^{3/2}Z^{1/2}}{2\pi}.
 \tag{A4}
\]

The zero-Y or zero-Z case follows by a limiting choice of a,b; an L² field with either of these zero stocks is zero. Every component of the nonlinear row is included in the tensor contraction defining B.

Apply Young's inequality only after the exact square (A3):

\[
 \|f-B\|_2^2
 \le 2\|f\|_2^2+\frac{Y^{3/2}Z^{1/2}}{\pi}
 \le 2\|f\|_2^2+\frac{\nu^2}{2}Z
       +\frac{Y^3}{2\pi^2\nu^2}.
\]

Thus, with the positive complete action

\[
 q_-=\|u_t\|_2^2+\frac{\nu^2}{2}Z+\|\nabla p\|_2^2,
 \qquad c_\nu=\frac1{2\pi^2\nu^2},
\]

we have

\[
 q_-+\nu Y'\le 2\|f\|_2^2+c_\nu Y^3.
 \tag{A5}
\]

For the unforced history f=0, applying Young directly to (A4) gives the sharper c_\nu^0=1/(8 pi² nu²). Nothing from an unforced solution is imported into the forced history.

## 2. A whole-terminal positive weighted action paid by the original datum

The source kinetic identity gives, on the proposed finite horizon,

\[
 K=\|u_0\|_2+\int_0^{T_*}\|\mathbb P f\|_2\,dt,
 \qquad D=\frac{K^2}{2\nu},
\]

\[
 \sup_{t<T_*}\|u(t)\|_2\le K,
 \qquad \int_I Y\,dt\le D.
 \tag{A6}
\]

Choose any fixed A>0, in the units of Y, and let w_A(y)=(A+y)^(-2). Multiplying (A5) by this positive weight and integrating on [0,S] gives

\[
 \begin{split}
 \int_0^S w_A(Y)q_-\,dt
 \le{}&c_\nu\int_0^S\frac{Y^3}{(A+Y)^2}\,dt
 +2\int_0^S\frac{\|f\|_2^2}{(A+Y)^2}\,dt\\
 &+\nu\left(\frac1{A+Y(S)}-\frac1{A+Y(0)}\right).
 \end{split}
 \tag{A7}
\]

The sign of the endpoint term is fixed by the primitive of (A+Y)^(-2), which is -(A+Y)^(-1). Because Y³/(A+Y)²<=Y, (A6) pays all terms uniformly in the strict cutoff S. Monotone convergence then gives the concrete new whole-terminal output

\[
 \boxed{\displaystyle
 \int_I\frac{q_-}{(A+Y)^2}\,dt
 \le C_W:=\frac\nu A+c_\nu D
              +\frac2{A^2}\|f\|_{L^2(I;L^2)}^2<\infty.}
 \tag{A8}
\]

For f=0, omit its norm and replace c_\nu by c_\nu^0. The sharper signed endpoint in (A7) remains available; (A8) is a convenient nonnegative roof.

The full weighted rectangle, including its low Bessel stocks, follows explicitly:

\[
 \boxed{\displaystyle
 \int_I\frac{\|u\|_{H^2}^2+\|u_t\|_2^2}{(A+Y)^2}\,dt
 \le\frac{T_*K^2+2D}{A^2}
       +\max\{1,2\nu^{-2}\}C_W.}
 \tag{A9}
\]

The same calculation also pays the weighted canonical pressure-gradient action. This is a weighted output derived from the datum. It is not the unweighted whole-terminal output asserted in (N11a).

## 3. A terminal reciprocal-stock trace from the same coupled action

The complete velocity row gives

\[
 Y'=2\operatorname{Re}\langle u_t,-\Delta u\rangle,
 \qquad \nu|Y'|\le\sqrt2 q_-.
 \tag{A10}
\]

Define z_A=(A+Y)^(-1). It is positive and absolutely continuous on every strict prefix; (A8)–(A10) show

\[
 \int_I|z_A'|\,dt\le\frac{\sqrt2}{\nu}C_W.
 \tag{A11}
\]

It therefore has a unique terminal limit

\[
 \ell_A=\lim_{t\uparrow T_*}\frac1{A+Y(t)}\in[0,A^{-1}].
 \tag{A12}
\]

This limit is obtained from the full coupled first rectangle and the kinetic stock, without presupposing any higher terminal membership.

If ell_A>0, then continuity on every strict compact interval and the positive terminal limit give m_A=inf_I z_A>0. Hence

\[
 \int_I q_-\,dt\le m_A^{-2}C_W,
\]

and the actual unweighted rectangle is paid:

\[
 \mathfrak R_{0,1}(I)
 \le T_*K^2+2D+\max\{1,2\nu^{-2}\}m_A^{-2}C_W.
 \tag{A13}
\]

If ell_A=0, then Y(t) tends to infinity through the actual terminal history, not merely on a selected subsequence. The calculation alone does not rule out that branch. No artificial scalar history or substitute vector field is used to reach this limitation.

## 4. Exact payment of actual successive records and the weighting limitation

On the ell_A=0 branch, choose L_0>Y(0), let L_k=2^k L_0, and take the actual first-arrival times t_k for Y=L_k. Each is a strict classical time, and successive first-arrival intervals are disjoint. From (A10), with no monotonicity assumption between the faces,

\[
 \int_{t_k}^{t_{k+1}}q_-\,dt
 \ge\frac\nu{\sqrt2}(L_{k+1}-L_k),
 \tag{A14}
\]

\[
 \int_{t_k}^{t_{k+1}}\frac{q_-}{(A+Y)^2}\,dt
 \ge\frac\nu{\sqrt2}
 \left(\frac1{A+L_k}-\frac1{A+L_{k+1}}\right).
 \tag{A15}
\]

The mandatory unweighted charges diverge. The weighted charges telescope to a finite value and have size O(2^(-k)). Thus the datum-paid weighted action (A8) does not force the required unweighted action by this actual-record summation.

A useful limitation applies to the entire pointwise integrating-factor operation. To pay the cubic production using only a finite time horizon and the kinetic moment int Y, a positive weight w with the pointwise payment w(y)y³<=C(1+y) must satisfy w(y)=O(y^(-2)) as y tends to infinity. Its primitive int^infty w(y)dy is finite. Such a pointwise kinetic payment cannot simultaneously produce a divergent terminal storage barrier. This statement is about this specified calculation, not a claim that other relationships in the full mixed jet cannot improve it.

Equivalently, the exact dyadic deweighting reads

\[
 \int_I q_-\,dt
 =\sum_{k\ge0}\int_{\Omega_k}(A+Y)^2
       \frac{q_-}{(A+Y)^2}\,dt,
\]

where Omega_k={2^k A<=A+Y<2^(k+1)A}. The paid weighted action controls the sum without the displayed growing factors. The kinetic row bounds the actual high-stock time measure by |Omega_k|<=D/(2^(k-1)A), k>=1, but a corresponding bound on the unweighted action mass on those sets has not been derived here. No concentration is asserted to occur.

## 5. Direct conditional lift through every full native spatial and temporal row

This subsection develops the positive-limit branch through the original graph. It does not supply positivity of ell_A.

For a fixed integer m>=1, let X_m=||Lambda^m u||². Expand every derivative of u tensor u. If |alpha|=m, |beta|=j, Gagliardo–Nirenberg gives

\[
 \|D^\beta u\|_{p_j}
 \le C_{m,j}\|u\|_6^{1-j/m}\|D^m u\|_3^{j/m},
 \qquad p_j=\frac{6m}{m+j}.
\]

Since 1/p_j+1/p_(m-j)=1/2, the entire binomial sum, including both end allocations, satisfies

\[
 \|D^m(u\otimes u)\|_2
 \le C_m\|u\|_6\|D^m u\|_3
 \le C_m\sqrt Y\,X_m^{1/4}X_{m+1}^{1/4}.
 \tag{A16}
\]

The second step uses the homogeneous Sobolev bound ||u||6<=C sqrt(Y) and the L²–L⁶ interpolation of D^m u. At m=1 the two end allocations give the bound directly. Finite sums of derivative norms and Lambda norms are equivalent at each fixed m; the constants absorb all vector/tensor and binomial multiplicities.

Pair the fully differentiated unprojected row with its solenoidal velocity derivative. Pressure then pairs to zero for this specific reason. Move the divergence of u tensor u onto the test derivative; its full pairing is bounded by C_m sqrt(Y) X_m^(1/4) X_(m+1)^(3/4). Retain the original force, bounded by ||f||_(dot H^(m-1)) sqrt(X_(m+1)). Young's inequality gives

\[
 X_m'+\nu X_{m+1}
 \le C_m\nu^{-3}Y^2 X_m
       +4\nu^{-1}\|f\|_{\dot H^{m-1}}^2.
 \tag{A17}
\]

Positive ell_A gives Y_max=sup_I Y<infinity. The original kinetic moment then gives int_I Y²<=Y_max D. Apply Gronwall to the augmented stock X_m+nu int_0^t X_(m+1). At each fixed m, on the very same whole interval I,

\[
 \sup_{t<T_*}X_m(t)+\nu\int_I X_{m+1}\,dt
 \le\left(X_m(0)+4\nu^{-1}\|f\|_{L^2(I;\dot H^{m-1})}^2\right)
        \exp\big(C_m\nu^{-3}Y_{\max}D\big).
 \tag{A18}
\]

The kinetic row supplies the inhomogeneous low stock. Thus every fixed spatial order has L-infinity and L² membership on I. This uses the full graph's product allocations and force; no external continuation criterion is invoked.

Now induct on temporal order, using the original full recurrence

\[
 V_{n+1}=\nu\Delta V_n
 -\mathbb P\sum_{a=0}^n\binom na(V_a\cdot\nabla)V_{n-a}
 +\mathbb P F_n.
 \tag{A19}
\]

At every selected spatial order M, its linear term is paid by V_n at M+2. Each product is paid in L-infinity H^M by the two parents in L-infinity H^(M+2), and in L² H^M by one such parent and the other in L² H^(M+2). All ordered parent pairs, binomial coefficients and prescribed force derivatives remain. Induction yields both time memberships for every fixed V_n and M on I, hence all finite native rectangles and the claimed mixed intersection on this conditional branch. Constants may depend on the selected orders; no bound uniform over all orders is asserted.

The pressure is still the original normalized row

\[
 Q_n=R_iR_j\sum_{a=0}^n\binom na V_{a,i}V_{n-a,j}
       -(-\Delta)^{-1}\nabla\cdot F_n.
 \tag{A20}
\]

Products have the required fixed Sobolev/time memberships from the full parent induction. The prescribed potential has finite fixed Sobolev stocks: at low frequency its multiplier has size |xi|^(-1), square integrable locally in dimension three against bounded Schwartz Fourier data; high frequencies and all temporal derivatives are paid by the prescribed force seminorms.

The resulting H¹(I;H^M) membership gives a strong endpoint in every fixed H^M. The endpoint projections coincide, by their common history and continuous embeddings. The common local constructor (F52)–(F54e), restarted with these actual smooth traces and the same prescribed future force, extends the one classical history; uniqueness identifies the extension. Thus a finite maximal classical endpoint cannot occur on the positive-limit branch. This is a conditional conclusion of the executed native operation, with its antecedent ell_A>0 explicitly retained.

## Verified scope of this new step

Equations (A3), (A8)–(A12) are unconditional datum-to-terminal statements about the actual history on any proposed finite classical horizon. They retain full nonlinear, pressure and force terms, and their constants are uniform in the strict terminal cutoff. The positive-limit lift (A13), (A16)–(A20) is verified with its stated antecedent. Neither this weighted action nor its actual record charges establishes ell_A>0. This report does not certify the whole-terminal original claim (N11a) from arbitrary data; it records a new concrete producer and the precise remaining deweighting question, to be tested against the simultaneous, joint-metric and cofinal operations in the accompanying new analysis.
