# Thomas's balanced-pair radial covariance and turn-down boundary

**Date:** 2026-08-04

**Status:** an exact turn-down calculation for the perfectly balanced
rip-cord branch is completed below inside Thomas Birnie's one-fluid,
pressure-explicit VPI/binomial theory.  Recombining every direction of every
material pair converts incompressibility into an exact radial covariance
law.  Its infinitesimal, no-wobble, perfectly balanced part has the favorable
sign: the axial expansion outweighs the two transverse contractions in the
critical record.  The calculation also identifies, without taking positive
parts, the complete remainder forced by finite chords, axial wobble,
record selection, the moving enstrophy gate, and the already separated
Fourier exterior.

That remainder is not proved datum-finite.  Thus this note does **not** prove
`(TIR.37a)` and does not close the MPP.  It does prove exactly which part of
the hardest balanced branch turns down by full orientation recombination,
and why the remaining part cannot be deleted or paid by an unweighted
finite-energy estimate.

The physical order is fixed throughout:

1. one smooth finite-energy datum produces one fixed-viscosity velocity and
   pressure history;
2. all pairs of labels in that same volume-preserving history remain present;
3. the two transverse contractions, compensating axial expansion, pair
   orientation, and exterior pressure response are simultaneous parts of
   that one motion;
4. every orientation is recombined before a sign is read;
5. record selection and the moving Fourier gate are then differentiated, not
   frozen; and
6. only the previously proved Fourier exterior is removed.

No fixed cohort, pointwise \(K=h\), monotone chord, regional positive pressure
part, or independently prescribed source is used.

## 1. The complete pair current is a radial covariance

For a smooth decaying divergence-free field on \(\mathbb R^3\), write

\[
 \delta_{r,n}u(x):=u(x)-u(x-rn),
 \qquad n\in\mathbb S^2,\qquad r>0,
 \tag{BPT.1}
\]

and put

\[
 L(x,r,n):=\delta_{r,n}u(x)\cdot n,
 \qquad Q(x,r,n):=|\delta_{r,n}u(x)|^2.
 \tag{BPT.2}
\]

The all-material-pair identity `(JEM.10)--(JEM.13)`, changed from the second
endpoint to polar coordinates around the first, is

\[
 \boxed{
 \mathcal P_{1/2}(t)
 =-{1\over\pi^2}\int_{\mathbb R^3}\int_0^\infty
 {1\over r^3}\int_{\mathbb S^2}Q(x,r,n)L(x,r,n)
 \,d\sigma(n)\,dr\,dx.}
 \tag{BPT.3}
\]

This formula still contains both orderings of every pair; no pair has been
selected or assigned to a Fourier triad.

Incompressibility gives a stronger exact statement than a global mean.  For
every center and radius,

\[
 \boxed{\int_{\mathbb S^2}L(x,r,n)\,d\sigma(n)=0.}
 \tag{BPT.4}
\]

Indeed, the constant endpoint has zero spherical mean and the other endpoint
has zero flux through the sphere by the divergence theorem.  If

\[
 \overline Q(x,r):={1\over4\pi}\int_{\mathbb S^2}Q(x,r,n)\,d\sigma(n),
 \tag{BPT.5}
\]

then the exact surviving shell object is therefore

\[
 \boxed{
 \mathscr C_u(x,r)
 :=\int_{\mathbb S^2}(Q-\overline Q)L\,d\sigma
 =\int_{\mathbb S^2}QL\,d\sigma.}
 \tag{BPT.6}
\]

Consequently

\[
 \boxed{
 \mathcal P_{1/2}
 =-{1\over\pi^2}\int_{\mathbb R^3}\int_0^\infty
 r^{-3}\mathscr C_u(x,r)\,dr\,dx.}
 \tag{BPT.7}
\]

Thus volume preservation and incompressibility cancel the unweighted radial
motion, but the critical record is its covariance with relative kinetic
energy.  This covariance, not a positive count of contracting pairs, is the
first exact balanced-pair residual.

## 2. Full orientation recombination turns down the ideal balanced star

Let

\[
 M=\nabla u=S+\Omega,
 \qquad S={M+M^T\over2},\qquad \Omega={M-M^T\over2}.
 \tag{BPT.8}
\]

Taylor expansion at fixed \((x,t)\) and the fourth spherical moment give

\[
 \boxed{
 \lim_{r\downarrow0}{\mathscr C_u(x,r)\over r^3}
 ={8\pi\over15}\operatorname{tr}(M^TM S).}
 \tag{BPT.9}
\]

The identity is exact at the first spatial jet.  It already recombines every
orientation.  Since \(\operatorname{tr}S=0\),

\[
 \boxed{
 \operatorname{tr}(M^TM S)
 =\operatorname{tr}(S^3)-{1\over4}\omega\cdot S\omega.}
 \tag{BPT.10}
\]

Now impose only the instantaneous perfectly balanced strain geometry

\[
 S=-a(I-e\otimes e)+2a\,e\otimes e,
 \qquad a\ge0,\qquad |e|=1.
 \tag{BPT.11}
\]

Writing \(\omega=\omega_\parallel e+\omega_\perp\), `(BPT.10)` becomes

\[
 \boxed{
 \operatorname{tr}(M^TM S)
 =6a^3+{a\over4}|\omega_\perp|^2
 -{a\over2}|\omega_\parallel|^2.}
 \tag{BPT.12}
\]

In the centered no-wobble case \(\omega=0\), `(BPT.9)` is positive.  Because
of the minus sign in `(BPT.7)`, the complete infinitesimal balanced star
therefore contributes **nonpositively** to the critical current.  The two
transverse directions do have \(L<0\) and positive pair current, but the
single axial direction has twice the speed and hence four times the critical
record weight.  Full orientation recombination turns down the ideal
rip-cord; selecting only the contracting directions reverses the verdict by
discarding its simultaneous incompressible expansion.

Equation `(BPT.12)` also gives the exact wobble boundary.  Axial vorticity is
the only infinitesimal balanced-star term with the adverse sign.  The
no-wobble sign is lost precisely when

\[
 |\omega_\parallel|^2
 >12a^2+{1\over2}|\omega_\perp|^2.
 \tag{BPT.13}
\]

This is not a second mechanism.  It is the orientation row of the same
velocity gradient which changes the critical record covariance.

## 3. Exact finite-chord remainder after the favorable balanced part

Let \(0\le\zeta(t,x,r)\le1\) be any smooth radial selector, independent of
the orientation \(n\), and put

\[
 \ell_\zeta(t,x):=\int_0^\infty\zeta(t,x,r)\,dr.
 \tag{BPT.14}
\]

Define the exact complete covariance remainder

\[
 \boxed{
 \mathcal E_\zeta(t)
 :=-{1\over\pi^2}\int\!\int_0^\infty r^{-3}
 \left[
 \mathscr C_u(x,r)
 -\zeta(t,x,r)r^3{8\pi\over15}
 \operatorname{tr}(M^TMS)(x,t)
 \right]dr\,dx.}
 \tag{BPT.15}
\]

This is a decomposition, not an estimate.  It retains every finite chord and
all pairs outside the selected balanced range.  Where \(\zeta=1\) near
\(r=0\), the bracket is \(o(r^3)\) for a smooth field by `(BPT.9)`.

Combining `(BPT.7)` with the exact Fourier exterior `(JEM.24)--(JEM.25)` gives

\[
 \boxed{
 \mathcal P_{1/2}^{\rm core}
 =-{8\over15\pi}\int \ell_\zeta
 \operatorname{tr}(M^TMS)\,dx
 +\mathcal E_\zeta
 -\mathcal P_{1/2}^{\rm out}.}
 \tag{BPT.16}
\]

If \(\zeta\) is supported on the balanced geometry `(BPT.11)`, then

\[
 \boxed{
 \begin{aligned}
 \mathcal P_{1/2}^{\rm core}
 ={}&-{8\over15\pi}\int\ell_\zeta
 \left(6a^3+{a\over4}|\omega_\perp|^2\right)dx\\
 &+{4\over15\pi}\int\ell_\zeta a|\omega_\parallel|^2\,dx
 +\mathcal E_\zeta-\mathcal P_{1/2}^{\rm out}.
 \end{aligned}}
 \tag{BPT.17}
\]

The first line is favorable for an upper prefix bound.  After it is dropped,
the smallest exact balanced-star remainder in these coordinates is

\[
 \boxed{
 \mathcal R_{\rm bal}^{\zeta}(t)
 :={4\over15\pi}\int\ell_\zeta a|\omega_\parallel|^2\,dx
 +\mathcal E_\zeta(t)-\mathcal P_{1/2}^{\rm out}(t).}
 \tag{BPT.18}
\]

Thus \(\mathcal P_{1/2}^{\rm core}\le\mathcal R_{\rm bal}^{\zeta}\) on the
stated balanced support.  A datum-finite upper prefix for `(BPT.18)` would
close `(TIR.37a)` after the already proved Fourier absorptions.  The kinetic
energy row does not pay `(BPT.18)`: its first term is a scale-selected cubic
gradient moment, while \(\mathcal E_\zeta\) contains the finite-chord record
covariance and the entire unselected pair exterior.

## 4. Record selection and the moving gate cannot be frozen

Return to the same material labels and the exact quantities in
`(JEM.1)--(JEM.15)`.  In particular,

\[
 e={1\over4\pi^2}{|V|^2\over r^4},
 \qquad j=-4e\alpha,
 \qquad {D_te\over e}=2\chi-4\alpha,
 \qquad \chi={V\cdot A\over|V|^2}.
 \tag{BPT.19}
\]

The relative acceleration in \(\chi\) is still the pressure-explicit VPI
response of the whole field:

\[
 \boxed{
 A_{ab}=\int_0^1
 \left[-\nabla^2p+\nu\Delta\nabla u\right](X_b+sR_{ab})
 R_{ab}\,ds.}
 \tag{BPT.19a}
\]

Writing \(q=-\Delta p=\operatorname{tr}(M^2)\), its integrand contains
the simultaneous decomposition

\[
 -\nabla^2p+\nu\Delta M
 ={q\over3}I-(\nabla^2p)^\circ+\nu\Delta M.
 \tag{BPT.19b}
\]

Thus the trace-free pressure response, its isotropic trace, and viscosity
enter the same selected scalar \(V\cdot A\); none has been assigned an
independent sign.

For **every** smooth pair selector \(0\le\Gamma(a,b,t)\le1\), direct product
differentiation gives the exact selected-current identity

\[
 \boxed{
 \begin{aligned}
 \int_0^T\!\iint\Gamma j
 ={}&\left[\iint\Gamma e\right]_0^T
 -\int_0^T\!\iint eD_t\Gamma
 -2\int_0^T\!\iint\Gamma e\chi .
 \end{aligned}}
 \tag{BPT.20}
\]

The complementary identity has the opposite selection term.  Consequently

\[
 \boxed{
 \begin{aligned}
 \int_0^T\!\iint\Gamma j
 +\int_0^T\!\iint(1-\Gamma)j
 &=[H]_0^T-2\int_0^T\!\iint e\chi\\
 &=H(T)-H(0)+\nu\int_0^T
 \|\Lambda^{3/2}u\|_2^2dt.
 \end{aligned}}
 \tag{BPT.21}
\]

Here the second equality uses the complete pressure--viscous recombination

\[
 \boxed{2\iint e\chi=-\nu\|\Lambda^{3/2}u\|_2^2.}
 \tag{BPT.22}
\]

The pressure part of (BPT.22) cancels only in this complete pairing.  With
a nonconstant \(\Gamma\), the selected tensor is not the global
divergence-free test against which a pressure gradient vanishes.  Hence the
trace-free quadrupole in (BPT.19b) remains inside the response term of
(BPT.20) until the complementary pairs are restored.

Thus the pair-selection flux cancels only after the complement is restored;
at that point the result is exactly the open critical stock/action endpoint.
Taking an absolute value before `(BPT.21)` would count the same crossing on
both sides.

To display the moving enstrophy gate without identifying a chord with a
Fourier mode, use only the diagnostic material selector

\[
 \Gamma=\gamma_{\rm bal}(a,b,t)
 \psi\!\left(\log{K_{ab}\over K_Z(t)}\right),
 \qquad K_Z=C_Z{Z\over\nu^2}.
 \tag{BPT.23}
\]

The actual Fourier gate remains in
\(\mathcal P_{1/2}^{\rm out}\); `(BPT.23)` is not a claim that \(K=h\).
Since \(D_t\log K=-\alpha\),

\[
 \boxed{
 D_t\Gamma
 =\psi D_t\gamma_{\rm bal}
 +\gamma_{\rm bal}\psi'
 \left(-\alpha-{Z'\over Z}\right).}
 \tag{BPT.24}
\]

Inserting this into `(BPT.20)` leaves, with their exact signs,

\[
 \boxed{
 \begin{aligned}
 \mathfrak S_{\rm bal,Z}(T)
 :={}&-\int_0^T\!\iint e\psi D_t\gamma_{\rm bal}\\
 &+\int_0^T\!\iint e\gamma_{\rm bal}\psi'
 \left(\alpha+{Z'\over Z}\right)
 -2\int_0^T\!\iint\Gamma e\chi .
 \end{aligned}}
 \tag{BPT.25}
\]

The first term is actual balanced-record selection and contains orientation
and recruitment.  The second is the material scale crossing together with
the moving-Fourier-boundary crossing.  The third is the joined relative
pressure--viscous response from `(JEM.6)`.  None is separately sign-definite.
When \(\Gamma\) is the material pullback of the same selector used in
`(BPT.15)`, its sum with the selected endpoint, the complementary current,
and \(-\mathcal P_{1/2}^{\rm out}\) reconstructs the current in `(BPT.16)`.
After the favorable line of `(BPT.17)` is removed, these are the
time-oriented terms which remain in `(BPT.18)`; they are not separate bills.

The enstrophy datum supplies \(Z\in L_t^1\), not total variation of
\(\log Z\).  The trace-free pressure response supplies an unweighted
Hardy-space mass, not the record-weighted selected term in `(BPT.25)`.
Therefore `(BPT.25)` is not paid by incompressibility, volume preservation,
viscosity, or the finite kinetic-energy identity alone.

## 5. Exact balanced finite-energy countertest: decaying ABC flow

The missing signs are tested on a lawful whole history, not on a prescribed
pair schedule.  On \(\mathbb T^3\), let

\[
 U(x,y,z)=
 \bigl(\sin z+\cos y,\ \sin x+\cos z,\ \sin y+\cos x\bigr).
 \tag{BPT.26}
\]

It obeys

\[
 \nabla\cdot U=0,
 \qquad \nabla\times U=U,
 \qquad \Delta U=-U.
 \tag{BPT.27}
\]

For every amplitude \(A\), integer \(N\ge1\), and \(\nu>0\),

\[
 \boxed{
 u(t,x)=Ae^{-\nu N^2t}U(Nx),
 \qquad p(t,x)=-{1\over2}|u(t,x)|^2}
 \tag{BPT.28}
\]

is an exact global smooth finite-energy periodic Navier--Stokes solution.
Indeed \(\nabla\times u=Nu\), so
\((u\cdot\nabla)u=\nabla(|u|^2/2)\), the pressure cancels that complete
nonlinearity, and only heat decay remains.  Hence

\[
 \boxed{
 \mathbb P((u\cdot\nabla)u)=0,
 \qquad \mathcal P_s(t)=0\quad\hbox{for every }s.}
 \tag{BPT.29}
\]

At the material stagnation point

\[
 q_N=-{\pi\over4N}(1,1,1),
 \tag{BPT.30}
\]

one has \(u(q_N,t)=0\), zero local vorticity, and

\[
 \nabla u(q_N,t)
 ={ANe^{-\nu N^2t}\over\sqrt2}
 \begin{pmatrix}0&1&1\\1&0&1\\1&1&0\end{pmatrix}.
 \tag{BPT.31}
\]

Writing \(b(t)=ANe^{-\nu N^2t}/\sqrt2\), its eigenvalues are
\(-b,-b,2b\).  The same stagnation label remains centered, both transverse
material tangents have no wobble and contract by \(e^{-I(t)}\), while the
axial tangent expands by \(e^{2I(t)}\), where

\[
 I(t)={A\over\sqrt2\nu N}
 \left(1-e^{-\nu N^2t}\right).
 \tag{BPT.32}
\]

Their determinant is exactly one.  Every transverse infinitesimal pair has
\(j>0\), but the full balanced star has the favorable sign `(BPT.12)`, and
the complete periodic pair/Fourier current is exactly zero by `(BPT.29)`.
Thus a
strict positive coercive charge obtained from the contracting directions
alone is false even in an exact global smooth finite-energy history.  Its
axial orientations, exterior pairs, pressure response, and record weights
perform the cancellation.

At the second point \(x=0\), the strain is again perfectly balanced with
\(a=ANe^{-\nu N^2t}/2\), but the vorticity is axial and satisfies

\[
 |\omega_\parallel|^2=12a^2,
 \qquad \omega_\perp=0.
 \tag{BPT.33}
\]

Equation `(BPT.12)` is then exactly zero.  This saturates the wobble boundary
inside the same admissible solution and rules out deleting the axial
orientation term.

The dynamic FIM threshold does move here because
\(Z(t)=Z(0)e^{-2\nu N^2t}\).  Nevertheless the fully recombined nonlinear
current is zero on both the core and its exterior.  Any nonzero selected
crossing term produced from `(BPT.24)` is therefore canceled by the selected
endpoint, response, and complement in `(BPT.21)`.  The moving gate is not an
additional positive stock.

## 6. Exact same-pair return: monotonicity is not available

There is also a lawful finite-energy countertest to a pairwise no-return
step.  On \(\mathbb T^3\), let

\[
 u(t,x,y,z)=(Ae^{-\nu t}\sin y,0,0),
 \qquad p=0.
 \tag{BPT.34}
\]

This is another exact global smooth Navier--Stokes history.  Choose two fixed
labels with \(d=a_y-b_y\ne0\) and

\[
 v_0=A(\sin a_y-\sin b_y)>0.
 \tag{BPT.35}
\]

Their transverse coordinates remain fixed, while

\[
 V_x(t)=v_0e^{-\nu t},
 \qquad
 R_x(t)=R_x(0)+{v_0\over\nu}(1-e^{-\nu t}).
 \tag{BPT.36}
\]

If \(-v_0/\nu<R_x(0)<0\), the same pair first contracts, reaches its minimum
distance when \(R_x=0\), and then re-expands.  At that instant

\[
 \alpha=0,
 \qquad |\beta|^2={|V|^2\over|R|^2}>0,
 \qquad \mathfrak c={n\cdot A_{ab}\over|R|}=0,
 \qquad \dot\alpha=|\beta|^2>0.
 \tag{BPT.37}
\]

Thus \(K\) has an actual maximum and the signed pair current changes sign.
The flow is volume preserving, pressure is present with the exact value zero,
and viscosity and orientation are both retained.  This does not model the
no-wobble balanced star; it proves that a no-return premise cannot be imposed
on the other pairs or on the selector complement while the full balanced
history is recombined.

## 7. Exact verdict

The perfectly balanced branch has a real turn-down mechanism:

\[
 \boxed{
 \text{two transverse contractions}
 +\text{their compensating axial expansion}
 +\text{the complete critical record}
 \Longrightarrow
 \text{the no-wobble infinitesimal star is nonpositive}.}
 \tag{BPT.38}
\]

That is a proved part of Thomas's physical theory.  It is not yet the full
datum-to-prefix theorem.  The exact unpaid object after that cancellation is
`(BPT.18)`, with its time-oriented form forced by `(BPT.20)--(BPT.25)`:

\[
 \boxed{
 \begin{gathered}
 \text{axial-wobble moment}
 +\text{finite-chord radial covariance defect}
 +\text{all unselected pairs and exterior}\
 +\text{record-selection flux}
 +\text{moving-}Z\text{ crossing}
 +\text{joined pressure--viscous response}.
 \end{gathered}}
 \tag{BPT.39}
\]

Every term belongs to the same signed identity.  The ABC history proves that
regional contracting-pair coercivity is false; the shear history proves that
pairwise no-return is false.  Neither is a singular history or a
counterexample to global regularity.  They are exact Navier--Stokes
countertests to the two shortcuts which would otherwise delete terms from
`(BPT.39)`.

A datum-finite uniform upper prefix for `(BPT.18)`, with `(BPT.25)` and the
complement retained rather than bounded as independent positive bills, would
prove `(TIR.37a)`.  No such bound has been derived here.  The MPP therefore
remains open at this exact balanced-pair residual.
