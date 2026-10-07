# Joint native first-binomial rows: an executed storage calculation

**Reviewed scope and currentness.** [Actual zero reciprocal stock: joint-row strain necessity](A0729-zero-reciprocal-joint-strain-necessity.md) improves the sufficient source prices and derives every-time lower strain necessity; JR14 remains exact. Later signed-strain/thirty-field operations lie outside this assigned inventory. No result here upper-pays JR20. Original finite-rectangle membership, when supplied, implies downstream source and selected-current bounds. Optional sufficient criteria in this report are not added as upstream premises of the printed producer. The mathematical body retains its stated strict-time, terminal, pressure and force hypotheses. Publication adds no unconditional global theorem claim.


This note performs a new calculation on the published complete mixed rows. It does not identify the new storage with a theorem printed in the papers, and it does not assume a datum-generated whole-terminal rectangle. The concrete gain is a positive Gram storage for the actual intrinsic acceleration, including positive spatial damping and a payment of all explicit prescribed-force work using the kinetic row. The surviving quantity is an exact signed tangential-strain primitive on the same history.

All differential identities initially hold on every strict classical interval \(0\le t\le S<T_*\). Statements on \(I=(0,T_*)\) below concern a finite \(T_*\) and follow only when the stated common-prefix bounds are finite. No spatial cutoff, selected source, separate subfluid, or alternative evolution is introduced.

## 1. Primary rows and conventions

The four mathematical inputs are the combined paper's [unforced mixed recurrence](../SOURCES.md#S139), [forced mixed recurrence](../SOURCES.md#S117), [unforced kinetic and completed-row balances](../SOURCES.md#S140), and [forced complete cell and pressure square](../SOURCES.md#S118). These are physical LF locations, not PDF page numbers.

Here \(A=-\Delta=\Lambda^2\); it is not the inhomogeneous Bessel operator. Write
\[
 v=V_1=u_t,\qquad
 B_0=(u\cdot\nabla)u,\qquad
 B_1=(u\cdot\nabla)v+(v\cdot\nabla)u,\qquad
 g=\mathbb P f,\qquad q(u)=-\mathbb P B_0.
 \tag{JR1}
\]
The source's \(Q_n\) denotes scalar pressure; lower-case \(q\) here denotes the intrinsic nonlinear vector and has the sign displayed in JR1. The complete first two rows are
\[
 v+\nu Au+B_0+\nabla p=f,\qquad
 v_t+\nu Av+B_1+\nabla Q_1=f_t,\qquad \nabla\cdot u=\nabla\cdot v=0.
 \tag{JR2}
\]
Their scalar pressure coordinates are
\[
 p=R_iR_j(u_i u_j)-(-\Delta)^{-1}\nabla\cdot f,\quad
 Q_1=R_iR_j(v_i u_j+u_i v_j)-(-\Delta)^{-1}\nabla\cdot f_t.
 \tag{JR3}
\]
Thus \(\nabla p=(I-\mathbb P)(f-B_0)\) and \(\nabla Q_1=(I-\mathbb P)(f_t-B_1)\). Projection of these same complete rows gives
\[
 v+\nu Au=q+g,\qquad
 v_t+\nu Av=Dq(u)[v]+g_t,\qquad
 Dq(u)[z]=-\mathbb P[(u\cdot\nabla)z+(z\cdot\nabla)u].
 \tag{JR4}
\]
Both ordered nonlinear parents and both pressure parents in JR2–3 precede the projection. The pressure pairings below vanish because the testing fields are solenoidal, not because their pressure coordinates were omitted.

For solenoidal \(z\), kinetic tangency and its derivative give
\[
 \langle q,u\rangle=0,\qquad
 Dq[u]=2q,\qquad
 \langle Dq[z],u\rangle=-\langle q,z\rangle.
 \tag{JR5}
\]
Set \(\mathcal S(u,z,z)=\int_{\mathbb R^3}z_i z_j\,\partial_j u_i\,dx\). Only after retaining both parents in JR4 does integration by parts give
\[
 \langle z,Dq[z]\rangle=-\mathcal S(u,z,z).
 \tag{JR6}
\]
In particular the full first temporal-row balance is
\[
 \frac12\frac d{dt}\|v\|_2^2+\nu\|\nabla v\|_2^2
 =-\mathcal S(u,v,v)+\langle v,f_t\rangle.
 \tag{JR7}
\]
This is the \(r=1,s=0\) instance of the printed completed-row balance, rather than an additional model equation.

## 2. What constant positive simultaneous Gram contraction actually gives

For a constant symmetric positive semidefinite \(2\times2\) matrix
\(C=\left[\begin{smallmatrix}\alpha&\beta\\\beta&\gamma\end{smallmatrix}\right]\), define
\(E_C=\frac12\alpha\|u\|^2+\beta\langle u,v\rangle+\frac12\gamma\|v\|^2\).
The complete two-row calculation gives
\[
\begin{aligned}
 E_C'&+\nu\bigl(\alpha\|\nabla u\|^2+2\beta\langle\nabla u,\nabla v\rangle
                     +\gamma\|\nabla v\|^2\bigr)\\
 &=-\gamma\mathcal S(u,v,v)
   +\alpha\langle u,g\rangle
   +\beta\{\langle v,g\rangle+\langle u,g_t\rangle\}
   +\gamma\langle v,g_t\rangle .
\end{aligned}\tag{JR8}
\]
The entire \(\alpha\) nonlinear pairing vanishes by kinetic tangency. The entire \(\beta\) nonlinear pairing vanishes by its differentiated form in JR5. The \(\gamma\) strain remains. The Gram and viscous quadratic forms are positive, but those two exact cancellations do not eliminate the temporal-row strain.

The same calculation includes all first spatial rows. Put
\(x=(v,\partial_1u,\partial_2u,\partial_3u)\), and
\(k=(g_t,\partial_1g,\partial_2g,\partial_3g)\).
Each complete differentiated row is \(x_{\alpha,t}+\nu Ax_\alpha=Dq[x_\alpha]+k_\alpha\), including its scalar differentiated pressure before projection. For any constant symmetric positive semidefinite \(4\times4\) matrix \(C\),
\[
\begin{aligned}
 E_C' +\nu\sum_{\alpha,\beta} C_{\alpha\beta}
       \langle\nabla x_\alpha,\nabla x_\beta\rangle
 &=-\int \partial_j u_i\,T_{C,ij}\,dx
   +\sum_{\alpha,\beta}C_{\alpha\beta}\langle x_\alpha,k_\beta\rangle,\\
 T_{C,ij}&=\sum_{\alpha,\beta}C_{\alpha\beta}x_{\alpha,i}x_{\beta,j},
 \qquad E_C=\tfrac12\sum_{\alpha,\beta}C_{\alpha\beta}\langle x_\alpha,x_\beta\rangle.
\end{aligned}\tag{JR9}
\]
Here \(T_C(x)\) is an actual pointwise positive semidefinite symmetric tensor. Incompressibility removes its isotropic part:
\(\partial_j u_iT_{C,ij}=\operatorname{Sym}\nabla u:(T_C-\frac13\operatorname{tr}T_C\,I)\).
It leaves the displayed anisotropic strain contraction. Adding the \(u\) row introduces the same exact mass/derivative tangency cancellations as JR8. This conclusion is restricted to this executed constant-Gram family; it is not an exclusion of other source operations or other storages.

## 3. A positive nonconstant temporal/spatial Gram storage

Define the actual intrinsic acceleration
\[
 h=v-g=q-\nu Au,\qquad e=\|u\|_2^2,\qquad Y=\|\nabla u\|_2^2.
 \tag{JR10}
\]
From JR4–5, \(\langle u,h\rangle=-\nu Y\). Fix an auxiliary scalar \(\delta>0\) and set
\[
 b=e+\delta,\qquad \lambda=\frac{\nu Y}{b},\qquad
 w=h+\lambda u,\qquad d=e+3\delta.
 \tag{JR11}
\]
This regularization changes a storage coefficient, not the history or the governing equation. It is defined even at \(u=0\). The actual two-field Gram plus the positive scalar \(\delta\) gives
\[
 \begin{pmatrix}e+\delta&-\nu Y\\-\nu Y&\|h\|^2\end{pmatrix}\succeq0,\qquad
 \Phi_\delta:=\frac12\|h\|^2-\frac{\nu^2Y^2}{4b}
             =\frac12\|w\|^2+\frac14d\lambda^2,\qquad
 \frac14\|h\|^2\le\Phi_\delta\le\frac12\|h\|^2.
 \tag{JR12}
\]
The first inequality is Cauchy–Schwarz applied to the actual \((u,h)\); the equality is a full expansion using \(\langle u,h\rangle=-b\lambda\). Thus positivity of the storage is established before any whole-terminal action bound.

The first-binomial source \(g_t\) cancels exactly when forming \(h_t=v_t-g_t\):
\[
 h_t+\nu Ah=Dq[h]+j_g,\qquad j_g=Dq[g]-\nu Ag.
 \tag{JR13}
\]
This is an affine-source compensation on the original full row. Before projection, the \(f_t-g_t\) gradient is precisely compensated by the prescribed-force gradient in \(Q_1\); the remaining pressure contains both \(u,h\) parents and both \(u,g\) parents. In particular \(j_g\) contains both
\(-\mathbb P[(u\cdot\nabla)g]\) and \(-\mathbb P[(g\cdot\nabla)u]\).

The exact positive balance is
\[
 \boxed{\quad
 \Phi_\delta'+\nu\|\nabla w\|^2+\lambda\|w\|^2+\frac12d\lambda^3
 =-\mathcal S(u,w,w)+\langle w,j_g\rangle
      +\lambda\langle q,g\rangle+\frac12\lambda^2\langle u,g\rangle .
 \quad}\tag{JR14}
\]
Every term on its left is nonnegative for both unforced and forced histories. No sign is assigned to the intrinsic strain on the right.

For an independently checkable derivation, use
\[
\begin{gathered}
 e'=-2\nu Y+2F,\quad F=\langle u,g\rangle,\qquad
 Y'=2\langle Au,h+g\rangle,\\
 \Phi_\delta'
 =-\nu\|\nabla h\|^2-\mathcal S(u,h,h)+\langle h,j_g\rangle
   -\frac{\nu\lambda}{2}Y'-\frac b2\lambda^3+\frac12\lambda^2 F,\\
 \|\nabla w\|^2=\|\nabla h\|^2+\lambda Y'-2\lambda\langle Au,g\rangle
                       +\lambda^2Y,\qquad
 \|w\|^2=\|h\|^2-(e+2\delta)\lambda^2,\\
 \mathcal S(u,w,w)=\mathcal S(u,h,h)-\lambda\langle h,q\rangle,\qquad
 \langle h,q\rangle=\|h\|^2+\frac\nu2Y'-\nu\langle Au,g\rangle .
\end{gathered}\tag{JR15}
\]
Adding the three positive terms in JR14 first produces
\(-\mathcal S(u,w,w)+\langle h,j_g\rangle-\lambda\langle\nu Au,g\rangle+\frac12\lambda^2F\).
Finally JR5 gives
\(\langle u,j_g\rangle=-\langle q,g\rangle-\langle\nu Au,g\rangle\).
Since \(h=w-\lambda u\), this cancels the remaining \(\lambda\langle\nu Au,g\rangle\) face and proves JR14 with the displayed signs and factors.

When \(g=0\) and \(e>0\), letting \(\delta=0\) gives the sharper tangent formula
\(w=v+\nu Yu/e\perp u\).
Among the storages \(\frac12\|w\|^2+c e\lambda^2\), their balance contains
\((2c-\frac12)e\lambda\lambda'\); \(c=\frac14\) removes that derivative and gives
\(\Phi'+\nu\|\nabla w\|^2+\lambda\|w\|^2+\frac12e\lambda^3=-\mathcal S(u,w,w)\).
The positive-\(\delta\) identity JR14 is the version used below, so no nonvanishing kinetic-norm assumption is needed.

For comparison, on \(e>0\) intervals the actual spatial/temporal tangent Gram also gives
\[
 \frac{e^2}{4}(\lambda_0')^2
 \le \nu^2\left(\|Au\|^2-\frac{Y^2}{e}\right)
           \left(\|v\|^2-\frac{\langle u,v\rangle^2}{e}\right),
 \qquad \lambda_0=\frac{\nu Y}{e}.
 \tag{JR16}
\]
Indeed let \(a_\perp=\nu Au-\lambda_0u\) and
\(v_\perp=v-\langle u,v\rangle u/e\). Then
\(\lambda_0'=2\langle a_\perp,v_\perp\rangle/e\), and JR16 is their Gram determinant. It is an exact simultaneous constraint, not an upper action supplied by the determinant alone.

## 4. Up-front payment of every explicit force term in JR14

Let \(T_*<\infty\), and put \(K=\|u_0\|+\int_0^{T_*}\|g(t)\|\,dt\).
The printed [forced kinetic proof](../SOURCES.md#S118) gives
\(e\le K^2\) and \(D_T:=\int_I Y\le K^2/(2\nu)\).
Write \(G_0(t)=\|g(t)\|_\infty\), \(G_1(t)=\|\nabla g(t)\|_{\infty,\mathrm F}\), and \(G_2(t)=\|g(t)\|_2\).
These and \(\|Ag\|_2\) are prescribed finite-order source norms, finite on the closed finite horizon. Leray projection remains in \(g\) and \(j_g\).

The complete two ordered insertions give
\[
 \|j_g\|_2\le K G_1+G_0\sqrt Y+\nu\|Ag\|_2,\qquad
 J_1:=\int_I\|j_g\|_2
 \le K\int_I G_1+(\sup_I G_0)\sqrt{T_*D_T}
                         +\nu\int_I\|Ag\|_2.
 \tag{JR17}
\]
This uses only the kinetic row. Integration by parts against the complete source gives
\(\langle q,g\rangle=\int u_i u_j\partial_jg_i\), so
\[
 \lambda|\langle q,g\rangle|
 \le\frac{\nu K^2}{\delta}G_1Y,\qquad
 \frac12\lambda^2|F|
 \le\frac d4\lambda^3+\frac{8|F|^3}{27d^2}
 \le\frac d4\lambda^3+\frac{8K^3G_2^3}{243\delta^2}.
 \tag{JR18}
\]
The middle bound follows by maximizing \(\frac12|F|\lambda^2-\frac d4\lambda^3\) for \(\lambda\ge0\), with maximizer \(4|F|/(3d)\). Its maximum is \(8|F|^3/(27d^2)\); \(d\ge3\delta\) proves the last constant.

Consequently the additive known force price is
\[
 P_\delta:=
 \frac{\nu K^2}{\delta}\int_I G_1Y+
 \frac{8K^3}{243\delta^2}\int_I G_2^3
 \le\frac{K^4}{2\delta}\sup_I G_1+
 \frac{8K^3}{243\delta^2}\int_I G_2^3<\infty .
 \tag{JR19}
\]
The \(j_g\) pairing is bounded by \(\sqrt{2\Phi_\delta}\,\|j_g\|\). No unknown higher velocity norm enters either \(J_1\) or \(P_\delta\).

Keep the remaining signed quantity explicit:
\[
 C_\delta:=\sup_{0<S<T_*}
       \left[-\int_0^S\mathcal S(u,w,w)\,dt\right].
 \tag{JR20}
\]
The next implication is conditional on \(C_\delta<\infty\); this calculation does not supply that condition from datum. Put
\[
 R=\Phi_\delta(0)+C_\delta+P_\delta,\qquad
 X_{\rm roof}=\frac{J_1}{\sqrt2}
                    +\sqrt{R+\frac12J_1^2},\qquad L=X_{\rm roof}^2.
 \tag{JR21}
\]
For each strict \(S\), taking the running supremum \(X_S=\sup_{t\le S}\sqrt{\Phi_\delta(t)}\) in the integrated JR14–18 gives
\(X_S^2\le R+\sqrt2J_1X_S\), hence \(X_S\le X_{\rm roof}\).
Substitution back into the same integral inequality gives
\[
 \Phi_\delta(S)+\int_0^S
 \left(\nu\|\nabla w\|^2+\lambda\|w\|^2+\frac d4\lambda^3\right)dt
 \le L,\qquad
 \int_I Y^3\,dt\le\frac{4(K^2+\delta)^2L}{\nu^3}.
 \tag{JR22}
\]
The last step uses
\(d\lambda^3=\nu^3(d/b^3)Y^3\ge\nu^3Y^3/b^2\) and \(b\le K^2+\delta\).
This is a genuine force-paid positive storage implication; it is not a claimed unconditional datum bound for \(C_\delta\).

Unforced, \(J_1=P_\delta=0\) and no absorption is needed. The exact equality is
\[
 \Phi_\delta(S)+\int_0^S
   \left(\nu\|\nabla w\|^2+\lambda\|w\|^2+\frac d2\lambda^3\right)dt
 =\Phi_\delta(0)-\int_0^S\mathcal S(u,w,w)\,dt.
 \tag{JR23}
\]
If the complete signed right side has a finite uniform roof \(B\), then
\(\int_I Y^3\le2(K^2+\delta)^2B/\nu^3\).
The initial storage is computed from the source's complete initial jet, including its pressure and prescribed force; its finiteness does not require a terminal rectangle.

## 5. Exact target cell and the conditional lift to every native rectangle

The printed full pressure square, \(n=0,s=0\), reads
\[
 \nu Y(S)+\int_0^S
   \bigl(\|v\|^2+\nu^2\|Au\|^2+\|\nabla p\|^2\bigr)\,dt
 =\nu Y(0)+\int_0^S\|f-B_0\|^2\,dt .
 \tag{JR24}
\]
It retains the full unprojected convection and the canonical force-dependent pressure. For the unitary Fourier convention, Cauchy–Schwarz gives, for any \(\mu>0\),
\[
 \|u\|_\infty^2\le
 \frac{\mu Y+\|Au\|^2}{4\pi\sqrt\mu}
 \quad\Longrightarrow\quad
 \|u\|_\infty^2\le\frac{\sqrt{Y\|Au\|^2}}{2\pi}.
 \tag{JR25}
\]
The integral used is
\((2\pi)^{-3}\int_{\mathbb R^3}[|\xi|^2(\mu+|\xi|^2)]^{-1}d\xi=1/(4\pi\sqrt\mu)\).
This controls the full \(B_0\), since \(\|B_0\|^2\le\|u\|_\infty^2Y\). Set
\(q_-=\|v\|^2+\frac12\nu^2\|Au\|^2+\|\nabla p\|^2\). Then
\[
\begin{aligned}
 q_-+\nu Y'&\le \frac{Y^3}{8\pi^2\nu^2} &&(f=0),\\
 q_-+\nu Y'&\le 2\|f\|^2+\frac{Y^3}{2\pi^2\nu^2} &&(\text{arbitrary prescribed }f).
\end{aligned}\tag{JR26}
\]
Thus JR22 or JR23, if their stated signed roof is finite, gives the same-history whole-\(I\) target \(u\in L^2(I;H^2)\), \(v\in L^2(I;L^2)\), and \(\nabla p\in L^2(I;L^2)\). Low frequencies of \(u\) are paid by the original kinetic bound; no homogeneous norm is silently identified with an inhomogeneous one.

There is a direct complete-allocation lift, without an endpoint continuation criterion. Put \(X_m=\|\Lambda^m u\|^2\). For each fixed integer \(m\ge1\), expand every tensor component of \(D^\alpha(u\otimes u)\), \(|\alpha|=m\), over all \(\beta\le\alpha\), and let \(j=|\beta|\). Gagliardo–Nirenberg gives
\[
 \|D^j u\|_{p_j}\le C_{m,j}\|u\|_6^{1-j/m}\|D^m u\|_3^{j/m},
 \qquad p_j=\frac{6m}{m+j},\qquad
 \frac1{p_j}+\frac1{p_{m-j}}=\frac12 .
 \tag{JR27}
\]
Each actual Leibniz allocation is consequently bounded by the same
\(\|u\|_6\|D^m u\|_3\) times its finite coefficient. At \(m=1\) only \(j=0,1\) occur and this is direct Hölder. Summing all component, multiindex, and binomial coefficients gives a finite order-dependent constant. Sobolev and \(L^2\)–\(L^6\) interpolation then yield
\[
 \|D^m(u\otimes u)\|_2\le C_m\sqrt Y\,X_m^{1/4}X_{m+1}^{1/4}.
 \tag{JR28}
\]
Pair its complete divergence with \(D^\alpha u\), sum using weights \(m!/\alpha!\), and only then use the true solenoidal pressure pairing. These weights make the derivative square exactly \(X_m\), rather than a new norm. Young's inequality, retaining the full force derivative, gives an admissible bound
\[
 X_m'+\nu X_{m+1}
 \le C_m\nu^{-3}Y^2X_m+4\nu^{-1}\|f\|_{\dot H^{m-1}}^2 .
 \tag{JR29}
\]
Every spatial allocation is represented in JR27–29. The constant depends on this fixed order; there is no assertion uniform in \(m\).

The kinetic action and JR22–23 give
\(\int_I Y^2\le(\int_IY)^{1/2}(\int_IY^3)^{1/2}<\infty\).
Alternatively, a positive terminal limit of a reciprocal-enstrophy coordinate \((a+Y)^{-1}\) gives \(\sup_IY<\infty\), hence the same finite \(Y^2\) action. In either conditional case, write
\[
 B_m=\left(X_m(0)+4\nu^{-1}\int_I\|f\|_{\dot H^{m-1}}^2\right)
                 \exp\left(C_m\nu^{-3}\int_IY^2\right).
 \tag{JR30}
\]
For all strict \(S\), \(X_m(S)\le B_m\) and \(\nu\int_0^S X_{m+1}\le B_m\). Each fixed spatial row therefore belongs to \(L^\infty(I;H^m)\cap L^2(I;H^{m+1})\), after adding the kinetic low-frequency face. This is on the same whole interval; no shrinking interval is introduced.

Now induct simultaneously in temporal order. Suppose every \(V_a\), \(a\le n\), has \(L^\infty(I;H^k)\cap L^2(I;H^k)\) membership for each fixed \(k\). The original full recurrence
\[
 V_{n+1}=\nu\Delta V_n
       -\mathbb P\sum_{a=0}^n\binom na(V_a\cdot\nabla)V_{n-a}
       +\mathbb P F_n
 \tag{JR31}
\]
gives \(V_{n+1}\) in both classes at every fixed \(H^M\). For its \(L^2\) bound each term uses one actual parent in \(L^\infty H^{M+2}\), the other in \(L^2H^{M+2}\); for its \(L^\infty\) bound both use \(L^\infty H^{M+2}\). The viscous term uses \(V_n\) at order \(M+2\). All finite temporal force derivatives are prescribed. This simultaneous induction avoids using an unproved trace of a new row to produce that same row.

The complete scalar pressure row remains
\[
 Q_n=R_iR_j\sum_{a=0}^n\binom na V_{a,i}V_{n-a,j}
          -(-\Delta)^{-1}\nabla\cdot F_n .
 \tag{JR32}
\]
The first term uses those same actual parent allocations. The last term keeps the prescribed low-frequency potential bound; it is not estimated by an invalid homogeneous inverse at zero frequency. Its spatial derivatives and \(\nabla Q_n\) follow likewise. Consequently each finite native \(R(N,M)\), including \(M=0\) and its \(H^{-1}\) next-row face, follows on the same \(I\). Constants depend on \(N,M,\nu,T_*,u_0\) and finitely many prescribed force norms, with no all-order or infinite-tower uniformity asserted.

## 6. Exact remaining work of this derivation attempt

The executed coupled operation supplies a positive storage and pays every explicit force term before requiring a critical velocity action. It gives a complete conditional route from its actual signed strain prefix to the first native rectangle, and then to every fixed spatial and temporal rectangle.

It has not bounded JR20 from datum. In the constant simultaneous family, the remaining term is the actual traceless derivative Gram tensor contracted with the strain, JR9. In the nonconstant storage it is the actual \(-\mathcal S(u,w,w)\) with \(w=(u_t-g)+\nu Yu/(e+\delta)\), not a selected source or an absolute bound on isolated pieces. Its pressure and both nonlinear parents are inherited from JR2–4 and JR13. Positivity and kinetic tangency alone yielded JR12 and JR14; they did not remove this signed work.

The familiar absolute estimate
\(|\mathcal S(u,w,w)|\le\|\nabla u\|_2\|w\|_4^2
\le C\sqrt Y\|w\|_2^{1/2}\|\nabla w\|_2^{3/2}\)
would produce a coefficient \(C\nu^{-3}Y^2\|w\|^2\) after absorbing gradient damping. That particular estimate reuses an as-yet unpaid \(Y^2\) action at this stage, so it is not used as a datum proof. The exact signed balance JR14 is retained instead.

The bounds and identities here are new derived operations on the native complete rows. They neither reverse the original paper's claimed datum-production order nor promote JR20 into an additional original assumption. The bounded outstanding step for this calculation is payment of its displayed same-history tangential strain work, or an additional exact coupled cancellation that controls it.

## 7. Preservation

The four primary sources define the mathematical coverage; two additionally indexed analytic-framework identities are not invoked as producing premises.
