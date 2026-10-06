# Actual time shifts: positive cancellation, first-row cost and terminal limit

6 October 2026. This is a new method test derived from the original pressure-complete Navier–Stokes history. Its fields are real time shifts and finite differences, not formally summed temporal jets. The test removes the analytic-series assumption. It proves a genuinely paid positive cancellation and identifies its exact derivative price. A positive normalized difference or variance controls the first temporal row without an all-order assumption, but its complete balance retains the same strain. Whole-terminal quotient finiteness is characterized precisely and conditionally produces the original first rectangle.

Direct source anchors are [native assembly J1–5, J10 and J13a–d](../SOURCES.md#src-native-assembly), [the original history and finite rectangle](../SOURCES.md#src-forced-setting), and [the kinetic identity and complete pressure square](../SOURCES.md#src-compatible-rectangles). The additional [analytic framework](../SOURCES.md#src-analytic-framework) supplies its original constants, multipliers and adjacent trace. This note neither attributes the new shift definitions to the printed proof nor certifies a public PDF/version.

## Actual shifted equations and complete cross work

Set \(L=-\Delta\), \(N(a,b)=(a\cdot\nabla)b\), \(g=\mathbb Pf\). Fix a finite target \(0<T\le T_*\); the terminal case is \(T=T_*<\infty\). The prescribed force remains defined at absolute times on \([0,T]\). For fixed distinct offsets \(s_i\), each actual field \(U_i(t)=u(t+s_i)\), pressure \(P_i=p(t+s_i)\), and force \(F_i=f(t+s_i)\) obeys
\[
 U_i'+\nu LU_i+N(U_i,U_i)+\nabla P_i=F_i,\qquad
 P_i=R_aR_b(U_{i,a}U_{i,b})-L^{-1}\operatorname{div}F_i.
 \tag{SH1}
\]
The common time window requires every \(0\le t+s_i<T_*\). These are different physical times, so they do not have one common unshifted advector.

For symmetric \(C^1\) weight \(Q\), let \(C_{ij}=\langle U_i,U_j\rangle\), \(K_{ij}=\langle\nabla U_i,\nabla U_j\rangle\). The exact positive storage and balance are
\[
 E_Q=\tfrac12Q:C,\qquad
 E_Q'+\nu Q:K=-W_Q+\sum Q_{ij}\langle U_i,F_j\rangle+\tfrac12Q':C,
\]
\[
 \boxed{W_Q=-\sum_{i<j}Q_{ij}
 S\!\left(\frac{U_i+U_j}{2},U_i-U_j,U_i-U_j\right),}
 \quad S(v,x,x)=\langle x,N(x,v)\rangle.
 \tag{SH2}
\]
Every cross entry is an actual relative strain. The local pressure flux is \(\sum Q_{ij}P_jU_i\); rewriting the relative strain retains its complete nonlinear divergence flux. The full square remains
\[
 \sum Q_{ij}\langle U_i',U_j'\rangle+\nu^2\sum Q_{ij}\langle LU_i,LU_j\rangle
 +\sum Q_{ij}\langle\nabla P_i,\nabla P_j\rangle
 +\nu(Q:K)'-\nu Q':K
 =\sum Q_{ij}\langle F_i-N(U_i,U_i),F_j-N(U_j,U_j)\rangle.
 \tag{SH3}
\]
Its four force/nonlinear source-pair classes and both gradient endpoint stocks remain. Cancellation of first-power work does not pay that source square.

Complete transport-coefficient cancellation in the physical distinct-shift basis is exactly diagonal \(Q\). This is also necessary for a prescribed matrix to cancel universally in the full arbitrary-force class, without assuming independent values in an unforced solution. To verify necessity, use the actual solenoidal Schwartz fields
\[
 Y=(-2y,2x,0)e^{-|x|^2},\quad B=N(Y,Y)=-4(x,y,0)e^{-2|x|^2},
 \quad X=\operatorname{curl}\operatorname{curl}B.
\]
Then \(\operatorname{curl}B=16z(-y,x,0)e^{-2|x|^2}\ne0\), and
\(\langle X,B\rangle=\|\operatorname{curl}B\|_2^2>0\).
Smooth compact-time interpolation of samples \(\alpha X,\beta Y,0,\ldots\), with \(p=0\) and explicitly prescribed \(f=u_t+\nu Lu+N(u,u)\), is a globally smooth admitted NS history. Its full force potential exactly cancels the canonical nonlinear pressure. The coefficient of \(\alpha\beta^2\) in the sampled current forces the tested \(Q_{ij}=0\). This is a full forced-history test of a universal identity. History-adaptive weights, a particular history and additional unforced identities remain outside this classification; adaptive weights keep \(Q':C/2\).

Repeated offsets must first be grouped; only the effective weight on distinct times must be diagonal. A finite change of shift coordinates does not create a new cancellation class. If \(D=A_hU\) is the forward-difference basis, then
\[
 D_r=h^{-r}\sum_{j=0}^r(-1)^{r-j}\binom rjU_j,\qquad
 U_j=\sum_{r=0}^j\binom jr h^rD_r.
 \tag{SH4}
\]
This is exact finite binomial inversion. The full difference product rule is
\[
 \delta_h^rN(u,u)=\sum_{a=0}^r\binom ra
 N(\delta_h^au,\mathsf E_h^a\delta_h^{r-a}u),\qquad
 \delta_h^rp=R_iR_j\sum_{a=0}^r\binom ra
 (\delta_h^au_i)(\mathsf E_h^a\delta_h^{r-a}u_j)
 -L^{-1}\operatorname{div}\delta_h^rf.
 \tag{SH5}
\]
The shifted factor is essential. For weight \(P\) in this basis the effective physical weight is \(A_h^TPA_h\). Its cancelling PSD members are precisely congruences of positive diagonal shifted kinetic weights. A differences-only stencil annihilates the constant coefficient vector, so a fully cancelling effective diagonal weight must be zero. A grid \(0,h,\ldots,Nh\) requires \(t<T_*-Nh\); increasing \(N\) at fixed \(h\) does not define an infinite forward tower on a finite original time interval. All details and integer checks appear in [the finite shift derivation](07-fixed-shift-matrix.md).

## Two actual times: exact positive cancellation and its cost

For \(h>0\) use only \(0<t<T-h\), and set
\(m=(u(t+h)+u(t))/2\), \(d=(u(t+h)-u(t))/h\).
Use bars for the arithmetic pressure/force mean and \(\delta_h\) for their real difference. The complete rows are
\[
 \begin{aligned}
 m_t+\nu Lm+N(m,m)+\tfrac{h^2}{4}N(d,d)+\nabla\bar p&=\bar f,\\
 d_t+\nu Ld+N(m,d)+N(d,m)+\nabla\delta_hp&=\delta_hf.
 \end{aligned}\tag{SH6}
\]
Their canonical pressures are
\(\bar p=R_iR_j(m_im_j+h^2d_id_j/4)-L^{-1}\operatorname{div}\bar f\),
\(\delta_hp=R_iR_j(m_id_j+d_im_j)-L^{-1}\operatorname{div}\delta_hf\).
Equivalently the difference nonlinearity is \(N(u,d)+N(d,u)+hN(d,d)\). The additional parent has zero global energy pairing with \(d\), but remains in the field equation and square.

The exact energies are
\[
 \begin{aligned}
 (\|m\|_2^2/2)'+\nu\|\nabla m\|_2^2
 &=\tfrac{h^2}{4}S(m,d,d)+\langle m,\bar f\rangle,\\
 (\|d\|_2^2/2)'+\nu\|\nabla d\|_2^2
 &=-S(m,d,d)+\langle d,\delta_hf\rangle.
 \end{aligned}\tag{SH7}
\]
For the complete mean/difference matrix \(P=\left(\begin{smallmatrix}a&c\\c&b\end{smallmatrix}\right)\), nonlinear work is \((b-ah^2/4)S(m,d,d)\): the cross stock has zero nonlinear work. Exact cancellation means \(b=ah^2/4\), and PSD means \(|c|\le ah/2\). This is exactly the physical diagonal weight
\(Q=\operatorname{diag}(a/2-c/h,a/2+c/h)\).
Thus valid cross weights in transformed coordinates remain weighted kinetic energies of the actual shifted histories.

For \(Q=\operatorname{diag}(q_0,q_1)\), \(q_i\ge0\) and \(M=q_0+q_1>0\), the sharp first-difference extraction coefficient in \(2E_Q\ge\kappa_h\|d\|_2^2\) is
\[
 \boxed{\kappa_h=h^2\frac{q_0q_1}{q_0+q_1}
          \le\frac{Mh^2}{4},\qquad M=q_0+q_1.}
 \tag{SH8}
\]
For the all-zero diagonal stock set \(\kappa_h=0\). For arbitrary PSD two-shift matrices of trace \(M\), the corresponding bound is \(\kappa_h\le Mh^2/2\), attained by a normalized difference matrix. That matrix retains the strain in SH7. Within the cancelling diagonal class a fixed positive derivative coefficient requires \(M\ge4\kappa/h^2\). General \(r\)-th difference extraction with bounded diagonal mass has coefficient at most \(Mh^{2r}/4^r\). These are sharp coefficient facts, rather than a claim that every singularly normalized actual stock diverges.

The difference local energy is
\[
 \partial_t(|d|^2/2)+\operatorname{div}\{m|d|^2/2-\nu\nabla(|d|^2/2)+(\delta_hp)d\}
 +\nu|\nabla d|^2=-d^\top\operatorname{Sym}(\nabla m)d+d\cdot\delta_hf.
 \tag{SH9}
\]
Pressure and spatial selector faces stay. Its complete square is
\(\|d_t\|_2^2+\nu^2\|Ld\|_2^2+\|\nabla\delta_hp\|_2^2
+\nu(\|\nabla d\|_2^2)'=\|\delta_hf-N(m,d)-N(d,m)\|_2^2\).
On any fixed strict prefix, actual finite increments converge in every selected Sobolev norm to \(d\to u_t\), \(m\to u\), \(\delta_hf\to f_t\), and \(\delta_hp\to p_t\). This uses the fundamental theorem of calculus, without an infinite Taylor sum. SH7 converges there to the original first-temporal energy with its complete strain.

## Full force compensation gives a paid positive finite construct

Set \(\phi_f=-L^{-1}\operatorname{div}f\), \(p_0=p-\phi_f\), and use the actual force average
\[
 G_h(t)=h^{-1}\int_t^{t+h}g(s)\,ds,\qquad H_h=d-G_h.
 \tag{SH10}
\]
Since \(G_h'=\delta_hg\), the complete raw compensated equation is
\[
 H_h'+\nu LH_h+N(m,H_h)+N(H_h,m)+\nabla\delta_hp_0=R_h,\quad
 R_h=-\nu LG_h-N(m,G_h)-N(G_h,m).
 \tag{SH11}
\]
The original pressure remains \(\delta_hp=\delta_hp_0+\delta_h\phi_f\), with
\(\delta_hp_0=R_iR_j[m_i(H_h+G_h)_j+(H_h+G_h)_im_j]\).
Expanding about the actual lower-time \(u(t)\) gives the equivalent complete equation with \(+hN(H_h,H_h)\) on its left and the source
\[
 -\nu LG_h-N(u,G_h)-N(G_h,u)
 -h\{N(H_h,G_h)+N(G_h,H_h)+N(G_h,G_h)\}.
 \tag{SH12}
\]
All force–force and force/unknown parents remain. The source in SH11 has a uniform kinetic-based \(\dot H^{-1}\) bound
\(\|R_h\|_{\dot H^{-1}}\le\nu\|\nabla G_h\|_2+2K\|G_h\|_\infty\),
where \(K=\|u_0\|_2+\int_0^T\|g\|_2\). It also has a finite whole-strip \(L^2_tL^2_x\) price using
\(\|R_h\|_2\le\nu\|LG_h\|_2+K\|\nabla G_h\|_\infty+\|G_h\|_\infty\|\nabla m\|_2\)
and \(\int\|\nabla m\|_2^2\le K^2/(2\nu)\). Every force average is controlled by finite prescribed spatial force norms on \([0,T]\); no derivative tower is involved.

There is a genuine positive cancellation after compensation:
\[
 E_c=\tfrac12\|m\|_2^2+\tfrac{h^2}{8}\|H_h\|_2^2,\quad
 E_c'+\nu[\|\nabla m\|_2^2+\tfrac{h^2}{4}\|\nabla H_h\|_2^2]
 =\langle m,\bar f\rangle+\tfrac{h^2}{4}\mathcal F_h,
\]
\[
 \mathcal F_h=-\nu\langle\nabla H_h,\nabla G_h\rangle
 -\langle m,N(H_h,G_h)+N(G_h,G_h)\rangle
 -\langle H_h,N(m,G_h)\rangle.
 \tag{SH13}
\]
Before regrouping, \(\mathcal F_h\) is
\(2S(m,H_h,G_h)+S(m,G_h,G_h)+\langle H_h,R_h\rangle\).
The full force-parent strain combines by incompressibility into SH13, so only known \(\nabla G_h\) multipliers remain. This is an executed cancellation before taking norms.

For \(A_h=\|\nabla G_h\|_\infty\), Young and \(\|m\|_2\le K\) give the explicit payment
\[
 E_c'+\nu\|\nabla m\|_2^2+\tfrac{\nu h^2}{8}\|\nabla H_h\|_2^2
 \le E_c+K\|\mathbb P\bar f\|_2
 +\tfrac{\nu h^2}{8}\|\nabla G_h\|_2^2
 +\tfrac{h^2}{2}K^2A_h^2+\tfrac{h^2}{4}KA_h\|G_h\|_2.
 \tag{SH14}
\]
The initial stock satisfies
\(E_c(0)\le K^2/2+(2K+h\|G_h(0)\|_2)^2/8\).
Thus for bounded \(h\), Gronwall pays \(E_c\) and its displayed weighted actions uniformly on all genuine shift strips. This uses only the datum, kinetic action and finite prescribed force norms. It pays \(hH_h\), whose coefficient remains \(h^2/4\) in \(2E_c\). Dividing by \(h^2\) introduces the positive mean stock \(\|m\|^2/(2h^2)\) and its correspondingly scaled source budget. Subtracting that mean stock leaves the positive difference stock, and restores its exact signed strain balance
\[
 (\|H_h\|_2^2/2)'+\nu\|\nabla H_h\|_2^2
 =-S(m,H_h,H_h)+\langle H_h,R_h\rangle.
 \tag{SH15}
\]
On strict prefixes SH15 tends to the prior first compensated row, with \(R_1=-\nu Lg-N(u,g)-N(g,u)\). The analytic-series obstruction is removed; the intrinsic strain payment has not been supplied. The complete raw/projected pressures, optional normalization defects and all finite force payments are in [the difference/forcing execution](08-difference-pressure-force.md).

## Actual shift kernels and time-integrated variance

An ordinary bounded positive integral receiver \(\int U_s\otimes k_s\,d\mu(s)\) exists on compact actual shift windows without any temporal derivative-order bound. Its nonlinear work is the exact double-integral version of SH2. For symmetric \(L^1\) kernels against Lebesgue product measure, universal cancellation in the arbitrary-force class forces the kernel to vanish off the diagonal; disjoint smooth temporal profiles in the admitted full forced construction above isolate every off-diagonal rectangle. The diagonal has zero product measure. A nontrivial cancelling continuum stock instead has the singular diagonal positive-measure form \(\frac12\int\|U_s\|_2^2d\eta(s)\), with all pressure and force work against the same measure.

This yields a feasible infinite shift family without an analytic radius: fixed compact shift support and finite positive mass give a paid direct-integral kinetic stock, or compatible atomic restrictions with summable masses. Its derivative extraction is a separate issue. For signed shift functional \(\int U_s\,d\sigma(s)\), diagonal storage controls it precisely when \(\sigma\ll\eta\) with density in \(L^2(\eta)\); its sharp coefficient is
\(\kappa_\sigma=(\int|d\sigma/d\eta|^2d\eta)^{-1}\le\eta(S)/\|\sigma\|_{\rm TV}^2\).
A literal first difference has total variation \(2/h\), recovering SH8. Nonatomic bounded integral stock does not bound point deltas or derivative evaluation. A differentiable RKHS can support derivative evaluation with no analyticity assumption, but its norm of the actual shift function is an inverse-kernel energy with its own membership/source budget. It must not be identified with the kinetic integral receiver.

For a probability measure \(\eta\) on \([0,1]\), set
\(U_z=u(t+hz)\), \(v=\int U_zd\eta\), \(\delta_z=U_z-v\),
\(C=\int\delta_z\otimes\delta_zd\eta\), \(R=\int N(\delta_z,\delta_z)d\eta\).
The complete mean and deviation rows are
\[
 \begin{aligned}
 v_t+\nu Lv+N(v,v)+R+\nabla\bar p&=\bar f,\\
 \delta_{z,t}+\nu L\delta_z+N(v,\delta_z)+N(\delta_z,v)
 +N(\delta_z,\delta_z)-R+\nabla(p_z-\bar p)&=f_z-\bar f.
 \end{aligned}\tag{SH16}
\]
Here \(\bar p=R_iR_j(v_iv_j+C_{ij})-L^{-1}\operatorname{div}\bar f\), and
\(p_z-\bar p=R_iR_j(v_i\delta_{z,j}+\delta_{z,i}v_j+
\delta_{z,i}\delta_{z,j}-C_{ij})-L^{-1}\operatorname{div}(f_z-\bar f)\).
Covariance, both cross parents and the full force potentials remain.

The positive mean and variance energies obey
\[
 \begin{aligned}
 E_{\rm mean}'+\nu\|\nabla v\|_2^2&=\mathcal S+\langle v,\bar f\rangle,\\
 E_{\rm var}'+\nu\int\|\nabla\delta_z\|_2^2d\eta
 &=-\mathcal S+\int\langle\delta_z,f_z-\bar f\rangle d\eta,
 \end{aligned}
 \quad\mathcal S=\int S(v,\delta_z,\delta_z)d\eta.
 \tag{SH17}
\]
The variance is \(E_{\rm var}=\frac12\int\|\delta_z\|^2d\eta
=\frac14\iint\|U_z-U_w\|^2d\eta(z)d\eta(w)\).
Adding the rows cancels the actual strain and gives the averaged shifted kinetic law. Its local mean flux includes \(\int\delta_z(v\cdot\delta_z)d\eta\) and \(\bar p\,v\); its variance flux includes \(\int\delta_z|\delta_z|^2d\eta/2\) and \(\int(p_z-\bar p)\delta_zd\eta\). Both also retain transport and viscous fluxes. Their sum is exactly the averaged original kinetic flux.

For \(\mu=\int z\,d\eta\), \(\sigma^2=\int(z-\mu)^2d\eta>0\), the actual smeared slope
\(\ell_h=\int(z-\mu)U_zd\eta/(h\sigma^2)\) satisfies the sharp variance inequality
\[
 2E_{\rm var}\ge h^2\sigma^2\|\ell_h\|_2^2,\qquad
 E_{\rm var}/h^2\longrightarrow \sigma^2\|u_t\|_2^2/2
 \tag{SH18}
\]
on every fixed strict prefix. The normalized gradient action, strain and force covariance tend there to
\(\sigma^2\|\nabla u_t\|^2\),
\(\sigma^2S(u,u_t,u_t)\), and
\(\sigma^2\langle u_t,f_t\rangle\).
No temporal Taylor series is used. Cancelling the normalized variance strain requires equal \(h^{-2}\) mean weight, hence the same kinetic normalization price. Subtracting the mean restores the first-row strain, as in SH15. All kernel, local pressure and exact coercivity details are in [the independently checked shift-kernel execution](09-shift-kernels-and-covariance.md).

## Whole-terminal domains, actual endpoints and the exact \(h\to0\) criterion

Kinetic control gives \(\sup_{t<T}\|u(t)\|_2\le K\) and
\(D=\int_0^T\|\nabla u\|_2^2\le K^2/(2\nu)\), also at \(T=T_*\) by strict-prefix passage. The complete energy derivative
\(e'=-2\nu Y+2\langle u,g\rangle\) is integrable. Thus \(e_*=\lim_{t\uparrow T}\|u(t)\|^2\) exists. The original momentum also gives \(u_t\in L^1(0,T;H^{-3})\) using
\(\|Lu\|_{H^{-3}}\le K\) and
\(\|\mathbb P\operatorname{div}(u\otimes u)\|_{H^{-3}}\le C K^2\).
It yields a unique weak \(L^2\) trace \(u_-\), with kinetic defect
\(\Delta_*=e_*-\|u_-\|^2\ge0\). No classical field value past \(T_*\) is introduced.

For each fixed \(h>0\), the lower-time field ranges only over the smooth strict prefix \([0,T-h]\). Exact integration by parts gives
\[
 h^2S(m,d,d)=-[\langle u,N(u(t+h),u(t+h))\rangle
                 +\langle u(t+h),N(u,u)\rangle],
\]
\[
 h^2|S(m,d,d)|\le K^2\|\nabla u(t)\|_\infty+K\|N(u(t),u(t))\|_2.
 \tag{SH19}
\]
This proves absolute integrability of the actual fixed-\(h\) current on the whole shift strip. The strict-lag constants can depend on \(h\). The resulting terminal difference energy equality is legitimate, with scalar current stock
\[
 \lim_{b\uparrow T-h}\|d(b)\|_2^2
 =\frac{e_*+e(T-h)-2\langle u_-,u(T-h)\rangle}{h^2}.
 \tag{SH20}
\]
It exceeds the squared norm of its weak trace \((u_--u(T-h))/h\) by \(\Delta_*/h^2\). The initial stock is \(\|[u(h)-u_0]/h\|^2\), approaching the genuine datum-generated \(u_t(0)\). Fixed finite separated shift Gram matrices have the same single top-time defect, while lower-time entries have ordinary strict classical endpoints. Whole-strip existence at fixed \(h\) is a useful verified gain; it is not a uniform small-\(h\) estimate.

For exact diagonal strip accounting, put \(E=\int_0^Te\), \(E_i=\int_0^he\), \(E_\tau=\int_{T-h}^Te\), and analogous \(D_i,D_\tau\) for \(Y\), \(W_i,W_\tau\) for \(F=\langle u,g\rangle\). The two kinetic rows give
\[
 \frac{e(T-h)+e_*}{2}+\nu(2D-D_i-D_\tau)
 =\frac{e(0)+e(h)}2+2W-W_i-W_\tau.
 \tag{SH21}
\]
Both endpoint strips are present. They give the finite but nonuniform estimate
\[
 M_h:=\int_0^{T-h}\|d\|_2^2
 \le\frac2{h^2}(2E-E_i-E_\tau)
 \le\frac{4K^2(T-h)}{h^2}.
 \tag{SH22}
\]
The prescribed force difference has the independent known bound
\(\int_0^{T-h}\|\delta_hf\|_2^2\le\int_0^T\|f_t\|_2^2\).
The normalized gradient action has the analogous \(4D/h^2\) upper price. The exact fixed-\(h\) signed primitive also has a kinetic/source upper price of order \(h^{-2}\) plus \(h^{-1}\|\mathbb Pf_t\|_{L^2}\). None of these upper prices proves a uniform normalized action.

There is a precise whole-domain limit that makes no endpoint-extension assumption:
\[
 \boxed{\lim_{h\downarrow0}M_h
       =\sup_{0<h<T}M_h
       =\int_0^T\|u_t\|_2^2\quad\hbox{in }[0,\infty].}
 \tag{SH23}
\]
For the lower bound, extend only the quotient by zero on its omitted terminal strip and apply Fatou to its actual pointwise limit. For the upper bound when the right side is finite, the actual fundamental theorem and Jensen give
\[
 M_h\le\int_0^T\omega_h(s)\|u_t(s)\|_2^2ds,\qquad
 \omega_h(s)=\frac{|(0,T-h)\cap(s-h,s)|}{h}\le1.
 \tag{SH24}
\]
For \(h\le T/2\), this is the exact initial/terminal triangular weight and one on the middle. Whole-domain strong convergence of the zero-extended quotient follows when the action is finite. Backward differences on \((h,T)\) are translated forward differences and have equal norms. No velocity or equation is extended beyond \(T_*\).

The normalized variance has the exact corresponding criterion
\[
 \boxed{\lim_{h\downarrow0}\int_0^{T-h}\frac{E_{\rm var}}{h^2}
       =\frac{\sigma^2}{2}\int_0^T\|u_t\|_2^2\quad\hbox{in }[0,\infty],}
 \tag{SH25}
\]
with every finite-\(h\) action at most the right side when finite. Its exact window multiplier is obtained by integrating the actual increment between \(t+hz,t+hw\); the intersection length is at most \(h|z-w|\). This gives \(\sigma^2/2\), with both initial and terminal strips retained. The kinetic-only bound is \(K^2(T-h)/(2h^2)\).

Whole-terminal convergence of nonlinear strain, pressure squares or differentiated actions does not follow from pointwise/strict-prefix convergence. Those operations need their actual uniform integrability or applicable stronger bounds. In particular SH23–25 are equivalent finite-membership criteria, not a producer of their finite right sides.

## Conditional return to the original first rectangle and traces

Define the native whole-target entry as the supremum of the original strict norms
\(\mathfrak R_{0,1}^*(u;T)=\sup_{b<T}[\|u\|_{L^2(0,b;H^2)}^2+
\|u_t\|_{L^2(0,b;L^2)}^2]\).
Suppose a uniform quotient or normalized-variance action has actually been supplied. SH23–25 then give \(A=\int_0^T\|u_t\|_2^2<\infty\). This suffices for the full first rectangle by the following newly derived consumer of the original coupled equation; it is not offered as a replacement producer.

Let \(G_2=\int_0^T\|g\|_2^2\), \(Y=\|\nabla u\|_2^2\), \(Z=\|Lu\|_2^2\). The actual radial Gram identity and complete enstrophy row give
\[
 \nu Y=-\langle u,u_t-g\rangle,\qquad
 P_2:=\int_0^TY^2\le \frac{2K^2}{\nu^2}(A+G_2),
\]
\[
 Y'/2+\nu Z=-\langle N(u,u),Lu\rangle+\langle g,Lu\rangle.
 \tag{SH26}
\]
With the original constants \(a=\mathsf S(3)\mathsf S(6)=\sqrt{2/3}/\pi\),
\(\|N(u,u)\|_2\le aY^{3/4}Z^{1/4}\). Absorbing each actual work term into \(\nu Z/4\) yields
\[
 Y'+\nu Z\le\frac{6}{\pi^4\nu^3}Y^3+\frac2\nu\|g\|_2^2.
 \tag{SH27}
\]
Since \(Y^3=Y^2Y\), SH26 supplies its integrable coefficient. The integrating factor gives
\[
 Y(t)+\nu\int_0^tZ\le
 L_T=\left[Y(0)+2G_2/\nu\right]\exp\!\left(\frac{6P_2}{\pi^4\nu^3}\right).
 \tag{SH28}
\]
Consequently
\(\|u\|_{L^2H^2}^2=\int(e+2Y+Z)\le TK^2+K^2/\nu+L_T/\nu\),
and \(\mathfrak R_{0,1}^*(u;T)<\infty\). The source's inhomogeneous norm and the datum \(Y(0)\) are retained. The complete physical gradient
\(\nabla p=(I-\mathbb P)(f-N(u,u))\) is \(L^2_tL^2_x\), because
\(\int\|N(u,u)\|^2\le a^2L_T\sqrt{(\int Y)(\int Z)}\).
The normalized scalar force potential remains. The canonical product also supplies the first pressure-rectangle norms, using the now finite velocity \(L^2H^2\) product bound and prescribed force-potential norms.

Temporal action constructs a strong \(L^2\) endpoint, hence \(\Delta_*=0\). The original adjacent trace lemma at \(m=1\), with the two now supplied faces \(u\in L^2H^2\), \(u_t\in L^2L^2\), gives a strong \(H^1\) endpoint and canonical pressure trace in \(L^2\). No full higher endpoint jet or restart has been inserted at this stage. Conversely the original first rectangle contains the temporal action, and therefore supplies the uniform quotient/variance actions. Within this actual-history class, these are equivalent finite-entry statements.

For adaptive shifts, fixed-shift identities acquire all speed and coefficient ports. In particular \(h=h(t)>0\) changes the difference row by the exact source
\[
 \frac{h'}h\{u_t(t+h)-d\},
 \tag{SH29}
\]
and a time-dependent \(h^{-2}\) normalization has its own weight derivative. Making \(h(t)\) shrink at the unknown terminal time does not authorize dropping these terms.

The compensated moving-step terms are likewise exact. With \(u_t^+=u_t(t+h)\), \(g^+=g(t+h)\) and \(H_1^+=(u_t-g)(t+h)\),
\[
 \frac{dG_h}{dt}=\delta_hg+\frac{h'}h(g^+-G_h),\qquad
 \frac{dH_h}{dt}=(\partial_tH_h)_{\text{fixed }h}
                    +\frac{h'}h(H_1^+-H_h),\qquad
 \frac{dm}{dt}=(\partial_tm)_{\text{fixed }h}+\frac{h'}2u_t^+.
\]
Including the derivative of the positive coefficient \(h^2/8\), the added work in SH13 is exactly
\[
 \frac{h'}2\langle m,u_t^+\rangle
       +\frac{hh'}4\langle H_h,H_1^+\rangle.
 \tag{SH30}
\]
The terms in \(\|H_h\|^2\) cancel between that coefficient derivative and the moving compensated source; the two displayed response pairings remain. Normalizing the whole stock by \(h^{-2}\) adds the further coefficient work \(-2h'E_c/h^3\). These identities hold only while both actual sample times remain in the original history domain, and supply no independent upper budget for those ports.

## Bounded result and verification

This real-shift method successfully avoids an analytic/factorial tower. It produces paid positive cancelling kinetic and compensated stocks, finite whole-shift nonlinear currents and exact endpoint accounting. Their derivative weight is \(h^2\). Positive normalized differences and covariance kernels retain first-row coercivity without analyticity, and their limiting membership is exactly characterized, but their complete strain survives. Universal intrinsic cancellation by the tested fixed finite or regular integral families returns the shifted kinetic stock and its sharp vanishing extraction coefficient. These classifications do not rule out special-history identities, adaptive weights with all ports retained, or another producer.

The unestablished step in this method test is a uniform normalized difference/variance budget on the original terminal domain, or another valid upper payment for the retained signed strain. The supplied kinetic/force cancellation gives an explicit \(h^{-2}\) upper price rather than that uniform budget. A supplied uniform action does yield the original first rectangle and its stated traces through SH23–28. This is a useful conditional chain, without presuming its antecedent.

Supporting executed derivations are [finite shifts](07-fixed-shift-matrix.md), [full pressure and force differences](08-difference-pressure-force.md), [shift kernels and covariance](09-shift-kernels-and-covariance.md), and [whole-domain endpoints and the first rectangle](11-fixed-shift-whole-domain.md). They include independent algebraic review and exact finite coefficient checks. There is no essential-source access blocker for this bounded test.
