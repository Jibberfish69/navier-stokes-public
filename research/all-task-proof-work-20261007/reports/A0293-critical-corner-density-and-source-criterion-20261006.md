# Exact corner: chord-density operation and source-criterion branch

**Reviewed scope and currentness.** The mathematical statements retain their recorded hypotheses and the reconciliations listed in the supersession register. This is a verified criterion-scoped closure, not arbitrary-datum global smoothness. Original finite-rectangle membership, when supplied, implies downstream source and selected-current bounds. Optional sufficient criteria in this report are not added as upstream premises of the printed producer. The mathematical body retains its stated strict-time, terminal, pressure and force hypotheses. Publication adds no unconditional global theorem claim.


This new check executes two operations in the actual current NS manuscript. It retains the same physical history and the same critical source receiver as the preceding FIH.39 execution. All original sources and prior reports remain read only. Identities labelled **source** below are transcribed from the indicated equation; applications and estimates labelled **derived** are new deductions in this check.

## Governing source locations

- [Critical source criterion, LF1–96](../SOURCES.md#S128): `r:eq:critical-source-energy` LF17; primitive LF36; condition LF50; coercive spatial bound LF67–74.
- [Critical source reserve and chord density](../SOURCES.md#S127): kinetic LF33; rate budget LF125; growth-volume LF154; local conservation LF330; full pressure/endpoint flux LF280–397; normalized density LF427; inverse-volume LF469.
- [Complete differentiated prescribed-source interactions, LF124–224](../SOURCES.md#S296): all three force insertions, their divergence-free Fourier commutator, and the autonomous remainder are retained.

Let \(I=(0,T)\), \(T<\infty\), and use the manuscript's smooth datum and prescribed force. The prescribed force is smooth through \(T\); the actual classical NS history is assumed smooth only on every strict prefix. No terminal regularity of the history is assumed. Write \(b=\mathbb Pf\), \(Q(u)=-\mathbb P[(u\cdot\nabla)u]\), \(S_s=e^{-\nu s\Lambda^2}\), and
\[
G(t,s)=Q(S_su(t)),\quad q=\nu^{-1}\|\Lambda^{-1/2}G\|_2^2,
\quad A(t)=q(t,0).
\]
All differential operations first occur on a strict interval \(0<t<S<T\).

## 1. Execute the source criterion on the actual source action

**Derived product estimate using the source's explicit Sobolev constant.** Put
\[
y=\|\Lambda^{1/2}u\|_2,\qquad z=\|\Lambda^{3/2}u\|_2,
\quad C_*=(\sqrt2\pi)^{-1}.
\]
The manuscript's \(\dot H^{1/2}\to L^3\) constant is

\[
S_3=2^{-1/6}\pi^{-1/3},\qquad S_3^3=C_*.
\]

For any test field \(\phi\), retain the Leray projector on the test:
\[
|\langle Q(u),\phi\rangle|
\le\|u\|_3\|\nabla u\|_3\|\mathbb P\phi\|_3
\le C_*yz\|\Lambda^{1/2}\phi\|_2.
\]
Thus the complete nonlinear source, including pressure, satisfies
\[
\boxed{\|\Lambda^{-1/2}Q(u)\|_2\le C_*yz,
\qquad A\le(C_*^2/\nu)y^2z^2.}
\tag{DC.1}
\]
No pointwise pressure force has been removed; \(\mathbb P\) is contracted only in its Fourier Sobolev norm.

**Source criterion.** For \(\beta=\|\Lambda^{-1/2}b\|_2\), the original exact estimate is
\[
yy'+(\nu-C_*y)z^2\le\beta z.
\]
Set
\[
\Psi(y)=2\nu y^2-\tfrac43C_*y^3,
\qquad B(T)=\int_0^T\beta^2dt.
\]
The original hypothesis is
\[
y_0<\nu/C_*,\qquad
B(T)<4\pi^2\nu^3/3-\Psi(y_0).
\tag{DC.2}
\]
Let \(r<\nu/C_*\) be the unique root
\(\Psi(r)=\Psi(y_0)+B(T)\), and \(a=\nu-C_*r>0\).
The source barrier argument gives \(y(t)\le r\). Its retained viscous estimate gives, on every strict prefix,
\[
\int_0^S z^2dt\le y_0^2/a+B(T)/a^2.
\]
Monotone convergence preserves this bound on the whole \(I\).

**Derived independent payment of the corner source action within DC.2.** Applying DC.1 gives
\[
\boxed{
\int_I A(t)dt\le
\frac{C_*^2r^2}{\nu}
\left(\frac{y_0^2}{a}+\frac{B(T)}{a^2}\right)=:B_A^{\rm criterion}<\infty.}
\tag{DC.3}
\]
This is a datum/source bound, with the exact original small-critical restriction DC.2. It supplies the response spatial entry and the original mixed bootstrap/restart in that scope. It is not an unrestricted arbitrary-datum bound.

## 2. A genuine joint limit from that bound

This passage uses a single integrable majorant for the whole heat-field family. It does not combine two separate cutoff limits.

For a fixed smooth physical time, \(s\mapsto\Lambda^{-1/2}Q(S_su(t))\) is continuous in \(L^2\) on \([0,T]\). Its image is compact. Therefore
\[
\sup_{0\le s\le T}\nu^{-1}
\|\Lambda^{-1/2}P_{>R}Q(S_su(t))\|_2^2\longrightarrow0
\quad(R\to\infty).
\]
DC.1 and heat contraction give one whole-domain majorant,
\[
q_{>R}(t,s)\le(C_*^2r^2/\nu)z(t)^2\in L^1(I),
\quad 0\le s\le T.
\]
Hence
\[
\delta_R:=\int_I\sup_{0\le s\le T}q_{>R}(t,s)dt\to0.
\tag{DC.4}
\]
At the datum face the analogous compact heat family gives
\(\delta_R^0:=\int_0^Tq_{>R}(0,s)ds\to0\).
The exact FIH triangle strip identity is
\[
J_{>R,s<\varepsilon}(\tau)
=\int_0^\tau A_{>R}dt
-\int_0^{\min(\varepsilon,\tau)}q_{>R}(0,s)ds
-\int_0^{(\tau-\varepsilon)_+}q_{>R}(t,\varepsilon)dt.
\]
All three terms now have one uniform bound:
\[
\boxed{
\sup_{0<\tau<T,\ 0<\varepsilon\le T}
|J_{>R,s<\varepsilon}(\tau)|
\le2\delta_R+\delta_R^0\longrightarrow0.}
\tag{DC.5}
\]
Here \(J=J^{\rm NL}+J^f\) is the complete transport current. Thus every joint path \(R\to\infty,\varepsilon\to0\) converges uniformly over terminal prefixes in the actual criterion scope. The separately absolutely integrable prescribed-force insertion has vanishing joint tails by its own whole \((t,s,k)\) majorant. The intrinsic bound is \(2\delta_R+\delta_R^0+\sup_{\tau<T}|J^f_{>R,s<\varepsilon}(\tau)|\); it therefore has the same joint convergence.

More generally this reasoning requires only \(y\in L^\infty(I)\), \(z\in L^2(I)\). The preceding actual response estimate derives these from a finite complete \(\int_I A\): it gives
\(\|\Lambda^{1/2}(u-S_tu_0)\|^2\le\int_I A+2B_F\)
and the displayed whole spatial entry. This proves that a finite source action yields the true joint limit. Obtaining that action unconditionally remains a separate operation.

## 3. Execute normalized chord-density transport with its pressure flux

The original source sets
\[
H=\tfrac12 y^2,\quad D=z^2,\quad
\Phi=H+\int_t^T K\|\Lambda b(s)\|_2ds,
\quad Y=\|\nabla u\|_2^2.
\]
It defines the actual chord tensor, its trace \(\tau\), rate
\(r=-S:\mathsf T_u/\tau\), and normalized density
\(\rho=\tau/(4\Phi)\), wherever \(\Phi>0\).
The source identities and inequalities are
\[
\int\tau=4H,\quad \int Q_\tau=2D,\quad
\int\rho=H/\Phi\le1,\quad
\|r\|_2^2\le Y/3,
\]
\[
\partial_t\tau+\operatorname{div}(u\tau-J_{\rm int})-\nu\Delta\tau
=4\tau r-2\nu Q_\tau+\mathcal F_\tau.
\tag{DC.6}
\]
The full \(J_{\rm int}=J_0-4L\) includes the endpoint velocities, the pressure difference \(-2\delta p\,\delta u\), and the chord-center translation. None is replaced by ordinary parcel advection.

**Derived \(L^2\) normalized-density operation.** On a positive strict interval let
\(R_\rho=\int\rho^2\). Multiplying the exact normalized equation by \(\rho\), with spatial regularization before passage, gives
\[
\begin{aligned}
\tfrac12R_\rho'+\nu\|\nabla\rho\|_2^2
={}&-\frac1{4\Phi}\int J_{\rm int}\cdot\nabla\rho
+4\int r\rho^2-\frac\nu{2\Phi}\int Q_\tau\rho\\
&+\frac1{4\Phi}\int\mathcal F_\tau\rho
-\frac{\Phi'}\Phi R_\rho.
\end{aligned}
\tag{DC.7}
\]
The flux sign is negative after integration by parts. The favorable pointwise inequality
\(Q_\tau\ge|\nabla\tau|^2/(4\tau)\)
adds half a viscous derivative:
\[
\tfrac12R_\rho'+\tfrac{3\nu}2\|\nabla\rho\|_2^2
+(\Phi'/\Phi)R_\rho
\le4\int r\rho^2
-\frac1{4\Phi}\int J_{\rm int}\cdot\nabla\rho
+\frac1{4\Phi}\int\mathcal F_\tau\rho.
\tag{DC.8}
\]
The normalization derivative has its full sign. On the source's growth set \(\Phi'>0\), it is favorable; outside that set it is retained.

Let \(S_6\) be the source's \(\dot H^1\to L^6\) constant. Interpolation and Young give
\[
4\int r\rho^2
\le4\|r\|_2S_6^{3/2}R_\rho^{1/4}
\|\nabla\rho\|_2^{3/2}
\le\tfrac\nu2\|\nabla\rho\|_2^2
+\frac{24S_6^6}{\nu^3}Y^2R_\rho.
\tag{DC.9}
\]
The last constant uses \(\|r\|_2^4\le Y^2/9\). This exposes the actual time coefficient \(Y^2\), whereas the kinetic budget supplies \(\int_IY\).

Retaining the flux as its exact dual pairing is sufficient for DC.8. If estimated in its \(L^2\) coordinate on a strict smooth interval, Young gives
\[
\frac{|\langle J_{\rm int},\nabla\rho\rangle|}{4\Phi}
\le\tfrac\nu2\|\nabla\rho\|_2^2
+\frac{\|J_{\rm int}\|_2^2}{32\nu\Phi^2}.
\]
This is not claimed as a terminal flux bound: the original established flux budget has only \(L_t^{4/5}L_x^1\), and does not pay this coordinate.

The direct force has a prescribed density
\(\tau_b=\pi^{-2}\int_0^1\int|\delta b|^2|y|^{-4}dy\,d\theta\).
Cauchy--Schwarz gives \( |\mathcal F_\tau|\le2\sqrt{\tau\tau_b}\), so
\[
\frac{|\int\mathcal F_\tau\rho|}{4\Phi}
\le\Phi^{-1/2}\|\tau_b\|_\infty^{1/2}R_\rho^{1/2}.
\]
Here \(\|\tau_b\|_\infty\le(16/\pi)\|b\|_\infty\|\nabla b\|_\infty\), by splitting the chord integral at \(2\|b\|_\infty/\|\nabla b\|_\infty\). Zero norms give the zero field directly.

Consequently the fully retained new density inequality is
\[
\boxed{
\begin{aligned}
\tfrac12R_\rho'+\tfrac\nu2\|\nabla\rho\|_2^2
+\frac{\Phi'}\Phi R_\rho
\le{}&\frac{24S_6^6}{\nu^3}Y^2R_\rho
+\frac{\|J_{\rm int}\|_2^2}{32\nu\Phi^2}\\
&+\Phi^{-1/2}\|\tau_b\|_\infty^{1/2}R_\rho^{1/2}.
\end{aligned}}
\tag{DC.10}
\]
DC.10 distinguishes the source-defined full local operation from its new estimate. It retains the pressure/endpoint flux and the complete intrinsic reaction. The known kinetic and direct-source budgets do not supply the two displayed intrinsic coefficients. This is a precise limitation of this executed estimate, not a counterexample to the actual NS history.

## 4. Coverage and outcome of these two operations

The source criterion's energy, positive denominator, exact primitive, first-crossing argument, retained critical dissipation, and subsequent entry have all been executed. It supplies DC.3 and the genuine joint limit DC.5 exactly under DC.2.

The chord route's full transport/pressure flux, normalized diffusion, strain-rate budget, and inverse-volume interpolation have been retained. Multiplying its actual normalized equation by its actual density produces DC.7–10. The original best instantaneous inverse-volume bounds remain
\[
V_f^{-1}\le\min\left\{
\frac{S_6^3H^{1/2}D^{3/2}}{2^{3/2}\Phi^2},
\frac{C_\tau S_6^2YD}{8\Phi^2}\right\}.
\]
They retain \(D\) and normalization. The new \(L^2\) operation exposes \(Y^2\) and the full pressure/endpoint flux rather than converting the kinetic \(\int Y\) budget into an unweighted concentration action.

No unconditional arbitrary-datum corner bound has been established by these two operations. Their mathematical scope and all terminal domains are explicit; no essential-source access blocker occurred.
