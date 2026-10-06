# Adaptive shifts and positive weights: final quadratic-route theorem

6 October 2026. This is a bounded test of quadratic cancellation on the actual pressure-complete Navier–Stokes history. It permits time-dependent shifts and positive weights, retains their complete derivatives and interval faces, and uses no invented trajectory or force profile. Its conclusion concerns the explicitly defined cancellation class below. A history-dependent estimate of a retained work term would be additional mathematical input, rather than another consequence of the quadratic identities.

The original [strict and whole-terminal quantifiers](../SOURCES.md#src-forced-setting) concern one maximal history, fixed finite orders and the physical interval \(I=(0,T_*)\). Its finite norm at LF515–533 is uniform in every strict physical cutoff. The [norm-equivalence proposition](../SOURCES.md#src-compatible-rectangles) obtains that supremum from whole-interval membership, and conversely obtains membership from a finite supremum. [Native J10](../SOURCES.md#src-native-assembly) substitutes the complete equation in both factors of the selected actual Gram; J13 retains its pressure/local faces. None of these selections changes physical time or makes an adaptive quotient a distributional derivative. Adaptive evaluation below is a new operation within their already defined strict classical history.

## 1. Complete moving Gram, pressure and square

Write \(L=-\Delta\), \(N(a,b)=(a\cdot\nabla)b\), \(g=\mathbb Pf\). Let \(u,p\) be the actual classical history on \(0\le s<T\), where \(T\) may be a proposed finite \(T_*\). Take finitely many smooth sample times \(\tau_i(t)\in[0,T)\), speeds \(\lambda_i=\tau_i'\), and locally \(C^1\) symmetric positive semidefinite weights \(Q(t)\). The weights may depend on the actual history; their total derivatives must then be used. Set \(U_i=u(\tau_i)\), \(P_i=p(\tau_i)\), \(F_i=f(\tau_i)\), \(B_i=N(U_i,U_i)\). Exactly,
\[
 U_i'+\lambda_i(\nu LU_i+B_i+\nabla P_i)=\lambda_iF_i,\qquad
 P_i=R_aR_b(U_{i,a}U_{i,b})-L^{-1}\operatorname{div}F_i.
 \tag{AQ1}
\]
No additional history or value at \(T\) is introduced. Define \(C_{ij}=\langle U_i,U_j\rangle\), \(K_{ij}=\langle\nabla U_i,\nabla U_j\rangle\), \(D=\operatorname{diag}\lambda\), and \(H=(QD+DQ)/2\). The exact bulk balance is
\[
 E_Q=\tfrac12Q:C,\qquad
 E_Q'+\nu H:K
 =-\sum_{ij}Q_{ij}\lambda_j\langle U_i,B_j\rangle
  +\sum_{ij}Q_{ij}\lambda_j\langle U_i,F_j\rangle+\tfrac12Q':C.
 \tag{AQ2}
\]
This follows by differentiating both actual factors. Integrated pressure cancels only by their solenoidality. The full local identity has the same sources, pointwise pairings and dissipation, and flux
\[
 {\cal J}_Q=-\nu\sum_{ij}Q_{ij}\lambda_j
                 \big(\langle U_i,\partial_kU_j\rangle\big)_{k=1}^3
              +\sum_{ij}Q_{ij}\lambda_jP_jU_i .
 \tag{AQ3}
\]
The nonlinear products are retained on its right. For diagonal \(Q\), their diagonal divergence moves to the extra advective flux
\(\sum_i q_i\lambda_iU_i|U_i|^2/2\); the resulting global nonlinear work is zero.

The complete orthogonal square is
\[
 \begin{aligned}
 &\sum Q_{ij}\langle U_i',U_j'\rangle
 +\nu^2\sum Q_{ij}\lambda_i\lambda_j\langle LU_i,LU_j\rangle
 +\sum Q_{ij}\lambda_i\lambda_j\langle\nabla P_i,\nabla P_j\rangle\\
 &\quad+\nu(H:K)'-\nu H':K
 +\nu\sum Q_{ij}(\lambda_j-\lambda_i)\langle U_i',LU_j\rangle\\
 &=\sum Q_{ij}\lambda_i\lambda_j
                         \langle F_i-B_i,F_j-B_j\rangle .
 \end{aligned}\tag{AQ4}
\]
Here \(H'\) contains both \(Q'\) and the sampling accelerations \(\lambda_i'\). The speed-mismatch term is essential. Every force/force, force/nonlinear and nonlinear/nonlinear pair stays in the square, as do its gradient endpoint stocks. Positivity of \(Q\) and of the speeds does not alone imply positivity of \(H\).

## 2. All integration and interval faces

For a scalar time selector \(\chi\), integration of AQ2 is exactly
\[
 [\chi E_Q]_a^b+\nu\int_a^b\chi H:K
 =\int_a^b\chi\left[-W_Q+\sum Q_{ij}\lambda_j\langle U_i,F_j\rangle
                              +\tfrac12Q':C\right]
                  +\int_a^b\chi'E_Q .
 \tag{AQ5}
\]
Both stocks use the actual faces \(\tau_i(a),\tau_i(b)\). For a space/time selector \(\psi\), the local ledger additionally contains \(\psi_t e_Q+\nabla\psi\cdot{\cal J}_Q\). On a moving spatial domain its boundary contribution is
\(\int_{\partial\Omega}\psi(v_{\partial\Omega}\cdot n)e_Q
-\int_{\partial\Omega}\psi{\cal J}_Q\cdot n\).
Thus selector derivatives, boundary velocity and physical pressure flux remain.

A second parameter \(\rho\) selecting the integration interval has the full Reynolds formula
\[
 \begin{aligned}
 \partial_\rho\int_{a(\rho)}^{b(\rho)}\chi E_Q\,dt
 ={}&b'\chi E_Q|_b-a'\chi E_Q|_a
       +\int_a^b(\chi_\rho E_Q+\chi\partial_\rho E_Q)\,dt,\\
 \partial_\rho E_Q
 ={}&\tfrac12Q_\rho:C
 +\sum_{ij}Q_{ij}\tau_{j,\rho}
                         \langle U_i,u_t(\tau_j)\rangle .
 \end{aligned}\tag{AQ6}
\]
These are identities on strict sample domains; dropping an endpoint or moving it beyond the history is a different operation.

## 3. Tested coefficient-cancellation class

By complete coefficient cancellation we mean cancellation of the explicit bilinear transport work in AQ2 by incompressibility and its allocation identities, before assigning an actual-history value to the coefficient-derivative work. For distinct sample times this class satisfies
\[
 Q_{ij}\lambda_i=Q_{ij}\lambda_j=0\quad(i\ne j).
 \tag{AQ7}
\]
Each ordered off-diagonal transport coefficient must vanish separately; diagonal coefficients pair a field with its own self-advection and vanish. This is a formal allocation classification, not a claim that a special history cannot have a further identity. For repeated times, let \(R\) replicate distinct-time groups: the current coefficient matrix is \(R^TQD R\), whose off-diagonal entries must vanish. At isolated coincidences it may be nonsymmetric because the speeds differ. Persistent groups have common speeds and obey AQ7 with their compressed storage weight. An arbitrary off-diagonal block can remain among zero-speed samples, where neither field evolves in parameter time. Reversed clocks retain reversed viscous action.

For the forward two-time pair \(\tau_0=t,\tau_1=t+h(t)\), the base speed is one, so AQ7 is exactly physical diagonal weighting regardless of the other speed. In coordinates
\(m=(U_0+U_1)/2\), \(d=(U_1-U_0)/h\),
a symmetric weight \(\bigl(\begin{smallmatrix}a&c\\c&b\end{smallmatrix}\bigr)\) cancels precisely when \(b=ah^2/4\). Its physical weights are \(q_0=a/2-c/h,\ q_1=a/2+c/h\). Positivity is \(q_i\ge0\).

The full moving-speed nonlinear coefficient, with \(\ell=(\lambda_0+\lambda_1)/2\), is
\[
 W=(b-ah^2/4)
       \left[\ell S(m,d,d)+\frac{h'}h\langle d,N(m,m)\rangle\right],
 \quad S(v,x,x)=\langle x,N(x,v)\rangle .
 \tag{AQ8}
\]
Thus unequal clocks do not create another coefficient-cancelling mean/difference family. They do create the displayed extra work when the mean is removed.

## 4. Actual adaptive difference, full force and normalization work

Let \(0<h(t)<T-t\), \(\theta=t+h\), \(V^\theta=u_t(\theta)\), and use bars/differences of actual pressure and prescribed force at \(t,\theta\). The complete rows are
\[
 \begin{aligned}
 m'+\nu Lm+N(m,m)+\tfrac{h^2}{4}N(d,d)+\nabla\bar p
       &=\bar f+\tfrac{h'}2V^\theta,\\
 d'+\nu Ld+N(m,d)+N(d,m)+\nabla\delta_hp
       &=\delta_hf+\tfrac{h'}h(V^\theta-d).
 \end{aligned}\tag{AQ9}
\]
Their canonical physical pressures remain
\[
 \bar p=R_iR_j(m_im_j+h^2d_id_j/4)-L^{-1}\operatorname{div}\bar f,\qquad
 \delta_hp=R_iR_j(m_id_j+d_im_j)-L^{-1}\operatorname{div}\delta_hf .
 \tag{AQ10}
\]
The additional temporal fields are solenoidal. They change the source square and its cross terms, without changing these actual scalar pressure potentials.

For any positive \(C^1\) weight \(\omega(t)\), the exact receiving-row energy is
\[
 \begin{aligned}
 (\omega\|d\|_2^2/2)'+\nu\omega\|\nabla d\|_2^2
 ={}&-\omega S(m,d,d)+\omega\langle d,\delta_hg\rangle\\
 &+\omega\frac{h'}h\langle d,V^\theta-d\rangle
                   +\tfrac{\omega'}2\|d\|_2^2 .
 \end{aligned}\tag{AQ11}
\]
The underlying row's local pressure flux is \((\delta_hp)d\); the weighted AQ11 flux is \(\omega(\delta_hp)d\). Its complete square uses the source
\(\delta_hf-N(m,d)-N(d,m)+(h'/h)(V^\theta-d)\).
Setting \(\omega=h^2\) cancels the denominator drift against its coefficient derivative, and retains \(h'\langle V^\theta,U_1-U_0\rangle\).

If a history-adaptive choice seeks to cancel the intrinsic strain in AQ11 through its coefficient and moving-shift work, its exact condition is
\[
 \tfrac{\omega'}2\|d\|_2^2+
       \omega\tfrac{h'}h\langle d,V^\theta-d\rangle
       =\omega S(m,d,d).
 \tag{AQ12}
\]
The force pairing in AQ11 remains. The selection must still be smooth and admissible and supply nonvanishing coercivity and a finite upper source budget. AQ12 merely places the same actual work into the selection equation; positivity of \(\omega\) supplies none of those estimates. This test does not declare such a further history-dependent estimate impossible.

## 5. Complete compensated cancellation and its exact kinetic regrouping

Retain the full physical force potential \(\phi_f=-L^{-1}\operatorname{div}f\), \(p_0=p-\phi_f\), and define
\[
 I=\int_t^\theta g(s)\,ds,\quad G=I/h,\quad H_1^\theta=(u_t-g)(\theta),
 \quad H=d-G,\quad R=-\nu LG-N(m,G)-N(G,m).
 \tag{AQ13}
\]
Then
\[
 G'=\delta_hg+\tfrac{h'}h(g^\theta-G),\qquad
 H'+\nu LH+N(m,H)+N(H,m)+\nabla\delta_hp_0
                   =R+\tfrac{h'}h(H_1^\theta-H).
 \tag{AQ14}
\]
The scalar pressure is
\(\delta_hp_0=R_iR_j[m_i(H+G)_j+(H+G)_im_j]\);
the physical pressure is \(\delta_hp_0+\delta_h\phi_f\).
Expansion at the lower actual field retains
\(-\nu LG-N(u,G)-N(G,u)
-h[N(H,G)+N(G,H)+N(G,G)]\)
and the corresponding \(hN(H,H)\) field on the left. No mixed order or force-force parent is deleted.

The positive compensated stock has a useful exact affine representation:
\[
 E_c=\tfrac12\|m\|_2^2+\tfrac{h^2}{8}\|H\|_2^2
    =\tfrac14\{\|u(t)+I/2\|_2^2+\|u(\theta)-I/2\|_2^2\}.
 \tag{AQ15}
\]
For a scalar positive weight \(a(t)\), its complete moving ledger is
\[
 \begin{aligned}
 (aE_c)'+a\nu(\|\nabla m\|_2^2+h^2\|\nabla H\|_2^2/4)
 ={}&a\{\langle m,\bar f\rangle+h^2{\cal F}/4\}+a'E_c\\
 &+a\left[\tfrac{h'}2\langle m,V^\theta\rangle
          +\tfrac{hh'}4\langle H,H_1^\theta\rangle\right],\\
 {\cal F}={}&-\nu\langle\nabla H,\nabla G\rangle
       -\langle m,N(H,G)+N(G,G)\rangle-\langle H,N(m,G)\rangle .
 \end{aligned}\tag{AQ16}
\]
The negative \(H\)-norm moving source cancels the derivative of \(h^2/8\); the displayed two pairings remain. Local regrouping of \({\cal F}\) retains the divergence
\(\operatorname{div}[d(m\cdot G)+\nu(H\cdot\partial_kG)_k]\).
Consequently it contributes the corresponding force flux when a spatial selector is present. Normalizing the whole stock by \(h^{-2}\) adds \(-2h'E_c/h^3\).

Those temporal pairings can genuinely be regrouped, rather than declared intrinsically unpayable. Put \(\lambda=1+h'\), \(Y_s=\|\nabla u(s)\|_2^2\). The exact equivalent law is
\[
 \begin{aligned}
 E_c'+\tfrac{\nu}{2}(Y_t+\lambda Y_\theta)
 ={}&\tfrac{\nu}{4}
       [\lambda\langle\nabla I,\nabla u(\theta)\rangle
                         -\langle\nabla I,\nabla u(t)\rangle]\\
 &-\tfrac14[\lambda\langle u(\theta),N(u(\theta),I)\rangle
                         -\langle u(t),N(u(t),I)\rangle]\\
 &+\tfrac14\langle u(\theta)+u(t),g(t)+\lambda g(\theta)\rangle .
 \end{aligned}\tag{AQ17}
\]
It follows by differentiating the affine sum, using \(I'=\lambda g(\theta)-g(t)\), and substituting the full momentum at both times before integrating by parts. Pressure vanishes here only in a full-space pairing with the known solenoidal \(I\). In the unforced case it is precisely the two-clock kinetic law. Multiplication by \(a\) retains \(a'E_c\).

The general cancelling compensated mean/difference matrix is the same positive diagonal class on
\(Z_0=u(t)+I/2,\ Z_1=u(\theta)-I/2\):
\[
 E=\tfrac12(q_0\|Z_0\|_2^2+q_1\|Z_1\|_2^2),\qquad
 q_0=a/2-c/h,\quad q_1=a/2+c/h.
 \tag{AQ18}
\]
The full affine law is
\[
 \begin{aligned}
 E'+\nu(q_0Y_t+q_1\lambda Y_\theta)
 ={}&\tfrac12q_0'\|Z_0\|^2+\tfrac12q_1'\|Z_1\|^2+q_0T_0+q_1T_1,\\
 T_0={}&-\tfrac\nu2\langle\nabla I,\nabla u(t)\rangle
 +\tfrac12\langle u(t),N(u(t),I)\rangle
 +\langle Z_0,g(t)\rangle+\tfrac12\langle Z_0,I'\rangle,\\
 T_1={}&\tfrac{\nu\lambda}{2}\langle\nabla I,\nabla u(\theta)\rangle
 -\tfrac\lambda2\langle u(\theta),N(u(\theta),I)\rangle
 +\lambda\langle Z_1,g(\theta)\rangle-\tfrac12\langle Z_1,I'\rangle .
 \end{aligned}\tag{AQ18a}
\]
Here \(I'=\lambda g(\theta)-g(t)\),
\(q_0'=a'/2-c'/h+ch'/h^2\), and
\(q_1'=a'/2+c'/h-ch'/h^2\).
This retains every changing cross coefficient, clock and force edge, and contains AQ16 as \(c=0\).

## 6. Sharp theorem: actual stock, adaptive families and terminal curves

For a positive physical diagonal two-time stock \(E=\sum q_i\|U_i\|^2/2\), its sharp universal coefficient in \(2E\ge\kappa_h\|d\|^2\) is
\[
 \kappa_h=\frac{h^2q_0q_1}{q_0+q_1}\le\frac{Mh^2}{4},\qquad M=q_0+q_1.
 \tag{AQ19}
\]
If one weight is zero the coefficient is zero. The all-zero case is zero by definition. The same coefficient controls \(H=(Z_1-Z_0)/h\) in AQ18. In mean/difference coordinates it is \(ah^2/4-c^2/a\).

If \(\kappa_h\ge\kappa_0>0\), then \(q_i\ge\kappa_0/h^2\), and the actual same-history stock has the stronger lower bound
\[
 E\ge\frac{\kappa_0}{2h^2}
               \big(\|U_0\|_2+\|U_1\|_2\big)^2.
 \tag{AQ20}
\]
Indeed Cauchy–Schwarz gives
\((\|U_0\|+\|U_1\|)^2
\le(\sum q_i\|U_i\|^2)(1/q_0+1/q_1)\).
For compensation substitute the actual \(Z_i\); no profile is invented.

**Theorem.** The following statements hold for every actual admitted history, all smooth forward adaptive shifts and all positive weights in the explicitly defined cancelling class.

1. Bounded total coefficient mass has vanishing first-row extraction as \(h\to0\). Changing the clocks or the positive coordinates does not alter AQ19.
2. Suppose a family \(h_\varepsilon(t)\to0\) at every fixed physical time, and its first-difference or compensated-response coefficient stays at least \(\kappa_0>0\). Wherever the actual \(u(t)\ne0\), AQ20 implies \(E_\varepsilon(t)\to\infty\). A nonzero classical history has an open strict interval where its norm is positive. Fatou therefore excludes a datum bound uniform in \(\varepsilon\) on either the pointwise stock or its positive time integral. This uses only the actual history; it holds even when its terminal kinetic limit is zero.
3. For one forward terminal curve at a finite \(T\), \(h(t)<T-t\), kinetic energy has a scalar limit \(e_*=\lim_{t\uparrow T}\|u(t)\|^2\). If \(e_*>0\), AQ20 gives \(\liminf h^2E\ge2\kappa_0e_*\), hence no bounded total stock. If \(e_*=0\), there is no such automatic contradiction. A bound \(E\le B\) instead requires the actual face estimates \(e(t),e(t+h)\le2Bh^2/\kappa_0\). For compensation,
\(\|u(\tau_i)\|\le h[\sqrt{2B/\kappa_0}+\|G\|/2]\).
These are genuine kinetic decay inputs, not consequences of an upper kinetic bound.
4. A single terminal curve is not a fixed-physical-time shrinking family. Its difference need not be identified with the original receiving row by that shrinking alone. A verified tracking condition or the exact temporal averaging action below can supply that implication conditionally.

For item 2, actual strict continuity gives \(U_i\to u(t)\) and \(I=O(h)\), so \(Z_i\to u(t)\). For item 3, both face energies approach \(e_*\). The affine representation gives \(E_c\to e_*/2\) without requiring convergence of their mutual Gram. Those facts prove the claimed lower bounds directly.

The theorem also extends to positive diagonal shift measures supported within an interval of diameter \(h\): a signed derivative stencil \(\sigma\) with zero mass and unit first moment satisfies \(\|\sigma\|_{\rm TV}\ge2/h\). Diagonal mass \(M\) supplies at most \(M/\|\sigma\|_{\rm TV}^2\le Mh^2/4\) extraction. For a row-recovering family whose support concentrates at the target physical time \(t\), the actual energy is uniformly positive on that shrinking support wherever \(u(t)\ne0\), so the same stock divergence follows. This extension concerns positive diagonal measures, not arbitrary adaptive kernel identities.

## 7. Where the adaptive normalization cost actually goes

For diagonal physical weights the exact law is
\[
 E'+\nu\sum_iq_i\lambda_iY_i
       =\sum_iq_i\lambda_i\langle U_i,g(\tau_i)\rangle
                                  +\tfrac12\sum_iq_i'e(\tau_i).
 \tag{AQ21}
\]
Thus with forward clocks, meaning every \(\lambda_i\ge0\), the total upper payment includes the initial stock, actual scaled force work and actual coefficient work. If \(e_*>0\), any bound paying positive coefficient variations separately diverges:
\[
 \tfrac12\int_a^b\sum_i(q_i')_+e(\tau_i)
 \ge\tfrac{e_*}{4}\,[M(b)-M(a)]\longrightarrow\infty ,
 \tag{AQ22}
\]
where \(a\) is sufficiently near \(T\) and \(M\ge4\kappa_0/h^2\). No monotonicity of the weights or sign of nonlinear work is assumed. The exact combined input must also pay the diverging current stock. For a shrinking parameter family with constant-in-time large weights, the cost can instead already lie in its scaled initial stock; it is not always a \(q'\) term.

An actual energy-normalizing choice \(q_i=c_i/e(\tau_i)>0\), where the energies are positive and \(c_i\) are fixed, keeps \(E=\sum c_i/2\). It has the exact coefficient work
\[
 \tfrac12\int_a^b\sum_iq_i'e(\tau_i)
       =-\tfrac12\sum_ic_i
                    \log\!\frac{e(\tau_i(b))}{e(\tau_i(a))}.
 \tag{AQ23}
\]
If those energies vanish, this work diverges despite the constant stock. Its cancellation with viscous/force terms must be kept on strict cutoffs; finite separated payments cannot be inferred by canceling infinities.

Outside the complete coefficient class, a positive metric can normalize the receiving energy, but positivity does not ensure its extraction constant. For example the actual smooth choice
\(\omega=(1+\|d\|^2)^{-1}\)
has \(\omega\|d\|^2/2\le1/2\), extraction coefficient \(\omega\), and derivative
\(\omega'=-2\omega^2\langle d,d'\rangle\).
A uniform lower coefficient is exactly an additional actual quotient bound. AQ11 retains that derivative and every source. This is an adaptive choice on the actual history, not a model trajectory.

For any positive matrix \(Q\) and nonzero stencil \(l\), the general sharp extraction constant is
\((l^TQ^\dagger l)^{-1}\) when \(l\in\operatorname{Ran}Q\), and zero otherwise. This includes metrics depending on the actual Gram. A constant normalized value of \(E_Q\) alone gives no lower bound for that constant.

There are genuine paid adaptive classes. For monotone physical clocks and \(0\le q_i\le\bar q_i\), the kinetic data directly pay the stock, positive action and absolute force work. They also pay the signed coefficient primitive without a finite-variation assumption:
\[
 \tfrac12\int_a^b\sum_iq_i'e(\tau_i)
 =E(b)-E(a)+\nu\int_a^b\sum_iq_i\lambda_iY_i
                       -\int_a^b\sum_iq_i\lambda_i\langle U_i,g_i\rangle .
 \tag{AQ23a}
\]
Its absolute prefix value is at most
\(\sum_i\bar q_i[K^2+K\|g\|_{L^1L^2}]\),
\(K=\|u_0\|+\|g\|_{L^1L^2}\).
This is a signed primitive, not absolute integrability of an oscillating coefficient work. The compensated bounded-weight, bounded-variation class likewise has an explicit positive stock/action payment at arbitrary force amplitude, using AQ18a and only prescribed spatial force norms. Both classes lose extraction with \(h^2\); these useful adaptive payments are not dismissed.

For a smooth diagonal density \(q(t,z)\), \(0\le z\le1\), the complete continuum law is
\[
 E=\tfrac12\int q(t,z)e(t+zh)\,dz,\quad
 E'+\nu\int q(1+zh')Y(t+zh)\,dz
 =\int q(1+zh')\langle u,g\rangle(t+zh)\,dz
                         +\tfrac12\int q_t e(t+zh)\,dz .
 \tag{AQ24}
\]
If \(q_t=-\partial_z(vq)+r\), the last term is
\(\frac12\int vq\,\partial_ze+\frac12\int re-\frac12[vqe]_0^1\).
The first part gives the extra node speed \(hv\), and the last is the support-boundary flux. Normalization, density redistribution or moving support therefore retains its complete coefficient and boundary work.

## 8. Original receiving action and exact endpoint scope

Let \(V=u_t\). On every actual increment,
\[
 d(t)=h(t)^{-1}\int_t^{t+h(t)}V(s)\,ds,\quad
 {\cal V}_h(t)=h(t)^{-1}\int_t^{t+h(t)}\|V(s)-d(t)\|^2ds .
\]
The exact nonnegative action equality is
\[
 \int_0^T(\|d\|^2+{\cal V}_h)\,dt
 =\int_0^T m_h(s)\|V(s)\|^2ds,\quad
 m_h(s)=\int_{\{t\le s\le t+h(t)\}}\frac{dt}{h(t)} .
 \tag{AQ25}
\]
For \(|h'|\le L_0<1\), this multiplicity is at most
\(-\log(1-L_0)/L_0\), and after the initial strict strip it is at least
\(\log(1+L_0)/L_0\).
Both ratios have continuous value one at \(L_0=0\).
Thus a finite quotient action together with the displayed actual variance gives the physical temporal action. Alternatively a verified smooth tracking choice
\(\|d(t)-V(t)\|\le\epsilon\|V(t)\|+k(t)\), \(\epsilon<1,\ k\in L^2\),
gives
\(\|V\|_{L^2}\le(\|d\|_{L^2}+\|k\|_{L^2})/(1-\epsilon)\).
The actual strict modulus allows a wider Lipschitz tracking selection; its action is a separate upper-payment requirement. These are sufficient operations, rather than a dismissal of single-curve methods.

Changing the clock through an increasing \(C^1\) map \(s=\phi(r)\), \(\phi'>0\), retains the reciprocal Jacobian required by the physical first row on its mapped physical interval:
\[
 \int \phi'(r)^{-1}
             \|\partial_r u(\phi(r))\|^2dr=\int\|u_t(s)\|^2ds .
 \tag{AQ26}
\]
A compressed parameter action without that factor is a different norm.

All adaptive ledgers hold first at strict \(b<T\). Both forward columns approach the same weak \(L^2\) terminal velocity and each has norm limit \(e_*\), but their cross Gram need not yet have a limit. A subsequential defect has the form
\(\bigl(\begin{smallmatrix}\Delta_*&d_*\\d_*&\Delta_*\end{smallmatrix}\bigr)\),
\(|d_*|\le\Delta_*=e_*-\|u_{\rm w}\|^2\).
The fixed-separated-shift single-column defect cannot be reused here. Diagonal scalar energy and AQ15 need no cross limit; general off-diagonal endpoint stocks remain until proved.

There is a useful complete adaptive gain: kinetic and force data pay the signed primitive of
\((1+h')\langle U_0,N(U_1,U_1)\rangle+\langle U_1,N(U_0,U_0)\rangle
=-h^2S(m,d,d)+h'\langle U_0,N(U_1,U_1)\rangle\)
on every strict cutoff when \(|h'|\le L_0<1\). They also pay the positive actions of \(hd\) and \(h\nabla d\). The [interval execution](14-adaptive-physical-domain.md) supplies exact constants, source excerpts, both initial/terminal strips and all backward-clock substitutions. Dividing by \(h^2\) does not preserve that upper price.

## 9. Closed result for this route

The complete finite moving-matrix law, compensated force law and interval operations cover arbitrary admissible adaptive choices in the stated class. Bounded positive cancelling mass loses derivative extraction; preserving it introduces the sharp total-stock cost. Actual row-recovering families cannot have a uniform full positive stock on a nonzero history. A single terminal curve must instead supply its actual kinetic decay, action and row identification. A history-dependent non-diagonal cancellation retains AQ12 and must prove its selection and coercivity/payment properties. Positive energy normalization alone does not do so.

This finishes the adaptive extension of the tested finite/factorial/actual-shift quadratic-cancellation route. It supplies no further datum-to-whole-terminal producer. Its boundary is explicit: another valid actual-history estimate of the selection work or receiving action, or an identity outside the tested coefficient class, would be new proof input. No general Navier–Stokes nonexistence or global-regularity conclusion is drawn from this bounded test.

Full supporting derivations are [the moving finite matrix](12-adaptive-shift-matrix.md), [compensated adaptive force and weights](13-adaptive-compensation.md), and [physical intervals and receiving action](14-adaptive-physical-domain.md).
