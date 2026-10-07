# Complete equation, strain evolution, and causal pairing for the actual compensated row

**Reviewed scope and currentness.** The mathematical statements retain their recorded hypotheses and the reconciliations listed in the supersession register. Original finite-rectangle membership, when supplied, implies downstream source and selected-current bounds. Optional sufficient criteria in this report are not added as upstream premises of the printed producer. The mathematical body retains its stated strict-time, terminal, pressure and force hypotheses. Publication adds no unconditional global theorem claim.


This is a new derivation from the pressure-complete first two momentum rows. The compensated receiver and the signed strain evolution below are analysis objects, not equations claimed to be printed in the paper. Every identity is first established on an arbitrary strict interval \([0,t]\), \(t<T_*\), of the same classical history. No whole-terminal positive Sobolev membership is assumed. The fixed regularization is \(\delta>0\); there is no \(\delta\to0\) step.

## 1. Exact source inputs and notation

The three mathematical source inputs are:

| Input | Exact source content used | SHA256 |
|---|---|---|
| [Forced mixed jet](../SOURCES.md#S117) | Momentum and canonical pressure, LF15–29, LF59–87; both temporal nonlinear/pressure parents, LF116–149; initial jets, LF214–265. | `9ce0e212e73c2d258abcf9866517e9ccb8328a7dda8b247075e5cefa2aec97f9` |
| [Forced rectangle relationships](../SOURCES.md#S118) | Kinetic identity and whole finite-horizon kinetic payment, LF13–59; complete temporal-row pairing, LF68–163; unprojected/projected square and pressure face, LF189–251. | `04bdd4a568a0f6c3f8c1c36109d750999e338024314ba3b7a1b877bf18ffbe46` |
| [Native forced assembly](../SOURCES.md#S152) | Complete temporal/spatial pressure graph and initial recursion, LF41–70; same-row height pairing, LF74–99; finite source-compensation telescoping operation, LF114–132 and LF214–250. | `15d1102d14887595cc3be128a7045f08eb977dae9399be40fa52317a6f5817b5` |

Here \(L=-\Delta=\Lambda^2\) is homogeneous, \(N(a,b)=(a\cdot\nabla)b\), and all inner products are real spatial \(L^2\) pairings. Define
\[
 v=u_t,\quad B=N(u,u),\quad q=-\mathbb P B,\quad g=\mathbb P f,
 \qquad Dq[z]=-\mathbb P\{N(u,z)+N(z,u)\}.
 \tag{WS1}
\]
The lower-case vector \(q\) is distinct from the source's scalar pressure jet \(Q_n=\partial_t^np\). The literal source rows, specialized to \(n=0,1\), are
\[
\begin{aligned}
 v+\nu Lu+B+\nabla p&=f,\\
 v_t+\nu Lv+N(u,v)+N(v,u)+\nabla p_t&=f_t,\\
 p&=R_iR_j(u_i u_j)-L^{-1}\operatorname{div}f,\\
 p_t&=R_iR_j(v_i u_j+u_i v_j)-L^{-1}\operatorname{div}f_t.
\end{aligned}\tag{WS2}
\]
Both ordered nonlinear parents and both pressure parents occur before any cancellation. The source history has every fixed mixed derivative in \(C([0,t];H^m)\) for every finite \(m\) and every strict \(t\). Consequently the differentiations, spatial integration by parts, and finite-time Fubini operations used here are legitimate on these strict intervals. Spatial cutoffs followed by Sobolev convergence justify integrations on \(\mathbb R^3\).

Put
\[
 h=v-g=q-\nu Lu,\quad e=\|u\|^2,\quad Y=\|\nabla u\|^2,
 \quad b=e+\delta,\quad d=e+3\delta,\quad F=\langle u,g\rangle,
 \quad\lambda=\frac{\nu Y}{b},\quad w=h+\lambda u.
 \tag{WS3}
\]
These objects are defined even when \(e=0\), and \(w\) is solenoidal. Kinetic tangency gives
\[
\begin{gathered}
 \langle q,u\rangle=0,\quad Dq[u]=2q,\quad
 \langle Dq[z],u\rangle=-\langle q,z\rangle,\\
 \langle u,h\rangle=-b\lambda,\qquad
 \langle u,w\rangle=-\delta\lambda,\\
 e'=-2b\lambda+2F,\qquad
 b\lambda'=2\nu\langle Lu,w+g\rangle-2\lambda F.
\end{gathered}\tag{WS4}
\]
In particular the regularized \(w\) is not asserted to be orthogonal to \(u\). The identity for \(\lambda'\) follows by differentiating \(b\lambda=\nu Y\), using \(Y'=2\langle Lu,v\rangle\), and inserting \(v=w-\lambda u+g\).

Projection of the full WS2 row gives
\[
 h_t+\nu Lh=Dq[h]+j_g,
 \qquad j_g=Dq[g]-\nu Lg
 =-\mathbb P\{N(u,g)+N(g,u)\}+\nu\Delta g.
 \tag{WS5}
\]
The cancellation of \(g_t\) in WS5 is performed on the actual first-binomial row. It does not omit either ordered insertion of \(g\).

## 2. Unprojected and projected equations for the same receiver

Start directly with WS2 and \(w=v-g+\lambda u\). The raw physical equation is
\[
\begin{aligned}
 w_t+\nu Lw+N(u,w)+N(w,u)+\nabla(p_t+\lambda p)
  ={}& f_t-g_t-\nu Lg-N(u,g)-N(g,u)\\
     &+\lambda f+\lambda B+\lambda'u.
\end{aligned}\tag{WS6}
\]
The two \(\lambda B\) contributions from the two ordered nonlinear slots and the one used in substituting \(\lambda u_t\) have been combined to the displayed single \(\lambda B\). This equation still contains all physical force and pressure terms.

Let
\[
 \chi=L^{-1}\operatorname{div}f,\qquad
 p_0=p+\chi=R_iR_j(u_i u_j),\qquad
 J=-N(u,g)-N(g,u)-\nu Lg.
 \tag{WS7}
\]
Since \(\nabla\chi=-(I-\mathbb P)f\), one has \(f=g-\nabla\chi\). Thus \(f_t-g_t=-\nabla\chi_t\). In WS6 the terms \(-\nabla\chi_t-\lambda\nabla\chi\) cancel precisely with the same gradient contributions in \(\nabla(p_t+\lambda p)\). The resulting equivalent equation is
\[
 w_t+\nu Lw+N(u,w)+N(w,u)+\nabla\rho
 =J+\lambda g+\lambda B+\lambda'u,
 \qquad \rho=p_{0,t}+\lambda p_0.
 \tag{WS8}
\]

Use \(B+\nabla p_0=\mathbb P B=-q\) and \(q=w-\lambda u+\nu Lu\). Moving the resulting linear \(\lambda w\) to the left produces a second equivalent physical equation:
\[
\begin{aligned}
 w_t+\nu Lw+N(u,w)+N(w,u)+\lambda w+\nabla\pi&=r,\\
 \pi=p_{0,t}+2\lambda p_0,\qquad
 r&=J-\lambda\nu Lu+(\lambda'+\lambda^2)u+\lambda g.
\end{aligned}\tag{WS9}
\]
The pressure in WS9 is \(\pi\), not the \(\rho\) in WS8. Their difference is the retained \(\lambda p_0\).

The complete pressure allocation can also be exhibited directly:
\[
\begin{gathered}
 \pi=\pi_w+\pi_g,\qquad
 \pi_w=R_iR_j(u_iw_j+w_iu_j),\qquad
 \pi_g=R_iR_j(u_ig_j+g_iu_j),\\
 J=j_g+\nabla\pi_g.
\end{gathered}\tag{WS10}
\]
Here \(v=w+g-\lambda u\) in \(p_{0,t}\) gives the first equality. The two source-pressure parents in \(\pi_g\) cancel against the matching gradient in \(J\). Therefore another complete physical presentation and its Leray projection are
\[
\begin{aligned}
 w_t+\nu Lw+N(u,w)+N(w,u)+\lambda w+\nabla\pi_w&=r_P,\\
 w_t+\nu Lw-Dq[w]+\lambda w&=r_P,\\
 r_P&=j_g-\lambda\nu Lu+(\lambda'+\lambda^2)u+\lambda g.
\end{aligned}\tag{WS11}
\]
This is a pressure-complete cancellation. The projected \(j_g\) still contains the entire two-parent nonlinear source and its pressure projection. The initial receiver is fixed by \(u_0,\nu,\delta\):
\[
 h_0=-\mathbb P N(u_0,u_0)-\nu Lu_0,\qquad
 \lambda_0=\frac{\nu\|\nabla u_0\|^2}{\|u_0\|^2+\delta},\qquad
 w_0=h_0+\lambda_0u_0.
 \tag{WS12}
\]
The complete initial jet in the source supplies these finite coordinates; the \(g_0\) term in \(v_0\) cancels in \(h_0\).

## 3. The signed pairing is exactly the compensated storage law

Define the actual signed strain, its primitive, and the intermediate stock:
\[
 S(t)=\int w_iw_j\partial_ju_i\,dx,
 \qquad I_\delta(t)=-\int_0^tS(s)\,ds,
 \qquad R_w=\frac12\bigl(\|w\|^2+\delta\lambda^2\bigr).
 \tag{WS13}
\]
Pair WS8 with \(w\). The transport and pressure pairings vanish because the actual receiver is solenoidal; the other nonlinear parent is exactly \(S\). The \(\lambda' u\) contribution is \(-\delta\lambda\lambda'\). The resulting identity, with no separated norm estimates, is
\[
 I_\delta'
 =R_w'+\nu\|\nabla w\|^2-\langle w,j_g\rangle
       -\lambda\langle w,g\rangle+\lambda\langle w,q\rangle.
 \tag{WS14}
\]
Neither the regularization stock nor its time boundary is discarded.

From WS4,
\[
 \nu\lambda\langle Lu,w\rangle
 =\left(\frac{b\lambda^2}{4}\right)'
   +\frac{b\lambda^3}{2}+\frac{\lambda^2F}{2}
   -\nu\lambda\langle Lu,g\rangle.
 \tag{WS15}
\]
Also \(\lambda\langle w,q\rangle=\lambda\|w\|^2+\delta\lambda^3+\nu\lambda\langle Lu,w\rangle\). Add WS15 in WS14, keeping the complete force cross terms. With
\[
 \Phi_\delta=R_w+\frac{b\lambda^2}{4}
 =\frac12\|w\|^2+\frac{d\lambda^2}{4}
 =\frac12\|h\|^2-\frac{\nu^2Y^2}{4b},
 \tag{WS16}
\]
one obtains exactly
\[
\begin{aligned}
 I_\delta(t)={}&\Phi_\delta(t)-\Phi_\delta(0)
 +\int_0^t\left(\nu\|\nabla w\|^2+\lambda\|w\|^2
                        +\frac{d\lambda^3}{2}\right)ds\\
 &-\int_0^t\left(\langle w,j_g\rangle
             +\lambda\langle q,g\rangle+\frac{\lambda^2F}{2}\right)ds.
\end{aligned}\tag{WS17}
\]
This reproduces the earlier derived [joint balance, JR14–15](A0434-joint-first-binomial-gram-storage.md) by an independent physical-row pairing. The nonnegative quantities are the storage \(\Phi_\delta\) and its three displayed dissipative terms; no sign is assigned to \(\Phi_\delta'\). Cauchy–Schwarz gives \(\|h\|^2/4\le\Phi_\delta\le\|h\|^2/2\). WS17 is an equality, including both endpoint stocks and every source term, rather than a new upper estimate for \(I_\delta\).

## 4. Exact signed strain evolution with every differentiated slot

Set \(U_{ij}=\partial_j u_i\), \(\mathsf D=(U+U^T)/2\). In matrix notation \(Uw\) has components \(U_{ij}w_j\), and \(w^TU^2w\) has its literal matrix-product meaning. Differentiation of WS13 uses the two receiver derivatives and the full derivative \(\partial_j u_{i,t}\). Substituting WS9 and the original unprojected momentum row gives
\[
\begin{aligned}
 S'+2\lambda S={}&\mathcal V_\nu
  -\int\bigl(|Uw|^2+2w^TU^2w\bigr)dx\\
 &-\int w_iw_j\partial_{ij}p\,dx
  -\int\bigl((\partial_i\pi)w_j+w_i\partial_j\pi\bigr)U_{ij}\,dx\\
 &+\int w_iw_j\partial_jf_i\,dx
  +\int(r_iw_j+w_ir_j)U_{ij}\,dx,
\\[-2mm]
 \mathcal V_\nu={}&-2\nu\int\bigl[
  (\partial_kw_i)(\partial_kw_j)U_{ij}
 +(\partial_kw_i)w_j\partial_kU_{ij}
 +w_i(\partial_kw_j)\partial_kU_{ij}\bigr]dx.
\end{aligned}\tag{WS18}
\]
Repeated indices are summed in all these expressions. In particular:

- The complete common transport is \(-\int u\cdot\nabla(w_iw_jU_{ij})\,dx=0\). This uses the sum of all three transported slots.
- The three diffusion slots produce all three cross contractions in \(\mathcal V_\nu\), with coefficient \(-2\nu\).
- The first receiver stretch gives \(-|Uw|^2\). The second receiver stretch and the derivative of \(N(u,u)\) give the two copies of \(-w^TU^2w\).
- Neither the physical pressure Hessian nor the receiver-pressure gradients have a sign assigned. Unlike the solenoidal energy pairing, these test fields are generally not solenoidal.
- The vector \(r\) is the entire raw expression in WS9, including \(\lambda'\), both \(g\) parents, viscosity, and \(\lambda g\).

There are two further exact cancellations before any norm bound. First,
\[
 -\partial_{ij}p+\partial_jf_i
   =-\partial_{ij}p_0+\partial_jg_i.
 \tag{WS19}
\]
Second, WS10 cancels the \(\pi_g\) receiver-pressure contributions with the same two \(\nabla\pi_g\) contributions in \(r\). Define \(c=\langle w,q\rangle\). The intrinsic, pressure-complete version of WS18 is
\[
\begin{aligned}
 S'+2\lambda S={}&\mathcal R_0-(\lambda'+\lambda^2)c,\\
 \mathcal R_0={}&\mathcal V_\nu
  -\int\bigl(|Uw|^2+2w^TU^2w\bigr)dx
  -2\int\nabla\pi_w\cdot\mathsf Dw\,dx\\
 &-\int w^T(\nabla^2p_0)w\,dx
  +\int w_iw_j\partial_jg_i\,dx
  +2\int(j_g-\lambda\nu Lu+\lambda g)\cdot\mathsf Dw\,dx.
\end{aligned}\tag{WS20}
\]
Indeed \(\int u\cdot\mathsf Dw=-c/2\): the \(u_i\partial_ju_i\) slot integrates to zero against \(w_j\), and the other slot is \(\langle w,B\rangle/2=-c/2\). All pressure/source parents of WS18 remain accounted for in WS20. Incompressibility cancels the displayed gradient-force potentials; it does not cancel the intrinsic pressure faces.

An independent compact verification avoids any matrix-contraction convention:
\[
\begin{aligned}
 S'&=\langle w_t,(U+U^T)w\rangle-\langle u_t,N(w,w)\rangle,\\
 S'+2\lambda S={}&-\nu\langle Lw,(U+U^T)w\rangle
  -\langle\mathbb P\{N(u,w)+N(w,u)\},(U+U^T)w\rangle\\
 &+\langle r_P,(U+U^T)w\rangle
  +\nu\langle Lu,N(w,w)\rangle-\langle q+g,N(w,w)\rangle.
\end{aligned}\tag{WS21}
\]
The Leray projection in this expression cannot be erased merely because \(w\) is solenoidal: \((U+U^T)w\) and \(N(w,w)\) generally are not. Expansion of WS21 gives exactly WS18–20.

There is a further exact pressure completion within this full signed bundle. The two linearized pressure parents imply \(L\pi_w=2\operatorname{tr}(U\nabla w)\), while \(\operatorname{div}(Uw)=\operatorname{tr}(U\nabla w)\). Hence
\[
 \langle\nabla\pi_w,Uw\rangle=-\frac12\|\nabla\pi_w\|^2,
 \qquad
 -2\langle\nabla\pi_w,\mathsf Dw\rangle
 =\frac12\|\nabla\pi_w\|^2-\langle\nabla\pi_w,U^Tw\rangle.
 \tag{WS21a}
\]
Since \(-\|Uw\|^2-2\int w^TU^2w=\|U^Tw\|^2-4\|\mathsf Dw\|^2\), the deformation plus its receiver-pressure contribution is exactly
\[
 -4\|\mathsf Dw\|^2
 +\left\|U^Tw-\frac12\nabla\pi_w\right\|^2
 +\frac14\|\nabla\pi_w\|^2.
 \tag{WS21b}
\]
Both signs remain; this completion supplies no Hessian sign. The other pressure face can also be kept as an exact cross pairing: with \(\pi_{ww}=R_iR_j(w_iw_j)\), one has \(-\int w^T(\nabla^2p_0)w=-\langle\nabla p_0,\nabla\pi_{ww}\rangle\). Incompressibility gives \(L\pi_{ww}=\operatorname{tr}((\nabla w)^2)\), which verifies that identity by two integrations by parts. None of the viscous, source, or regularization slots of WS20 is removed by WS21a–b.

## 5. Complete causal primitive, including the initial strain and the lambda derivative

Let \(\Gamma(t)=\int_0^t\lambda(s)ds\) and define the actual causal kernel
\[
 K_\lambda(t,s)=\int_s^t\exp\left(-2\int_s^r\lambda(a)da\right)dr,
 \qquad \partial_sK_\lambda=-1+2\lambda(s)K_\lambda,
 \qquad K_\lambda(t,t)=0.
 \tag{WS22}
\]
Solving the actual scalar strain equation WS20 and integrating in its output time gives
\[
 I_\delta(t)=-S(0)K_\lambda(t,0)
 -\int_0^tK_\lambda(t,s)
       \{\mathcal R_0(s)-(\lambda'(s)+\lambda(s)^2)c(s)\}\,ds.
 \tag{WS23}
\]
This keeps all ordered source/pressure terms inside the signed integrand. A direct upper inequality is \(I_\delta(t)\le t|S(0)|+\int_0^tK_\lambda(t,s)(\mathcal R_0-(\lambda'+\lambda^2)c)_-(s)ds\). It is a consequence of WS23, not a bound on that remaining actual negative-part integral.

The kinetic identity pays the integrating factor on every finite horizon. If \(T_*<\infty\), put \(K=\|u_0\|+\int_0^{T_*}\|g\|\). Then
\[
 0\le\Gamma(t)\le\frac{K^2}{2\delta},\qquad
 e^{-K^2/\delta}(t-s)\le K_\lambda(t,s)\le t-s,
 \qquad 0\le s\le t<T_*.
 \tag{WS24}
\]
For an infinite maximal time the same assertion is made on each finite horizon with its own \(K\). In particular this damping has a datum/force bound without any higher-row assumption; it does not make the unknown signed integral in WS23 finite by itself.

Integration by parts of the entire \(\lambda'\) contribution yields
\[
\begin{aligned}
 \int_0^tK_\lambda(\lambda'+\lambda^2)c
  ={}&-K_\lambda(t,0)\lambda_0c_0
      +\int_0^t\lambda c
      -\int_0^tK_\lambda\lambda(c'+\lambda c),\\
 I_\delta(t)={}&-[S(0)+\lambda_0c_0]K_\lambda(t,0)
      +\int_0^t\lambda c
      -\int_0^tK_\lambda\{\mathcal R_0+\lambda(c'+\lambda c)\}.
\end{aligned}\tag{WS25}
\]
All undisplayed arguments inside the integrals are \(s\); the kernel arguments remain \((t,s)\). The initial face \(-K_\lambda(t,0)\lambda_0c_0\) is generally nonzero. There is no terminal face from this integration only because \(K_\lambda(t,t)=0\), not because the actual stocks vanish at \(t\).

The derivative in WS25 is itself the complete nonlinear one:
\[
\begin{aligned}
 q_t&=Dq[w]-2\lambda q+Dq[g],\\
 c'={}&-\nu\langle Lw,q\rangle+\langle Dq[w],q\rangle-3\lambda c
   +\langle j_g-\lambda\nu Lu+\lambda g,q\rangle
   -S+\langle w,Dq[g]\rangle.
\end{aligned}\tag{WS26}
\]
The \((\lambda'+\lambda^2)u\) slot cancels here only after testing against the actual \(q\), using \(\langle u,q\rangle=0\). Both \(Dq[g]\) slots remain. The feedback \(-S\) in this equation has not been treated as prescribed source.

## 6. Exact equivalence of the causal cancellation and the joint construction

Put \(\Sigma=S+\lambda c\). This is precisely the compensated-row strain \(\mathcal S(u,h,h)\): expanding \(w=h+\lambda u\) gives \(S=\mathcal S(u,h,h)-\lambda\langle h,q\rangle\), and \(c=\langle w,q\rangle=\langle h,q\rangle\). The other mixed slot \(\mathcal S(u,u,h)\) and the base cubic slot vanish only after their actual incompressible pairings. WS20 and WS26 imply
\[
 \Sigma'+2\lambda\Sigma=\mathcal R_0+\lambda(c'+\lambda c).
 \tag{WS27}
\]
Equation WS25 is simply \(I_\delta=\int\lambda c-\int\Sigma\) after solving WS27 with its actual initial value. On the other hand the original complete pairing WS14 gives the exact pointwise identity
\[
 \Sigma=-R_w'-\nu\|\nabla w\|^2
              +\langle w,j_g\rangle+\lambda\langle w,g\rangle.
 \tag{WS28}
\]
Substituting WS28 into WS25 or integrating \(I_\delta=\int\lambda c-\int\Sigma\) restores
\[
 I_\delta(t)=R_w(t)-R_w(0)
  +\int_0^t\{\nu\|\nabla w\|^2-\langle w,j_g\rangle
                          -\lambda\langle w,g\rangle+\lambda c\}ds.
 \tag{WS29}
\]
Finally WS15 restores exactly WS17, including \([b\lambda^2/4]_0^t\), the cubic action, and both remaining force cross terms. Thus eliminating \(\lambda'\) by the causal kernel is an executed reversible operation on this history. Its scalar primitive is exactly the previous positive joint-storage law, rather than an additional upper payment.

The full differential identity WS18 contains higher spatial/mixed-jet information and is derived from the vector equations, not from the scalar storage alone. No claim is made that the scalar balance implies the full differential identity. What has been checked is that its complete causal primitive and the independent physical-row pairing agree when evaluated on the same actual solution.

On strict intervals all of these are finite equalities. Extending a signed integral, pressure contraction, or differentiated strain source to the whole maximal interval requires its actual convergence; the kinetic bound WS24 alone is not such a convergence assertion. The retained terms are the full intrinsic strain, both intrinsic pressure tests, all three viscous product allocations, both source parents, and the initial and current storage faces. No independent upper bound for \(I_\delta\) has been obtained from the cancellations executed in this note.

## 7. Preservation and verification

The complete w equation, all WS18 matrix contractions, WS21 projected receiver custody, and WS25 initial-boundary coefficient were checked independently.
