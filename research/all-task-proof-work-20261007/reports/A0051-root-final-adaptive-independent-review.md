# Independent review of the final adaptive quadratic report

**Reviewed scope and currentness.** The mathematical statements retain their recorded hypotheses and the reconciliations listed in the supersession register. Original finite-rectangle membership, when supplied, implies downstream source and selected-current bounds. Optional sufficient criteria in this report are not added as upstream premises of the printed producer. The mathematical body retains its stated strict-time, terminal, pressure and force hypotheses. Publication adds no unconditional global theorem claim.


**Result: PASS for the requested passages, after the domain clarifications below.** This receipt reviews the mathematical operation and scope of [the composition report](https://github.com/Jibberfish69/navier-stokes-public/blob/816d77982adbd0f04a12313fded1874787e2d992/research/quadratic-route-20261006/reports/15-adaptive-composition.md), final mathematical edition. It does not claim a fresh proof of every other section or any original global-regularity theorem.

The first reviewed snapshot was . The requested formulas passed. The intermediate corrected snapshot was 29a4faa195b55f029098f66d88a67345d07f10d2587b3e16cc7a0d57c4aeb8b8. It restricted the scalar terminal-limit claim to finite \(T\), required the positive clock Jacobian in AQ26, localized the diagonal-measure support at the target physical time, and supplied the continuous value of the AQ25 constants at \(L_0=0\). Those qualifications resolve this review's scope comments.

The final mathematical editionretains those corrections and the checked compensated/action formulas. It additionally qualifies the weighted pressure flux, coinciding-clock classification, forward-clock positivity and selection equation in passages reviewed by the other lane. This receipt makes no independent claim for that other classification.

## Compensated force, pressure, moving coefficients and cross stock

**AR1.** AQ13–14 correctly uses \(I=\int_t^\theta g\), \(G=I/h\), \(H=d-G\), \(\theta=t+h\), and
\[
 I'=(1+h')g(\theta)-g(t),\qquad
 G'=\delta_hg+(h'/h)(g(\theta)-G).
\]
Subtracting the known solenoidal force leaves the intrinsic difference pressure \(\delta_hp_0\), while the physical difference pressure retains \(\delta_h\phi_f\). The displayed \(R\) contains both \(N(m,G)\) and \(N(G,m)\). Expanding \(m=u+h(H+G)/2\) and moving the two half-sized cross terms to the source yields exactly
\[
 -\nu LG-N(u,G)-N(G,u)
 -h[N(H,G)+N(G,H)+N(G,G)],
\]
with \(hN(H,H)\) on the left. No nonlinear or force-force parent is lost.

**AR2.** AQ15–17 correctly cancels the full intrinsic strain in the positive compensated stock, retains \(a'E_c\), and retains both moving temporal-response slots. The coefficient derivative of \(h^2/8\) cancels only the \(-H\) denominator term. The kinetic regrouping AQ17 follows by differentiating the affine squares and pairing actual momentum with the actual known solenoidal \(I\). Its signs for viscosity, \(N(u,I)\), and both force endpoints are correct. The pressure cancellation is global; AQ16's local force divergence and the physical pressure faces must remain under localization, as stated.

**AR3.** AQ18–18a correctly implements the full cancelling compensated matrix:
\[
 E=\frac12[q_0\|Z_0\|^2+q_1\|Z_1\|^2],\quad
 Z_0=u+I/2,\quad Z_1=u(\theta)-I/2,\quad
 q_0=a/2-c/h,\quad q_1=a/2+c/h.
\]
The source signs in both \(T_0,T_1\), the upper physical speed \(1+h'\), and all \(a',c',h'\) contributions to \(q_i'\) check directly. The independently derived cross-stock calculation in [the supporting compensated report](https://github.com/Jibberfish69/navier-stokes-public/blob/816d77982adbd0f04a12313fded1874787e2d992/research/quadratic-route-20261006/reports/13-adaptive-compensation.md) AT16 confirms that adding \(c\langle m,H\rangle\) leaves no unforced intrinsic stretching work: all its fixed-separation nonlinear survivors contain known \(G\). Positivity and extraction remain distinct.

The compensated bounded-coefficient, bounded-variation payment cited by the root is also valid. Its constant
\[
 B_0=\nu h_0^2F_1^2/4+K^2h_0F_\infty/2+2LF_0,\quad L=K+h_0F_0/2
\]
and remaining action coefficient \(3\nu/4\) follow from spending one quarter of each physical gradient action on its known-lift cross term. That result does not extend by itself to singular coercive weights.

## Sharp extraction and terminal/family scope

**AR4.** AQ19–20 and the theorem's compensated branches are correct:
\[
 \kappa_h=\frac{h^2q_0q_1}{q_0+q_1}
 =ah^2/4-c^2/a,\qquad
 E\ge\frac{\kappa_0}{2h^2}(\|Z_0\|+\|Z_1\|)^2
\]
when \(\kappa_h\ge\kappa_0>0\). The latter is weighted Cauchy–Schwarz, not a claim of a strong terminal velocity trace.

On a fixed-time shrinking family, both affine fields converge to the actual \(u(t)\). Their nonnegative diagonal weights then force divergence on any actual nonzero strict subinterval; Fatou legitimately excludes a uniform integrated full positive stock. On one finite-terminal curve, both affine face norms approach the scalar \(e_*^{1/2}\), so positive \(e_*\) excludes bounded coercive stock. For \(e_*=0\), the displayed \(O(h^2)\) face decay is necessary only; no contradiction or automatic upper payment is asserted. The distinction between those two domains is preserved.

**AR5.** The positive-diagonal-measure extension is valid in its stated class. For a signed stencil \(\sigma\) of zero mass and unit first moment on a support of diameter \(h\), choosing the support midpoint gives
\[
 1=\left|\int(s-s_0)\,d\sigma\right|
 \le (h/2)\|\sigma\|_{\rm TV}.
\]
If \(\rho\) is the positive diagonal measure of mass \(M\), an extraction coefficient can be positive only for the appropriate bounded coefficient functional. When \(\sigma\ll\rho\), Cauchy–Schwarz gives
\[
 \kappa=\left(\int|d\sigma/d\rho|^2d\rho\right)^{-1}
 \le M/\|\sigma\|_{\rm TV}^2\le Mh^2/4.
\]
If that functional is unbounded, its extraction coefficient is zero. Concentration at the target actual time is now explicit. The root makes no unsupported assertion that this class exhausts all positive continuum kernels or history-dependent cancellations.

## Density/support and receiving-action operations

**AR6.** AQ24 includes every fixed-coordinate density derivative. With \(q_t=-\partial_z(vq)+r\), integration by parts gives exactly
\[
 \frac12\int q_t e
 =\frac12\int vq\,\partial_ze+\frac12\int re-\frac12[vqe]_0^1.
\]
Since \(\partial_ze=h e'_{\rm physical}\), complete kinetic substitution changes the physical speed from \(1+zh'\) to \(1+zh'+hv\) and retains the displayed support-boundary stock and \(r\)-work. No positivity or finite cost of that speed or density derivative is assumed.

**AR7.** AQ25's action/variance equality is the exact Hilbert-space variance identity followed by Tonelli; it remains valid for infinite nonnegative action. The logarithmic speed-kernel constants check independently. For \(s\ge h(0)\), let \(t_s+h(t_s)=s\) and \(\ell=s-t_s\). The Lipschitz bound gives
\[
 \ell-L_0y\le h(t_s+y)\le\ell+L_0y,\quad 0\le y\le\ell,
\]
so
\[
 \frac{\log(1+L_0)}{L_0}
 \le\int_{t_s}^s\frac{dt}{h(t)}
 \le\frac{-\log(1-L_0)}{L_0}.
\]
Before the initial strict strip only the upper bound is claimed; the initial physical derivative action is finite by strict classical regularity. The tracking alternative is expressly conditional on its displayed error/action estimate. Neither quotient action alone nor a shrinking separation alone is identified with the original receiving action.

**AR8.** AQ26 now expressly assumes an increasing \(C^1\) map with \(\phi'>0\) on the mapped physical interval. Then \(\partial_ru(\phi)=\phi'u_t(\phi)\), giving the stated reciprocal-Jacobian equality exactly. It makes no positive-norm assertion for zero or reversed clocks.

The requested operations and their final qualifications pass. There is no remaining correction in these checked passages. Other finite-matrix classification and square calculations are outside this receipt's independently executed scope; their separate review is not replaced by this result.
