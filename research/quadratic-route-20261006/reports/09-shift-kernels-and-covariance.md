# Actual shift kernels, covariance and first-difference extraction

This is a new test of the original pressure-complete equations using actual fields at different times. It removes any need to identify a Taylor series with a future field. Positive kinetic shift averages are feasible and datum paid. Their exact intrinsic cancellation is also explicit: derivative or difference extraction loses an \(h^2\) coefficient, while a normalization that restores it retains the complete cross strain. The statements below concern their declared finite, regular integral-kernel, measure-diagonal and RKHS families; they do not exclude every other producer.

## Primary sources and actual time domains

* [Forced native assembly](../SOURCES.md#src-native-assembly), full Gram J10, LF1581–1605; complete work/height J11–J13, LF1607–1658; full local pressure flux J13a, LF1660–1680..
* [Unified forced setting](../SOURCES.md#src-forced-setting), admitted smooth force and pressure-complete history, LF60–104; full recurrences and canonical pressure, LF116–164..
* [Unified forced rectangles](../SOURCES.md#src-compatible-rectangles), complete temporal/viscous/pressure square, LF189–251..

Put \(A=-\Delta\), \(N(a,b)=(a\cdot\nabla)b\), and \(S(a,b,b)=\langle b,N(b,a)\rangle\). For fixed distinct shifts \(s_i\), all equations hold on a closed interval \(J\) satisfying \(J+s_i\subset[0,T_*)\), with its upper physical endpoints strictly below \(T_*\). Define the actual fields
\[
 U_i(t)=u(t+s_i),\quad P_i(t)=p(t+s_i),\quad F_i(t)=f(t+s_i).
\]
They obey the complete original rows
\[
 (U_i)_t+\nu AU_i+N(U_i,U_i)+\nabla P_i=F_i,\quad
 \operatorname{div}U_i=0,\quad
 P_i=R_aR_b(U_{i,a}U_{i,b})-A^{-1}\operatorname{div}F_i.
 \tag{SK1}
\]
They are actual shifted NS fields, not independently evolved truncations. The source section does not prescribe a particular shift kernel; this calculation constructs and tests one from its complete rows.

## Finite positive receiver and its exact cross current

For a constant symmetric PSD matrix \(Q\), set
\[
 E_Q=\frac12\sum_{i,j}Q_{ij}\langle U_i,U_j\rangle,\qquad
 D_Q=\sum_{i,j}Q_{ij}\langle\nabla U_i,\nabla U_j\rangle.
\]
Then
\[
 E_Q'+\nu D_Q=-P_Q+W_Q,\qquad
 P_Q=\sum_{i,j}Q_{ij}\langle U_i,N(U_j,U_j)\rangle,\quad
 W_Q=\sum_{i,j}Q_{ij}\langle U_i,F_j\rangle.
 \tag{SK2}
\]
All pressure pairings vanish only after justified full-space integration. Each original pressure coordinate remains.

For two different fields put \(m_{ij}=(U_i+U_j)/2\) and \(w_{ij}=U_i-U_j\). Direct expansion and incompressibility give the exact identity
\[
 \langle U_i,N(U_j,U_j)\rangle+\langle U_j,N(U_i,U_i)\rangle
 =-S(m_{ij},w_{ij},w_{ij}).
\]
Consequently
\[
 \boxed{P_Q=-\sum_{i<j}Q_{ij}S(m_{ij},w_{ij},w_{ij}).}
 \tag{SK3}
\]
This is complete signed cross strain; no pressure or nonlinear parent has been discarded or bounded.

Universal cancellation in this finite family over the admitted arbitrary smooth forced histories holds exactly for diagonal \(Q\). Sufficiency is the original kinetic cancellation. To prove necessity on actual admissible fields, let \(\psi=e^{-|x|^2}\) and
\[
 V=\nabla\times(0,0,\psi)=(-2y\psi,2x\psi,0),\quad
 B=N(V,V)=-4\psi^2(x,y,0),\quad
 W=\nabla\times\nabla\times B.
\]
These are real Schwartz fields and \(V,W\) are solenoidal. Since
\[
 \nabla\times B=16\psi^2(-yz,xz,0)\ne0,\qquad
 \langle W,B\rangle=\|\nabla\times B\|_2^2>0,
 \tag{SK4}
\]
the assignment \(U_i=\epsilon W,U_j=V\), with the other fields zero, makes the paired current \(\epsilon\langle W,B\rangle+\epsilon^2\langle V,N(W,W)\rangle\), nonzero for suitable small \(\epsilon\). Disjoint smooth temporal bumps interpolate these finitely many values in one globally smooth, compact-time, solenoidal Schwartz field \(u\). Prescribe \(p=0\) and \(f=u_t+\nu Au+N(u,u)\). This is a full admitted actual forced NS history; its canonical pressure is zero because \(\operatorname{div}f=\operatorname{div}N(u,u)\). It isolates each off-diagonal coefficient. This establishes the universal classification in that force class, not an assertion that every specific unforced history has arbitrary independent shifted values.

## Exact coefficient extraction and normalization cost

For a coefficient functional \(\ell^TU\), the best coercivity coefficient of its squared norm is
\[
 \kappa_\ell(Q)=\inf\{z^TQz:\ell^Tz=1\}.
 \tag{SK5}
\]
It is zero if \(\ell\) does not annihilate \(\ker Q\). Otherwise, for nonzero \(\ell\),
\[
 \kappa_\ell(Q)=\bigl(\ell^TQ^\dagger\ell\bigr)^{-1},
 \qquad
 \sum Q_{ij}\langle U_i,U_j\rangle\ge
 \kappa_\ell(Q)\left\|\sum\ell_iU_i\right\|_2^2.
 \tag{SK6}
\]
This is the exact finite dual-form or Schur coefficient; it does not presume a nonsingular matrix.

For shifts \(0,h\), \(h>0\), take \(\ell_h=(-1/h,1/h)\), so \(\ell_h^TU=(U_h-U_0)/h\). In the diagonal cancellation class \(Q=\operatorname{diag}(a,b)\), \(a,b>0\),
\[
 \boxed{\kappa_h=\frac{h^2ab}{a+b}\le\frac{Mh^2}{4},\qquad M=a+b.}
 \tag{SK7}
\]
Equality occurs at \(a=b=M/2\). Thus keeping a fixed positive extraction coefficient \(\kappa\) requires \(M\ge4\kappa/h^2\) in this class. With bounded total diagonal mass, the exact first-difference coefficient vanishes as \(h^2\). The diagonal stock is genuinely kinetic paid: if \(K=\|u_0\|_2+\int_0^T\|\mathbb Pf\|_2\) for a finite physical horizon containing \(J+\{0,h\}\), then \(E_Q(t)\le MK^2/2\) and \(\nu\int_J D_Q\le MK^2/2\).

For arbitrary PSD \(Q\) with trace \(M\), the exact domination \(Q\succeq\kappa_h\ell_h\ell_h^T\) implies
\[
 \kappa_h\le Mh^2/2.
 \tag{SK8}
\]
This sharper coefficient is attained by \(Q=(M/2)\begin{pmatrix}1&-1\\-1&1\end{pmatrix}\), which retains (SK3). More generally \(Q=\kappa\ell_h\ell_h^T\) gives \(E_Q=\kappa\|(U_h-U_0)/h\|_2^2/2\) and trace \(2\kappa/h^2\). Its actual energy can be finite on a strict smooth prefix because the common field cancels; its normalization is singular in \(h\), and its intrinsic strain has not cancelled. A divergent coefficient trace is not an assertion that every such actual stock diverges.

## Complete two-field mean and difference

Let \(m=(U_h+U_0)/2\), \(d=(U_h-U_0)/h\), \(\bar F=(F_h+F_0)/2\), \(\Delta_hF=(F_h-F_0)/h\), with corresponding complete pressure mean and difference. The exact rows are
\[
 \begin{aligned}
 m_t+\nu Am+N(m,m)+\frac{h^2}{4}N(d,d)+\nabla\bar P&=\bar F,\\
 d_t+\nu Ad+N(m,d)+N(d,m)+\nabla\Delta_hP&=\Delta_hF.
 \end{aligned}
 \tag{SK9}
\]
Their global energies retain opposite signed currents:
\[
 \begin{aligned}
 (\|m\|_2^2/2)'+\nu\|\nabla m\|_2^2
 &=\frac{h^2}{4}S(m,d,d)+\langle m,\bar F\rangle,\\
 (\|d\|_2^2/2)'+\nu\|\nabla d\|_2^2
 &=-S(m,d,d)+\langle d,\Delta_hF\rangle.
 \end{aligned}
 \tag{SK10}
\]
A positive combination with mean weight \(a\) and difference weight \(b\) cancels the full strain precisely when \(b=ah^2/4\). The resulting stock is exactly the equal diagonal kinetic stock, not an unweighted derivative bound. A fixed positive difference weight instead leaves the current in (SK10). On strict prefixes, \(h\downarrow0\) gives \(m\to u\), \(d\to u_t\), \(\Delta_hF\to f_t\), and \(\Delta_hP\to p_t\) in each specified finite Sobolev topology. This uses actual smooth translations, not analyticity. The limiting difference row is the complete original first temporal row with its strain and pressure.

## General positive integral kernel and its precise scope

Let \(S\) be a compact shift interval with \(J+S\) strictly inside the actual history. A PSD kernel \(K(s,r)=\langle k_s,k_r\rangle_{\mathcal H}\), together with a finite measure \(\mu\), defines
\[
 Z_K(t)=\int_S U_s(t)\otimes k_s\,d\mu(s),\qquad
 E_K=\frac12\|Z_K\|^2,\quad
 D_K=\|\nabla Z_K\|^2.
 \tag{SK11}
\]
Assume the required Bochner integrals exist; bounded measurable features on a finite measure space suffice. Then
\[
 E_K'+\nu D_K=-P_K+
 \iint K(s,r)\langle U_s,F_r\rangle\,d\mu(s)d\mu(r),
\]
\[
 P_K=-\frac12\iint K(s,r)
 S\left(\frac{U_s+U_r}{2},U_s-U_r,U_s-U_r\right)\,d\mu(s)d\mu(r).
 \tag{SK12}
\]
All force and pressure rows are still actual shifted coordinates. Smooth shift fields on a compact strict prefix require no derivative tower or analytic radius for these bounded integrals. The complete receiver square remains
\[
 \|(Z_K)_t\|^2+\nu^2\|AZ_K\|^2+\|\nabla P_K^{\rm rec}\|^2
 +\nu(\|\nabla Z_K\|^2)'=\|F_K^{\rm rec}-B_K^{\rm rec}\|^2,
 \tag{SK13}
\]
where the three receivers are the corresponding integrals of \(P_s,F_s,N(U_s,U_s)\); the notation \(P_K^{\rm rec}\) is distinct from the scalar work \(P_K\). Signed cancellation does not cancel its raw source square.

In the declared regular family \(\mu=ds\) on an interval and symmetric \(K\in L^1(S^2)\), universal intrinsic cancellation for all the admitted forced histories requires \(K=0\) almost everywhere off the diagonal. To see this, use smooth disjoint temporal profiles \(a(s),b(s)\) and the explicit fields of (SK4). For \(U_s=\epsilon a(s)W+b(s)V\), the coefficient of \(\epsilon\) in the nonlinear work is \(\langle W,N(V,V)\rangle\iint K(s,r)a(s)b(r)^2\,ds\,dr\). Varying the profiles forces the kernel to vanish on every off-diagonal product neighborhood. The diagonal has zero product Lebesgue measure, so this ordinary integral quadratic form is zero. For a continuous kernel on a nontrivial interval it vanishes everywhere. This is not a classification of every positive distributional or unbounded kernel.

The nontrivial universally cancelling continuum family is the diagonal positive-measure multiplier
\[
 E_\eta=\frac12\int_S\|U_s\|_2^2\,d\eta(s),\qquad
 D_\eta=\int_S\|\nabla U_s\|_2^2\,d\eta(s),
 \tag{SK14}
\]
with all force work integrated against the same positive measure. Its diagonal kernel is singular relative to a nonatomic product measure; it is not an ordinary bounded integral kernel. Finite diagonal matrices are its atomic case.

## Finite signed measures and RKHS extraction

For a finite signed measure \(\sigma\), define \(L_\sigma U=\int U_s\,d\sigma(s)\). In the diagonal family (SK14), this is bounded by the stock precisely when \(\sigma\ll\eta\) and its density lies in \(L^2(\eta)\), with exact squared dual norm and coefficient
\[
 C_\sigma=\int\left|\frac{d\sigma}{d\eta}\right|^2d\eta,\qquad
 \kappa_\sigma=C_\sigma^{-1}.
 \tag{SK15}
\]
If \(M=\eta(S)\), Cauchy–Schwarz gives the sharp fixed-mass inequality
\[
 \kappa_\sigma\le\frac{M}{\|\sigma\|_{\rm TV}^2},
 \tag{SK16}
\]
attained by \(\eta=M|\sigma|/\|\sigma\|_{\rm TV}\). The forward difference has \(\sigma_h=(\delta_h-\delta_0)/h\), total variation \(2/h\); (SK16) recovers (SK7). With a nonatomic \(\eta\), those point masses are not bounded coefficient functionals even for fixed \(h\). Smooth signed difference densities have the same exact dual test rather than an assumed delta bound.

For a general integral receiver \(T_Ka=\int a(s)k_s\,d\mu(s)\), a linear functional \(L_\sigma a\) is bounded by \(\|T_Ka\|\) exactly when it descends through its nullspace and is represented on the range completion by some \(z\in\mathcal H\):
\[
 \int a\,d\sigma=\langle T_Ka,z\rangle
 =\int a(s)\langle k_s,z\rangle\,d\mu(s).
 \tag{SK17}
\]
The minimal \(\|z\|^2\) is the squared dual norm. In particular an ordinary bounded feature integral against nonatomic \(\mu\) does not bound a point delta or its difference: (SK17) would require that singular measure to have a density. Equivalently smooth narrow scalar profiles have nonzero prescribed point values and integral receiver norm tending to zero. Such profiles times a solenoidal Schwartz field are actual admissible histories by the same full forcing construction as (SK4).

An RKHS **norm of the shift function** is a different quadratic energy from the integral receiver (SK11). If \(U_\bullet\) belongs to the RKHS of a kernel \(K\), the squared norm of its forward-difference functional is
\[
 C_h^{\rm RKHS}=\frac{K(h,h)+K(0,0)-2K(0,h)}{h^2}.
 \tag{SK18}
\]
For a \(C^2\) real symmetric kernel this tends to \(\partial_s\partial_rK(0,0)\), yielding a bounded derivative functional on that RKHS. Indeed the inner products of the feature quotients \((k_h-k_0)/h\) are averages of \(\partial_s\partial_rK\) on the corresponding rectangles; continuity makes the quotients Cauchy. For invertible finite Gram, interpolation norm uses \(U^TK_{\{0,h\}}^{-1}U\), not \(U^TK_{\{0,h\}}U\). Singular Gram requires compatible values and the corresponding pseudoinverse norm. The inverse generally has an \(h^{-2}\) difference normalization. Positivity or smoothness of a covariance kernel does not supply the actual RKHS norm of the history, its whole-terminal budget, or cancellation of its complete nonlinear source. These statements neither assume every RKHS is analytic nor assert that derivative extraction is impossible in all RKHSs.

A derivative delta is not a bounded functional of a finite diagonal stock. For example scalar profiles with derivative one at a point and supremum \(O(\epsilon)\) have stock \(O(M\epsilon^2)\). This is a coefficient-functional test, and can be realized by the admitted forced history; it does not suppress its force norms, which may grow with \(\epsilon^{-1}\).

## Actual averaging and positive covariance family

Let \(\eta\) be a probability measure on a bounded set of offsets \(r\), and let \(U_r=u(t+hr)\). Define
\[
 v=\int U_r\,d\eta(r),\quad
 \delta_r=U_r-v,\quad
 C=\int\delta_r\otimes\delta_r\,d\eta,\quad
 R=\operatorname{div}C=\int N(\delta_r,\delta_r)\,d\eta.
\]
With \(\bar F=\int F_r\,d\eta\), \(\bar P=\int P_r\,d\eta\), their complete rows are
\[
 \begin{aligned}
 v_t+\nu Av+N(v,v)+R+\nabla\bar P&=\bar F,\\
 (\delta_r)_t+\nu A\delta_r+N(v,\delta_r)+N(\delta_r,v)
 +N(\delta_r,\delta_r)-R+\nabla(P_r-\bar P)&=F_r-\bar F.
 \end{aligned}
 \tag{SK19}
\]
The averaged pressure is not just the pressure of \(v\):
\[
 \bar P=R_iR_j(v_iv_j+C_{ij})-A^{-1}\operatorname{div}\bar F,
\]
\[
 P_r-\bar P=R_iR_j(v_i\delta_{r,j}+\delta_{r,i}v_j+
 \delta_{r,i}\delta_{r,j}-C_{ij})-A^{-1}\operatorname{div}(F_r-\bar F).
 \tag{SK20}
\]
Every covariance, mixed order and force-potential term remains.

Put \(E_{\rm mean}=\|v\|_2^2/2\), \(E_{\rm var}=\int\|\delta_r\|_2^2d\eta/2\), and \(\mathcal S=\int S(v,\delta_r,\delta_r)d\eta\). The exact coupled energies are
\[
 \begin{aligned}
 E_{\rm mean}'+\nu\|\nabla v\|_2^2
 &=\mathcal S+\langle v,\bar F\rangle,\\
 E_{\rm var}'+\nu\int\|\nabla\delta_r\|_2^2d\eta
 &=-\mathcal S+\int\langle\delta_r,F_r-\bar F\rangle\,d\eta.
 \end{aligned}
 \tag{SK21}
\]
The positive variance kernel is the diagonal measure minus \(\eta\otimes\eta\). The total stock is the actual averaged kinetic energy, with its fully cancelling nonlinear work. Weighting the two stocks by \(a,b>0\) leaves \((a-b)\mathcal S\); full universal cancellation requires equal weights. This is a real bounded positive shift construction that does not require an infinite derivative series.

For local spatial densities the mean flux is
\[
 v|v|^2/2-\nu\nabla(|v|^2/2)+\bar P\,v
 +\int\delta_r(v\cdot\delta_r)\,d\eta.
\]
The variance flux is
\[
 v\int|\delta_r|^2d\eta/2-\nu\nabla\!\left(\int|\delta_r|^2d\eta/2\right)
 +\int\delta_r|\delta_r|^2d\eta/2+\int(P_r-\bar P)\delta_r\,d\eta.
 \tag{SK22}
\]
They have the opposite local strain densities in (SK21), full viscous actions and force work. Their sum is exactly the averaged original kinetic and pressure flux. Spatial selectors retain every corresponding flux and collar.

Let \(\mu_r=\int r\,d\eta\) and \(\sigma^2=\int(r-\mu_r)^2d\eta>0\). A legitimate smeared first difference is
\[
 L_hU=\frac{1}{h\sigma^2}\int(r-\mu_r)U_r\,d\eta.
\]
Its exact variance coercivity is
\[
 \boxed{\int\|\delta_r\|_2^2d\eta\ge h^2\sigma^2\|L_hU\|_2^2.}
 \tag{SK23}
\]
This follows by Cauchy–Schwarz and is sharp for a coefficient function affine in \(r\). For equal masses at \(r=0,1\), \(L_hU=(U_h-U_0)/h\) and \(\sigma^2=1/4\).

On a compact strict classical prefix, smooth translations give
\[
 L_hU\to u_t,\qquad
 E_{\rm var}/h^2\to\sigma^2\|u_t\|_2^2/2,\qquad
 \int\|\nabla\delta_r\|_2^2d\eta/h^2\to\sigma^2\|\nabla u_t\|_2^2,
\]
\[
 \mathcal S/h^2\to\sigma^2S(u,u_t,u_t),\quad
 \frac1{h^2}\int\langle\delta_r,F_r-\bar F\rangle\,d\eta
 \to\sigma^2\langle u_t,f_t\rangle.
 \tag{SK24}
\]
The pressure difference divided by \(h\) similarly tends to \((r-\mu_r)p_t\); its full covariance form (SK20) fixes the signs. These are actual finite-order smooth limits, without analyticity. Normalizing the variance by \(h^{-2}\) recovers the unweighted first-temporal stock and its original full strain. Cancelling that normalized current with the mean requires mean weight \(h^{-2}\) as well, and changes the kinetic stock budget. No uniform terminal limit or endpoint trace is inferred from the strict-prefix limits.

## Fully force-compensated positive finite stock

There is a further positive construction in the actual two-field join. For fixed \(h>0\), let \(g=\mathbb Pf\) and
\[
 G_h(t)=\frac1h\int_t^{t+h}g(r)\,dr,\qquad H_h=d-G_h.
\]
Then \((G_h)_t=\Delta_hg\). Subtracting this complete known lift from the difference row cancels only the matching force-potential gradient. The exact raw intrinsic row is
\[
 (H_h)_t+\nu AH_h+N(m,H_h)+N(H_h,m)+\nabla\pi_d=R_h,
\]
\[
 \pi_d=R_iR_j(m_i d_j+d_i m_j),\qquad
 R_h=-\nu AG_h-N(m,G_h)-N(G_h,m).
 \tag{SK24a}
\]
Here \(d=H_h+G_h\) still occurs in the complete intrinsic pressure. Equivalently the linearized pressure of \(H_h\) is paired with \(\mathbb PR_h\); its complementary known-force pressure must move with that projection. The mean retains its original full physical pressure and force.

The positive stock and exact action are
\[
 E_c=\frac12\|m\|_2^2+\frac{h^2}{8}\|H_h\|_2^2,\qquad
 D_c=\nu\left(\|\nabla m\|_2^2+\frac{h^2}{4}\|\nabla H_h\|_2^2\right).
\]
Before bounds their full law is
\[
 E_c'+D_c=\langle m,\bar F\rangle+
 \frac{h^2}{4}\{2S(m,H_h,G_h)+S(m,G_h,G_h)+\langle H_h,R_h\rangle\}.
 \tag{SK24b}
\]
The intrinsic \(S(m,H_h,H_h)\) cancels exactly. More of the joined force work also cancels before separate norms:
\[
 \begin{split}
 &2S(m,H_h,G_h)+S(m,G_h,G_h)+\langle H_h,R_h\rangle\\
 &\qquad=-\nu\langle\nabla H_h,\nabla G_h\rangle
 -\langle m,N(H_h,G_h)+N(G_h,G_h)\rangle
 -\langle H_h,N(m,G_h)\rangle .
 \end{split}
 \tag{SK24c}
\]
Indeed \(2S=\langle H_h,N(G_h,m)\rangle+\langle G_h,N(H_h,m)\rangle\); its first term cancels the matching force parent in \(R_h\), and the second is integrated by parts onto \(G_h\). The \(G_h,G_h\) term is integrated the same way. Both ordered mixed parents and the force-force parent remain as the displayed known-gradient multipliers.

This complete force work is paid without a force-amplitude restriction. Let the actual kinetic budget give \(\|m\|_2\le K\), and set \(A_h=\|\nabla G_h\|_\infty\), using the matrix operator norm. Young's inequality after (SK24c) gives
\[
 \boxed{\begin{aligned}
 E_c'+\nu\|\nabla m\|_2^2+\frac{\nu h^2}{8}\|\nabla H_h\|_2^2
 \le{}&E_c+K\|\mathbb P\bar F\|_2+\frac{\nu h^2}{8}\|\nabla G_h\|_2^2\\
 &+\frac{h^2}{2}K^2A_h^2+\frac{h^2}{4}KA_h\|G_h\|_2 .
 \end{aligned}}
 \tag{SK24d}
\]
The mixed pair is bounded exactly by \((h^2/2)KA_h\|H_h\|\le E_c+(h^2/2)K^2A_h^2\). The gradient cross absorbs the displayed half of the original scaled gradient action. For \(0<h\le h_0\), all force averages in (SK24d) have known uniform bounds on a specified finite physical force horizon. No velocity derivative norm is used to pay them.

At any actual initial strip time \(a\),
\[
 E_c(a)\le K^2/2+\bigl(2K+h\|G_h(a)\|_2\bigr)^2/8.
\]
Integrating (SK24d), or applying its datum/force integrating factor, therefore bounds this positive stock and its scaled action uniformly over the original strict strips. Their norm limits retain the finite uniform bounds; this makes no unsupported terminal trace assertion. The derivative-like field has coercivity coefficient \(h^2/4\) in the full squared stock \(2E_c\). Thus the construction pays a genuine positive force-compensated finite object, while it does not produce an unweighted bound on \(H_h\) as \(h\downarrow0\).

## Moving coefficients, moving shifts and endpoint stocks

For \(C^1\) PSD \(Q(t)\), (SK2) gains \(\frac12\sum Q_{ij}'\langle U_i,U_j\rangle\). If \(s_i=s_i(t)\), its raw row also gains \(s_i'V_1(t+s_i)\) as a solenoidal source. Thus the additional energy work is
\[
 \frac12\sum Q_{ij}'\langle U_i,U_j\rangle+
 \sum Q_{ij}\langle U_i,s_j'V_1(t+s_j)\rangle.
 \tag{SK25}
\]
A factorization \(Q=L^TL\) adds its \(L'U\) source, including its raw-source cross and square. A \(C^1\) kernel adds \(\iint K_t(s,r)\langle U_s,U_r\rangle\,d\mu(s)d\mu(r)/2\). For a probability measure differentiable with finite signed derivative \(\dot\eta\), fixed shift nodes give \(b_\eta=\int U_r\,d\dot\eta\) in the mean row and \(-b_\eta\) in each deviation row. The additional mean and variance energy works are exactly \(\langle v,b_\eta\rangle\) and \(\int\|\delta_r\|^2d\dot\eta/2\), respectively. Their sum is \(\int\|U_r\|^2d\dot\eta/2\). Moving atoms are instead covered by the moving-node source in (SK25), or by justified distributional measure derivatives; a finite signed derivative is not presumed for them. A common differentiable Hilbert representation is not assumed merely from instantaneous positivity.

For a changing forward step \(h(t)\), the exact normalized difference row is
\[
 d_t+\nu Ad+N(m,d)+N(d,m)+\nabla\Delta_hP
 =\Delta_hF+\frac{h'}h\{V_1(t+h)-d\}.
 \tag{SK26}
\]
This is the combined coefficient and moving-field derivative, and has no assigned sign. Fixed forward \(h\) requires \(t<T_*-h\); moving \(h\) must stay positive with both physical times in the original history. For all displayed energies, integration retains their actual initial and final stocks and every shifted source/flux interval. The whole-terminal shift-domain and restart questions are separate from the bounded algebra executed here.

In the compensated stock (SK24b), moving \(h\) also gives
\[
 (G_h)_t=\Delta_hg+\frac{h'}h\{g(t+h)-G_h\},\qquad
 (H_h)_t\text{ has the extra }\frac{h'}h\{(u_t-g)(t+h)-H_h\}.
\]
Combining these with the derivative of \(h^2\|H_h\|^2/8\) leaves exactly the additional work
\[
 \frac{h'}2\langle m,u_t(t+h)\rangle
 +\frac{hh'}4\langle H_h,(u_t-g)(t+h)\rangle.
 \tag{SK26a}
\]
The cancelling \(-H_h\) coefficient port has been included, not dropped. These remaining endpoint-response works have no assigned sign or payment in the fixed-strip estimate (SK24d).

## Completed bounded findings

Actual bounded shift averages and their positive covariance require no derivative-order growth assumption. They provide exactly cancelling kinetic budgets with full forcing and pressure. The further compensated join (SK24a)–(SK24d) cancels the intrinsic field strain, recombines every mixed force parent before bounds, and pays its positive finite stock and scaled action. In the finite distinct-shift family, universal intrinsic cancellation is diagonal; its sharp first-difference coefficient with total mass \(M\) is \(Mh^2/4\). A positive normalized difference can retain order-one extraction, but its complete cross strain survives. The continuum average/variance construction exhibits the same trade through (SK21)–(SK24), including a legitimate smeared derivative functional.

General positive kernels require the actual dual-form test (SK17); point or derivative extraction is not presumed bounded. A smooth RKHS may support such a functional, but its norm and source budget are distinct from a bounded kinetic integral receiver. Moving weights and shifts retain (SK25)–(SK26). These calculations identify feasible classes, exact cancellation/coercivity costs and surviving signed currents, without presuming their whole-terminal upper payment or declaring all other approaches impossible.

The supporting [actual-shift-cancellation-and-extraction.md](10-shift-extraction-verification.md), independently derives the finite classification, coefficient costs, covariance/pressure rows, local fluxes and moving coefficients. A further read-only algebra check verifies (SK24a)–(SK24d) and (SK26a), including every force parent, the sharp kinetic-\(K\) Young constants and moving-step work.
