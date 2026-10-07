# The mathematical objects and derivation order in Birnie's Navier Stokes papers

**Companion C09 — reviewed scope.** Constituent-paper teaching guide, historical ontology, finite constructors and force-compensation derivations.

This guide teaches the complete same-history mixed jet, pressure/force graph, height completion and original proof order. Whole-terminal rectangle membership is the stated native theorem output at TIR.11a/N11a. The explicitly executed nonlinear fixed point constructs all finite rows on one common local interval; the accumulated endpoint sum remains extended-valued. Later LSS, source-square and two-high tests are downstream analyses, not additional original producer premises. Historical OP/CMW/SLC and July-22 Silver definitions retain their stated historical and local classical domains; they do not supply terminal persistence or decide later TIR claims. The homogeneous force pairings in equations (38)–(41) retain their displayed domain. For M=0 and arbitrary Sobolev-admissible force, the complementary inhomogeneous lower-face payment from the native/forced teaching calculation is used; the two domains are not silently identified.

The official forced-v3 PDF, file 69288538, has 1681568 bytes and MD5 e4d6c43ad7d61a6af5da2272b51a09b5. The distinct local 81-page archive PDF has 1684210 bytes, MD5 27ab1408ef3af2515691fca8a478e915 and SHA-256 353a322248e4785a5d286f3a3fe6f2f8574eb1e5fb24491355a463027e243748. Page and theorem references are therefore witness-specific; these PDFs are not equated.

The transferred constituent guide’s original LF302–312 identifies forced Lemma 3.8 as the commutator and LF1273–1279 identifies forced Theorem 3.11 on page 14 as restart. The local archive teaching witness instead identifies Theorem 3.8 on page 14 as restart. These numbering differences are retained across the distinct byte witnesses.

Historical statements that the TIR/N11 digest was unavailable are superseded by current checked identities: [current TIR](../../SOURCES.md#S147), [archived TIR](../../SOURCES.md#S085) and [current N11 witness](../../SOURCES.md#S153). A current local identity does not by itself bind publication-time authority. Verified public source bytes and unmapped local witnesses are separately identified in the source index; source identity does not certify the proof.

The square-root Lν heat constant in the constituent guide’s N3–N4 derives from FR21. FC14 uses another admissible conservative constant. The valid bound is retained with this distinction in attribution.

Official combined files 69392430/69392433 have 229 pages, 7228583 bytes and MD5 f8bdd2752580d18d6f2fa97759f52562. The separate local 228-page witness is not that deposit. An earlier local 229-page pre-title witness matches that official metadata, so these local witnesses also remain separate. The title-corrected GitHub edition at commit 2211b67f20d91d87f81acd30859dea1e647764f8 is another stated source edition. Exact identity, reported retrieval and mathematical verification are separate claims.

The essential short original [S289 — Derive from u0, complete short original](../../SOURCES.md#S289) retains the locally checked equations (9)–(16) construction dependency. Its descriptive identity supplies no invented public download link or new whole-proof certificate.

Original whole-terminal rectangle membership, when supplied, implies later source-square and selected-current bounds. Auxiliary square, barrier, covariance, compactness and scalar-storage hypotheses here remain sufficient research criteria, rather than added upstream premises of the printed producer. All fixed-order estimates retain their actual time domains and force/pressure hypotheses.


This guide reconstructs the mathematical objects, identities, and dependency order in the three constituent papers listed below. Its purpose is to make the actual method intelligible before assessing its proof. It does not replace the velocity field by a toy system, treat a derivative as an independently prescribed variable, or present a verdict on the whole-terminal theorem.

The labels used below have precise meanings. A **definition** fixes an object or a function space. An **identity** follows by differentiation, projection, pairing, or integration of the stated equation on a classical interval. A **theorem input** is a substantive membership statement invoked by the paper. A **consequence** follows after the indicated input is available. Keeping these types distinct explains the method without silently turning an asserted input into an algebraic identity.

## Sources and notation

- **U**: Thomas Birnie, *Global Smoothness for the Three-Dimensional Incompressible Navier–Stokes Equations*, Figshare 33472627 version 4, dated PDF file 69288541, 80 pages. [Version record](https://doi.org/10.6084/m9.figshare.33472627.v4), [exact PDF](https://ndownloader.figshare.com/files/69288541).
- **F**: Thomas Birnie, *Global Smoothness for the Forced Three-Dimensional Incompressible Navier–Stokes Equations*, Figshare 33968818 version 3, dated PDF file 69288538, 81 pages. [Version record](https://doi.org/10.6084/m9.figshare.33968818.v3), [exact PDF](https://ndownloader.figshare.com/files/69288538).
- **R**: Thomas Birnie, *No Finite-Time Blowup for Forced Navier–Stokes: A response to OpenAI's Finite Time Blowup for Navier–Stokes*, Figshare 33511468 version 4, PDF file 68519515, 64 pages. [Version record](https://doi.org/10.6084/m9.figshare.33511468.v4), [exact PDF](https://ndownloader.figshare.com/files/68519515).

Page references are the PDFs' printed page numbers. These three PDFs have matching physical and printed page numbers. The height, square, and material-commutator formulas are located at U p. 33, F p. 29, and R p. 46, respectively.

To keep related symbols visibly distinct, this guide writes the **field record** as \(\mathcal R_{N,M}\), its **velocity norm sum** as \(\mathfrak R_{N,M}\), and a **completed scalar height** as \(R_k\). The papers distinguish these typographically, although plain-text extraction can collapse them. Write \(\mathbb P\) for the Leray projection and \(\mathbb Q=I-\mathbb P\) for the gradient projection; \(Q_n\) is a pressure derivative, not the projection.

## Historical ontology and its source boundary

The public repository preserves an earlier [Navier–Stokes Physical Ontology](https://github.com/Jibberfish69/navier-stokes-public/blob/29694980bd137e96d66ba2a2c341a0367fdd22b6/problems/navier-stokes/ontology.md) at commit 29694980bd137e96d66ba2a2c341a0367fdd22b6. That map points to a [frozen detailed ontology dated 14 July 2026](https://github.com/Jibberfish69/navier-stokes-public/blob/29694980bd137e96d66ba2a2c341a0367fdd22b6/problems/navier-stokes/ontology-archive/ontology-detailed-through-cycle-154-20260714.md). These are historical, commit-specific sources. Their definitions and status statements are attributed to the cited versions; no claim is made about later revisions.

The map's mathematical root is **participation**: every parcel, localization, derivative, mode, shell, norm, and other measurement is constructed from one datum-anchored history obeying one transport–pressure–viscosity–incompressibility equation. The historical term does not name an additional force or a new physical substance. It directs attention to whether a derived object and its governing relations really belong to that same field.

The historical [formal object package](https://github.com/Jibberfish69/navier-stokes-public/blob/29694980bd137e96d66ba2a2c341a0367fdd22b6/problems/navier-stokes/theorem-construction/mpp-formal-ontic-object-package.md), equation OP.0, makes three layers explicit:

\[
\mathfrak O_{\rm NS}^{\rm work}
=(\Omega,[0,T),\nu,u_0,u,p,\Phi;\ F,h,\mathcal T;\ \mathscr L_{\rm NS}).
\tag{O1}
\]

The first layer names the domain, time interval, viscosity, datum, realized velocity and pressure, and material motion. The second carries induced structures: the deformation gradient \(F\), finite particle separation \(h\), and full mixed jet \(\mathcal T\). The third carries their laws. The tuple is not treated as arbitrary independent entries. In this historical package \(F\) denotes deformation; in the September forced paper \(F_n\) denotes a force derivative.

Here the historical surface may be \(\mathbb R^3\) or \(\mathbb T^3\), with the corresponding pressure normalization. The September constituent papers U and F fix \(\mathbb R^3\). A periodic example or a change of surface cannot silently be inserted as their whole-space history.

### Material motion and finite neighboring geometry

The package's OP.7–OP.11b are

\[
\partial_t\Phi(a,t)=u(\Phi(a,t),t),\quad \Phi(a,0)=a,
\qquad F=D_a\Phi,
\]
\[
\partial_tF=(\nabla u)(\Phi,t)F,\quad F(a,0)=I,\quad\det F=1,
\tag{O2}
\]
\[
h(a,r,t)=\Phi(a+r,t)-\Phi(a,t),\qquad
\partial_th=u(\Phi(a+r,t),t)-u(\Phi(a,t),t),
\]
\[
h(a,r,t)=\int_0^1F(a+sr,t)r\,ds.
\tag{O3}
\]

The deformation gradient is the infinitesimal form of the same motion whose exact finite separation is \(h\). Neither is a second fluid. Incompressibility preserves volume, not shape. Finite particle separation, an Eulerian increment used in a finite-difference operator, and the diameter of a separately selected sampling region are different objects.

### The complete stress and derivative response

In the detailed ontology F1.1–F1.4, with \(S=(\nabla u+\nabla u^T)/2\),

\[
\sigma=-pI+2\nu S,\qquad
\partial_tu+\nabla\cdot(u\otimes u)=\nabla\cdot\sigma,
\]
\[
-\Delta p=\partial_i u_j\partial_j u_i
=|S|^2-\tfrac12|\omega|^2,\qquad\omega=\nabla\times u.
\tag{O4}
\]

Pressure and viscous stress are components of the same stress, and a material region exchanges momentum through its boundary traction. The pressure source is local, but pressure is obtained from the global elliptic problem. These identities give no universal favorable pressure sign or alignment.

Writing \(A=\nabla u\), the first-rung laws in F4.1 are

\[
D_tA+A^2+\nabla^2p=\nu\Delta A,\qquad
D_t\omega=S\omega+\nu\Delta\omega.
\tag{O5}
\]

Thus strain, vorticity, and the pressure Hessian are compatible derivatives and reconstructions of one velocity. One cannot specify a local strain eigenframe independently of the vorticity field and still assume it is the same incompressible flow. The energy identity's global cancellation of pressure is compatible with pressure changing the local strain. [Historical F2.1 and F7.3.]

The material curvature is likewise one joined quantity:

\[
\nabla(D_tu)=-\nabla^2p+\nu\Delta A,
\qquad
\partial_t^2F=\bigl[\nabla(D_tu)\bigr](\Phi,t)F.
\tag{O6}
\]

For a higher spatial derivative \(U_k=\nabla^ku\), the historical transported row is

\[
D_tU_k=K_k+B_k^{\rm com},\qquad
K_k=-\nabla^{k+1}p+\nu\Delta U_k,
\tag{O7}
\]

where each component of the commutator tensor is

\[
B_\alpha^{\rm com}
=-\sum_{0<\beta\le\alpha}\binom\alpha\beta
(\partial^\beta u\cdot\nabla)\partial^{\alpha-\beta}u.
\tag{O8}
\]

This historical \(B_k\) is a spatial commutator tensor; the September papers' \(B_n\) is the complete Eulerian temporal derivative of transport. They must not be conflated merely because the letter matches.

For a fixed Eulerian increment \(h\), subtracting neighboring differentiated equations gives

\[
\bigl(\partial_t+u(x+h,t)\cdot\nabla\bigr)\delta_hU_k
+(\delta_hu)\cdot\nabla U_k(x,t)
=\delta_hK_k+\delta_hB_k^{\rm com}.
\tag{O9}
\]

This is the finite-difference coherence relation in OP.14. It says exactly how neighboring derivatives remain linked by the original equation. A localization changes what is measured and introduces its appropriate flux or commutator terms; it does not turn the local restriction into a pressure-autonomous fluid. [Historical F2.2–F2.3 and OP.16a–OP.16f.]

### Material anisotropy is a coordinate description

The detailed ontology's F1.11–F1.13 give another precise form of the joined pressure–viscosity geometry. Put \(C=F^TF\), \(U=u\circ\Phi\), and \(P=p\circ\Phi\). Then

\[
\partial_tU+F^{-T}\nabla_aP
=\nu\operatorname{div}_a(C^{-1}\nabla_aU),
\]
\[
-\operatorname{div}_a(C^{-1}\nabla_aP)
=\bigl(|S|^2-\tfrac12|\omega|^2\bigr)\circ\Phi.
\tag{O10}
\]

The pulled-back pressure and diffusion use the same deformation metric. Choose right and left singular vectors satisfying \(Fe_i=s_i n_i\), where \(e_i\) is a direction in material label space and \(n_i\) is a direction in physical space. For this stretch \(s_i\), the viscous coefficient is \(\nu s_i^{-2}\), while the transformed derivative is \(\partial_{e_i}U=s_i(\nabla u)n_i\). Their compensation is exact:

\[
s_i^{-2}|\partial_{e_i}U|^2=|(\nabla u)n_i|^2.
\tag{O11}
\]

This is fixed isotropic viscosity written in moving coordinates, not a new increase in the physical value of \(\nu\), an independent pressure brake, or a universal response-time estimate. The historical source itself makes those distinctions.

### Compact window membership and terminal claims have different scopes

OP.16d defines \(\operatorname{Member}(Q)\) for a compact still-classical window \(Q\Subset\Omega\times[0,T)\): the local record is inherited from the same global object and obeys the same law bundle. The [exact membership-witness note](https://github.com/Jibberfish69/navier-stokes-public/blob/29694980bd137e96d66ba2a2c341a0367fdd22b6/problems/navier-stokes/theorem-construction/mpp-exact-class-membership-witness-theorem.md) then distinguishes this object-level statement from its analytic witness family, CMW.13:

\[
\operatorname{CM}_{N,r,Q}
=\operatorname{Pack}_Q\wedge\operatorname{Part}_{N,Q}
\wedge\operatorname{Field}_{N,r,Q}.
\tag{O12}
\]

In that note, Pack retains a common diffeomorphic volume-preserving motion and finite \(F,F^{-1}\); Part retains (O7) and a finite envelope of \(K_k\); Field retains (O9) and the finite difference quotient

\[
\sup_{\substack{x,x+h\in Q_t\\0<|h|\le r}}
\sum_{k=0}^N\frac{|\delta_hU_k|+|\delta_hK_k|}{|h|}.
\tag{O13}
\]

The [still-live admission theorem](https://github.com/Jibberfish69/navier-stokes-public/blob/29694980bd137e96d66ba2a2c341a0367fdd22b6/problems/navier-stokes/theorem-construction/mpp-still-live-smooth-window-implies-class-membership-theorem.md), SLC.A, verifies these witnesses on a compact classical window using a slightly larger classical collar and finite derivatives there. Its stated boundary is local admission, not persistence of the witnesses through a candidate terminal time.

A separate [22 July Silver classification note](https://github.com/Jibberfish69/navier-stokes-public/blob/29694980bd137e96d66ba2a2c341a0367fdd22b6/problems/navier-stokes/theorem-construction/mpp-silver-participation-complement-contrapositive-repair-20260722.md) uses Member as the retained smooth continuation-class predicate and describes its contrapositive as a classification of participation loss. It explicitly distinguishes classical participation on every compact preterminal interval from participation at a terminal window \(Q_*\), and explicitly does not count the classification as an independent global-regularity proof. It also places Pack outside its later CM formulation. The differing formulations are part of the source history; they should not be silently combined into one timeless definition.

The September papers' whole-terminal finite-block assertion must therefore be read at its own stated theorem and source, as done below. Neither an older frontier nor an older status label is automatically the status of that later assertion. The historical ontology supplies the meaning of one field, inherited laws, induced geometry, and compatible readouts; it does not replace the later proof's specific full-interval analytic input.

## 1 One physical field and one history

The unknown is a velocity field \(u(t,x)\in\mathbb R^3\), accompanied by a scalar pressure \(p(t,x)\), on the whole space \(x\in\mathbb R^3\). A history is their evolution over a time interval. The viscosity \(\nu>0\) is fixed. In the forced paper the entire source field \(f(t,x)\) is prescribed in advance, with

\[
f\in C^\infty([0,\infty);\mathcal S(\mathbb R^3;\mathbb R^3)).
\]

The original equation is

\[
\partial_tu+(u\cdot\nabla)u+\nabla p=\nu\Delta u+f,
\qquad \nabla\cdot u=0,
\qquad u(0)=u_0.
\tag{1}
\]

Setting \(f=0\) gives U. The data class is \(u_0\in H_\sigma^\infty:=\bigcap_{m\ge0}H_\sigma^m\). This supplies every finite spatial Sobolev norm of the initial velocity. It does not mean that the datum is analytic, and it does not mean that the norms are uniformly bounded as \(m\to\infty\). Schwartz data form a subclass.

**Definition.** Local theory and overlap uniqueness specify one maximal pressure-complete classical history \((T_*,u,p)\). For every strict horizon \(T<T_*\), every finite temporal and spatial derivative lies continuously in the indicated Sobolev space on \([0,T]\). Maximal means that the same data-generated history has no classical extension beyond \(T_*\). It does not put terminal regularity into the definition. [U Definition 3.2, pp. 25–26; F Definition 4.2, p. 19.]

The word “same” matters throughout: enlarging an index set, choosing a different Sobolev height, passing to a limit, or restarting must preserve the history generated by the original datum, viscosity, and, in F, the original absolute-time force.

## 2 Pressure is a constrained part of the field

Taking the divergence of (1) gives

\[
-\Delta p=\partial_i\partial_j(u_i u_j)-\nabla\cdot f.
\tag{2}
\]

U and F choose the normalized whole-space representative

\[
p=R_iR_j(u_i u_j)-(-\Delta)^{-1}\nabla\cdot f.
\tag{3}
\]

In U the second term is absent. The Riesz transforms are spatial Fourier multipliers. At each time, pressure is determined by that time's velocity products and the prescribed force's gradient part. It is not a new initial datum and not a free response variable that can be chosen independently of \(u\).

In the stated class, \(p(t)\in H^0=L^2\) fixes the harmonic ambiguity: the difference of two such representatives is an \(L^2\) harmonic function and is zero. At high spatial regularity the representative is continuous and tends to zero at spatial infinity. General distributional pressures paired with the same velocity retain a time-only gauge until a normalization is imposed. [U Proposition 3.1, pp. 24–25; F Proposition 4.1, p. 19; U Corollary 8.14, pp. 74–75; F Corollary 9.14, pp. 74–75.]

The two projection formulas retain this allocation explicitly:

\[
u_t=\nu\Delta u-\mathbb P[(u\cdot\nabla)u]+\mathbb Pf,
\qquad
\nabla p=\mathbb Q\{f-(u\cdot\nabla)u\}.
\tag{4}
\]

Projection simplifies the evolution equation; the separate pressure formula preserves the pressure coordinate. Thus “pressure-complete” in U and F means more than writing a projected velocity equation and forgetting how pressure was fixed. R instead retains the pressure's time-only gauge and works explicitly with its gradient in momentum and in the differentiated pressure row. Choosing (3) is compatible with that formulation, but pressure normalization is not an additional premise in R's Theorem 1. [R §1.1, p. 3, and equation (9), p. 4.]

## 3 The complete differentiated equation comes first

Define the Eulerian rows and mixed coordinates by

\[
V_n:=\partial_t^nu,\qquad Q_n:=\partial_t^np,\qquad F_n:=\partial_t^nf,
\]
\[
J_{n,\alpha}:=\partial_x^\alpha V_n,\qquad
\Pi_{n,\alpha}:=\partial_x^\alpha Q_n,\qquad
F_{n,\alpha}:=\partial_x^\alpha F_n.
\tag{5}
\]

Here \(n\) and the multi-index \(\alpha\) select actual derivatives of the same fields. Two indices are needed because temporal depth and spatial depth can be requested separately. They are not two independent solutions or two independent degrees of freedom.

The full nonlinear temporal row is

\[
B_n:=\partial_t^n[(u\cdot\nabla)u]
=\sum_{a=0}^n\binom na(V_a\cdot\nabla)V_{n-a}.
\tag{6}
\]

**Exact identities.** Differentiating the complete equation, including its pressure and force, gives

\[
V_{n+1}+B_n+\nabla Q_n=\nu\Delta V_n+F_n,
\tag{7}
\]
\[
Q_n=R_iR_j\sum_{a=0}^n\binom na V_{a,i}V_{n-a,j}
-(-\Delta)^{-1}\nabla\cdot F_n,
\tag{8}
\]
\[
J_{n+1,\alpha}
+\sum_{a=0}^n\sum_{\beta\le\alpha}
\binom na\binom\alpha\beta
(J_{a,\beta}\cdot\nabla)J_{n-a,\alpha-\beta}
+\nabla\Pi_{n,\alpha}
=\nu\Delta J_{n,\alpha}+F_{n,\alpha},
\tag{9}
\]
\[
\Pi_{n,\alpha}
=R_iR_j\sum_{a=0}^n\sum_{\beta\le\alpha}
\binom na\binom\alpha\beta
J_{a,\beta,i}J_{n-a,\alpha-\beta,j}
-\partial_x^\alpha(-\Delta)^{-1}\nabla\cdot F_n.
\tag{10}
\]

Every split of every derivative across both velocity factors is present. Also \(\nabla\cdot J_{n,\alpha}=0\). These are U Proposition 3.4, p. 26, and F Proposition 4.4, p. 20; R equations (6)–(9), pp. 3–4, use the same rows.

For an explicit commutator reading of precisely (9), extract the term \((a,\beta)=(0,0)\), which is \((u\cdot\nabla)J_{n,\alpha}\). The remaining finite sum is

\[
C_{n,\alpha}
:=[\partial_t^n\partial_x^\alpha,u\cdot\nabla]u
=\sum_{\substack{0\le a\le n,\ \beta\le\alpha\\(a,\beta)\ne(0,0)}}
\binom na\binom\alpha\beta
(J_{a,\beta}\cdot\nabla)J_{n-a,\alpha-\beta}.
\tag{11}
\]

Then the same row is

\[
(\partial_t+u\cdot\nabla)J_{n,\alpha}
-\nu\Delta J_{n,\alpha}+\nabla\Pi_{n,\alpha}
=F_{n,\alpha}-C_{n,\alpha}.
\tag{12}
\]

This is a regrouping of the published binomial identity, not a different model. In particular, terms such as \((J_{n,\alpha}\cdot\nabla)u\) remain. Calling the remaining sum a “source” does not turn it into prescribed data: its coefficients and factors are derivatives of the unknown velocity.

At integer spatial order, U Lemma 2.8 and F Lemma 3.8 expand the transport commutator before estimating it. For a spatial multi-index,

\[
\partial^\alpha[(u\cdot\nabla)u]
=(u\cdot\nabla)\partial^\alpha u
+\sum_{0<\beta\le\alpha}\binom\alpha\beta
(\partial^\beta u\cdot\nabla)\partial^{\alpha-\beta}u.
\tag{13}
\]

Only the leading divergence-free transport term has zero real energy pairing with \(\partial^\alpha u\). The remaining terms are estimated, not discarded. [U pp. 17–19; F pp. 11–13.]

### The initial jet

At \(t=0\), start with \(V_0(0)=u_0\). Equation (8) determines \(Q_0(0)\); equation (7) then determines \(V_1(0)\). Repeating this operation determines all finite initial rows, using \(F_n(0)\) in the forced case. Spatial differentiation determines the initial mixed coordinates. Differentiation and multiplication preserve \(H^\infty\), and the Riesz and Leray operators are bounded on each \(H^m\). The forced pressure potential requires its additional low-frequency estimate: \((-\Delta)^{-1}\nabla\cdot F_n\) is not a generic bounded multiplier on \(H^m\). F Lemma 3.5, p. 10, uses the prescribed source's \(L^1\) control at low frequency together with Sobolev control at high frequency. Each Schwartz row \(F_n(0)\) supplies those inputs. Thus every finite initial velocity and pressure row belongs to \(H^\infty\). [U Lemma 3.7, p. 27; F Lemmas 3.5 and 4.7, pp. 10 and 21.]

This recursive identification is about the derivatives of an existing local solution and its admissible initial jet. It is not a claim that a formal time Taylor series has been shown to converge.

## 4 Eulerian time derivatives and material derivatives

The derivative \(V_1=u_t\) holds the spatial coordinate fixed. A moving particle follows

\[
\dot X(t)=u(t,X(t)),\qquad D_t:=\partial_t+u\cdot\nabla.
\]

Its acceleration is

\[
\frac{d}{dt}u(t,X(t))=(D_tu)(t,X(t)),
\qquad
D_tu=V_1+(u\cdot\nabla)u=\nu\Delta u-\nabla p+f.
\tag{14}
\]

The papers' formal \(V_n\) tower is Eulerian. R makes the passage to parcel acceleration, jerk, and higher material derivatives explicit. For instance,

\[
D_t^2u=V_2+2(V_0\cdot\nabla)V_1+(V_1\cdot\nabla)V_0
+(V_0\cdot\nabla)[(V_0\cdot\nabla)V_0].
\tag{15}
\]

This identity is why \(V_2\) alone is not parcel jerk. [R §1.1, pp. 2–3; Appendix G.1, pp. 45–48.]

The coefficients of \(D_t\) are themselves the velocity. Consequently it does not commute with spatial differentiation. With \(U_{ij}=\partial_j u_i\),

\[
[D_t,\partial_i]w=-(\partial_i u_j)\partial_jw,
\]
\[
[D_t,\nabla]p=-U^T\nabla p,
\qquad
[D_t,\Delta]w=-(\Delta u)\cdot\nabla w
-2\sum_i(\partial_i u)\cdot\nabla\partial_iw.
\tag{16}
\]

Writing \(a=D_tu\), differentiating the actual material momentum equation gives

\[
D_ta=\nu\Delta a-\nabla(D_tp)+U^T\nabla p+D_tf
-\nu\left[(\Delta u)\cdot\nabla u
+2\sum_i(\partial_i u)\cdot\nabla\partial_iu\right].
\tag{17}
\]

Force differentiation likewise retains the response:

\[
D_tf=f_t+u\cdot\nabla f,
\]
\[
D_t^2f=f_{tt}+2u\cdot\nabla f_t+a\cdot\nabla f
+\sum_{i,j}u_i u_j\partial_{ij}f.
\tag{18}
\]

The Eulerian force derivatives are prescribed data. Their material derivatives also depend on the fluid moving through the prescribed field. [R equations (153)–(158), pp. 46–47.]

### Incompressibility is transported with its commutators

Every \(V_n\) is divergence free. Material acceleration generally is not:

\[
0=D_t(\nabla\cdot u)
=\nabla\cdot a-\operatorname{tr}(U^2),
\qquad
\nabla\cdot a=\operatorname{tr}(U^2)=-\Delta p+\nabla\cdot f.
\tag{19}
\]

This introduces no extra incompressibility condition. The flow Jacobian satisfies \(\partial_t\det\partial_bX=(\nabla\cdot u)\det\partial_bX=0\); at second order the acceleration-divergence term is canceled by the deformation term \(\operatorname{tr}(U^2)\). Thus parcel volume preservation does not require \(\nabla\cdot a=0\). [R §5.5, p. 15; Appendix G.1, pp. 46–47.]

### The all-orders conversion

For the mixed Eulerian coordinate,

\[
D_tJ_{r,\alpha}=J_{r+1,\alpha}+\sum_{\ell=1}^3u_\ell J_{r,\alpha+e_\ell}.
\tag{20}
\]

Repeated use of this rule and the product rule expresses each finite \(D_t^qu\) as a polynomial in finitely many actual mixed derivatives. Conversely, with \(M_{q,\alpha}=\partial_x^\alpha D_t^qu\),

\[
\partial_tM_{q,\alpha}
=M_{q+1,\alpha}
-\sum_{\beta\le\alpha}\binom\alpha\beta
(M_{0,\beta}\cdot\nabla)M_{q,\alpha-\beta}.
\tag{21}
\]

R Proposition 12 proves, for this same smooth velocity on a finite interval,

\[
\bigl[\partial_t^ru\in L_t^2H_x^m\text{ for all finite }r,m\bigr]
\quad\Longleftrightarrow\quad
\bigl[D_t^qu\in L_t^2H_x^m\text{ for all finite }q,m\bigr].
\tag{22}
\]

The proof uses the full families, Sobolev multiplication, and time traces. It is not a row-by-row equality \(D_t^qu=V_q\), and finite selections need additional indices to contain the products. [R pp. 47–50.]

## 5 The critical scalar height is a measurement of the field

Set \(\Lambda=(-\Delta)^{1/2}\) and \(A=(1-\Delta)^{1/2}\). The homogeneous and inhomogeneous norms have different low-frequency behavior:

\[
\|u\|_{\dot H^s}^2=\int|\xi|^{2s}|\widehat u(\xi)|^2\,d\xi,
\qquad
\|u\|_{H^s}^2=\int\langle\xi\rangle^{2s}|\widehat u(\xi)|^2\,d\xi.
\]

The Navier–Stokes scaling of the full forced equation is

\[
u_\lambda(t,x)=\lambda u(\lambda^2t,\lambda x),\quad
p_\lambda(t,x)=\lambda^2p(\lambda^2t,\lambda x),\quad
f_\lambda(t,x)=\lambda^3f(\lambda^2t,\lambda x).
\]

Therefore

\[
\|\Lambda^su_\lambda(t)\|_2^2
=\lambda^{2s-1}\|\Lambda^su(\lambda^2t)\|_2^2.
\tag{23}
\]

The invariant exponent is \(s=1/2\). The introductory narrowing-vortex picture motivates why kinetic energy can miss concentration and why this height is considered. Scaling identifies a critical measurement; it is not a change to the prescribed history subsequently being studied. [U pp. 4–6; F §2, p. 4.]

For temporal row \(r\), define the scalar energy and two scalar pairings

\[
E_{r,s}=\tfrac12\|\Lambda^sV_r\|_2^2,
\qquad
\mathcal P_{r,s}=-\operatorname{Re}\langle\Lambda^sV_r,
\Lambda^s(B_r+\nabla Q_r)\rangle,
\]
\[
\mathcal W_{r,s}=\operatorname{Re}\langle\Lambda^sV_r,\Lambda^sF_r\rangle.
\tag{24}
\]

U has \(\mathcal W=0\). Write \(E_s=E_{0,s}\), \(\mathcal P_s=\mathcal P_{0,s}\), \(\mathcal W_s=\mathcal W_{0,s}\), and

\[
H(t):=E_{1/2}(t)=\tfrac12\|\Lambda^{1/2}u(t)\|_2^2.
\tag{25}
\]

\(H\) is a scalar function of time obtained from the field. Neither its value nor all the scalar Sobolev energies are being presented as independently chosen velocities.

### Why a time derivative exposes the next spatial energy

Pair (7) with \(\Lambda^{2s}V_r\). The Laplacian contributes

\[
\nu\operatorname{Re}\langle\Lambda^sV_r,\Lambda^s\Delta V_r\rangle
=-\nu\|\Lambda^{s+1}V_r\|_2^2=-2\nu E_{r,s+1}.
\]

The exact balance is

\[
\partial_tE_{r,s}
=-2\nu E_{r,s+1}+\mathcal P_{r,s}+\mathcal W_{r,s}.
\tag{26}
\]

The Laplacian contains two spatial derivatives; the energy pairing distributes one to each factor. This is why one time differentiation of this energy exposes an energy one spatial level higher. It is different from saying that the field \(V_{r+1}\) simply equals a higher spatial derivative: the transport, pressure, and force terms in (7) remain present.

Because \(V_r\) is divergence free, its pressure-gradient pairing vanishes under the stated whole-space pairing. U and F retain it in the definition of the pressure-complete row; R writes the resulting \(\mathcal P_{r,s}\) directly with \(B_r\). This cancellation in a particular scalar pairing does not remove pressure from the field equation or from its derivatives. It must not be transferred to material rows, whose divergence differs as in (19). [U Definition 4.2 and Proposition 4.3, pp. 32–33; F Definition 5.2 and Proposition 5.3, pp. 27–28; R §2.1, pp. 4–5.]

### Differentiating the energy is different from taking the energy of a derivative

Repeatedly differentiating (26) gives

\[
\partial_t^kE_{r,s}
=(-2\nu)^kE_{r,s+k}
+\sum_{j=0}^{k-1}(-2\nu)^j\partial_t^{k-1-j}
(\mathcal P_{r,s+j}+\mathcal W_{r,s+j}).
\tag{27}
\]

In particular,

\[
H'=-2\nu E_{3/2}+\mathcal P_{1/2}+\mathcal W_{1/2},
\]
\[
H''=4\nu^2E_{5/2}-2\nu(\mathcal P_{3/2}+\mathcal W_{3/2})
+\partial_t(\mathcal P_{1/2}+\mathcal W_{1/2}).
\tag{28}
\]

Direct differentiation of a quadratic energy also gives

\[
\partial_t^2E_{r,s}
=\|\Lambda^sV_{r+1}\|_2^2
+\operatorname{Re}\langle\Lambda^sV_r,\Lambda^sV_{r+2}\rangle,
\tag{29}
\]

and

\[
H^{(k)}=\tfrac12\sum_{a=0}^k\binom ka
\operatorname{Re}\langle\Lambda^{1/2}V_a,\Lambda^{1/2}V_{k-a}\rangle.
\tag{30}
\]

Thus three objects must remain separate: \(H^{(k)}\), \(E_{k,1/2}\), and \(E_{0,k+1/2}\). The first is a derivative of a scalar energy; the second is the critical energy of a temporal derivative; the third is a higher spatial energy of the original velocity.

### Completion keeps every differentiated nonlinear term

**Definition and identity.** Put \(R_0=H\) and

\[
R_k=
\frac{H^{(k)}-
\displaystyle\sum_{j=0}^{k-1}(-2\nu)^j\partial_t^{k-1-j}
(\mathcal P_{j+1/2}+\mathcal W_{j+1/2})}{(-2\nu)^k}.
\tag{31}
\]

Then (27) gives exactly

\[
R_k=E_{k+1/2}=\tfrac12\|\Lambda^{k+1/2}u\|_2^2\ge0.
\tag{32}
\]

The positivity belongs to the completed expression, not to the raw derivative \(H^{(k)}\) or the production term. The coefficient can be divided out because \(\nu>0\). [U Definition 4.4, p. 34; F Definition 5.4, p. 29.]

No nonlinear derivatives have disappeared inside the completion. For example, R gives

\[
\partial_t^\ell\mathcal W_{r,s}
=\sum_{b=0}^\ell\binom\ell b
\operatorname{Re}\langle\Lambda^sV_{r+b},\Lambda^sF_{r+\ell-b}\rangle,
\tag{33}
\]
\[
\partial_t^\ell\mathcal P_{r,s}
=-\sum_{a=0}^r\binom ra
\sum_{b+c+d=\ell}\frac{\ell!}{b!c!d!}
\operatorname{Re}\langle\Lambda^sV_{r+b},
\Lambda^s[(V_{a+c}\cdot\nabla)V_{r-a+d}]\rangle.
\tag{34}
\]

These are field-dependent products carried in the same mixed jet. [R equations (14)–(15), p. 5.]

## 6 What a finite rectangle contains

For fixed integers \(N,M\ge0\) and a time interval \(I_T=(0,T)\), the field record is the tuple

\[
\mathcal R_{N,M}(T)
=\bigl((V_n|_{I_T})_{n=0}^N,
(V_{n+1}|_{I_T})_{n=0}^N;
(Q_n|_{I_T})_{n=0}^N;
(F_n|_{I_T})_{n=0}^N\bigr),
\tag{35}
\]

with the final group absent in U and with the coupled recurrences retained. Its selected velocity norm sum is

\[
\mathfrak R_{N,M}(T)
=\sum_{n=0}^N\left[
\|V_n\|_{L^2(I_T;H^{M+1})}^2
+\|V_{n+1}\|_{L^2(I_T;H^{M-1})}^2\right].
\tag{36}
\]

The pressure readout retains

\[
\sum_{n=0}^N\left[
\|Q_n\|_{L^1(I_T;H^M)}
+\|\nabla Q_n\|_{L^1(I_T;H^{M-1})}\right].
\tag{37}
\]

F also records the finite prescribed-force norms and the potential terms \((-\Delta)^{-1}\nabla\cdot F_n\). Its force class supplies these on every compact prescribed time interval. [U Definition 4.5, p. 34; F Definition 4.12, pp. 25–26.]

A finite rectangle therefore selects finitely many temporal rows at specified spatial norm levels. Each row is still a field on an infinite spatial domain, not a finite-dimensional numerical coordinate. Spatial derivatives are contained in its Sobolev orders; a selected mixed coordinate \(\partial_x^\alpha V_n\) is read by choosing a higher spatial order.

The two neighboring velocity entries have orders \(M+1\) and \(M-1\) because the Hilbert-scale trace pairs them at middle height \(M\): one entry is \(V_n\), the other is its actual time derivative. At \(M=0\), the lower space is \(H^{-1}\), not an omitted entry.

Larger rectangles preserve common fields. Reducing \(N\) deletes outer temporal rows; reducing \(M\) applies canonical Sobolev inclusions to the retained distributions; reducing \(T\) restricts the same functions in time. These maps compose. This is the precise compatibility used in the inverse system. [U Definition 4.10 and Proposition 4.11, p. 37; F Definition 5.12 and Proposition 5.13, pp. 34–35.]

Neither the number \(\mathfrak R_{N,M}\) nor the collection of scalar heights recovers a velocity by itself. The underlying field and its compatibility constraints have never been discarded. U §6 explicitly distinguishes the matrix of fields from the matrix of their norms, after the intersection and restart argument. [U Propositions 6.1–6.3, pp. 45–47; F §7, pp. 42–45.]

## 7 The full interval theorem input and the time cutoff

There are two different statements about the same history.

On every strict classical horizon, each selected finite norm is finite. Its bound may depend on that horizon. The global argument uses the stronger whole-terminal statement, for a proposed finite maximal time,

\[
V_n\in L^2(0,T_*;H^{m+1}),\qquad
V_{n+1}\in L^2(0,T_*;H^{m-1})
\quad\text{for every finite }n,m.
\tag{38}
\]

**Theorem input in the constituent papers.** U calls this the “Established datum-generated compatible finite blocks” theorem, Theorem 3.9, p. 29. Its finite-coordinate realization cites its reference [3], §5, equations (TIR.11a-pre)–(TIR.11a). F calls the forced statement Theorem 4.10, pp. 24–25, citing its reference [3], §6, equations (N11a)–(N11d). F first states the distinct strict-horizon intersection in Theorem 4.9, p. 23. These are the source locations used by these versions. The upstream-source module below distinguishes the attributed theorem statement from the contraction, persistence, and compensation operations described in its source family, with an explicit publication-provenance boundary for the additional derivations. The full-interval membership is not silently inferred from smoothness on strict subintervals.

The forced theorem describes the finite equation graph with a finite buffer large enough for selected Leibniz allocations, adjacent temporal rows, and viscous derivatives. Every such equation still contains both velocity factors. Its force estimate includes

\[
2|\langle F_{n,\alpha},J_{n,\alpha}\rangle_{\dot H^M}|
\le\nu\|J_{n,\alpha}\|_{\dot H^{M+1}}^2
+\nu^{-1}\|F_{n,\alpha}\|_{\dot H^{M-1}}^2,
\tag{39}
\]

along with the pressure-source budget and a retained low-frequency velocity part. F expressly identifies (39) as the force contribution to the coupled block, not as a replacement for the block theorem. [F pp. 24–25.]

Once (38) is supplied, restricting its nonnegative integrals gives

\[
\forall N,M\quad\exists C_{N,M}<\infty\quad
\forall T<T_*:\quad \mathfrak R_{N,M}(T)\le C_{N,M}.
\tag{40}
\]

The constant can depend on the selected orders and the fixed history, but it is fixed before the cutoff \(T\) is chosen. There is no supremum over all derivative orders. U Theorem 4.6 also says explicitly that its exact history-dependent supremum is not replaced, for general data, by a formula using finitely many initial norms. [U p. 34; F Theorem 4.13, p. 26.]

Monotone convergence then identifies the exact norm on \((0,T_*)\):

\[
\lim_{T\uparrow T_*}\mathfrak R_{N,M}(T)
=\mathfrak R_{N,M}(T_*)
=\sup_{T<T_*}\mathfrak R_{N,M}(T)<\infty.
\tag{41}
\]

Conversely a cutoff-uniform bound (40) gives (38) by the same nonnegative exhaustion. This equivalence is U Proposition 4.7, p. 35, and F Proposition 5.8, p. 31. Time exhaustion reads the full-interval bound; strict-horizon compatibility alone is not its asserted source.

## Upstream sources and the actual construction operations

**Source basis and public availability.** The public constituent-paper sources are the exact PDF versions listed above. This module also uses previously inspected TIR, N11, finite-construction, and strong-force derivations. The provenance of these additional sources is the prior inspection reported in the underlying reconstruction: the mathematical source identifiers, dates, sections, equation labels, line ranges, and complete digests supplied by that inspection are retained below. This companion does not claim a new inspection of those source copies. A publicly accessible counterpart has not been verified for each additional derivation; that availability limit does not negate the reported source inspection. Mathematical identities are displayed in full, while estimates and whole-terminal membership assertions retain their stated source-dependent status. The earlier and later TIR presentations remain distinct.

### What the TIR records state

The reported earlier TIR derivation, §5, lines 275–315, states MR as an established datum theorem and then records compatibility. The reported later TIR presentation, §5, lines 275–524, explicitly supplies MR and follows it by the norm, monotone-exhaustion, trace, height, and pressure consequences. The inspected copies dated 17 and 18 September are reported to be byte-identical. This identifies those inspected copies, without asserting that every historical or later version is identical. [TIR]

In this chain, MR supplies whole-terminal adjacent-row membership for every finite pair of orders on the single maximal history. In the notation of this guide, it is the statement (38), or equivalently its compatible finite sums (40)–(41). The operations following MR convert that membership into the rectangle readouts, the two order exhaustions, compatible traces, and pressure completion described in the rest of this guide.

Three mathematical roles therefore remain distinct even when they occur in one source section:

1. The fixed datum generates the actual local history and its derivative identities.
2. MR is stated as the datum-to-whole-terminal membership theorem for that same history.
3. Norm restriction, monotone exhaustion, trace, and recurrence operations read consequences from those memberships.

This identifies the reported source's dependency order. It is not a verdict on the theorem asserted there.

### What N11 transfers to the forced problem

The previously inspected N11 derivation, §6, lines 150–232, applies the unforced **construction method** to the complete forced equation graph. Its input is the prescribed forced datum, and each row retains the two nonlinear velocity factors, the pressure constraint, viscosity, and its corresponding prescribed force derivative. It does not apply an unforced-solution theorem to a velocity that still solves a forced equation.

The distinction can be written using the graph already displayed in (9):

\[
\begin{aligned}
\mathcal E_{n,\alpha}(J,\Pi;F)
:={}&J_{n+1,\alpha}
+\sum_{a=0}^n\sum_{\beta\le\alpha}
\binom na\binom\alpha\beta
(J_{a,\beta}\cdot\nabla)J_{n-a,\alpha-\beta}\\
&+\nabla\Pi_{n,\alpha}-\nu\Delta J_{n,\alpha}-F_{n,\alpha}=0.
\end{aligned}
\tag{N1}
\]

The prescribed force is an affine input to this graph; its velocity variables remain nonlinearly coupled. Applying a method to (N1) preserves a forced participant. Replacing that participant by an unforced velocity would instead change the equation. The force-source and pressure-potential estimates in §7 above concern the same affine input and do not delete the graph's transport sum.

### The explicit local fixed point

The previously inspected finite forced construction dated 14 September 2026, F49–F57, physical lines 602–799 [FC14], and its expanded derivation dated 21 September 2026, E5–E19, physical lines 65–248 [FR21], describe the following fixed-point construction. The primary operation is the actual forced Navier–Stokes mild map

\[
\Phi_f(v)(t)
=e^{\nu t\Delta}u_0
+\int_0^t e^{\nu(t-s)\Delta}
\mathbb P\bigl[f(s)-\nabla\cdot(v\otimes v)(s)\bigr]\,ds.
\tag{N2}
\]

This is a map on fields, not on scalar energy heights or independently chosen derivative rows. Both factors in the nonlinearity are the trial field \(v\). Its fixed point is the original forced velocity on the selected interval, and its pressure is reconstructed by the normalized formula.

The reported function space is

\[
X_\delta=C([0,\delta];H_\sigma^3)
\cap L^2(0,\delta;H_\sigma^4),
\qquad \partial_tv\in L^2(0,\delta;H^2).
\tag{N3}
\]

The source's \(X_\delta\) norm is the sum of the three displayed norms: the continuous \(H^3\) norm, the \(L^2H^4\) norm, and the \(L^2H^2\) norm of the actual time derivative. Its linear constant is

\[
L_\nu=\sqrt{2+\nu^{-1}}
+\sqrt{2+2\nu^{-1}+2\nu^{-2}}+\sqrt{\nu+1}.
\]

With its quadratic product constant \(C_q\), put

\[
B_f=1+\|u_0\|_{H^3}
+\sup_{0\le t\le1}\|\mathbb Pf(t)\|_{H^2},
\qquad R_f=2L_\nu B_f,
\]
\[
\delta=\min\left\{1,(8C_qL_\nu^2B_f)^{-2}\right\}>0.
\tag{N4}
\]

In its stated \(X_\delta\) ball, the reported estimates map the radius-\(R_f\) ball into the radius-\(3R_f/4\) ball and give Lipschitz constant at most \(1/2\). These are the two distinct requirements for the contraction construction: the map retains its domain and shrinks differences between trial velocities. They construct one fixed point on this common positive interval. The derivative condition in (N3) remains tied to the complete equation at that fixed point. The radius is written \(R_f\) here to distinguish it from the finite temporal depth \(R\) used in the compensation calculation below.

The chosen radius and interval depend on the base \(H^3\) datum and the indicated prescribed force bound. They are not reselected separately for every higher derivative order.

### Higher regularity is carried on that same local interval

The reported E5–E19 construction next retains higher spatial derivatives by the full nonlinear commutator estimate. Its coefficient is the strain or velocity-gradient bound of the already constructed base solution. For each requested finite spatial order, the corresponding energy estimate uses that base coefficient, the finite higher datum norms, and the finite prescribed force derivatives. Applying the finite-order estimate on the already selected interval preserves that interval; it does not produce a different velocity or a different time interval for each order.

This is the same analytic role as the explicit transport-commutator calculation (13): the leading divergence-free transport pairing cancels, while every remaining product is retained and estimated. After spatial persistence, the equation supplies temporal derivatives through (7), and the pressure formula supplies (8). Repetition gives the finite mixed jet on the same \([0,\delta]\), with its actual initial derivatives and normalized pressure. The required low-frequency force-potential control remains the one explained in §3.

This construction supplies local existence, uniqueness, and common-interval persistence of every fixed finite derivative order. The reported TIR whole-terminal theorem has the additional interval scope \((0,T_*)\); identifying the common local fixed point and identifying that full-interval membership are different statements in the source architecture.

### What concatenation records

Compatible local intervals can be joined because uniqueness identifies their overlapping fields and derivative coordinates. The reported equation E29 writes the concatenated norm as a sum of nonnegative interval contributions whose value belongs to \([0,\infty]\). This is the extended-real range: the bookkeeping identity itself permits a finite sum or an infinite sum.

Thus the three quantifiers must stay visible:

- For a fixed local interval furnished by (N4), each fixed finite derivative selection has its finite local norm.
- On a strict horizon \(T<T_*\), the classical history retains every selected finite norm, with constants allowed to depend on \(T\).
- The supplied MR whole-terminal statement requires, for each fixed finite \((N,M)\), a finite constant valid for all \(T<T_*\), as in (40).

Concatenation identifies which nonnegative sum measures that last interval. MR is the supplied finiteness statement with the stronger time scope. Recording their different roles neither replaces the construction with a toy calculation nor changes the original nonlinear equation.

### The force compensation is an operation on the actual energy rows

The previously inspected strong-force compensation derivation dated 14 September 2026, equations (2), (6), (8), (11), (13), and (C1)–(C9), physical lines 214–390 [SC14], supplies the following calculation. It starts with the projected prescribed force rows

\[
G_r=\mathbb PF_r=\partial_t^r\mathbb Pf.
\tag{N5}
\]

Fix a finite temporal depth \(R\), a spatial energy height \(s\ge0\), a finite horizon \(T\), and a positive **weight parameter** \(\tau\). This \(\tau\) is not physical time or a time remaining to a singularity. Set \(w_r=\tau^{2r}\) and retain the actual velocity energies and complete nonlinear production:

\[
\mathcal E_{R,s}
=\sum_{r=0}^R w_r E_{r,s}
=\frac12\sum_{r=0}^R\tau^{2r}\|\Lambda^sV_r\|_2^2,
\qquad
\mathcal P^{\rm blk}_{R,s}
=\sum_{r=0}^R w_r\mathcal P_{r,s}.
\tag{N6}
\]

Here \(\mathcal P_{r,s}\) is exactly the full pressure-complete nonlinear pairing from (24). Temporal weighting does not remove its binomial interactions or turn it into a prescribed force.

All velocity identities in this compensation calculation are evaluated at classical times \(t<T\). The prescribed force is smooth through the closed horizon \([0,T]\). The source bounds and scalar budgets below require no terminal velocity trace at \(T\).

The operator

\[
M=\partial_t+2\nu\Lambda^2
\tag{N7}
\]

is applied to prescribed force test fields. Its iterates are completely explicit:

\[
M^jG_r
=\sum_{\ell=0}^j\binom j\ell(2\nu)^\ell
\Lambda^{2\ell}G_{r+j-\ell}.
\tag{N8}
\]

Every term is thus a spatial and temporal derivative of the original projected force. For \(r\ge1\), the source defines the finite correction

\[
\widetilde C_{r,s}
=\sum_{j=0}^{r-1}(-1)^j
\operatorname{Re}\langle V_{r-1-j},\Lambda^{2s}M^jG_r\rangle,
\qquad \widetilde C_{0,s}=0.
\tag{N9}
\]

The important operation is telescoping, not deletion of force. Differentiating (N9) and adding its next-height term gives

\[
\partial_t\widetilde C_{r,s}+2\nu\widetilde C_{r,s+1}
=\operatorname{Re}\langle V_r,\Lambda^{2s}G_r\rangle
+(-1)^{r-1}\operatorname{Re}\langle u,\Lambda^{2s}M^rG_r\rangle.
\tag{N10}
\]

Indeed, differentiating a velocity factor advances its temporal index, whereas differentiating the force factor and adding \(2\nu\Lambda^2\) advances \(M^jG_r\) to \(M^{j+1}G_r\). Consecutive terms in the alternating sum cancel. What remains is the original force work and one pairing against the base velocity \(u\).

Subtracting this identity from the exact energy balance gives the reported row

\[
\begin{aligned}
\partial_t(E_{r,s}-\widetilde C_{r,s})
+2\nu(E_{r,s+1}-\widetilde C_{r,s+1})
=\mathcal P_{r,s}
+(-1)^r\operatorname{Re}\langle u,\Lambda^{2s}M^rG_r\rangle.
\end{aligned}
\tag{N11}
\]

For \(r=0\) the same row follows directly with \(\widetilde C_{0,s}=0\). The exact nonlinear production has been retained; the force-work correction has placed its remaining source contribution against a velocity factor controlled by kinetic energy.

### Completing squares makes a positive comparable quantity

Sum the corrections with the same finite weights:

\[
\mathcal C_{R,s}=\sum_{r=1}^R\tau^{2r}\widetilde C_{r,s}.
\]

Set

\[
X_k=\tau^k\Lambda^sV_k,
\qquad
\widetilde H_{k,s}
=\sum_{r=k+1}^R(-1)^{r-1-k}\tau^{2r-k}
\Lambda^sM^{r-1-k}G_r\quad(0\le k<R).
\tag{N12}
\]

Regrouping the finite sum gives
\(\mathcal C_{R,s}=\sum_{k<R}\operatorname{Re}\langle X_k,\widetilde H_{k,s}\rangle\).
Only \(X_k\) contains a velocity derivative; \(\widetilde H_{k,s}\) is prescribed source data. Define its finite bound

\[
\Psi^*_{R,s}
=\sup_{0\le t\le T}\sum_{k=0}^{R-1}\|\widetilde H_{k,s}(t)\|_2^2.
\tag{N13}
\]

The actual square completion is

\[
\begin{aligned}
\mathcal E_{R,s}-\mathcal C_{R,s}+\Psi^*_{R,s}
={}&\tfrac12\|X_R\|_2^2
+\tfrac14\sum_{k<R}\|X_k\|_2^2
+\tfrac14\sum_{k<R}\|X_k-2\widetilde H_{k,s}\|_2^2\\
&+\Psi^*_{R,s}-\sum_{k<R}\|\widetilde H_{k,s}\|_2^2.
\end{aligned}
\tag{N14}
\]

The final difference is nonnegative by the definition of \(\Psi^*\). The elementary upper estimate on the same cross pairings gives

\[
\tfrac12\mathcal E_{R,s}
\le\mathcal E_{R,s}-\mathcal C_{R,s}+\Psi^*_{R,s}
\le\tfrac32\mathcal E_{R,s}+2\Psi^*_{R,s}.
\tag{N15}
\]

This is a positive quantity comparable to the finite energy sum up to a prescribed finite additive amount. It remains a scalar measurement and correction of the same velocity history. No alternate velocity solving an unforced equation has been introduced.

### Finite source bounds and backward scalar budgets

The kinetic estimate supplies

\[
K_T=\|u_0\|_2+\|G_0\|_{L^1(0,T;L^2)},
\qquad \sup_{t<T}\|u(t)\|_2\le K_T.
\tag{N16}
\]

After summing (N11), the remaining source pairing and its bound are

\[
\widetilde L_{R,s}(t)
=\sum_{r=0}^R(-1)^r\tau^{2r}
\operatorname{Re}\langle u(t),\Lambda^{2s}M^rG_r(t)\rangle,
\]
\[
\widetilde\beta_{R,s}
=K_T\sum_{r=0}^R\tau^{2r}
\sup_{0\le t\le T}\|\Lambda^{2s}M^rG_r(t)\|_2,
\qquad
|\widetilde L_{R,s}(t)|\le\widetilde\beta_{R,s}.
\tag{N17}
\]

The force is smooth with the specified spatial regularity, and all the selected orders are finite. Thus \(\Psi^*_{R,s}\) and \(\widetilde\beta_{R,s}\) are finite without a force-amplitude smallness assumption. Their constants can depend on the force, datum, horizon, weight, and selected orders. They are not a common bound over infinitely many derivatives.

Fix a further finite spatial depth \(K\) and put \(h_j=s+j\) for \(0\le j\le K\). The source constructs scalar functions backward from the final selected height:

\[
a_K(t)=\Psi^*_{R,h_K},
\]
\[
a_j(t)=\Psi^*_{R,h_j}
+\int_t^T\bigl(\widetilde\beta_{R,h_j}
+2\nu a_{j+1}(\sigma)\bigr)\,d\sigma
\quad(0\le j<K).
\tag{N18}
\]

This is a finite backward recursion for known scalar budgets, not backward solution of the fluid equation. Every \(a_j\) is finite, nonnegative, and at least \(\Psi^*_{R,h_j}\). Define

\[
Y_j=\mathcal E_{R,h_j}-\mathcal C_{R,h_j}+a_j,
\qquad
d_j=\widetilde\beta_{R,h_j}-\widetilde L_{R,h_j}.
\tag{N19}
\]

Then

\[
0\le d_j\le2\widetilde\beta_{R,h_j},
\qquad
\tfrac12\mathcal E_{R,h_j}
\le Y_j
\le\tfrac32\mathcal E_{R,h_j}+\Psi^*_{R,h_j}+a_j.
\tag{N20}
\]

The compensated interior rows, for \(j<K\), have the exact form

\[
Y_j'+2\nu Y_{j+1}=\mathcal P^{\rm blk}_{R,h_j}-d_j.
\tag{N21}
\]

The recurrence (N18) gives \(a_j'=-\widetilde\beta_{R,h_j}-2\nu a_{j+1}\), which is precisely how (N21) follows from the summed row (N11). The nonlinear production on its right is still the complete signed production of the original field.

Integrating (N21) produces

\[
Y_j(t)+2\nu\int_0^tY_{j+1}(\sigma)\,d\sigma
=Y_j(0)+\int_0^t\mathcal P^{\rm blk}_{R,h_j}(\sigma)\,d\sigma
-\int_0^td_j(\sigma)\,d\sigma.
\tag{N22}
\]

Repeated differentiation gives, for \(1\le k\le K\),

\[
\partial_t^kY_0
=(-2\nu)^kY_k
+\sum_{j=0}^{k-1}(-2\nu)^j\partial_t^{k-1-j}
\bigl(\mathcal P^{\rm blk}_{R,s+j}-d_j\bigr).
\tag{N23}
\]

All derivatives on the right remain part of that identity. In particular, boundedness of \(d_j\) alone is not being identified with bounds for all its time derivatives.

There is a finite index enlargement when (N23) is differentiated. Although \(\mathcal E_{R,s}\) selects temporal rows through \(R\), the direct derivative \(\partial_t^kY_0\) can use actual velocity rows through \(R+k\). The differentiated nonlinear production can use velocity rows through \(R+k-1\); the prescribed force expressions can use temporal force derivatives through \(2R+k-1\), with the finite spatial orders also enlarged as displayed in (N8) and the height indices. These bounds follow by the product rule and \(M^jG_r\)'s maximum temporal index \(r+j\). They specify a sufficiently large finite portion of the original mixed jet, not new independently chosen rows. The count also covers \(R=0\): \(\mathcal C=\Psi^*=0\), the direct derivative uses velocity rows through \(k\), the production uses rows through \(k-1\), and the force expressions use derivatives through \(k-1\). Throughout, \(1\le k\le K\).

The comparability (N20) identifies the compensated and original finite energy memberships on a fixed finite horizon: for any fixed \(j\) and \(1\le p\le\infty\), one belongs to \(L^p(0,T)\) exactly when the other does, because the additive source budgets are bounded there. The source expressly describes this as equivalence of memberships without asserting either membership from the identity alone. The operation therefore explains how arbitrary finite prescribed forcing is retained in a positive height construction while the same-field nonlinear production stays visible. The whole-terminal MR/N11 theorem role, the local fixed-point operation, and this compensation equivalence must each retain their own scope.

### Source keys for the additional derivations

These source keys preserve the mathematical provenance supplied by the prior inspection. Descriptive labels explain each source's role; exact source filenames and complete reported digests identify the corresponding records. Public download counterparts have not been verified here.

- **TIR**: Whole-terminal membership derivation, §5. Earlier presentation: lines 275–315; later presentation: lines 275–524. U Theorem 3.9 cites its reference [3] at (TIR.11a-pre)–(TIR.11a). The earlier and later presentations described above should not be conflated. No complete digest was supplied for either presentation.
- **N11**: Forced equation-graph derivation, §6, lines 150–232. F Theorem 4.10 cites its reference [3] at (N11a)–(N11d). No complete digest was supplied.
- **FC14**: Finite forced construction dated 14 September 2026, source filename `forced-ns-sequential-conversion-20260914.md`, F49–F57, physical lines 602–799. This source supplies the mild map, its function space, and the stated radius and lifespan. Reported digest: `a36a74ac23dce9a0385b2ae006be3a42b7356b58c0a198a9497e138d04ba791f`.
- **FR21**: Expanded forced-datum rectangle construction dated 21 September 2026, source filename `forced-datum-rectangle-construction-execution-20260921.md`, E5–E19, physical lines 65–248; E29 supplies the concatenation identity. This source supplies same-interval higher-regularity persistence and the extended-real concatenation identity. Reported digest: `24b663b7a496053e23189c102059682bf24c5afb893a86f06f1c10759beec950`.
- **SC14**: Strong-force compensation derivation dated 14 September 2026, source filename `forced-native-assembly-20260914.md`, equations (2), (6), (8), (11), (13), and (C1)–(C9), physical lines 214–390. This source supplies telescoping force corrections, square completion, and finite backward scalar budgets. Reported digest: `15d1102d14887595cc3be128a7045f08eb977dae9399be40fa52317a6f5817b5`.

No complete TIR or N11 digest is inferred from an abbreviated identifier. The public constituent papers' citations identify the role of their TIR and N11 inputs; the additional version and equation identifiers preserve the prior inspection's attribution without implying that a matching public edition has been located. Source authentication, public availability, and verification of a mathematical assertion are separate questions.

## 8 The two derivative order exhaustions

The papers use two cofinal ways of reading the compatible family. These are distinct from taking \(T\uparrow T_*\).

### First reading through mixed temporal and spatial indices

Fix finite \(r,m\). Choose a block containing \(V_0,\ldots,V_r\) in \(L^2(I;H^m)\), where \(I=(0,T_*)\). The coordinates are the actual weak derivatives, so

\[
\|u\|_{H^r(I;H^m)}^2
=\sum_{n=0}^r\|\partial_t^nu\|_{L^2(I;H^m)}^2<\infty.
\tag{42}
\]

Allowing every finite \((r,m)\) gives

\[
u\in\bigcap_{r,m\ge0}H^r(I;H_\sigma^m).
\tag{43}
\]

“Taking all orders” here is universal quantification over finite requests. It is not summing infinitely many norms or taking a uniformly bounded maximum over them. Pressure rows follow from the finite products in (8) and their norm estimates. [U Corollary 3.10, pp. 29–30; F Corollary 4.11, p. 25.]

### Second reading through the completed critical heights

A sufficiently high finite block contains the quantities in each exact height identity. In particular,

\[
2\|R_k\|_{L^1(I)}
=\|\Lambda^{k+1/2}u\|_{L^2(I;L^2)}^2
\le\|u\|_{L^2(I;H^{k+1})}^2
\le\mathfrak R^*_{0,k}.
\tag{44}
\]

Thus every completed spatial height is integrable. Low frequencies are retained by the kinetic \(L^2\) coordinate. The Fourier split

\[
\langle\xi\rangle^{2m}\le2^m(1+|\xi|^{2m+1})
\]

gives

\[
\|u\|_{L^2(I;H^m)}^2
\le2^m\left[T_*K^2+2\|R_m\|_{L^1(I)}\right]<\infty,
\tag{45}
\]

where \(K=\|u_0\|_2\) in U and
\(K=\|u_0\|_2+\int_0^{T_*}\|\mathbb Pf(t)\|_2dt\) in F. Hence this reading gives the complete spatial column

\[
u\in\mathcal S_0(I):=\bigcap_{m\ge0}L^2(I;H_\sigma^m).
\tag{46}
\]

These statements are U Corollary 4.8, pp. 35–36, and F Corollary 5.9, p. 32. They use the same finite-block membership input as the mixed reading. Their different identity calculations do not introduce a second fluid or a separately prescribed nonlinear current.

### How the spatial column returns to the mixed intersection

Fix \(m\). From the all-spatial column, the product estimate and the original equation give

\[
\|\mathbb P[(u\cdot\nabla)u]\|_{L^1(I;H^m)}
\le C_m\|u\|_{L^2(I;H^{m+2})}^2,
\]
\[
\|\Delta u\|_{L^1(I;H^m)}
\le\sqrt{T_*}\|u\|_{L^2(I;H^{m+2})}.
\tag{47}
\]

Adding the finite \(\|\mathbb Pf\|_{L^1(I;H^m)}\) term in F shows \(u_t\in L^1(I;H^m)\). Therefore

\[
u\in W^{1,1}(I;H^m)\hookrightarrow C([0,T_*];H^m)
\quad\text{for every finite }m.
\tag{48}
\]

Now assume \(V_0,\ldots,V_n\) are continuous through the endpoint in every finite spatial Sobolev space. The products in (8), and then the Laplacian, products, pressure gradient, and prescribed \(F_n\) in (7), are continuous in any requested \(H^m\) after selecting enough spatial order. They give continuous \(Q_n\) and \(V_{n+1}\). On the interior they are the actual derivatives; the integrated identity extends to the endpoint and preserves that identification. Induction gives all temporal and pressure rows. Finite \(T_*\) then gives their \(L^2\) memberships and returns to (43). [U Proposition 3.11, pp. 30–31; F Proposition 5.10, pp. 32–33.]

The phrase “reconstruct the temporal rows from the heights” thus means: recover the spatial memberships of the already specified velocity, use the complete original equation to obtain traces and derivatives, and recover the same pressure-normalized mixed jet. It does not mean that scalar norm values alone determine the velocity field.

### The several intersections have different object types

- \(L^2_x\cap\bigcap_k\dot H_x^{k+1/2}=\bigcap_mH_x^m\) describes a spatial field at a time.
- \(\bigcap_rH_t^r(I)\) applied to \(H(t)\) describes a scalar temporal function.
- \(\bigcap_rH_t^r(I;H_x^m)\) describes the velocity as a Sobolev-valued time curve at a fixed spatial order.
- \(\bigcap_{r,m}H_t^r(I;H_x^m)\), together with the pressure recurrences, describes the full mixed field history.

Each has its own Sobolev embedding. Smoothness of a scalar \(H\) is not by itself smoothness of \(u\); the completed height identities, the same-field constraint, and the indicated memberships supply the links. U pp. 11–12 and 32–33 distinguish these scalar and field-valued readings.

## 9 The positive viscous square retains the nonlinear response

F also displays the relation between adjacent temporal, spatial, and pressure entries by squaring the complete projected row. For fixed \(n,s\),

\[
\Lambda^sV_{n+1}+\nu\Lambda^{s+2}V_n
=\Lambda^s\mathbb P(F_n-B_n).
\tag{49}
\]

The viscous term has a positive sign on the left because \(-\Delta=\Lambda^2\). The cross term is an exact time derivative:

\[
2\nu\operatorname{Re}\langle\Lambda^sV_{n+1},\Lambda^{s+2}V_n\rangle
=\nu\partial_t\|\Lambda^{s+1}V_n\|_2^2.
\]

The pressure allocation is \(\nabla Q_n=\mathbb Q(F_n-B_n)\). Orthogonality of the projections gives

\[
\|V_{n+1}\|_{\dot H^s}^2
+\nu^2\|\Delta V_n\|_{\dot H^s}^2
+\|\nabla Q_n\|_{\dot H^s}^2
+\nu\partial_t\|\nabla V_n\|_{\dot H^s}^2
=\|F_n-B_n\|_{\dot H^s}^2.
\tag{50}
\]

Integration retains a positive terminal term and positive integrals of all three displayed faces:

\[
\begin{aligned}
&\nu\|\Lambda^{s+1}V_n(S)\|_2^2
+\int_0^S\left(\|\Lambda^sV_{n+1}\|_2^2
+\nu^2\|\Lambda^{s+2}V_n\|_2^2
+\|\Lambda^s\nabla Q_n\|_2^2\right)dt\\
&\hspace{1cm}=\nu\|\Lambda^{s+1}V_n(0)\|_2^2
+\int_0^S\|\Lambda^s(F_n-B_n)\|_2^2dt.
\end{aligned}
\tag{51}
\]

This is F Proposition 5.5, p. 29. Setting the prescribed force to zero does not remove \(B_n\). F Proposition 5.6, p. 30, estimates \(B_n\) on the same selected block by placing one actual velocity factor in \(L^\infty_tH_x^{s+2}\) and the other in \(L^2_tH_x^{s+2}\). F Proposition 5.7, pp. 30–31, fixes \(N\ge0\), \(M\ge2\), and \(0<T\le T_*\), and writes the same-rectangle estimate with the dependence

\[
\sum_{n=0}^N\|B_n\|_{L^2H^{M-1}}^2
\le C_{N,M}(I_{N,M}+R^v)R^v,
\tag{52}
\]

where \(I_{N,M}=\sum_n\|V_n(0)\|_{H^M}^2\) and \(R^v=\mathfrak R_{N,M}(T)\) is the sum of squared adjacent velocity norms defined in (36). Lower spatial orders follow by Sobolev nesting from a rectangle with \(M\ge2\). The result is stated after the finite-block theorem input. The square and energy balances describe the relationships inside a block; the later estimate uses the block's supplied memberships and traces.

## 10 Force is inserted into every layer of the same history

The forced construction changes all of the following together:

1. The velocity equation receives \(\mathbb Pf\).
2. The normalized pressure receives \(-(-\Delta)^{-1}\nabla\cdot f\).
3. Each Eulerian differentiated row receives the prescribed \(F_n\) or \(F_{n,\alpha}\).
4. The initial jet uses \(F_n(0)\).
5. Energy rows receive \(\mathcal W_{r,s}\), and differentiated heights receive all the work derivatives in (33).
6. The endpoint jet uses \(F_n(T_*)\).
7. The restart uses the same absolute-time field \(f(t)\).

This is a coupled forced equation throughout. The source does not enter only after an unforced solution has been completed. [F §§2, 4–6, especially pp. 4–6, 20–25, 27–33, and 39–41.]

R further separates what can be bounded from the datum and source before assuming the velocity intersection. With \(h_s=\Lambda^{2s}\mathbb Pf\), moving derivatives onto the prescribed field gives \(\mathcal W_s=\langle u,h_s\rangle\). Kinetic energy bounds \(u\) in \(L^\infty_tL^2_x\), and differentiation gives

\[
\mathcal W_s'
=\langle u,(\partial_t+\nu\Delta)h_s\rangle
+\int u_i u_j(\operatorname{Sym}\nabla h_s)_{ij}\,dx
+\langle f,h_s\rangle.
\tag{53}
\]

Thus \(\mathcal W_s\) and \(\mathcal W_s'\) have finite datum-and-source bounds at each fixed height, without a source-amplitude smallness condition. [R Appendix A, pp. 26–27.]

This gives bounded direct corrections at the first two completed heights. If the *unforced formula* is evaluated on the *forced velocity*, R writes

\[
\widehat C_1[u]=E_{3/2}-\frac{\mathcal W_{1/2}}{2\nu},
\qquad
\widehat C_2[u]=E_{5/2}
+\frac{\mathcal W_{1/2}'-2\nu\mathcal W_{3/2}}{4\nu^2}.
\tag{54}
\]

The argument \(u\) has not been replaced by an unforced solution. At general height, R Proposition 7 bounds the specified \((k-2)\)-fold time primitive of the signed source correction, with initial polynomial terms retained. That is a bound on that primitive, not an assertion that every separate high source-work derivative has a bounded absolute integral. [R §2.2, pp. 5–6; Appendix A, pp. 26–32.]

Similarly, a Stokes lift \(z_t-\nu\Delta z=\mathbb Pf\), \(z(0)=0\), gives \(v=u-z\) satisfying

\[
v_t-\nu\Delta v+B(v,v)+B(z,v)+B(v,z)+B(z,z)=0,
\quad B(a,b)=\mathbb P[(a\cdot\nabla)b].
\tag{55}
\]

The self-interaction and both cross-interactions remain. R explicitly says that the lift and scalar corrections do not identify the forced solution with an unforced solution. [R Appendix B, pp. 32–36.]

## 11 How the full interval yields the endpoint

Two complementary routes are displayed in the papers.

The all-spatial route is (47)–(48): \(u\in\mathcal S_0(I)\) and the actual equation give an absolutely continuous \(H^m\)-valued curve for every finite \(m\). This already gives a common terminal velocity.

The adjacent-row route works for every velocity derivative. The Hilbert-scale trace lemma states

\[
v\in L^2(0,T_*;H^{m+1}),\qquad
v_t\in L^2(0,T_*;H^{m-1})
\ \Longrightarrow\ v\in C([0,T_*];H^m),
\tag{56}
\]

with

\[
\frac d{dt}\|v(t)\|_{H^m}^2
=2\operatorname{Re}\langle A^{m-1}v_t,A^{m+1}v\rangle
\]
\[
\sup_{[0,T_*]}\|v\|_{H^m}^2
\le T_*^{-1}\|v\|_{L^2H^m}^2
+2\|v\|_{L^2H^{m+1}}\|v_t\|_{L^2H^{m-1}}.
\tag{57}
\]

The proof uses Fourier truncations to obtain a Cauchy sequence in the continuous-time space; the inequality is not merely a formal endpoint substitution. Applying it with \(v=V_n\), \(v_t=V_{n+1}\), and the full-interval rectangle gives finite bounds independent of a late time cut. [U Lemma 2.7, p. 17, and Theorem 5.5, pp. 40–41; F Lemma 3.7, p. 11, and Theorem 6.5, pp. 38–39.]

At different spatial heights, the representatives equal the same preterminal distribution. Their terminal values therefore agree under Sobolev inclusions. This yields one state and one derivative jet,

\[
u_*=V_0^*\in H_\sigma^\infty,
\qquad V_n^*=\lim_{t\uparrow T_*}V_n(t),
\qquad J_{n,\alpha}^*=\partial_x^\alpha V_n^*.
\tag{58}
\]

Choosing the next temporal row also gives

\[
V_n(t)-V_n(s)=\int_s^tV_{n+1}(\tau)\,d\tau,
\]
\[
\|V_n(t)-V_n^*\|_{H^m}
\le(T_*-t)\sup_{[0,T_*]}\|V_{n+1}\|_{H^m}.
\tag{59}
\]

This identifies the endpoint values as the actual one-sided temporal derivatives. It yields every finite time derivative continuously in every finite spatial Sobolev space. Sobolev embedding, choosing spatial order greater than \(|\alpha|+3/2\), converts these statements into joint spacetime smoothness through the endpoint. No interchange of an infinite sum of norms is required.

## 12 Pressure completion at the endpoint and restart

Continuity of products, spatial differentiation, and the pressure operators permits passing each finite row to the limit. In F,

\[
Q_n^*=R_iR_j\sum_{a=0}^n\binom na V_{a,i}^*V_{n-a,j}^*
-(-\Delta)^{-1}\nabla\cdot F_n(T_*),
\]
\[
V_{n+1}^*=\nu\Delta V_n^*
-\sum_{a=0}^n\binom na(V_a^*\cdot\nabla)V_{n-a}^*
-\nabla Q_n^*+F_n(T_*).
\tag{60}
\]

The same formulas with the force removed apply in U. They show that \(u_*\), and in F the prescribed endpoint force jet, fix the complete pressure-normalized endpoint jet. Pressure is not selected afresh when crossing the endpoint. [U Theorem 5.6, pp. 41–42; F Theorem 6.6, pp. 39–40.]

Local existence begins from \(u_*\) at \(T_*\). F uses the original absolute-time source \(f(t)\), equivalently the shifted source \(f(T_*+\tau)\) if a relative time \(\tau\) is introduced. It does not restart the source at its original time zero. The outgoing solution's initial derivatives satisfy (60), so induction matches every one-sided jet. The joined solution is smooth, solves the same equation at the joining time, and extends the incoming history. [F Theorem 6.7, pp. 40–41.]

The positive restart time is explicit in F Theorem 3.11, p. 14. With \(\Gamma_s=\|\mathbb Pf\|_{L^2(s,s+1;H^2)}\), its local interval may have any length

\[
0<\delta\le\min\{1,\ c_\nu(1+\|a\|_{H^3}+\Gamma_s)^{-2}\}.
\]

At \(s=T_*\), both \(a=u_*\) and the prescribed future force segment have finite norms. No bound uniform over all future times is required for this one positive extension.

U additionally spells out a late-slice overlap construction. A uniform preterminal \(H^3\) bound supplies a common positive local lifespan. Starting sufficiently close to \(T_*\) produces a local solution spanning the cut. Uniqueness identifies it with the incoming history on the left and the endpoint restart on the right. [U Lemma 5.7 and Theorem 5.8, pp. 42–43.]

**Final consequence in the papers' proof architecture.** Once the whole-terminal finite-block input and the subsequent consequences above are in place, a proposed finite maximal time admits a classical extension. This contradicts its definition. U states the resulting global theorem as Theorem 5.10, p. 44; F as Theorem 6.8, pp. 41–42. This is the endpoint use of the intersection, not a separate terminal regularity assumption.

## 13 Where the response paper fits

R has a different declared logical role from U and F. Its abstract and §1.2 say that a full-interval forced-data existence theorem is assumed and is not proved there. Theorem 1, p. 3, is its regularity premise. Later calculations derive consequences and incompatibilities under that premise. This is the logical role expressly stated in R.

Under the premise, finite rectangles give bounded continuous traces and bounds for the individual momentum terms. R does not infer bounded summands from a bounded signed sum. It estimates \(u_t\), the full \((u\cdot\nabla)u\), \(\nabla p\), and \(\nu\Delta u\) individually using selected finite derivatives and the projection formulas. [R Theorem 3, pp. 12–13, and Corollary 4, pp. 16–17.]

Its comparison then has two separate steps:

1. **Candidate-coordinate calculation.** The specified exterior yields positive divergent contributions to selected Sobolev norms. For example, R Proposition 5 calculates \(\mathfrak R_{0,1}=\infty\); Theorem 6 gives half-integer mixed-row lower bounds. These calculations identify nonmembership in the complete full-interval intersection. [R pp. 18–22.]
2. **Same-data identification.** Under Theorem 1, a regular solution \(U\) exists for the identical datum, force, viscosity, and domain. Strict-horizon uniqueness identifies a classical candidate \(v\) with \(U\) before terminal regularity of \(v\) is assumed. The full-interval bounds of \(U\) then apply to \(v\), producing the conditional exclusion. [R §7, pp. 24–25.]

The exterior calculation itself keeps exact cancellation in the momentum equation. This example in R fixes viscosity \(\nu=1\). There,

\[
u=K(r,t)e_\theta,\quad
u_t=K_te_\theta,\quad
(u\cdot\nabla)u=-K^2r^{-1}e_r,\quad
\nabla p=K^2r^{-1}e_r,\quad
-\Delta u=-K_te_\theta.
\tag{61}
\]

The signed residual is zero while individual magnitudes grow. The material acceleration includes both radial and angular components. The shrinking annulus used to lower-bound the integrals is a sampling region, not a material parcel. R explicitly verifies the local material incompressibility identities and explains that this open exterior is not itself a whole-space unforced history. [R pp. 19–20.]

These distinctions prevent three changes to the comparison: dropping pressure or diffusion because the exterior force is zero, treating an Eulerian shrinking region as a transported parcel, or applying a whole-space unforced theorem to an exterior restriction with a moving inner boundary.

## 14 Discovery order and formal dependency order

The introductory story in U proceeds from a stretching and thinning vortex, to rescaling, to the critical exponent, to the proposed accumulation of increasingly short scales, to temporal responses, to the intersection idea. The formal argument then defines the history and exact derivative structure, invokes compatible whole-terminal blocks, reads the two exhaustions, obtains traces, completes the endpoint jet, and restarts.

The distinction is also explicitly documented in the public [exposition note of 3 September 2026](https://github.com/Jibberfish69/navier-stokes-public/blob/2211b67f20d91d87f81acd30859dea1e647764f8/papers/navier-stokes/review/how-proof-works-thomas-authoring-custody-20260903.md). That note is evidence of the author's intended exposition, not a substitute for any analytical premise. The public [columnwise-intersection note](https://github.com/Jibberfish69/navier-stokes-public/blob/2211b67f20d91d87f81acd30859dea1e647764f8/workspaces/VSC-workspaces/navier-stokes/reports/Stripped-Columnwise-Intersection-Proof-Note-2026-08-10.md) separately writes the four object-specific intersections and the terminal trace/restart chain.

In the constituent PDFs the formal dependency order can be read compactly as follows:

1. The datum, viscosity, and prescribed force specify one maximal pressure-normalized local history.
2. Differentiation gives the complete coupled velocity–pressure–force mixed jet and its initial face.
3. The invoked whole-terminal finite-block theorem supplies the selected full-interval memberships of that same jet, compatibly under enlargement.
4. Mixed-index exhaustion yields all mixed Sobolev memberships. Completed-height exhaustion yields the all-spatial column, and the equation returns it to the same mixed memberships.
5. The inverse-system representation records those compatible fields; finite norm sums are their readouts.
6. Adjacent traces and the all-spatial equation argument give one endpoint and its actual derivatives.
7. Pressure recurrence and force values complete the endpoint jet.
8. Local theory, same-force restart, and uniqueness continue the same history past a proposed finite maximal time.
9. Later quantitative estimates, matrices, material-flow consequences, and weak-class comparisons use finite pieces of the completed structure.

The identities can be derived on strict intervals before their full-interval memberships are known. The endpoint use of those identities occurs after those memberships are supplied. Keeping both times in the explanation avoids confusing the discovery narrative, the algebraic derivation, and the proof dependency.

## 15 Distinctions for a faithful reading

The following reading checklist keeps the types of mathematical objects, interval scopes, and logical dependencies explicit.

- State at first use whether a symbol denotes a field, a scalar energy, a norm of a field, a tuple of fields, or a space of compatible tuples.
- Keep \(\mathcal R_{N,M}\), \(\mathfrak R_{N,M}\), and \(R_k\) visually distinct, and distinguish \(Q_n\), \(\mathbb Q\), and \(\mathcal P_{r,s}\).
- Define \(V_n=\partial_t^nu\) as Eulerian before using physical acceleration or jerk language; give the exact material conversion separately.
- Put the complete binomial transport sum and pressure recurrence before compressed graph or matrix notation. A finite equation graph retains nonlinear dependence on the same field.
- Keep the force in pressure, initial derivatives, differentiated rows, scalar work, endpoint derivatives, and restart. Specify absolute time at restart.
- Display \(\partial_t^kE_{r,s}\), \(E_{r+k,s}\), and \(E_{r,s+k}\) as different quantities; do not abbreviate them into a single “higher energy.”
- Say what has been subtracted in a completed height. Do not attribute the completed coordinate's nonnegativity to an uncompleted derivative.
- Separate smoothness of the scalar \(H(t)\) from membership and smoothness of the vector field \(u(t,x)\).
- Separate finite index selection from finiteness of its norms, and strict-horizon finiteness from cutoff-uniform whole-terminal finiteness.
- State the quantifier order once: a fixed finite pair has a finite constant independent of the cutoff; no common bound over all pairs is asserted.
- Label the two order exhaustions and the time-interval exhaustion separately.
- Preserve the low-frequency \(L^2\) input when translating homogeneous heights to inhomogeneous Sobolev spaces.
- Explain that heights recover memberships of the already specified velocity. Scalar norm measurements are not an injective coordinate system for arbitrary fields.
- Keep the positive-sign cross term and the full \(F_n-B_n\) in the squared equation. Its nonlinear term is endogenous.
- State the status and exact source location of the whole-terminal block theorem at the point it is used. In R, retain the paper's explicit assumption of Theorem 1.
- Give the trace theorem's full-interval hypotheses before using a terminal value, and show compatibility of representatives across Sobolev orders.
- Distinguish spatial divergence of acceleration from an infinite acceleration magnitude, and retain the material commutators in every incompressibility statement.
- Distinguish a sampling region from a material parcel and a local exterior solution from a whole-space solution.
- Keep introductory discovery order separate from formal logical dependency. Moving later quantitative readouts earlier can make the proof appear to claim a different producer of the intersection.

## Conclusion of the reconstruction

The common mathematical object is one pressure-normalized Navier–Stokes history. Its mixed jet consists of actual derivatives; its rectangles retain finite selections of those fields and their equations; its completed critical heights are scalar measurements obtained by exact, fully nonlinear energy identities. The two exhaustions read one compatible family into the same all-orders Sobolev membership. Full-interval adjacent rows then supply compatible endpoint traces, the equation fixes their pressure and temporal jet, and local uniqueness supports a restart of the same history. The substantive whole-terminal theorem is identified at its actual source location, separately from these definitions and consequences. These distinctions are essential to a faithful reading of the mathematical structure.
