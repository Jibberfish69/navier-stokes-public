# Analytic and source-coordinate checks

**Reviewed scope and currentness.** The mathematical statements retain their recorded hypotheses and the reconciliations listed in the supersession register. No global producer certificate; primary sharp-embedding reference and external blowup candidate are not exhaustively checked. Original finite-rectangle membership, when supplied, implies downstream source and selected-current bounds. Optional sufficient criteria in this report are not added as upstream premises of the printed producer. The mathematical body retains its stated strict-time, terminal, pressure and force hypotheses. Publication adds no unconditional global theorem claim.


This is an independent verification note. It does not certify the datum-to-whole-terminal membership theorem. The governing combined source is the indexed mathematical source witness. Locations are physical LF lines.

## Unforced analytic and initial-jet chain

The definitions in `parts/unforced/00-analytic-framework.tex:10–66` use the unitary Fourier transform, inhomogeneous `H^s` weight `(1+|xi|^2)^s`, and componentwise vector/tensor norms. `H^infinity_sigma` means membership in every finite integer Sobolev order, with zero divergence. It does not assert an analytic radius or a bound uniform over derivative orders.

The multiplication estimates at lines 181–253 are valid. At order zero, Hausdorff–Young and Holder give `H^1 -> L^4`, hence `H^1*H^1 -> L^2`. At positive integer order, the exact norm expansion is

\[
\|h\|_{H^m}^2=\sum_{|\alpha|\le m}
\frac{m!}{(m-|\alpha|)!\alpha!}\|\partial^\alpha h\|_2^2.
\]

In each Leibniz product the factor with fewer derivatives embeds into `L^infinity` from the available `H^{m+1}` norm. The sum of the squared weights and Leibniz factors is exactly `13^m`. For `m>=2`, the source's convolution proof also gives `H^m*H^m -> H^m`. Riesz and Leray symbols at lines 255–307 have operator norm at most one. The tensor-to-scalar contraction `F_ij -> R_iR_j F_ij` has norm one because the Frobenius norm of `xi_i xi_j/|xi|^2` is one. These facts justify the canonical pressure constant in `01-setting-mixed-jet.tex:172–207`.

Pressure normalization (`01-setting-mixed-jet.tex:4–50`) is valid: incompressibility gives

\[
-\Delta p=\partial_i\partial_j(u_i u_j),\qquad
p=R_iR_j(u_i u_j),\qquad
(u\cdot\nabla)u+\nabla p=\mathbb P\operatorname{div}(u\otimes u).
\]

The `L^2` normalization eliminates every harmonic pressure difference: its Fourier transform is `L^2` and supported at the singleton zero, hence vanishes. This is a statement at the displayed `u(t) in H^1`, `p(t) in L^2` inputs, not an independent time-integrability estimate.

The mixed recurrences (`01-setting-mixed-jet.tex:111–157`) follow by differentiating the complete equation and using the full time and spatial binomial sums. Every derivative commutes with the Fourier multipliers. At the initial face (`209–258`), each next temporal row uses only previously determined rows:

\[
A_0=u_0,\quad
P_n=R_iR_j\sum_{a=0}^n\binom na(A_a)_i(A_{n-a})_j,
\quad
A_{n+1}=\nu\Delta A_n-\sum_{a=0}^n\binom na(A_a\cdot\nabla)A_{n-a}-\nabla P_n.
\]

Induction places every fixed initial velocity and pressure derivative in every finite spatial Sobolev order. This proves the initial jet; it does not itself integrate that jet through a proposed terminal time.

The finite pressure theorem (`260–376`) is valid from its explicit velocity inputs `V_a in L^2(I;H^{M+1})`. Bilinear multiplication plus time Cauchy–Schwarz gives

\[
\|Q_n\|_{L^1H^M}+\|\nabla Q_n\|_{L^1H^{M-1}}
\le C_M^{p}\sum_{a=0}^n\binom na
\|V_a\|_{L^2H^{M+1}}\|V_{n-a}\|_{L^2H^{M+1}}.
\]

The weight-preserving involution `a -> n-a` and `2xy<=x^2+y^2` give the stated `2^n` compression. Its mixed analogue uses `(a,beta) -> (n-a,alpha-beta)` and total weight `2^{n+|alpha|}`. The conclusion applies on the same interval as those velocity memberships.

## Refutation-source operations checked conditionally

The source admission argument in `parts/refutation/force-admission.tex` is a valid smooth extension **if** the localization residual has the stated common compact support and compatible finite terminal jets. For each fixed spatial/time derivative, the Borel cutoff choice imposes only finitely many constraints at stage `j`, with exponent `b_j^{m-j}` negative when `|alpha|+m<=floor(j/2)`. The differentiated tail is bounded by the summable series `sum 2^{-j}`. At time one only the `j=m` term supplies the `m`th time jet because the cutoff is constant near zero. This proves the compactly supported smooth extension and membership in `C^infinity([0,infinity);Schwartz)` under those inputs, without an all-order common bound.

The full localization expansion in `localization-source-jets.tex:4–45` is also correct. Writing `u=cv+w`, `w=grad c cross A`, `p=c*pi`, the residual includes the cutoff time/diffusion terms, `(c^2-c)(v dot grad)v`, `c(v dot grad c)v`, and all three interactions involving `w`; the apparent extra `(w dot grad c)v` vanishes exactly. Incompressibility follows from `curl(cA)+c B e_theta` with axisymmetric cutoff and swirl. The exterior radial, axial and angular terms at lines 47–65 have the correct signs. These checks do not independently verify the external paper's interior hypotheses and estimates invoked later in that file.

`parts/refutation/source-response.tex:1–128` correctly separates the prescribed Stokes response `z` from `v=u-z`, retaining the four binomial interaction families

\[
B(W_a,W_{n-a})+B(Z_a,W_{n-a})+B(W_a,Z_{n-a})+B(Z_a,Z_{n-a}).
\]

The stated finite energy estimate is valid. The two cross interactions satisfy the finite convolution bound `2 C_s Z sqrt(2E)`. Pairing through `H^{s-1},H^{s+1}` and Young's inequality gives

\[
\mathscr E'+\frac\nu2\mathscr D
\le\mathscr P_{N,s}(W)
+\left(\nu+\frac{8C_s^2}{\nu}\mathscr Z^2\right)\mathscr E
+\frac{\mathscr G^2}{\nu}.
\]

The prescribed lift coefficients have finite integrals, but the signed nonlinear self-production remains, as the source itself explicitly states. This is a verified source estimate, not a proof of the whole-terminal nonlinear membership theorem.

The source work and iterated integration identities in `source-work-appendix.tex:1–208` are valid at their stated scope. The first differentiated pairing moves derivatives to the prescribed solenoidal spatial weight, using kinetic energy. Repeated integrations retain the explicit initial polynomials. The homogeneous Young estimate retains all signed nonlinear production, and the inhomogeneous version correctly retains `+nu A_{r,s}` because

\[
\|J^{s+1}V_r\|_2^2=\|\nabla J^sV_r\|_2^2+\|J^sV_r\|_2^2.
\]

The integrated completion's source bound does not, on its own, bound the retained energy derivative/nonlinear combination. No independent arbitrary-datum supplier was inferred from these estimates.

## Coverage

Verified here: foundational product and multiplier estimates, exact pressure normalization, complete mixed recurrences, initial-jet induction, conditional finite-row pressure integration, and the displayed conditional localization/Borel/Stokes/source-work operations. The standalone sharp homogeneous Sobolev constant citation and all quantitative consequence catalogues were not exhaustively checked in this note. Endpoint/local persistence and the rectangle/height chain have separate audits. The central whole-terminal producer remains a separate required verification.
