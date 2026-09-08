# Euler all-height summed closure — exact simultaneous balance and terminal hinge

## Target
Close the smooth 3D Euler endpoint directly from the full same-history spatial Sobolev family, with pressure and incompressibility retained, and without selecting a privileged target height.

## 1. Pressure-complete all-height balance
For Euler
\[
\partial_tu+\mathbb P(u\cdot\nabla u)=0,
\]
set
\[
E_M(t)=\frac12\|\Lambda^M u(t)\|_2^2.
\]
Because \(\mathbb P\) is self-adjoint, commutes with \(\Lambda^M\), and \(\Lambda^M u\) is divergence-free, pressure has zero direct pairing. Incompressibility also cancels the top transport term. Hence
\[
E_M'=-\frac12\langle[\Lambda^{2M},u\cdot\nabla]u,u\rangle.
\tag{A1}
\]
This holds for every integer \(M\ge0\). For \(M=0\), the commutator vanishes and kinetic energy is conserved.

## 2. Sum the entire spatial axis
Take a finite or convergent positive weight sequence \(w_M\) and define
\[
\Phi(r)=\sum_{M\ge0}w_Mr^M,
\qquad
\mathcal E_\Phi(t)=\frac12\sum_Mw_M\|\Lambda^Mu\|_2^2
=\frac12\int\Phi(|\xi|^2)|\widehat u(\xi)|^2d\xi.
\]
Summing (A1) gives the exact generating balance
\[
\boxed{\mathcal E_\Phi'=-\frac12\langle[\Phi(-\Delta),u\cdot\nabla]u,u\rangle.}
\tag{A2}
\]
In Fourier variables, after the standard donor/receiver symmetrization of the incompressible triad transfer \(\mathcal T\),
\[
\boxed{
\mathcal E_\Phi'
=\frac12\iint_{\eta+\zeta=\xi}
\bigl(\Phi(|\xi|^2)-\Phi(|\zeta|^2)\bigr)
\mathcal T(\xi\leftarrow\zeta;\eta)\,d\eta d\zeta.
}
\tag{A3}
\]
Thus the full all-height family does not create a new dissipative term. It replaces the monomial Sobolev weight \(|\xi|^{2M}\) by one generating weight \(\Phi(|\xi|^2)\).

## 3. Exact role of pressure and incompressibility
Incompressibility makes the triad transfer conservative: donor and receiver contributions cancel for the constant weight \(\Phi\equiv1\). Pressure is already incorporated through the Leray projection and supplies the nonlocal divergence-free closure. For every nonconstant increasing \(\Phi\), transfer toward larger \(|\xi|\) raises \(\mathcal E_\Phi\); transfer toward smaller \(|\xi|\) lowers it. The sign is not fixed.

Time reversibility gives the same obstruction directly: the all-height energies are even under \(u\mapsto-u\), while their cubic productions change sign. Consequently pressure/incompressibility/scaling cannot yield a universal monotone coercive all-height Sobolev energy from these balances alone.

## 4. Why infinitely many heights do not constitute infinitely many independent payments
Let a packet carry kinetic energy \(e\) at frequency \(K\). Its contribution to the \(M\)-th Sobolev energy is
\[
eK^{2M}.
\]
The same packet therefore contributes simultaneously to every spatial height. As \(K\to\infty\), one and the same packet can drive all positive Sobolev moments upward while kinetic energy remains fixed. The heights are compatible nested readouts of one spectral measure, rather than independent conserved budgets.

Equivalently, define the energy spectral measure
\[
d\mu_t(\xi)=|\widehat u(\xi,t)|^2d\xi.
\]
Smoothness for \(t<T_*\) says every finite moment of \(\mu_t\) is finite. A terminal singularity corresponds to escape of this measure toward infinite frequency so that one or more moments lose uniform boundedness as \(t\uparrow T_*\). All-height compatibility at each strict time does not itself give uniform terminal tightness.

## 5. Scaling covariance
Euler scaling transports the generating family by
\[
\mathcal E_\Phi[u^{a,\lambda}](t)
=a^2\lambda^{-3}\,\mathcal E_{\Phi_\lambda}[u](a\lambda t),
\qquad
\Phi_\lambda(r)=\Phi(\lambda^2r).
\tag{A4}
\]
Thus the extra spatial scaling degree acts directly on the weight/radius of the full Sobolev family. It supplies no sign in (A2) or (A3).

## 6. Exact closure theorem still required
The all-height ontology reduces the endpoint problem to a spectral no-escape statement on the same history. A sufficient formulation is: for every finite \(M\),
\[
\boxed{
\sup_{t<T_*}\int(1+|\xi|^2)^M|\widehat u(\xi,t)|^2d\xi<\infty.
}
\tag{A5}
\]
Equivalently, the family of weighted spectral measures must remain uniformly tight at every finite polynomial weight. Once (A5) holds, the endpoint traces exist in every \(H^M\), their compatibility gives one field in \(\cap_MH^M\), Sobolev embedding gives \(C^\infty\), and Euler restarts.

## Verdict
The full all-height summation was performed directly. Pressure and incompressibility close and conserve the transfer; scaling moves the entire spatial weight family; none of these identities produces a coercive sign or a no-recounting charge. The remaining mathematical content is exactly the same-history spectral no-escape/no-recount theorem (A5). Claiming unconditional closure from all-height accessibility alone would count one high-frequency packet as infinitely many independent payments and would be invalid.