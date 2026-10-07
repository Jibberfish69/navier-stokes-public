# Intrinsic critical corner: kinetic stress, exact strain, and one-history bounds

**Reviewed scope and currentness.** The mathematical statements retain their recorded hypotheses and the reconciliations listed in the supersession register. If the actual-family calibration is included, isolate its varying-data quantifiers in a methodological appendix; omit non-NS source diagnostics. Original finite-rectangle membership, when supplied, implies downstream source and selected-current bounds. Optional sufficient criteria in this report are not added as upstream premises of the printed producer. The mathematical body retains its stated strict-time, terminal, pressure and force hypotheses. Publication adds no unconditional global theorem claim.


Read-only verification, 6 October 2026. This continues the actual FIH.39 split without substituting a prescribed velocity path or truncating its evolution. It distinguishes the fixed-history terminal question from an explicitly constructed family of genuine local Navier–Stokes histories used only to calibrate kinetic uniformity.

Governing sources are [FIH.2–12, 27–39](../SOURCES.md#S212), [PRM.35–46b](../SOURCES.md#S229), [the explicit Sobolev constants](../SOURCES.md#S136), [N89–N90](../SOURCES.md#S153), and [the actual local datum construction L1–L4](../SOURCES.md#S152). Previous reports, including critical-source-split-execution-20261006.md, were read as derivation maps; all conclusions below are derived on their actual objects.

## 1. Actual history and the two different corner questions

On the original \(I=(0,T)\), \(T<\infty\), retain
\[
 u_t+\nu\Lambda^2u=Q(u)+b,\quad
 Q(u)=-\mathbb P((u\cdot\nabla)u),\quad b=\mathbb Pf,\quad
 p=R_iR_j(u_i u_j)-(-\Delta)^{-1}\nabla\cdot f.
\]
The kinetic quantities are
\[
 \sup_I\|u\|_2\le K:=\|u_0\|_2+\|b\|_{L^1L^2},\quad
 Y(t)=\|\nabla u(t)\|_2^2,\quad
 \int_IY\le D_0:=K^2/(2\nu).
\]
As in FIH.4, put \(v_s=S_su\), \(G_s=Q(v_s)\), \(H_s=S_sQ(u)\), \(D_s=H_s-G_s\). The intrinsic complete insertion is
\[
 N_s^{\rm NL}=DQ(v_s)[H_s]
 =DQ(v_s)[G_s]+DQ(v_s)[D_s],\qquad
 DQ(v)[a]=-\mathcal B(a,v)-\mathcal B(v,a).
\]
The prescribed insertion is \(N_s^f=DQ(v_s)[S_sb]\), with both force-parent legs retained.

For the high-output projection \(P_{>R}\), define
\[
 j_{>R}^{\rm NL}(t,s)=\frac2\nu\operatorname{Re}
 \langle\Lambda^{-1}P_{>R}N_s^{\rm NL},P_{>R}G_s\rangle .
 \tag{CK.1}
\]
The signed corner is its integral on
\(\{t,s\ge0:t+s<\tau,\ s<\epsilon\}\), denoted \(J_{R,\epsilon}^{\rm NL}(\tau)\).
Absolute corner control means control of
\[
 \mathcal M(R,\epsilon)=
 \int_I\int_0^\epsilon |j_{>R}^{\rm NL}(t,s)|\,ds\,dt.
 \tag{CK.2}
\]
The signed upper primitive is sufficient for the source-action entry; absolute corner integrability is stronger at the level of the immediate estimate. They are not silently exchanged.

## 2. New joined stress operation: both legs have the same receiver

FIH.33, before projected divergence, is
\[
 \tau_s=S_s(u\otimes u)-v_s\otimes v_s
 =2\nu\int_0^s S_{s-r}
 \sum_\ell\partial_\ell v_r\otimes\partial_\ell v_r\,dr\succeq0,\quad
 D_s=-\mathbb P\operatorname{div}\tau_s .
 \tag{CK.3}
\]
Define the actual critical receiver and its strain
\[
 a_{s,R}=\Lambda^{-1}P_{>R}G_s,\quad
 h_{s,R}=v_s\cdot\nabla a_{s,R}-(\nabla v_s)^Ta_{s,R},
\]
\[
 E_{s,R}=\operatorname{Sym}\nabla\mathbb P h_{s,R}.
 \tag{CK.4}
\]
The outer projector on the insertion can move by self-adjointness onto the already solenoidal source receiver. Integrating both ordered transport legs then gives
\[
 \langle DQ(v_s)[Z_s],a_{s,R}\rangle
 =\langle Z_s,h_{s,R}\rangle
\]
for each actual solenoidal \(Z_s=G_s,D_s,H_s\). The inner projector in \(Z_s=-\mathbb P\operatorname{div}(\cdot)\) must then move onto \(h\), producing precisely CK.4. Thus
\[
 j_{>R}^{\rm self}=\frac2\nu\int(v_s\otimes v_s):E_{s,R},\qquad
 j_{>R}^{\rm defect}=\frac2\nu\int\tau_s:E_{s,R}.
\]
Before taking any absolute values they recombine to
\[
 \boxed{
 j_{>R}^{\rm NL}
 =\frac2\nu\int S_s(u\otimes u):E_{s,R}
 =\frac2\nu\int u^T(S_sE_{s,R})u.}
 \tag{CK.5}
\]
This uses the full original parents, not a high-output velocity surrogate. In particular the self and defect stresses both act on the same receiver; their positive tensors are not automatically opposing terms.

There is an exact source-derived cancellation. Since
\[
 h=2(\operatorname{Sym}\nabla a)v-\nabla(a\cdot v),\quad
 \mathbb Ph=2\mathbb P[(\operatorname{Sym}\nabla a)v],
\]
\[
 \operatorname{tr}E=\operatorname{div}\mathbb Ph=0 .
\]
Consequently the entire isotropic heated kinetic stress drops out:
\[
 j_{>R}^{\rm NL}
 =\frac2\nu\int
 \left[S_s(u\otimes u)-\tfrac13 S_s(|u|^2)I\right]:E_{s,R}.
 \tag{CK.6}
\]
All pressure operators remain in \(a\) and \(\mathbb Ph\). This is a deviatoric stress/trace-free strain pairing, rather than a kinetic energy square. An isotropic stress \(\rho I\) can still contribute \(-\rho\) to the normalized pressure through \(\sum_iR_i^2\rho\); its cancellation in the projected velocity source is the simultaneous pressure balance, not a canonical terminal pressure trace.

## 3. Best trace-only signed upper and lower inequalities

For the actual symmetric strain, positivity gives the pointwise operator bounds
\[
 \lambda_{\min}(E)\operatorname{tr}T
 \le T:E\le
 \lambda_{\max}(E)\operatorname{tr}T\qquad(T\succeq0).
\]
Applied to the full heated stress, this yields
\[
 \boxed{
 \frac2\nu\int\lambda_{\min}(E_{s,R})S_s|u|^2
 \le j_{>R}^{\rm NL}
 \le\frac2\nu\int\lambda_{\max}(E_{s,R})S_s|u|^2.}
 \tag{CK.7}
\]
Equivalently, one can use the eigenvalues of \(S_sE\) against \(|u|^2\) in CK.5. These are optimal operator inequalities given just a PSD trace, without claiming that the actual NS stress achieves an extreme alignment. The trace-free receiver has both nonpositive and nonnegative eigenvalues whenever it is nonzero. The kinetic budget controls the measure in CK.7; it does not assign the strain orientation.

For the defect alone the exact same receiver gives
\[
 \frac2\nu\int\lambda_{\min}(E)\operatorname{tr}\tau_s
 \le j^{\rm defect}_{>R}
 \le\frac2\nu\int\lambda_{\max}(E)\operatorname{tr}\tau_s.
 \tag{CK.8}
\]
Keeping the full heat Duhamel expression instead gives
\[
 j^{\rm defect}_{>R}
 =4\int_0^s\int
 \sum_\ell\partial_\ell v_r\otimes\partial_\ell v_r:
 S_{s-r}E_{s,R}\,dx\,dr .
 \tag{CK.9}
\]
The heat kernel preserves the tensor positivity but not a positive sign for the trace-free receiver. CK.9 retains the actual derivative fields and both pressure-complete insertion legs.

## 4. Quantify the receiver at the simultaneous cutoff

Write \(c_{\mathcal F}=(2\pi)^{-3/2}\), \(a=\nu s\), \(z=R\sqrt a\), and
\[
 V_m=\int|\xi|^m|\widehat v_s(\xi)|\,d\xi,\qquad
 A_\ell=\int|\xi|^\ell|\widehat a_{s,R}(\xi)|\,d\xi .
\]
The exact Fourier heat bounds are
\[
 V_m\le v_mK a^{-(m/2+3/4)},\quad
 v_m=[2\pi\Gamma(m+3/2)]^{1/2}2^{-(m/2+3/4)},
\]
\[
 A_\ell\le c_{\mathcal F}K^2 a^{-(\ell+3)/2}D_\ell(z),\quad
 D_\ell(z)=2\pi\,2^{(\ell+3)/2}
 \Gamma((\ell+3)/2,z^2/2).
 \tag{CK.10}
\]
For the second estimate retain FIH.3–5, incompressibility, and
\(|\widehat G_s(k)|\le c_{\mathcal F}|k|K^2e^{-a|k|^2/2}\).
The incomplete gamma function here is the explicit integral over the actual high-output receiver. No parent frequency has been discarded.

The two derivatives in \(E\) and the two ordered terms in \(h\) satisfy
\[
 \int |k||\widehat h(k)|\,dk
 \le c_{\mathcal F}(V_0A_2+2V_1A_1+V_2A_0).
\]
The projection has Fourier norm at most one. Therefore
\[
 \boxed{
 \|E_{s,R}\|_\infty
 \le c_{\mathcal F}^3K^3 a^{-13/4}\mathcal E(z),\quad
 \mathcal E(z)=v_0D_2(z)+2v_1D_1(z)+v_2D_0(z).}
 \tag{CK.11}
\]
This bound also applies to \(S_sE\). In particular CK.5 implies
\[
 |j_{>R}^{\rm NL}(t,s)|
 \le\frac{2c_{\mathcal F}^3K^5}{\nu}
 (\nu s)^{-13/4}\mathcal E(R\sqrt{\nu s}).
 \tag{CK.12}
\]
The Gaussian factor pays large output at every fixed positive age. At the intrinsic corner \(R\sqrt{\nu s}\lesssim1\), \(\mathcal E\) remains finite and positive at zero and the small-age majorant is not integrable.

There is a better complete-history allocation than bounding the two FIH.39 legs separately. Let \(C_b=2/(3\pi^2)\) and
\(C_G=c_{\mathcal F}\sqrt{15\pi^{3/2}/4}\).
Use \(H_s=S_sQ(u)\) directly:
\[
 \|\nabla H_s\|_2\le C_GK^2(2\nu s)^{-7/4},\quad
 \|\nabla v_s\|_2^3\le K(2e\nu s)^{-1/2}Y(t).
\]
The full source receiver and both ordered legs give
\[
 \boxed{
 |j^{\rm NL}(t,s)|
 \le C_j\frac{K^3}{\nu}(\nu s)^{-9/4}Y(t),\quad
 C_j=\frac{4C_bC_G\,2^{-7/4}}{\sqrt{2e}}.}
 \tag{CK.13}
\]
Thus every positive-age region is absolutely paid with explicit loss:
\[
 \int_I\int_\epsilon^\infty|j^{\rm NL}|
 \le \frac{4C_jK^3D_0}{5\nu^2}(\nu\epsilon)^{-5/4}.
 \tag{CK.14}
\]
The same CK.13–14 bound holds after any output projection, since the derivation bounds the norms of both projected factors rather than the size of their unprojected signed pairing. The combined-before-estimation operation improves the constant, but it does not turn this paid \(Y\) allocation into an integrable zero-age majorant.

## 5. What the PSD commutator and negative endpoint actually add

The exact heat trace is
\[
 L_s(t):=\int\operatorname{tr}\tau_s
 =\|u(t)\|_2^2-\|S_su(t)\|_2^2
 \le\min\{K^2,2\nu sY(t)\},\qquad
 \int_I L_s\le2\nu sD_0.
\]
Putting this full trace into CK.8 and CK.11 yields
\[
 \boxed{
 \int_I|j_{>R}^{\rm defect}(t,s)|\,dt
 \le\frac{4c_{\mathcal F}^3K^3D_0}{\nu}
 (\nu s)^{-9/4}\mathcal E(R\sqrt{\nu s}).}
 \tag{CK.15}
\]
The exact \(O(s)\) time payment of the PSD stress is used here; its derivative receiver still leaves a nonintegrable small-age power.

For the actual negative endpoint \(u_*\) and norm limit \(\ell\),
\[
 \lim_{s\downarrow0}\sup_{t<T}L_s(t)
 =d:=\ell-\|u_*\|_2^2\ge0.
\]
For completeness, every fixed bounded output converges strongly at \(T\). Its complementary kinetic norm therefore tends to \(\ell-\|P_{\le R}u_*\|_2^2\), which tends to \(d\) as \(R\uparrow\infty\). On each remaining strict compact interval the \(L^2\) velocity path is compact, so the high-output kinetic tails vanish uniformly there. This proves \(\lim_R\sup_t\|P_{>R}u(t)\|_2^2=d\). The bound \(L_s\le2\nu sR^2K^2+\|P_{>R}u\|_2^2\) and its fixed-age terminal limit \(\ell-\|S_su_*\|_2^2\) then prove the displayed equality.

If \(d=0\), this gives an actual uniform trace modulus \(\omega(s)=\sup_tL_s(t)\to0\). Substituting that modulus directly retains the full estimate
\[
 |j_{>R}^{\rm defect}(t,s)|
 \le\frac{2c_{\mathcal F}^3K^3}{\nu}
 \omega(s)(\nu s)^{-13/4}\mathcal E(R\sqrt{\nu s}).
 \tag{CK.16}
\]
The endpoint convergence supplies no power or integral of \(\omega(s)s^{-13/4}\). No such rate is presumed. The same matrix endpoint clusters retain
\(\tau_s(u_*)+S_s\mathcal R\); the trace residue and the signed strain orientation are different pieces of information.

There is a genuine positive-age current conclusion as well. At each fixed \(s>0\) and finite \(R\), the negative velocity endpoint gives canonical strong convergence of \(v_s,G_s,a_{s,R},E_{s,R}\) in every required finite smooth norm. On an actual tensor subsequence
\(u(t)\otimes u(t)\,dx\rightharpoonup u_*\otimes u_*\,dx+\mathcal R\), with finite PSD \(\mathcal R\) and total trace \(d\), CK.5 gives
\[
 j_{>R}^{\rm NL}(t,s)\longrightarrow
 j_{>R}^{\rm NL}[u_*](s)
 +\frac2\nu\int\mathcal R:S_sE_{s,R}(u_*),\qquad
 \left|\frac2\nu\int\mathcal R:S_sE_{s,R}(u_*)\right|
 \le\frac{2d}{\nu}\|S_sE_{s,R}(u_*)\|_\infty .
\]
The strain is trace-free, so only the deviatoric matrix defect acts. If \(d=0\), all these corrections vanish and the intrinsic current has its actual canonical positive-age endpoint. For \(d>0\), the displayed cluster correction is retained rather than assumed zero. This uses the actual finite stress clusters and physical tightness verified in the endpoint construction; it asserts no zero-age current trace.

On every compact strict-time interval, actual smoothness makes all these age-zero limits and high-output tails legitimate. The unresolved uniformity is over the entire \(I=(0,T)\), rather than a failure of a finite or strict-prefix calculation.

## 6. Best direct kinetic action bounds on one actual history

Let
\[
 A(t)=\nu^{-1}\|\Lambda^{-1/2}Q(u(t))\|_2^2,\quad
 A_{>R}(t)=\nu^{-1}\|\Lambda^{-1/2}P_{>R}Q(u(t))\|_2^2 .
\]
The original tensor/velocity Sobolev product gives
\[
 \boxed{0\le A(t)\le(C_b/\nu)Y(t)^2.}
 \tag{CK.17}
\]
For an actual high-parent refinement put \(u_L=P_{\le R/2}u\), \(u_H=u-u_L\).
Since \(Q(u_L)\) has no output above \(R\), keep both ordered terms
\[
 P_{>R}Q(u)=-P_{>R}\{\mathcal B(u_H,u)+\mathcal B(u_L,u_H)\}.
\]
It follows that
\[
 \boxed{
 0\le A_{>R}(t)\le
 (4C_b/\nu)Y(t)\|\nabla P_{>R/2}u(t)\|_2^2 .}
 \tag{CK.18}
\]
Both factors on the right are finite at each strict time. The high-gradient factor is at most \(Y(t)\) and tends to zero at each such time, but only \(Y\), rather than \(Y^2\), has been paid on the whole interval. CK.18 gives genuine compact-prefix tail convergence. Assuming \(Y^2\in L^1(I)\) would also give the whole tail; this is a sufficient stronger input, not a necessary replacement for the actual signed corner.

There is an exact lower/coercive relation as well. Set
\[
 H_c=\tfrac12\|\Lambda^{1/2}u\|_2^2,\quad
 D_c=\|\Lambda^{3/2}u\|_2^2,\quad
 Z=\|\Lambda^{-1/2}(u_t-b)\|_2,\quad
 F_u=\operatorname{Re}\langle b,\Lambda u\rangle .
\]
The complete square in N89 and the actual critical kinetic pairing yield, without omitting forcing,
\[
 \boxed{A=\nu D_c+\nu^{-1}Z^2+2H_c'-2F_u.}
 \tag{CK.19}
\]
At every strict \(S<T\),
\[
 2H_c(S)+\nu\int_0^SD_c+\nu^{-1}\int_0^SZ^2
 =2H_c(0)+\int_0^SA+2\int_0^SF_u,\quad
 \|F_u\|_{L^1(I)}\le K\|\Lambda b\|_{L^1L^2}.
 \tag{CK.20}
\]
Thus \(\int_0^SA\ge\nu\int_0^SD_c-2H_c(0)-2\|F_u\|_1\). This is a real one-history lower bound connecting the source boundary to the sufficient critical row; it does not turn the kinetic upper bound CK.17 into a whole-terminal payment.

## 7. Exact upper and lower inequalities for the signed corner

Retain the complete triangle \(t+s<\tau\). Its bottom and age faces give
\[
 \boxed{
 J_{R,\epsilon}^{\rm NL}(\tau)=
 \int_0^\tau A_{>R}
 -B_{\rm old}(R,\epsilon,\tau)
 -B_{\rm age}(R,\epsilon,\tau)
 -J_{R,\epsilon}^f(\tau),}
 \tag{CK.21}
\]
\[
 B_{\rm old}=\int_0^{\min(\epsilon,\tau)}q_{>R}(0,s)\,ds,\quad
 B_{\rm age}=\int_0^{(\tau-\epsilon)_+}q_{>R}(t,\epsilon)\,dt .
\]
Both displayed faces are nonnegative. Their explicit upper bounds are
\[
 B_{\rm old}\le C_\infty^{>R}(u_0),\quad
 B_{\rm age}\le TM_{\epsilon,R},\quad
 M_{\epsilon,R}=
 \frac{2\pi c_{\mathcal F}^2K^4}{\nu(\nu\epsilon)^2}
 (1+\nu\epsilon R^2)e^{-\nu\epsilon R^2}.
\]
The arbitrary-amplitude force is paid before age integration:
\[
 |J_{R,\epsilon}^f|\le B_f,\quad
 B_f=\frac{2C_bK^2}{\nu^2}
 \|\nabla b\|_{L^2L^2}\sqrt{D_0}.
\]
There is the sharper actual tail budget
\[
 B_f(R,\epsilon)=\frac2\nu\int_I\int_0^\epsilon
 \|\Lambda^{-1/2}P_{>R}N_s^f\|_2
 \|\Lambda^{-1/2}P_{>R}G_s\|_2\,ds\,dt\le B_f .
\]
It tends to zero as either \(R\uparrow\infty\) or \(\epsilon\downarrow0\), by the integrable full Cauchy majorant, and bounds the actual corner force absolutely.
Therefore the actual signed inequalities are
\[
 \boxed{
 \int_0^\tau A_{>R}-C_\infty^{>R}(u_0)-TM_{\epsilon,R}-B_f(R,\epsilon)
 \le J_{R,\epsilon}^{\rm NL}(\tau)
 \le\int_0^\tau A_{>R}+B_f(R,\epsilon).}
 \tag{CK.22}
\]
CK.18 supplies the more explicit upper
\[
 J_{R,\epsilon}^{\rm NL}(\tau)
 \le(4C_b/\nu)\int_0^\tau
 Y(t)\|\nabla P_{>R/2}u(t)\|_2^2\,dt+B_f(R,\epsilon).
 \tag{CK.23}
\]
On every strict prefix this is an actual finite bound. It preserves the complete nonlinear source rather than replacing it by an independently chosen strain.

At fixed \(\epsilon>0\), the old, age and projected force tails vanish as \(R\uparrow\infty\). Hence the uniform signed corner tail is equivalent to the actual source-square action tail. A finite upper primitive for one fixed \((R,\epsilon)\) pays \(\int_I A\), because the complementary low-output action is bounded by \(T\pi c_{\mathcal F}^2K^4R^4/\nu\). CK.20 then gives the critical row on the same force and terminal domain. This is the previously derived single-corner entry, now accompanied by the exact best kinetic/stress inequalities CK.5–23; it is not proved by bulk heat-age norms.

The full Gram \((G,H,D)\) and PSD trace do have vanishing volume tails. Their age-zero-vanishing transport weights also have controlled terminal limits. The unweighted derivative has the positive bottom face CK.21, so those volume statements cannot be used by dropping it.

## 8. Genuine local-NS family calibration, not a fixed-history counterexample

Only actual NS solutions are used in this calibration. A nonzero-source Schwartz datum can be constructed explicitly. Let \(p_0=(1,0,0)\), \(q_0=(0,1,0)\), \(a=(0,1,1)\), \(c=(1,0,1)\), and let \(\eta\) be a real, even, nonnegative smooth Fourier bump in a sufficiently small ball. Set
\[
 \widehat U_0(\xi)=
 [\eta(\xi-p_0)+\eta(\xi+p_0)]\mathbb P_\xi a
 +[\eta(\xi-q_0)+\eta(\xi+q_0)]\mathbb P_\xi c .
\]
This is real-even in Fourier space, supported away from zero, and exactly divergence-free. It gives a real Schwartz field on \(\mathbb R^3\). At \(k_0=p_0+q_0\), the two contributing ordered parent packets have central projected coefficient
\[
 \mathbb P_{k_0}[(a\cdot q_0)c+(c\cdot p_0)a]=(0,0,2)\ne0 .
\]
For a sufficiently small support ball its third component stays positive throughout the contributing overlap. The complete Fourier integral therefore gives \(Q(U_0)\ne0\), with no truncated evolution assumed.

L1–L4 construct the full unforced local solution \(U\) from this datum. Choose a regular strict lifetime \(0<L<h\). By source continuity, for some finite \(r_0>0\),
\[
 c_*:=\int_0^L\nu^{-1}
 \|\Lambda^{-1/2}P_{>r_0}Q(U(t))\|_2^2\,dt>0 .
\]
Now use the exact fixed-viscosity NS dilation, including its normalized pressure:
\[
 u_\lambda(t,x)=\lambda U(\lambda^2t,\lambda x),\quad
 p_\lambda(t,x)=\lambda^2p_U(\lambda^2t,\lambda x),\quad
 T_\lambda=L/\lambda^2 .
\]
Every member is an actual full nonlinear NS history on its regular interval, not a surrogate path. Its precise budgets are
\[
 K_\lambda=\lambda^{-1/2}K_U,\quad
 \int_0^{T_\lambda}\|\nabla u_\lambda\|_2^2
 =\lambda^{-1}\int_0^L\|\nabla U\|_2^2,
\]
\[
 \int_0^{T_\lambda}C_\infty(u_\lambda)\,dt
 =\lambda^{-2}\int_0^LC_\infty(U)\,dt,\quad
 \int_0^{T_\lambda} A_{>\lambda r_0}(u_\lambda)\,dt=c_* .
 \tag{CK.24}
\]
The full heat-age Gram scales in the same bulk manner. Every chosen endpoint is regular and has \(d_\lambda=0\). Nevertheless the positive source boundary has nonvanishing high-output mass along \(\lambda r_0\uparrow\infty\), while the displayed upper kinetic and bulk budgets shrink.

This demonstrates lack of a family-uniform source-output modulus based only on bounded upper kinetic/Gram budgets over these varying data and varying lifetimes. It does not disprove source integrability, corner convergence, or regularity for any one fixed history: every member here is regular. It also does not show that the signed corner fails uniformly across the family; its old datum face has critical scaling as well and can cancel part of the action. No claim is made about a modulus that uses the complete fixed datum, its higher norms, or a fixed positive lower lifetime. This calibration is separate from the fixed-history test CK.5–23.

## 9. Exact verification coverage

The additional source operation obtained an exact cancellation of isotropic stress and an exact common receiver for the self and defect terms. It did not produce an orientation inequality for the remaining trace-free strain. The strongest displayed kinetic allocations preserve either the small-age loss in CK.13/15 or the one-history source product in CK.17/18. The actual negative endpoint quantifies the PSD trace residue and, when zero, its unweighted trace modulus; it does not provide the derivative-weighted integral in CK.16.

These executed operations therefore have not established simultaneous unweighted high-output/small-age uniform integrability on a potentially maximal whole \(I=(0,T)\). They also do not prove that such integrability fails on the actual history. The exact remaining quantity is the complete signed stress/strain corner CK.5/21, or equivalently its positive source-square bottom action modulo the paid faces. All force, pressure, nonlinear parent and terminal-time quantifiers remain displayed.

The original sources and all earlier reports remain read-only. No UI, server, build, publication, repository mutation, or non-NS source was used.

## 10. Source integrity

All five SHA-256 values match their existing source baselines:

| Original | SHA-256 |
|---|---|
| FIH | 9cd8d83b22f202272b7425e35fdd7ed127498d4cb58f9ffd7c9a70caf2bf179b |
| PRM | 213ec6b89d107a46f7d2d5fc31ba188c45e056abfa8508136de080d7e2057065 |
| Forced native proof custody | be26593f79929a37c9d88ce48ea00a0c5b2f9af919717f2bf9c7d5777d5cc311 |
| Forced native assembly | 15d1102d14887595cc3be128a7045f08eb977dae9399be40fa52317a6f5817b5 |
| Unforced analytic framework | fe61c1940e5124a63eb953ea71538359675a05d0c40987b468481835c66738e1 |

The earlier critical-split-terminal-tail audit retains SHA-256
\(e425d9ca1a4122aa6395378833a0cff4020fecf9740bf10c22105ae575aa3111\);
the earlier joined-terminal-weight audit retains
\(546a4e10ce480759eca8d2a9e87184bb797698ef187affd44e93b764aa8c5a3b\).
