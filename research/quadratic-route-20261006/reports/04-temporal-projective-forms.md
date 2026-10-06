# Actual all-depth temporal cancellation and positive projective weights

This calculation prolongs the original temporal jet to arbitrary finite depth. It proves its precise factorial Hankel cancellation, constructs the general positive coefficient form without assuming a measure, and identifies both a uniformly coercive infinite coefficient class and the stronger derivative growth required to bound its actual receivers. It keeps the finite nonlinear boundary, forcing, pressure flux and coefficient derivatives. An explicit globally smooth admitted forced Navier–Stokes history tests the proposed weight class; it is not a counterexample to regularity.

## Sources, domain and exact finite object

* [Forced native assembly](../SOURCES.md#src-native-assembly), J1–J5, LF1454–1504; actual Gram evolution J10, LF1581–1605; complete height/work relations J11–J13, LF1607–1658; local flux J13a, LF1660–1680; and corner J13c–d, LF1698–1725..
* [Unified forced setting](../SOURCES.md#src-forced-setting), actual class (f\in C^\infty([0,\infty);\mathcal S)), classical strict-prefix history, LF66–104; complete recurrences and pressure, LF116–164..
* [Unified forced rectangles](../SOURCES.md#src-compatible-rectangles), complete first temporal/viscous/pressure square, LF189–251..

All finite identities first hold on \([0,B]\), \(B<T_*\), for this actual pressure-complete history on \(\mathbb R^3\), with the stipulated Sobolev regularity and justified full-space integration. Set \(A=-\Delta\), \(N(a,b)=(a\cdot\nabla)b\), \(V_n=\partial_t^n u\), \(F_n=\partial_t^n f\), and \(\pi_n=\partial_t^n p\). The original equation is
\[
 V_{n+1}+\nu AV_n+B_n+\nabla\pi_n=F_n,\qquad
 B_n=\sum_{a=0}^n\binom na N(V_a,V_{n-a}),\qquad \operatorname{div}V_n=0.
 \tag{HP1}
\]
Every pressure is complete:
\[
 \pi_n=R_iR_j\sum_{a=0}^n\binom na V_{a,i}V_{n-a,j}-A^{-1}\operatorname{div}F_n.
 \tag{HP2}
\]
Depth is derivative order at the same physical time. None of these operations advances the history beyond \(B\).

For a real sequence \(m_k\), define the finite coefficient matrices
\[
 H_N=(m_{i+j})_{0\le i,j\le N},\qquad
 Q_N=\left(\frac{m_{i+j}}{i!j!}\right)_{0\le i,j\le N}.
 \tag{HP3}
\]
\(H_N\) is PSD exactly when \(Q_N\) is PSD, by diagonal congruence. A fixed sequence defines projectively consistent principal restrictions. This is a condition on a coefficient form, distinct from positivity of the actual fluid Gram.

## Complete finite cancellation, including its nonlinear boundary

Write
\(T(i,a,c)=\langle V_i,N(V_a,V_c)\rangle\). Full-space incompressibility gives
\(T(i,a,c)=-T(c,a,i)\). The complete contracted nonlinear work is
\[
 \begin{split}
 P_N&=\sum_{i,j=0}^N\frac{m_{i+j}}{i!j!}\langle V_i,B_j\rangle\\
 &=\sum_{i\le N,\ a+c\le N}\frac{m_{i+a+c}}{i!a!c!}T(i,a,c)\\
 &=\boxed{\sum_{0\le c<i\le N}\ \sum_{a=N-i+1}^{N-c}
 \frac{m_{i+a+c}}{i!a!c!}T(i,a,c).}
 \end{split}
 \tag{HP4}
\]
Indeed the first two restrictions can be compared with their receiver/last-slot exchange. Their antisymmetric difference is nonzero exactly when \(a+c\le N<a+i\), or the exchanged condition. This proves cancellation for every total degree \(i+a+c\le N\); every remaining degree lies in \(N+1,\ldots,2N\). No sign is assigned to these remaining terms.

For example, putting \(D=(\nabla u+\nabla u^T)/2\),
\[
 P_1=m_2 S(u,V_1,V_1),\qquad
 P_2=m_3\langle V_1,DV_2\rangle+
 \frac{m_4}{4}\{S(u,V_2,V_2)+2\langle V_2,N(V_1,V_1)\rangle\}.
 \tag{HP5}
\]
Here \(S(u,a,b)=\int a^TDb\), with the identical-slot convention \(S(u,a,a)=\langle a,N(a,u)\rangle\). This is the genuine lower temporal strain cancellation, with the full higher curvature retained. It is not a replacement of the highest row by a prescribed forcing field.

The finite energy and gradient action satisfy original J10:
\[
 E_N=\frac12\sum_{i,j\le N}Q_{ij}\langle V_i,V_j\rangle,\quad
 D_N=\sum_{i,j\le N}Q_{ij}\langle\nabla V_i,\nabla V_j\rangle,
 \quad E_N'+\nu D_N=-P_N+\sum_{i,j\le N}Q_{ij}\langle V_i,F_j\rangle.
 \tag{HP6}
\]
Its integrated law keeps \(E_N(B)\), \(E_N(0)\), all \(D_N\), the signed boundary work (HP4), and every force derivative. Force work is not cancelled by the intrinsic antisymmetry.

## Positive form and legitimate Hilbert receivers

Assume now that every finite \(H_N\) is PSD. Define on finite real polynomials
\[
 \langle x^i,x^j\rangle_m=m_{i+j},\qquad
 \left\|\sum c_i x^i\right\|_m^2=\sum c_ic_jm_{i+j}.
 \tag{HP7}
\]
Quotient by its nullspace and complete. This constructs a Hilbert space \(\mathcal H_m\) and moment vectors \(e_i=[x^i]\) with
\(\langle e_i,e_j\rangle=m_{i+j}\). No measure representation is needed. A null polynomial \(p\) also has \(xp\) null: \(\|xp\|_m^2=\langle p,x^2p\rangle_m=0\) by Cauchy–Schwarz. Thus even the formal polynomial shift is well-defined on this quotient, without asserting a bounded shift or self-adjoint extension.

Finite PSD alone must not be silently replaced by a represented moment sequence. For example,
\[
 (m_0,m_1,m_2,m_3,m_4)=(1,1,1,1,2),\qquad
 H_2=\begin{pmatrix}1&1&1\\1&1&1\\1&1&2\end{pmatrix}\succeq0.
 \tag{HP8}
\]
If it were represented by a positive measure, \(\int(x-1)^2=0\) would force support at \(1\), contradicting \(m_4=2\). This is a coefficient-form example, not a fluid trajectory.

Define actual finite receivers in \(L^2_x\otimes\mathcal H_m\):
\[
 Z_N=\sum_{n=0}^N\frac{V_n}{n!}\otimes e_n,\quad
 \mathfrak F_N=\sum_{n=0}^N\frac{F_n}{n!}\otimes e_n,\quad
 \mathfrak B_N=\sum_{n=0}^N\frac{B_n}{n!}\otimes e_n,\quad
 \mathfrak\Pi_N=\sum_{n=0}^N\frac{\pi_n}{n!}\otimes e_n.
 \tag{HP9}
\]
Then \(2E_N=\|Z_N\|^2\), \(D_N=\|\nabla Z_N\|^2\), and the exact row is
\[
 (Z_N)_t+\nu AZ_N+\mathfrak B_N+\nabla\mathfrak\Pi_N=\mathfrak F_N.
 \tag{HP10}
\]
The derivative includes the actual \(V_{N+1}\) face, not a truncated evolution. The positive square preserves the original pressure:
\[
 \|(Z_N)_t\|^2+\nu^2\|AZ_N\|^2+\|\nabla\mathfrak\Pi_N\|^2
 +\nu(\|\nabla Z_N\|^2)'=\|\mathfrak F_N-\mathfrak B_N\|^2.
 \tag{HP11}
\]
The signed cancellation in (HP4) does not cancel the full source square on this right side.

## Necessary diagonal cost and derivative growth

Let \(m_0>0\), \(m_2>0\), and \(r=\sqrt{m_2/m_0}\). The two-vector minors for \(e_{n-1},e_{n+1}\) give
\[
 m_{2n}^2\le m_{2n-2}m_{2n+2},\qquad
 m_{2n}\ge m_0r^{2n},\qquad
 (Q_N)_{nn}\ge\frac{m_0r^{2n}}{(n!)^2}\quad(n\le N).
 \tag{HP12}
\]
Positivity first excludes a zero even moment after \(m_2>0\); increasing even-moment ratios then proves the lower bound. Nontrivial first-temporal weight therefore incurs at least geometric, factorial-scaled diagonal cost at all orders. Arbitrarily rapid independent diagonal decay is incompatible with the Hankel cancellation.

For any Hilbert norm \(X\) on the actual field variable, suppose **every prefix** obeys \(\|Z_N\|_{X\otimes\mathcal H_m}\le C\). Subtract adjacent prefixes, rather than assuming the columns are orthogonal:
\[
 \frac{\sqrt{m_{2n}}}{n!}\|V_n\|_X
 =\|Z_n-Z_{n-1}\|\le2C,
 \qquad
 \boxed{\|V_n\|_X\le\frac{2C}{\sqrt{m_0}}n!r^{-n}.}
 \tag{HP13}
\]
This applies to a pointwise norm, a uniform-in-time norm, or an \(L^2_t\) norm when that is the specified bounded-prefix topology. Cauchy convergence gives this necessary bound and also makes the left adjacent increments tend to zero. Uniform boundedness alone does not prove Cauchy convergence.

A factorial jet bound at just one time is not by itself analyticity of the actual function near that time; a flat smooth function illustrates the distinction. If (HP13) holds uniformly on a neighborhood, Taylor's integral remainder proves temporal analyticity there for increments \(<r\). The original \(C^\infty\) source assumption contains no such derivative-order uniformity.

If \(m_0=0\), all \(m_j=0\). If \(m_0>0\) but \(m_2=0\), \(e_1=0\) implies \(m_j=0\) for every \(j\ge1\) by its pairings with all \(e_n\). This trivial infinite form retains only kinetic velocity and provides no temporal-row coercivity.

## Low-row coercivity: a genuine feasible infinite class

A single correlated completed square need not dominate each field. The exact test for the first coefficient is
\[
 \kappa_{1,N}=\inf\{z^TH_Nz:z_1=1\},\qquad
 \kappa_{1,N}\downarrow\kappa_{1,\infty}\ge0.
 \tag{HP14}
\]
Equivalently this is the squared distance of \(e_1\) from the span of all other selected \(e_j\). It gives
\(\|Z_N\|^2\ge\kappa_{1,N}\|V_1\|^2\), including vector fields. For invertible \(H_N\), it equals \(1/(H_N^{-1})_{11}\). The variational definition remains valid for singular forms. The corresponding definition with \(z_0=1\) tests the velocity coefficient; other linear functionals, including \(\lambda z_0+z_1\), have their own dual-form test. No uniform low-row coercivity follows merely from PSD.

There are, however, nontrivial infinite forms that are uniformly low-row coercive. Fix \(q>1\) and use the explicit symmetric lognormal law \(\theta=\pm e^X\), where the signs have equal probability and \(X\) is a centered normal variable with variance \(\log q/2\). Its actual moments are
\[
 m_{2n}=q^{n^2},\qquad m_{2n+1}=0.
 \tag{HP15}
\]
This particular representation proves positivity directly; it is not a representation assumed for the general form (HP7). Its odd basis \(\theta^{2j+1}\), \(0\le j\le K\), has Gram
\[
 G^{\rm odd}_{jk}=q^{(j+k+1)^2}=qD_jt^{jk}D_k,
 \quad D_j=q^{j^2+2j},\quad t=q^2.
 \tag{HP16}
\]
For the Vandermonde matrix \(V_{jk}=t^{jk}\), Lagrange interpolation at nodes \(1,t,\ldots,t^K\) gives
\((V^{-1})_{00}=\prod_{k=1}^K(1-t^{-k})^{-1}\): it is the constant coefficient of the cardinal polynomial at the node \(1\). Thus
\[
 \kappa_{1,N}=q\prod_{k=1}^{\lfloor(N-1)/2\rfloor}(1-q^{-2k})\longrightarrow qP>0,
 \quad P=\prod_{k=1}^\infty(1-q^{-2k})>0.
 \tag{HP17}
\]
The even basis similarly gives
\(\kappa_{0,N}=\prod_{k=1}^{\lfloor N/2\rfloor}(1-q^{-2k})\to P>0\). Hence the actual receiver satisfies
\[
 \|Z_N\|^2\ge P\|u\|^2+qP\|V_1\|^2,
 \qquad
 \|\nabla Z_N\|^2\ge P\|\nabla u\|^2+qP\|\nabla V_1\|^2.
 \tag{HP18}
\]
The two bounds in (HP18) concern \(N\ge1\); the \(N=0\) selection contains only velocity. This proves a feasible coercive coefficient class. It does not prove that the original history has a bounded or convergent receiver. In this class (HP13) strengthens to
\(\|V_n\|_X\le2C n!q^{-n^2/2}\), a much stronger order restriction than a fixed analytic radius.

## The original gradient rectangle and full convergence obligations

The native first rectangle \(\mathfrak R^f_{0,1}(I)\) requires
\(u\in L^2(I;H^2)\) and \(u_t\in L^2(I;L^2)\). The temporally coercive energy (HP18) supplies a direct \(V_1\) norm only **if its actual stock/action is uniformly bounded**. Its gradient action contains one spatial derivative; it is not directly the \(Au\) square. Two direct native ways that spatial face enters are:

1. In the pressure-complete square (HP11), a bound on its complete source square and initial gradient stock pays \(AZ_N\) and \((Z_N)_t\). Its \(N=0\) row already contains \(m_0\|Au\|^2\) and \(m_0\|u_t\|^2\). The right side still includes the full nonlinear source.
2. Apply a paid mixed Gram action to the actual first spatial fields \(J_{0,e_j}\); its summed gradient action is \(\sum_j\|\nabla\partial_j u\|^2=\|Au\|^2\). Those rows bring all original spatial Leibniz/pressure terms. The purely temporal cancellation (HP4) does not cancel those extra allocations.

These are direct meanings of original J2/J10/J13c–d and the square, not assumed budgets for the first rectangle. They are not the only lawful conditional conversion. In fact a **paid uniform low-coefficient stock** is sufficient through the same original momentum. Put \(h=u_t-g\), \(g=\mathbb Pf\), and suppose \(\sup_{t<T_*}\|h(t)\|_2\le H\) has actually been established on a finite horizon. Kinetic control \(\|u\|_2\le K\), with the exact \(h=-\nu Au-\mathbb PB\), gives
\[
 Y=\|\nabla u\|_2^2=-\langle u,h\rangle/\nu\le KH/\nu.
\]
Writing \(C_S=S_6^{3/2}\), where \(\|v\|_6\le S_6\|\nabla v\|_2\), Hölder and interpolation applied to the actual full convection give
\[
 \|B\|_2\le C_S Y^{3/4}\|Au\|_2^{1/2},\qquad
 \nu\|Au\|_2\le H+C_S Y^{3/4}\|Au\|_2^{1/2},\qquad
 \|Au\|_2\le\frac{2H}{\nu}+\frac{C_S^2Y^{3/2}}{\nu^2}.
 \tag{HP18a}
\]
Thus the original \(\mathfrak R^f_{0,1}\) is bounded on that finite horizon: \(u_t=h+g\), while the zeroth and first spatial norms are kinetic/stock paid. A paid bound on \(V_1\) likewise bounds \(h\) after subtracting the prescribed \(g\). The pressure face remains exact:
\[
 h+B=-\nu Au-\nabla p_0,\quad p_0=R_iR_j(u_iu_j),\qquad
 \|h+B\|_2^2=\nu^2\|Au\|_2^2+\|\nabla p_0\|_2^2.
 \tag{HP18b}
\]
The physical force-potential part is still \(p=p_0-A^{-1}\operatorname{div}f\). This is a conditional operator conversion using the original coupled equation, not a supplied rectangle or a proof of the weighted stock bound. The missing input in this execution is the legitimate uniform budget for that coercive stock, including its full nonlinear boundary and force, rather than a claim that temporal coercivity cannot yield the spatial rectangle.

An infinite operation needs actual topologies. For fixed \(m\), convergence of \(Z_N\) in \(L^2_tL^2_x(\mathcal H_m)\), and of \(\mathfrak F_N\) in the same space, suffices for their paired force work. A stronger sufficient condition is absolute norm convergence
\(\sum_n\sqrt{m_{2n}}\|V_n\|_X/n!<\infty\), and its force/gradient/derivative counterparts in the corresponding spaces. These are sufficient conditions, not automatic consequences of PSD or \(C^\infty\).

Complete global trilinear cancellation by regrouping the infinite sums is justified, for example, by
\[
 \sum_{i,a,c\ge0}\frac{|m_{i+a+c}|}{i!a!c!}
 \int_0^B\int_{\mathbb R^3}|V_i|\,|V_a|\,|\nabla V_c|\,dx\,dt<\infty.
 \tag{HP19}
\]
Then Fubini and the exact receiver/last-slot antisymmetry give zero nonlinear work. This is stronger than ordered Hilbert convergence of \(Z_N\). Alternatively one can prove the **signed** boundary (HP4) tends to zero in distributions directly; absolute Fubini is not necessary if that passage is independently justified. Cauchy convergence of the receiver alone proves neither passage, nor convergence of its differentiated source, nor elimination of the nonlinear boundary.

For a time test \(\phi\in C_c^1(0,B)\), the exact finite statement is
\[
 -\int\phi'E_N+\nu\int\phi D_N
 =-\int\phi P_N+\int\phi\langle Z_N,\mathfrak F_N\rangle.
 \tag{HP20}
\]
Allowing endpoint values retains \([\phi E_N]_0^B\). An infinite signed cancellation follows from (HP20) only with the displayed stock/action/force convergence and a verified boundary limit. It does not manufacture those hypotheses.

## Complete local pressure and coefficient ports

For local fields put \(d=i+a+c\), \(w_{iac}=m_d/(i!a!c!)\), and \(I_{iac}=\mathbf1_{i\le N,a+c\le N}\). The pointwise nonlinear density splits exactly as
\[
 \sum I_{iac}w_{iac}V_i\cdot N(V_a,V_c)
 =r_N+\tfrac12\operatorname{div}\mathcal F_N,\quad
 r_N=\tfrac12\sum (I_{iac}-I_{cai})w_{iac}V_i\cdot N(V_a,V_c),
\]
\[
 \mathcal F_N=\sum I_{iac}w_{iac}V_a(V_i\cdot V_c).
 \tag{HP21}
\]
Here \(\int r_N=P_N\). Writing \(e_N=\|Z_N(x)\|^2/2\), the local law is
\[
 \partial_t e_N+\operatorname{div}\left(\tfrac12\mathcal F_N-\nu\nabla e_N
 +\sum_{i,j\le N}Q_{ij}\pi_jV_i\right)
 =-\nu\|\nabla Z_N\|^2-r_N+\sum_{i,j\le N}Q_{ij}V_i\cdot F_j.
 \tag{HP22}
\]
Thus spatial localization retains the nonlinear transport and complete pressure fluxes. A selector \(\zeta\) contributes \(\zeta_t e_N\), \(\nu\Delta\zeta\,e_N\), and \(\nabla\zeta\) paired with both other displayed fluxes. Global pressure orthogonality is not a local disappearance.

For \(C^1\) time-varying moments with every instantaneous \(H_N(t)\succeq0\), the same finite cancellation holds instantaneously, but (HP6) gains
\[
 \tfrac12\sum_{i,j\le N}\frac{m_{i+j}'(t)}{i!j!}\langle V_i,V_j\rangle.
 \tag{HP23}
\]
The square acquires \(\nu\int\operatorname{tr}(Q_N'K_N)\) after integration. If a differentiable factorization \(Q_N=L_N^TL_N\) is chosen, its actual receiver has source \(L_NF+L_N'V\), including every cross-source and \(\|L_N'V\|^2\) term in the square. Positivity alone neither chooses a differentiable factorization at rank loss nor controls these ports.

A scalar multiplier \(a(t)\) of a fixed moment form contributes \(a'E_N\). A decreasing multiplier may aid one signed term but reduces terminal coercivity if it vanishes. Adaptive moments retain (HP23) and require a lower bound on the actual coefficient-functional distance (HP14). Depth-dependent matrices without consistent principal restrictions do not define the receiver (HP9) in one fixed Hilbert space; adjacent-prefix subtraction then introduces a change-of-weight term. Making \(m_2^{(N)}\to0\) loses first-row weight, whereas allowing \(m_0^{(N)}\to\infty\) changes the datum stock and its uniformity. These are precise changes of obligations, not an impossibility assertion about all adaptive finite constructions.

There is also a concrete extension cost for the successful earlier moving temporal block. Its moments are \(m_0=\lambda^2+a\), \(m_1=\lambda\), \(m_2=1\), \(m_3=0\), \(m_4=4c\), with fixed \(a,c>0\), \(ac>1/4\). Its depth-two positive determinant is \(4ac-1\), independent of \(\lambda\). Any depth-three Hankel extension has the principal \(0,1,3\) minor
\[
 \begin{pmatrix}\lambda^2+a&\lambda&0\\
 \lambda&1&m_4\\0&m_4&m_6\end{pmatrix},
 \qquad
 \det=a(m_6-m_4^2)-\lambda^2m_4^2\ge0.
 \tag{HP23a}
\]
For a fixed \(m_6\), this imposes a \(\lambda\) roof. An adaptive choice obeying \(m_6(t)\ge m_4^2(1+\lambda(t)^2/a)\) instead brings its actual \(m_6'\) work through (HP23). This is a necessary condition for extending that particular finite block; it is not a sufficient depth-three positivity test or an exclusion of different adaptive forms.

## An actual admitted smooth history testing the universal weight class

Choose a nonzero real divergence-free Schwartz field \(U\); for example \(U=\nabla\times(0,0,e^{-|x|^2})\). Fix \(c>\pi\), and a smooth compactly supported temporal cutoff \(\chi=1\) on a neighborhood of \(I_c=[c-\pi,c+\pi]\), with support away from \(0\). Define
\[
 a(t)=\chi(t)\sum_{j=1}^\infty e^{-\sqrt j}\cos(j(t-c)),\quad
 u(t,x)=a(t)U(x),\quad p(t,x)=0,
\]
\[
 f(t,x)=a'(t)U(x)+\nu a(t)AU(x)+a(t)^2N(U,U)(x).
 \tag{HP24}
\]
Each derivative series converges absolutely and uniformly because \(\sum_jj^ke^{-\sqrt j}<\infty\) for every finite \(k\). Therefore \(f\in C^\infty([0,\infty);\mathcal S)\), the datum is \(u_0=0\), and this is a globally smooth actual solution of the full forced NS equation. The force is generally nonsolenoidal and is fixed explicitly, rather than solved for from an unknown history. Its physical pressure is exactly canonical:
\[
 R_iR_j(a^2U_iU_j)-A^{-1}\operatorname{div}f
 =a^2R_iR_j(U_iU_j)-a^2A^{-1}\operatorname{div}N(U,U)=0.
 \tag{HP25}
\]
The kinetic law holds with all source work:
\(e'/2+\nu Y=\langle u,f\rangle\), since \(\langle U,N(U,U)\rangle=0\). All finite Sobolev and force norms are finite on every prefix.

At \(c\), all even derivatives have terms with the same sign. With \(n=2k\), the single Fourier mode \(j=(4k)^2\) gives
\[
 |a^{(2k)}(c)|=\sum_j e^{-\sqrt j}j^{2k}
 \ge e^{-4k}(4k)^{4k},\qquad
 \frac{|a^{(n)}(c)|}{n!}\ge(4n/e^2)^n.
 \tag{HP26}
\]
This exceeds every fixed geometric sequence along even \(n\). Hence the actual \(V_n(c)=a^{(n)}(c)U\) violates the necessary bound (HP13) for every fixed/projective nontrivial form with finite \(m_0>0,m_2>0\) and a bounded sequence of all receiver prefixes at that time.

The same conclusion holds in the native time-integrated topology. On \(I_c\), integer Fourier modes are orthogonal and the cutoff is exactly constant. For every \(n\ge0\),
\[
 \|a^{(n)}\|_{L^2(I_c)}^2
 =\pi\sum_{j\ge1}e^{-2\sqrt j}j^{2n},\qquad
 \|a^{(2k)}\|_{L^2(I_c)}
 \ge\sqrt\pi e^{-4k}(4k)^{4k}.
 \tag{HP26a}
\]
The derivative series converges in \(L^2\), justifying the orthogonal sum. Consequently \(\|V_n\|_{L^2(I_c;L^2_x)}=\|U\|_2\|a^{(n)}\|_{L^2(I_c)}\) violates (HP13) in that topology as well, for every fixed nontrivial projective moment form.

This obstruction to that proposed universal bound also survives full force compensation. Put \(g=\mathbb Pf\), \(h=u_t-g\), and \(H_0=u\), \(H_{n+1}=\partial_t^nh\). The actual field is
\[
 h=-\nu aAU-a^2\mathbb PN(U,U),\qquad
 \langle U,H_{n+1}(c)\rangle=-\nu\|\nabla U\|_2^2a^{(n)}(c).
 \tag{HP27}
\]
The full quadratic parent cannot hide this derivative growth because its pairing with \(U\) is identically zero at every order. In particular \(\|H_{n+1}(c)\|_2\ge\nu\|\nabla U\|_2^2|a^{(n)}(c)|/\|U\|_2\). Adjacent-prefix positivity for these compensated fields again forces a factorial/geometric bound, contradicted by (HP26), including its harmless index shift. This statement concerns the receiver's necessary positivity/convergence condition; it does not identify the compensated nonlinear work with (HP4), whose derivation used the actual raw \(V_n\) binomial recurrence. A time-adaptive projective form with finite \(m_0(c)>0,m_2(c)>0\) faces exactly the same necessary inequality at \(c\); setting \(m_2(c)=0\) instead removes first-temporal coercivity there. Nonprojective changes with depth are the different operation described after (HP23).

Moreover the same exact projection gives \(\|H_{n+1}\|_{L^2(I_c;L^2_x)}\ge\nu\|\nabla U\|_2^2\|a^{(n)}\|_{L^2(I_c)}/\|U\|_2\). Thus (HP26a) also tests the compensated receiver in its actual \(L^2_tL^2_x\) topology. This last fixed-form assertion does not assume that an arbitrary time-varying form has one common Hilbert realization.

The history (HP24) is globally regular. It establishes only that the source's arbitrary smooth forcing class does not ensure a bounded nontrivial all-depth moment receiver, even after exact forcing compensation. It does not refute the finite identities, any native finite rectangle, a regularity claim, or a different producer. No corresponding unforced incompatibility example is asserted here. Particular histories with finitely many nonzero temporal rows can certainly admit these infinite coefficient forms; no universal failure for individual histories is asserted.

## Bounded outcome

The finite depth family has exact projective definitions, a verified complete cancellation through total degree \(N\), and the explicit signed edge (HP4). Infinite PSD forms can be treated abstractly; they incur the diagonal lower cost (HP12). There are feasible uniformly velocity/first-temporal-coercive infinite forms, explicitly (HP15)–(HP18), so a blanket claim that every infinite completion loses low-row coercivity would be false.

To turn this operation into a native whole-terminal datum bound requires actual receiver and force convergence, payment or vanishing of the complete nonlinear edge, and every variable-weight/endpoint port. A paid low-row stock then supplies \(\mathfrak R^f_{0,1}\) by the original operator conversion (HP18a)–(HP18b). Uniform all-prefix energies already impose derivative-order growth absent from the original \(C^\infty\) assumptions; (HP24)–(HP27) test this precise class on an admitted full forced solution. No extra such convergence or upper payment is assumed in the calculation. This is a completed bounded execution of the proposed all-depth coefficient operation, not a general verdict about the paper's proof.

The supporting [finite-boundary-and-positive-form-check.md](05-temporal-positive-form-verification.md), independently derives the finite boundary, Hilbert moment inequalities, source/pressure ports, and the coercive lognormal example. Its exact rational coefficient check verifies depths \(N=0,\ldots,8\) using only the actual divergence-free receiver/final-slot antisymmetry; it tests the general combinatorial identity, not a fluid surrogate.
