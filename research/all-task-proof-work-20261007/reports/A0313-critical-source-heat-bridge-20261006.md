# Critical sourceheat bridge and its full N90 coupling

**Reviewed scope and currentness.** The mathematical statements retain their recorded hypotheses and the reconciliations listed in the supersession register. Original finite-rectangle membership, when supplied, implies downstream source and selected-current bounds. Optional sufficient criteria in this report are not added as upstream premises of the printed producer. The mathematical body retains its stated strict-time, terminal, pressure and force hypotheses. Publication adds no unconditional global theorem claim.


The proposed unforced bridge is correct, including every factor of viscosity, the full signed heat defect, and the triangle boundary orientation. Its N90 coupling gives a positive sourceheat/critical-height storage with critical dissipation. The identities supply a sufficient single entry if their joined signed primitive is bounded; they do not themselves pay that primitive from the datum. All original and previous audit files remain read only.

## Actual definitions and complete pressure allocation

Write (A=\Lambda^2=-\Delta\), (S_s=e^{-\nu sA}\), and

\[
Q(u)=-\mathbb P[(u\cdot\nabla)u],\qquad
DQ(u)[h]=-\mathbb P[(h\cdot\nabla)u+(u\cdot\nabla)h].
\]

For solenoidal (u,h), these are exactly

\[
Q(u)=-(u\cdot\nabla)u-\nabla p_u,
\qquad p_u=R_iR_j(u_i u_j),
\]

\[
DQ(u)[h]=-(h\cdot\nabla)u-(u\cdot\nabla)h
-\nabla R_iR_j(h_i u_j+u_i h_j).
\]

Thus neither ordered parent nor its pressure response is omitted. Put

\[
q=Q(u),\quad v_s=S_su,\quad G_s=Q(v_s),\quad H_s=S_sq,
\quad \mathfrak D_s=H_s-G_s,
\quad N_s=DQ(v_s)[H_s].
\tag{HB1}
\]

These are the original [PRM39–PRM46b, physical LF675–783](../SOURCES.md#S229), with both full insertions in (N_s\). The pressure in (H_s\) is the heat image of the actual nonlinear pressure; the pressure in (G_s\) is the Riesz response of the heat-aged velocity. Their difference is retained in (\mathfrak D_s\).

The actual unforced history obeys (u_t+\nu Au=q). Its physical first-binomial row is

\[
q_t+\nu Aq=M,
\quad M=DQ(u)[q]+2\nu\mathcal C(u),
\quad\mathcal C(u)=\sum_j\mathbb P[(\partial_ju\cdot\nabla)\partial_ju].
\tag{HB2}
\]

This is [N46, physical LF1173–1199](../SOURCES.md#S153). With (L=\partial_t-\partial_s), direct differentiation gives

\[
Lv_s=H_s,\qquad LG_s=N_s,\qquad LH_s=S_sM,
\qquad L\mathfrak D_s=S_sM-N_s.
\tag{HB3}
\]

The sign in (L\) is essential: (\partial_sv_s=-\nu Av_s\).

## Finite-age bridge before limits

For a finite age cutoff (R>0), use the source weight (W=\nu^{-1}\Lambda^{-1}\) and define

\[
C_G^R(t)=\frac1\nu\int_0^R\|\Lambda^{-1/2}G_s(t)\|_2^2\,ds,
\quad
C_H^R(t)=\frac1\nu\int_0^R\|\Lambda^{-1/2}H_s(t)\|_2^2\,ds.
\]

Applying (HB3) gives the complete finite-cutoff identity

\[
\boxed{
\begin{aligned}
(C_G^R-C_H^R)'={}&\frac1\nu
\left(\|\Lambda^{-1/2}G_R\|_2^2-
\|\Lambda^{-1/2}H_R\|_2^2\right)\\
&+\frac2\nu\int_0^R
\left(\langle\Lambda^{-1}N_s,G_s\rangle
-\langle\Lambda^{-1}S_sM,H_s\rangle\right)\,ds.
\end{aligned}}
\tag{HB4}
\]

The lower age edges cancel because (G_0=H_0=q). The upper edge is still displayed. Integrating the heat multiplier exactly gives

\[
\boxed{
C_H^R=\frac1{2\nu^2}
\langle\Lambda^{-3}(1-S_{2R})q,q\rangle
=\frac{r_R}{\nu^2},
}
\tag{HB5}
\]

\[
r_R=\tfrac12\|\Lambda^{-3/2}(1-S_{2R})^{1/2}q\|_2^2.
\]

Every heat-defect cross term can be retained explicitly. Since (G_s=H_s-\mathfrak D_s\),

\[
C_G^R-C_H^R
=\frac1\nu\int_0^R
\left(\|\Lambda^{-1/2}\mathfrak D_s\|_2^2
-2\langle\Lambda^{-1}\mathfrak D_s,H_s\rangle\right)ds.
\tag{HB6}
\]

With (K_s=S_sM\), the difference of insertion pairings in (HB4) is exactly

\[
\begin{aligned}
\langle\Lambda^{-1}N_s,G_s\rangle-
\langle\Lambda^{-1}K_s,H_s\rangle
={}&-\langle\Lambda^{-1}K_s,\mathfrak D_s\rangle
-\langle\Lambda^{-1}L\mathfrak D_s,H_s\rangle\\
&+\langle\Lambda^{-1}L\mathfrak D_s,\mathfrak D_s\rangle.
\end{aligned}
\tag{HB7}
\]

Thus the defect square and its complete cross pairing have not been replaced by a favorable sign.

One rigorous regularization is to apply a self-adjoint Fourier annulus cutoff to the final fields in these pairings, then let its inner radius tend to zero and outer radius tend to infinity. It commutes with (L,S_s,\mathbb P\); the nonlinear (Q,DQ\) are formed from the full actual fields before this regularization. On every strict smooth prefix the negative-weighted pairings are finite, and the regularized identities converge to (HB4)–(HB7). No finite Fourier truncation is treated as an autonomous fluid.

## Far-age edges and full-age stock

Let (K=\sup_{t<T_*}\|u(t)\|_2\), paid by the kinetic datum. Define (C_p\) so that the homogeneous product bound

\[
\|\mathbb P[(a\cdot\nabla)b]\|_{\dot H^{-1/2}}
\le C_p\|\nabla a\|_2\|\nabla b\|_2
\tag{HB8}
\]

holds for the smooth solenoidal fields under consideration. It follows from the fractional product rule, (\dot H^1\hookrightarrow L^6\), and (\dot H^{1/2}\hookrightarrow L^3\). The full ordered source and pressure projection are retained.

The heat-gradient bound is

\[
\|\nabla S_su\|_2\le
\min\left\{\|\nabla u\|_2,\frac K{\sqrt{2e\nu s}}\right\}.
\tag{HB9}
\]

Consequently

\[
\|\Lambda^{-1/2}G_R\|_2^2
\le\frac{C_p^2K^4}{4e^2\nu^2R^2}.
\tag{HB10}
\]

For (H_R\), the actual divergence source satisfies, under the unitary Fourier convention,

\[
|\widehat q(k)|\le(2\pi)^{-3/2}|k|K^2.
\]

Radial integration then gives the explicit bound

\[
\boxed{\|\Lambda^{-1/2}H_R\|_2^2
\le\frac{K^4}{16\pi^2\nu^2R^2}.}
\tag{HB11}
\]

Both upper-age edges thus vanish uniformly throughout the finite actual history. At each strict smooth physical prefix, the insertion age integrals converge as well; their full weighted norms are finite there. The limit gives

\[
C_\infty:=C_G^\infty,\qquad
C_H^\infty=\frac r{\nu^2},\qquad
r=\tfrac12\|\Lambda^{-3/2}q\|_2^2,
\]

\[
J_G=\frac2\nu\int_0^\infty
\langle\Lambda^{-1}N_s,G_s\rangle ds,
\qquad J_{\rm int}=\langle\Lambda^{-3}M,q\rangle,
\]

\[
\boxed{(C_\infty-r/\nu^2)'=J_G-J_{\rm int}/\nu^2.}
\tag{HB12}
\]

In particular the two positive stocks satisfy

\[
C_\infty'=-\nu^{-1}\|\Lambda^{-1/2}q\|_2^2+J_G,
\quad
(r/\nu^2)'=-\nu^{-1}\|\Lambda^{-1/2}q\|_2^2+J_{\rm int}/\nu^2.
\tag{HB13}
\]

The full-age stock has a genuine whole-terminal time-mass bound. With (a=\|\nabla u(t)\|_2\), (HB8)–(HB9) give

\[
C_\infty(t)\le\frac{C_p^2}{\nu}\int_0^\infty
\min\{a^4,K^4/(4e^2\nu^2s^2)\}\,ds
=\frac{C_p^2K^2a^2}{e\nu^2}.
\tag{HB14}
\]

Thus (\int_I C_\infty\le C_p^2K^4/(2e\nu^3)\) using the kinetic dissipation bound. This supplies (L^1(I)\), not a terminal supremum or a signed-derivative bound. Passing (R\to\infty\) has paid the age boundary; it does not assume uniform absolute integrability of (J_G\) as physical time approaches (T_*\).

There is a stronger uniform far-age insertion estimate. The same exact Fourier bound gives

\[
\|\nabla S_sq\|_2\le C_qK^2(\nu s)^{-7/4},
\qquad C_q=\frac{\sqrt{15}}{2^{17/4}\pi^{3/4}}.
\]

Applying (HB8) to both ordered insertions in (N_s\), and again to (G_s\), yields

\[
\frac2\nu\big|\langle\Lambda^{-1}N_s,G_s\rangle\big|
\le\frac{4C_p^2}{\nu}
\|\nabla v_s\|_2^3\|\nabla H_s\|_2.
\]

Hence for every (R>0\), uniformly over the actual finite history,

\[
\boxed{
\left|\frac2\nu\int_R^\infty
\langle\Lambda^{-1}N_s,G_s\rangle ds\right|
\le\frac{16C_p^2C_q}{9(2e)^{3/2}\nu^2}
K^5(\nu R)^{-9/4}.
}
\tag{HB14a}
\]

The same inequality holds with the absolute value placed inside the age integral. Thus every fixed outer-age strip (s\ge R>0\) is already datum-paid in (L^1\) of physical time on a finite horizon. A uniform upper primitive on one retained finite age strip (0<s<R\) is sufficient for the full (J_G\) entry, with the explicit known outer correction. No cofinal family of age moments is required. The remaining intrinsic issue of this bounded calculation lies at small age approaching the alleged terminal time, not in the age-infinity tail.

## Triangle bridge, including its characteristic endpoint

Fix (0<\tau<T_*\), (\Delta_\tau=\{(t,s):t,s\ge0,\ t+s\le\tau\}\), and set

\[
I_G^\triangle(\tau)=\frac2\nu\iint_{\Delta_\tau}
\langle\Lambda^{-1}N_s,G_s\rangle\,ds\,dt,
\]

\[
I_H^\triangle(\tau)=\frac2\nu\iint_{\Delta_\tau}
\langle\Lambda^{-1}S_sM,H_s\rangle\,ds\,dt.
\]

The vector for (L\) is ((1,-1)\), tangent to the diagonal (t+s=\tau\). Equivalently the moving age edge cancels the upper-age term. The complete boundary law is therefore

\[
\boxed{
I_G^\triangle
=\frac1\nu\int_0^\tau\|\Lambda^{-1/2}q(t)\|_2^2dt-C_G^\tau(0),
}
\tag{HB15}
\]

\[
\boxed{
I_H^\triangle
=\frac1\nu\int_0^\tau\|\Lambda^{-1/2}q(t)\|_2^2dt-C_H^\tau(0).
}
\tag{HB16}
\]

These execute the original [PRM46b/FIH17–FIH20, physical LF217–293](../SOURCES.md#S212), without clipping any signed term. Subtracting cancels the physical source boundary exactly:

\[
\boxed{I_G^\triangle-I_H^\triangle
=C_H^\tau(0)-C_G^\tau(0).}
\tag{HB17}
\]

This is only the datum age edge. All heat-defect cross terms in (HB6)–(HB7) are part of the cancellation.

Age integration of (I_H^\triangle\) gives the proposed exact formula

\[
\boxed{
I_H^\triangle(\tau)=\frac1{\nu^2}\int_0^\tau
\left\langle\Lambda^{-3}(1-S_{2(\tau-t)})M(t),q(t)\right\rangle dt.
}
\tag{HB18}
\]

The factor is (\nu^{-2}\), not (\nu^{-1}\): (2/\nu\) from the storage insertion multiplies (1/(2\nu A)\) from the heat-age integral. The final-time multiplier (1-S_{2(\tau-t)}\) and the datum age edge remain present. A bounded upper triangular insertion is equivalent, modulo its explicit datum edge, to the critical source-square action in (HB15); the identity does not bound that action separately.

## Exact original N90 coupling

Use (H_c=\tfrac12\|\Lambda^{1/2}u\|_2^2\), (D_{\rm crit}=\|\Lambda^{3/2}u\|_2^2\), and (Z=\|\Lambda^{-1/2}u_t\|_2\). The full original [N89–N90, physical LF2323–2363](../SOURCES.md#S153) is

\[
(r+2\nu^2H_c)'+\nu^3D_{\rm crit}+\nu Z^2=J_{\rm int}.
\]

Divide it by (\nu^2\) and add (HB12). The physical (J_{\rm int}\) cancels exactly, giving

\[
\boxed{
(C_\infty+2H_c)'+\nu D_{\rm crit}+\nu^{-1}Z^2=J_G.
}
\tag{HB19}
\]

This is a real coercive sourceheat/height storage. On each strict prefix it retains all endpoints:

\[
C_\infty(S)+2H_c(S)+\nu\int_0^S D_{\rm crit}
+\nu^{-1}\int_0^S Z^2
=C_\infty(0)+2H_c(0)+\int_0^S J_G.
\tag{HB20}
\]

Consequently one bounded upper (J_G\) prefix supplies the single whole-terminal (D\) entry and the established continuation. No infinite family or separate absolute production estimate is required.

## Arbitrary prescribed force: every extra insertion

Let (b=\mathbb Pf\). The nonlinear pressure remains (p_u\), while the actual forced normalized pressure is

\[
p=p_u-A^{-1}\operatorname{div}f.
\]

The actual equation is (u_t+\nu Au=q+b\). Keep (H_s=S_sq\) for the nonlinear source stock and write (B_s=S_sb\). Then

\[
LG_s=N_{Q,s}+N_{b,s},\quad
N_{Q,s}=DQ(v_s)[H_s],\quad N_{b,s}=DQ(v_s)[B_s],
\]

\[
LH_s=S_s(M+Dq(u)[b]),\quad
L\mathfrak D_s=S_s(M+Dq(u)[b])-N_{Q,s}-N_{b,s}.
\tag{HB21}
\]

Both force-parent orderings occur in (N_b\), and the simultaneous pressure derivative is included in each (DQ\). Define

\[
J_{G,Q}=\frac2\nu\int\langle\Lambda^{-1}N_{Q,s},G_s\rangle ds,
\quad J_{G,b}=\frac2\nu\int\langle\Lambda^{-1}N_{b,s},G_s\rangle ds,
\]

\[
J_g=\langle Dq(u)[b],\Lambda^{-3}q\rangle.
\]

The forced bridge is

\[
(C_\infty-r/\nu^2)'=J_{G,Q}+J_{G,b}
-(J_{\rm int}+J_g)/\nu^2.
\tag{HB22}
\]

With (Z=\|\Lambda^{-1/2}(u_t-b)\|_2\), adding the complete forced N90 equation divided by (\nu^2\) gives

\[
\boxed{
(C_\infty+2H_c)'+\nu D_{\rm crit}+\nu^{-1}Z^2
=J_{G,Q}+J_{G,b}+2\langle b,\Lambda u\rangle.
}
\tag{HB23}
\]

Thus the physical (J_g\) cancels through the bridge; the heat-age force insertion and force work remain. They are datum/source paid at arbitrary admitted amplitude. To see this directly, put (a_s=\|\nabla S_su\|_2\). From (HB8),

\[
|J_{G,b}(t)|\le\frac{4C_p^2}{\nu}\|\nabla b(t)\|_2\int_0^\infty a_s^3ds.
\]

The exact heat energy identity gives a sharper bound than the pointwise minimum estimate (HB9):

\[
\int_0^\infty a_s^2ds=\frac{\|u(t)\|_2^2}{2\nu},\qquad
\int_0^\infty a_s^3ds\le
\frac{\|u(t)\|_2^2\|\nabla u(t)\|_2}{2\nu}.
\]

\[
\boxed{|J_{G,b}(t)|\le
\frac{2C_p^2K^2}{\nu^2}\|\nabla u(t)\|_2\|\nabla b(t)\|_2.}
\tag{HB24}
\]

Its whole-terminal (L^1(I)\) norm is therefore at most (\sqrt2C_p^2\nu^{-5/2}K^3\|\nabla b\|_{L^2(I;L^2)}\), paid by the kinetic dissipation and the prescribed source norm. Also

\[
|\langle b,\Lambda u\rangle|
=|\langle\Lambda b,u\rangle|\le K\|\nabla b\|_2,
\tag{HB25}
\]

which is (L^1(I)\) on a finite horizon. No portion of (\nu D_{\rm crit}\) needs to be absorbed to pay these known terms. Here (K=\|u_0\|_2+\int_I\|b\|_2\), and (\int_I\|\nabla u\|_2^2\le K^2/(2\nu)\).

The forced triangle retains these extras too: (HB15) uses (N_Q+N_b\), and (HB18) uses (M+Dq(u)[b]\). Their difference is still only the same datum age edge. Defining instead (H=S_s(q+b)\) is an alternative convention: its stock is (\tfrac1{2\nu^2}\|\Lambda^{-3/2}(q+b)\|_2^2\), and its physical source is (M+Dq(u)[b]+b_t+\nu Ab\). It must not be identified with (r/\nu^2\); (HB21)–(HB23) deliberately retain the nonlinear-source convention.

## Exact scope

The proposed bridge and N90 coupling are verified. They give a positive storage and a sufficient one-entry criterion. The uniform far-age edges and arbitrary-force corrections are paid independently, as are the full-age stock's (L^1\) time mass.

For this bounded composition, the remaining intrinsic upper primitive is (\sup_{S<T_*}\int_0^S J_{G,Q}\) (or (J_G\) unforced). The moving-triangle form equals the actual critical source action minus its explicit datum edge, and the full-age bridge differs from (J_{\rm int}/\nu^2\) by the actual stock derivative. Neither relation supplies a new datum bound for that primitive. Once the primitive is paid independently, (HB20)/(HB23) gives (D<\infty\) and the established continuation; conversely a regular continuation makes these source/stock primitives finite. Thus this is an equivalent sufficient source entry on the actual history, not an independent proof that arbitrary datum pays it.

No pressure allocation, defect cross term, characteristic boundary, or forced insertion has been dropped. No access blocker occurred.

Source hashes recorded after reading: PRM `213ec6b89d107a46f7d2d5fc31ba188c45e056abfa8508136de080d7e2057065`; FIH `9cd8d83b22f202272b7425e35fdd7ed127498d4cb58f9ffd7c9a70caf2bf179b`; native N46/N90 `be26593f79929a37c9d88ce48ea00a0c5b2f9af919717f2bf9c7d5777d5cc311`. All three match their prior recorded source baselines. Only this new task analysis file was written.
