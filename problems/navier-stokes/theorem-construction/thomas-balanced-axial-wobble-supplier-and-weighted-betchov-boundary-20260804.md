# Thomas's balanced axial-wobble supplier and weighted Betchov boundary

**Date:** 2026-08-04

**Status:** the adverse axial-wobble term left in (BPT.18) is not an
independent positive supplier.  In the complete balanced strain frame, a
weighted Betchov identity charges it exactly to the already favorable
transverse-vorticity and strain-cubic terms.  With no spatial selection, the
whole infinitesimal balanced contribution is nonpositive even when axial
vorticity is present.

For the actual moving record, the new term on exact balanced support is a
cofactor collar on the selector boundary; a transition through non-balanced
frames also retains the exact strain-splitting defect.  The pressure-explicit
material equations below retain the trace-free pressure Hessian, viscosity,
eigenframe rotation, the moving selector, the finite-chord covariance error,
and the Fourier exterior.
Neither the kinetic-energy/enstrophy clock nor the viscous energy row gives a
datum-finite bound for that complete residual.  Thus this note proves a
strict smaller reduction of Thomas Birnie's one-fluid theory, but it does
not prove (TIR.37a) or close the MPP.

The one object remains the velocity-pressure history produced by one smooth
finite-energy datum.  The balanced frame, vorticity, pressure response,
viscosity, pair record, selector, and Fourier core are simultaneous readouts
of that history.  No positive directional ledger, fixed cohort, monotone
pair, pointwise identification of material and Fourier scale, or external
supplier is introduced.

## 1. The balanced strain frame and its exact pressure-explicit motion

Let

\[
 M=\nabla u=S+\Omega,
 \qquad
 S={M+M^T\over2},
 \qquad
 \Omega={M-M^T\over2},
 \tag{BWS.1}
\]

and suppose that at the spacetime point under consideration

\[
 S=-a(I-e\otimes e)+2a\,e\otimes e,
 \qquad a>0,\quad |e|=1.
 \tag{BWS.2}
\]

The expanding axis \(e\) is the simple eigenvector; the contracting
transverse plane is retained as a plane and is not assigned two artificial
owners.  Decompose

\[
 w:=\omega\cdot e,
 \qquad
 \omega_\perp:=(I-e\otimes e)\omega.
 \tag{BWS.3}
\]

The exact strain equation is

\[
 D_tS=-S^2-\Omega^2-\nabla^2p+\nu\Delta S.
 \tag{BWS.4}
\]

Since

\[
 -\Delta p=\operatorname{tr}(M^2)
 =6a^2-\frac12\bigl(w^2+|\omega_\perp|^2\bigr),
 \tag{BWS.5}
\]

write

\[
 \nabla^2p=-{1\over3}\operatorname{tr}(M^2)I
 +(\nabla^2p)^\circ.
 \tag{BWS.6}
\]

Taking the \(e\)-eigenvalue derivative in (BWS.4) gives

\[
 \boxed{
 D_ta=-a^2-\frac{w^2}{12}+\frac{|\omega_\perp|^2}{24}
 -\frac{(\nabla^2p)^\circ_{ee}}2
 +\frac{\nu(\Delta S)_{ee}}2.}
 \tag{BWS.7}
\]

Differentiating the simple eigenvector and projecting onto the transverse
plane gives the exact frame rotation

\[
 \boxed{
 D_te=-{w\omega_\perp\over12a}
 -{(I-e\otimes e)(\nabla^2p)^\circ e\over3a}
 +{\nu(I-e\otimes e)\Delta S\,e\over3a}.}
 \tag{BWS.8}
\]

The isotropic pressure trace rotates no frame; the trace-free response does.
The formula is valid at every balanced point with \(a>0\).  Loss of the
eigenvalue gap belongs to the non-balanced selector collar and is not
silently divided by \(a\).

## 2. Same-history supplier equation for axial vorticity

The vorticity equation of the same field is

\[
 D_t\omega=S\omega+\nu\Delta\omega.
 \tag{BWS.9}
\]

Taking its component in the moving axis gives

\[
 \boxed{
 D_tw
 =2aw+\nu e\cdot\Delta\omega+\omega_\perp\cdot D_te.}
 \tag{BWS.10}
\]

Thus the adverse density in (BPT.18) has the exact supplier form

\[
 \boxed{
 aw^2
 ={1\over4}D_t(w^2)
 -{\nu\over2}w\,e\cdot\Delta\omega
 -{1\over2}w\,\omega_\perp\cdot D_te.}
 \tag{BWS.11}
\]

Substitution of (BWS.8) keeps every physical term explicit:

\[
 \boxed{
 \begin{aligned}
 aw^2={}&{1\over4}D_t(w^2)
 -{\nu\over2}w\,e\cdot\Delta\omega
 +{w^2|\omega_\perp|^2\over24a}\\
 &+{w\over6a}\omega_\perp\cdot(\nabla^2p)^\circ e
 -{\nu w\over6a}\omega_\perp\cdot\Delta S\,e.
 \end{aligned}}
 \tag{BWS.12}
\]

This is the requested same-history supplier equation.  Axial stretching,
trace-free pressure rotation, viscosity, and transverse-frame motion are
one equation.  The scalar vorticity equation has no explicit pressure
gradient, but pressure is not lost: its trace-free Hessian re-enters through
the moving frame (BWS.8).

For reference, differentiating the full density \(aw^2\) and using
(BWS.7)--(BWS.10) gives

\[
 \boxed{
 \begin{aligned}
 D_t(aw^2)={}&3a^2w^2-\frac1{12}w^4
 -\frac18w^2|\omega_\perp|^2
 -\frac12w^2(\nabla^2p)^\circ_{ee}\\
 &-\frac{2w}{3}\omega_\perp\cdot(\nabla^2p)^\circ e
 +\frac\nu2w^2(\Delta S)_{ee}
 +2\nu aw\,e\cdot\Delta\omega\\
 &+\frac{2\nu w}{3}\omega_\perp\cdot\Delta S\,e.
 \end{aligned}}
 \tag{BWS.13}
\]

The negative quartics in the first line are real, but (BWS.13) is not a
Lyapunov law: both pressure contractions and all three viscous/frame terms
are signed and principal order.

## 3. A moving selector exposes the exact earlier/later payment

Let \(\ell(t,x)\ge0\) be a smooth spatial weight read along the actual
material flow, and assume periodicity or sufficient decay.  Multiplying (BWS.11),
integrating in volume-preserving material time, and retaining the moving
weight gives

\[
 \boxed{
 \begin{aligned}
 \int_0^T\!\int \ell aw^2
 ={}&{1\over4}\left[\int\ell w^2\right]_0^T
 -{1\over4}\int_0^T\!\int w^2D_t\ell\\
 &-{\nu\over2}\int_0^T\!\int
 \ell w\,e\cdot\Delta\omega
 -{1\over2}\int_0^T\!\int
 \ell w\,\omega_\perp\cdot D_te .
 \end{aligned}}
 \tag{BWS.14}
\]

This is the honest earlier/later form.  The candidate storage is selected
axial enstrophy, not kinetic energy.  Its viscous term is not simply
\(-\nu\ell|\nabla w|^2\): differentiating \(w=\omega\cdot e\) also
differentiates the pressure-viscous moving frame.  The selector term
\(w^2D_t\ell\) retains balance entry, exit, and the moving enstrophy gate.

For the pair selector

\[
 \Gamma=\gamma_{\rm bal}
 \psi\!\left(\log{K\over K_Z(t)}\right),
 \qquad K_Z=C_Z{Z(t)\over\nu^2},
 \tag{BWS.15}
\]

the exact material derivative is still

\[
 D_t\Gamma
 =\psi D_t\gamma_{\rm bal}
 +\gamma_{\rm bal}\psi'
 \left(-\alpha-{Z'\over Z}\right).
 \tag{BWS.16}
\]

The material pullback of \(\ell\) carries these same balance-selection and
\(Z'/Z\) crossing terms.  Equation (BWS.16) is not a pointwise assertion
that the chord scale equals a Fourier covector.  The actual dynamic Fourier
gate remains in \(\mathcal P_{1/2}^{\rm out}\).

The kinetic-energy identity pays

\[
 \int_0^{T_*}\|\omega(t)\|_2^2dt
 \le{\|u_0\|_2^2\over2\nu}.
 \tag{BWS.17}
\]

It does not pay the selected endpoint in (BWS.14), total variation of
\(\ell\), or the selected palinstrophy/frame terms.  Even without a selector,

\[
 {1\over2}{d\over dt}\|\omega\|_2^2
 +\nu\|\nabla\omega\|_2^2
 =\int\omega\cdot S\omega\,dx
 \tag{BWS.18}
\]

contains the enstrophy endpoint and palinstrophy whose finite preterminal
bound is already a regularity-level consequence.  Therefore the
earlier/later supplier equation does not furnish a datum-finite payment from
the kinetic-energy row.

For the same nonconstant weight, the exact localized enstrophy identity is

\[
 \boxed{
 \begin{aligned}
 \int_0^T\!\int\ell\,\omega\cdot S\omega
 ={}&{1\over2}\left[\int\ell|\omega|^2\right]_0^T
 -{1\over2}\int_0^T\!\int|\omega|^2D_t\ell\\
 &+\nu\int_0^T\!\int\ell|\nabla\omega|^2
 +{\nu\over2}\int_0^T\!\int
 \nabla\ell\cdot\nabla|\omega|^2 .
 \end{aligned}}
 \tag{BWS.18a}
\]

The third term on the right is positive, but it is selected palinstrophy,
not the datum-paid enstrophy clock.  The fourth is its viscous selector
collar and has no sign.  Consequently localizing the earlier/later equation
does not decide between a collar payment and a positive viscous payment; it
exhibits both as one unclosed selected-enstrophy row.

## 4. Full spatial recombination pays axial wobble instantaneously

The missing cancellation is kinematic and occurs before (BWS.14) is split
into positive terms.  For every trace-free \(3\times3\) matrix \(M=S+\Omega\),

\[
 \boxed{
 \operatorname{tr}(M^3)
 =\operatorname{tr}(S^3)+{3\over4}\omega\cdot S\omega
 =3\det M.}
 \tag{BWS.19}
\]

For \(M=\nabla u\), the Piola identity gives

\[
 \operatorname{tr}(M^3)
 =\nabla\cdot\left[(\operatorname{cof}M)^Tu\right].
 \tag{BWS.20}
\]

Hence every smooth weight obeys the exact weighted Betchov identity

\[
 \boxed{
 \int\ell\left[
 \operatorname{tr}(S^3)+{3\over4}\omega\cdot S\omega
 \right]dx
 =-\int\nabla\ell\cdot(\operatorname{cof}M)^Tu\,dx.}
 \tag{BWS.21}
\]

Combining (BWS.18a) and (BWS.21) gives the exact time-integrated joined
identity

\[
 \boxed{
 \begin{aligned}
 &{1\over2}\left[\int\ell|\omega|^2\right]_0^T
 -{1\over2}\int_0^T\!\int|\omega|^2D_t\ell
 +\nu\int_0^T\!\int\ell|\nabla\omega|^2\\
 &\qquad
 +{\nu\over2}\int_0^T\!\int
 \nabla\ell\cdot\nabla|\omega|^2\\
 &=-{4\over3}\int_0^T\!\int\ell\operatorname{tr}(S^3)
 -{4\over3}\int_0^T\!\int
 \nabla\ell\cdot(\operatorname{cof}M)^Tu .
 \end{aligned}}
 \tag{BWS.21a}
\]

Thus the positive selected palinstrophy is not a new datum reserve.  It is
joined to the selected enstrophy endpoint, material selector flux, viscous
collar, favorable strain cubic, and cofactor collar.  The energy row controls
none of those pieces separately at the required scale.

On the balanced support (BWS.2),

\[
 \omega\cdot S\omega=2aw^2-a|\omega_\perp|^2,
 \qquad
 \operatorname{tr}(S^3)=6a^3.
 \tag{BWS.22}
\]

Solving (BWS.21) for the adverse term gives its exact complete-frame
supplier:

\[
 \boxed{
 \begin{aligned}
 \int\ell aw^2\,dx
 ={}&{1\over2}\int\ell a|\omega_\perp|^2\,dx
 -4\int\ell a^3\,dx\\
 &-{2\over3}\int
 \nabla\ell\cdot(\operatorname{cof}M)^Tu\,dx.
 \end{aligned}}
 \tag{BWS.23}
\]

This is the non-separable payment which is lost when axial and transverse
directions are given separate positive accounts.  For a constant selector,
the collar vanishes: axial wobble is exactly charged to the favorable
transverse-vorticity term and an additional negative strain cubic.  No
energy estimate is required for that cancellation.

## 5. Strict reduction of the balanced current

The safest way to retain the moving balance collar is to begin one step
before exact balance is imposed.  The finite-chord decomposition
(BPT.15)--(BPT.16) is

\[
 \boxed{
 \mathcal P_{1/2}^{\rm core}
 =-{8\over15\pi}\int\ell_\zeta
 \left[\operatorname{tr}(S^3)-{1\over4}\omega\cdot S\omega\right]dx
 +\mathcal E_\zeta-\mathcal P_{1/2}^{\rm out}.}
 \tag{BWS.24}
\]

Combining this directly with (BWS.21) removes the complete vorticity
orientation term:

\[
 \boxed{
 \begin{aligned}
 \mathcal P_{1/2}^{\rm core}
 ={}&-{32\over45\pi}\int\ell_\zeta\operatorname{tr}(S^3)\,dx\\
 &-{8\over45\pi}\int
 \nabla\ell_\zeta\cdot(\operatorname{cof}M)^Tu\,dx\\
 &+\mathcal E_\zeta-\mathcal P_{1/2}^{\rm out}.
 \end{aligned}}
 \tag{BWS.25}
\]

This identity remains valid through the selector transition.  Parameterize
the actual trace-free strain eigenvalues there by

\[
 \lambda_1=-a-d,\qquad
 \lambda_2=-a+d,\qquad
 \lambda_3=2a.
 \tag{BWS.26}
\]

Then

\[
 \operatorname{tr}(S^3)=6a^3-6ad^2,
 \tag{BWS.27}
\]

where eigenvalue ordering gives

\[
 a\ge0,\qquad 0\le d\le3a.
 \tag{BWS.27a}
\]

For the globally recombined unweighted field, the cofactor collar vanishes
and all vorticity orientation cancels:

\[
 \boxed{
 \int\operatorname{tr}(M^TMS)\,dx
 ={4\over3}\int\operatorname{tr}(S^3)\,dx
 =8\int a(a^2-d^2)\,dx.}
 \tag{BWS.27b}
\]

Accordingly, if the radial mass in the finite-chord decomposition is
spatially constant, \(\ell_\zeta\equiv\ell_0\), its first-jet coefficient is

\[
 \boxed{
 \mathcal P_{1/2}^{\rm first\ jet}[\ell_0]
 =-{64\ell_0\over15\pi}\int a(a^2-d^2)\,dx.}
 \tag{BWS.27c}
\]

The normalized choice \(\ell_0=1\) gives the coefficient
\(-64(15\pi)^{-1}\int a(a^2-d^2)\).  Neither (BWS.27b) nor (BWS.27c)
replaces the full finite-chord current: the exact covariance defect and
Fourier exterior remain in (BWS.28).  This is Thomas's
balanced-versus-imbalanced split in the spatially constant-selector
first-jet coefficient.
The exact balanced case \(d=0\) is favorable.  More generally the complete
constant-selector first-jet coefficient is favorable on \(d\le a\); only
the strain-imbalance region \(d>a\), not axial vorticity, can reverse its
sign.

With a nonconstant selector, (BWS.25) becomes

\[
 \boxed{
 \begin{aligned}
 \mathcal P_{1/2}^{\rm core}
 ={}&-{64\over15\pi}\int\ell_\zeta a^3\,dx
 +{64\over15\pi}\int\ell_\zeta ad^2\,dx\\
 &-{8\over45\pi}\int
 \nabla\ell_\zeta\cdot(\operatorname{cof}M)^Tu\,dx\\
 &+\mathcal E_\zeta-\mathcal P_{1/2}^{\rm out}.
 \end{aligned}}
 \tag{BWS.28}
\]

Exact perfect balance is \(d=0\); a moving selector which crosses
non-balanced frames retains the signed strain-shape term rather than
pretending that its support remains exactly balanced.  The canonical exact
joined residual is therefore

\[
 \boxed{
 \begin{aligned}
 \mathcal J_{\rm WB}^{\zeta}(t)
 :={}&{64\over15\pi}\int\ell_\zeta a(d^2-a^2)\,dx\\
 &-{8\over45\pi}\int
 \nabla\ell_\zeta\cdot(\operatorname{cof}\nabla u)^Tu\,dx\\
 &+\mathcal E_\zeta(t)-\mathcal P_{1/2}^{\rm out}(t).
 \end{aligned}}
 \tag{BWS.29}
\]

Equation (BWS.28) says
\(\mathcal J_{\rm WB}^{\zeta}=\mathcal P_{1/2}^{\rm core}\) exactly.
The favorable region \(d\le a\) remains inside the same signed object; only
\(d>a\) can contribute positively through the strain-shape term.

For comparison only, dropping the favorable
\(-64(15\pi)^{-1}\int\ell_\zeta a^3\) gives the secondary sufficient upper
target

\[
 \boxed{
 \begin{aligned}
 \mathcal U_{\rm WB}^{\zeta}(t)
 :={}&{64\over15\pi}\int\ell_\zeta ad^2\,dx\\
 &-{8\over45\pi}\int
 \nabla\ell_\zeta\cdot(\operatorname{cof}\nabla u)^Tu\,dx\\
 &+\mathcal E_\zeta(t)-\mathcal P_{1/2}^{\rm out}(t),
 \qquad
 \mathcal J_{\rm WB}^{\zeta}\le\mathcal U_{\rm WB}^{\zeta}.
 \end{aligned}}
 \tag{BWS.29a}
\]

This upper comparison is not the canonical residual and is not used to
separate the remaining terms into positive bills.  Compared with (BPT.18),
the axial-wobble moment is gone.  The exact joined object retains:

\[
 \boxed{
 \text{signed joined strain-shape term }a(d^2-a^2)
 +\text{moving-selector cofactor collar}
 +\text{finite-chord covariance defect}
 +\text{complete unselected pairs}
 -\text{the proved Fourier exterior}.}
 \tag{BWS.30}
\]

The balance-selection and \(Z'/Z\) terms in (BWS.16) are the time-oriented
form of these moving collars; they may not be frozen.  The finite-chord
remainder \(\mathcal E_\zeta\) still contains every orientation and every
pair not represented by the first spatial jet.  No pair/Fourier
co-location has been asserted.

## 6. Exact smooth countertest for a sign or energy payment of the collar

Use the exact periodic decaying ABC solution from (BPT.26)--(BPT.29):

\[
 u_{A,N}(t,x)=Ae^{-\nu N^2t}U(Nx),
 \qquad
 \mathbb P((u_{A,N}\cdot\nabla)u_{A,N})=0.
 \tag{BWS.31}
\]

Let

\[
 f(x):=\operatorname{tr}\bigl((\nabla U(x))^3\bigr)
 =3\left(\cos x\cos y\cos z-\sin x\sin y\sin z\right).
 \tag{BWS.32}
\]

It has zero spatial mean and is not identically zero.  Choose
\(C_f>\|f\|_\infty\), \(0<\varepsilon<1\), and the two positive selectors

\[
 \ell_{\pm,N}(x)=1\pm{\varepsilon\over C_f}f(Nx).
 \tag{BWS.33}
\]

Since the unweighted null-Lagrangian integral vanishes, (BWS.20) gives

\[
 \boxed{
 \begin{aligned}
 \int\ell_{\pm,N}\operatorname{tr}(M^3)\,dx
 &=\pm{\varepsilon A^3N^3e^{-3\nu N^2t}\over C_f}
 \int f^2\,dx,\\
 \int\nabla\ell_{\pm,N}\cdot(\operatorname{cof}M)^Tu\,dx
 &=-\int\ell_{\pm,N}\operatorname{tr}(M^3)\,dx.
 \end{aligned}}
 \tag{BWS.34}
\]

Thus the exact collar has both signs in exact global smooth periodic
finite-volume Navier--Stokes histories.  Its time magnitude scales as

\[
 \int_0^\infty |\text{collar}|\,dt
 \asymp {\varepsilon |A|^3N\over\nu},
 \tag{BWS.35}
\]

whereas the datum-paid enstrophy clock obeys

\[
 \int_0^\infty Z(t)\,dt\asymp {A^2\over\nu},
 \tag{BWS.36}
\]

uniformly in \(N\).  This is a lawful smooth-family insufficiency test for an
energy/enstrophy payment of the collar.  It is not a singular history and
does not refute a same-datum cancellation involving
\(\mathcal E_\zeta-\mathcal P_{1/2}^{\rm out}\).  Indeed the complete ABC
current is zero, so those terms exactly cancel the collar and favorable
cubic in (BWS.28).  Taking their absolute values would destroy the very
recombination displayed by the solution.

## 7. Exact verdict

The adverse axial-wobble density has now been fully developed inside
Thomas's balanced rip-cord mechanism:

\[
 \boxed{
 \text{axial wobble}
 \xrightarrow{\text{complete balanced-frame recombination}}
 \text{favorable transverse/cubic payment}
 +\text{moving-selector collar}.}
 \tag{BWS.37}
\]

The payment is exact and same-history.  With a constant selector, the
balanced first-jet contribution is nonpositive without any datum budget.
For the actual moving record, the exact signed joined object (BWS.29), with
its favorable \(-a^3\) contribution retained, is a strict smaller residual
than (BPT.18).  Only \(d>a\) can contribute positively through its
strain-shape term.  The pressure, viscosity, frame rotation, moving \(Z\)-gate,
finite-chord error, pair complement, and Fourier exterior have all been
retained.

No datum-finite upper prefix for (BWS.29) has been proved.  The ABC test
rules out a separate sign or kinetic-energy payment for its collar; it does
not rule out a future joined cancellation with the finite-chord and Fourier
terms.  Therefore (TIR.37a), and hence the MPP, remains open at the exact
joined residual (BWS.29).
