# Actual finite time-shift matrix, exact differences and transport cancellation

6 October 2026. This new calculation uses actual values of one complete Navier–Stokes history at finitely many times. It uses no Taylor series or infinite derivative receiver. It distinguishes coefficient identities valid from incompressibility, identities universal in the arbitrary prescribed-force class, and additional relationships of a particular history.

## 1. Source identities and common strict window

The original [native assembly J1–J5, LF1450–1501](../SOURCES.md#src-native-assembly), supplies the full momentum and canonical pressure. Its [J10, LF1583–1605](../SOURCES.md#src-native-assembly) and [J13a–d, LF1656–1725](../SOURCES.md#src-native-assembly) give actual Gram, local pressure and complete corner operations. The [local combined forced history definition, LF60–88](../SOURCES.md#src-forced-setting), admits \(u_0\in H^\infty_\sigma\), \(\nu>0\), \(f\in C^\infty([0,\infty);\mathcal S)\). The following shift construction is derived from those equations; it is not being attributed as a printed manuscript definition or a public-version identity.

The original [kinetic identity and force budget, LF13–66](../SOURCES.md#src-compatible-rectangles), supplies the fixed separated-shift terminal-strip extension below.

Fix \(m\) real shifts \(s_i\). Let \([a,b]\) be a common strict window with
\[
 0\le a+s_i\le b+s_i<T_*,\qquad
 U_i(t)=u(t+s_i),\quad P_i(t)=p(t+s_i),\quad F_i(t)=f(t+s_i).
 \tag{SM1}
\]
Initially take the shifts distinct; repeated shifts are compressed below. With \(L=-\Delta\), \(\mathcal N(v,w)=(v\cdot\nabla)w\), the exact rows are
\[
 U_i'+\nu LU_i+B_i+\nabla P_i=F_i,\quad
 B_i=\mathcal N(U_i,U_i),\quad \operatorname{div}U_i=0,\quad
 P_i=R_kR_\ell(U_{i,k}U_{i,\ell})-L^{-1}\operatorname{div}F_i.
 \tag{SM2}
\]
The pressure is evaluated at the actual shifted time, including the prescribed-force potential. These indices label different physical times, not temporal derivative orders. In particular there is no common advector \(u(t)\) in SM2.

## 2. Full shift Gram, signed work, forces and pressure faces

For a real symmetric \(C^1\) weight \(Q(t)\), put
\[
\begin{gathered}
 C_{ij}=\langle U_i,U_j\rangle,\quad K_{ij}=\langle\nabla U_i,\nabla U_j\rangle,\quad
 E_Q=\tfrac12\sum_{i,j}Q_{ij}C_{ij},\\
 W_Q=\sum_{i,j}Q_{ij}\langle U_i,\mathcal N(U_j,U_j)\rangle,\qquad
 \mathcal F_Q=\sum_{i,j}Q_{ij}\langle U_i,F_j\rangle.
\end{gathered}\tag{SM3}
\]
The exact integrated full-space evolution is
\[
\begin{aligned}
 C_{ij}'+2\nu K_{ij}
 &=-\langle U_i,B_j\rangle-\langle B_i,U_j\rangle
                         +\langle U_i,F_j\rangle+\langle F_i,U_j\rangle,\\
 E_Q(b)+\nu\int_a^b Q:K\,dt
 &=E_Q(a)-\int_a^bW_Q\,dt+\int_a^b\mathcal F_Q\,dt
                                  +\tfrac12\int_a^bQ':C\,dt.
\end{aligned}\tag{SM4}
\]
Both stocks are at their shifted actual faces \(u(a+s_i),u(b+s_i)\). They are not all \(u_0\). For \(Q\succeq0\), \(E_Q\) and \(Q:K\) are positive; this gives no sign to \(W_Q\) or \(Q':C\).

Before spatial integration write \(e_Q=\frac12\sum Q_{ij}U_i\cdot U_j\), \(d_Q=\sum Q_{ij}\nabla U_i:\nabla U_j\). The complete local identity is
\[
 \partial_te_Q+\operatorname{div}\left(-\nu\nabla e_Q+
                                  \sum_{i,j}Q_{ij}P_jU_i\right)+\nu d_Q
 =-\sum_{i,j}Q_{ij}U_i\cdot B_j
       +\sum_{i,j}Q_{ij}U_i\cdot F_j+\tfrac12\sum_{i,j}Q_{ij}'U_i\cdot U_j.
 \tag{SM5}
\]
Thus a spatial selector retains the full pressure and diffusion faces, together with nonlinear transport fluxes when those are rewritten below. Global solenoidality is not used to delete a selected-region pressure face.

There is also the exact full pressure square. With \(D_{ij}=\langle LU_i,LU_j\rangle\),
\[
\begin{aligned}
 &\sum_{i,j}Q_{ij}\langle U_i',U_j'\rangle+\nu^2Q:D
 +\sum_{i,j}Q_{ij}\langle\nabla P_i,\nabla P_j\rangle
 +\nu(Q:K)'-\nu Q':K\\
 &\hspace{18mm}=\sum_{i,j}Q_{ij}\langle F_i-B_i,F_j-B_j\rangle.
\end{aligned}\tag{SM6}
\]
Its right side retains the complete force-force, force-nonlinear, nonlinear-force and nonlinear-nonlinear classes. Pressure cancels from first-power global energy pairings but remains in SM6's positive pressure Gram. Changing shift coordinates does not supply an upper bound for this full source square.

## 3. Complete coefficient cancellation class

Define the actual trilinear fields
\[
 T(r,j,k)=\langle U_r,\mathcal N(U_j,U_k)\rangle,\qquad
 T(r,j,k)=-T(k,j,r).
 \tag{SM7}
\]
The exact paired coefficient is
\[
 W_Q=\frac12\sum_{r,j,k=1}^m
        \left(Q_{rj}\mathbf1_{k=j}-Q_{kj}\mathbf1_{r=j}\right)T(r,j,k).
 \tag{SM8}
\]
For \(r\ne j=k\), the coefficient in parentheses is precisely \(Q_{rj}\). Its opposite paired slot is \(-Q_{rj}\); the term in the other symmetric matrix entry has a different advector and is not this partner. Therefore complete formal transport-coefficient cancellation using SM7 alone holds if and only if
\[
 Q_{ij}=0\quad(i\ne j).
 \tag{SM9}
\]
Sufficiency is the actual kinetic relation \(\langle U_i,\mathcal N(U_i,U_i)\rangle=0\). The formal class has dimension \(m\), with codimension \(m(m-1)/2\) in real symmetric weights. Its PSD members have nonnegative diagonal weights.

For repeated shifts let \(R_{ig}=1\) if \(s_i\) belongs to distinct-shift group \(g\), and zero otherwise. Since \(U=R\widetilde U\), the actual effective weight is \(\widetilde Q=R^TQR\). SM9 applies to \(\widetilde Q\). Nonzero off-diagonal entries of the uncompressed labeling can be invisible or combine into diagonal group weights; they are not additional independent-time cancellation.

This is not an assumption that values of one unforced solution at different times can be chosen independently. Particular histories, or weights chosen from the history with their full \(Q'\) port, can have extra relationships. A universal statement for prescribed weights in the arbitrary-force class is justified by the actual construction below.

## 4. A full NS construction proving the universal forced-class necessity

Let \(\phi=e^{-|x|^2}\) and use coordinates \(x,y,z\). Set
\[
\begin{aligned}
 Y&=\operatorname{curl}(0,0,\phi)=(-2y\phi,2x\phi,0),\\
 B&=\mathcal N(Y,Y)=-4\phi^2(x,y,0),\\
 C&=\operatorname{curl}B=16z\phi^2(-y,x,0)\ne0,\qquad
 X=\operatorname{curl}C.
\end{aligned}\tag{SM10}
\]
Both \(X,Y\) are real solenoidal Schwartz fields, and exact integration by parts gives
\[
 \langle X,\mathcal N(Y,Y)\rangle
 =\langle\operatorname{curl}C,B\rangle=\|C\|_2^2>0.
 \tag{SM11}
\]
Choose a time \(t_0\) so all \(t_0+s_i>0\). Distinct shifts admit smooth compact-time bump functions with disjoint small supports and cardinal values at these times. For any two indices \(i\ne j\), choose a smooth compact-time solenoidal \(u\) whose samples are \(U_i(t_0)=\alpha X\), \(U_j(t_0)=\beta Y\), and every other \(U_k(t_0)=0\). Define the prescribed force explicitly by
\[
 f=u_t+\nu Lu+\mathcal N(u,u),\qquad p=0,\qquad u_0=0.
 \tag{SM12}
\]
This is a globally smooth complete NS solution in the admitted class, rather than a simulated or scalar trajectory. Its canonical pressure is exactly zero: the solenoidal first two force terms have zero divergence and
\(L^{-1}\operatorname{div}\mathcal N(u,u)=R_kR_\ell(u_ku_\ell)\).
Every force, pressure and nonlinear parent is present.

Its actual contracted current at \(t_0\) is
\[
 W_Q(t_0)=Q_{ij}\alpha\beta^2\|C\|_2^2
       +Q_{ji}\alpha^2\beta\,\langle Y,\mathcal N(X,X)\rangle.
 \tag{SM13}
\]
A prescribed symmetric weight that cancels universally for all admitted forces must cancel this polynomial for every \(\alpha,\beta\). The nonzero \(\alpha\beta^2\) coefficient forces \(Q_{ij}=0\). Applying this to each pair proves SM9 as a universal forced-class identity as well as a formal coefficient identity. A prescribed time-dependent \(Q(t)\) is tested at \(t_0\) in the same way. This argument does not classify history-adaptive weights, nor rule out additional unforced or special-history identities.

## 5. Genuine relative-strain and graph regrouping

For \(\Delta_{ij}=U_j-U_i\), the full two-source difference is
\[
 B_j-B_i=\mathcal N(U_j,\Delta_{ij})+\mathcal N(\Delta_{ij},U_i).
 \tag{SM14}
\]
With \(S(v,d,d)=\langle d,\mathcal N(d,v)\rangle\), incompressibility gives the exact regrouping
\[
\begin{aligned}
 \langle U_i,B_j\rangle+\langle U_j,B_i\rangle
 &=-S(U_i,\Delta_{ij},\Delta_{ij})\\
 &=-S((U_i+U_j)/2,\Delta_{ij},\Delta_{ij}),\\
 W_Q&=-\sum_{i<j}Q_{ij}S((U_i+U_j)/2,\Delta_{ij},\Delta_{ij}).
\end{aligned}\tag{SM15}
\]
The two receiving histories therefore leave an actual relative strain, with no pressure-Hessian sign assumption. For \(\sigma_i=\sum_jQ_{ij}\), the exact matrix decomposition is
\[
 Q=\operatorname{diag}(\sigma_i)
       +\sum_{i<j}(-Q_{ij})(e_i-e_j)(e_i-e_j)^T.
 \tag{SM16}
\]
It expresses the stock as shifted kinetic stocks plus actual relative energies. If the edge weights are nonnegative their relative energies are positive, but their SM15 strains still have no sign. A general PSD matrix need not have nonnegative edge weights.

For two shifts separated by \(h>0\), put
\(M=(U_0+U_1)/2\), \(D=(U_1-U_0)/h\),
\(\bar P=(P_0+P_1)/2\), \(P_D=(P_1-P_0)/h\), with corresponding \(\bar F,F_D\). Their exact rows are
\[
\begin{aligned}
 M'+\nu LM+\mathcal N(M,M)+\tfrac{h^2}{4}\mathcal N(D,D)+\nabla\bar P&=\bar F,\\
 D'+\nu LD+\mathcal N(M,D)+\mathcal N(D,M)+\nabla P_D&=F_D.
\end{aligned}\tag{SM17}
\]
The canonical pressures are respectively \(R_kR_\ell(M_kM_\ell+h^2D_kD_\ell/4)-L^{-1}\operatorname{div}\bar F\) and \(R_kR_\ell(M_kD_\ell+D_kM_\ell)-L^{-1}\operatorname{div}F_D\).

For the complete symmetric mean/difference weight \(P=\left(\begin{smallmatrix}\alpha&\gamma\\\gamma&\beta\end{smallmatrix}\right)\), the nonlinear energy work is \((\beta-\alpha h^2/4)S(M,D,D)\); the cross coefficient \(\gamma\) has zero nonlinear work. Cancellation holds precisely when
\[
 \beta=\alpha h^2/4,\quad
 Q=\operatorname{diag}(\alpha/2-\gamma/h,\alpha/2+\gamma/h).
 \tag{SM18}
\]
PSD then requires \(\alpha\ge0\), \(|\gamma|\le\alpha h/2\). This is a real positive cancellation in transformed coordinates, exactly diagonal shifted kinetic energy. Its complete force work is
\(\alpha\langle M,\bar F\rangle+\gamma(\langle M,F_D\rangle+\langle D,\bar F\rangle)+\beta\langle D,F_D\rangle\);
when SM18 holds this equals \(\sum_iQ_{ii}\langle U_i,F_i\rangle\).

## 6. Exact finite-difference congruence and shifted product rules

On the fixed grid \(s_j=jh\), \(j=0,\ldots,N\), \(h>0\), take \(b+Nh<T_*\). Let \(\mathsf E_hv(t)=v(t+h)\), \(\delta_h=(\mathsf E_h-I)/h\). Define the actual finite differences
\[
 D_r=\delta_h^ru=\sum_{j=0}^r h^{-r}(-1)^{r-j}\binom rjU_j,
 \quad D=A_hU,\quad
 U_j=\sum_{r=0}^j\binom jr h^rD_r.
 \tag{SM19}
\]
The last identity is finite binomial inversion, not Taylor expansion. It applies to arbitrary sampled fields. The complete transformed rows retain
\[
 D_r'+\nu LD_r+\delta_h^r\mathcal N(u,u)
                     +\nabla\delta_h^rp=\delta_h^rf.
 \tag{SM20}
\]
The exact ordered product rules are
\[
\begin{aligned}
 \delta_h^r\mathcal N(u,u)
 &=\sum_{\ell=0}^r\binom r\ell
       \mathcal N(\delta_h^\ell u,\mathsf E_h^\ell\delta_h^{r-\ell}u)\\
 &=\sum_{\ell=0}^r\binom r\ell
       \mathcal N(\mathsf E_h^{r-\ell}\delta_h^\ell u,\delta_h^{r-\ell}u).
\end{aligned}\tag{SM21}
\]
All samples lie between \(t\) and \(t+rh\). The shifts of one factor are essential. Replacing them by unshifted derivative-like factors changes the actual nonlinear row.

Pressure has the same exact product allocations,
\[
 \delta_h^rp=
 R_kR_\ell\sum_{a=0}^r\binom ra
       (\delta_h^au_k)(\mathsf E_h^a\delta_h^{r-a}u_\ell)
                         -L^{-1}\operatorname{div}\delta_h^rf.
 \tag{SM22}
\]
The nonlinear parents and both pressure/source projections remain complete. The prescribed-force differences also have the exact fundamental-theorem representation
\(\delta_h^rf(t)=\int_{[0,1]^r}f^{(r)}(t+h\sum_j\theta_j)\,d\theta\);
this is a finite iterated integral, not a Taylor-series assumption.

For any finite linear stencil \(Y=AU\), its Gram and weight satisfy
\[
 C_Y=AC_UA^T,\qquad Q=A^TPA,\qquad
 \sum_{r,s}P_{rs}\langle Y_r,(AB)_s\rangle=W_Q.
 \tag{SM23}
\]
For invertible \(A\), the exact full nonlinear coordinates can equivalently be written
\[
 (AB)_r=\sum_{\ell,k}\Gamma_{r,\ell,k}\mathcal N(Y_\ell,Y_k),
 \qquad
 \Gamma_{r,\ell,k}=\sum_jA_{rj}(A^{-1})_{j\ell}(A^{-1})_{jk}.
 \tag{SM24}
\]
Thus a real finite grid polynomial or interpolation change has every ordered parent and no artificial fluid truncation. Its universal/formal cancellation condition is precisely that \(A^TPA\) be diagonal on distinct shifts. For the invertible difference basis the full class is \(P=A_h^{-T}\operatorname{diag}(q_j)A_h^{-1}\); PSD is equivalent to \(q_j\ge0\). Nonzero cross weights in this basis can cancel, but their stock is still shifted kinetic energy.

A differences-only stencil satisfies \(A\mathbf1=0\). Its effective weight \(Q=A^TPA\) therefore satisfies \(Q\mathbf1=0\). If it is also cancelling, SM9 makes it diagonal and hence zero. Consequently no nonzero physical difference-only stock has complete formal transport cancellation by these constant linear-stencil operations.

If \(A(t)\) varies on fixed shifts, SM20 acquires \(A'(t)U\); the effective derivative is
\(Q'=A'^TPA+A^TP'A+A^TPA'\).
If the shifts themselves vary, \(U_i'=(1+s_i')u_t(t+s_i)\), so the speed multiplies the entire original viscosity, nonlinear, pressure and forcing row. The fixed-shift identities are not reused while omitting either port.

## 7. Exact extraction cost and bounded outcome

For a diagonal cancelling weight \(q_j>0\), the optimal coefficient in the Hilbert-space inequality for any stencil \(c\) is
\[
 \kappa_c\left\|\sum_jc_jU_j\right\|_2^2
 \le\sum_jq_j\|U_j\|_2^2,\qquad
 \kappa_c=\left(\sum_j\frac{c_j^2}{q_j}\right)^{-1}.
 \tag{SM25}
\]
If a nonzero \(c_j\) has zero weight, the coefficient is zero. For the \(r\)th forward difference and total diagonal mass \(\mathfrak m=\sum q_j\), exact weighted Cauchy–Schwarz gives
\[
 \kappa_{\delta_h^r}\le\frac{\mathfrak m h^{2r}}{4^r},\qquad
 \kappa_{\delta_h}=\frac{h^2q_0q_1}{q_0+q_1}.
 \tag{SM26}
\]
The general bound follows from \(\sum|c_j|=2^rh^{-r}\), and is attained when the weights on that stencil are proportional to \(|c_j|\), with no mass outside its support. Off-stencil mass can make the inequality strict. This concerns the diagonal cancellation class; no upper bound on the optimal coefficient for every PSD matrix is being asserted by SM26.

Actual shifted kinetic control \(\|U_j\|_2\le K\) gives \(\|D_r\|_2\le2^rK h^{-r}\), with the same explicit powers in gradient actions. A fixed \(N,h\) yields finite positive stocks from original kinetic/source budgets on its actual windows. With bounded diagonal mass, the derivative extraction coefficient vanishes as \(h\downarrow0\). A weight rescaling that maintains it introduces its actual stock/source price and any moving-weight work. Finite differences approach actual derivatives on each fixed classical strict window by the fundamental theorem; this does not turn the displayed kinetic estimate into a terminal-uniform derivative or source-square bound.

## 8. A genuine fixed-separated-shift terminal-strip extension

Suppose \(T_*<\infty\), fix the distinct shifts, and let \(s_\star=\max s_i\), \(b_\star=T_*-s_\star>a\). Put
\[
 g=\mathbb Pf,\qquad K=\|u_0\|_2+\int_0^{T_*}\|g(t)\|_2\,dt.
 \tag{SM27}
\]
The original kinetic identity, first on strict prefixes and then by monotone convergence of its positive action, gives \(\sup_{t<T_*}\|u(t)\|_2\le K\), \(\int_0^{T_*}\|\nabla u\|_2^2\le K^2/(2\nu)\).

For \(i\ne\star\), the entire translated interval ends at \(T_*-(s_\star-s_i)<T_*\). Its fields therefore have bounded \(H^\infty\) norms from the actual strict history. The two complete off-diagonal currents involving the terminal field have exact bounds
\[
 |\langle U_i,B_\star\rangle|\le K^2\|\nabla U_i\|_\infty,\qquad
 |\langle U_\star,B_i\rangle|\le K\|B_i\|_2.
 \tag{SM28}
\]
The first is obtained by integration by parts before estimating the full two-parent product. Both right sides are uniformly finite at these fixed separated shifts; the remaining off-diagonal pairs have two strict smooth parents. Thus every off-diagonal current is absolutely integrable on \([a,b_\star)\), while every diagonal current is exactly zero. For any bounded fixed-shift matrix \(Q(t)\), the full \(W_Q\) is consequently integrable on this strip. If also \(Q'\in L^1\) and \(Q\) has a finite terminal value, SM4 retains a well-defined full terminal stock. These constants can grow as any shift gap approaches zero; no uniform gap estimate has been produced.

The terminal velocity trace can also be derived on this same history. For a smooth solenoidal test \(\varphi\), the full projected equation, after its actual pressure pairing cancels, gives
\[
 |\langle u_t,\varphi\rangle|
 \le\nu\|\nabla u\|_2\|\nabla\varphi\|_2
             +K^2\|\nabla\varphi\|_\infty+\|g\|_2\|\varphi\|_2.
 \tag{SM29}
\]
Its time integral is finite by the kinetic action, finite \(T_*\) and prescribed force. Scalar test pairings therefore have limits. The bounded \(L^2_\sigma\) family and density of smooth solenoidal tests give one weak \(L^2\) terminal velocity \(u_{\rm w}\). The kinetic derivative \(e'=-2\nu\|\nabla u\|_2^2+2\langle u,g\rangle\) is in \(L^1\), so \(e_\star=\lim_{t\uparrow T_*}\|u(t)\|_2^2\) exists with \(e_\star\ge\|u_{\rm w}\|_2^2\).

The complete finite shift Gram consequently has the exact terminal limit
\[
 C_{\rm term}=\operatorname{Gr}(\widetilde U_i)
            +(e_\star-\|u_{\rm w}\|_2^2)e_\star^{\rm idx}
                                           (e_\star^{\rm idx})^T,
 \quad
 \widetilde U_i=u(T_*-(s_\star-s_i))\ (i\ne\star),\quad
 \widetilde U_\star=u_{\rm w}.
 \tag{SM30}
\]
Here \(e_\star^{\rm idx}\) is the coordinate vector of the unique largest shift, not the scalar kinetic limit. Every lower endpoint is a strict strong endpoint; only the largest shift can retain this kinetic strong-trace defect. The same conclusion follows for entrywise existence from the integrable SM4 matrix derivative: viscous cross terms are integrable, forces are prescribed, and SM28 pays the nonlinear crosses.

For two fixed separated shifts, SM15 becomes
\[
 h^2S(M,D,D)=-
   \{\langle U_0,B_1\rangle+\langle U_1,B_0\rangle\},
 \tag{SM31}
\]
so the actual full relative strain is integrable on the whole shift strip. This is a genuine fixed-\(h\) payment, not a uniform bound as \(h\to0\). The global argument preserves SM5's local pressure flux; it supplies no terminal pressure-gradient square or highest nonlinear \(L^2\) source-square bound in SM6. No future continuation past \(T_*\) is used.

## 9. Exact checks and scope

The exact [symbolic checks](../checks/fixed-shifts/validate.py) and [results](../checks/fixed-shifts/coefficient-check.json) verify the transport half-sum, coefficient classification, finite binomial inversion, both ordered product rules and a cancelling congruence for grids through \(N=6\), using rational arithmetic. They also check the explicit Gaussian field polynomials in SM10 and the nonzero curl used by the actual NS necessity construction. They simulate no history and assume no scalar trajectory.

The finite result is complete for these operations: actual shifted diagonal energy, its exact congruent positive forms and its finite-difference product algebra, together with the proved fixed-separated-shift terminal-strip integrability and Gram limit. Off-diagonal physical shift weights retain the full relative strain SM15; differences-only complete coefficient cancellation is trivial. The universal necessity is proved in the full arbitrary-force class, with pressure intact, and is not imported to a single unforced history or an adaptive coefficient construction. Every force, local pressure face, moving port and shifted initial/current endpoint remains as displayed. No gap-uniform upper payment of the intrinsic source square or regularized joint strain is inferred from the finite cancellation alone.
