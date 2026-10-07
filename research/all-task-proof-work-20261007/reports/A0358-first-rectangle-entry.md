# Initializing the actual Navier–Stokes rectangles

**Reviewed scope and currentness.** The mathematical statements retain their recorded hypotheses and the reconciliations listed in the supersession register. Older factor-two estimate is valid but coarser than the later full-cross execution. No scalar-bound failure is promoted to theorem invalidity. Original finite-rectangle membership, when supplied, implies downstream source and selected-current bounds. Optional sufficient criteria in this report are not added as upstream premises of the printed producer. The mathematical body retains its stated strict-time, terminal, pressure and force hypotheses. Publication adds no unconditional global theorem claim.


The recovered positive viscous square, critical action identity, finite Gram identities and completed heights have been executed on the actual Navier–Stokes history. They initialize three verified scopes: the appendix's separated-root branch on a prescribed finite horizon; an arbitrary-data short interval; and a small-critical datum/force branch reaching the full terminal intersection and restart. No prior velocity rectangle or global theorem is used to initialize these chains.

## Sources

Paths are relative to the indexed mathematical source witness Locations are physical LF line numbers.

| Source | SHA256 | Read and used locations |
|---|---|---|
| papers/navier-stokes/unified-unforced-forced-openai-refutation-20260924/parts/refutation/first-rectangle.tex | ee775532ee883ca4e2354d7ebac88c8d54e6513570e2e1d37ede1c8fb3c8872e | Full 87 lines; square LF5–23, polynomial LF25–65, discriminant LF66–87 |
| problems/navier-stokes/theorem-construction/forced-ns-finite-rectangle-cross-term-test-20260915.md | fe966c50d67c8974fc9cdd8ba7e6ef9a84ab53bd35f0e0b4984d1d83c2f0621a | Full 275 lines; G1–G8 LF14–112; exact forced histories G9–G23 LF114–263 |
| problems/navier-stokes/theorem-construction/forced-ns-auxiliary-recovery-tests-20260915.md | 29468a5a3cfd09aaf7fff7380ac342ba91a9688f3a1da7ae14f1dda924390dcb | A42–A50 and proofs LF1016–1223 |
| papers/navier-stokes/unified-unforced-forced-openai-refutation-20260924/parts/forced/05-three-dimensional-applications.tex | 53c827b3440904ed2aab1cc0c52575549a8b04a9233a181b0723ee76baa521bb | Critical square LF25–65; integer commutator LF67–155; small-critical calculation LF158–330 |
| papers/navier-stokes/unified-unforced-forced-openai-refutation-20260924/parts/refutation/body.tex | 91daf06e22f9acb19b4c466b37956e23fc3e121307e8576c16f74e1583279208 | Critical production LF451–550; Fourier embedding LF577–590; energy/integrating factor LF609–691 |
| papers/navier-stokes/unified-unforced-forced-openai-refutation-20260924/parts/refutation/recovered-heights.tex | 1cabe67547cebcd7c12dc1d8ee1e85998fcb1b5aef9e85464dbf10d37307aff0 | Full 114 lines; actual source-work bounds and endpoint telescope |

The verified spatial-intersection-to-pressure/temporal-rows-to-rectangles-to-original-force-restart composition is detailed in audit/cofinal-composition.md.

## Exact positive first square

Let the maximal local classical history solve
\[
u_t+\mathcal N+\nabla p=\nu\Delta u+f,\quad
\mathcal N=(u\cdot\nabla)u,\quad \operatorname{div}u=0,
\]
with \(\nu>0\), \(u_0\in H^\infty_\sigma\), and prescribed \(f\in C^\infty([0,\infty);\mathcal S)\). Fix an admitted finite force horizon \(T\), use strict \(0<S<\min(T,T_*)\), and define
\[
g=\mathbb Pf,\quad A=\int_0^S\|\Delta u\|_2^2,\quad
B=\int_0^S\|u_t\|_2^2,\quad X=B+\nu^2A,\quad
y=\|\nabla u\|_2^2,\quad G_0=y(0).
\]
The complete unprojected square is
\[
X+\int_0^S\|\nabla p\|_2^2+\nu y(S)
=\nu G_0+\int_0^S\bigl(\|f\|_2^2-2\langle f,\mathcal N\rangle+\|\mathcal N\|_2^2\bigr).
\tag{1}
\]
Pressure pairs to zero against the solenoidal \(u_t,\Delta u\), and the time–viscosity cross is exactly
\[
-2\nu\langle u_t,\Delta u\rangle=\nu y'.
\]
Since \(\nabla p=(I-\mathbb P)(f-\mathcal N)\), orthogonal decomposition gives
\[
X+\nu y(S)=\nu G_0+
\int_0^S\bigl(\|g\|_2^2-2\langle g,\mathbb P\mathcal N\rangle
+\|\mathbb P\mathcal N\|_2^2\bigr).
\tag{2}
\]
Thus the full force/nonlinear cross survives. Pressure positivity in (1) is exactly the gradient part of the residual square and does not separately delete its solenoidal nonlinear square.

## Data polynomial and its whole-horizon branch

Use the appendix's data quantities
\[
U=\|u_0\|_2+\int_0^T\|f\|_2,\quad
L=TU^2+U^2/\nu,\quad \Phi=\int_0^T\|g\|_2^2.
\]
Kinetic balance yields \(\sup\|u\|_2\le U\), \(\int_0^S y\le U^2/(2\nu)\). The dissipation estimate follows by bounding force work with \(U(t)=\|u_0\|_2+\int_0^t\|f\|_2\), whose pairing integral is \((U(S)^2-\|u_0\|_2^2)/2\).

The exact Bessel norm and gradient trace yield
\[
\int_0^S\|u\|_{H^2}^2\le L+X/\nu^2,\qquad
\sup_{t\le S}y(t)\le G_0+2\sqrt{AB}\le G_0+X/\nu.
\]
Fourier inversion gives \(\|u\|_\infty^2\le\|u\|_{H^2}^2/(8\pi)\); hence
\[
\int_0^S\|\mathbb P\mathcal N\|^2
\le\int_0^S\|\mathcal N\|^2
\le\frac{(G_0+X/\nu)(L+X/\nu^2)}{8\pi}.
\tag{3}
\]
For any \(\eta>0\), allocate the complete force/nonlinear cross by
\[
\|g-\mathbb P\mathcal N\|^2\le
(1+\eta)\|\mathbb P\mathcal N\|^2+(1+\eta^{-1})\|g\|^2.
\]
With \(\kappa=(1+\eta)/(8\pi)\), equation (2) gives
\[
X\le c_\eta+b_\eta X+a_\eta X^2,\quad
a_\eta=\kappa\nu^{-3},\quad
b_\eta=\kappa(G_0\nu^{-2}+L\nu^{-1}),
\]
\[
c_\eta=\nu G_0+(1+\eta^{-1})\Phi+\kappa G_0L.
\tag{4}
\]
At \(\eta=1\), these are exactly appendix F LF68–70. If
\[
b_\eta<1,\quad
\Delta_\eta=(1-b_\eta)^2-4a_\eta c_\eta>0,
\]
then the nonnegative continuous \(X(S)\), starting from zero, cannot cross the interval forbidden by \(a_\eta X^2+(b_\eta-1)X+c_\eta\ge0\). Thus
\[
X(S)\le r_-=
\frac{1-b_\eta-\sqrt{\Delta_\eta}}{2a_\eta},\quad
A\le r_-/\nu^2,\quad B\le r_-,
\]
\[
R_{0,1}(S)\le L+\max(1,\nu^{-2})r_-.
\tag{5}
\]
The criterion is equivalently \(b_\eta+2\sqrt{a_\eta c_\eta}<1\). For the appendix's \(\eta=1\) and rest datum it is exactly
\[
\frac{U^2(T+\nu^{-1})}{4\pi\nu}+
\sqrt{\frac{2\Phi}{\pi\nu^3}}<1.
\]
Constants are fixed on \(T\), independent of \(S\); monotone convergence gives the whole-terminal norm if \(T_*\le T\). If \(\Phi=0\), the exact projected residual permits \(\kappa=1/(8\pi)\) directly. Replacing \(f\) by \(g\) in \(U\) is another valid sharpening. At a zero discriminant there is no forbidden interval. Without the strict criterion, (4) allows arbitrarily large \(X\); this is an algebraic limitation of that inequality, not a conclusion about the actual history.

## Arbitrary data initialize a positive short interval

The original A48 starts from (1), not an assumed rectangle. Hölder/interpolation give \(\|\mathcal N\|_2\le S_6^{3/2}y^{3/4}z^{1/4}\), \(z=\|\Delta u\|^2\). Allocating half the viscous square gives
\[
\nu y(t)+\int_0^t
(\|u_t\|^2+\tfrac{\nu^2}{2}z+\|\nabla p\|^2)
\le\nu G_0+2\int_0^t\|f\|^2+
\frac{2S_6^6}{\nu^2}\int_0^t y^3.
\tag{6}
\]
For an admitted finite force horizon \(T_f\), set
\[
q=1+G_0+\frac2\nu\int_0^{T_f}\|f\|^2,\quad
c=\frac{2S_6^6}{\nu^3},\quad
\tau=\min\{T_f,(16cq^2)^{-1}\}.
\]
While \(y\le2q\), (6) gives \(y(t)\le q-1+8cq^3t\le3q/2-1<2q\) for \(t\le\tau\). Continuity prevents a first exit. The integrated terms are bounded by \(3\nu q/2\), giving original A49:
\[
R_{0,1}(S)\le2\tau K_\tau^2+6q/\nu+3\nu q/2,
\quad S<\min(T_*,\tau),\quad
K_\tau=\|u_0\|_2+\int_0^\tau\|g\|_2.
\tag{7}
\]
This is a genuine arbitrary-data initialization on a common positive interval. It does not establish a positive lower bound for successive local intervals approaching a remote terminal time.

## A completed critical square initializes whole-terminal membership

The actual critical action identity (forced05 LF25–65) is the same positive squared momentum operation at order \(-1/2\):
\[
\nu\frac d{dt}\|\Lambda^{1/2}u\|^2+
\nu^2\|\Lambda^{3/2}u\|^2+
\|u_t\|_{\dot H^{-1/2}}^2
=\|\mathbb P\mathcal N-g\|_{\dot H^{-1/2}}^2.
\tag{8}
\]
It follows by expanding \(\|\Lambda^{-1/2}u_t\|^2\) and cancelling its full cross against the critical energy derivative. The complete source estimate LF259–271 is
\[
\|\mathbb P\mathcal N\|_{\dot H^{-1/2}}
\le C_{\rm src}\|\Lambda^{1/2}u\|\|\Lambda^{3/2}u\|,
\quad C_{\rm src}=1/(\sqrt2\pi).
\tag{9}
\]
Dual homogeneous Sobolev, Hölder \(L^3\times L^3\to L^{3/2}\), and the unit Leray multiplier norm prove (9). The fractional Sobolev constant applies to Euclidean vectors and gradient tensors.

On the admitted horizon define
\[
F_T=\|g\|_{L^2(0,T;\dot H^{-1/2})},\quad
A_f^2=\|\Lambda^{1/2}u_0\|^2+(1+\eta^{-1})F_T^2/\nu,
\]
\[
\delta=\nu^2-(1+\eta)C_{\rm src}^2A_f^2.
\]
If \(\delta>0\), equations (8)–(9) on the maximal LOCAL history imply
\[
\nu\frac d{dt}\|\Lambda^{1/2}u\|^2+
[\nu^2-(1+\eta)C_{\rm src}^2\|\Lambda^{1/2}u\|^2]\|\Lambda^{3/2}u\|^2+
\|u_t\|_{\dot H^{-1/2}}^2
\le(1+\eta^{-1})\|g\|_{\dot H^{-1/2}}^2.
\]
Choose a barrier strictly between \(A_f\) and \(\nu/(\sqrt{1+\eta}C_{\rm src})\). Before its first exit the coefficient is positive; integration forces the critical norm to remain at most \(A_f\), excluding that exit. Hence uniformly on strict cutoffs,
\[
\nu\|\Lambda^{1/2}u(S)\|^2+
\delta\int_0^S\|\Lambda^{3/2}u\|^2+
\int_0^S\|u_t\|_{\dot H^{-1/2}}^2\le\nu A_f^2.
\tag{10}
\]
This initializes an actual terminal coordinate from datum and prescribed force. It uses the source's local identities and first-exit calculation without invoking the global theorem initially cited in the displayed manuscript proof.

The allocation optimizes explicitly: let \(x=\|\Lambda^{1/2}u_0\|\), \(y=F_T/\sqrt\nu\). The minimum over \(\eta>0\) of \((1+\eta)[x^2+(1+\eta^{-1})y^2]\) is \((\sqrt{x^2+y^2}+y)^2\). An admissible \(\eta\) exists exactly when
\[
C_{\rm src}(\sqrt{x^2+y^2}+y)<\nu.
\tag{11}
\]
For \(y>0\), the optimizer is \(\eta=y/\sqrt{x^2+y^2}\); for \(y=0\), take sufficiently small positive \(\eta\). This strict smallness is the exact antecedent.

## Execute all spatial rows, rectangles and restart

Each of (5), (7), and (10) now provides a concrete initialization. The first two give \(J=\int\|\Lambda^{3/2}u\|^2\le R_{0,1}\); the critical branch gives \(J\le\nu A_f^2/\delta\) independently of a rectangle.

Only one qualifying whole-terminal coordinate is needed. If an actual finite temporal row has \(\int_0^{T_*}\|\Lambda^sV_q\|^2<\infty\), with \(s\ge3/2\), use the finite high-frequency Taylor integral in cofinal-composition.md at the single target order \(3/2\), and kinetic energy for low frequencies. This gives \(J<\infty\). The integer commutator below generates every higher spatial coordinate from that one entry. An infinite cofinal family is a valid sufficient input but is not required for this initialization/continuation test.

The original integer commutator proof LF67–155 retains every differentiated nonlinear term. It gives
\[
|\mathcal P_m|\le K_m\|\Lambda^{3/2}u\|
\|\Lambda^mu\|\|\Lambda^{m+1}u\|,
\]
with finite
\[
K_m=3^m\sum_{\ell=1}^m\binom m\ell S(p_{m,\ell})S(q_{m,\ell}).
\]
For \(m\ge2\), \(\theta=(\ell-1)/(m-1)\), \(1/p=1/3-\theta/6\), \(1/q=1/6+\theta/6\). The two differentiated Sobolev orders are complementary interpolants between \(3/2\) and \(m+1\); their product is bounded by \(\|\Lambda^{3/2}u\|\|\Lambda^{m+1}u\|\). Multinomial weights sum to \(3^m\), with the remaining allocations summing to \(\binom m\ell\). For \(m=1\), use \(L^3,L^6\) directly.

Retain \(W_m=\langle\Lambda^{m+1}u,\Lambda^{m-1}g\rangle\). Young allocation and the actual integrating factor give
\[
\|\Lambda^mu(S)\|^2+
\nu\int_0^S\|\Lambda^{m+1}u\|^2\le C_m,
\]
\[
C_m=\exp\!\left(\frac{(1+\eta)K_m^2J}{\nu}\right)
\left[\|\Lambda^mu_0\|^2+
\frac{1+\eta^{-1}}{\nu}\int_0^T\|\Lambda^{m-1}g\|^2\right].
\tag{12}
\]
Every constant is finite at its fixed order and independent of the cutoff. Each energy supremum and terminal dissipation integral is therefore separately bounded by the displayed constant; their separately taken sum is bounded by twice that constant. Kinetic energy supplies low frequencies. This pays the full velocity spatial column, not just formal compatible derivatives.

In particular \(C_1\) bounds \(\sup y\) and \(\nu A\). The original positive first square is now bounded with no quadratic feedback:
\[
X(S)\le\overline X:=\nu G_0+
\frac{(1+\eta)C_1}{8\pi}(L+C_1/\nu)+(1+\eta^{-1})\Phi.
\tag{13}
\]
Equation (13) uses (2), \(\int\|u\|_{H^2}^2\le L+C_1/\nu\), and the independently paid gradient bound. Thus \(A\le\overline X/\nu^2\), \(B\le\overline X\), and \(R_{0,1}\le L+\max(1,\nu^{-2})\overline X\).

For each \(m\), the full spatial column yields \(u_t\in L^1H^m\) from the actual nonlinear equation, giving one compatible \(H^\infty\) endpoint. The complete recurrence
\[
V_{n+1}=\nu\Delta V_n-
\mathbb P\sum_{a=0}^n\binom na(V_a\cdot\nabla)V_{n-a}+\mathbb PF_n
\]
regenerates all temporal derivatives. Pressure remains
\[
Q_n=R_iR_j\sum_a\binom na(V_a)_i(V_{n-a})_j
-(-\Delta)^{-1}\operatorname{div}F_n.
\]
Equivalently obtain every base \(R_{0,M}\) from the spatial column, then use the checked finite transfer \(R_{0,M+2N}\Rightarrow R_{N,M}\). Monotone convergence gives whole-terminal membership on any putative maximal horizon covered by the initialized bounds. Original-force local existence and uniqueness restart the same history. If (11) holds on prescribed \(T\), no maximal time at or before \(T\) is possible. If its total-force version holds on \((0,\infty)\), every finite maximal time is excluded.

## Finite Gram and completed-height closure scope

The original cross-term test defines for symmetric \(C^1\) temporal \(G\):
\[
E_G=\sum G_{nm}\langle\nabla V_n,\nabla V_m\rangle,\qquad
D_G=\sum G_{nm}\bigl(\langle V_{n+1},V_{m+1}\rangle+
\nu^2\langle\Delta V_n,\Delta V_m\rangle+
\langle\nabla Q_n,\nabla Q_m\rangle\bigr).
\]
Squaring the COMPLETE rows proves
\[
D_G+\nu E_G'=\mathcal Q_G(F-B)+\nu E_{\dot G}.
\tag{14}
\]
The residual contains the full force Gram, every force/nonlinear cross, and every binomial nonlinear/nonlinear cross; time-dependent weights retain \(E_{\dot G}\).

For constant adjacent \(\left(\begin{smallmatrix}a&b\\b&c\end{smallmatrix}\right)\), the residual cross is \(b\partial_t\|F_0-B_0\|^2\), while the same left off-diagonal is \(b\partial_t(d_0+\nu y')\). Integration gives matching endpoints. For \(c>0\),
\[
\mathcal Q_G(H)=c\|H_1+(b/c)H_0\|^2+(a-b^2/c)\|H_0\|^2.
\]
A positive definite \(G\) retains a positive zeroth residual. If \(G\succeq\gamma E_{00}\), then \(D_G\ge\gamma d_0\) and \(\mathcal Q_G(F-B)\ge\gamma\|F_0-B_0\|^2\). An indefinite choice can change the residual sign. The positive Gram argument then supplies no coercive lower bound for the requested first rectangle; any estimate using further restrictions of the actual jet would require its own derivation. The calculation does not prove that every indefinite operation is impossible.

The source's G17–G23 is an exact smooth forced Navier–Stokes history, with disjoint solenoidal \(v_j\), \(a_j=\chi e^{-j^2+jt}\), \(u=\sum a_jv_j\), \(p=0\), and the prescribed full force \(\sum(a_j'v_j-\nu a_j\Delta v_j+a_j^2(v_j\cdot\nabla)v_j)\). All force seminorms converge. Its nonlinear temporal Gram is positive definite at every finite order because a nonzero polynomial cannot vanish at every \(2j\). It excludes the stated finite positive-matrix annihilation operation on this actual history. It is not a breakdown example or an exclusion of all indefinite or spatial estimates.

Completed-height substitutions retain complete nonlinear work and every integrated endpoint. Their positive spatial readouts support the cofinal assembly once paid. Here the additional critical square does pay an entry under (11), producing (10) and removing the feedback in (13). Without this explicit smallness or another independently verified estimate, the exact finite identities do not themselves remove the quadratic feedback in (4).

## The full finite-order datum feedback, without discarding pressure

The preceding first-row calculation is not the only finite test. For every fixed \(N\ge0,M\ge2\), original A45 gives
\[
D_{N,M}(S)=\nu\sum_{n=0}^N\|\nabla V_n(S)\|_{H^{M-1}}^2+
\sum_{n=0}^N\int_0^S
(\|V_{n+1}\|_{H^{M-1}}^2+
\nu^2\|\Delta V_n\|_{H^{M-1}}^2+
\|\nabla Q_n\|_{H^{M-1}}^2)
\]
\[
=\nu\sum_{n=0}^N\|\nabla A_n\|_{H^{M-1}}^2+
\sum_{n=0}^N\int_0^S\|F_n-B_n\|_{H^{M-1}}^2.
\tag{15}
\]
Every \(B_n\) is the full binomial row. Original A50 uses the actual adjacent trace of every selected row, including \(V_N\), to prove
\[
\sum_{n=0}^N\|B_n\|_{L^2H^{M-1}}^2
\le C_M^2p_N(I_{N,M}+R)R,\quad
p_N=(4^{N+1}-1)/3,
\]
\[
I_{N,M}=\sum_{n=0}^N\|A_n\|_{H^M}^2,\qquad
R=R_{N,M}(S).
\tag{16}
\]
This is valid on strict cutoffs and quantifies exactly the unknown self-feedback.

An independent Fourier coercivity calculation gives
\[
R\le L_0+K D_{N,M},\quad
L_0=2^{M+1}TU^2,\quad K=\max(3,4\nu^{-2}).
\tag{17}
\]
For \(n=0\), low frequencies use kinetic energy and high frequencies use
\((1+|\xi|^2)^2\le4|\xi|^4\) on \(|\xi|>1\). For \(n\ge1\),
\(\|V_n\|_{H^{M+1}}^2\le2\|V_n\|_{H^{M-1}}^2+
2\|\Delta V_n\|_{H^{M-1}}^2\);
the first term is a previous adjacent temporal coordinate already in \(D_{N,M}\). Adding the target adjacent terms gives the constants in (17). Pressure and the terminal gradients remain positive in \(D_{N,M}\).

Set the data-only finite quantity
\[
d=\nu\sum_{n=0}^N\|\nabla A_n\|_{H^{M-1}}^2+
2\sum_{n=0}^N\|F_n\|_{L^2(0,T;H^{M-1})}^2.
\]
The full force/nonlinear Young allocation in (15), followed by (16)–(17), gives
\[
R\le c+bR+aR^2,\quad
a=2K C_M^2p_N,\quad b=aI_{N,M},\quad c=L_0+Kd.
\tag{18}
\]
This is another actual finite datum initialization when \(b<1\) and
\((1-b)^2>4ac\): continuity of \(R(S)\), starting from zero, supplies the smaller-root bound uniformly to the terminal cutoff. No common constant over \(N,M\) is requested. Enlarging the finite selection preserves (18)'s quadratic feedback rather than cancelling it algebraically.

The completed-height hierarchy has a parallel exact accounting. Write \(a=2\nu\), \(E_s=\|\Lambda^su\|^2/2\), \(G_s=P_s+W_s\). Its fully integrated identity is
\[
a^k\int_0^S\phi E_{s+k}
=\int_0^S\phi^{(k)}E_s+
\sum_{j<k}a^j\int_0^S\phi^{(k-1-j)}G_{s+j}
-\sum_{j<k}a^j[\phi^{(k-1-j)}E_{s+j}]_0^S.
\]
Incompressibility cancels \(P_0\), so \(k=1,s=0\) gives kinetic dissipation. However \(k=2,s=0,\phi=1\) gives precisely
\[
(2\nu)^2\int_0^S E_2=
2\nu\int_0^S(P_1+W_1)-2\nu[E_1]_0^S.
\tag{19}
\]
The next self-production \(P_1\) remains; its cancellation does not follow from \(P_0=0\). Original recovered source-work estimates pay the prescribed \(W\) terms and retain their boundary pairings. They do not turn the intrinsic \(P_1\) in (19) into prescribed source work. At critical height, the same complete algebra yields (8)–(10), with the explicit smallness needed for absorption.

The completed source-faithful composition is a datum-to-whole-terminal-to-restart proof under the separated-root or critical-smallness antecedents, and an unconditional positive short interval under (7). Equations (14), (18), and (19) identify the exact residuals in the tested Gram/height compositions. They establish no unrestricted datum-to-terminal conclusion outside the verified antecedents and no universal impossibility statement about additional estimates.
