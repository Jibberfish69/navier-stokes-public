# Joined reciprocal sums: exact distributional and terminal passage

**Reviewed scope and currentness.** Current joined synthesis of preceding storage, force, distributional and cutoff endpoint results; final next-unexecuted-FIH39 paragraph is historical roadmap and must be reconciled with later critical-split executions before publication. Original finite-rectangle membership, when supplied, implies downstream source and selected-current bounds. Optional sufficient criteria in this report are not added as upstream premises of the printed producer. The mathematical body retains its stated strict-time, terminal, pressure and force hypotheses. Publication adds no unconditional global theorem claim.


This is a bounded continuation of the original joined reciprocal construction. It records the full definitions, the exact cancellations before a limit, the time weights, and the endpoint control actually obtained. It does not revisit the overall global-smoothness verdict. All manuscript and original source files remain read-only.

## Original sources and normalizations

The two directly governing original sources are:

- [PRM](../SOURCES.md#S229): PRM.1–17 at LF16–215; PRM.32a at LF421–427; PRM.32e–j at LF475–547; PRM.35–37 at LF615–646.
- [FIH](../SOURCES.md#S212): FIH.3–12 at LF56–185; moving triangle FIH.15–17 at LF217–249; critical weight FIH.18–19 at LF255–269; weighted cubic FIH.27–28 at LF353–368; full defect FIH.33 at LF428–434; signed insertion split FIH.39 at LF487–492.

Fix the actual original history on \(I=(0,T)\), where \(T<\infty\) may be its maximal terminal time. Put
\[
Q(u)=-\mathbb P[(u\cdot\nabla)u],\qquad b=\mathbb Pf,\qquad
K=\|u_0\|_2+\int_I\|b(t)\|_2\,dt .
\]
Set \(b=0\) for the unforced history. The complete forced equation is \(u_t+\nu\Lambda^2u=Q(u)+b\). The projector includes the normalized pressure response.

At one nonzero output \(k\), let
\[
\lambda=|k|,\quad \gamma=\nu\lambda^2,\quad c=\lambda/\nu,\quad
\delta_p=\nu(|p|^2+|k-p|^2).
\]
In the derivative-removed source normalization, with \(q=k-p\),
\[
\Theta_p=-\frac{ic_{\mathcal F}}{\lambda}\mathbb P_k
[(\widehat u(p)\cdot q)\widehat u(q)],\quad
g=\int\Theta_p\,dp=\lambda^{-1}\widehat{Q(u)}(k).
\]
The full parent insertion is
\[
N_p=-\frac{ic_{\mathcal F}}{\lambda}\mathbb P_k
\left[
((\widehat{Q(u)}+\widehat b)(p)\cdot q)\widehat u(q)
+(\widehat u(p)\cdot q)(\widehat{Q(u)}+\widehat b)(q)
\right].
\]
Both ordered parent legs and their distinct inner pressure projectors remain. The exact source evolution is
\[
\Theta_p'=-\delta_p\Theta_p+N_p.
\]
For the actual total response
\[
w=u-e^{-\nu t\Lambda^2}u_0,\quad
z=\gamma\lambda^{-1}\widehat w(k),\quad
h=\lambda^{-1}\widehat b(k),
\]
the response equation is \(z'=\gamma(g+h-z)\). All fiber pairings below take their real part. Joining means integrating the complete output/helicity measure, with the stated positive weights; it is not an outputwise use of a kinetic invariant.

## Exact finite and infinite sums

For \(N\ge1\), define
\[
r_p=\frac{\delta_p}{\gamma+\delta_p},\qquad
a_N(\delta)=1-\left(\frac{\delta}{\gamma+\delta}\right)^N,\qquad
g_N=\int a_N(\delta_p)\Theta_p\,dp.
\]
The original reciprocal coordinates are
\[
X_m=\int\frac{r_p^m}{\gamma+\delta_p}\Theta_p\,dp,\quad
Y_m=\int r_p^m\Theta_p\,dp,\quad
\mathcal N_m=\int\frac{r_p^m}{\gamma+\delta_p}N_p\,dp.
\]
Thus \(g_N=\gamma\sum_{m<N}X_m\). PRM.9,13,32e–f and 35 give
\[
\overline B_N=\frac c\gamma\operatorname{Re}\langle z,g_N\rangle ,
\]
\[
\boxed{\overline C_N
=\frac c2\iint
\frac{a_N(\delta_p)+a_N(\delta_q)}{\delta_p+\delta_q}
\operatorname{Re}\langle\Theta_p,\Theta_q\rangle\,dp\,dq ,}
\]
\[
\boxed{C_\infty
=c\iint\frac{\operatorname{Re}\langle\Theta_p,\Theta_q\rangle}
{\delta_p+\delta_q}\,dp\,dq
=c\int_0^\infty\left\|\int e^{-s\delta_p}\Theta_p\,dp\right\|^2ds .}
\]
Here the dummy paired parent \(q\) in the double integral is independent of the \(q=k-p\) in a single physical parent. PRM.32a defines \(E=c\|z\|^2/(2\gamma)\), \(I=c\|z\|^2\), and \(\mathscr K_m=E+B_m+C_m\). Consequently the complete finite sum is
\[
\boxed{\widetilde K_N=\sum_{m<N}\mathscr K_m
=NE+\overline B_N+\overline C_N .}
\]
The coefficient \(N\) repeats the same response stock, rather than introducing \(N\) independent responses. After joining the critical outputs,
\[
E=\tfrac12\|\Lambda^{1/2}w\|_2^2,\qquad
I=\nu\|\Lambda^{3/2}w\|_2^2,
\]
\[
C_\infty(u)=\nu^{-1}\int_0^\infty
\|\Lambda^{-1/2}Q(e^{-\nu s\Lambda^2}u)\|_2^2\,ds .
\]

The exact Cauchy-kernel contraction and completed square prove
\[
0\le\overline C_N\le2C_\infty,\quad
\widetilde K_N\ge\frac c{2N\gamma}\|Nz+g_N\|^2\ge0,\quad
|\overline B_N|\le2\sqrt{NE\,\overline C_N}.
\]
The last inequality remains true after joining the positive output measure.

## Full finite balance and exact parent-rate cancellation

Set
\[
S_N=\int\delta_p a_N(\delta_p)\Theta_p\,dp,\qquad
N_N=\int a_N(\delta_p)N_p\,dp .
\]
Then \(g_N'=-S_N+N_N\). Define the full pair insertion
\[
\mathcal J_N=\frac c2\iint
\frac{a_N(\delta_p)+a_N(\delta_q)}{\delta_p+\delta_q}
\operatorname{Re}\left[
\langle N_p,\Theta_q\rangle+\langle\Theta_p,N_q\rangle
\right]dp\,dq .
\]
All terms in the following definitions are retained:
\[
\overline F_N=\sum_{m<N}F_m
=c\operatorname{Re}\langle z,g_N\rangle
+\frac c\gamma\operatorname{Re}\langle z,S_N\rangle ,
\]
\[
\overline R_{\mathrm{NL},N}^{\mathrm{full}}
=\frac c\gamma\operatorname{Re}\langle z,N_N\rangle+\mathcal J_N,
\qquad D_N=c\operatorname{Re}\langle h,g_N\rangle .
\]
The exact derivatives are
\[
\overline C_N'=-c\operatorname{Re}\langle g,g_N\rangle+\mathcal J_N ,
\]
\[
\overline B_N'
=c\operatorname{Re}\langle g,g_N\rangle+D_N-\overline F_N
+\frac c\gamma\operatorname{Re}\langle z,N_N\rangle .
\]
Therefore, with \(A_N=\overline B_N+\overline C_N\),
\[
\boxed{\overline R_{\mathrm{NL},N}^{\mathrm{full}}
+D_N-\overline F_N=A_N'.}
\tag{JDE.1}
\]
This is exact finite-depth cancellation. The \(S_N\) contribution is paired with the same \(S_N\) from \(g_N'\); no first-parent-rate norm is used to delete it. PRM.32k's first-parent-rate antecedent concerns an isolated \(\overline F_N\) limit, not JDE.1.

Put \(F_0=c\operatorname{Re}\langle z,g\rangle\) and
\(F_f=c\operatorname{Re}\langle z,h\rangle\). The complete joined balance is
\[
\boxed{\widetilde K_N'
=\overline R_{\mathrm{NL},N}^{\mathrm{full}}+D_N
-NI+NF_0+NF_f-\overline F_N
=N(F_0+F_f-I)+A_N'.}
\tag{JDE.2}
\]
The unforced specialization sets \(h,D_N,F_f\) to zero and keeps both intrinsic insertions.

## What the whole-terminal convergence permits

The established kinetic payment gives
\[
\int_I C_\infty\le B_C:=\frac{K^4}{6\pi^2\nu^3},\quad
C_1:=\sup_N\int_I\overline C_N\le2B_C,\quad
\overline C_N\to C_\infty\text{ in }L^1(I).
\]
For the actual response,
\[
\sup_I\|w\|_2\le2K,\qquad
\int_I\|\nabla w\|_2^2\le2K^2/\nu .
\]
In addition to the previously established \(L^1\) stock, interpolation proves the useful stronger time norm
\[
E\le K\|\nabla w\|_2,\qquad
\boxed{\int_I E^2\le2K^4/\nu .}
\]
Let \(E_1=\int_I E\le\sqrt2K^2\sqrt{T/\nu}\). Then
\[
\left\|A_N/N\right\|_{L^1(I)}
\le\eta_N:=2\sqrt{E_1C_1}/\sqrt N+C_1/N\longrightarrow0,
\]
\[
\widetilde K_N/N\to E\text{ in }L^1(I).
\]
For every \(\phi\in C_c^\infty(I)\),
\[
\left|\left\langle A_N'/N,\phi\right\rangle\right|
=\left|\int_I(A_N/N)\phi'\right|
\le\eta_N\|\phi'\|_\infty\longrightarrow0 .
\tag{JDE.3}
\]
Thus JDE.2 passes to distributions and returns
\[
E'=F_0+F_f-I .
\]
On strict compact time sets, smoothness of the actual history also bounds each isolated current uniformly in \(N\), so its division by \(N\) tends to zero there. The datum-paid whole-terminal assertion is JDE.3 for the coupled aggregate. It is not a whole-terminal absolute bound for each current. Likewise \(\overline C_N'\to C_\infty'\) in distributions, with its full source-square and insertion terms joined.

The direct force cross is separately paid:
\[
\|D_N/N\|_{L^1(I)}
\le\sqrt{2C_1/N}\|\Lambda^{1/2}b\|_{L^2(I;L^2)}
\longrightarrow0 .
\]
No term proportional to \(N F_0\) or \(N I\) is discarded from JDE.2.

## Exact time weights and the upper face

For a strict \(S<T\) and \(\phi\in C^1([0,S])\), JDE.1 gives
\[
\int_0^S\phi\,\frac{\overline R_{\mathrm{NL},N}^{\mathrm{full}}
+D_N-\overline F_N}{N}
=\phi(S)\frac{A_N(S)}N-\phi(0)\frac{A_N(0)}N
-\int_0^S\phi'\frac{A_N}{N}.
\tag{JDE.4}
\]
Since \(w(0)=0\), \(A_N(0)=\overline C_N(u_0)\). If \(\phi(S)=0\), the right side is datum bounded and tends to zero uniformly over such fixed-derivative weights. For the exact terminal-linear weights \(\phi_S(t)=S-t\),
\[
\int_0^S(S-t)\frac{\overline R_{\mathrm{NL},N}^{\mathrm{full}}
+D_N-\overline F_N}{N}\,dt
=-S\frac{\overline C_N(u_0)}N+\int_0^S\frac{A_N}N\,dt ,
\]
\[
\boxed{\sup_{S<T}\left|\text{left side}\right|
\le2T C_\infty(u_0)/N+\eta_N\longrightarrow0 .}
\tag{JDE.5}
\]
This passage controls the full signed, time-weighted production, not merely a compactly supported test.

For the resummed storage put \(v_s=e^{-\nu s\Lambda^2}u\),
\(G_s=Q(v_s)\), \(H_s=e^{-\nu s\Lambda^2}(Q(u)+b)\), and
\(\mathfrak N_s=-\mathcal B(H_s,v_s)-\mathcal B(v_s,H_s)\).
The complete original law is
\[
C_\infty'=J-A,\quad
A=\nu^{-1}\|\Lambda^{-1/2}Q(u)\|_2^2,\quad
J=\frac2\nu\int_0^\infty
\operatorname{Re}\langle\Lambda^{-1}\mathfrak N_s,G_s\rangle\,ds .
\]
Consequently the exact moving material-time weights give
\[
\boxed{\int_0^S(S-t)(J-A)\,dt
=-S C_\infty(u_0)+\int_0^S C_\infty(t)\,dt .}
\tag{JDE.6}
\]
The right side has a finite limit as \(S\uparrow T\), bounded in absolute value by \(T C_\infty(u_0)+B_C\). The corresponding finite-depth production converges to this weighted aggregate uniformly in \(S\), with error at most
\(T|\overline C_N(u_0)-C_\infty(u_0)|+\|\overline C_N-C_\infty\|_1\).
Neither JDE.6 nor positivity separates a bound for \(A\) from its exact signed \(J\).

A fixed weight with nonzero upper-face value retains its trace term in JDE.4. Even a fixed weight vanishing at \(T\) must not silently replace \(\phi_S\) while dropping \(\phi(S)A_N(S)\). An actual common slice sequence, chosen using \(E+C_\infty\in L^1(I)\), makes
\((T-S_j)(E+C_\infty)(S_j)\to0\); it removes all terminal-linear boundary terms on that sequence simultaneously, uniformly in \(N\). This is a weighted boundary passage, not a full stock trace.

The stronger \(E\in L^2(I)\) result also admits response weights \((T-t)^\alpha\), \(\alpha>1/2\), in this signed passage: their derivative pairs with \(E\) by
\[
\int_I\alpha(T-t)^{\alpha-1}E(t)\,dt
\le\frac{\alpha T^{\alpha-1/2}}{\sqrt{2\alpha-1}}\|E\|_{L^2(I)}.
\]
The vanishing-boundary sequence supplies the corresponding finite signed weighted net-production limit. It does not separate the positive dissipation from its source work.

## Additional endpoint control at the actual cutoffs

The already verified original negative-order trace is \(u(t)\to u_*\) in \(H^{-1/4}\), with \(\|u_*\|_2\le K\). Heat smoothing gives \(S_su(t)\to S_su_*\) in every fixed \(H^m\) for each \(s>0\).

For every fixed \(\varepsilon>0\), define
\[
C_{\infty,\varepsilon}(t)
=\nu^{-1}\int_\varepsilon^\infty
\|\Lambda^{-1/2}Q(S_su(t))\|_2^2\,ds
=C_\infty(S_\varepsilon u(t)).
\]
The exact heat and Sobolev bounds give
\[
\boxed{C_{\infty,\varepsilon}(t)
\le\frac{K^4}{6e^2\pi^2\nu^3\varepsilon},\qquad
C_{\infty,\varepsilon}(t)\to C_{\infty,\varepsilon}(u_*) .}
\]
The same smoothed parent path is continuous in the heat Gram metric; its compactness and the original contraction imply
\(\overline C_{N,\varepsilon}\to C_{\infty,\varepsilon}\) uniformly on \([0,T]\). Thus the \(N\) and terminal limits commute for this cutoff.

There is also an actual endpoint result with no heat-age cutoff if the output cutoff is fixed. Incompressibility gives
\[
|\widehat{Q(S_su)}(k)|\le c_{\mathcal F}|k|K^2
\quad(s\ge0).
\]
For the complete ball projection \(P_{\le R}\), its near-zero-age mass is at most
\[
\nu^{-1}\int_0^\varepsilon
\|\Lambda^{-1/2}P_{\le R}Q(S_su)\|_2^2ds
\le\varepsilon\,\pi c_{\mathcal F}^2K^4R^4/\nu .
\]
Positive-age continuity followed by this uniform bound proves
\[
\boxed{C_\infty^{\le R}(t)\to C_\infty^{\le R}(u_*) .}
\]
The heat-metric parent path is continuous through \(T\) at fixed \(R\). Thus each \(\overline C_N^{\le R}\) has an actual terminal trace and its reciprocal-depth convergence is uniform on \([0,T]\); these limits also commute. All parent coordinates and pressure projections remain within this complete output projection.

The actual rates also give \(|\widehat{Q(S_su)}(k)|\le c_{\mathcal F}|k|e^{-\gamma s/2}K^2\). Hence the complete bounded-output stock has the explicit pointwise budget
\[
C_\infty^{\le R}(t)\le
\frac{2\pi c_{\mathcal F}^2K^4R^2}{\nu^2}.
\]
With the unitary three-dimensional convention this is \(K^4R^2/(4\pi^2\nu^2)\).

At the same fixed output cutoff the original response has an actual continuous endpoint:
\[
E^{\le R}\in C([0,T]),\quad
\sup E^{\le R}\le2RK^2,\quad
\int_I I^{\le R}\le2RK^2.
\]
The completed-square inequality then gives
\(\widetilde K_N^{\le R}/N\to E^{\le R}\) uniformly on \([0,T]\).
This projection acts on the output of the actual response and retains every original parent in its source; it does not solve a truncated fluid equation.

The cutoff dependence is material: the positive-age bound grows as \(\varepsilon^{-1}\), and the near-age estimate grows as \(R^4\). These results give actual auxiliary endpoint traces; they do not prove a trace of the full \(C_\infty\) or \(E\), or the square-time critical velocity row.

## Prescribed forcing and a further executed original operation

The two complete force-parent insertions in \(J\) have the independent whole-terminal payment
\[
\boxed{\|J_f\|_{L^1(I)}
\le\frac{2\sqrt2}{3\pi^2\nu^{5/2}}K^3
\|\nabla b\|_{L^2(I;L^2)} .}
\]
The original response work is \(F_f=\langle w,\Lambda b\rangle\), with
\(\|F_f\|_{L^1}\le(K+\|u_0\|_2)\|\Lambda b\|_{L^1(I;L^2)}\).
Hence arbitrary-amplitude forcing is paid separately without deleting either parent. The intrinsic nonlinear insertion remains the exact signed term.

There is a useful exact composition into weighted critical response dissipation. Write \(J=J_{\mathrm{NL}}+J_f\) with both ordered terms in each part. For every nonnegative nonincreasing \(C^1\) material-time weight \(\phi\) and every strict \(S<T\), the response estimate \(F_0\le(I+A)/2\) and the complete storage identity give
\[
\boxed{\int_0^S\phi I\le
\phi(0)C_\infty(u_0)+\int_0^S\phi J_{\mathrm{NL}}
+\|\phi\|_\infty\bigl(\|J_f\|_{L^1(I)}+2\|F_f\|_{L^1(I)}\bigr).}
\]
The terms dropped here are exactly the nonpositive upper-face stocks and the nonpositive \(\phi'\)-weighted stocks. This bounds the positive action only if its retained signed intrinsic insertion has an upper bound. It already gives a datum lower bound for that joined insertion; it does not reverse that inequality.

The next directly linked composition previously not displayed was FIH.28 integrated on FIH.15's moving heat-age triangle, with the full FIH.33 defect retained. It has now been executed. For the unforced history and \(W=\nu^{-1}\Lambda^{-1}\), define
\[
\mathscr J_v(\tau)=\iint_{\Delta_\tau}
[\operatorname{Re}(W\mathfrak N_s,v_s)
+\operatorname{Re}(WG_s,\mathfrak D_s)]\,ds\,dt ,
\quad \Delta_\tau=\{0<t<\tau,\ 0<s<\tau-t\}.
\]
With \(\mathscr T_W(v)=\operatorname{Re}(WQ(v),v)\), the complete characteristic-edge cancellation gives
\[
\mathscr J_v(\tau)
=\int_0^\tau\mathscr T_W(u(t))dt
-\int_0^\tau\mathscr T_W(S_su_0)ds
-\iint_{\Delta_\tau}\|W^{1/2}G_s\|^2dsdt .
\]
Both cubic edges have datum-paid \(L^1\) norms; the positive triangle mass is at most \(B_C\) and increases to a finite limit. Consequently this whole signed lower-receiver action has an actual finite triangular terminal limit. It does not transfer its receiver \(v_s\) to the critical source receiver \(G_s\).

The next unexecuted composition in this directly linked set is to insert the full signed FIH.39 split
\[
\mathfrak N_s=DQ(v_s)[G_s]+DQ(v_s)[\mathfrak D_s]
\]
into the critical transverse source-receiver triangle, retaining both terms, its nested pressure projectors and the FIH.33 defect. The scalar bound on \(\mathscr J_v\) supplies no identity exchanging those receivers. This identifies a concrete remaining composition, without asserting that an estimate for it exists.

## Supporting executions and preservation

Full supporting calculations are in [distributional passage](A0401-joined-distributional-passage-20261006.md), [terminal weights and cutoff endpoints](A0409-joined-terminal-weight-check-20261006.md), [force-parent payment](A0406-joined-prescribed-force-payment-20261006.md), and [the newly executed cubic/defect triangle](A0510-next-original-joined-operation-20261006.md).

PRM SHA256: 213ec6b89d107a46f7d2d5fc31ba188c45e056abfa8508136de080d7e2057065.
FIH SHA256: 9cd8d83b22f202272b7425e35fdd7ed127498d4cb58f9ffd7c9a70caf2bf179b.
Only new local mathematical analysis files were written.

The [continuation integrity record](../COVERAGE.md#A0399) checks the original hash baselines, preservation of earlier reports, and the links in these new mathematical executions.
