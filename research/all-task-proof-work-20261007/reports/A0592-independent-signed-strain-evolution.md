# Source-subtracted response, signed strain and its complete evolution

**Reviewed scope and currentness.** The mathematical statements retain their recorded hypotheses and the reconciliations listed in the supersession register. Original finite-rectangle membership, when supplied, implies downstream source and selected-current bounds. Optional sufficient criteria in this report are not added as upstream premises of the printed producer. The mathematical body retains its stated strict-time, terminal, pressure and force hypotheses. Publication adds no unconditional global theorem claim.


This is a new derivation from the original pressure-complete forced rows. It verifies the proposed response construction before bounding its factors separately. The calculation supplies an exact joint storage law, an independent strain-evolution law and a further pressure completion. The joint storage law does not, by itself, upper-bound its own signed nonlinear input. The independently evolved strain retains explicit diffusion, base-pressure and response-pressure contributions. The conclusions below concern these executed operations on the actual Navier–Stokes history.

## Sources and domain

Only mathematical rows were used:

* [Forced native assembly](../SOURCES.md#S152), LF16–99, equations (1)–(7): the actual forced history, all Eulerian binomial parents, pressure completion, initial jet and full signed production. .
* [Unified forced setting](../SOURCES.md#S117), LF4–61, 66–178 and 213–266: normalized pressure, strict-prefix classical history, complete temporal/spatial recurrences and datum-generated initial rows. .
* [Unified forced rectangles](../SOURCES.md#S118), LF13–61, 68–162 and 189–252: kinetic payment, complete signed height balance and temporal/viscous/pressure squares. .

Fix the original smooth history on a closed strict prefix \([a,B]\subset[0,T_*)\), \(\nu>0\), and \(\delta>0\). The original datum belongs to every finite Sobolev space and the prescribed force has every smooth Schwartz spatial row on finite time horizons. Thus the integrations below are justified there, either directly by Sobolev integrability or by cutoff passage. No terminal trace or terminal bound on a higher row is used. Every displayed norm is over \(\mathbb R^3\); real pairings are understood.

Use distinct notation for the Laplacian operator and the pointwise gradient:

\[
 A=-\Delta,\quad M_{ij}=\partial_j u_i,\quad D=\tfrac12(M+M^T),\quad \Omega=\tfrac12(M-M^T),\quad
 N(a,b)=(a\cdot\nabla)b.
 \tag{SS1}
\]

Put \(g=\mathbb Pf\), \(n=N(u,u)\), \(q=-\mathbb Pn\). The force potential and intrinsic pressure are

\[
 \chi=-A^{-1}\operatorname{div}f,\quad \nabla\chi=f-g,\quad
 p_0=R_iR_j(u_i u_j),\quad p=p_0+\chi,
 \qquad u_t+\nu Au=q+g.
 \tag{SS2}
\]

These are the original setting's `formal-pressure-riesz`, `formal-pressure-projected` and temporal row with \(n=0\). The response introduced here is

\[
 e=\|u\|_2^2,\quad Y=\|\nabla u\|_2^2,\quad b=e+\delta,\quad
 \lambda=\frac{\nu Y}{b},\quad h=u_t-g=-\nu Au+q,\quad w=h+\lambda u,
 \qquad S=\int w^TDw=\int w_iw_j\partial_j u_i.
 \tag{SS3}
\]

The definition is regular even at \(e=0\). Write \(F=\langle u,g\rangle\). The original kinetic row gives

\[
 e'=2F-2\nu Y=2F-2\lambda b,\quad
 \langle q,u\rangle=0,\quad \langle h,u\rangle=-\nu Y,\quad
 \langle w,u\rangle=-\delta\lambda.
 \tag{SS4}
\]

## Full first-response row and its pressure

The original first temporal row contains both ordered parents \(N(u,u_t)\) and \(N(u_t,u)\). Define their projected linearization

\[
 L_u v=\mathbb P\{N(u,v)+N(v,u)\},\qquad
 j_g=-L_u g-\nu Ag.
\]

Differentiating \(h=-\nu Au+q\), with \(Dq(u)[v]=-L_uv\), cancels \(g_t\) exactly and gives

\[
 h_t+\nu Ah+L_uh=j_g,\qquad
 w_t+\nu Aw+L_uw=r,
 \quad r=j_g+\lambda' u+\lambda(g-q).
 \tag{SS5}
\]

Both parents in \(j_g\) remain. Its raw representative is \(J=-\nu Ag-N(u,g)-N(g,u)\), with
\(j_g=\mathbb PJ\) and \(J=j_g+\nabla\pi_g\), where
\(\pi_g=R_iR_j(u_i g_j+g_i u_j)\).

Since \(r\) is solenoidal, the equivalent unprojected response equation has its own normalized pressure

\[
 w_t+\nu Aw+N(u,w)+N(w,u)+\nabla\rho=r,
 \quad
 \rho=R_iR_j(u_iw_j+w_i u_j)
       =(p_0)_t+2\lambda p_0-\pi_g,
 \quad -\Delta\rho=2\operatorname{tr}(M\nabla w).
 \tag{SS6}
\]

In particular the pressure paired against \(Dw\) is \(\rho\). The alternative raw-source equation has pressure \(p_t+\lambda p\) and right side
\(f_t-g_t-\nu Ag-N(u,g)-N(g,u)+\lambda' u+\lambda f+\lambda n\).
Moving its gradient-source parts is exactly what converts that equation into (SS6). The two pressure representatives are not interchangeable while retaining different right sides.

## Direct storage calculation before norm separation

The two mixed strain allocations cancel differently:

\[
 \int u_i h_j\partial_j u_i=0,\qquad
 \int h_i u_j\partial_j u_i=\langle h,n\rangle=-\langle h,q\rangle,
 \qquad S=S(u,h,h)-\lambda\langle h,q\rangle.
 \tag{SS7}
\]

The first equality uses \(\operatorname{div}h=0\); the second uses the complete intrinsic pressure and \(\operatorname{div}h=0\). No ordered parent has been identified with the other.

Pairing (SS5) with \(w\) cancels only the transport and the global pressure pairing. The scalar derivative \(\lambda'\langle w,u\rangle=-\delta\lambda\lambda'\) is an exact boundary stock. Thus

\[
 R_w=\tfrac12(\|w\|_2^2+\delta\lambda^2)
     =\tfrac12\left(\|h\|_2^2-\frac{\nu^2Y^2}{b}\right),
 \qquad
 R_w'+\nu\|\nabla w\|_2^2+S
   =\langle w,j_g\rangle+\lambda\langle w,g-q\rangle.
 \tag{SS8}
\]

For the proposed joint stock, write \(d=e+3\delta\):

\[
 \Phi_\delta=\tfrac12\|h\|_2^2-\frac{\nu^2Y^2}{4b}
 =\tfrac12\|w\|_2^2+\frac d4\lambda^2,
 \qquad \Phi_\delta-R_w=\frac b4\lambda^2.
 \tag{SS9}
\]

The necessary cross terms are

\[
 \langle w,q\rangle=\langle h,q\rangle
 =\|h\|_2^2+\frac\nu2Y'-\nu\langle g,Au\rangle,
 \qquad
 (b\lambda^2/4)'=\frac{\nu\lambda}{2}Y'-\frac{\lambda^2}{2}F+\frac b2\lambda^3.
 \tag{SS10}
\]

Adding precisely this derivative to (SS8) gives, without an estimate,

\[
 \boxed{\Phi_\delta'+\nu\|\nabla w\|_2^2
       +\lambda\|w\|_2^2+\frac d2\lambda^3
       =-S+\langle w,j_g\rangle+\lambda\langle q,g\rangle
              +\frac{\lambda^2}{2}F.}
 \tag{SS11}
\]

All scalar, spatial and time derivative pairings in this direct construction reduce exactly to the joint stock (SS9). By Cauchy, \(\nu^2Y^2=|\langle h,u\rangle|^2\le e\|h\|_2^2\), so
\(\|h\|_2^2/4\le\Phi_\delta\le\|h\|_2^2/2\).
At the datum, \(h(0)=\nu\Delta u_0-\mathbb P N(u_0,u_0)\), and \(\lambda(0),w(0),\Phi_\delta(0),S(0)\) are finite and determined by \(u_0,\nu,\delta\). The projected force at zero cancels in \(h(0)\).

For every strict prefix, the exact boundary identity is

\[
 I_\delta(a,B):=-\int_a^B S
 =\Phi_\delta(B)-\Phi_\delta(a)
 +\int_a^B\left[\nu\|\nabla w\|_2^2+\lambda\|w\|_2^2+\tfrac d2\lambda^3\right]
 -\int_a^B\left[\langle w,j_g\rangle+\lambda\langle q,g\rangle+\tfrac{\lambda^2}2F\right].
 \tag{SS12}
\]

For \(g=0\), this identity supplies the lower bound \(I_\delta(0,B)\ge-\Phi_\delta(0)\); it does not supply an upper bound on \(I_\delta\). The unknown terminal stock and the nonnegative actions are on the same side as this signed input.

The complete forcing in (SS11) can be paid separately without replacing \(q\) by a forced toy source: integration by parts gives
\(\langle q,g\rangle=\int u_i u_j\partial_jg_i\).
With \(G_1=\|\nabla g\|_\infty\) in operator norm,
\[
 \lambda|\langle q,g\rangle|\le\nu G_1Y,\quad
 \|j_g\|_2\le J_0:=\nu\|Ag\|_2+\|g\|_\infty\sqrt Y+G_1\sqrt e,
 \quad
 \tfrac12\lambda^2|F|\le\tfrac d4\lambda^3+\frac{8|F|^3}{27d^2}.
\]
Consequently
\[
 \Phi_\delta'+\nu\|\nabla w\|_2^2+\lambda\|w\|_2^2+\tfrac d4\lambda^3
 \le-S+\Phi_\delta+\tfrac12J_0^2+\nu G_1Y+\frac{8|F|^3}{27d^2}.
 \tag{SS13}
\]
On any finite force horizon the last three terms have a datum/force/\(\delta\)-only integral bound, using \(e\le K_f^2\), \(\int Y\le K_f^2/(2\nu)\), \(d\ge3\delta\), and the prescribed force norms. Thus the unbounded-input issue in this executed storage operation is its actual signed strain input; arbitrary known smooth force introduces no unretained derivative or pressure port here.

## Independent full strain evolution

Spatial differentiation of the original physical equation gives

\[
 (\partial_t+u\cdot\nabla)M=\nu\Delta M-M^2-\nabla^2p+\nabla f,
 \qquad
 (\partial_t+u\cdot\nabla)D
 =\nu\Delta D-D^2-\Omega^2-\nabla^2p+\operatorname{Sym}\nabla f.
 \tag{SS14}
\]

This is a full material-gradient identity derived from the original spatial mixed row. It is distinct from the scalar energy pairing (SS11). Transport is accounted for by applying the material derivative to \(w^TDw\) and using incompressibility. With the projected \(r\) and its own pressure \(\rho\) in (SS6), it gives

\[
 \begin{split}
 S'={}&\mathcal V
 +\int\bigl(|M^Tw|^2-4|Dw|^2\bigr)
 -\int w^T(\nabla^2p)w+\int w^T(\operatorname{Sym}\nabla f)w\\
 &-2\langle\nabla\rho,Dw\rangle+2\langle Dw,r\rangle,\\
 \mathcal V={}&2\nu\int w^T\Delta D\,w
              -2\nu\sum_k\int(\partial_kw)^TD(\partial_kw)\\
          ={}&-4\nu\sum_k\int(\partial_kw)^T(\partial_kD)w
              -2\nu\sum_k\int(\partial_kw)^TD(\partial_kw).
 \end{split}
 \tag{SS15}
\]

The reaction used here is exactly
\(-|Mw|^2-2w^TM^2w=|M^Tw|^2-4|Dw|^2\).
Equivalently its tensor is \(-3D^2-\Omega^2-D\Omega+\Omega D\). Both rotation and the strain/rotation commutator are retained. Neither the trace-free coefficient in \(\mathcal V\) nor its gradient commutator has been assigned a sign.

The physical force-gradient part cancels only its matching pressure potential:
\[
 -\nabla^2p+\operatorname{Sym}\nabla f
 =-\nabla^2p_0+\operatorname{Sym}\nabla g.
 \tag{SS16}
\]
This cancellation leaves the entire nonlinear intrinsic pressure Hessian.

There is also a genuine response-pressure completion. Since
\(\operatorname{div}(Mw)=\operatorname{tr}(M\nabla w)=-\Delta\rho/2\), integration by parts gives
\[
 \langle\nabla\rho,Mw\rangle=-\tfrac12\|\nabla\rho\|_2^2,
 \quad -2\langle\nabla\rho,Dw\rangle
 =\tfrac12\|\nabla\rho\|_2^2-\langle\nabla\rho,M^Tw\rangle.
\]
Therefore the whole reaction and response-pressure port recombine as
\[
 \boxed{-4\|Dw\|_2^2
       +\|M^Tw-\tfrac12\nabla\rho\|_2^2
       +\tfrac14\|\nabla\rho\|_2^2.}
 \tag{SS17}
\]
This completion keeps every pressure term. It leaves signed contributions when the desired quantity is \(-\int S\): the negative \(-4\|Dw\|_2^2\) contribution can increase that primitive, and the positive completed squares can decrease it. No domination between them follows from this equality.

The special response also permits an exact base-pressure substitution before norms. Put \(B_{ww}=N(w,w)\), with both this and \(n=N(u,u)\) unprojected. From (SS2)–(SS3),
\(\nabla p_0=\nu\Delta u-n+\lambda u-w\). Hence
\[
 -\int w^T\nabla^2p_0\,w
 =\langle\nabla p_0,B_{ww}\rangle
 =\nu\langle\Delta u,B_{ww}\rangle-\langle n,B_{ww}\rangle-\lambda S.
 \tag{SS18}
\]
The missing term \(\langle w,B_{ww}\rangle\) is exactly zero, and
\(\langle u,B_{ww}\rangle=-S\). Projection of \(B_{ww}\) would remove precisely the pressure pairing under examination; it is not made in this substitution.

Writing \(r=j_g+(\lambda'+\lambda^2)u-\lambda w+\nu\lambda\Delta u+\lambda g\), and using \(2\langle Dw,u\rangle=-\langle w,q\rangle\), gives two exact forms:
\[
 \begin{split}
 S'+2\lambda S={}&\mathcal V+\text{(SS17)}
 -\int w^T\nabla^2p_0\,w+\int w^T\operatorname{Sym}\nabla g\,w\\
 &+2\langle Dw,j_g+\nu\lambda\Delta u+\lambda g\rangle
 -(\lambda'+\lambda^2)\langle w,q\rangle;\\
 S'+3\lambda S={}&\mathcal V+\text{(SS17)}
 +\nu\langle\Delta u,B_{ww}\rangle-\langle n,B_{ww}\rangle
 +\int w^T\operatorname{Sym}\nabla g\,w\\
 &+2\langle Dw,j_g+\nu\lambda\Delta u+\lambda g\rangle
 -(\lambda'+\lambda^2)\langle w,q\rangle.
 \end{split}
 \tag{SS19}
\]
Thus an actual scalar damping term appears after the response construction. Its complete right side retains the viscous commutators, the base-pressure substitution (or its full Hessian), all ordered nonlinear factors and the scalar derivative contraction.

## Exact damping primitive and its boundary conversion

For the first form of (SS19), denote the complete right side by \(R\). The original kinetic budget supplies
\[
 \int_a^B\lambda\le\frac\nu\delta\int_a^B Y\le\frac{K_f(B)^2}{2\delta}.
\]
Define the actual kernel
\[
 K(r,B)=\int_r^B\exp\!\left(-2\int_r^t\lambda\right)dt,
 \quad 0\le K(r,B)\le B-r,\quad K_r=-1+2\lambda K.
\]
The complete signed primitive is
\[
 I_\delta(a,B)=-K(a,B)S(a)-\int_a^B K(r,B)R(r)dr.
 \tag{SS20}
\]
This is an exact integrating-factor identity, rather than a source estimate. The \(\lambda'\) port can be tested without assuming bounded variation of \(\lambda\). Put \(k=\langle w,q\rangle=\langle h,q\rangle\), and write \(R=R_0-\lambda'k\). Integration by parts in the strict prefix gives
\[
 I_\delta(a,B)=-K(a,B)[S(a)+\lambda(a)k(a)]
 +\int_a^B\lambda k
 -\int_a^B K[R_0+2\lambda^2k+\lambda k'].
 \tag{SS21}
\]
But (SS7) gives \(S+\lambda k=S(u,h,h)\), and differentiation gives
\[
 S(u,h,h)'+2\lambda S(u,h,h)=R_0+2\lambda^2k+\lambda k'.
 \tag{SS22}
\]
Thus this scalar-derivative boundary conversion restores the actual \(h\)-strain current. It does not produce an additional paid endpoint. The finite datum mass of \(\lambda\) and the exact kernel bound remain useful, but neither removes the signed full remainder in (SS20).

The stronger damping form in (SS19) admits the same complete calculation. Define \(\mathcal T_3\) as its right side with the entire term \(-(\lambda'+\lambda^2)k\) removed, and
\(K_3(r,B)=\int_r^B\exp(-3\int_r^t\lambda)dt\). Then
\[
 I_\delta(a,B)=-K_3(a,B)[S(a)+\lambda(a)k(a)]+\int_a^B\lambda k
 -\int_a^B K_3[\mathcal T_3+\lambda k'+2\lambda^2k],
 \quad
 S(u,h,h)'+3\lambda S(u,h,h)=\mathcal T_3+\lambda k'+2\lambda^2k.
 \tag{SS22b}
\]
Here \((K_3)_r=-1+3\lambda K_3\). In particular, the additional actual damping has not removed the signed contractions created by the physical-pressure substitution.

Finally, the full pressure square for the derived response is
\[
 \|w_t\|_2^2+\nu^2\|Aw\|_2^2+\|\nabla\rho\|_2^2
 +\nu(\|\nabla w\|_2^2)'
 =\|r-N(u,w)-N(w,u)\|_2^2.
 \tag{SS23}
\]
It follows by squaring the unprojected (SS6), with gradient orthogonal to the temporal and viscous solenoidal faces. This is the exact same complete-equation operation as original `complete-forced-pressure-square`, applied to the lawful derived response. Its right side includes the full two ordered nonlinear parents and the \(\lambda'\) row. Positive pressure coercivity is genuine; the operation has not estimated that right side from datum-only quantities.

## Bounded independence conclusion

The direct source-subtracted response calculation, the \(\lambda'\) boundary stock and the kinetic cross-pairings give exactly (SS11)–(SS12). They do not supply an independent upper payment for their signed input \(I_\delta\). Known smooth forcing is fully retained and paid at (SS13), with no force smallness. Initial stocks are finite datum stocks.

The independently executed material strain equation gives more information than that scalar storage equality: the complete diffusion commutators, rotation/strain terms, the exact positive pressure completion (SS17), and the additional actual damping form (SS19). After the integrating-factor operation, the upper-payment question for \(I_\delta\) still contains those explicit signed contributions. Integrating the scalar derivative term by parts returns the \(h\)-strain boundary/current, and using the complete pressure square retains its full nonlinear source. None of these executed operations establishes a datum-only upper bound on the remaining signed kernel integral. This is a precise limitation of the displayed operations, not a sign counterexample, a claim that another original branch is absent, or a global invalidity verdict.

Every equation above is established on each original strict prefix. Whole-terminal passage would require actual uniform control of the retained terms or their full joined signed aggregate. No such passage is assumed in this report, and no normalized or compensated zero trace is substituted for original endpoint membership.

The full response-pressure, material-gradient, reaction and physical-pressure-substitution calculations were also executed independently in [full-signed-strain-check.md](A0585-full-signed-strain-check.md), whose author-supporting SHA256 is `ff9a63c2285d54b59f5669e7aba38ec51fb7428a9c2acd399b4bf2007ebfebb1`.
