# Thomas's balanced rip-cord coasting law and pressure-trace recruitment boundary

**Date:** 2026-08-03

**Status:** exact one-fluid VPI identities, exact balanced coasting calibration,
exact pressure-quadrupole localization, and exact shrinking-label scaling
boundary proved below.  The datum-finite scale-weighted moment needed for
`(TIR.37a)` is not proved.

This note continues Thomas's physical order without replacing it:

1. the simple pulse;
2. the imbalanced stretched vortex;
3. the perfectly balanced rip-cord vortex.

Only the third, hardest branch is tested here.  No center wobble, symmetry
breaking, external supplier, fixed positive-volume core, or independent packet
history is assumed.  The velocity, pressure, viscosity, incompressibility,
vorticity/strain geometry, and material ancestry remain one fixed-viscosity
history.  The affine calculation below is an exact local VPI calibration, not
a finite-energy Navier--Stokes counterhistory.

## 1. The exact material curvature law

Let

\[
\partial_tu+(u\cdot\nabla)u+\nabla p=\nu\Delta u,
\qquad \nabla\cdot u=0,
\tag{BRP.1}
\]

and let \(X(a,t)\) be its material flow.  Put

\[
M=\nabla u,
\qquad F=D_aX,
\qquad
\mathsf C_{\rm VPI}:=\nabla(D_tu)
=-\nabla^2p+\nu\Delta M.
\tag{BRP.2}
\]

The two exact equations

\[
\dot F=M(X,t)F,
\qquad
D_tM+M^2=-\nabla^2p+\nu\Delta M
\tag{BRP.3}
\]

recombine without dropping pressure to give

\[
\boxed{\ddot F=\mathsf C_{\rm VPI}(X,t)F.}
\tag{BRP.4}
\]

Since \(\operatorname{tr}M=0\),

\[
\boxed{
\operatorname{tr}\mathsf C_{\rm VPI}
=-\Delta p
=\operatorname{tr}(M^2)
=|S|^2-\frac12|\omega|^2.}
\tag{BRP.5}
\]

For one infinitesimal same-label chord \(R=F\eta=\rho n\), define

\[
\alpha:=\frac{\dot\rho}{\rho}=n\cdot Sn,
\qquad
\beta:=(I-n\otimes n)Mn=\dot n.
\tag{BRP.6}
\]

Then (BRP.4) gives the exact VPI chord laws

\[
\boxed{
\ddot\rho
=\rho\bigl(|\beta|^2+n\cdot\mathsf C_{\rm VPI}n\bigr),
\qquad
\dot\alpha
=-\alpha^2+|\beta|^2+n\cdot\mathsf C_{\rm VPI}n.}
\tag{BRP.7}
\]

In the perfectly centered, no-wobble branch \(\beta=0\), this becomes

\[
n\cdot\mathsf C_{\rm VPI}n=\dot\alpha+\alpha^2.
\tag{BRP.8}
\]

The right side is not a positive charge for contraction.  Its endpoint term
can cancel its square term exactly.  That possibility is realized next.

## 2. Exact balanced transverse coasting

Fix a prospective time \(T\), write \(\tau=T-t\), and set

\[
A(t)=\operatorname{diag}
\left(-\frac1\tau,-\frac1\tau,\frac2\tau\right),
\qquad
u(t,x)=A(t)x,
\qquad
p(t,x)=-\frac{3x_3^2}{\tau^2}.
\tag{BRP.9}
\]

Then

\[
\operatorname{tr}A=0,
\qquad \omega=0,
\qquad \Delta u=0,
\tag{BRP.10}
\]

and direct differentiation gives

\[
\dot A+A^2
=\operatorname{diag}\left(0,0,\frac6{\tau^2}\right)
=-\nabla^2p.
\tag{BRP.11}
\]

Thus (BRP.9) is an exact global affine solution of the unforced differential
equation; viscosity vanishes on this first jet.  Starting at
\(t_0<T\), its deformation matrix is

\[
\boxed{
F(t,t_0)=\operatorname{diag}
\left(
\frac\tau{\tau_0},
\frac\tau{\tau_0},
\left(\frac{\tau_0}\tau\right)^2
\right),
\qquad \det F=1.}
\tag{BRP.12}
\]

Every transverse chord therefore remains exactly centered and keeps its
direction while shrinking linearly:

\[
\rho(t)=\rho(t_0)\frac\tau{\tau_0},
\qquad
\beta=0,
\qquad
\alpha=-\frac1\tau,
\qquad
\dot\alpha=-\frac1{\tau^2}=-\alpha^2.
\tag{BRP.13}
\]

Consequently

\[
\boxed{
n\cdot\mathsf C_{\rm VPI}n=0
\quad\text{for both transverse contracting directions}.}
\tag{BRP.14}
\]

The transverse rip-cord is coasting; it requires no inward radial curvature,
no wobble, and no loss of balance.  Incompressibility is paid simultaneously
by axial expansion, for which

\[
e_3\cdot\mathsf C_{\rm VPI}e_3=\frac6{\tau^2}.
\tag{BRP.15}
\]

The field (BRP.9) has infinite kinetic energy on \(\mathbb R^3\), so it is not
an admissible MPP history and proves no singular solution exists.  It does
prove a sharp local statement: the constitutive VPI law, incompressibility,
pressure, viscosity, zero vorticity, and exact no-wobble balance do **not**
imply a positive contracting-direction curvature bill.  Any same-label proof
must use the finite-energy collar/exterior or a joined history identity, not a
pointwise Riccati sign.  Because this calibration has zero vorticity, it does
not represent or exclude every vortical balanced rip-cord history; it only
falsifies a universal pointwise charge that was supposed to cover that branch.

## 3. The pressure trace is redistributed by a nonlocal quadrupole

Put

\[
q:=-\Delta p=\operatorname{tr}(M^2).
\tag{BRP.16}
\]

For a decaying whole-space field, the pressure Hessian has the exact
distributional decomposition

\[
\boxed{
(\nabla^2p)_{ij}(x)
=-\frac13q(x)\delta_{ij}
+\operatorname{p.v.}\!\int_{\mathbb R^3}
\frac{3z_i z_j-|z|^2\delta_{ij}}
{4\pi|z|^5}\,q(x-z)\,dz.}
\tag{BRP.17}
\]

The first term is the local isotropic trace.  The principal-value term is the
trace-free pressure quadrupole \((\nabla^2p)^\circ\), fixed by the entire same
velocity field.

For the balanced calibration,

\[
q=\frac6{\tau^2},
\qquad
-\frac13qI=-\frac2{\tau^2}I,
\qquad
(\nabla^2p)^\circ
=\frac1{\tau^2}\operatorname{diag}(2,2,-4).
\tag{BRP.18}
\]

The trace-free part cancels the local isotropic pressure Hessian in both
contracting directions.  In the expanding direction it has twice the
isotropic part's magnitude and the same sign, so the total axial Hessian has
three times the isotropic magnitude.  This is the exact pressure
redistribution that permits (BRP.14).

The affine field leaves the harmonic quadratic part undetermined because it
has no finite-energy exterior.  In an actual decaying field that part must be
made by the core defect, collar, and exterior through (BRP.17).  Indeed, for a
ball \(B_r(x_0)\), spherical cancellation of the kernel gives the exact split

\[
\boxed{
\begin{aligned}
(\nabla^2p)^\circ(x_0)
={}&\operatorname{p.v.}\!\int_{B_r(x_0)}
K(x_0-y)\,[q(y)-q(x_0)]\,dy\\
&+\int_{\mathbb R^3\setminus B_r(x_0)}
K(x_0-y)\,q(y)\,dy,
\end{aligned}}
\tag{BRP.19}
\]

where

\[
K_{ij}(z)=\frac{3z_i z_j-|z|^2\delta_{ij}}{4\pi|z|^5}.
\tag{BRP.20}
\]

If \(q\) is constant on the spherical core, the first line of (BRP.19)
vanishes exactly.  The anisotropic pressure needed by a balanced affine core
then comes entirely from the collar/exterior.  For a non-affine core the first
line is the precise internal trace-defect term; it cannot be replaced by the
scalar pressure trace.

Incompressibility actually gives the strong datum-finite pressure estimate

\[
\int_0^T\|(\nabla^2p)^\circ(t)\|_{L^1_x}\,dt
\leq C\int_0^T\|\nabla u(t)\|_2^2\,dt
\leq \frac{CK_0}{2\nu},
\tag{BRP.21}
\]

through the div--curl Hardy-space theorem.  The obstruction is therefore not
absence of a pressure budget.  It is the missing inverse-scale moment of that
budget.

## 4. Exact critical scaling of the unpaid pressure moment

Under the fixed-viscosity scaling

\[
u_r(t,x)=r^{-1}U(t/r^2,x/r),
\tag{BRP.22}
\]

the simultaneous quantities scale as

\[
M_r\sim r^{-2},
\qquad q_r\sim(\nabla^2p_r)^\circ
\sim\mathsf C_{{\rm VPI},r}\sim r^{-4}.
\tag{BRP.23}
\]

For a matched scale-\(r\) event carrying the amplitudes in (BRP.23) on a heat
window \(|I_r|\sim r^2\) and a core of volume \(m_r\),

\[
\int_{I_r}\int_{\mathrm{core}}
|S_r|^2\,dx\,dt
\sim\frac{m_r}{r^2},
\qquad
\int_{I_r}\int_{\mathrm{core}}
|(\nabla^2p_r)^\circ|\,dx\,dt
\sim\frac{m_r}{r^2}.
\tag{BRP.24}
\]

For a matched visible core, \(m_r\sim r^3\), both paid masses are \(O(r)\).
The critical first-moment upgrade is exactly

\[
\boxed{
\frac1r\int_{I_r}\int_{\mathrm{core}}
|(\nabla^2p_r)^\circ|\,dx\,dt
\sim\frac{m_r}{r^3}.}
\tag{BRP.25}
\]

Thus the inverse-scale pressure moment and the scale-normalized recruited-label
volume have the same critical size in this matched branch.  Scaling alone does
not identify them or prove that either controls the signed prefix; that
same-history bridge remains to be derived.

This remains true even under bounded unweighted no-recount.
Let \(A_j\) be material cohorts of volume \(m_j\), let
\(|I_j|\geq\theta r_j^2\), and suppose that on each
\(X(A_j,t)\), two orthogonal transverse no-wobble rates have magnitude at
least \(c r_j^{-2}\).  Volume preservation gives

\[
\int_{I_j}\int_{X(A_j,t)}|S|^2\,dx\,dt
\geq 2c^2\theta\frac{m_j}{r_j^2}.
\tag{BRP.26}
\]

If these material spacetime regions have multiplicity at most \(L\), the
energy identity proves only

\[
\boxed{
\sum_j\frac{m_j}{r_j^2}
\leq\frac{LK_0}{8c^2\theta\nu}.}
\tag{BRP.27}
\]

It does not prove the corresponding scale-weighted bound

\[
\boxed{\sum_j\frac{m_j}{r_j^3}<\infty.}
\tag{BRP.28}
\]

The distinction is sharp at the level of the paid hypotheses: with
\(r_j=2^{-j}\) and disjoint shrinking cohorts \(m_j=r_j^3\),

\[
\sum_j\frac{m_j}{r_j^2}=\sum_jr_j<\infty,
\qquad
\sum_j\frac{m_j}{r_j^3}=\sum_j1=\infty.
\tag{BRP.29}
\]

This sequence is an implication test, not a Navier--Stokes history.  It shows
exactly why incompressibility and multiplicity-one ancestry do not manufacture
the inverse length lost when the visible label volume shrinks like \(r^3\).

## 5. Recruited membership and the no-recount identity

For a smooth moving selector \(\chi_j\), define its material membership

\[
\vartheta_j(a,t):=\chi_j(t,X(a,t)).
\tag{BRP.30}
\]

Then

\[
\partial_t\vartheta_j(a,t)
=(\partial_t\chi_j+u\cdot\nabla\chi_j)(X(a,t),t),
\tag{BRP.31}
\]

and volume preservation gives the exact total-variation identity

\[
\boxed{
\int da\,\operatorname{Var}_{I_j}\vartheta_j(a,\cdot)
=\int_{I_j}\int
|\partial_t\chi_j+u\cdot\nabla\chi_j|\,dx\,dt.}
\tag{BRP.32}
\]

Without the absolute value, the same expression is only the endpoint volume
difference.  For the complementary selector \(1-\chi_j\), it has the opposite
sign.  Therefore core and complement cancel exactly before positive
selection, while separate positive recruitment accounts count the same
crossing twice.

More precisely, let
\(\chi_r(t,x)=\widetilde\chi(t/r^2,x/r)\) be a nontrivial recruited selector in a
scale-\(r\) velocity profile.  Then

\[
D_t\chi_r
=r^{-2}(\partial_\tau\widetilde\chi+U\cdot\nabla_y\widetilde\chi),
\qquad
\int_{I_r}\int|D_t\chi_r|\,dx\,dt
=r^3\iint|\partial_\tau\widetilde\chi
+U\cdot\nabla_y\widetilde\chi|\,dy\,d\tau.
\tag{BRP.33}
\]

When the rescaled membership variation on the right is nonzero and order one,
the dimensionless recruited-label count is therefore

\[
\boxed{
r^{-3}\int_{I_r}\int|D_t\chi_r|\,dx\,dt\sim1.}
\tag{BRP.34}
\]

No datum-finite bound on the sum of (BRP.34) follows from (BRC.11),
(BRC.26), or (BRP.21).  A signed theorem would have to retain this membership
term with its complement and the pressure--viscous collar until cancellation;
absolute regional ownership cannot be used.

## 6. Pressure and viscosity do not become small at the collar

Localization confirms the same boundary.  For a matched selector \(\chi_r\),

\[
\boxed{
\chi\nabla^2p
=\nabla^2(\chi p)
-p\nabla^2\chi
-\nabla\chi\otimes\nabla p
-\nabla p\otimes\nabla\chi,}
\tag{BRP.35}
\]

and

\[
\boxed{
\chi\Delta M
=\Delta(\chi M)
-2\sum_k(\partial_k\chi)(\partial_kM)
-(\Delta\chi)M.}
\tag{BRP.36}
\]

At scale \(r\),

\[
p\sim r^{-2},\quad \nabla p\sim r^{-3},\quad
\nabla^2p\sim r^{-4},\quad
M\sim r^{-2},\quad\nabla M\sim r^{-3},\quad\Delta M\sim r^{-4},
\tag{BRP.37}
\]

while \(\nabla\chi_r\sim r^{-1}\) and
\(\nabla^2\chi_r\sim r^{-2}\).  Every commutator in (BRP.35)--(BRP.36) is
therefore \(O(r^{-4})\), exactly the order of the principal VPI curvature.
They cancel with the complementary selector but are not a lower-order error.

## 7. Sharp result for the balanced branch

The direct attack proves the following exact boundary.

\[
\boxed{
\begin{aligned}
&\text{Perfect balance and no wobble do not force a radial curvature bill;}\\
&\text{transverse contraction can coast while pressure trace is redistributed}\\
&\text{through the same field's trace-free pressure quadrupole;}\\
&\text{the datum pays its unweighted spacetime mass, but the critical theorem}\\
&\text{requires one additional inverse length;}\\
&\text{on a recruited core this missing quantity is }m_r/r^3,
\text{ not }m_r/r^2.
\end{aligned}}
\tag{BRP.38}
\]

Accordingly, the smallest unresolved material statement exposed by this
attack is either a datum-finite bound on the actual response-carrying
history's scale-normalized recruited occupancy, a datum-finite inverse-scale
joined pressure--viscous service which is proved to dominate it, or a signed
adjacent-scale cancellation that removes the moment before positive
localization.  These are route-specific candidate realizations of
(UAL.97)--(UAL.98), not a fourth substitute theory and not yet an equivalence
with `(TIR.37a)`.

Nothing in this note proves that the dyadic implication test is dynamically
realizable by one datum.  Conversely, nothing in the already paid energy,
Hardy-pressure, unweighted ancestry, or fixed-threshold source budgets excludes
it.  This balanced material attack stops at the scale-weighted joined-history
term; the bridge from that term to the signed datum-to-prefix theorem
`(TIR.37a)` is also unproved.  The MPP closure therefore remains open.
