# Complete signed strain evolution for the intrinsic response

**Reviewed scope and currentness.** The mathematical statements retain their recorded hypotheses and the reconciliations listed in the supersession register. Original finite-rectangle membership, when supplied, implies downstream source and selected-current bounds. Optional sufficient criteria in this report are not added as upstream premises of the printed producer. The mathematical body retains its stated strict-time, terminal, pressure and force hypotheses. Publication adds no unconditional global theorem claim.


6 October 2026. This is an independent exact-identity check for the actual forced Navier–Stokes history. It derives the requested response and signed strain evolution before applying norms. It does not assert a whole-terminal bound from those identities. All earlier artifacts and original sources remain immutable.

## 1. Source custody and coverage

| Source | SHA-256 | Read coverage |
|---|---|---|
| [forced-native-assembly-20260914.md](../SOURCES.md#S152) | `15d1102d14887595cc3be128a7045f08eb977dae9399be40fa52317a6f5817b5` | Lines 16–100, 740–786 |
| [01-setting-mixed-jet.tex](../SOURCES.md#S117) | `9ce0e212e73c2d258abcf9866517e9ccb8328a7dda8b247075e5cefa2aec97f9` | Lines 1–240 |
| [02-compatible-rectangles.tex](../SOURCES.md#S118) | `04bdd4a568a0f6c3f8c1c36109d750999e338024314ba3b7a1b877bf18ffbe46` | Lines 1–180 |

The unified setting fixes a classical history only on every strict \([0,T]\), \(T<T_*\), with all finite velocity and pressure derivatives continuous in all finite Sobolev spaces. Its field and pressure equations are at lines 75–85 and the full temporal/mixed recurrences at lines 119–149. The compatible-rectangles kinetic proof at lines 13–60 retains external work. These provide the exact field/pressure/regularity inputs used below; no completed-height coordinate is assumed bounded merely because it is an exact coordinate.

All calculations below hold on strict classical intervals, with the usual Sobolev integration by parts on \(\mathbb R^3\). Integrals without domains are over \(\mathbb R^3\). Inner products are real \(L^2\) pairings.

## 2. Intrinsic response and its complete two pressure representations

Write

\[
A=-\Delta,\quad n=(u\cdot\nabla)u,\quad
g=\mathbb Pf,\quad q=-\mathbb Pn,
\]
\[
h=u_t-g=-\nu Au+q,
\quad e=\|u\|_2^2,\quad Y=\|\nabla u\|_2^2,
\quad b=e+\delta,\quad\delta>0,
\]
\[
\lambda=\frac{\nu Y}{b},\qquad w=h+\lambda u.
\tag{S1}
\]

Let

\[
L_uz=\mathbb P[(u\cdot\nabla)z+(z\cdot\nabla)u],
\quad j_g=-\nu Ag-L_ug.
\]

The complete Eulerian first row is \((u_t)_t+\nu A u_t+L_u u_t=g_t\). Subtracting the derivative of the prescribed lift \(g\), then adding \(\lambda u\), gives exactly

\[
\boxed{w_t+\nu Aw+L_uw=r,
\qquad r=j_g+\lambda_tu+\lambda g-\lambda q.}
\tag{S2}
\]

The cancellation of \(g_t\) comes from the definition \(h=u_t-g\); no force term is discarded. Before projection, a representation retaining the physical first-response pressure is

\[
w_t+\nu Aw+(u\cdot\nabla)w+(w\cdot\nabla)u
+\nabla(p_t+\lambda p)=R_{\rm full},
\tag{S3}
\]
\[
R_{\rm full}=f_t-g_t-\nu Ag
-[(u\cdot\nabla)g+(g\cdot\nabla)u]
+\lambda_tu+\lambda f+\lambda n.
\]

If the right side is instead the solenoidal \(r\) in (S2), the correct unprojected response pressure is

\[
\rho=R_iR_j(u_iw_j+w_iu_j),
\qquad
w_t+\nu Aw+(u\cdot\nabla)w+(w\cdot\nabla)u+\nabla\rho=r.
\tag{S4}
\]

These response pressures differ. To track every gradient, define

\[
\chi=-(-\Delta)^{-1}\nabla\cdot f,
\quad\nabla\chi=f-g,
\quad p_n=p-\chi=R_iR_j(u_iu_j),
\]
\[
\rho_g=R_iR_j(u_ig_j+g_iu_j).
\]

Since \(w=u_t-g+\lambda u\),

\[
\rho=p_{n,t}+2\lambda p_n-\rho_g,
\tag{S5}
\]
\[
(p_t+\lambda p)-\rho
=\chi_t+\lambda\chi-\lambda p_n+\rho_g=:\theta,
\qquad R_{\rm full}-r=\nabla\theta.
\tag{S6}
\]

Thus the combined pressure/source work is invariant under this change of representation. In a weighted strain pairing one cannot use \(r\) together with \(p_t+\lambda p\), or use \(R_{\rm full}\) with \(\rho\), without the adjustment (S6).

## 3. Complete material strain equation and diffusion commutators

Define

\[
M_{ij}=\partial_ju_i,\quad T=\tfrac12(M+M^T),
\quad\Omega=\tfrac12(M-M^T),\quad D_t=\partial_t+u\cdot\nabla.
\]

Differentiating the physical original momentum equation gives

\[
D_tM=-M^2-\operatorname{Hess}p+\nu\Delta M+\nabla f,
\]
\[
\boxed{D_tT=-T^2-\Omega^2-\operatorname{Hess}p
+\nu\Delta T+\operatorname{Sym}\nabla f.}
\tag{S7}
\]

Here \(\operatorname{Sym}(M^2)=T^2+\Omega^2\); the strain–rotation cross terms are skew and do not belong in this symmetric part. This does not remove their later occurrence when the response itself is differentiated.

Use (S4) to retain a solenoidal right side:

\[
D_tw=\nu\Delta w-Mw-\nabla\rho+r.
\]

Let the signed production be

\[
\mathcal S=\int w^TTw=\langle(w\cdot\nabla)u,w\rangle.
\]

Incompressibility permits material differentiation of the spatial integral. Direct substitution gives

\[
\begin{aligned}
\mathcal S'={}&2\nu\int w^TT\Delta w+\nu\int w^T(\Delta T)w\\
&-\int w^T(3T^2+\Omega^2+T\Omega-\Omega T)w\\
&-\int w^T(\operatorname{Hess}p)w
+\int w^T(\operatorname{Sym}\nabla f)w\\
&-2\langle Tw,\nabla\rho\rangle+2\langle Tw,r\rangle.
\end{aligned}
\tag{S8}
\]

The complete diffusion contribution has both equivalent expressions

\[
\begin{aligned}
2\nu\int w^TT\Delta w+\nu\int w^T(\Delta T)w
={}&-2\nu\sum_k\int(\partial_kw)^TT(\partial_kw)\\
&-4\nu\sum_k\int w^T(\partial_kT)(\partial_kw)\\
={}&-2\nu\sum_k\int(\partial_kw)^TT(\partial_kw)
+2\nu\int w^T(\Delta T)w.
\end{aligned}
\tag{S9}
\]

Neither the matrix-weighted derivative term nor the commutator term is a positive scalar dissipation: \(T\) is a signed trace-free strain tensor.

The intrinsic reaction also admits the exact deformation identity

\[
-|Mw|^2-2w^TM^2w
=|M^Tw|^2-4|Tw|^2
=-3|Tw|^2+|\Omega w|^2-2(Tw)\cdot(\Omega w).
\tag{S10}
\]

In particular the positive \(|M^Tw|^2\), or equivalently the rotation contribution, must remain.

Combining these yields the complete signed law

\[
\begin{aligned}
\mathcal S'+2\nu\sum_k\int(\partial_kw)^TT(\partial_kw)
={}&2\nu\int w^T(\Delta T)w
+\|M^Tw\|_2^2-4\|Tw\|_2^2\\
&-\int w^T(\operatorname{Hess}p)w
+\int w^T(\operatorname{Sym}\nabla f)w\\
&-2\langle Tw,\nabla\rho\rangle+2\langle Tw,r\rangle.
\end{aligned}
\tag{S11}
\]

The response pressure can equally be written \(2\int\rho\nabla\cdot(Tw)\). It does not vanish because \(Tw\) need not be solenoidal.

## 4. Exact deeper pressure completion

Set \(W=\nabla w\), with the same index orientation as \(M\). The actual pressure in (S4) satisfies

\[
-\Delta\rho=2\operatorname{tr}(MW),
\qquad\nabla\cdot(Mw)=\operatorname{tr}(MW).
\]

Consequently

\[
\langle\nabla\rho,Mw\rangle
=-\tfrac12\|\nabla\rho\|_2^2,
\]
\[
-2\langle\nabla\rho,Tw\rangle
=\tfrac12\|\nabla\rho\|_2^2-\langle\nabla\rho,M^Tw\rangle.
\]

Adding this to (S10) completes the square exactly:

\[
\boxed{\|M^Tw\|_2^2-4\|Tw\|_2^2
-2\langle\nabla\rho,Tw\rangle
=-4\|Tw\|_2^2
+\|M^Tw-\tfrac12\nabla\rho\|_2^2
+\tfrac14\|\nabla\rho\|_2^2.}
\tag{S12}
\]

Both positive squares remain. This completion retains the actual response pressure rather than replacing it with a schematic zero port.

The gradient part of the original force cancels precisely in the physical strain equation:

\[
-\operatorname{Hess}p+\operatorname{Sym}\nabla f
=-\operatorname{Hess}p_n+\operatorname{Sym}\nabla g.
\tag{S13}
\]

Only \(-\operatorname{Hess}\chi+\operatorname{Sym}\nabla(\nabla\chi)\) has canceled; the nonlinear physical Hessian remains. From the actual definition of \(w\),

\[
\nabla p_n=\nu\Delta u-n+\lambda u-w.
\]

For the **unprojected** \(B_{ww}=(w\cdot\nabla)w\), integration by parts gives

\[
\boxed{-\int w^T(\operatorname{Hess}p_n)w
=\nu\langle\Delta u,B_{ww}\rangle
-\langle n,B_{ww}\rangle-\lambda\mathcal S.}
\tag{S14}
\]

Here \(\langle u,B_{ww}\rangle=-\mathcal S\) and \(\langle w,B_{ww}\rangle=0\). Replacing \(B_{ww}\) by \(\mathbb PB_{ww}\) inside this pressure identity would lose the very gradient contribution being evaluated.

The response source can simultaneously be written

\[
r=j_g+(\lambda_t+\lambda^2)u-\lambda w
+\nu\lambda\Delta u+\lambda g.
\]

Using \(2\langle Tw,u\rangle=-\langle w,q\rangle\), equations (S11)–(S14) give the deeper exact signed law

\[
\begin{aligned}
\mathcal S'+3\lambda\mathcal S
+2\nu\sum_k\int(\partial_kw)^TT(\partial_kw)
={}&2\nu\int w^T(\Delta T)w-4\|Tw\|_2^2\\
&+\|M^Tw-\tfrac12\nabla\rho\|_2^2
+\tfrac14\|\nabla\rho\|_2^2\\
&+\nu\langle\Delta u,B_{ww}\rangle-\langle n,B_{ww}\rangle
+\int w^T(\operatorname{Sym}\nabla g)w\\
&+2\langle Tw,j_g\rangle
-(\lambda_t+\lambda^2)\langle w,q\rangle\\
&+2\nu\lambda\langle Tw,\Delta u\rangle
+2\lambda\langle Tw,g\rangle.
\end{aligned}
\tag{S15}
\]

The coefficient \(3\lambda\) comes from the \(-\lambda\mathcal S\) physical-pressure substitution and \(-2\lambda\mathcal S\) response source. No adverse diffusion, rotation, pressure square, nonlinear source or force term has been discarded in exposing it.

## 5. Actual scalar and mixed-order cancellations

The actual construction has

\[
\langle q,u\rangle=0,\quad
\langle h,u\rangle=-b\lambda,\quad
\langle w,u\rangle=-\delta\lambda.
\tag{S16}
\]

Expanding the signed production with \(w=h+\lambda u\) gives two distinct mixed terms:

\[
\langle(h\cdot\nabla)u,u\rangle=0,
\qquad\langle(u\cdot\nabla)u,h\rangle=-\langle q,h\rangle.
\]

Thus

\[
\boxed{\mathcal S(u,w,w)=\mathcal S(u,h,h)-\lambda\langle h,q\rangle.}
\tag{S17}
\]

They are not interchangeable by a mixed-order symmetry. This same integration by parts reduces the scalar derivative port in (S11):

\[
2\lambda_t\langle Tw,u\rangle=-\lambda_t\langle w,q\rangle.
\]

Absorbing that derivative into \(\mathcal S+\lambda\langle w,q\rangle\) returns \(\mathcal S(u,h,h)\) exactly; its diffusion and pressure ports have not thereby acquired a sign. Another exact nonlinear relation is

\[
q_t=-L_u(u_t)=-L_u(w+g)-2\lambda q,
\]
\[
\mathcal S=-\langle w,q_t\rangle-\langle w,L_ug\rangle
-2\lambda\langle w,q\rangle.
\tag{S18}
\]

This rewrites, rather than pays, the derivative of the nonlinear source.

Let \(F=\langle u,g\rangle\). The kinetic relation and actual scalar definition imply

\[
b_t=-2b\lambda+2F,
\qquad\frac b2\lambda_t
=\langle w,q\rangle-\|w\|_2^2
+\langle q-w,g\rangle-\delta\lambda^2.
\tag{S19}
\]

Define the basic stock and the referenced completed stock

\[
R_w=\tfrac12(\|w\|_2^2+\delta\lambda^2),
\]
\[
\Phi=\tfrac12\|h\|_2^2-\frac{\nu^2Y^2}{4b}
=\tfrac12\|w\|_2^2+\frac{e+3\delta}{4}\lambda^2,
\qquad\Phi-R_w=\frac b4\lambda^2.
\tag{S20}
\]

Pairing (S2) with \(w\) cancels the \(\lambda_t\) contribution against the \(\delta\lambda^2\) derivative, giving

\[
R_w'+\nu\|\nabla w\|_2^2
=-\mathcal S+\langle w,j_g\rangle
+\lambda\langle w,g\rangle-\lambda\langle w,q\rangle.
\]

Adding the derivative of \(b\lambda^2/4\) using (S19) verifies the exact completed law

\[
\boxed{\Phi'+\nu\|\nabla w\|_2^2+\lambda\|w\|_2^2
+\frac{e+3\delta}{2}\lambda^3
=-\mathcal S+\langle w,j_g\rangle
+\lambda\langle q,g\rangle+\frac{\lambda^2}{2}F.}
\tag{S21}
\]

This checks the root's stock identity and all force signs independently. It does not assert a bound for \(\Phi\) by assuming a sign or paid norm for \(\mathcal S\).

## 6. Initial and terminal scope

At the datum,

\[
q_0=-\mathbb P[(u_0\cdot\nabla)u_0],\quad
h_0=\nu\Delta u_0+q_0,
\quad\lambda_0=\frac{\nu\|\nabla u_0\|_2^2}{\|u_0\|_2^2+\delta},
\quad w_0=h_0+\lambda_0u_0.
\]

These are finite datum-generated rows, independent of the initial force lift that was subtracted in defining \(h\). The physical pressure still contains its prescribed force potential. The initial \(\mathcal S\), \(R_w\) and \(\Phi\) are finite; no universal sign for \(\mathcal S(0)\) was derived.

Every displayed evolution integrates exactly from one strict classical time to another. Letting a strict upper time approach a proposed finite terminal time requires retaining the actual terminal \(\mathcal S\) and stock terms, or proving the traces/action needed for that limit. No endpoint stock is silently set to zero, finite or nonnegative because of its appearance in an exact identity.

The independently verified deeper cancellations are (S12), (S13), (S14), (S17) and (S19)–(S21). They expose genuine structure, including the \(3\lambda\mathcal S\) term, while retaining the signed matrix diffusion, its spatial commutator, positive pressure/deformation squares, remaining nonlinear physical-pressure contraction and complete source work. No complete sign closure or uniform whole-terminal action bound has been derived from these identities in this bounded check.
