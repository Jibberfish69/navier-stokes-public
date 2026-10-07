# Prescribed forcing in the complete joined heat-age storage

**Reviewed scope and currentness.** Current independent force-payment result; compatible with later joined terminal and distributional reports. Original finite-rectangle membership, when supplied, implies downstream source and selected-current bounds. Optional sufficient criteria in this report are not added as upstream premises of the printed producer. The mathematical body retains its stated strict-time, terminal, pressure and force hypotheses. Publication adds no unconditional global theorem claim.


6 October 2026. This calculation pays both ordered prescribed-force parent insertions in the original joined storage, together with the direct prescribed response work. It uses one actual forced velocity on its original time interval. Original sources and existing analysis reports are unchanged.

## 1. Original definitions, pressure completion and finite horizon

Fix ν>0, u₀∈H∞σ(R³), f∈C∞([0,∞);S(R³;R³)), and a finite horizon T≤T*. All differential identities initially hold on strict [0,S], S<T. Put g=Pf and

\[
 S_s=e^{-\nu s\Lambda^2},\quad
 v_s=S_su(t),\quad G_s=Q(v_s),\quad
 Q(v)=-P((v\cdot\nabla)v),\quad
 \mathcal B(a,b)=P((a\cdot\nabla)b).
\]

The variable s≥0 is heat age applied to the current u(t), not another fluid or an independent time trajectory. The complete actual tangent satisfies

\[
 (\partial_t-\partial_s)v_s=S_s(Q(u)+g).
\]

Its two force-parent insertions are therefore

\[
 H_s^f=S_sg,\qquad
 \mathfrak N_s^f=DQ(v_s)[H_s^f]
 =-\mathcal B(H_s^f,v_s)-\mathcal B(v_s,H_s^f). \tag{1}
\]

Both are retained. With unitary Fourier constant c_F=(2π)⁻³ᐟ² and p+q=k,

\[
 \widehat{\mathfrak N_s^f}(k)
 =-ic_F P_k\int_{p+q=k}e^{-\nu s(|p|^2+|q|^2)}
 \big[(P_p\widehat f(p)\cdot q)\widehat u(q)
       +(\widehat u(p)\cdot q)P_q\widehat f(q)\big]dp. \tag{2}
\]

Thus the outer P_k and the distinct force-parent P_p,P_q occur explicitly. The original pressure remains

\[
 p=R_iR_j(u_iu_j)-(-\Delta)^{-1}\operatorname{div}f.
\]

Projection retains the simultaneous pressure allocation. No Lᵖ contractivity of P is assumed below; only its multiplier contraction in homogeneous L² Sobolev norms is used.

The original critical joined storage is

\[
 C_\infty(u(t))=\nu^{-1}\int_0^\infty
                \|\Lambda^{-1/2}G_s\|_2^2ds.
\]

Writing N_s^{int}=DQ(v_s)[S_sQ(u)], its complete forced derivative is

\[
 C_\infty'
 =-\nu^{-1}\|\Lambda^{-1/2}Q(u)\|_2^2
   +J_{int}^{age}+J_f^{age}, \tag{3}
\]

\[
 J_{int}^{age}=\frac2\nu\int_0^\infty
    \operatorname{Re}\langle\Lambda^{-1}\mathfrak N_s^{int},G_s\rangle ds,
 \qquad
 J_f^{age}=\frac2\nu\int_0^\infty
    \operatorname{Re}\langle\Lambda^{-1}\mathfrak N_s^f,G_s\rangle ds. \tag{4}
\]

This is the original PRM.35–37/FIH.4–7 joined law with the actual forced tangent. The intrinsic insertion is kept complete and signed throughout.

Source definitions: [FIH.2–7, LF43–120](../SOURCES.md#S212); [critical weight FIH.18–19, LF255–269](../SOURCES.md#S212); [joined storage and derivative PRM.35–37, LF613–646](../SOURCES.md#S229).

## 2. Check the source's exact constants for both ordered terms

The source's vector-valued constants are

\[
 \mathsf S_3=2^{-1/6}\pi^{-1/3},\qquad
 \mathsf S_6=\frac{2^{2/3}}{\sqrt3\pi^{2/3}},\qquad
 a:=\mathsf S_3\mathsf S_6=\frac1\pi\sqrt{\frac23}. \tag{5}
\]

The scalar Sobolev inequality extends to vector/tensor arrays with the same constant by Minkowski in L^{p/2}. Duality consequently gives

\[
 \|\Lambda^{-1/2}h\|_2\le\mathsf S_3\|h\|_{3/2}.
\]

For each ordered advective term, Hölder and the L⁶ Sobolev inequality give

\[
 \|\Lambda^{-1/2}\mathcal B(a_1,b_1)\|_2
 \le\mathsf S_3\|a_1\|_6\|\nabla b_1\|_2
 \le a\|\nabla a_1\|_2\|\nabla b_1\|_2. \tag{6}
\]

Apply (6) separately to both terms of (1), and once to G_s=−B(v_s,v_s):

\[
 \boxed{\|\Lambda^{-1/2}\mathfrak N_s^f\|_2
 \le2a\|\nabla S_sg\|_2\|\nabla v_s\|_2,\qquad
 \|\Lambda^{-1/2}G_s\|_2\le a\|\nabla v_s\|_2^2.} \tag{7}
\]

The factor 2 is the sum of the two original ordered force parents. There is no removal of an insertion by symmetry or pressure pairing.

Source: [explicit homogeneous Sobolev lemma and vector proof, LF102–164](../SOURCES.md#S136). Evaluation of its gamma formula at s=½ and s=1 confirms (5).

## 3. Execute the heat-age integral exactly

At each fixed actual time, let

\[
 F(s)=\|\nabla S_su(t)\|_2^2.
\]

Heat contraction gives F(s)≤F(0) and ||∇S_sg||₂≤||∇g||₂. Fourier Tonelli yields the exact identity

\[
 \int_0^\infty F(s)ds
 =\int_{\mathbb R^3}|\widehat u(\xi)|^2
    \int_0^\infty|\xi|^2e^{-2\nu s|\xi|^2}ds\,d\xi
 =\frac{\|u(t)\|_2^2}{2\nu}. \tag{8}
\]

The ξ=0 set has zero Lebesgue measure for the actual L² velocity. No homogeneous low-frequency inverse of the force enters (8).

The pairing in (4) is precisely

\[
 \langle\Lambda^{-1}\mathfrak N_s^f,G_s\rangle
 =\langle\Lambda^{-1/2}\mathfrak N_s^f,
                     \Lambda^{-1/2}G_s\rangle.
\]

Using (7)–(8), only after retaining the complete signed force insertion,

\[
 \begin{aligned}
 |J_f^{age}(t)|
 &\le\frac{4a^2}{\nu}\|\nabla g(t)\|_2
                   \int_0^\infty F(s)^{3/2}ds\\
 &\le\frac{4a^2}{\nu}\|\nabla g(t)\|_2
                 \sqrt{F(0)}\int_0^\infty F(s)ds\\
 &=\boxed{\frac{2a^2}{\nu^2}\|\nabla g(t)\|_2
                  \|u(t)\|_2^2\|\nabla u(t)\|_2.}
 \end{aligned} \tag{9}
\]

This verifies the candidate coefficient exactly. In particular the heat-age force integral is absolutely convergent at every strict classical time.

## 4. Finite whole-terminal time payment, arbitrary amplitude

Define the prescribed finite-horizon kinetic budget

\[
 K_T=\|u_0\|_2+\int_0^T\|g(t)\|_2dt.
\]

The complete forced kinetic identity gives

\[
 \sup_{t<T}\|u(t)\|_2\le K_T,\qquad
 \int_0^T\|\nabla u(t)\|_2^2dt\le\frac{K_T^2}{2\nu}.
\]

Cauchy–Schwarz in actual time in (9) now gives

\[
 \boxed{\int_0^T|J_f^{age}(t)|dt
 \le\mathcal B_C^f(T):=
 \frac{\sqrt2a^2}{\nu^{5/2}}K_T^3
                      \|\nabla g\|_{L^2(0,T;L^2)}
 =\frac{2\sqrt2}{3\pi^2\nu^{5/2}}K_T^3
                      \|\nabla g\|_{L^2(0,T;L^2)}.} \tag{10}
\]

All quantities on the right are datum/force seminorms. In particular ||∇g||L²L²≤||∇f||L²L². They are finite for every admitted smooth Schwartz force on every finite T, with no amplitude restriction. The proof holds uniformly over S<T; monotone convergence proves (10) on T=T* when the proposed terminal time is finite. This is finite-horizon finiteness, not a claim of one uniform bound on [0,∞).

If K_T=0 the history and these terms vanish, so the same formula covers that branch without division by K_T. The pure-gradient force branch g=0 also gives zero force-parent insertion while retaining its normalized pressure potential.

## 5. Direct prescribed response work

Keep the original total response

\[
 w(t)=u(t)-S_tu_0,\qquad
 w_t+\nu\Lambda^2w=Q(u)+g,\qquad w(0)=0.
\]

The source's joined response stock and dissipation are

\[
 E=\tfrac12\|\Lambda^{1/2}w\|_2^2,
 \qquad I=\nu\|\Lambda^{3/2}w\|_2^2.
\]

The exact prescribed-force output is

\[
 F_f=\operatorname{Re}\langle\Lambda^{1/2}w,\Lambda^{1/2}g\rangle
     =\operatorname{Re}\langle w,\Lambda g\rangle. \tag{11}
\]

The transfer of Λ to the prescribed force is valid on strict prefixes; its right side supplies the whole-interval representative. Heat contraction implies ||w||₂≤K_T+||u₀||₂. Hence

\[
 \boxed{\int_0^T|F_f(t)|dt
 \le\mathcal B_E^f(T):=
       (K_T+\|u_0\|_2)\|\Lambda g\|_{L^1(0,T;L^2)}<\infty.} \tag{12}
\]

The complete response law is

\[
 E'+I=\operatorname{Re}\langle w,\Lambda Q(u)\rangle+F_f. \tag{13}
\]

The response includes the actual forced u and all source work; it is not a comparison unforced response.

## 6. Positive bounded primitive corrections preserve both joined laws

The paid force terms can be removed from these exact laws without changing the intrinsic fields. Define

\[
 C_{paid}(t)=C_\infty(t)-\int_0^tJ_f^{age}(q)dq+\mathcal B_C^f(T),
\]

\[
 E_{paid}(t)=E(t)-\int_0^tF_f(q)dq+\mathcal B_E^f(T).
\]

Equations (10),(12) show

\[
 C_\infty\le C_{paid}\le C_\infty+2\mathcal B_C^f(T),
 \qquad E\le E_{paid}\le E+2\mathcal B_E^f(T).
\]

Consequently both corrected storages are positive and obey, exactly on strict prefixes and locally in distributions,

\[
 \boxed{C_{paid}'
 +\nu^{-1}\|\Lambda^{-1/2}Q(u)\|_2^2
 =J_{int}^{age},\qquad
 E_{paid}'+\nu\|\Lambda^{3/2}w\|_2^2
 =\operatorname{Re}\langle w,\Lambda Q(u)\rangle.} \tag{14}
\]

The constants and primitives are paid from the prescribed data. The intrinsic nonlinear insertion in (14) remains the complete original insertion on the forced history. This calculation does not assign it an unforced value, a sign, or an upper primitive bound.

For completeness, the original heat-age storage has the independently datum-paid whole-terminal mass

\[
 \int_0^TC_\infty dt\le\frac{K_T^4}{6\pi^2\nu^3}.
\]

Indeed (7) gives C∞≤a²ν⁻¹∫F²≤a²||u||₂²||∇u||₂²/(2ν²), then kinetic dissipation supplies the displayed constant. Thus

\[
 \int_0^TC_{paid}dt
 \le\frac{K_T^4}{6\pi^2\nu^3}+2T\mathcal B_C^f(T).
\]

Likewise Fourier interpolation and the kinetic/heat budgets give

\[
 \int_0^TEdt\le\frac{K_T+\|u_0\|_2}{2}
  \sqrt{\frac{T(K_T^2+\|u_0\|_2^2)}{\nu}},
\]

so the mass of E_paid is bounded by this quantity plus 2T B_E^f. These are actual positive joined-storage payments. They do not claim a terminal trace or an unweighted critical action from storage mass alone.

## Verification coverage

The source constants, both ordered force parents, pressure projections, all heat-age factors, finite-horizon quantifiers and coefficients in (9)–(12) have been checked. The original complete joined law is preserved in (3),(14). This narrow result pays the prescribed forcing separately and leaves the full intrinsic nonlinear insertion in its original role.
