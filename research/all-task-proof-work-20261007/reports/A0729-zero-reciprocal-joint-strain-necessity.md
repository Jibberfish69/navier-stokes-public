# Actual zero reciprocal stock: joint-row strain necessity

**Reviewed scope and currentness.** Improves the sufficient force-price route JR17–JR19; does not change the JR14 identity or supply JR20. [Zero reciprocal terminal branch: kinetic trace, radial action, and strain records](A0734-kinetic-trace-radial-action-and-strain-records.md)/[The actual zero reciprocal-stock branch: coupled terminal constraints](A0748-zero-stock-coupled-terminal-results.md) retain independent radial/trace checks. Original finite-rectangle membership, when supplied, implies downstream source and selected-current bounds. Optional sufficient criteria in this report are not added as upstream premises of the printed producer. The mathematical body retains its stated strict-time, terminal, pressure and force hypotheses. Publication adds no unconditional global theorem claim.


This is a new bounded derivation on one complete Navier–Stokes history. Its hypothesis is a finite \(T_*\) and an actual terminal limit \(z(t)=(\alpha+Y(t))^{-1}\to0\), where \(\alpha>0\) is fixed and \(Y=\|\nabla u\|_2^2\). It does not construct such a history or assume any whole-terminal positive rectangle. It quantifies what this branch forces in the complete signed joint-row strain primitive. No scalar calibration, selected source, alternative evolution, or cutoff is used.

The substantive new payment is a homogeneous negative-order estimate for the complete compensated force insertion. It eliminates the running-storage supremum from the force cost and yields a pointwise lower bound for the actual unweighted signed primitive, including positive simultaneous action. All identities initially hold for strict times \(t<T_*\); the terminal statements follow under the displayed zero-limit hypothesis.

## 1. Actual complete rows and storage

Primary source locations are the [forced pressure-complete recurrences, physical LF116–149](../SOURCES.md#S117), [kinetic identity and source budget, LF13–59](../SOURCES.md#S118), [full pressure square, LF189–251](../SOURCES.md#S118), and [full vector/tensor Sobolev constants, LF102–163](../SOURCES.md#S136). The unforced calculation is their \(f=0\) specialization, with the original [unforced kinetic identity](../SOURCES.md#S140).

Here \(A=-\Delta=\Lambda^2\), distinct from the reciprocal offset \(\alpha\). Put
\[
\begin{gathered}
 v=u_t,\quad g=\mathbb P f,\quad q=-\mathbb P[(u\cdot\nabla)u],\\
 B_0=(u\cdot\nabla)u,\qquad B_1=(u\cdot\nabla)v+(v\cdot\nabla)u,\\
 v+\nu Au+B_0+\nabla p=f,\qquad
 v_t+\nu Av+B_1+\nabla Q_1=f_t,\\
 p=R_iR_j(u_i u_j)-(-\Delta)^{-1}\nabla\cdot f,\qquad
 Q_1=R_iR_j(v_i u_j+u_i v_j)-(-\Delta)^{-1}\nabla\cdot f_t .
\end{gathered}\tag{ZJ1}
\]
Both nonlinear orders and the full force-dependent pressure are retained. Projection of these same rows gives
\(v+\nu Au=q+g\) and \(v_t+\nu Av=Dq[v]+g_t\), with
\(Dq[h]=-\mathbb P[(u\cdot\nabla)h+(h\cdot\nabla)u]\).

For fixed \(\delta>0\), define actual history coordinates
\[
\begin{gathered}
 h=v-g=q-\nu Au,\quad e=\|u\|^2,\quad b=e+\delta,\quad
 \lambda=\frac{\nu Y}{b},\quad w=h+\lambda u,\quad d=e+3\delta,\\
 \Phi_\delta=\frac12\|h\|^2-\frac{\nu^2Y^2}{4b}
            =\frac12\|w\|^2+\frac14d\lambda^2,\qquad
 \frac14\|h\|^2\le\Phi_\delta\le\frac12\|h\|^2 .
\end{gathered}\tag{ZJ2}
\]
These follow from the actual Gram relation \(\langle u,h\rangle=-\nu Y\). No modified field is evolved. The regularized receiver has \(\langle u,w\rangle=-\delta\lambda\); it is not asserted orthogonal to \(u\).

Write \(\mathcal S(u,w,w)=\int w_iw_j\partial_j u_i\,dx\). The full compensated first-binomial row is
\(h_t+\nu Ah=Dq[h]+j_g\), where \(j_g=Dq[g]-\nu Ag\).
The exact joint balance is
\[
 \Phi_\delta'+\nu\|\nabla w\|^2+\lambda\|w\|^2+\frac12d\lambda^3
 =-\mathcal S(u,w,w)+\langle w,j_g\rangle
      +\lambda\langle q,g\rangle+\frac12\lambda^2\langle u,g\rangle .
 \tag{ZJ3}
\]
The storage and three dissipative terms are nonnegative; its derivative has no assigned sign.

For completeness, the cancellation uses
\(e'=-2\nu Y+2\langle u,g\rangle\),
\(Y'=2\langle Au,h+g\rangle\),
\(\langle Dq[z],u\rangle=-\langle q,z\rangle\), and
\(\mathcal S(u,w,w)=\mathcal S(u,h,h)-\lambda\langle h,q\rangle\).
Forming \(h_t=v_t-g_t\) cancels the prescribed \(g_t\) row exactly. Before projection, \(f_t-g_t\) is canceled by the prescribed gradient part of \(Q_1\); the remaining pressure contains both \(u,h\) parents and both \(u,g\) parents. Thus compensation does not silently remove a pressure or force parent.

## 2. New full force payment without a storage supremum

Let \(K=\|u_0\|+\int_0^{T_*}\|g\|_2\,dt\). The kinetic source gives
\(e\le K^2\) and \(\int_IY\le K^2/(2\nu)\). The zero branch necessarily has \(K>0\).
Set \(G_0=\|g\|_\infty\), \(G_1=\|\nabla g\|_{\infty,\mathrm F}\), and \(G_2=\|g\|_2\).
These are prescribed finite-order source norms; for example they are bounded by the appropriate \(H^2/H^3\) norms of \(\mathbb Pf\), rather than by an invalid \(L^\infty\) boundedness assertion for \(\mathbb P\).

The exact complete divergence is
\[
 j_g=-\mathbb P\nabla\cdot(u\otimes g+g\otimes u)+\nu\Delta g
     =-\mathbb P\nabla\cdot(u\otimes g+g\otimes u-\nu\nabla g).
 \tag{ZJ4}
\]
Here \((\nabla g)_{ij}=\partial_jg_i\), so the viscous sign in the last tensor is negative. The map
\(\Lambda^{-1}\mathbb P\nabla\cdot\) has norm at most one from the full tensor \(L^2\) norm to vector \(L^2\). Its Fourier symbol contracts by \(\xi/|\xi|\); no inverse at zero frequency is being assumed. Consequently
\[
 \|j_g\|_{\dot H^{-1}}\le 2KG_0+\nu\|\nabla g\|_2,\qquad
 |\langle w,j_g\rangle|
 \le\frac{\nu}{2}\|\nabla w\|^2+
          \frac1{2\nu}(2KG_0+\nu\|\nabla g\|_2)^2 .
 \tag{ZJ5}
\]
The two ordered source parents and their Leray pressure contraction are kept throughout. This is homogeneous duality with the actual \(\dot H^1\) receiver \(w\), so no Poincaré inequality is needed.

The other two source terms admit refined prices:
\[
\begin{gathered}
 |\langle q,g\rangle|
   =\left|\int u_i u_j\partial_jg_i\right|\le eG_1,\qquad
 \lambda|\langle q,g\rangle|\le\nu YG_1,\\
 \frac12\lambda^2|\langle u,g\rangle|
 \le\frac d4\lambda^3+
       \frac{8e^{3/2}G_2^3}{27(e+3\delta)^2}
 \le\frac d4\lambda^3+\frac{G_2^3}{18\sqrt\delta}.
\end{gathered}\tag{ZJ6}
\]
The cubic Young maximum is at \(\lambda=4|\langle u,g\rangle|/(3d)\).
The final refinement uses
\(\max_{e\ge0}e^{3/2}/(e+3\delta)^2=3/(16\sqrt\delta)\), attained at \(e=9\delta\).

All remaining force cost is bounded by the finite known quantity
\[
\begin{aligned}
 \mathcal E_\delta
 :=\Phi_\delta(0)
 &+\frac1{2\nu}\int_I(2KG_0+\nu\|\nabla g\|_2)^2\,dt\\
 &+\frac{K^2}{2}\sup_I G_1
   +\frac1{18\sqrt\delta}\int_I G_2^3\,dt .
\end{aligned}\tag{ZJ7}
\]
In particular the negative-order force-square price is at most
\((4K^2/\nu)\int G_0^2+\nu\int\|\nabla g\|^2\).
Only kinetic and prescribed norms enter \(\mathcal E_\delta\); neither a critical velocity square action nor a terminal rectangle is an input.

Define the actual unweighted signed primitive and its running upper budget:
\[
 I_\delta(t):=-\int_0^t\mathcal S(u,w,w)\,ds,\qquad
 C_\delta(t):=\sup_{0\le S\le t} I_\delta(S),\qquad
 \mathcal A_\delta(t):=\int_0^t
 \left(\frac\nu2\|\nabla w\|^2+\lambda\|w\|^2+\frac d4\lambda^3\right)ds .
 \tag{ZJ8}
\]
Integration of the actual ZJ3 with the complete force prices gives, at **every** strict time,
\[
 \boxed{\quad C_\delta(t)\ge I_\delta(t)
       \ge\Phi_\delta(t)+\mathcal A_\delta(t)-\mathcal E_\delta .\quad}
 \tag{ZJ9}
\]
This is stronger than a conditional finite-budget implication: no bound on \(C_\delta\) was assumed in deriving it. It is a lower necessity and supplies no signed upper payment.

## 3. Exact Gram refinement and the actual maximizing face

When \(e>0\), let \(h_\perp=h+(\nu Y/e)u\), so \(h_\perp\perp u\). The same complete field Gram gives
\[
 \Phi_\delta=\frac12\|h_\perp\|^2+\mathfrak a_\delta(e)Y^2,\qquad
 \mathfrak a_\delta(e)=\frac{\nu^2(e+2\delta)}{4e(e+\delta)}
                   \ge\frac{\nu^2}{4K^2}.
 \tag{ZJ10}
\]
This improves the simpler lower bound \(\nu^2Y^2/[4(K^2+\delta)]\). At \(e=0\) the actual field has \(Y=0\); the zero-stock branch has \(e>0\) for all sufficiently late times.

At times with \(e(t)>0\), the direct source consequence of ZJ9 is
\[
 I_\delta(t)\ge
   \mathfrak a_\delta(e(t))Y(t)^2
   +\frac{\nu^3}{4(K^2+\delta)^2}\int_0^tY^3\,ds
   -\mathcal E_\delta .
 \tag{ZJ11}
\]
Both positive contributions appear simultaneously. For \(f=0\), the exact equality ZJ3 has no force cost and keeps the full \(\nu\|\nabla w\|^2\) and \(d\lambda^3/2\); ZJ11 is then a valid coarser lower bound.

The earlier running-face argument is also valid on the actual history. Let
\(M(t)=\max_{0\le s\le t}\Phi_\delta(s)\), attained at an actual strict-history face \(s_t\), and \(J_1(t)=\int_0^t\|j_g\|_2\,ds\). The full force pairing bounded in \(L^1_tL^2_x\) gives
\[
 C_\delta(t)\ge M(t)-\sqrt2J_1(t)\sqrt{M(t)}
                    -\Phi_\delta(0)-P_\delta(t),
 \tag{ZJ12}
\]
where \(P_\delta(t)\) can be either the original finite kinetic/source price or the refined ZJ6 price. The actual positive action at \(s_t\) can also be retained on the right. The full insertion estimate gives \(J_1(T_*)\le K\int_I G_1+(\sup_I G_0)\sqrt{T_*K^2/(2\nu)}+\nu\int_I\|Ag\|<\infty\). Since \(M\ge\mathfrak a_\delta(e(t))Y(t)^2\), the function \(x-\sqrt2J_1\sqrt x\) is increasing after \(x\ge J_1^2/2\), and hence the stated quadratic-minus-linear necessity follows at sufficiently late zero-branch times. ZJ5–9 removes that loss altogether and controls \(I_\delta(t)\) itself.

## 4. Optimized full pressure/action cone and the actual zero-stock rate

Put \(D=\|Au\|^2\). The source's \(n=0,s=0\) complete square is
\[
 \|v\|^2+\nu^2D+\|\nabla p\|^2+\nu Y'=\|f-B_0\|^2 .
 \tag{ZJ13}
\]
From the published vector/tensor Sobolev constants,
\(\mathsf S(6)\mathsf S(3)=\pi^{-1}\sqrt{2/3}\), every actual raw convection satisfies
\[
 \|B_0\|^2
 \le \|u\|_6^2\|\nabla u\|_3^2
 \le \beta Y^{3/2}\sqrt D,\qquad
 \beta=\frac{2}{3\pi^2}.
 \tag{ZJ14}
\]
Indeed \(\|\nabla u\|_3\le\mathsf S(3)\|\Lambda^{3/2}u\|\), and Fourier Cauchy–Schwarz gives \(\|\Lambda^{3/2}u\|^2\le\sqrt{YD}\). This estimate covers the full unprojected \(B_0\) and does not remove its pressure.

For fixed \(a\in(0,1)\) and \(\eta>0\), retain
\[
\begin{gathered}
 q_a=\|v\|^2+a\nu^2D+\|\nabla p\|^2,\qquad
 q_a\pm\nu\sqrt a\,Y'=\|v\pm\nu\sqrt a\,Au\|^2+\|\nabla p\|^2\ge0,\\
 q_a+\nu Y'\le
 \frac{(1+\eta)^2\beta^2}{4(1-a)\nu^2}Y^3
                         +(1+\eta^{-1})\|f\|^2 .
\end{gathered}\tag{ZJ15}
\]
The last line is Young applied only after the full source square, using
\(\|f-B_0\|^2\le(1+\eta)\|B_0\|^2+(1+\eta^{-1})\|f\|^2\).

Multiply this actual row by \(z^3\) and integrate from \(t\) to \(S<T_*\). Since
\(\int_t^S z^3Y'=\frac12[z(t)^2-z(S)^2]\), the zero terminal limit gives
\[
 \frac\nu2z(t)^2+\int_t^{T_*}z^3q_a\,ds
 \le \frac{(1+\eta)^2\beta^2}{4(1-a)\nu^2}(T_*-t)+o(T_*-t),\qquad
 \int_t^{T_*}z^3q_a\,ds\ge\frac{\nu\sqrt a}{2}z(t)^2 .
 \tag{ZJ16}
\]
The force remainder is \(o(T_*-t)\) because \(f\) has bounded prescribed \(L^2\) norm on the closed finite horizon and \(\sup_{s\ge t}z(s)\to0\). The weighted action in ZJ16 is produced by this inequality; its finiteness was not assumed. Its lower bound uses both signs of the full Gram square in ZJ15 and the actual terminal zero face.

Maximizing \((1-a)(1+\sqrt a)\) gives \(a=1/9\) and value \(32/27\). Then let \(\eta\downarrow0\):
\[
 \limsup_{t\uparrow T_*}\frac{z(t)^2}{T_*-t}
 \le\frac{27\beta^2}{64\nu^3}=\frac3{16\pi^4\nu^3},\qquad
 \liminf_{t\uparrow T_*}\sqrt{T_*-t}\,Y(t)
 \ge d_*:=\frac{4\pi^2\nu^{3/2}}{\sqrt3}.
 \tag{ZJ17}
\]
This is a necessary rate of the actual zero branch, derived from full pressure/action and derivative Gram compatibility. No monotonicity of \(Y\) or replacement trajectory is assumed.

## 5. Quantitative divergence forced in the actual signed primitive

Combining ZJ10–11 with \(Yz\to1\) gives
\[
 \liminf z(t)^2 I_\delta(t)\ge\frac{\nu^2}{4K^2},\qquad
 \liminf (T_*-t)I_\delta(t)\ge\frac{4\pi^4\nu^5}{3K^2}.
 \tag{ZJ18}
\]
In particular **the actual unweighted signed primitive \(I_\delta(t)\to+\infty\)**, and its running budget \(C_\delta(t)\) inherits these bounds. There is no hypothetical unbounded schedule in this statement.

The kinetic derivative \(e'=-2\nu Y+2\langle u,g\rangle\) has finite absolute integral, since \(\int Y<\infty\) and \(|\langle u,g\rangle|\le KG_2\). Hence an actual kinetic terminal limit \(e_*\ge0\) exists without a positive Sobolev trace assumption. If \(e_*>0\), the stronger constants are
\[
 \liminf z^2 I_\delta\ge\mathfrak a_\delta(e_*),\qquad
 \liminf (T_*-t)I_\delta
 \ge\frac{4\pi^4\nu^5}{3}
           \frac{e_*+2\delta}{e_*(e_*+\delta)} .
 \tag{ZJ19}
\]
If \(e_*=0\), then \(\mathfrak a_\delta(e)\sim\nu^2/(2e)\), so
\[
 z^2I_\delta\to+\infty,\qquad (T_*-t)I_\delta\to+\infty,\qquad
 \liminf e(t)z(t)^2I_\delta(t)\ge\frac{\nu^2}{2},\qquad
 \liminf (T_*-t)e(t)I_\delta(t)\ge\frac{8\pi^4\nu^5}{3}.
 \tag{ZJ20}
\]
Multiplying the finite known cost in ZJ11 by \(e z^2\) or \(e(T_*-t)\) makes it vanish, so no negative force error is suppressed in these limits.

The same actual rate supplies profiles for the simultaneous radial action. For each \(\varepsilon>0\) small enough and all sufficiently late \(t_0<t\),
\[
\begin{aligned}
 \int_{t_0}^tY^2\,ds
 &\ge(d_*-\varepsilon)^2
       \log\frac{T_*-t_0}{T_*-t},\\
 \int_{t_0}^tY^3\,ds
 &\ge2(d_*-\varepsilon)^3
       \left((T_*-t)^{-1/2}-(T_*-t_0)^{-1/2}\right).
\end{aligned}\tag{ZJ21}
\]
Thus both \(\int_IY^2\) and \(\int_IY^3\) diverge, while the original kinetic \(\int_IY\) remains finite. ZJ11 retains this positive cubic action in addition to its quadratic endpoint stock.

The actual field Grams further give \(D\ge Y^2/e\) and
\(\|u_t-g\|^2\ge\nu^2Y^2/e\). Since \(e\le K^2\) and \(g\) has finite prescribed \(L^2_tL^2_x\) norm, ZJ21 forces both
\(\int_I\|\Delta u\|^2=\infty\) and \(\int_I\|u_t\|^2=\infty\).
No separate conclusion about divergence of the pressure norm is needed or asserted; that positive face remains in ZJ13 and ZJ15–16.

Unforced with \(e_*=0\), the original kinetic identity also gives
\(e(t)=2\nu\int_t^{T_*}Y\,ds\). Consequently
\(\liminf (\int_t^{T_*}Y\,ds)\,z(t)^2I_\delta(t)\ge\nu/4\).
For arbitrary force, the exact relation is
\(e(t)-e_*=2\nu\int_t^{T_*}Y\,ds-2\int_t^{T_*}\langle u,g\rangle\,ds\);
the prescribed source endpoint is retained.

## 6. Compatible reciprocal weights do not give an upper strain payment here

The complete pressure square also yields a finite weighted measure without assuming a terminal rectangle. Put
\(q_-=\|v\|^2+\frac12\nu^2D+\|\nabla p\|^2\).
Using ZJ14 and \(\|f-B_0\|^2\le2\|f\|^2+2\|B_0\|^2\) gives
\[
 \int_I z^2q_-\,dt
 \le\frac\nu\alpha+\frac{2\beta^2}{\nu^2}\int_IY\,dt
                      +2\alpha^{-2}\int_I\|f\|^2\,dt,\qquad
 |z'|\le\frac{\sqrt2}{\nu}z^2q_- .
 \tag{ZJ22}
\]
Hence \(z\) has finite ordinary total variation. These positive weighted payments are compatible with the zero limit and the unweighted strain divergence above.

They also pay two actual joint quantities, without a strain-budget assumption:
\[
 \int_I z^2\Phi_\delta\,dt
 \le\int_I z^2\|v\|^2\,dt+\alpha^{-2}\int_I\|g\|^2\,dt<\infty,
 \qquad
 \int_I z^2d\lambda^3\,dt\le\frac{3\nu^3}{\delta^2}\int_IY\,dt<\infty .
\]
The first uses \(\Phi_\delta\le\frac12\|v-g\|^2\le\|v\|^2+\|g\|^2\). The second uses \(d\le3b\), \(b\ge\delta\), and \(Y^3z^2\le Y\). Thus the coupled storage has paid weighted time mass and paid weighted radial action even on this branch; these estimates do not include its complete strain, gradient action, or product derivative term.

To test a joint reciprocal/storage product, define \(\Psi=z^2\Phi_\delta\). The **exact** coupled identity is
\[
\begin{aligned}
 \Psi' +z^2\left(\nu\|\nabla w\|^2+\lambda\|w\|^2+\frac d2\lambda^3\right)
 ={}&-z^2\mathcal S(u,w,w)\\
 &+z^2\left(\langle w,j_g\rangle+\lambda\langle q,g\rangle
                    +\tfrac12\lambda^2\langle u,g\rangle\right)
   +2\frac{z'}z\Psi .
\end{aligned}\tag{ZJ23}
\]
All force, pressure-derived, and boundary-time contributions remain in this product. Multiplying the dual force estimates by \(z^2\) pays their known cost; it does not remove the last derivative term.

On the actual zero branch, \(\liminf\Psi\ge\nu^2/(4K^2)>0\), while
\[
 \int_{t_0}^{T_*}\frac{|z'|}{z}\,dt=\infty,\qquad
 \int_{t_0}^{T_*}\left|2\frac{z'}z\Psi\right|dt=\infty.
 \tag{ZJ24}
\]
The first assertion follows on actual strict intervals from
\(\int|z'|/z\ge|\log z(t)-\log z(t_0)|\to\infty\); the second uses the positive late lower bound for \(\Psi\). Thus finite ordinary variation of \(z\) does not pay this full product term absolutely. Its negative part can be favorable in an upper balance, and no divergence of its positive part is asserted. An exact signed cancellation with the strain remains possible in principle; ZJ23 retains it rather than replacing it by an unjustified absolute or endpoint estimate.

The new result is the force-paid, pointwise signed necessity ZJ9–11 and its actual zero-limit profiles ZJ18–21. The executed reciprocal/Gram operations provide these lower requirements and weighted measures. They have not supplied an upper bound on the complete signed strain primitive or excluded the branch. No such upper payment is presumed.

## 7. Preservation
