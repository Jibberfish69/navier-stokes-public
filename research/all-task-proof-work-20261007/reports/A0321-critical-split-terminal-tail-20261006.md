# Critical insertion split: exact terminal tails and boundary residual

**Reviewed scope and currentness.** The mathematical statements retain their recorded hypotheses and the reconciliations listed in the supersession register. Original finite-rectangle membership, when supplied, implies downstream source and selected-current bounds. Optional sufficient criteria in this report are not added as upstream premises of the printed producer. The mathematical body retains its stated strict-time, terminal, pressure and force hypotheses. Publication adds no unconditional global theorem claim.


Read-only source verification, 6 October 2026. This executes the original FIH.39 split in the critical moving triangle and tests its heat-age/output tails using the actual history. No originals or earlier audits were edited.

The governing [FIH source](../SOURCES.md#S212) supplies the complete parent formulas FIH.3–9 at LF58–150, transport FIH.11–14 at LF168–208, critical moving triangle FIH.15–20 at LF217–281, transverse projection FIH.29–30 at LF377–403, defect FIH.31–36 at LF405–458, and split FIH.39 at LF486–497. Sections after FIH.39 were checked: they contain the algebraic sign test, scaling, and scope statements, not another terminal-tail operation. Those examples are not used as evidence here.

## 1. Actual definitions and complete forced split

Fix the actual smooth history on \(I=(0,T)\), \(T<\infty\), with
\[
 u_t+\nu\Lambda^2u=Q(u)+b,\quad
 Q(u)=-\mathbb P[(u\cdot\nabla)u],\quad b=\mathbb Pf,
\]
\[
 p=R_iR_j(u_i u_j)-(-\Delta)^{-1}\nabla\cdot f,\quad
 K=\|u_0\|_2+\|b\|_{L^1(I;L^2)},\quad
 Y(t)=\|\nabla u(t)\|_2^2,\quad
 \int_IY\le D_0:=K^2/(2\nu).
\]
Set \(b=0\) for the original unforced source. Let
\[
 v_s=S_su,\quad S_s=e^{-\nu s\Lambda^2},\quad
 G_s=Q(v_s),\quad H_s=S_sQ(u),\quad D_s=H_s-G_s.
\]
With \(\mathcal B(a,c)=\mathbb P[(a\cdot\nabla)c]\),
\[
 DQ(v)[a]=-\mathcal B(a,v)-\mathcal B(v,a).
\]
Thus the exact forced extension of FIH.39 is
\[
 \mathfrak N_s=
 \underbrace{DQ(v_s)[G_s]}_{N_s^{\rm self}}+
 \underbrace{DQ(v_s)[D_s]}_{N_s^{\rm defect}}+
 \underbrace{DQ(v_s)[S_sb]}_{N_s^f}.
 \tag{CT.1}
\]
Both ordered legs in each term remain. Every inner \(Q\), every \(\mathcal B\), and the outer source receiver retain their own Leray projector. In particular no fiberwise kinetic or helicity cancellation has been imposed.

For an output projection \(P_X\), including \(X=\mathbb R^3,\{|k|\le R\},\{|k|>R\}\), define
\[
 q_X(t,s)=\nu^{-1}\|\Lambda^{-1/2}P_XG_s(t)\|_2^2,\qquad
 A_X(t)=q_X(t,0),
\]
\[
 j_X(t,s)=\frac2\nu\operatorname{Re}
 \langle\Lambda^{-1}P_X\mathfrak N_s,P_XG_s\rangle
 =j_X^{\rm self}+j_X^{\rm defect}+j_X^f .
 \tag{CT.2}
\]
The critical receiver is \(G_s\) throughout. FIH.11–12 give the exact output-weighted transport
\[
 (\partial_t-\partial_s)q_X=j_X .
 \tag{CT.3}
\]
All following identities initially hold on strict horizons \(0<\tau<T\).

## 2. Execute the complete small-age triangle

Write \(\Omega_\tau=\{t,s\ge0:t+s<\tau\}\). Integrating CT.3 over the full triangle reproduces FIH.17:
\[
 J_X(\tau):=\iint_{\Omega_\tau}j_X
 =\int_0^\tau A_X(t)\,dt-\int_0^\tau q_X(0,s)\,ds .
 \tag{CT.4}
\]
For \(\epsilon>0\), integrate over \(\Omega_\tau\cap\{s<\epsilon\}\). The upper edge is fixed until \(t=\tau-\epsilon\), then moves with slope \(-1\). Retaining both edges gives
\[
 \boxed{
 J_{X,<\epsilon}(\tau)
 =\int_0^\tau A_X(t)\,dt
 -\int_0^{\min(\epsilon,\tau)}q_X(0,s)\,ds
 -\int_0^{(\tau-\epsilon)_+}q_X(t,\epsilon)\,dt .}
 \tag{CT.5}
\]
Consequently its complement is exactly
\[
 \boxed{
 J_{X,\ge\epsilon}(\tau)
 =\int_0^{(\tau-\epsilon)_+}q_X(t,\epsilon)\,dt
 -\int_\epsilon^\tau q_X(0,s)\,ds ,}
 \tag{CT.6}
\]
where the second integral is zero when \(\tau\le\epsilon\).

These are identities for the combined insertion. The pure nonlinear versions subtract the corresponding \(J^f\); neither FIH.39 leg has been discarded.

At every fixed \(\epsilon>0\), the full-output positive-age term has an actual \(\tau\uparrow T\) limit. Indeed
\[
 q(t,\epsilon)\le \frac{C_b}{\nu}F_t(\epsilon)^2,\quad
 C_b=\frac2{3\pi^2},\quad F_t(s)=\|\nabla S_su(t)\|_2^2,
\]
\[
 F_t(\epsilon)\le\min\{Y(t),K^2/(2e\nu\epsilon)\},\qquad
 \int_Iq(t,\epsilon)\,dt\le
 \frac{C_bK^2D_0}{2e\nu^2\epsilon}.
 \tag{CT.7}
\]
This proves convergence of CT.6 by actual integrability; the datum term is also integrable. The bound retains its \(1/\epsilon\) loss.

## 3. Each positive-age split leg is absolutely paid, with explicit loss

This section uses absolute estimates to test tails, without changing CT.1–6. The homogeneous product estimate is
\[
 \|\Lambda^{-1/2}\mathcal B(a,c)\|_2
 \le a_0\|\nabla a\|_2\|\nabla c\|_2,\quad
 a_0=\pi^{-1}\sqrt{2/3},\quad a_0^2=C_b .
\]
The complete Fourier source and incompressibility yield
\[
 |\widehat G_s(k)|\le c_{\mathcal F}|k|e^{-\nu s|k|^2/2}K^2,\quad
 |\widehat H_s(k)|\le c_{\mathcal F}|k|e^{-\nu s|k|^2}K^2 .
 \tag{CT.8}
\]
Put \(C_G=c_{\mathcal F}\sqrt{15\pi^{3/2}/4}\). Since
\(\int |k|^4e^{-a|k|^2}\,dk=(15\pi^{3/2}/4)a^{-7/2}\),
\[
 \|\nabla G_s\|_2\le C_GK^2(\nu s)^{-7/4},\qquad
 \|\nabla D_s\|_2\le(1+2^{-7/4})C_GK^2(\nu s)^{-7/4}.
\]
Both self-insertion legs then give
\[
 |j^{\rm self}(t,s)|
 \le\frac{4C_b}{\nu}\|\nabla G_s\|_2\|\nabla v_s\|_2^3
 \le\frac{4C_bC_GK^3}{\nu\sqrt{2e}}(\nu s)^{-9/4}Y(t).
\]
The same bound for the defect leg carries the factor \(1+2^{-7/4}\). Thus
\[
 \int_I\int_\epsilon^\infty |j^{\rm self}|\,ds\,dt
 \le M_{\rm self}(\epsilon):=
 \frac{16C_bC_GK^3D_0}{5\nu^2\sqrt{2e}}(\nu\epsilon)^{-5/4},
\]
\[
 \int_I\int_\epsilon^\infty |j^{\rm defect}|\,ds\,dt
 \le(1+2^{-7/4})M_{\rm self}(\epsilon).
 \tag{CT.9}
\]
These are actual whole-time, positive-age payments for each full-output leg. The \(s^{-9/4}\) majorant is not integrable at zero age.

The two forced legs are paid before heat-age integration:
\[
 \frac2\nu\int_I\int_0^\infty
 \left|\operatorname{Re}
 \langle\Lambda^{-1}N_s^f,G_s\rangle\right|\,ds\,dt
 \le B_f:=\frac{2C_bK^2}{\nu^2}
 \|\nabla b\|_{L^2(I;L^2)}\sqrt{D_0}.
 \tag{CT.10}
\]
For projected tails, use the also integrable Cauchy majorant
\((2/\nu)\|\Lambda^{-1/2}N_s^f\|_2\|\Lambda^{-1/2}G_s\|_2\).
It has the same \(B_f\) bound. Therefore the absolute force insertion tails tend to zero both as \(s<\epsilon\) shrinks and as output \(R\uparrow\infty\), uniformly over \(\Omega_\tau\). No small force assumption enters.

## 4. The actual defect is a positive heat stress, with a precise terminal residue

FIH.33 can be retained before projected divergence. Define
\[
 \mathcal T_s=S_s(u\otimes u)-v_s\otimes v_s
 =2\nu\int_0^s S_{s-r}
 \sum_j\partial_jv_r\otimes\partial_jv_r\,dr .
 \tag{CT.11}
\]
The heat kernel is positive, so \(\mathcal T_s(x)\) is pointwise positive semidefinite. Its full projected divergence is exactly
\[
 D_s=-\mathbb P\,\operatorname{div}\mathcal T_s .
\]
This is equivalent to FIH.33 because every \(\partial_jv_r\) is divergence-free. The nonlinear pressure response has not been removed.

Its total trace is
\[
 L_s(t):=\int\operatorname{tr}\mathcal T_s
 =\|u(t)\|_2^2-\|S_su(t)\|_2^2
 \le\min\{K^2,2\nu sY(t)\},
\]
\[
 \boxed{\int_I L_s(t)\,dt\le2\nu sD_0.}
 \tag{CT.12}
\]
Consequently
\[
 |\widehat D_s(k)|\le c_{\mathcal F}|k|L_s(t),
\]
and, for each \(r>5/2\),
\[
 \|D_s\|_{L^1(I;H^{-r})}\le2\nu s C_rD_0,\quad
 C_r=c_{\mathcal F}\left(\int |k|^2(1+|k|^2)^{-r}\,dk\right)^{1/2}.
 \tag{CT.13}
\]
Thus the actual heat commutator has an explicit small-age strong negative-norm time payment. It does not by itself pay its derivative-bearing critical insertion receiver.

Use the already checked negative endpoint \(u(t)\to u_*\) in \(H^{-1/4}\), weak \(L^2\) convergence, and the kinetic norm limit
\[
 \ell=\lim_{t\uparrow T}\|u(t)\|_2^2,\qquad
 d=\ell-\|u_*\|_2^2\ge0 .
\]
For each fixed \(s>0\), heat smoothing is strong in every finite \(H^m\), so
\[
 \lim_{t\uparrow T}L_s(t)=\ell-\|S_su_*\|_2^2,\qquad
 \lim_{s\downarrow0}\lim_{t\uparrow T}L_s(t)=d.
 \tag{CT.14}
\]
There is also the exact uniform assertion
\[
 \boxed{
 \lim_{s\downarrow0}\sup_{t<T}L_s(t)
 =\lim_{R\uparrow\infty}\sup_{t<T}\|P_{>R}u(t)\|_2^2=d.}
 \tag{CT.15}
\]
To prove it, fix a bounded output \(R_0\). Its velocity converges strongly at \(T\), hence its complementary kinetic mass converges to \(\ell-\|P_{\le R_0}u_*\|_2^2\). This is at most \(d+\delta\) for sufficiently large \(R_0\), and remains at most \(d+2\delta\) in a terminal neighborhood. On the remaining compact strict-time interval the \(L^2\) velocity path is compact, so its high-output tail vanishes uniformly. This proves the second equality. Finally
\[
 L_s(t)\le2\nu sR^2K^2+\|P_{>R}u(t)\|_2^2
\]
gives the upper bound in the first equality; CT.14 gives its lower bound.

On any actual tensor endpoint subsequence \(u(t)\otimes u(t)\,dx\rightharpoonup u_*\otimes u_*\,dx+\mathcal R\), the finite PSD measure \(\mathcal R\) has total trace \(d\). The defect's fixed-age cluster is
\[
 \mathcal T_s\longrightarrow\mathcal T_s(u_*)+S_s\mathcal R,\qquad
 D_s\longrightarrow D_s(u_*)-\mathbb P\operatorname{div}S_s\mathcal R .
 \tag{CT.16}
\]
The scalar heat-stress trace is unique because the tested scalar local-energy endpoint measure is unique. The matrix cluster may retain \(\mathcal R\). No canonical instantaneous pressure cluster, or strong positive terminal norm, is inferred here.

## 5. New uniform combined small-age tail at every bounded output

Let \(X=\{|k|\le R\}\). The actual quadratic Fourier formula gives, for all heat ages,
\[
 0\le q_R(t,s)\le M_R:=\frac{\pi c_{\mathcal F}^2K^4R^4}{\nu}.
 \tag{CT.17}
\]
Here \(\int_{|k|\le R}|k|\,dk=\pi R^4\). CT.12–13 strengthen fixed-output dominated convergence to an explicit rate. Since
\[
 G_s-Q(u)=(S_s-I)Q(u)-D_s,
\]
\[
 \|\Lambda^{-1/2}P_{\le R}(G_s-Q(u))\|_2
 \le c_{\mathcal F}\sqrt\pi R^2
 [\nu sR^2K^2+L_s(t)],
\]
the difference of the squared receivers satisfies
\[
 \boxed{
 \|q_R(\cdot,0)-q_R(\cdot,\epsilon)\|_{L^1(I)}
 \le2\pi c_{\mathcal F}^2K^2R^4\epsilon
 [R^2TK^2+2D_0].}
 \tag{CT.18}
\]
Writing CT.5 as a difference between these two receivers plus its two age-edge pieces proves
\[
 \boxed{
 \sup_{\tau<T}|J_{\le R,<\epsilon}(\tau)|
 \le2\pi c_{\mathcal F}^2K^2R^4\epsilon[R^2TK^2+2D_0]
 +2\epsilon M_R\longrightarrow0
 \quad(\epsilon\downarrow0,\ R\text{ fixed}).}
 \tag{CT.19}
\]
Subtracting the absolutely paid force tail gives the same vanishing assertion for the combined nonlinear self-plus-defect insertion. CT.19 is uniform over every strict terminal horizon. It is not a separate uniform zero-age bound for either individual FIH.39 leg.

At the same fixed output, CT.4 also shows actual convergence of the complete triangular insertion at \(T\), and
\[
 |J_{\le R}(\tau_2)-J_{\le R}(\tau_1)|
 \le M_R(\tau_2-\tau_1)+
 \int_{\tau_1}^{\tau_2}q_R(0,s)\,ds .
 \tag{CT.20}
\]
Thus the combined insertion has controlled terminal fronts at bounded output.

## 6. The exact remaining high-output/small-age corner

Now take \(X=\{|k|>R\}\) in CT.5. The retained corner has the exact boundary residual
\[
 \boxed{
 J_{>R,<\epsilon}^{\rm NL}(\tau)
 =\int_0^\tau A_{>R}(t)\,dt
 -\int_0^{\min(\epsilon,\tau)}q_{>R}(0,s)\,ds
 -\int_0^{(\tau-\epsilon)_+}q_{>R}(t,\epsilon)\,dt
 -J_{>R,<\epsilon}^f(\tau).}
 \tag{CT.21}
\]
The datum age-tail is at most \(C_\infty^{>R}(u_0)\to0\). The positive-age receiver has the uniform Gaussian bound
\[
 q_{>R}(t,\epsilon)\le
 M_{\epsilon,R}:=\frac{2\pi c_{\mathcal F}^2K^4}{\nu(\nu\epsilon)^2}
 (1+\nu\epsilon R^2)e^{-\nu\epsilon R^2}.
 \tag{CT.22}
\]
It follows from integrating the complete kinetic source bound CT.8 over \(|k|>R\), and is independent of the strict time. The force tail tends to zero by CT.10.

Consequently, with
\[
 \delta_{\epsilon,R}=C_\infty^{>R}(u_0)+TM_{\epsilon,R}
 +B_f^{>R},\qquad B_f^{>R}\longrightarrow0,
\]
where explicitly
\[
 B_f^{>R}:=\frac2\nu\int_I\int_0^\infty
 \|\Lambda^{-1/2}P_{>R}N_s^f\|_2
 \|\Lambda^{-1/2}P_{>R}G_s\|_2\,ds\,dt\le B_f,
\]
one has, for every fixed \(\epsilon>0\),
\[
 \sup_{\tau<T}
 \left|J_{>R,<\epsilon}^{\rm NL}(\tau)
       -\int_0^\tau A_{>R}(t)\,dt\right|
 \le\delta_{\epsilon,R}\longrightarrow0 .
 \tag{CT.23}
\]
The remaining positive term is precisely
\[
 \sup_{\tau<T}\int_0^\tau A_{>R}
 =\int_I\nu^{-1}\|\Lambda^{-1/2}P_{>R}Q(u)\|_2^2\,dt ,
 \tag{CT.24}
\]
interpreted as an extended nonnegative integral. Thus uniform vanishing of the combined critical corner, with \(\epsilon\) fixed and \(R\uparrow\infty\), is equivalent to vanishing of the actual high-output source-square action tail. No absent-reference argument is needed: CT.21 retains and identifies the exact boundary flux.

Likewise the full triangular terminal front obeys
\[
 J(\tau_2)-J(\tau_1)
 =\int_{\tau_1}^{\tau_2}A(t)\,dt
  -\int_{\tau_1}^{\tau_2}q(0,s)\,ds .
 \tag{CT.25}
\]
After subtracting the absolutely integrable force front, the remaining cumulative nonlinear front is again governed by the actual positive source action. These equations neither assert that it diverges nor assume that it is finite.

## 7. What the datum-paid stock actually pays in the corner

The joined theorem gives \(C_\infty(t)=\int_0^\infty q(t,s)\,ds\in L^1(I)\). Define \(H_\epsilon(t)=\int_0^\epsilon q(t,s)\,ds\). The actual gradient budget supplies
\[
 H_\epsilon(t)\le\frac{C_b}{\nu}Y(t)
 \min\{\epsilon Y(t),K^2/(2\nu)\},
\]
\[
 \int_I H_\epsilon\le
 \frac{C_bK^2}{2\nu^2}\int_IY(t)
 \min\{2\nu\epsilon Y(t)/K^2,1\}\,dt\longrightarrow0 .
 \tag{CT.26}
\]
This is an explicit history-dependent modulus, dominated by the datum integrable \(Y\).

CT.3 on the fixed-age strip yields the complete net law
\[
 H_\epsilon'=
 \int_0^\epsilon j(t,s)\,ds-A(t)+q(t,\epsilon).
\]
For the actual terminal-linear weights \(\phi_S(t)=S-t\), with their upper-face value zero, it gives
\[
 \boxed{
 \int_0^S(S-t)\left[\int_0^\epsilon j(t,s)\,ds-A(t)+q(t,\epsilon)\right]dt
 =-S H_\epsilon(0)+\int_0^S H_\epsilon(t)\,dt.}
 \tag{CT.27}
\]
The right side tends uniformly to zero over \(S<T\) as \(\epsilon\downarrow0\). This pays the net transport, retaining both positive source boundaries. It does not separate \(A\) from \(q(\epsilon)\) or the split insertion.

There is an analogous output-tail net payment:
\[
 \boxed{
 \int_0^S(S-t)\left[\int_0^\infty j_{>R}(t,s)\,ds-A_{>R}(t)\right]dt
 =-S C_\infty^{>R}(u_0)+\int_0^S C_\infty^{>R}(t)\,dt
 \longrightarrow0}
 \tag{CT.28}
\]
uniformly in \(S<T\), as \(R\uparrow\infty\).

For an additional explicit stock-tail bound, put \(u_L=P_{\le R/2}u\), \(u_H=u-u_L\). Since \(Q(S_su_L)\) has no output above \(R\),
\[
 \|\Lambda^{-1/2}P_{>R}G_s\|_2
 \le2a_0\|\nabla S_su\|_2\|\nabla S_su_H\|_2,
\]
\[
 C_\infty^{>R}(t)
 \le\frac{2C_b}{\nu^2}Y(t)\|P_{>R/2}u(t)\|_2^2 .
 \tag{CT.29}
\]
This proves its \(L^1(I)\) tail convergence by actual strict-time Fourier tails and the kinetic domination \(Y K^2\). The endpoint uniform kinetic tail identified in CT.15 does not bound the product in CT.29 when \(Y(t)\) is unbounded. Even \(d=0\) would not supply a critical terminal stock tail through this inequality.

## 8. Output/heat-age geometry and the unfilled parabolic corner

The complete Fourier geometry does pay the positive-age high-output stock:
\[
 \boxed{
 C_{\infty,\epsilon}^{>R}(t)
 \le\frac{2\pi c_{\mathcal F}^2K^4}{\nu^3\epsilon}
 e^{-\nu\epsilon R^2}.}
 \tag{CT.30}
\]
Indeed one first integrates \(e^{-\nu s|k|^2}\) in \(s\), then uses
\(\int_{|k|>R}|k|^{-1}e^{-\nu\epsilon|k|^2}\,dk
=(2\pi/(\nu\epsilon))e^{-\nu\epsilon R^2}\).
This gives actual uniform tails above the positive-age/output parabola. CT.19 simultaneously pays small ages at every fixed bounded output. Their uncovered intersection is exactly the corner CT.21.

The displayed scalar estimates cannot be made jointly small by silently choosing a common cutoff: CT.19's explicit bound requires \(\epsilon R^6\to0\) as \(R\uparrow\infty\), whereas the Gaussian positive-age estimate needs \(\nu\epsilon R^2\) large enough to suppress its prefactor. These sufficient conditions cannot hold together. This is the limit of these derived estimates, not a counterexample or a proof that the actual history cannot cancel. The combined exact corner identity CT.21 remains available and retains the positive source-square residual.

## 9. Sufficient entry and verified coverage

The executed split produces genuine new conclusions: explicit uniform small-age combined insertion tails at bounded output, separate absolute payment of both nonlinear legs at every positive age, an \(O(s)\) strong negative-norm heat-defect payment, and the exact kinetic-defect residue of uniform heat smoothing. Whole-time stock convergence additionally pays the time-weighted net corner transport.

It has not paid the full critical source boundary in CT.21/25. There is nevertheless a precise sufficient entry involving just one fixed corner. Fix \(\epsilon>0\) and \(R_0<\infty\), and suppose the actual complete signed self-plus-defect corner has
\[
 B_{\rm corner}:=\sup_{\tau<T}
 J_{>R_0,<\epsilon}^{\rm NL}(\tau)<\infty .
 \tag{CT.31}
\]
This is a one-sided primitive bound on the displayed actual history. Solving CT.21 for its positive boundary and adding CT.17 gives
\[
 \boxed{
 \int_I A\le B_A:=
 B_{\rm corner}+B_{\rm old}+TM_{\epsilon,R_0}+B_f+TM_{R_0},}
 \tag{CT.32}
\]
where all terms except the specified corner entry are already paid:
\[
 B_{\rm old}:=\int_0^\epsilon q_{>R_0}(0,s)\,ds
 \le\min\left\{C_\infty(u_0),
       \frac{C_b\epsilon}{\nu}\|\nabla u_0\|_2^4\right\},
\]
\[
 M_{R_0}=\pi c_{\mathcal F}^2K^4R_0^4/\nu,\qquad
 M_{\epsilon,R_0}=
 \frac{2\pi c_{\mathcal F}^2K^4}{\nu(\nu\epsilon)^2}
 (1+\nu\epsilon R_0^2)e^{-\nu\epsilon R_0^2}.
\]
For \(R_0=0\), the low-output term is zero; taking a positive finite \(R_0\) merely retains an explicitly paid low-output action. Conversely, if \(\int_I A<\infty\), CT.21 and the nonnegative old face and positive-age edge imply
\[
 B_{\rm corner}\le\int_I A+B_f .
 \tag{CT.33}
\]
Thus the one-corner upper entry is equivalent to the full critical source action modulo the explicit paid faces and force. If the chosen corner primitive includes its forced leg as well, omit \(B_f\) from CT.32. No bulk \(C_\infty\in L^1(I)\) estimate has supplied CT.31.

The coercive promotion is also explicit. For the actual response \(w=u-S_tu_0\),
\[
 E'=\operatorname{Re}\langle\Lambda w,Q(u)\rangle
 +\operatorname{Re}\langle\Lambda w,b\rangle-I,\quad
 I=\nu\|\Lambda^{3/2}w\|_2^2,
\]
Put \(B_F=\|\operatorname{Re}\langle\Lambda w,b\rangle\|_{L^1(I)}
\le2K\|\Lambda b\|_{L^1(I;L^2)}\). The complete nonlinear work satisfies
\[
 \operatorname{Re}\langle\Lambda w,Q(u)\rangle
 =\operatorname{Re}\langle\Lambda^{3/2}w,\Lambda^{-1/2}Q(u)\rangle
 \le\tfrac12(I+A).
\]
Integrating the actual response equation, with \(E(0)=0\), gives
\[
 \boxed{
 E(S)+\tfrac12\int_0^S I
 \le\tfrac12\int_0^S A+B_F
 \le\tfrac12 B_A+B_F.}
 \tag{CT.34}
\]
Since the actual datum heat term has
\[
 \int_I\|\Lambda^{3/2}S_tu_0\|_2^2\,dt
 \le(2\nu)^{-1}\|\Lambda^{1/2}u_0\|_2^2,
\]
the triangle inequality squared produces the actual whole-terminal row
\[
 \boxed{
 \int_I\|\Lambda^{3/2}u\|_2^2\,dt
 \le\frac{2B_A+4B_F+\|\Lambda^{1/2}u_0\|_2^2}{\nu}<\infty.}
 \tag{CT.35}
\]
Together with \(\int_I\|u\|_2^2\le TK^2\), this is \(u\in L^2(I;H^{3/2})\), on the same whole interval with the same absolute-time force. It enters the previously verified original mixed reconstruction and restart chain. CT.32–35 are conditional on the single actual corner upper entry CT.31. None has been manufactured from CT.26–30, which control storages and combined currents while retaining their source boundaries.

## 10. Integrity

The original FIH SHA-256 baseline is
\(9cd8d83b22f202272b7425e35fdd7ed127498d4cb58f9ffd7c9a70caf2bf179b\).
The associated PRM baseline is
\(213ec6b89d107a46f7d2d5fc31ba188c45e056abfa8508136de080d7e2057065\).
Earlier audit files were not changed.
