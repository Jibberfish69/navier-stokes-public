# Necessary terminal profiles on the actual zero-reciprocal-stock branch

**Reviewed scope and currentness.** Sharpens [Actual zero-stock clock, normalized field and terminal cone](A0721-clock-normalized-field-and-terminal-cone.md) kinetic-product statement to e−e*, regardless of scalar e*. [The actual zero reciprocal-stock branch: coupled terminal constraints](A0748-zero-stock-coupled-terminal-results.md) incorporates that stronger scope. Original finite-rectangle membership, when supplied, implies downstream source and selected-current bounds. Optional sufficient criteria in this report are not added as upstream premises of the printed producer. The mathematical body retains its stated strict-time, terminal, pressure and force hypotheses. Publication adds no unconditional global theorem claim.


This is a new independent calculation on the actual pressure-complete Navier–Stokes history, with the original viscosity and prescribed smooth force. It checks the zero-stock terminal cone and derives further coupled action, kinetic and conditional profile constraints. It constructs no scalar or substitute fluid history, and does not assert that a zero-stock branch occurs.

## 1. Exact objects, source row and weighted domain

Suppose the actual classical history has a proposed finite endpoint \(T_*\), is smooth on every strict prefix, and solves
\[
u_t+\nu(-\Delta)u+\nabla p=f-B,
\quad B=(u\cdot\nabla)u,\quad\nabla\cdot u=0,
\quad p=R_iR_j(u_iu_j)-(-\Delta)^{-1}\nabla\cdot f.
\tag{ZP1}
\]
The force is the original arbitrary prescribed \(C^\infty([0,\infty);\mathcal S)\) force; its gradient contribution remains in the canonical pressure. Define the actual coordinate norms
\[
Y=\|\nabla u\|_2^2,\quad Z=\|\Delta u\|_2^2,\quad
U_0=\|u_t\|_2^2,\quad P_0=\|\nabla p\|_2^2,
\quad Q=U_0+\nu^2Z+P_0.
\]
The original complete momentum square and the derivative pairing are
\[
\nu Y'+Q=\|f-B\|_2^2,\qquad
Y'=2\operatorname{Re}(u_t,(-\Delta)u).
\tag{ZP2}
\]
These are the full row, including pressure and the force–nonlinear cross term. Source: [forced rectangle cell, LF189–251](../SOURCES.md#S118).

Fix a constant \(A>0\). Put \(z=(A+Y)^{-1}\), \(I=(0,T_*)\), and
\[
q_-=U_0+\tfrac12\nu^2Z+P_0,\qquad
d\mu_{\rm hist}=z^2q_-\,dt.
\tag{ZP3}
\]
This is the measure of the actual history on \(I\), not a weak limit of cutoff measures. The zero branch under examination is the additional hypothesis \(z(t)\to0\), equivalently \(Y(t)\to\infty\), as \(t\uparrow T_*\).

For completeness, the source kinetic identity pays \(\sup_I\|u\|_2\le K\) and \(\int_IY\le K^2/(2\nu)\), with \(K=\|u_0\|_2+\int_I\|\mathbb P f\|_2\). Applying the source bound below with any fixed Young parameter gives \(q_-+\nu Y'\le C Y^3+C_f\|f\|_2^2\). Multiplication by \(z^2\) gives
\[
\mu_{\rm hist}(I)\le CK^2/(2\nu)+C_fA^{-2}\|f\|_{L^2(I;L^2)}^2+\nu/A<\infty.
\tag{ZP4}
\]
Here \(z^2Y^3\le Y\), and \(z^2Y'=-z'\) fixes the endpoint sign. Also \(\nu|Y'|\le\sqrt2q_-\), so \(\int_I|z'|\le\sqrt2\mu_{\rm hist}(I)/\nu\). Thus \(z\) has a BV terminal trace before the zero-trace hypothesis is imposed. No whole-terminal unweighted rectangle is assumed. Source kinetic proof: [forced 02, LF13–60](../SOURCES.md#S118).

## 2. Check the complete Young constants, with three source bounds

Write \(\|B\|_2^2\le bY^{3/2}Z^{1/2}\). Three verified choices are:

| Operation on the full field | \(b\) |
|---|---|
| Fourier Agmon | \(1/(2\pi)\) |
| Solenoidal Fourier Agmon | \(1/(3\pi)\) |
| Printed homogeneous Sobolev constants | \(2/(3\pi^2)\) |

For the first, Fourier Cauchy–Schwarz gives \(\|u\|_\infty^2\le(\lambda Y+\rho Z)/(4\pi\sqrt{\lambda\rho})\); optimize \(\lambda/\rho=Z/Y\). For the solenoidal improvement choose the unit direction \(e\) attaining the pointwise velocity magnitude and use \(e\cdot\widehat u=(\mathbb P(\xi)e)\cdot\widehat u\). The spherical average of \(|\mathbb P(\xi)e|^2\) is \(2/3\). The optimized constant is therefore \(\|u\|_\infty^2\le\sqrt{YZ}/(3\pi)\). Both estimates control the physical \(B\), not just its projected component.

The strongest entry follows directly from the printed scalar/vector/tensor Sobolev lemma:
\[
\begin{aligned}
\|B\|_2
&\le\|u\|_6\|\nabla u\|_3
\le\mathsf S(6)\mathsf S(3)Y^{1/2}\|\Lambda^{3/2}u\|_2\\
&\le\frac1\pi\sqrt{\frac23}\,Y^{3/4}Z^{1/4},
\end{aligned}
\tag{ZP5}
\]
where the last step is Fourier interpolation. No tensor multiplicity is omitted: the printed Sobolev inequality covers the Euclidean norm of the entire gradient tensor. Source: [forced analytic framework, LF102–164](../SOURCES.md#S114). The constants are \(\mathsf S(3)=2^{-1/6}\pi^{-1/3}\), \(\mathsf S(6)=2^{2/3}/(\sqrt3\pi^{2/3})\).

For \(0<a<1\), set \(q_a=U_0+a\nu^2Z+P_0\). With a fixed \(\eta>0\), complete Young gives
\[
\begin{aligned}
\|f-B\|_2^2
&\le(1+\eta)bY^{3/2}Z^{1/2}+(1+\eta^{-1})\|f\|_2^2\\
&\le(1-a)\nu^2Z+
\frac{(1+\eta)^2b^2}{4(1-a)\nu^2}Y^3
+(1+\eta^{-1})\|f\|_2^2.
\end{aligned}
\tag{ZP6}
\]
Consequently \(\nu Y'+q_a\) is bounded by the last two terms. At \(a=1/2\) and generic \(b=1/(2\pi)\), the coefficient is exactly \((1+\eta)^2/(8\pi^2\nu^2)\), confirming the proposed half-viscous constant.

## 3. The terminal sign, exact remainder and optimized cone

Multiplying the equality ZP2 by \(z^3\) gives
\(-\nu(z^2)'/2+z^3Q=z^3\|f-B\|_2^2\). Its actual zero-trace terminal integral is
\[
\tfrac\nu2z(t)^2+\int_t^{T_*}z^3Q
=\int_t^{T_*}z^3\|f-B\|_2^2.
\tag{ZP7}
\]
All integrals exist: \(Q\le2q_-\), \(z\le A^{-1}\), ZP4, and the bounded prescribed force/source estimate give the required weighted domains. The sign of the initial \(z(t)^2\) term is positive.

For \(q_a\), there is an exact full nonnegative remainder:
\[
q_a-\nu\sqrt a\,Y'
=\|u_t-\nu\sqrt a(-\Delta)u\|_2^2+P_0.
\tag{ZP8}
\]
Thus, integrating ZP6 and using the zero terminal trace,
\[
\begin{aligned}
&\tfrac\nu2(1+\sqrt a)z(t)^2
+\int_t^{T_*}z^3\big(\|u_t-\nu\sqrt a(-\Delta)u\|_2^2+P_0\big)\\
&\quad\le\frac{(1+\eta)^2b^2}{4(1-a)\nu^2}
\int_t^{T_*}(1-Az)^3
+(1+\eta^{-1})\int_t^{T_*}z^3\|f\|_2^2.
\end{aligned}
\tag{ZP9}
\]
Let \(\tau=T_*-t\). Since \(z\to0\), the first integral divided by \(\tau\) tends to one. The force integral divided by \(\tau\) tends to zero for each fixed \(\eta\): \(\|f\|_2\) is bounded on this finite force horizon, and \(\sup_{r\ge t}z(r)\to0\). Take the terminal limit first, and only then \(\eta\downarrow0\). In the unforced case this limiting parameter is unnecessary.

The resulting bound is
\[
\limsup_{t\uparrow T_*}\frac{z(t)^2}{\tau}
\le\frac{b^2}{2\nu^3(1-a)(1+\sqrt a)}.
\tag{ZP10}
\]
The denominator is maximized at \(a=1/9\), with \((1-a)(1+\sqrt a)=32/27\). Therefore

| Source bound | \(\limsup z^2/\tau\) upper bound | \(\liminf\sqrt\tau\,Y\) lower bound |
|---|---|---|
| Generic Agmon | \(27/(256\pi^2\nu^3)\) | \(16\pi\nu^{3/2}/(3\sqrt3)\) |
| Solenoidal Agmon | \(3/(64\pi^2\nu^3)\) | \(8\pi\nu^{3/2}/\sqrt3\) |
| Printed Sobolev | \(3/(16\pi^4\nu^3)\) | \(4\pi^2\nu^{3/2}/\sqrt3\) |

Dropping the action at \(a=1/2\) instead gives the weaker candidate \(z\le[1/(2\pi\nu^{3/2})+o(1)]\sqrt\tau\), \(\liminf\sqrt\tau Y\ge2\pi\nu^{3/2}\). It is valid. ZP8 explains why retaining the actual temporal/viscous/pressure remainder improves it. None of these bounds proves \(z(T_*-)\) positive.

## 4. The same-history signed kinetic-tail bridge

Define actual terminal integrals \(D(t)=\int_t^{T_*}Y\), \(U(t)=\int_t^{T_*}z^2Z\). Pair ZP1 with \(-\Delta u\), multiply by \(z^2\), and integrate. Solenoidality removes only the pressure pairing in this specific energy identity; the full pressure action remains in ZP7–9. The exact signed relation is
\[
\tfrac12z(t)+\nu U(t)
=\int_t^{T_*}z^2\big[(B,\Delta u)-(f,\Delta u)\big].
\tag{ZP11}
\]
The full nonlinear estimate above and Hölder give
\[
\left|\int_t^{T_*}z^2(B,\Delta u)\right|
\le\sqrt b\,U^{3/4}D^{1/4},
\tag{ZP12}
\]
because \(z^2Y^{3/4}Z^{3/4}=(z^2Z)^{3/4}[Y(zY)^2]^{1/4}\) and \(zY\le1\). The full force obeys
\[
\left|\int_t^{T_*}z^2(f,\Delta u)\right|
\le\varepsilon\nu U+(4\varepsilon\nu)^{-1}
\int_t^{T_*}z^2\|f\|_2^2.
\tag{ZP13}
\]
The last integral is \(O(\tau)=o(D)\): \(Y\to\infty\) implies \(D/\tau\to\infty\). Fix \(\varepsilon>0\), take the terminal limit, then let \(\varepsilon\downarrow0\). Maximizing \(\sqrt b\,v^{3/4}-\nu v\) over \(v=U/D\ge0\) gives
\[
\limsup\frac{z}{D}\le\kappa_b:=\frac{27b^2}{128\nu^3},
\qquad\kappa_{\rm Sob}=\frac3{32\pi^4\nu^3}.
\tag{ZP14}
\]
This is a bound on the actual signed primitive after its complete force payment, with no assumed monotonicity of \(Y\).

Let \(e(t)=\|u(t)\|_2^2\). The actual energy identity gives \(e'=-2\nu Y+2(f,u)\). Both terms are integrable on \(I\), so \(e\) has a unique terminal value \(e_*\ge0\). Bounded force and kinetic stock give
\[
e(t)-e_*=2\nu D(t)-2\int_t^{T_*}(f,u)
=2\nu D(t)+o(D(t)).
\tag{ZP15}
\]
Therefore the stronger precise statement is
\[
\liminf(e-e_*)Y\ge\frac{2\nu}{\kappa_{\rm Sob}}
=\frac{64\pi^4\nu^4}{3}.
\tag{ZP16}
\]
If the additional subcase \(e_*=0\) holds, this is the same bound for \(eY\), and \(e\sim2\nu D\). Zero reciprocal stock alone does not establish \(e_*=0\).

## 5. Further actual tail constraints

The strongest cone implies
\[
\liminf\frac{D(t)}{\sqrt\tau}\ge\frac{8\pi^2\nu^{3/2}}{\sqrt3}.
\tag{ZP17}
\]
This follows by integrating its eventual pointwise lower bound for \(Y\). The kinetic tail still tends to zero, so ZP17 is not a contradiction.

Fourier Cauchy–Schwarz gives \(Y\le\|u\|_2\sqrt Z\le K\sqrt Z\). On the zero branch \(K>0\), hence
\[
\liminf\tau Z\ge\frac{16\pi^4\nu^3}{3K^2},
\qquad \int_t^{T_*}Z=\infty\quad\text{for every }t<T_*.
\tag{ZP18}
\]
Thus, **conditionally on an actual zero branch**, its unweighted viscous face already diverges at least logarithmically. This is not an assertion that such a branch occurs. The weighted history measure remains finite and has the simultaneous lower bounds
\[
\mu_{\rm hist}((t,T_*))\ge\nu z(t)/\sqrt2,
\qquad\liminf\frac{\mu_{\rm hist}((t,T_*))}{\tau}
\ge\frac{\nu^2}{2K^2}.
\tag{ZP19}
\]
The first uses BV and \(\nu|z'|\le\sqrt2z^2q_-\); the second uses \(z^2Z\ge(1-Az)^2/K^2\). No terminal atom of a weak cutoff-limit measure has been identified with \(\mu_{\rm hist}\).

## 6. Conditional regular-variation restrictions, without model histories

Suppose the **actual** reciprocal stock happens to be regularly varying: \(v(\tau)=z(T_*-\tau)=\tau^\alpha L(\tau)\), with \(v(\lambda\tau)/v(\tau)\to\lambda^\alpha\). These are additional asymptotic hypotheses, not prescribed scalar data.

The cone excludes \(\alpha<1/2\): along dyadic times the ratio \(v(\tau)/\sqrt\tau\) would increase eventually by a factor greater than one. Kinetic action gives \(H(\tau)=\int_0^\tau dr/v(r)=D(T_*-\tau)+A\tau\to0\). Fatou on a scaled annulus gives
\[
\liminf_{\tau\downarrow0}\frac{H(\tau)}{\tau/v(\tau)}
\ge\int_{1/2}^1\lambda^{-\alpha}\,d\lambda>0.
\tag{ZP20}
\]
Consequently \(\tau/v(\tau)\to0\), which excludes \(\alpha>1\) by the dyadic ratio. Necessary restrictions are therefore \(1/2\le\alpha\le1\). At \(\alpha=1/2\), \(\limsup L\le\sqrt3/(4\pi^2\nu^{3/2})\). At \(\alpha=1\), \(L\to\infty\) and the exact necessary kinetic condition is \(\int_0 dr/[rL(r)]<\infty\).

For example, if the actual history has the more specific asymptotic \(v\sim c\tau^\alpha(\log(1/\tau))^\beta\), the necessary tests reduce to: \(1/2<\alpha<1\); or \(\alpha=1/2\) with \(\beta<0\), or \(\beta=0\) and \(c\le\sqrt3/(4\pi^2\nu^{3/2})\); or \(\alpha=1\) with \(\beta>1\). These are restrictions on a conditional asymptotic of an actual history. They do not show that any listed behavior is realized by Navier–Stokes.

## 7. A coupled power-profile refinement using the full momentum row

Suppose additionally that the actual norms have positive leading powers
\(Y\sim y\tau^{-\alpha}\), \(Y'\sim\alpha y\tau^{-\alpha-1}\), \(Z\sim d\tau^{-\beta}\), \(U_0\sim c_t\tau^{-\gamma}\), with \(y,d,c_t>0\). The derivative asymptotic is a separate hypothesis; it does not follow from regular variation alone. Kinetic action gives \(1/2\le\alpha<1\). On this eventually increasing-enstrophy subcase, every positive term of \(Q+\nu Y'\) is bounded by the complete source bound, with bounded force lower order. Kinematics and interpolation therefore require
\[
\beta\le3\alpha,\quad
\gamma\le(3\alpha+\beta)/2,\quad
\beta+\gamma\ge2\alpha+2,\quad
\beta\ge2\alpha.
\tag{ZP21}
\]
In particular \(\beta\ge\max\{2\alpha,(\alpha+4)/3\}\). If the pressure action has a positive leading power, its exponent is at most \((3\alpha+\beta)/2\). Weighted action also requires each pure action exponent to be less than \(1+2\alpha\), consistently with these bounds. In the further subcase \(e_*=0\), ZP15 and \(Z\ge Y^2/e(t)\) strengthen the lower bound to \(\beta\ge1+\alpha\).

At the critical \(\alpha=1/2\), ZP21 forces \(\beta=\gamma=3/2\). If \(p=\lim\tau^{3/2}P_0\) exists, the full leading row retains it:
\[
c_t+\nu^2d+p+\nu y/2\le b y^{3/2}\sqrt d,
\qquad c_td\ge y^2/16,\qquad p\ge0.
\tag{ZP22}
\]
Minimizing over \(d,c_t,p\) recovers \(y\ge8\nu^{3/2}/(3\sqrt3 b)\), exactly the optimized cone. If equality holds, its leading constraints require \(d=3y/(4\nu)\), \(c_t=\nu y/12\), and \(p=0\); the leading temporal–viscous remainder in ZP8 then vanishes. This is a conditional rigidity statement for the actual full row, not a constructed self-similar solution or a claim that pressure itself is identically zero.

## Checked scope and preservation

The generic candidate cone, exact sign, complete force limiting order, optimized positive remainder, solenoidal Agmon improvement and stronger source-printed Sobolev constant have been independently executed. The signed kinetic bridge, energy-excess relation, tail and conditional profile constraints follow from the same actual history. No endpoint positivity, existence of a zero branch, or unrestricted profile realization is concluded.

Only new files in this profiles directory were written.
