# RPT.24: exact finding, sufficient correction and downstream effect

**Reviewed scope and currentness.** The mathematical statements retain their recorded hypotheses and the reconciliations listed in the supersession register. Its named-graph exhaustion is bounded, not an exhaustion of unrelated NS notes. The later native custody transfer prevents recasting LSS/source-square entries as original prerequisites. Original finite-rectangle membership, when supplied, implies downstream source and selected-current bounds. Optional sufficient criteria in this report are not added as upstream premises of the printed producer. The mathematical body retains its stated strict-time, terminal, pressure and force hypotheses. Publication adds no unconditional global theorem claim.


6 October 2026. Direct verification of the printed inequality on the actual unforced Navier–Stokes solution class. This new artifact supplements the supporting continuation audit. No source or earlier artifact is changed.

## 1. Exact definitions, source and quantifiers

The original is [Thomas's incompressible reciprocal-tail suppression and time-square boundary](../SOURCES.md#S219), 391 LF. Its status explicitly describes an auxiliary theorem and says it does not prove the first signed prefix.

The energy definition is [BPF.2](../SOURCES.md#S316):
\[
E_s(t)=\frac12\|\Lambda^su(t)\|_2^2,\quad
E=E_{1/2},\quad Z=\|\Lambda u\|_2^2,\quad
D=\|\Lambda^{3/2}u\|_2^2=2E_{3/2},\quad
\mathcal H(T)=\int_0^TZ(t)^2\,dt.
\tag{RC1}
\]
The last definition is exactly RPT.19, LF240. This \(\mathcal H\) is not a material incidence measure or a causal primitive.

On a strict smooth prefix \(0<T<T_*\), the complete original equation and its source are
\[
u_t+(u\cdot\nabla)u+\nabla p=\nu\Delta u,\quad
\operatorname{div}u=0,\quad
p=\sum_{i,j}R_iR_j(u_iu_j),\quad
Q(u)=-\mathbb P\nabla\cdot(u\otimes u).
\tag{RC2}
\]
Thus \(Q=-(u\cdot\nabla)u-\nabla p\). The source's solenoidal energy test permits the pressure pairing to vanish after the complete source is retained. No forcing term is omitted from a forced claim: this calculation has \(f=0\).

RPT.22–23, LF273–292, gives
\[
E'+\nu D=P,\quad P=\langle Q(u),\Lambda u\rangle,\qquad
|P|\le a_0 Z\sqrt D\le\frac{\nu}{2}D+\frac{a_0^2}{2\nu}Z^2,
\quad a_0=\mathsf S_3\mathsf S_6.
\tag{RC3}
\]
The Sobolev constants refer to \(\dot H^{1/2}\to L^3\) and \(\dot H^1\to L^6\), including the velocity components. Consequently \(C=a_0^2/2\) is an admissible choice for the final \(C\) in RPT.23. The source's repeated generic \(C\) can be enlarged, but this is a universal Sobolev/Young constant, not a new datum-dependent function.

The **literal printed [RPT.24](../SOURCES.md#S219)** is
\[
\boxed{\sup_{0<t<T}E_{1/2}(t)
+\frac{\nu}{2}\int_0^T\|\Lambda^{3/2}u(t)\|_2^2\,dt
\le E_{1/2}(0)+\frac C\nu\mathcal H(T).}
\tag{RC4: printed RPT.24}
\]
All terms and the separate supremum are as printed.

## 2. Invalid inference and sufficient corrected bound

Keep one chosen \(C\) from the last line of RPT.23. Integration gives, for **each** \(t\le T\),
\[
E(t)+\frac{\nu}{2}\int_0^tD
\le E(0)+\frac C\nu\mathcal H(t)
\le R_T:=E(0)+\frac C\nu\mathcal H(T).
\tag{RC5}
\]
It follows separately that \(\sup_{0<t<T}E(t)\le R_T\) and that
\((\nu/2)\int_0^TD\le R_T-E(T)\). Their sum is bounded by two copies of \(R_T\), not one. In particular a sufficient correction is
\[
\boxed{\sup_{0<t<T}E(t)+\frac{\nu}{2}\int_0^TD
\le 2R_T-E(T)\le 2E(0)+\frac{2C}{\nu}\mathcal H(T).}
\tag{RC6}
\]
With the explicit choice in RC3 this is
\[
\boxed{\sup_{0<t<T}E(t)+\frac{\nu}{2}\int_0^TD
\le2E(0)+\frac{a_0^2}{\nu}\mathcal H(T).}
\tag{RC7}
\]
Factor two is a sufficient safe correction; no assertion that two is the smallest possible coefficient is made. Nor is the problem repaired merely by enlarging \(C\) while keeping the coefficient one on \(E(0)\), as the next actual-solution calculation shows.

The \(E(T)\) refinement is only used on a strict prefix with its actual trace. The bound after dropping \(E(T)\) passes to \(T\uparrow T_*\) without assuming a terminal trace.

## 3. Failure on actual admitted local solutions

Choose any nonzero real solenoidal Schwartz field \(v\); one explicit datum is
\[
v(x)=\operatorname{curl}(0,0,e^{-|x|^2})
=(-2x_2e^{-|x|^2},2x_1e^{-|x|^2},0).
\tag{RC8}
\]
Fix \(\nu>0\), put \(V=\|v\|_{H^3}\), and choose
\(0<T<\min\{1,c_\nu(1+V)^{-2}\}\), using the paper's [quantitative local restart](../SOURCES.md#S136). For \(0<\alpha\le1\), the datum \(\alpha v\) belongs to \(H^\infty_\sigma\), and this same \(T\) is allowed by that theorem.

This uses the paper's actual [pressure-normalized mild class](../SOURCES.md#S136), its [bilinear and contraction estimates](../SOURCES.md#S136), and its \(H^\infty\) admission at LF684–688:
\[
u_\alpha(t)=\alpha S_tv+\int_0^tS_{t-s}Q(u_\alpha(s))\,ds,\quad
p_\alpha=\sum R_iR_j(u_{\alpha,i}u_{\alpha,j}),\quad
S_t=e^{\nu t\Delta}.
\tag{RC9}
\]
The source's fixed-point ball has radius \(R_\alpha=2L_\nu\alpha V\) in its actual \(X_T\) space, which includes \(C([0,T];H^3)\). Its full pressure-completed product estimate is
\(\|Q(w)\|_{H^2}\le C_q\|w\|_{H^3}^2\). Applying the same zero-data linear estimate to the integral in RC9 gives
\[
\|u_\alpha\|_{C H^3}\le R_\alpha,\qquad
\|u_\alpha-\alpha S_tv\|_{X_T}
\le L_\nu C_q\sqrt T\,R_\alpha^2=O(\alpha^2).
\tag{RC10}
\]
All constants depend on the fixed \(\nu,T,v\), not on \(\alpha\). This is the original nonlinear Navier–Stokes fixed point, with its canonical pressure and full nonlinear Duhamel remainder. No assertion that the chosen \(v\) has zero nonlinear source is used.

Since \(H^3\) controls the displayed homogeneous norms, RC10 implies
\[
D_\alpha(t)=\alpha^2\|\Lambda^{3/2}S_tv\|_2^2+O(\alpha^3)
\quad\text{uniformly on }[0,T],\qquad
\mathcal H_\alpha(T)=O(\alpha^4).
\tag{RC11}
\]
Continuity at zero gives \(\sup_{0<t<T}E_\alpha(t)\ge E_\alpha(0)\). Define the positive number
\[
c_T=\frac{\nu}{2}\int_0^T\|\Lambda^{3/2}S_tv\|_2^2\,dt>0.
\tag{RC12}
\]
The difference between the left and right sides of printed RPT.24 is therefore at least
\[
\alpha^2c_T-O(\alpha^3)-\frac C\nu O(\alpha^4)>0
\quad\text{for sufficiently small }\alpha.
\tag{RC13}
\]
This disproves that literal inequality for actual admissible local solutions and every fixed universal finite \(C\). It does not construct a blowup history or invalidate the corrected estimate.

## 4. Exact effect on RPT.25 and the bootstrap

The **literal printed [RPT.25](../SOURCES.md#S219)** is
\[
\boxed{\sup_{T<T_*}\mathcal H(T)<\infty
\iff
\sup_{t<T_*}E_{1/2}(t)
+2\nu\int_0^{T_*}E_{3/2}(t)\,dt<\infty.}
\tag{RC14: printed RPT.25}
\]
It remains true on the same finite classical horizon:

* In the forward direction, RC6 bounds the stock and full action uniformly in strict \(T<T_*\).
* In the reverse direction, Fourier Cauchy gives \(Z^2\le\|\Lambda^{1/2}u\|_2^2D=2ED\), so \(\mathcal H(T)\le2(\sup E)\int_0^TD\).

Both implications retain every time quantifier and need no terminal value of \(u\). Numerical factor changes do not change finiteness.

There is also an explicit corrected connection to the first signed prefix:
\[
A(t):=\int_0^tP=E(t)-E(0)+\nu\int_0^tD
\le E(0)+\frac{2C}{\nu}\mathcal H(t)-E(t)
\le E(0)+\frac{2C}{\nu}\mathcal H(t).
\tag{RC15}
\]
Thus a **proved** uniform \(\mathcal H_*\) would supply BPF.6 with
\(C_*=E(0)+(2C/\nu)\mathcal H_*\), and BPF.8 with
\(\mathcal B_*=2E(0)+(2C/\nu)\mathcal H_*\). The [actual BPF.7–14 chain](../SOURCES.md#S316) then gives
\[
\sup_{t<T_*}\|\Lambda^{1/2}u\|_2^2\le2\mathcal B_*,\quad
\int_0^{T_*}D\le\mathcal B_*/\nu,\quad
\Gamma_m=K_m^2\mathcal B_*/\nu^2,
\]
\[
\sup X_m\le X_m(0)e^{\Gamma_m},\qquad
\nu\int Y_m\le X_m(0)(1+\Gamma_me^{\Gamma_m}).
\tag{RC16}
\]
Only explicit quantitative constants change if this conditional bootstrap is fed through the repaired bound. The mixed-row/intersection/restart implications still require the same actual datum-produced whole-interval input. RC6 or RC14 does not itself prove \(\mathcal H_*<\infty\).

## 5. Direct consumers and independent operations

A fresh search of the original NS theorem-construction Markdown sources found no external invocation of the literal RPT.24 coefficient. The direct references to RPT.25 are:

| Actual source location | Consumed statement | Effect of correction |
|---|---|---|
| RPT LF305–318, .25 | Uniform time-square finiteness iff critical stock/action finiteness | Reproved in RC14; survives |
| RPT LF349–367, .29 | Fixed-depth terminal nonuniformity, with PRM.32j and .37–46 governing outgoing identities | Fixed-depth assertion and equivalence survive; adaptive depth is a separate permitted operation |
| RPT LF371–391, .30 and conclusion | Datum-paid first-time reciprocal tail; critical pairing asks for a time square | Tail estimate .7–15 and duality .16–19 are independent of the bad summed coefficient |
| [DCL.12, LF167–183](../SOURCES.md#S206) | Exactly RC14's finiteness equivalence, used after \(|P_c|\le C Z^2/\nu\) | Survives; no exact RPT.24 coefficient is used |
| [RPR LF413–417](../SOURCES.md#S235) | Converts a time-Cauchy pairing to the already critical time-square interface | Survives; RPR.29's first-time tail payment uses kinetic energy independently |
| [TIR LF1179–1187](../SOURCES.md#S160) | Summarizes reciprocal first-time decay and stock/action equivalence | Survives as a summary; the actual equations above are the evidence |

RPT.26–28's ratio supremum, scale invariance and dilation law do not use RC4. The newer adaptive tail payment likewise uses the exact critical identity at actual first-hit records,
\[
\sup_{t\le t_n}\|\Lambda^{1/2}u\|_2^2\le2(E(0)+A_n),\quad
\int_0^{t_n}D\le(E(0)+A_n)/\nu,\quad
\mathcal H(t_n)\le2(E(0)+A_n)^2/\nu,
\tag{RC17}
\]
not the literal summed RPT.24. Its \(N_n\asymp A_n^{1+\eta}\) discarded tail and complete finite retained response are unchanged. Nor does the factor-two repair remove that response's two parent insertions, full-source/selected-source mismatch, moving gate, cap crossings or endpoints.

## 6. Coverage of the remaining producing graph

The [new named-operation check](A0644-two-high-named-operation-closure-check-20261006.md) follows the actual outgoing references and distinguishes proved operators from proposed antecedents. The earlier exhaustive-coverage wording was too broad for two indirect leaves: the 143-original snapshot did not include RAM, and its stated LSS execution did not cover the full later supplier chain. This follow-up retrieves and executes RAM.1–21 and LSS.31–45 with its remaining suffix. The verified original set is now 144.

**Definitive scoped answer:** after these further executions, no unexecuted named proved upper-payment operation remains in the recovered candidate graph. The sources contain explicit unproved producing targets. This is exhaustion of this named dependency graph, including its original rectangle alternative, rather than a claim about every unrelated NS note.

The additional operations give real conditional or normalized results:

* [RAM.16–17](../SOURCES.md#S227) proves a vanishing normalized-backward global kinetic mean frequency. For first critical-stock records \(R_n\to\infty\), with \(K_0=\|u_0\|_2^2\), \(D_n=\|\Lambda^{3/2}u(t_n)\|_2^2\), \(x_n=K_0^2D_n/R_n^3\ge1\), and \(L_n=t_nD_n/\sqrt{R_n}\), its exact bound is
\[
\frac1{L_n}\int_{-L_n}^0\frac{Z_n}{K_n}\,d\tau
\le\frac{K_0^2}{4\nu t_nR_n^2}\frac{\log x_n}{x_n}\to0.
\tag{RC19}
\]
Here \(K_n,Z_n\) are the normalized actual fluid's kinetic and gradient norms. Chebyshev gives the vanishing time fraction with \(Z_n/K_n\ge\kappa^2\). RAM only assumes this particular diverging-stock branch. [BRC.23](../SOURCES.md#S315) separately requires one fixed positive-volume material cohort and a fixed label fraction suffering transverse collapse or escape to infinite physical radius. RAM's global mean-frequency bound does not assert that localization; the source expressly retains it.
* [LSS.31–43c](../SOURCES.md#S224) gives, for the same complete pressure source,
\[
Q_t+\nu\Lambda^2Q=DQ(u)[Q]+2\nu\mathcal C(u)=:\mathcal N_Q,\quad
DQ(u)[Q]=-\mathbb P[(Q\cdot\nabla)u+(u\cdot\nabla)Q],\quad
\mathcal C=\sum_j\mathbb P[(\partial_ju\cdot\nabla)\partial_ju],
\]
\[
R_Q=\tfrac12\|\Lambda^{-3/2}Q\|_2^2,\quad
J_Q=\langle\mathcal N_Q,\Lambda^{-3}Q\rangle,\quad
R_Q'+\nu\|\Lambda^{-1/2}Q\|_2^2=J_Q.
\tag{RC20}
\]
The actual LSS.39 antecedent is \(C_J=\sup_{t<T_*}\int_0^tJ_Q<\infty\), introduced at LF431 as a new datum theorem. If proved, it gives
\[
\nu\int_0^t\|\Lambda^{-1/2}Q\|_2^2\le R_Q(0)+C_J,\qquad
E(t)+\frac{\nu}{2}\int_0^tD
\le E(0)+\frac{R_Q(0)+C_J}{2\nu^2}.
\tag{RC21}
\]
This last inequality is pointwise in \(t\), so it has no RPT.24 separate-supremum error. The source explicitly says its \(C_J\) bound is not proved. Its exact endpoint alias is
\(\int_0^TJ_Q=R_Q(T)-R_Q(0)+\nu^2\mathscr A_Q(T)\),
\(\mathscr A_Q=\nu^{-1}\int_0^T\|\Lambda^{-1/2}Q\|_2^2\); its paid time norm of \(R_Q\) does not assert an endpoint upper.
* The directly checked FRS/DCL dependencies genuinely pay the normalized BCD stock and its signed telescope under the actual Fourier roof. Their full [source-closure calculation](A0369-frs-dcl-external-source-closure-20261006.md) keeps \(B_{core}=Z^{3/2}G_{core}\) and \(R_{core}+X_{core}=B_{core}'+P_{core}\). Restoring the radius restores its derivative, current, endpoints and threshold crossings.

The principal explicit targets remaining in this exhausted graph are:

| Original route | What would have to be newly proved |
|---|---|
| [RPR.33, LF464–482](../SOURCES.md#S235) | CanonicalRecordResolvedParentTurnDown.A: the normalized signed finite resolved-parent pulse tends to zero on its actual canonical support; the source explicitly identifies its proof as remaining |
| LSS.39 | A datum-controlled finite upper prefix \(C_J\) of the full first-binomial source work in RC20 |
| DCT.47 / FRS / joined reciprocal PRM | Upper payment of the complete retained signed source/crossing/endpoint block, including both ordered parents, moving selector and full-source/selected-source mismatch |
| BRC.23 and recruited branch | Actual record-to-fixed-cohort localization, or a paid same-history source/receiver coincidence tail with its full pressure and material weights |
| HPF.41 / UAL.97–98 | An independently paid uniform nonnegative shell residual, or the stronger deformation/covector moment of the actual record-carrying measure |
| Original datum rectangles | A datum-produced whole-\(I\) membership input on the native graph domains; the same-interval transfer and endpoint/restart are already verified consumers |

The original whole-\(I\) rectangle construction remains an independent source route. Its mixed transfer retains \(R(0,M+2N)\Rightarrow R(N,M)\) on the **same** interval, followed by the actual compatible intersection and restart. RPT.24's coefficient is not a premise of those transfer identities. A critical-prefix or source-action argument supplies a sufficient entry when proved; this audit does not replace the original datum construction by that sufficient alternative.

The historic SH label/file identity used by PRM/RPT was not recovered as a separate original file. Its cited operators are fully redisplayed and directly derivable in the recovered RPT/PRM/FIH: the complete Leray source density, reciprocal parent storage and weighted heat insertion. The named-operation check follows those actual formulas rather than borrowing an unseen upper theorem. Thus this is a remaining provenance qualification, not an essential mathematical access blocker or a hidden supplier estimate.

The source-action criterion derived for the actual two-high field remains
\[
F_n=-\Pi_{\rho_n}\mathbb P[(P_{>b_n}u\cdot\nabla)P_{>b_n}u],\quad
\mathcal B_n=\int_{(s_n-\tau_n)_+}^{t_n}\|F_n\|_{\dot H^{-1/2}}^2\,dt,\quad
\left|\int_{I_n}J_{TT}\right|
\le\frac{10\sqrt2 C_{\rm frac}}{\nu^2}\mathcal B_n\sqrt{A_n}.
\tag{RC18}
\]
The incoming history and delayed source are included in that hull. One precise new lemma would give a datum-controlled modulus \(\epsilon(A)\to0\) with \(\mathcal B_n\le\epsilon(A_n)\sqrt{A_n}\) for the actual canonical records and lawful cuts, uniformly through their strict prefixes. A different same-history signed \(o(A_n)\) payment of the complete remaining response/cap/endpoint block could also close this reached route. Alternatively, a new proof of one of the existing sufficient targets above could supply the original critical entry. No existing proved supplier of these bounds was found in the exhausted named graph. RC6 changes neither this criterion nor the original full-record \(A_n/32\) floor.

This report's exact finding is a correctable coefficient error in an auxiliary inequality. It supplies neither an unconditional global theorem nor an obstruction to a different complete signed payment.

The [independent direct-consumer verification](A0576-rpt24-direct-consumer-verification-20261006.md) separately checks the formulas, actual local solution family, quantitative bootstrap and historic-reference scope.
