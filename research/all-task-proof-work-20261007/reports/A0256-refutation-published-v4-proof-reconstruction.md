# The published response: argument, source identity, and verification scope

**Reviewed scope and currentness.** Deposited64-page response differs from later combined PartIII; exact title-only v3/v4 relation recorded. Original finite-rectangle membership, when supplied, implies downstream source and selected-current bounds. Optional sufficient criteria in this report are not added as upstream premises of the printed producer. The mathematical body retains its stated strict-time, terminal, pressure and force hypotheses. Publication adds no unconditional global theorem claim.


This note reconstructs the proof in the separately deposited response, in its own order and with its actual inputs. It then distinguishes the later combined Part III. It is a mathematical reading record, not a revision of either manuscript. 

## R1. Which document is being read

The separate deposit is [Figshare 33511468, version 4](https://doi.org/10.6084/m9.figshare.33511468.v4), titled **No Finite-Time Blowup for Forced Navier–Stokes: A response to OpenAI’s Finite Time Blowup for Navier–Stokes**. Its file is `forcing-and-compatible-regularity.pdf`, file ID 68519515, 64 pages, 626654 bytes, MD5 `fed4b334662f093d280d6b4ce8ecbb75`, .

Two retained local PDFs are byte-identical: the [publication PDF](../SOURCES.md#S014) and the existing [formal-revision build PDF](../SOURCES.md#S003). The matching publication record gives the exact [source](../SOURCES.md#S006), 109334 bytes. The freshly extracted [deposited text](../COVERAGE.md#A0259) is byte-identical to the retained publication text; .

The 67-page `navier-stokes-forced-refined.pdf` in the September 11 refinement directory is a different document, not the deposited v4 PDF. The combined paper's Part III is also a later version. Below, **S** means the exact 64-page deposit's main source above; **C** means the combined [Part III body](../SOURCES.md#S126). Fragment names under S mean the formal-revision directory; fragment names under C mean the combined `parts/refutation` directory. All LF references are physical source lines.

The retained `title-revision-20260913/before-title.tex` has , exactly the publication record's v3 source. A direct source comparison finds only the title and PDF metadata changed from that source to v4; the mathematical body is identical. This establishes the v3-to-v4 mathematical relationship directly, rather than relying solely on a release note.

The local copy of the proposed OpenAI paper used to check linked equations is [the original PDF](../SOURCES.md#S037), . Its local text has 166 pages. The response identifies it as the September 8 manuscript and links the official OpenAI PDF at S:2713–2716. This reading verifies the cited local pages and formulas; an independent remote byte comparison of that PDF has not been made in this verification.

## R2. The objects and the actual proof dependency

The problem is the whole-space, unit-density forced equation

\[
 u_t+(u\cdot\nabla)u+\nabla p-\nu\Delta u=f,
 \qquad \operatorname{div}u=0,\qquad u(0)=u_0.
\]

Here \(u_0\in H^\infty_\sigma(\mathbb R^3)\), \(\nu>0\), and every fixed mixed derivative of the prescribed \(f\) is smooth through the finite horizon and rapidly decreasing uniformly in space. Pressure is a response fixed by incompressibility, up to a function of time. With \(\mathbb P\) the Leray projection and \(\mathbb Q=I-\mathbb P\),

\[
 u_t-\nu\Delta u+\mathbb P((u\cdot\nabla)u)=\mathbb Pf,
 \qquad \nabla p=\mathbb Q(f-(u\cdot\nabla)u).
\]

These are the definitions actually used at S:98–169. In particular, a bounded applied force is not a bound on material acceleration: \(D_tu=-\nabla p+\nu\Delta u+f\).

The proposed competing field is a concentrating local construction completed by oscillatory corrections, a swirl exterior, and spatial and temporal cutoffs. Its force for \(t<1\) is defined as the **complete momentum residual** of that completed, localized velocity and pressure. It starts from rest; its full field is not axisymmetric even though its exterior is. The response does not replace this force by its value at the origin, by a conservative force, or by a force norm alone.

The decisive existence input in the **separate deposit** is Theorem 1, “Forced-data intersection; regularity premise,” S:172–189, PDF page 3. Its exact introduction says: “Its proof is not given in this paper.” It supplies a solution \(U\) on \([0,T]\) satisfying

\[
 U\in\mathscr I_T:=\bigcap_{r,m\ge0}H^r(0,T;H^m(\mathbb R^3)).
\]

The deposit then proves consequences of this input and compares them with the proposed field. Its bibliography cites the unforced paper **33472627.v2**, S:2696–2699. It does not cite the later separately published forced paper **33968818** as a proof of this universal premise. Appendix H proves a restricted source theorem independently once a smooth unforced starting history is supplied; this is a separate theorem, with its own amplitude condition.

The subsequent **combined Part III** makes a different dependency explicit: C:110–143 states a corollary of Part II's `f:thm:ier-global-smoothness`, whose finite-horizon persistence and complete forced recurrence supply \(\mathscr I_T\). The response-side trace and comparison proof below consumes that conclusion. Verifying this consumer does not independently verify Part II's datum-to-intersection construction.

## R3. Forced mixed rows and the completed heights

Set \(V_n=\partial_t^nu\), \(F_n=\partial_t^nf\), \(Q_n=\partial_t^np\). S:215–269 retains

\[
 B_n=\sum_{a=0}^n\binom na(V_a\cdot\nabla)V_{n-a},
 \qquad V_{n+1}+B_n+\nabla Q_n-\nu\Delta V_n=F_n.
\]

Spatial differentiation also retains the full sum over \(\beta\le\alpha\), with coefficient \(\binom na\binom\alpha\beta\). Divergence gives

\[
 -\Delta Q_n=\operatorname{div}B_n-\operatorname{div}F_n,
 \qquad \nabla Q_n=\mathbb Q(F_n-B_n).
\]

The initial velocity jet is generated from the datum and force jets by

\[
 a_{n+1}=\nu\Delta a_n-
 \mathbb P\sum_{b=0}^n\binom nb(a_b\cdot\nabla)a_{n-b}
 +\mathbb PF_n(0),\qquad a_0=u_0.
\]

For each fixed temporal row \(r\) and height \(s\ge0\), define

\[
 E_{r,s}=\tfrac12\|\Lambda^sV_r\|_2^2,
 \quad\mathcal P_{r,s}=-\operatorname{Re}(\Lambda^sV_r,\Lambda^sB_r),
 \quad W_{r,s}=\operatorname{Re}(\Lambda^sV_r,\Lambda^sF_r).
\]

The complete signed balance and its iterates, S:277–337, are

\[
 E_{r,s}'=-2\nu E_{r,s+1}+\mathcal P_{r,s}+W_{r,s},
\]
\[
 \partial_t^kE_{r,s}=(-2\nu)^kE_{r,s+k}
 +\sum_{j=0}^{k-1}(-2\nu)^j\partial_t^{k-1-j}
 (\mathcal P_{r,s+j}+W_{r,s+j}).
\]

Pressure vanishes in these global energy pairings because the receiver is the solenoidal \(V_r\). It is retained in the velocity equation and reconstructed above. Differentiating production differentiates **all three velocity factors**, with the multinomial coefficient \(\ell!/(b!c!d!)\); differentiating work differentiates both velocity and source factors. The scalar derivative \(\partial_t^kE_{r,s}\) is not \(E_{r+k,s}\).

Rearrangement at \(s=1/2\) gives the actual forced completed coordinate

\[
 C^f_{r,k}=\frac{\partial_t^kE_{r,1/2}}{(-2\nu)^k}
 -\sum_{j=0}^{k-1}(-2\nu)^{j-k}\partial_t^{k-1-j}
 (\mathcal P_{r,j+1/2}+W_{r,j+1/2})
 =E_{r,k+1/2}.
\]

This identity, S:342–358, is exact on each strict smooth interval. It identifies the coordinate's nonnegative value; its time integral is an additional membership statement.

## R4. What the source work controls before velocity membership

Appendix A, `source-work-appendix.tex`:4–108, moves derivatives to the prescribed solenoidal test \(h_s=\Lambda^{2s}\mathbb Pf\), obtaining

\[
 W_s=(u,h_s),\qquad
 W_s'=(u,(\partial_t+\nu\Delta)h_s)
 +\int u_i u_j(\operatorname{Sym}\nabla h_s)_{ij}
 +(f,h_s).
\]

The kinetic bound \(\sup\|u\|_2\le K_T=\|u_0\|_2+\int_0^T\|f\|_2\) therefore bounds both \(W_s\) and \(W_s'\) at every fixed spatial height using only prescribed source norms. The positive transport sign follows from integration by parts; the pressure pairing is zero because \(h_s\) is solenoidal. No amplitude restriction occurs here.

Consequently the original unforced completion formula evaluated on the **same forced velocity**, \(\widehat C_j[u]\), differs from \(C^f_{0,j}\) by bounded additive source terms:

\[
 \widehat C_1=E_{0,3/2}-W_{1/2}/(2\nu),\qquad
 \widehat C_2=E_{0,5/2}+(W_{1/2}'-2\nu W_{3/2})/(4\nu^2).
\]

Thus membership in each \(L^p(0,T)\) is equivalent for these two corresponding completed expressions, S:361–432. This does not replace their argument by an unforced solution.

For higher source completions, repeated integration retains all initial polynomials. At base row and order \(k\ge2\), \(I^{k-2}\mathcal S_{s,k}\) is bounded. At arbitrary row, the binomial transfer in `all-row-source-primitives.tex`:12–29 is

\[
 W_{r,s}=\sum_{b=0}^r(-1)^b\binom rb
 \partial_t^{r-b}(u,\partial_t^{r+b}h_s).
\]

Expanding it gives the coefficient \(\binom ra(1-1)^{r-a}\), so only the actual \((V_r,\partial_t^rh_s)\) survives. Integrating the completed source sum \(n+r\) times gives a bounded source primitive and the explicit datum polynomials, at each finite order.

The deposit expressly retains the rest of the completed identity: `source-work-appendix.tex`:123–155 leaves \(H''-I^{k-2}\mathcal N\) as well as the bounded source correction. For \(k\ge4\), bounded \(I^{k-2}C^f\) would yield only the terminal weight \((T-t)^{k-3}\), not the unweighted completed-height integral. In the positive odd-row identity, divergence of \(I^rE_{r,s}\) requires an unbounded upper nonlinear primitive; pointwise divergence at \(r>0\) alone is insufficient.

The combined version sharpens the source part, `all-row-source-primitives.tex`:31–118, to \(I^{\max(n+r-2,0)}\mathcal F_{r,s,n}\in L^\infty\), by bounding the first derivative of each prescribed test pairing. It also adds source absorption at every row, `source-work-appendix.tex`:110–182:

\[
 |W_{r,s}|\le\tfrac\nu4\|\Lambda^{s+1}V_r\|_2^2
 +\nu^{-1}\|\Lambda^{s-1}\mathbb PF_r\|_2^2.
\]

The nonlinear production stays on the retained side of the resulting inequality. At negative source heights its low-frequency integral is finite because the prescribed Fourier transform is bounded and \(\int_0^1\rho^{2s}d\rho<\infty\). These are genuine source estimates and identities, without an independent claim to produce the full velocity intersection.

## R5. Rectangles, critical production, and the terminal traces

The deposit assumes \(u\in\mathscr I_T\) at S:436–440 and then selects

\[
 R_{N,M}=\sum_{n=0}^N
 \bigl(\|V_n\|_{L^2H^{M+1}}^2+
 \|V_{n+1}\|_{L^2H^{M-1}}^2\bigr).
\]

All these norms are over the **entire** \((0,T)\). Every fixed rectangle is finite; no constant common to all \(N,M\) is assumed. Its coordinates are derivatives of one history and agree under restriction.

For an adjacent pair, Fourier truncation and time smoothing give the Hilbert-pair identity and continuous \(H^m\) trace,

\[
 \frac d{dt}\|v\|_{H^m}^2
 =2\operatorname{Re}(J^{m+1}v,J^{m-1}v_t),\qquad
 \sup_{[0,T]}\|v\|_{H^m}^2
 \le T^{-1}\|v\|_{L^2H^m}^2
 +2\|v\|_{L^2H^{m+1}}\|v_t\|_{L^2H^{m-1}}.
\]

Here \(J=(1-\Delta)^{1/2}\). Difference estimates make the truncations Cauchy in \(C([0,T];H^m)\). Defining \(A_{n,m}=\sqrt{(1+T^{-1})R_{n,m}}\) gives \(\sup\|V_n\|_{H^m}\le A_{n,m}\). The next row yields \(\|V_n(t)-V_n(s)\|_{H^m}\le |t-s|A_{n+1,m}\). Products, pressure projection, and viscosity pass to this same endpoint. Proposition 2, S:503–571, therefore preserves every full differentiated equation at every cut.

The nonlinear critical calculation occurs **after** selecting \(R=R_{0,1}\), S:578–688. Let \(D=\|u_0\|_{H^1}^2\). Then

\[
 \sup_t\|u\|_{\dot H^{1/2}}\le\sqrt{D+R},\qquad
 \int_0^T\|u\|_{\dot H^{3/2}}^2\le R,
\]
\[
 \int_0^T|\mathcal P_{1/2}|\le
 \frac{\sqrt{D+R}\,R}{\sqrt2\pi}.
\]

Indeed \(\mathcal P_{1/2}=-(\Lambda u,(u\cdot\nabla)u)\); Hölder puts all three factors in \(L^3\), and the sharp \(\dot H^{1/2}\to L^3\) constant cubed is \((\sqrt2\pi)^{-1}\). The source work obeys \(\int|W_{1/2}|\le\|f\|_{L^2\dot H^{-1/2}}\sqrt R\). The complete signed critical balance follows, with no nonlinear-smallness or absorption requirement once the rectangle supplies the two critical norms.

Selecting \(R_{0,2}\) instead gives, by the adjacent \(H^2\) trace and Fourier inversion,

\[
 \sup_{t\le T}\|u(t)\|_\infty^2
 \le\frac{\|u_0\|_{H^2}^2+R_{0,2}}{8\pi}.
\]

The constant uses \(\int(1+|\xi|^2)^{-2}d\xi=\pi^2\). S:746–828 additionally propagates higher integer spatial energies from the already finite critical dissipation, using the complete spatial commutator estimate with finite constant at each order; it retains the source's additive \(\int\|\Lambda^{m-1}\mathbb Pf\|_2^2\). These are continuation/reconstruction consequences of the finite critical coordinate.

The combined-only `forced-domain-propagation.tex`:10–185 gives another explicit reconstruction: starting with **all** whole-interval completed spatial-height integrals, kinetic control recovers inhomogeneous \(L^2H^m\); the complete spatial RHS is \(L^1H^m\), so integration from the datum produces uniform base-row bounds; the finite binomial recurrence produces every temporal row. Full pressure is

\[
 Q_n=R_iR_j\sum_{a=0}^n\binom na V_{a,i}V_{n-a,j}
 -(-\Delta)^{-1}\operatorname{div}F_n.
\]

It supplies compatible endpoint jets and restart on the same force. Its displayed spatial-height premise is explicit and precedes the propagation; this consumer does not itself manufacture those integrals.

## R6. Individual terms and material derivatives

The product estimates in S:839–927 control both factors of every binomial transport summand. With \(S_{n,m}=C_m\sum_a\binom na A_{a,m+2}A_{n-a,m+2}\), \(C_m=2^{m+1}/\sqrt{8\pi}\), Theorem 3 gives

\[
 \sup\|V_{n+1}\|_{H^m}\le A_{n+1,m},\quad
 \sup\|B_n\|_{H^m}\le S_{n,m},\quad
 \sup\|\nabla Q_n\|_{H^m}\le\sup\|F_n\|_{H^m}+S_{n,m},\quad
 \sup\|\nu\Delta V_n\|_{H^m}\le\nu A_{n,m+2}.
\]

This bounds the summands individually; it does not infer their boundedness from their cancelling sum. The selected \(R_{1,2}\) yields separate pointwise bounds and \(\|D_tu\|_{L^2L^2}\le(1+c_\infty A)\sqrt R\), S:1069–1201.

Pressure also gives an exact orthogonal decomposition, S:930–1029,

\[
 D_tu=\nu\Delta u+\mathbb Pf+\mathbb QB_0,
 \qquad
 \|D_tu\|_{H^s}^2
 =\|\nu\Delta u+\mathbb Pf\|_{H^s}^2+\|\mathbb QB_0\|_{H^s}^2.
\]

The gradient projection of convection gains a derivative via \(\operatorname{div}B_0=\partial_i u_j\partial_j u_i\): \(\|\mathbb QB_0\|_{\dot H^{1/2}}\le(\sqrt2\pi)^{-1}\|u\|_{\dot H^{3/2}}^2\). The actual forced solenoidal sum \(\nu\Delta u+\mathbb Pf\) stays intact.

Material acceleration need not be solenoidal. Appendix G, S:1827–1956, retains

\[
 [D_t,\partial_i]w=-(\partial_i u_j)\partial_jw,\qquad
 \operatorname{div}(D_tu)=\operatorname{tr}((\nabla u)^2),
\]
\[
 [D_t,\Delta]w=-(\Delta u)\cdot\nabla w
 -2\sum_i(\partial_i u)\cdot\nabla\partial_iw.
\]

The Jacobian is still one: its second derivative contains exactly \(\operatorname{div}(D_tu)-\operatorname{tr}((\nabla u)^2)=0\). The higher divergence recurrence and full pressure/viscous commutators preserve this constraint.

Proposition 12, S:1990–2057, proves equality of the two **complete** Eulerian and material Sobolev intersections. The forward direction is the finite polynomial expansion of \(D_t^qu\). In reverse, \(\partial_tw_q=w_{q+1}-(u\cdot\nabla)w_q\) first belongs to \(L^1H^m\), since all material-spatial rows have \(L^2\) time norms. Thus \(w_q\in W^{1,1}H^m\) and has a uniform trace. Polynomial inversion then gives every Eulerian row. This uses all finite spatial heights and all material orders, rather than identifying \(\partial_t^n\) with \(D_t^n\).

The parcel-metric appendix proves \(\dot C=2F^TSF\), \(\operatorname{tr}(C^{-1}\dot C C^{-1}\dot C)=4|S|^2\), and a kinetic-budget bound on \(\int\sup_t\|\log C\|_F^2\) over labels. It permits distortion on shrinking sets of labels. The angular-momentum appendix retains pressure torque, angular viscous derivative, and fluctuation fluxes; its axisymmetric maximum principle is not applied to the complete nonaxisymmetric field.

## R7. The proposed exterior: exact local cancellation and positive norm divergence

S:1253–1507 and `fractional-exterior.tex` use the exterior actually specified by the competing construction. The original candidate's Proposition 9.9, Step 4, page 116, sets its exterior vector potential to zero and its swirl to the heat profile below; Lemma A.6, page 138, proves that profile equation. These specific linked pages were read directly.

At \(\nu=1\), write \(\tau=1-t\), \(A=1/2+h\), \(D=1/2-h\), \(0<h<1/100\), and \(b=2^A\kappa>0\). Then

\[
 H(Z)=\Gamma(1+h)^{-1}\int_0^\infty e^{-v}v^h(1+Zv)^{-h}dv,
 \quad K=b r^{-2A}H(4\tau/r^2),
\]
\[
 u=K e_\theta,\qquad p=-\int_r^\infty K(\rho,t)^2\,d\rho/\rho.
\]

The integral gives \(H>0\), \(H'<0\), and the exact ODE
\(Z^2H''+[1+2(1+h)Z]H'+h(1+h)H=0\). It follows that \(K_t=(\partial_{rr}+r^{-1}\partial_r-r^{-2})K\). The complete local momentum terms are

\[
 u_t=K_te_\theta,\quad (u\cdot\nabla)u=-K^2e_r/r,
 \quad\nabla p=K^2e_r/r,\quad-\Delta u=-K_te_\theta.
\]

They cancel exactly. Large individual terms here do not violate the local equation or incompressibility.

The response selects genuine exterior annuli

\[
 \mathcal E_\tau=\{c\sqrt\tau<r<2c\sqrt\tau,\ |z|<d\tau^D\},
\]

where fixed \(c\) is sufficiently large and \(0<d<1\). From \(\tau=q(1-\eta^2)\), \(z=q^D\eta\), \(X=r^2/(2q)\), these annuli have \(|\eta|\le d\), \(\tau\le q\le\tau/(1-d^2)\), and \(X>X_{\rm ext}\). At late times all final cutoffs equal one there and all correction fields vanish. The interior cannot change their positive norm contribution.

Eulerian differentiation is performed at fixed spatial point before setting \(r=y\sqrt\tau\). With \(j(y)=-4b y^{-2A-2}H'(4/y^2)>0\),

\[
 \int_{\mathcal E_\tau}|u_t|^2
 =\int_{\mathcal E_\tau}|\Delta u|^2
 =C\tau^{-3/2-3h},\qquad C=4\pi d\int_c^{2c}j(y)^2y\,dy>0.
\]

Integrating this positive expression shows \(R_{0,1}=\infty\) for every whole-space field agreeing with the exterior. This lower bound does not use Theorem 1.

The material acceleration is \(-K^2e_r/r+K_te_\theta\), so its squared norm adds two positive orthogonal contributions, with time powers \(-3/2-5h\) and \(-3/2-3h\). By contrast, the exterior kinetic contribution tends to zero like \(\tau^{1/2-3h}\), and its strain-squared contribution has the integrable power \(\tau^{-1/2-3h}\). Finite kinetic energy is therefore compatible with the actual concentrating region calculated here.

For every fixed \(n,m\), Theorem 6, `fractional-exterior.tex`:5–73, proves

\[
 \|\partial_t^nu(1-\tau)\|_{\dot H^{m+1/2}}^2
 \ge c_{n,m}\tau^{-2n-m-3h}.
\]

It uses the positive Gagliardo double integral with coefficient \(1/(2\pi^2)\), restricted to pairs inside the same exterior: two transverse patches scaled by \(\sqrt\tau\), one axial interval of length \(\tau^D\), and the second axial point within \(O(\sqrt\tau)\). Pair measure \(\tau^{5/2+D}\), denominator \(O(\tau^2)\), and squared derivative gap \(\tau^{-2A-2n-m}\) give exactly the displayed exponent. Bounded mixed Sobolev histories can be subtracted without removing this divergent lower bound.

In particular, \(E_{1/2}\gtrsim\tau^{-3h}\) and \(\|u\|_{\dot H^{3/2}}^2\gtrsim\tau^{-1-3h}\). The complete critical balance, with the kinetic-only bounded source work retained, forces

\[
 \int_{t_0}^{1-\tau}\mathcal P_{1/2}\,dt
 \ge c_*\tau^{-3h}-C_*.
\]

The higher positive time convolutions also diverge: restricting their lag to \([\tau,2\tau]\) gives \(I^rE_{r,1/2}(1-\tau)\gtrsim\tau^{-r-3h}\). This verifies the integrated hypothesis used by the odd-row source-primitive conclusion.

The explicit axis particle calculation, S:1509–1598, uses the supplied core profile \(U(0,\eta)=4\eta+j_0\). The root of \(D\eta+(1-\eta^2)(4\eta+j_0)=0\) determines a true trajectory whose velocity behaves like \(\tau^{-A}\) and whose successive material derivatives behave like \(\tau^{-A-n}\); the position has a finite limit because \(A<1\). Its axial and transverse stretches have determinant one. Flat Eulerian source jets along that particle remain compatible with divergent pressure/viscous-driven acceleration.

## R8. Full localization and compact smooth force extension

The original candidate, pages 117–120, and response Appendix L use the local representation \(v=\operatorname{curl}\mathcal A+B e_\theta\), with \(B\) angle-independent, and **localize before taking the curl**:

\[
 u=cv+w,\qquad w=\nabla c\times\mathcal A,\qquad p=c\pi.
\]

The response's `localization-source-jets.tex`:19–35 retains the complete error

\[
\begin{aligned}
 f-c\mathcal R_\nu(v,\pi)={}&(c_t-\nu\Delta c)v
 -2\nu\sum_i(\partial_i c)\partial_i v+\pi\nabla c\\
 &+(c^2-c)(v\cdot\nabla)v+c(v\cdot\nabla c)v\\
 &+w_t-\nu\Delta w+c(v\cdot\nabla)w
 +c(w\cdot\nabla)v+(w\cdot\nabla)w.
\end{aligned}
\]

The extra product \((w\cdot\nabla c)v\) is identically zero because \(w\perp\nabla c\). In the heat exterior, \(\mathcal A=0\), and the force includes radial centrifugal/pressure cutoff terms, axial pressure cutoff, and angular diffusion cutoff. None is discarded.

The finite factorial-weighted mixed-jet seminorm obeys the exact submultiplicative product bound, so the displayed finite residual is bounded once the local transition jets are. The transition geometry provides either a positive lower bound for \(q\), leaving only finitely many correction representatives with one-sided endpoint bounds, or a positive lower radial radius in the exact heat exterior. Temporal cutoff derivatives also have \(q\ge\tau_0/2\). Near the singular point, the cutoffs are one and the source is the supplied flat local residual.

The response explicitly identifies the imported inputs: `localization-source-jets.tex`:184–188 uses the candidate's Theorem 3.1 and finite-stage residual estimate (9.18). The linked candidate Proposition 9.9, pages 114–116, supplies these by its own summation construction. This note checked that actual handoff and the cutoff operation; it does not certify every earlier producer lemma in the 166-page candidate paper.

Every fixed source derivative is therefore uniformly bounded under these local inputs. One additional time derivative makes each jet uniformly Cauchy. Spatial fundamental-theorem identities identify compatible \(F_j\in C_c^\infty(K)\), all with the same fixed compact support. The explicit finite Sobolev bound is \((N+1)4^M|K|M_{N,M}^2\).

The deposit then performs the Borel construction at S:2641–2690:

\[
 f(x,1+\sigma)=\sum_{j\ge0}\chi_0(b_j\sigma)\sigma^jF_j(x)/j!,
 \qquad\sigma\ge0.
\]

Every derivative summand is bounded by \(C_{j,m}b_j^{m-j}\|F_j\|_{C^{|\alpha|}}\). Choosing \(b_j\) so this is at most \(2^{-j}\) for the finitely many \(|\alpha|+m\le\lfloor j/2\rfloor\) is possible because \(m-j<0\). Each fixed differentiated tail converges uniformly; the \(m\)-th right jet at zero equals \(F_m\). Thus all jets match, the space support remains \(K\), and the time support lies in \([0,2]\) with an initial interval of rest. No bound uniform in all derivative orders is needed.

This same Borel operation is relocated to the combined main-chain `force-admission.tex`:18–67. The localization fragment is identical after label/input namespace normalization. Borel continuation is **not** absent from the deposited response and is **not** a new combined mathematical construction.

## R9. Strict-subinterval identification and exclusion

S:1600–1703 assumes the supplied regular solution \(U\) for the **same** datum, force, viscosity, and domain. For the candidate \(v\), put \(z=v-U\). On every strict classical interval,

\[
 z_t+(v\cdot\nabla)z+(z\cdot\nabla)U+\nabla\pi=\nu\Delta z,
 \qquad\operatorname{div}z=0,\qquad z(0)=0.
\]

The force cancels because these are the same prescribed data. Pairing gives

\[
 \tfrac12\|z\|_2^2{}'+\nu\|\nabla z\|_2^2
 =-\int z_i z_j\partial_jU_i
 \le\|\nabla U\|_\infty\|z\|_2^2.
\]

The regular intersection gives the integrable Lipschitz coefficient. Gronwall yields \(v=U\) on every \([0,S]\), \(S<1\), without assuming terminal regularity of the candidate. The finite regular rectangle consequently bounds the candidate on the entire open terminal interval, contradicting its explicitly positive exterior \(R_{0,1}\) contribution or its unbounded velocity.

This is a correct **conditional comparison** once the regular same-data history is supplied. The separate deposit explicitly says at S:1744–1753 that its exterior excludes intersection membership, whereas excluding the candidate as a solution additionally uses Theorem 1. The combined Theorem `r:thm:openai-exclusion`, C:1366–1451, supplies that history from Part II after candidate force admission. The comparison never identifies a forced velocity with an unforced one merely by subtracting a scalar source coordinate.

## R10. The independent quantitative criteria and their actual scope

The appendices contain several further constructive results, rather than using them as silent substitutes for the main comparison input.

1. **First rectangle from the full momentum square.** `first-rectangle.tex`:7–87 keeps \(\mathcal G=\mathbb Pf-\mathbb P((u\cdot\nabla)u)\). Exactly,
   \[X(S)+\nu\|\nabla u(S)\|_2^2=\nu\|\nabla u_0\|_2^2+\int_0^S\|\mathcal G\|_2^2,\]
   where \(X=\int(\|u_t\|_2^2+\nu^2\|\Delta u\|_2^2)\). It derives \(aX^2+(b-1)X+c\ge0\). An upper bound follows by continuous forbidden-interval crossing **only if** \(b<1\) and \((1-b)^2>4ac\). The source states that without root separation this inequality supplies no upper bound.

2. **Amplitude continuation from an existing unforced history.** Appendix H, S:2103–2411, fixes the time horizon and varies force amplitude \(\lambda\). With \(M_0=\|u^{(0)}\|_{CH^3}\), \(G=\int\|\mathbb Pf\|_{H^3}\), and \(a=16T/(\pi\nu)\), both differentiated transport slots give
   \[\|\partial_\lambda u_\lambda\|_{CH^3}\le G e^{aM(\lambda)^2}.\]
   Thus \(M\le Z\) on \(0\le\lambda<\delta\), where
   \[\int_{M_0}^{Z(\lambda)}e^{-as^2}ds=G\lambda,
   \qquad\delta=G^{-1}\int_{M_0}^\infty e^{-as^2}ds.\]
   Uniform sensitivity and higher spatial persistence allow passage to a limiting amplitude below \(\delta\); a finite local covering then extends the parameter interval. The complete forced recurrence gives explicit whole-horizon rectangles at every fixed order. At rest and \(T=1\), unit amplitude is covered by \(G<\pi\sqrt\nu/8\). Repeating the guaranteed estimate leaves \(\lambda_0+\delta_{\rm rem}=\delta\), not a larger certified range. This complete restricted proof is present in the deposit; combined Part III removes it when switching to Part II's unrestricted result.

3. **Critical source criterion.** `critical-source-bound.tex`:4–118 preserves nonlinear production in
   \[yy'+(\nu-C_*y)z^2\le\beta z,
   \quad C_*=(\sqrt2\pi)^{-1},\quad\beta=\|\mathbb Pf\|_{\dot H^{-1/2}}.\]
   The primitive \(\Psi(y)=2\nu y^2-(4/3)C_*y^3\) obeys \(\Psi(y(t))\le\Psi(y_0)+\int\beta^2\) while \(y<\nu/C_*\). The explicit strict threshold prevents crossing, bounds \(\int z^2\), and the complete height-one estimate/restart gives smooth continuation. At rest its sufficient budget is \(\int\beta^2<4\pi^2\nu^3/3\).

4. **Conservative forcing.** S:2413–2491 proves that \(\mathbb Pf=0\) permits an identical unforced velocity with pressure adjusted by its source potential. For arbitrary \(f\), the exact distance of the fixed velocity's unforced momentum residual from all pressure adjustments is \(\|\mathbb Pf\|_{H^m}\). Thus pressure conversion requires the actual projected force to vanish.

Appendix J, S:2493–2626, directly finds nonzero terminal projected force at every finite temporal order in the candidate's fixed exterior cutoff region. There

\[
 (F_j)_\theta=-K_j\left(\chi_{rr}+\chi_{zz}
 -\frac{1+4h+4j}{r}\chi_r\right),\qquad
 K_j=b4^j(h)_j(1+h)_j r^{-1-2h-2j}>0.
\]

If this component vanished on the connected positive-radius rectangle, its uniformly elliptic cutoff equation would have both an interior maximum one and an interior value zero, contradicting the strong maximum principle. A compact solenoidal azimuthal test proves \(\mathbb PF_j\ne0\). Flatness at the origin therefore does not imply globally terminal force vanishing.

The same test and the actual growing exterior give the independent necessary budgets `critical-source-bound.tex`:126–241:

\[
 G_{\rm OA}\ge\sqrt{\pi\nu}/2>\pi\sqrt\nu/8,
 \qquad B_{\rm OA}>4\pi^2\nu^3/3.
\]

The first follows from the full \(H^3\) energy inequality starting from rest; the second uses the first critical-threshold crossing and then a strictly positive projected-source contribution on a disjoint final interval. Hence the candidate does not satisfy these particular sufficient criteria or the conservative reduction. The source itself distinguishes this fact from the unrestricted same-data regularity input.

## R11. Coverage and the exact remaining dependency

Direct reading covered the complete mathematical main text and all included formal-revision fragments of the deposited response. The forced product rules, signed completed-height identities, source work and source insertions, rectangle traces, critical production after rectangle selection, pressure/material identities, exterior integer and fractional lower bounds, strict-subinterval comparison, finite amplitude theorem, momentum-square and critical-source criteria, terminal projected-force test, and Borel continuation were executed with their displayed inputs. A second lane independently checked Appendix J/L against the same original candidate pages, without treating the candidate's earlier finite-stage construction as already verified.

That independent [Appendix J/L reconstruction](A0231-refutation-appendices-teaching.md), RL1–17 and RJ1–6, is separately identified in the source and report indices. Header-only source candidates and metadata used for identity are not counted as mathematical proof coverage.

The response imports the sharp Sobolev embedding/product framework, the unforced spatial commutator estimate, local classical existence, and the candidate's specified local field and residual/endpoint properties. This note checks the response's uses of those inputs and directly checks the essential cited candidate exterior/localization pages. It does not claim to verify every earlier finite-stage construction in the candidate paper or the unforced datum theorem cited as version 2. The constituent-paper lanes separately trace the actual unforced and forced proofs.

For the **deposited v4** main candidate exclusion, the outstanding producer is exactly its expressly supplied unrestricted forced-data Theorem 1. For the **combined** exclusion it is exactly Part II's theorem consumed at C:120–142. Neither the exterior contradiction, the additive source correction, the restricted criteria, nor the reconstruction from already supplied spatial-height integrals changes that proof dependency. This is a dependency statement about the proof as printed, not a general verdict on Navier–Stokes or on the proposed construction.

The [source comparison manifest](../COVERAGE.md#A0257) and accompanying normalized diffs distinguish equal mathematics, relocation, and actual later additions. Root's separate execution of combined `critical-reserve-and-chord-density.tex` covers that additional physical reserve/chord-density argument; it was absent from the deposited response and is not substituted for the response's printed main-chain existence input.
