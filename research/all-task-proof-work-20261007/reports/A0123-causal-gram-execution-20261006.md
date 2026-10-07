# Actual parent tensor, full Gramian, and terminal adjoint reconstruction

**Reviewed scope and currentness.** The mathematical statements retain their recorded hypotheses and the reconciliations listed in the supersession register. Finite-prefix or adjoint range scope is retained. Unrecovered SH illustrative examples are not used as essential evidence. Original finite-rectangle membership, when supplied, implies downstream source and selected-current bounds. Optional sufficient criteria in this report are not added as upstream premises of the printed producer. The mathematical body retains its stated strict-time, terminal, pressure and force hypotheses. Publication adds no unconditional global theorem claim.


This calculation starts with the actual unforced Navier–Stokes history, not an independent source system, and executes the arbitrary-amplitude prescribed-force extension in section 10. It verifies the matrix identities directly and then uses incompressibility before estimating anything. Its new unconditional outputs are a datum-paid smooth initial-age source readout, a whole-terminal adjoint field in the kinetic energy class, and an exact identification of the terminal kinetic defect with loss of adjoint gradient compactness. It does not prove the critical half-derivative upgrade.

## Sources and scope

The principal source is [UPG.1–UPG.21](../SOURCES.md#S244). Its essential recovered dependencies are:

- [HPF.2, HPF.25–HPF.38](../SOURCES.md#S319): complete pressure source, response action, and old-data pairing.
- [PRM.2](../SOURCES.md#S229): both ordered nonlinear parent insertions.
- [FIH.3–FIH.10](../SOURCES.md#S212): outer and nested Leray projectors and the complete differentiated source.
- [F52–F54e, higher persistence](../SOURCES.md#S154), specialized to zero force: a datum-computable common local interval and radius.

The SH.224–228 and SH.253–258 formulas cited by UPG were not recovered in the permitted NS sources. No claim about their examples or their ambient obstruction is used below. The matrix calculations only need the displayed UPG and PRM equations.

Take \(u_0\in H^\infty_\sigma(\mathbb R^3)\), fixed \(\nu>0\), and the unique actual smooth history on \([0,T_*)\). All first matrix statements hold on a finite real divergence-free Fourier/Galerkin prefix, retaining every convolution whose output belongs to it. Continuum statements below concern the actual smooth rank-one parent orbit; they do not assert a bounded ambient observation operator on the full tensor product.

## 1. Full parent and response evolution

Write
\[
A=\Lambda^2,\quad E(t)=e^{-\nu tA},\quad
\mathcal B(a,b)=\mathbb P((a\cdot\nabla)b),\quad
Q=-\mathcal B(u,u).
\]
Thus \(u_t+\nu Au=Q\). This is the full simultaneous pressure response: in physical variables \(Q=-(u\cdot\nabla)u-\nabla p\).

The source's \(\mathcal A_uv=-\mathcal B(u,v)\) is skew-adjoint because the first parent \(u\) is divergence-free, the Leray projection is self-adjoint, and both tested outputs are divergence-free. Set
\[
F=u\otimes u,\quad
D=A\otimes I+I\otimes A,\quad
L(t)=-\nu D+\mathcal A_u\otimes I+I\otimes\mathcal A_u,
\quad C(a\otimes b)=-\mathcal B(a,b).
\]
Direct differentiation gives \(F_t=LF\) and \(CF=Q\). Both ordered insertions remain:
\[
F_t=-\nu DF+Q\otimes u+u\otimes Q.
\]
Applying \(C\) gives
\[
Q_t=-\mathcal B(u_t,u)-\mathcal B(u,u_t).
\]
Thus the outer pressure projector and the two distinct nested pressure responses have not been identified with one another.

Let \(U(t,s)\) denote the parent evolution and \(w=u-E(t)u_0\). The complete block evolution is
\[
\Phi(t,s)=
\begin{pmatrix}
E(t-s)&V(t,s)\\0&U(t,s)
\end{pmatrix},
\qquad
V(t,s)=\int_s^t E(t-r)CU(r,s)\,dr .
\]
On the actual orbit, \(U(t,s)F(s)=F(t)\). Parent skewness also gives the genuine paid tensor identity
\[
\frac12\frac d{dt}\|F\|^2+\nu\|D^{1/2}F\|^2=0,\qquad
\|F\|^2=\|u\|_2^4,\quad
\|D^{1/2}F\|^2=2\|u\|_2^2\|\nabla u\|_2^2.
\]
It does not itself estimate the diagonal collapse \(C\).

## 2. Every block of the backward observability Gramian

Let \(B\ge0\) commute with \(A\), as in UPG.9. In particular \(B=\Lambda\) or \(B=(\Lambda-K)_+\). At time \(t<T\), write the full Gramian as
\[
O_{B,T}(t)=
\begin{pmatrix}B&H(t)\\H(t)^*&J(t)\end{pmatrix}.
\]
The upper-left block is exactly \(B\):
\[
E(T-t)BE(T-t)+2\nu\int_t^T E(r-t)AB E(r-t)\,dr=B.
\]
Expanding both remaining blocks, without discarding interference, yields
\[
H(t)=\int_t^T E(r-t)BCU(r,t)\,dr,
\]
\[
J(t)=\int_t^T\!\!\int_t^T
U(r,t)^*C^*B E(|r-s|)CU(s,t)\,dr\,ds.
\]
Define the Schur form
\[
\Sigma(t)=J(t)-H(t)^*B^+H(t),
\]
where \(B^+\) is the inverse on the observed range. Null modes cause no ambiguity because \(H=B\widetilde H\). Its complete kernel is
\[
\Sigma(t)=\int_t^T\!\!\int_t^T
U(r,t)^*C^*B
\big[E(|r-s|)-E(r+s-2t)\big]
CU(s,t)\,dr\,ds.
\]
The kernel remains positive with all original phases retained. Indeed,
\[
E(|r-s|)-E(r+s-2t)
=2\nu\int_t^{\min(r,s)} A E(r+s-2a)\,da.
\]
Thus, with
\[
Z(a;t)=\int_a^T E(r-a)CU(r,t)\,dr,
\]
\[
\Sigma(t)=2\nu\int_t^T Z(a;t)^*ABZ(a;t)\,da.
\]

The complete block differential equations also check:
\[
H'=\nu AH-HL-BC,\qquad H(T)=0,
\]
\[
J'=-C^*H-H^*C-L^*J-JL,\qquad J(T)=0,
\]
and consequently
\[
-\Sigma'=L^*\Sigma+\Sigma L+2\nu H^*AB^+H,\qquad \Sigma(T)=0.
\]
This is exact Schur cancellation of the joined parent insertion, with a positive response term remaining.

## 3. Actual-history meaning of the Schur decomposition

Define the actual backward response
\[
z_T(t)=\int_t^T E(r-t)Q(u(r))\,dr,\qquad
z_T(T)=0,\quad -z_{T,t}+\nu Az_T=Q.
\]
Write \(h_T=z_T(0)\). Contracting the complete matrix with the actual datum \(F_0=u_0\otimes u_0\) gives
\[
2\mathcal K_{B,T}
=\|B^{1/2}h_T\|_2^2
+2\nu\int_0^T\|A^{1/2}B^{1/2}z_T(t)\|_2^2\,dt.
\]
This equals the original forward response stock and action:
\[
2\mathcal K_{B,T}
=\|B^{1/2}w(T)\|_2^2
+2\nu\int_0^T\|A^{1/2}B^{1/2}w(t)\|_2^2\,dt.
\]
It is not a replacement forcing model. Both fields use the same \(Q(u)\).

The HPF old-data pairing is
\[
I_{B,0}(T)=\langle B^{1/2}u_0,B^{1/2}h_T\rangle .
\]
Completing the datum and cross block produces the particularly useful identity
\[
\boxed{
\|B^{1/2}u(T)\|_2^2+
2\nu\int_0^T\|A^{1/2}B^{1/2}u\|_2^2
=
\|B^{1/2}(u_0+h_T)\|_2^2+
2\nu\int_0^T\|A^{1/2}B^{1/2}z_T\|_2^2.}
\]

## 4. A full Schur summand is datum-paid in every fixed spatial order

Let \(M=\|u_0\|_2\). The kinetic identity gives \(\sup_{t<T_*}\|u(t)\|_2\le M\). From F54d at zero force choose
\[
B_0=1+\|u_0\|_{H^3},\quad
R_3=2L_\nu B_0,\quad
\delta=\min\{1,(8C_qL_\nu^2B_0)^{-2}\}.
\]
On this common initial interval, \(\|u\|_{C H^3}\le R_3\), hence
\(\|Q\|_{\dot H^{1/2}}\le\|Q\|_{H^2}\le C_qR_3^2\).

For later times the complete source satisfies the uniform heat estimate
\[
\boxed{\|\Lambda^{1/2}E(r)Q(u(r))\|_2
\le \frac{M^2}{4\pi(\nu r)^{3/2}}.}
\]
With the unitary Fourier transform, this follows directly from
\[
|\widehat Q(\xi)|\le |\xi|(2\pi)^{-3/2}\|u\otimes u\|_1
=|\xi|(2\pi)^{-3/2}\|u\|_2^2.
\]
The Leray projector is retained and has norm at most one. The squared multiplier integral is
\(\int_{\mathbb R^3}|\xi|^3e^{-2\nu r|\xi|^2}d\xi
=\pi/(2(\nu r)^3)\).

Consequently, for every \(T<T_*\),
\[
\boxed{\|\Lambda^{1/2}h_T\|_2
\le C_q\delta R_3^2+
\frac{M^2}{2\pi\nu^{3/2}\sqrt\delta}.}
\]
No smallness of \(u_0\) is imposed.

More generally,
\[
\|E(r)Q\|_{H^m}
\le C_mM^2\big[(\nu r)^{-5/4}
+(\nu r)^{-m/2-5/4}\big],\qquad m\ge0.
\]
The source's all-order persistence on the same \(\delta\) pays the initial part in every fixed \(H^m\). Both later exponents are integrable at infinity. Thus \(h_T\) is uniformly bounded in every fixed \(H^m\), with constants depending on the corresponding initial norms, and has a common \(H^\infty\) limit \(h_*\) as \(T\uparrow T_*\). This also holds if \(T_*=\infty\).

The bounded smooth readout is the initial-age projection \(h_T\), not the terminal velocity. This distinction follows from their exact definitions.

## 5. Incompressibility pays the adjoint kinetic class uniformly in both times

For each \(T<T_*\), put \(v_T=u+z_T\). Its source cancels exactly:
\[
v_{T,t}=\nu A(z_T-u).
\]
Self-adjointness of \(A\), before any absolute bounds, gives
\[
\frac d{dt}\|v_T\|_2^2
=2\nu(\|\nabla z_T\|_2^2-\|\nabla u\|_2^2).
\]
Using \(v_T(T)=u(T)\) and the original kinetic identity on \([t,T]\),
\[
\boxed{\|u(t)+z_T(t)\|_2^2+
2\nu\int_t^T\|\nabla z_T(r)\|_2^2\,dr
=\|u(t)\|_2^2.}
\]
In particular,
\[
\sup_{t\le T<T_*}\|z_T(t)\|_2\le2M,\qquad
\int_0^T\|\nabla z_T\|_2^2\le\frac{M^2}{2\nu}.
\]
The entire \(B=I\) Schur summand is precisely
\[
2\nu\int_0^T\|\nabla z_T\|_2^2
=M^2-\|u_0+h_T\|_2^2.
\]
Thus actual kinetic compatibility supplies a datum bound not obtained from ambient Gramian positivity alone.

## 6. Whole-terminal reconstruction and compactness

Assume now \(T_*<\infty\). The complete source has the paid negative-space estimate
\[
\|Q\|_{\dot H^{-3/2}}
\le C\|u\otimes u\|_{L^{3/2}}
\le C M\|\nabla u\|_2.
\]
Here \(\Lambda^{-1/2}:L^{3/2}\to L^2\), followed by the full Leray/divergence multiplier, and interpolation \(L^3\) between \(L^2,L^6\), give the displayed bound.

For \(S<T<T_*\),
\[
z_T(t)-z_S(t)=E(S-t)z_T(S),\quad t\le S,
\]
\[
\|z_T(S)\|_{\dot H^{-3/2}}
\le \varepsilon_S:=
CM\sqrt{T_*-S}
\left(\int_S^{T_*}\|\nabla u\|_2^2\right)^{1/2}
\longrightarrow0.
\]
Extend \(z_T\) by zero after \(T\). Splitting at Fourier radius \(K\) gives
\[
\|z_T-z_S\|_{L^2(0,T_*;L^2)}^2
\le T_*K^3\varepsilon_S^2
+\frac{2M^2}{\nu K^2}
+4M^2(T_*-S).
\]
First choose \(K\) large and then \(S\) close to \(T_*\). Hence the actual family is Cauchy strongly on the whole terminal interval:
\[
z_T\to z_*\quad\text{in }L^2(0,T_*;L^2).
\]
It converges weakly in \(L^2H^1\), is bounded in \(L^\infty L^2\), and has the same backward equation. For every fixed strict compact time interval it converges smoothly in every fixed spatial and temporal order: the remaining source tail has a positive heat age there. The terminal trace is zero in negative Sobolev orders and weakly in \(L^2\). The actual kinetic bounds do not claim a strong \(H^{1/2}\) terminal trace.

## 7. Exact joint terminal trace and kinetic defect

Let \(u_*\) be the original weak \(L^2\) terminal trace, and
\(\ell=\lim_{t\uparrow T_*}\|u(t)\|_2^2\). For \(v=u+z_*\),
\[
v\in L^2H^1,\qquad v_t=\nu A(z_*-u)\in L^2H^{-1}.
\]
The Hilbert triple energy identity therefore supplies \(v\in C([0,T_*];L^2)\). Its negative endpoint trace identifies \(v(T_*)=u_*\), while \(v(0)=u_0+h_*\). Consequently,
\[
\|u_*\|_2^2
=\|u_0+h_*\|_2^2+
2\nu\left(\int_0^{T_*}\|\nabla z_*\|_2^2
-\int_0^{T_*}\|\nabla u\|_2^2\right).
\]
Combining the exact finite-\(T\) Schur action with the original kinetic identity gives
\[
\boxed{
\ell-\|u_*\|_2^2
=2\nu\left(
\lim_{T\uparrow T_*}\int_0^T\|\nabla z_T\|_2^2
-\int_0^{T_*}\|\nabla z_*\|_2^2\right).}
\]
Thus the terminal kinetic defect is exactly the adjoint gradient compactness loss. It vanishes if and only if \(\nabla z_T\to\nabla z_*\) strongly in whole-interval \(L^2\).

For a terminal sequence, set \(r_j=u(t_j)-u_*\). Since \(v(t_j)\to u_*\) strongly, \(z_*(t_j)=-r_j+o_{L^2}(1)\). Every weak matrix-measure stress limit therefore has the joint defect block
\[
\begin{pmatrix}R&-R\\-R&R\end{pmatrix}\succeq0.
\]
Its null direction is \(u+z_*\). This algebra does not force \(R=0\).

On the unforced finite horizon, global mass tightness also follows directly from the pressure-complete localized kinetic identity. A radial cutoff at \(R\) bounds exterior kinetic energy by the initial exterior tail plus
\[
C\nu T_*M^2/R^2+
C R^{-1}\int_0^{T_*}(\|u\|_3^3+\|p\|_{3/2}\|u\|_3)\,dt.
\]
The last integral is finite from \(\|p\|_{3/2}\le C\|u\|_3^2\) and the kinetic interpolation bound. Therefore \(\int\mathrm{tr}\,R=\ell-\|u_*\|_2^2\); escape to spatial infinity is not silently counted as a local covariance defect.

## 8. One adjoint critical action is a sufficient original-history entry

The whole-interval adjoint equation yields, in distributions and then in the actual representatives,
\[
u(t)=E(t)(u_0+h_*)+
\mathcal T_+z_*(t),\qquad
\mathcal T_+z=-z+2\nu\int_0^t AE(t-s)z(s)\,ds.
\]
This is obtained from \(Q=-z_t+\nu Az\) inside the original forward Duhamel formula. No independent source or terminal velocity is inserted.

For a zero-extended time input, \(\mathcal T_+\) has multiplier
\[
\frac{\nu|\xi|^2-i\omega}{\nu|\xi|^2+i\omega},
\]
whose modulus is one. It is therefore a contraction after restriction to \(I\), in every fixed \(L^2_t\dot H^s_x\) for which the input norm is finite. In particular,
\[
\boxed{
\|\Lambda^{3/2}u\|_{L^2(I)}
\le
\frac{\|\Lambda^{1/2}(u_0+h_*)\|_2}{\sqrt{2\nu}}
+\|\Lambda^{3/2}z_*\|_{L^2(I)}.}
\]
A finite single critical action of the reconstructed adjoint is enough; one need not assume uniform critical norms for every terminal-prefix adjoint separately. The first term is already datum-paid by section 4. Applying the independently checked original commutator/mixed-recurrence chain would then produce the original rectangles and restart.

The unconditional construction here pays \(z_*\in L^\infty L^2\cap L^2H^1\). Its sufficient stronger action is \(L^2\dot H^{3/2}\). No step above supplies that extra half spatial derivative.

## 9. Causal Lyapunov scope and signed helicity

The source's forward metric equation has exact blocks. If its upper-left initial block is \(B\), it remains \(B\); its cross block \(Y\) and lower block \(J_c\) satisfy
\[
Y'=\nu AY-YL-BC,\qquad
J_c'=-C^*Y-Y^*C-L^*J_c-J_cL.
\]
The causal Schur form \(S_c=J_c-Y^*B^+Y\) obeys
\[
S_c'+L^*S_c+S_cL=-2\nu Y^*AB^+Y.
\]
For zero initial cross block, \(Y(t)F(t)=-B E(-t)h_t\) at a finite prefix. These equations retain all insertion signs. In the continuum, inverse heat is unbounded, so a finite-prefix causal metric is not automatically a bounded operator on the original smooth-data Hilbert domain.

The actual orbit endpoint identity UPG.17 checks exactly. Its lower bound is an estimate for the remaining response action; positivity of the backward full matrix does not supply it.

With curl in place of \(B\), the same self-adjoint commutation gives the signed finite-prefix helicity identity
\[
\langle u(T),\operatorname{curl}u(T)\rangle+
2\nu\int_0^T\langle \operatorname{curl}u,Au\rangle
=
\langle u_0+h_T,\operatorname{curl}(u_0+h_T)\rangle+
2\nu\int_0^T\langle \operatorname{curl}z_T,Az_T\rangle.
\]
It is a signed identity across both helical sectors, not a positive critical-action bound. The kinetic class alone does not justify its terminal passage, because those viscous pairings have total spatial order three.

## 10. Full arbitrary-amplitude forcing extension

The force class is precisely [F1–F4](../SOURCES.md#S154), with no smallness or solenoidal condition. The complete pressure/source convention and kinetic budget are also displayed in [G1–G6](../SOURCES.md#S309). Set
\[
g=\mathbb Pf,\qquad
H=Q+g=u_t+\nu Au.
\]
In physical variables \(H=f-(u\cdot\nabla)u-\nabla p\). This includes the normalized force pressure as well as the nonlinear pressure.

The actual forced parent equation is
\[
F_t=LF+g\otimes u+u\otimes g.
\]
Likewise the full response block is inhomogeneous:
\[
\binom{w}{F}_t=
\begin{pmatrix}-\nu A&C\\0&L\end{pmatrix}
\binom{w}{F}
+
\binom{g}{g\otimes u+u\otimes g}.
\]
Thus the source's homogeneous UPG.8 is not silently imported into the forced history. Direct expansion of the response action nevertheless gives exactly the same heat-kernel Schur decomposition for the complete source \(H\).

Define
\[
z_T^{\,f}(t)=\int_t^T E(r-t)H(r)\,dr,\qquad
h_T^{\,f}=z_T^{\,f}(0).
\]
Then \(-z_t^{\,f}+\nu Az^{\,f}=H\), while \(u_t+\nu Au=H\). Consequently \(v_T^{\,f}=u+z_T^{\,f}\) again obeys
\[
v_{T,t}^{\,f}=\nu A(z_T^{\,f}-u),
\]
and the full-source exact-range identity is
\[
\boxed{
\|u(t)+z_T^{\,f}(t)\|_2^2+
2\nu\int_t^T\|\nabla z_T^{\,f}\|_2^2
=\|u(t)\|_2^2+2\int_t^T\langle u,g\rangle .}
\]
Put
\[
a(t)=\|u_0\|_2+\int_0^t\|g\|_2,\qquad K=a(T_*).
\]
The right side is at most
\[
a(t)^2+2\int_t^T a(r)\|g(r)\|_2\,dr=a(T)^2\le K^2.
\]
Hence the full-source adjoints have the unconditional uniform bounds
\[
\|z_T^{\,f}\|_{L^\infty L^2}\le2K,\qquad
\|\nabla z_T^{\,f}\|_{L^2}^2\le K^2/(2\nu).
\]
This payment uses the actual prescribed source at its admitted amplitude.

The old-face critical bound has the same nonlinear estimate with \(M\) replaced by \(K\), the actual forced \(\delta_f,R_f\) from F54d, and the additional known term
\[
\int_0^{T_*}\|\Lambda^{1/2}g(r)\|_2\,dr.
\]
Every fixed spatial order is likewise paid on a finite horizon. The negative source-tail bound is
\[
\|z_T^{\,f}(S)\|_{H^{-3/2}}
\le CK\sqrt{T_*-S}
\left(\int_S^{T_*}\|\nabla u\|_2^2\right)^{1/2}
+\int_S^{T_*}\|g\|_{H^{-3/2}}.
\]
It tends to zero uniformly in \(T>S\). The exact heat prefix difference therefore supplies the same strong whole-interval \(L^2_tL^2_x\) reconstruction \(z_*^{\,f}\), weak gradient convergence, and strong terminal trace of \(u+z_*^{\,f}\).

Let \(W_*=\int_0^{T_*}\langle u,g\rangle\), which converges absolutely under the kinetic budget. The finite-prefix action is
\[
2\nu\int_0^T\|\nabla z_T^{\,f}\|_2^2
=\|u_0\|_2^2+2W(T)-\|u_0+h_T^{\,f}\|_2^2.
\]
The original kinetic balance has
\(\ell=\|u_0\|_2^2+2W_*-2\nu\int_I\|\nabla u\|_2^2\).
The \(v^{\,f}\) balance contains no force term. Subtracting these complete balances gives the same exact defect identity:
\[
\boxed{
\ell-\|u_*\|_2^2
=2\nu\left(
\lim_T\int_0^T\|\nabla z_T^{\,f}\|_2^2
-\int_I\|\nabla z_*^{\,f}\|_2^2\right).}
\]
The force work converges and cancels; it is not discarded.

The full-source field differs from the intrinsic nonlinear-source adjoint only by the prescribed smooth backward Stokes lift
\[
k_T(t)=\int_t^T E(r-t)g(r)\,dr.
\]
On the finite terminal horizon, \(k_T\to k_*\) strongly in all fixed spatial orders and in the gradient action; \(k_*(T_*)=0\). Therefore subtraction of \(k_T\) leaves exactly the same gradient compactness defect. Its fixed critical action is known from the force datum.

Finally,
\[
u=E(t)(u_0+h_*^{\,f})+\mathcal T_+z_*^{\,f}
\]
holds with the same unit-modulus reciprocal operator from section 8. One finite full-source adjoint critical action again supplies the actual velocity entry and the original mixed/restart chain. No force smallness or unforced-membership substitution appears in this implication.

The local stress block remains \(\bigl(\begin{smallmatrix}R&-R\\-R&R\end{smallmatrix}\bigr)\). Global tightness includes, in addition to the nonlinear pressure terms from section 7, the known physical force exterior work and its pressure potential. The latter belongs to \(L^2\) because \((-\Delta)^{-1}\nabla\cdot f\) maps \(L^{6/5}\) into \(L^2\); its work with \(u\) is therefore finite. Uniform Schwartz force tails control the exterior work. Thus this force extension also distinguishes no unaccounted spatial escape.

## Verification boundary

The executed full matrix operation produces useful unconditional terminal information that is lost if one stops at a scalar critical action: the smooth old-face projection, the adjoint kinetic class and compactness, the strong trace of \(u+z_*\), and the exact defect/stress block. It preserves one sufficient unresolved action, \(\int_I\|\Lambda^{3/2}z_*\|_2^2\), which is directly linked to the original velocity action by a unit-modulus reciprocal operator.

The next justified calculation is an actual-range estimate for that adjoint half-derivative upgrade or a signed production relation that forces its value finite. Proving only absence of the kinetic defect would establish strong adjoint gradient compactness; it would not by itself establish the stronger critical action.

All six read-only source identities are recorded in [the source manifest](../COVERAGE.md#A0125).
