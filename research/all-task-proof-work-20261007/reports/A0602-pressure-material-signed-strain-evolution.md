# Actual signed-strain evolution with complete pressure and force response

**Reviewed scope and currentness.** The mathematical statements retain their recorded hypotheses and the reconciliations listed in the supersession register. Original finite-rectangle membership, when supplied, implies downstream source and selected-current bounds. Optional sufficient criteria in this report are not added as upstream premises of the printed producer. The mathematical body retains its stated strict-time, terminal, pressure and force hypotheses. Publication adds no unconditional global theorem claim.


6 October 2026. New material calculation on one prescribed-force history.

This report derives the material evolution of
\(S(t)=\int w_iw_j\partial_ju_i\) for the actual regularized field
\(w=u_t-\mathbb Pf+\lambda u\), with
\(\lambda=\nu\|\nabla u\|_2^2/(\|u\|_2^2+\delta)\), \(\delta>0\).
It retains the physical pressure Hessian, the first-binomial pressure response, every force parent, the derivative of the regularization coefficient, and the initial and temporal boundary terms. It then executes their exact signed regroupings.

The result is a complete higher identity and several explicit cancellations. A part of the prescribed source work has a kinetic-paid upper price. The complete identity supplies no new upper payment of the unweighted signed-strain primitive: its direct energy pairing returns exactly the regularized joint storage and its full intrinsic production.

## 1. Source graph and fixed domain

The primary graph is [forced-native-assembly-20260914.md](../SOURCES.md#S152), LF18–70. It specifies a divergence-free \(H^\infty\) datum and an arbitrary prescribed smooth force with rapidly decreasing spatial mixed derivatives, uniformly on each finite force horizon. The force need not be solenoidal. The actual finite graph includes
\[
 \begin{aligned}
 V_{n+1}+B_n+\nabla Q_n&=\nu\Delta V_n+F_n,\\
 B_n&=\sum_{a=0}^n\binom na(V_a\cdot\nabla)V_{n-a},\\
 \nabla Q_n&=(I-\mathbb P)(F_n-B_n),\\
 -\Delta Q_n&=\partial_i\partial_j
   \sum_{a=0}^n\binom naV_{a,i}V_{n-a,j}-\nabla\cdot F_n .
 \end{aligned}\tag{SE1}
\]
Its additional spatial differentiation uses every allocation
\(\binom na\binom\alpha\beta
 ((\partial^\beta V_a)\cdot\nabla)\partial^{\alpha-\beta}V_{n-a}\).
The initial jet is generated recursively from this same full equation.

The exact kinetic identity is [02-compatible-rectangles.tex](../SOURCES.md#S118), LF13–59, . Its complete forcing–pressure square is LF189–251. The earlier [regularized intrinsic storage](A0734-kinetic-trace-radial-action-and-strain-records.md) is rederived below through the direct \(w\) pairing.

All displayed differentiated identities are first on a strict classical interval \([0,t]\), \(t<T_*\). Spatial integrations by parts are justified by the actual fixed-order Sobolev regularity and spatial cutoffs; no terminal spatial derivative trace is used.

Use the real \(L^2\) pairing and define
\[
 \mathcal L=-\Delta,\quad g=\mathbb Pf,\quad
 B=(u\cdot\nabla)u,\quad q=-\mathbb PB,\quad
 v=u_t,\quad h=v-g=q-\nu\mathcal Lu,
\]
\[
 e=\|u\|_2^2,\quad Y=\|\nabla u\|_2^2,\quad
 b=e+\delta,\quad \lambda=\nu Y/b,\quad w=h+\lambda u.
\]
The physical gradient and its symmetric and skew parts are
\[
 A_{ij}=\partial_ju_i,\qquad D=(A+A^\top)/2,\qquad
 \Omega=(A-A^\top)/2,\qquad \operatorname{tr}A=0 .
\]
Here \(D\) is a matrix field, not a time-integrated kinetic action.

## 2. Complete material rows and construction-specific cancellations

Let \(D_t=\partial_t+u\cdot\nabla\).
Normalize the force potential \(r\) and intrinsic pressure \(p_0\) by
\[
 r=-(-\Delta)^{-1}\nabla\cdot f,\qquad
 \nabla r=(I-\mathbb P)f,\qquad p=p_0+r,\qquad
 p_0=R_iR_j(u_iu_j).
\]
Before compensation the first-binomial row is
\[
 v_t+(u\cdot\nabla)v+(v\cdot\nabla)u+\nabla p_t
       =\nu\Delta v+f_t .
\]
Subtracting \(g_t\) gives the actual \(h\) row
\[
 D_th=\nu\Delta h-Ah-\nabla(p_t-r_t)+J,\qquad
 J=-(u\cdot\nabla)g-(g\cdot\nabla)u+\nu\Delta g .
 \tag{SE2}
\]
The prescribed derivative \(f_t-g_t=\nabla r_t\) is canceled by the same pressure's prescribed gradient component. Both ordered \(u,g\) parents remain in \(J\).

The material derivative commutator gives the complete physical gradient row
\[
 [D_t,\partial_j]u_i=-(\partial_ju_k)\partial_ku_i,\qquad
 D_tA=\nu\Delta A-A^2-\nabla^2p+\nabla f .
 \tag{SE3}
\]
In components \((A^2)_{ij}=\sum_kA_{ik}A_{kj}\). The full physical pressure and full force first occur separately. Their gradient-potential contributions then cancel exactly:
\[
 -\nabla^2p+\nabla f=-\nabla^2p_0+\nabla g .
 \tag{SE4}
\]
This cancellation does not remove the intrinsic pressure Hessian.

For completeness, reconstructing \(h=\nu\Delta u-B-\nabla p_0\) materially uses
\[
 [D_t,\Delta]u=-(\Delta u\cdot\nabla)u
        -2\sum_k(\partial_ku\cdot\nabla)\partial_ku,\qquad
 [D_t,\nabla]p_0=-A^\top\nabla p_0 .
\]
The two-parent viscous commutator is exactly reassembled into
\(\nu\Delta h-Ah\) in (SE2); its terms are not deleted. This also independently checks the first-binomial construction against material differentiation.

The scalar coefficient has its full derivative
\[
 e'=-2\nu Y+2F,\quad F=\langle u,g\rangle,\qquad
 \lambda'=\frac{2\nu\langle\mathcal Lu,w+g\rangle-2\lambda F}{b}.
 \tag{SE5}
\]
Inserting (SE2) into \(D_tw=D_th+\lambda D_tu+\lambda'u\) yields
\[
 D_tw=\nu\Delta w-Aw-\nabla\rho+F_w,\qquad
 \rho=p_{0,t}+\lambda p_0,\qquad
 F_w=J+\lambda g+\lambda B+\lambda'u .
 \tag{SE6}
\]
All scalar coefficients are spatially constant. The pressure has the full tensor formula
\[
 \rho=R_iR_j[
    u_iw_j+w_i u_j+u_i g_j+g_i u_j-\lambda u_i u_j] .
 \tag{SE7}
\]
It follows from \(v=w-\lambda u+g\), the two original \(u,v\) pressure parents, and the added \(\lambda p_0\).

An equivalent row, useful for checking the apparent damping coefficient, is
\[
 D_tw=\nu\Delta w-Aw-\lambda w-\nabla\widetilde\rho+\widetilde F_w,
\]
\[
 \widetilde\rho=p_{0,t}+2\lambda p_0,\qquad
 \widetilde F_w=J+\lambda\nu\Delta u+
                   (\lambda'+\lambda^2)u+\lambda g .
 \tag{SE8}
\]
This uses exactly \(B=-w+\lambda u+\nu\Delta u-\nabla p_0\).
The displayed \(\widetilde F_w\) contains actual velocity terms; it is not a purely prescribed forcing field.

## 3. Exact material derivative of the signed strain

Set
\[
 S(t)=\int w_iw_jA_{ij}=\int w^\top Dw .
\]
Volume-preserving transport gives
\[
 S'=\int(D_tw)^\top(A+A^\top)w
             +\int w_iw_j(D_tA)_{ij}.
\]
The diffusion terms before integration by parts are
\(2\nu\int\Delta w\cdot Dw+\nu\int w_iw_j\Delta A_{ij}\).
They give the full mixed-viscous expression
\[
 -2\nu\sum_k\int(\partial_kw)^\top D(\partial_kw)
 -4\nu\sum_k\int(\partial_kw)^\top(\partial_kD)w .
\]
In particular, the second term has coefficient four and no assigned sign.

Combining every term gives
\[
 \begin{aligned}
 S'={}&-2\nu\sum_k\int(\partial_kw)^\top D(\partial_kw)
       -4\nu\sum_k\int(\partial_kw)^\top(\partial_kD)w\\
 &-\int|Aw|^2-2\int w^\top A^2w\\
 &-2\int\nabla\rho\cdot Dw-\int w^\top(\nabla^2p)w\\
 &+2\int F_w\cdot Dw+\int w^\top(\nabla f)w .
 \end{aligned}\tag{SE9}
\]
The identity
\(2(Aw)\cdot Dw=|Aw|^2+w^\top A^2w\)
checks its two deformation coefficients directly. Before using that identity, those terms are
\(-2(Aw)\cdot Dw-w^\top A^2w\).

An independent Eulerian verification is the exact compact formula
\[
 S'=\langle w_t,(A+A^\top)w\rangle
       -\langle v,(w\cdot\nabla)w\rangle .
 \tag{SE10}
\]
The second term follows from integrating
\(\int w_iw_j\partial_jv_i\) by parts using \(\nabla\cdot w=0\).
Inserting the complete \(v,w\) rows into (SE10) reproduces (SE9).

Using (SE8) instead gives the same identity with \(S'+2\lambda S\) on the left and \(\rho,F_w\) replaced by \(\widetilde\rho,\widetilde F_w\). It keeps the entire \((\lambda'+\lambda^2)u\) response.

## 4. Exact signed deformation and pressure completions

The deformation in (SE9) has the explicit opposing-square forms
\[
 -|Aw|^2-2w^\top A^2w
 =-3|Dw|^2+|\Omega w|^2-2(Dw)\cdot(\Omega w)
 =|A^\top w|^2-4|Dw|^2 .
 \tag{SE11}
\]
The full term is not assigned a coercive sign.

After the actual pressure/source cancellation (SE4), the canonical Poisson identity gives
\[
 -\Delta p_0=\operatorname{tr}(A^2),\qquad
 \operatorname{tr}(A^2+\nabla^2p_0)=0,\qquad
 \operatorname{tr}\nabla g=0 .
\]
Consequently the precise trace-free completion is
\[
 -2w^\top A^2w-w^\top(\nabla^2p_0)w
 =-w^\top A^2w
  -(w\otimes w-\tfrac13|w|^2I):(A^2+\nabla^2p_0).
 \tag{SE12}
\]
Only this indicated combination has its isotropic part removed. The remaining \(A^2\) term is retained.

To preserve the ordered pressure/source parents explicitly, put
\[
 \pi_{uw}=R_iR_j(u_iw_j+w_i u_j),\quad
 \pi_{ug}=R_iR_j(u_i g_j+g_i u_j),\quad
 \pi_{ww}=R_iR_j(w_iw_j).
\]
Then \(\rho=\pi_{uw}+\pi_{ug}-\lambda p_0\). The full source and nonlinear pressure completions are
\[
 J-\nabla\pi_{ug}=j_g
   =-\mathbb P\nabla\cdot(u\otimes g+g\otimes u)-\nu\mathcal Lg,
 \qquad
 \lambda B+\lambda\nabla p_0=\lambda\mathbb PB=-\lambda q .
 \tag{SE13}
\]
Thus the complete response in (SE9) can be written as
\[
 F_w-\nabla\rho=-\nabla\pi_{uw}-\lambda q+j_g+\lambda g+\lambda'u .
\]
The pressure source is combined with its own projected source, rather than estimated as an unrelated pressure term.

Two additional exact pressure identities are
\[
 \begin{aligned}
 -2\langle\nabla\pi_{uw},Dw\rangle
   &=\tfrac12\|\nabla\pi_{uw}\|_2^2
                         -\langle\nabla\pi_{uw},A^\top w\rangle,\\
 -\int w^\top(\nabla^2p_0)w
   &=-\langle\nabla p_0,\nabla\pi_{ww}\rangle .
 \end{aligned}\tag{SE14}
\]
For the first identity, the two fields
\((w\cdot\nabla)u\) and \((u\cdot\nabla)w\) have equal divergence.
Their sum's gradient part is \(-\nabla\pi_{uw}\), so each has pairing
\(-\|\nabla\pi_{uw}\|^2/2\) with \(\nabla\pi_{uw}\).
For the second identity use
\(-\Delta\pi_{ww}=\partial_iw_j\partial_jw_i\) and two integrations by parts.
These expressions retain a positive pressure square and two signed cross pairings. They provide no sign for the complete pressure bundle.

Combining the first line of (SE14) with the full deformation (SE11), before taking any norm upper bound, gives the exact joined completion
\[
 -4\|Dw\|_2^2
 +\|A^\top w-\tfrac12\nabla\pi_{uw}\|_2^2
 +\tfrac14\|\nabla\pi_{uw}\|_2^2 .
 \tag{SE14a}
\]
The physical Hessian cross in the second line of (SE14) and every other slot of (SE9) remain alongside this joined completion.

The regularization derivative also has an exact contraction:
\[
 2\langle u,Dw\rangle=\langle w,B\rangle=-\langle w,q\rangle,\qquad
 2\lambda'\langle u,Dw\rangle=-\lambda'\langle w,q\rangle .
 \tag{SE15}
\]
The first equality uses \(\int u_iw_j\partial_ju_i=0\).
Only the ordinary global field Gram is used; no pointwise orthogonality of \(u,w\) is assumed.

## 5. A prescribed part with a kinetic-paid price

Fix a finite force horizon \(T\) and use the original kinetic quantity
\(K=\|u_0\|_2+\int_0^T\|g\|_2\), with
\(\int_0^T Y\le K^2/(2\nu)\).
The pressure-complete source in (SE13) has
\[
 \|j_g\|_2\le
 K\|\nabla g\|_{\infty,\mathrm F}
       +\|g\|_\infty\sqrt Y+\nu\|\mathcal Lg\|_2,
\]
\[
 \int_0^T\|j_g\|_2^2\le
 3K^2\int_0^T\|\nabla g\|_{\infty,\mathrm F}^2
 +3\sup\|g\|_\infty^2\,\frac{K^2}{2\nu}
 +3\nu^2\int_0^T\|\mathcal Lg\|_2^2<\infty .
 \tag{SE16}
\]
This is a complete two-parent estimate, retaining the Leray projector. It makes
\(2\langle j_g,Dw\rangle\le\eta\|Dw\|_2^2+
\eta^{-1}\|j_g\|_2^2\), \(\eta>0\), an actual known upper price when allocated part of the negative square in (SE11).

The other response coefficients remain explicit. For example
\(\int w^\top(\nabla g)w\) is bounded by a prescribed coefficient times \(\|w\|_2^2\); it is not a purely prescribed number. Similarly the actual \(\lambda\) and \(\lambda'\) responses remain in (SE9)/(SE15). Inserting estimates for selected pieces does not remove the opposing \(A^\top w\) square, signed mixed-viscous terms, full pressure cross pairings, or the rest of the regularization response.

## 6. Initial and temporal boundaries of the full primitive

The actual initial fields are
\[
 h_0=-\nu\mathcal Lu_0-\mathbb P\nabla\cdot(u_0\otimes u_0),\qquad
 \lambda_0=\frac{\nu\|\nabla u_0\|_2^2}{\|u_0\|_2^2+\delta},\qquad
 w_0=h_0+\lambda_0u_0 ,
\]
\[
 S_0=\int (w_0)_i(w_0)_j\partial_j(u_0)_i .
 \tag{SE17}
\]
They are finite fixed-order datum expressions. The cancellation in \(h_0=v_0-g_0\) retains the canonical force-pressure row used to generate \(v_0\).

Let \(\mathcal F_S\) denote the FULL right side of (SE9), with all of the fields and coefficients defined above. Then for every strict time
\[
 S(t)=S_0+\int_0^t\mathcal F_S(s)\,ds,\qquad
 I_\delta(t):=-\int_0^tS(s)\,ds
   =-tS_0-\int_0^t(t-s)\mathcal F_S(s)\,ds .
 \tag{SE18}
\]
There is no dropped initial term and no terminal value of \(S\) in this identity. Replacing selected parts of \(\mathcal F_S\) by their exact regroupings (SE11)–(SE15) preserves it. An upper primitive would require an upper bound of the complete indicated signed combination.

The direct \(w\) pairing precisely checks the resulting primitive. Define the REGULARIZED stock
\[
 \mathscr R_w=\tfrac12(\|w\|_2^2+\delta\lambda^2),\qquad
 c=\langle w,q\rangle .
\]
The material/projected equation gives
\[
 \mathscr R_w'+\nu\|\nabla w\|_2^2
      =-S-\lambda c+\langle w,j_g\rangle+\lambda\langle w,g\rangle .
 \tag{SE19}
\]
If the unregularized stock \(\tfrac12\|w\|^2\) is used, the right side additionally contains \(-\delta\lambda\lambda'\). That is an exact boundary derivative, since \(\langle u,w\rangle=-\delta\lambda\).

The intrinsic positive stock satisfies exactly
\[
 \Phi_\delta=\tfrac12\|h\|^2-\frac{\nu^2Y^2}{4b}
       =\mathscr R_w+\tfrac14b\lambda^2,\qquad
 c=\|w\|^2+\nu\langle\mathcal Lu,w\rangle+\delta\lambda^2.
\]
Using (SE5), \(b'=-2b\lambda+2F\), and
\(\langle w,g\rangle=\langle q,g\rangle
       -\nu\langle\mathcal Lu,g\rangle+\lambda F\),
the boundary derivative reassembles the exact full joint balance:
\[
 \Phi_\delta'+\nu\|\nabla w\|^2+\lambda\|w\|^2
                 +\tfrac12(e+3\delta)\lambda^3
 =-S+\langle w,j_g\rangle
              +\lambda\langle q,g\rangle+\tfrac12\lambda^2F .
 \tag{SE20}
\]
Its integrated form is
\[
 \begin{aligned}
 I_\delta(t)={}&\Phi_\delta(t)-\Phi_\delta(0)
 +\int_0^t[\nu\|\nabla w\|^2+\lambda\|w\|^2
                         +\tfrac12(e+3\delta)\lambda^3]\,ds\\
 &-\int_0^t[
    \langle w,j_g\rangle+\lambda\langle q,g\rangle
                                  +\tfrac12\lambda^2F]\,ds .
 \end{aligned}\tag{SE21}
\]
Thus its direct primitive retains the full initial storage, all actual positive actions, and all prescribed-source work.

The explicit source work in (SE21) has the previously verified kinetic/source payment: homogeneous duality pays the complete \(j_g\) with half the gradient action; \(\lambda|\langle q,g\rangle|\le\nu Y\|\nabla g\|_\infty\); and the last term is paid by one quarter of \((e+3\delta)\lambda^3\) plus \(\|g\|_2^3/(18\sqrt\delta)\). This gives a lower necessity for \(I_\delta\), with known finite force cost, rather than an upper value of this intrinsic primitive.

## 7. Exact outcome of this evolution test

The full signed calculation executes the material gradient commutator, the Laplacian and pressure-gradient commutators, the first-binomial derivative-force cancellation, the prescribed force-pressure Hessian cancellation, the canonical pressure/source completions, the opposing deformation squares, and the regularization boundary derivative. It provides the exact finite primitive (SE18) and its complete joint-stock form (SE21).

The known source price (SE16) is a concrete gain available inside the signed evolution. The remaining complete bundle consists of the mixed viscous contractions, rotation/deformation response, intrinsic pressure square and cross terms, and the actual regularization couplings shown above. This executed derivation has supplied no datum-paid upper bound for their combined contribution to (SE18). It makes no claim that a different signed operation cannot supply one.

The new source excerpts, before/after input checks, and this report's author-final hash are recorded in this directory.
