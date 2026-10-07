# Zero reciprocal terminal branch: kinetic trace, radial action, and strain records

**Reviewed scope and currentness.** [The actual zero reciprocal-stock branch: coupled terminal constraints](A0748-zero-stock-coupled-terminal-results.md) synthesizes these checks; [Necessary terminal profiles on the actual zero-reciprocal-stock branch](A0743-zero-stock-terminal-profiles.md) strengthens the kinetic-excess/Y product. No supersession of the radial identity. Original finite-rectangle membership, when supplied, implies downstream source and selected-current bounds. Optional sufficient criteria in this report are not added as upstream premises of the printed producer. The mathematical body retains its stated strict-time, terminal, pressure and force hypotheses. Publication adds no unconditional global theorem claim.


6 October 2026. New calculation on the actual prescribed-force history.

The datum-paid normalized first-row action has a finite terminal reciprocal limit. This report examines its zero branch using the original kinetic identity, full momentum square, exact radial Gram decomposition, and complete first-binomial source compensation. It derives quantitative constraints on that branch; it does not exclude it.

## 1. Sources, domain, and retained terms

The original [forced kinetic identity](../SOURCES.md#S118) is LF13–59; the full forcing–pressure square is LF189–251 of the same file, . The complete mixed graph and initial jet are LF18–70 of [forced-native-assembly-20260914.md](../SOURCES.md#S152), .

The product constants used below are the full-array Sobolev lemma, LF102–162 of [00-analytic-framework.tex](../SOURCES.md#S087), . They are
\(S_3=2^{-1/6}\pi^{-1/3}\), \(S_6=2^{2/3}/(\sqrt3\pi^{2/3})\).
Exact excerpts and hashes are in [primary-excerpts.json](../COVERAGE.md#A0735).

The starting normalized action was derived in [weighted-native-first-rectangle.md](A0452-weighted-native-first-rectangle.md), A5–A12. The first-binomial storage identity used in §6 is [joint-first-binomial-gram-storage.md](A0434-joint-first-binomial-gram-storage.md), JR10–JR15, together with its [positivity clarification](A0435-joint-storage-positivity-clarification.md). The positivity applies to the storage and dissipative terms; the derivative of the storage has no assigned sign.

Fix \(\nu>0\), an actual classical history on \([0,T)\) with a possible finite terminal time \(T=T_*>0\), its original \(H^\infty_\sigma\) datum, and its arbitrary prescribed smooth force. The mixed force derivatives rapidly decrease in space uniformly on this closed finite force horizon. Let
\[
 \mathcal A=-\Delta,\quad v=u_t,\quad g=\mathbb P f,\quad
 B=(u\cdot\nabla)u,\quad
 e=\|u\|_2^2,\quad Y=\|\nabla u\|_2^2,\quad Z=\|\mathcal Au\|_2^2.
\]
Every velocity and pressure derivative used below is a coordinate of this history. The complete rows are
\[
 v+\nu\mathcal Au+\nabla p=f-B,\qquad
 \nabla p=(I-\mathbb P)(f-B),
\]
\[
 v_t+(u\cdot\nabla)v+(v\cdot\nabla)u+\nabla p_t
       =-\nu\mathcal Av+f_t .
 \tag{KT1}
\]
Thus both first-binomial nonlinear parents, the pressure response, and the absolute-time force are retained.

For a fixed \(\alpha>0\), define
\[
 z=(\alpha+Y)^{-1},\quad
 q_-=\|v\|_2^2+\tfrac12\nu^2Z+\|\nabla p\|_2^2,\quad
 m=z^2q_-,\quad d\mu=m\,dt.
 \tag{KT2}
\]
The independently derived first-row estimate gives \(\mu((0,T))<\infty\) and bounded variation of \(z\), with a unique terminal limit. Assume its zero branch \(z(t)\to0\), equivalently \(Y(t)\to\infty\) through all sufficiently late actual times.

## 2. The scalar kinetic trace and the exact tail

Set
\[
 K=\|u_0\|_2+\int_0^T\|g\|_2\,dt,\qquad
 F(t)=\operatorname{Re}\langle u(t),g(t)\rangle .
\]
The exact kinetic identity gives
\[
 e'=-2\nu Y+2F,\qquad
 e\le K^2,\qquad \int_0^T Y\le K^2/(2\nu).
 \tag{KT3}
\]
Both terms on the derivative's right are integrable; consequently \(e\in W^{1,1}(0,T)\) has a scalar trace \(e_*\ge0\). Put
\[
 r=T-t,\qquad D(t)=\int_t^T Y(s)\,ds,\qquad
 M(t)=\mu((t,T)).
\]
Integration of the actual derivative gives
\[
 e(t)-e_*=2\nu D(t)-2\int_t^TF(s)\,ds .
 \tag{KT4}
\]
The force term is \(O(r)\), since \(|F|\le K\sup_{[0,T]}\|g\|_2\). On the zero reciprocal branch \(D(t)/r\to\infty\): for every \(L>0\), eventually \(Y(s)\ge L\) throughout the remaining tail. Hence
\[
 e(t)-e_*\sim2\nu D(t).
 \tag{KT5}
\]
In particular \(e(t)>0\) and \(e'(t)<0\) at all sufficiently late times, because \(Y\to\infty\) while \(F\) is bounded.

This is initially a scalar norm trace. The full momentum also supplies the limited vector trace that follows directly from kinetic data. Its tensor estimate is
\[
 \|B\|_{H^{-1}}\le\|u\otimes u\|_2
   \le S_6^{3/2}K^{1/2}Y^{3/4}.
\]
Thus \(v=-\nu\mathcal Au-\mathbb PB+g\in L^1(0,T;H^{-1})\), using \(\|\mathcal Au\|_{H^{-1}}\le\sqrt Y\). The original identity \(v=\partial_tu\) gives a strong terminal \(H^{-1}\) trace. Uniform \(L^2\) boundedness and density of \(H^1\) in \(L^2\) give a unique weak \(L^2\) trace \(u_*^{\,w}\), satisfying
\[
 \|u_*^{\,w}\|_2^2\le e_*.
 \tag{KT6}
\]
A positive \(e_*\) has not been identified with the norm of a strong \(L^2\) terminal trace. If \(e_*=0\), the scalar convergence itself gives \(u(t)\to0\) strongly in \(L^2\); no terminal spatial-derivative or higher mixed-jet convergence is thereby assumed.

## 3. Exact radial Gram decomposition of the full normalized action

For each late time \(e>0\), the full momentum and incompressibility give
\[
 \operatorname{Re}\langle u,v\rangle=-\nu Y+F,\qquad
 \operatorname{Re}\langle u,\mathcal Au\rangle=Y.
\]
Define the actual orthogonal parts
\[
 v_\perp=v-\frac{-\nu Y+F}{e}u,\qquad
 a_\perp=\mathcal Au-\frac Yeu .
\]
The two ordinary Hilbert-space Gram decompositions give exactly
\[
 \begin{aligned}
 m(t)={}&
 \frac{[\nu(1-\alpha z)-zF]^2+
                \frac12\nu^2(1-\alpha z)^2}{e}\\
 &+z^2\left(\|v_\perp\|_2^2+
             \tfrac12\nu^2\|a_\perp\|_2^2+
             \|\nabla p\|_2^2\right).
 \end{aligned}\tag{KT7}
\]
The radial force contribution is precisely
\(-2\nu z(1-\alpha z)F+z^2F^2\) in the numerator. The full force-dependent canonical pressure remains in the final positive term.

Since \(F\) is bounded and \(z\to0\),
\[
 \liminf_{t\uparrow T} e(t)m(t)\ge\frac32\nu^2 .
 \tag{KT8}
\]
For every sufficiently small \(\varepsilon>0\), this means
\(m(t)\ge(\frac32\nu^2-\varepsilon)/e(t)\) throughout a sufficiently late tail. Consequently:
\[
 \begin{array}{ll}
 e_*>0:&
 \displaystyle\liminf_{t\uparrow T}\frac{M(t)}r
       \ge\frac{3\nu^2}{2e_*},\\[6pt]
 e_*=0:&
 \displaystyle\int_{t_0}^T\frac{dt}{e(t)}<\infty,\qquad
 \frac{M(t)}r\longrightarrow\infty .
 \end{array}\tag{KT9}
\]
The finite measure does not conflict with these lower bounds.

On the zero-mass case (KT5) gives a sharper expression for the compulsory radial mass:
\[
 M(t)\ge\left(\frac{3\nu}{4}-o(1)\right)
             \int_t^T\frac{ds}{D(s)}.
 \tag{KT10}
\]
Eventual decrease of \(e\), in either scalar-trace case, also gives
\[
 \liminf_{t\uparrow T}\frac{e(t)M(t)}r\ge\frac32\nu^2 .
 \tag{KT11}
\]
Indeed \(1/e(s)\ge1/e(t)\) for \(s\ge t\). These are requirements on the actual normalized action and kinetic stock.

## 4. A complete normalized enstrophy clock joined to the kinetic tail

The source's two Sobolev constants imply, for the complete unprojected convection,
\[
 \|B\|_2^2\le bY^{3/2}\sqrt Z,\qquad
 b=(S_3S_6)^2=\frac2{3\pi^2}.
 \tag{KT12}
\]
To check the full tensor: \(\|B\|_2\le\|u\|_6\|\nabla u\|_3\), the finite-array Sobolev estimate gives \(\|\nabla u\|_3\le S_3\|\Lambda^{3/2}u\|_2\), and Fourier interpolation gives \(\|\Lambda^{3/2}u\|_2^2\le\sqrt{YZ}\).

The enstrophy row of (KT1) is
\[
 Y'/2+\nu Z=\langle B,\Delta u\rangle-\langle f,\Delta u\rangle .
\]
Both pressure pairings vanish by exact solenoidality, while the complete \(B\) and full unprojected \(f\) are still present. Define
\(U(t)=\int_t^Tz^2Z\) and \(F_z(t)=\int_t^Tz^2\|f\|_2^2\).
The finite normalized action pays \(U\). The convective and force pairings below are integrable, so the terminal scalar \(z(T)=0\) can be used without a derivative trace:
\[
 \frac{z(t)}2+\nu U(t)
  =\int_t^Tz^2
        [\langle B,\Delta u\rangle-\langle f,\Delta u\rangle].
 \tag{KT13}
\]
Their bounds are
\[
 \left|\int_t^Tz^2\langle B,\Delta u\rangle\right|
       \le\sqrt b\,U(t)^{3/4}D(t)^{1/4},\qquad
 \left|\int_t^Tz^2\langle f,\Delta u\rangle\right|
       \le\sqrt{F_z(t)U(t)} .
\]
For the first one, pointwise
\(z^2Y^{3/4}Z^{3/4}=(z^2Z)^{3/4}(zY)^{1/2}Y^{1/4}
 \le(z^2Z)^{3/4}Y^{1/4}\), then apply Hölder.

Maximizing \(\sqrt b\,D^{1/4}U^{3/4}-\nu U\) gives the maximum
\(27b^2D/(256\nu^3)\). For arbitrary force, absorb its pairing by
\(\varepsilon\nu U+F_z/(4\varepsilon\nu)\). Since
\(F_z\le\alpha^{-2}r\sup\|f\|_2^2=o(D)\), first take the terminal limit at fixed \(\varepsilon>0\), then let \(\varepsilon\downarrow0\). The result is
\[
 \limsup_{t\uparrow T}\frac{z(t)}{D(t)}
       \le\kappa,\qquad
 \kappa=\frac{27b^2}{128\nu^3}
        =\frac3{32\pi^4\nu^3}.
 \tag{KT14}
\]
This retains the signed clock identity before its full-source bounds.

Because \(D'=-Y=-1/z+\alpha\), (KT14) gives eventually, for every \(\varepsilon>0\),
\((D^2)'\le-2/(\kappa+\varepsilon)+2\alpha D\).
Integrating to the actual integral endpoint \(D(T)=0\) yields
\(D(t)^2\ge2r/(\kappa+\varepsilon)-2\alpha\int_t^TD(s)\,ds\).
Here \(\int_t^TD(s)\,ds\le rD(t)=o(r)\). Consequently
\[
 \liminf_{t\uparrow T}\frac{D(t)}{\sqrt r}
       \ge\sqrt{\frac2\kappa}
       =\frac{8\pi^2\nu^{3/2}}{\sqrt3},\qquad
 \liminf_{t\uparrow T}\frac{e(t)-e_*}{\sqrt r}
       \ge\frac{16\pi^2\nu^{5/2}}{\sqrt3}.
 \tag{KT15}
\]
In the zero-mass case, the more direct ratio in (KT14) and (KT5) gives
\[
 \liminf_{t\uparrow T}\frac{e(t)}{z(t)}
   =\liminf_{t\uparrow T}e(t)Y(t)
   \ge\frac{2\nu}{\kappa}
   =\frac{64\pi^4\nu^4}{3}.
 \tag{KT16}
\]
The equality of the two lower limits uses \(\alpha e(t)\to0\). A positive \(e_*\) instead gives \(e(t)Y(t)\to\infty\).

For the pointwise rate used below, the same complete square supplies an independent calibration. Put
\(q_a=\|v\|_2^2+a\nu^2Z+\|\nabla p\|_2^2\), \(0<a<1\).
The exact two faces are
\[
 q_a+\nu Y'=\|f-B\|_2^2-(1-a)\nu^2Z,\qquad
 q_a-\nu\sqrt a\,Y'=\|v-\nu\sqrt a\,\mathcal Au\|_2^2
                             +\|\nabla p\|_2^2\ge0.
\]
Bound \(\|f-B\|^2\) by \((1+\varepsilon)\|B\|^2+
(1+\varepsilon^{-1})\|f\|^2\), optimize \(Z\), and maximize
\((1-a)(1+\sqrt a)\). Its maximum \(32/27\) occurs at \(a=1/9\). This gives
\(Y'\le\kappa(1+\varepsilon)^2Y^3+C_{\varepsilon,\nu}\|f\|^2\).
Integration of \((z^2)'=-2z^3Y'\) to its zero terminal value, then
\(\varepsilon\downarrow0\), proves
\[
 \limsup_{t\uparrow T}\frac{z(t)^2}r\le2\kappa,\qquad
 \liminf_{t\uparrow T}\sqrt r\,Y(t)
       \ge\frac1{\sqrt{2\kappa}}
       =\frac{4\pi^2\nu^{3/2}}{\sqrt3}.
 \tag{KT17}
\]
Neither (KT15) nor (KT17) prescribes a power law to the history.

## 5. The intrinsic first-binomial Gram on the same history

Let \(\mathcal Q(u)=-\mathbb P B\), and define
\[
 h=v-g=\mathcal Q(u)-\nu\mathcal Au,\quad
 \lambda=\frac{\nu Y}{e+\delta},\quad
 w=h+\lambda u,\quad d=e+3\delta,\qquad \delta>0.
\]
The complete compensated row and source are
\[
 h_t+\nu\mathcal Ah=D\mathcal Q(u)[h]+j_g,\qquad
 j_g=D\mathcal Q(u)[g]-\nu\mathcal Ag
    =-\mathbb P\nabla\cdot(u\otimes g+g\otimes u)-\nu\mathcal Ag .
 \tag{KT18}
\]
The \(g_t\) cancels in \(h_t=v_t-g_t\); its original gradient face is compensated by the prescribed-force contribution to \(p_t\). Both \(u,h\) parents and both \(u,g\) parents and their canonical pressure responses remain in the original row.

The exact regularized storage and balance are
\[
 \Phi_\delta=\tfrac12\|h\|_2^2-\frac{\nu^2Y^2}{4(e+\delta)}
     =\tfrac12\|w\|_2^2+\tfrac14d\lambda^2,\qquad
 \tfrac14\|h\|_2^2\le\Phi_\delta\le\tfrac12\|h\|_2^2,
\]
\[
 \Phi_\delta'+\nu\|\nabla w\|_2^2+\lambda\|w\|_2^2
                 +\tfrac12d\lambda^3
 =-\mathcal S(u,w,w)+\langle w,j_g\rangle
       +\lambda\langle\mathcal Q(u),g\rangle
       +\tfrac12\lambda^2F,\quad
 \mathcal S(u,w,w)=\int w_iw_j\partial_ju_i .
 \tag{KT19}
\]
For \(e>0\), put \(h_\perp=h+\nu Yu/e\). The unregularized two-field Gram gives the sharper exact decomposition
\[
 \Phi_\delta=
   \tfrac12\|h_\perp\|_2^2+
   \frac{\nu^2Y^2(e+2\delta)}{4e(e+\delta)}.
 \tag{KT20}
\]

## 6. All explicit force work paid before the strain primitive

Write \(G_\infty=\|g\|_\infty\),
\(G_1=\|\nabla g\|_{\infty,\mathrm F}\), and \(G_2=\|g\|_2\).
The aggregate Fourier divergence/Leray operator norm is at most one, so the complete two-parent insertion satisfies
\[
 \|j_g\|_{\dot H^{-1}}\le J_{-1}(t):=2KG_\infty+\nu\|\nabla g\|_2,\qquad
 |\langle w,j_g\rangle|
 \le\tfrac\nu2\|\nabla w\|_2^2+\frac{J_{-1}^2}{2\nu}.
\]
This uses a divergence and \(\mathcal Ag\), so no inverse singularity at frequency zero is silently inserted. The other exact source pairing is
\(\langle\mathcal Q(u),g\rangle=\int u_iu_j\partial_jg_i\).
Consequently
\[
 \lambda|\langle\mathcal Q(u),g\rangle|
       \le\nu Y\frac e{e+\delta}G_1\le\nu YG_1.
\]
Finally the exact cubic Young maximum gives
\[
 \tfrac12\lambda^2|F|
 \le\tfrac d4\lambda^3+\frac{8|F|^3}{27d^2}
 \le\tfrac d4\lambda^3+\frac{G_2^3}{18\sqrt\delta}.
\]
Indeed \(|F|\le\sqrt e\,G_2\) and
\(\max_{e\ge0}e^{3/2}/(e+3\delta)^2=3/(16\sqrt\delta)\), attained at \(e=9\delta\).
All source amplitudes are allowed.

Define the actual unweighted signed primitive and its known source constant by
\[
 I_\delta(t)=-\int_0^t\mathcal S(u,w,w)\,ds,
\]
\[
 C_{\mathrm f,\delta}=
 \Phi_\delta(0)+\frac{K^2}{2}\sup G_1
 +\frac1{18\sqrt\delta}\int_0^TG_2^3
 +\frac1{2\nu}\int_0^TJ_{-1}^2<\infty .
\]
Integration of (KT19), with the complete source payments above, gives for every strict time
\[
 I_\delta(t)+C_{\mathrm f,\delta}\ge
 \Phi_\delta(t)+
 \int_0^t\left[
  \tfrac\nu2\|\nabla w\|_2^2+\lambda\|w\|_2^2
                         +\tfrac d4\lambda^3\right]ds .
 \tag{KT21}
\]
The initial \(h(0)=\mathcal Q(u_0)-\nu\mathcal Au_0\) is generated by the actual full initial jet; it is finite and contains no terminal input.

The Gram (KT20) therefore forces \(I_\delta(t)\to+\infty\) on the zero reciprocal branch at every late actual time. More precisely,
\[
 \begin{array}{ll}
 e_*>0:&
 \displaystyle\liminf_{t\uparrow T}\frac{I_\delta(t)}{Y(t)^2}
   \ge\frac{\nu^2(e_*+2\delta)}{4e_*(e_*+\delta)},\\[6pt]
 e_*=0:&
 \displaystyle\liminf_{t\uparrow T}
       \frac{e(t)I_\delta(t)}{Y(t)^2}\ge\frac{\nu^2}{2},
 \qquad I_\delta(t)/Y(t)^2\longrightarrow\infty .
 \end{array}\tag{KT22}
\]
These apply to every actual high-\(Y\) first-arrival sequence. They are cumulative primitive bounds; no sign or monotonicity of the primitive's successive increments is asserted.

Using the independently checked pointwise cone (KT17), these also give
\[
 \begin{array}{ll}
 e_*>0:&
 \displaystyle\liminf_{t\uparrow T}rI_\delta(t)
    \ge\frac{\nu^2(e_*+2\delta)}{8\kappa e_*(e_*+\delta)},\\[6pt]
 e_*=0:&
 \displaystyle\liminf_{t\uparrow T}r e(t)I_\delta(t)
    \ge\frac{\nu^2}{4\kappa},\qquad rI_\delta(t)\longrightarrow\infty .
 \end{array}\tag{KT23}
\]

## 7. A normalized storage constraint consistent with finite action

The same complete action pays the normalized intrinsic storage:
\[
 z^2\Phi_\delta\le z^2(\|v\|_2^2+\|g\|_2^2)
       \le m+z^2G_2^2,\qquad
 \int_0^Tz^2\Phi_\delta\,dt<\infty .
 \tag{KT24}
\]
Its exact Gram lower bound is
\[
 z^2\Phi_\delta\ge
 \frac{\nu^2(1-\alpha z)^2(e+2\delta)}{4e(e+\delta)}.
\]
On \(e_*=0\),
\[
 \liminf_{t\uparrow T}e(t)z(t)^2\Phi_\delta(t)\ge\nu^2/2,\qquad
 z(t)^2\Phi_\delta(t)\longrightarrow\infty .
 \tag{KT25}
\]
Thus a normalized storage density can tend to infinity while its datum-paid time integral is finite. The actual kinetic/radial constraints (KT9)–(KT11) retain the precise integrability requirement; no substitute scalar history is used.

The completed calculation yields a scalar kinetic trace, the exact complete radial action, quantitative tail stock and stock–gradient constraints, and forced unweighted strain-record growth. It establishes no upper payment for that signed strain primitive and makes no terminal higher-jet membership assumption. All original sources and previous reports remain read only; the new before/after baselines and final report hash are in this directory.
