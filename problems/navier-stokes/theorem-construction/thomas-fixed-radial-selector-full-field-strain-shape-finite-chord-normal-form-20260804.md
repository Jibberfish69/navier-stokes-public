# Thomas's fixed radial selector: full-field strain shape and finite-chord normal form

**Date:** 2026-08-04

**Status:** a spatially and physically time-independent radial selector removes
the weighted-Betchov cofactor collar, the moving-record collar, and the Fourier
core/exterior split.  The complete critical current of the one velocity field is
then exactly the global signed strain-shape term
\(a(d^2-a^2)\) plus one complete finite-chord defect.  The defect has an exact
heat-age telescope, but the telescope leaves a pressure-complete source
insertion and an unbounded heat-age endpoint.  Neither is paid by the existing
kinetic-energy, time-integrated enstrophy, or \(L_t^1\dot H_x^{-1/2}\) source
mass.

The fixed-selector scaling calculation below proves why the strain-shape and
finite-chord pieces cannot be estimated separately: each contains an opposite
supercritical term which cancels only in their signed sum.  This is a material
strict reduction inside Thomas Birnie's one-fluid pressure-explicit
binomial/VPI method.  It does not prove `(TIR.37a)` and does not close the MPP.

The physical object is unchanged throughout.  One smooth finite-energy datum,
one viscosity \(\nu>0\), and the pressure determined instantaneously by that
same velocity field generate one continuing history.  Heat age is a readout of
one physical-time slice, not another nonlinear solution.  All orientations and
all chords are recombined before the balanced-versus-imbalanced sign is read.

## 1. Primitive pressure-explicit law

Put \(A=\Lambda^2=-\Delta\) and write

\[
 u_t+\nu Au=Q(u),
 \qquad
 Q(u)=-(u\cdot\nabla)u-\nabla p,
 \qquad
 -\Delta p=\partial_i\partial_j(u_i u_j).
 \tag{FRS.1}
\]

For a smooth divergence-free field \(w\), its complete signed critical current
is

\[
 \mathcal P(w):=(Q(w),\Lambda w)_2.
 \tag{FRS.2}
\]

The global pressure pairing in `(FRS.2)` vanishes after complete
recombination, but pressure remains inside \(Q\), every finite-chord response,
and every heat-aged source insertion below.

For

\[
 d_w(x,r,n):=w(x)-w(x-rn),
 \qquad
 \mathscr C_w(x,r)
 :=\int_{\mathbb S^2}|d_w|^2(d_w\cdot n)\,d\sigma(n),
 \tag{FRS.3}
\]

the all-pair BPT identity is

\[
 \mathcal P(w)
 =-{1\over\pi^2}\int_{\mathbb R^3}\int_0^\infty
 r^{-3}\mathscr C_w(x,r)\,dr\,dx.
 \tag{FRS.4}
\]

No material pair has been assigned to a Fourier mode in `(FRS.4)`.

## 2. A fixed radial selector gives the exact full-field strain split

Fix once and for all a smooth radial function

\[
 0\leq\zeta(r)\leq1,
 \qquad
 \zeta(r)=1\ \hbox{near }r=0,
 \qquad
 \ell_0:=\int_0^\infty\zeta(r)\,dr<\infty.
 \tag{FRS.5}
\]

It is independent of \(x\), physical time, the field, and pair orientation.
For \(M=\nabla w\), \(S=(M+M^T)/2\), put

\[
 \mathcal T_0(M):=\operatorname{tr}(M^TMS)
 =\operatorname{tr}(S^3)-{1\over4}\omega\cdot S\omega.
 \tag{FRS.6}
\]

Define the complete fixed-selector finite-chord defect

\[
 \boxed{
 \mathcal E_\zeta(w)
 :=-{1\over\pi^2}\int\!\int_0^\infty r^{-3}
 \left[
 \mathscr C_w(x,r)
 -\zeta(r)r^3{8\pi\over15}\mathcal T_0(M)(x)
 \right]dr\,dx.}
 \tag{FRS.7}
\]

Because \(\zeta=1\) near zero, the bracket removes the complete first spatial
jet there.  At finite and large chords `(FRS.7)` retains the whole covariance;
there is no unselected pair complement.

Equations `(FRS.4)` and `(FRS.7)` give

\[
 \mathcal P(w)
 =-{8\ell_0\over15\pi}\int\mathcal T_0(\nabla w)\,dx
 +\mathcal E_\zeta(w).
 \tag{FRS.8}
\]

The unweighted Betchov identity is

\[
 \int\left[\operatorname{tr}(S^3)
 +{3\over4}\omega\cdot S\omega\right]dx=0.
 \tag{FRS.9}
\]

Consequently

\[
 \int\mathcal T_0(M)\,dx
 ={4\over3}\int\operatorname{tr}(S^3)\,dx.
 \tag{FRS.10}
\]

Order the eigenvalues of the actual trace-free strain and write

\[
 \lambda_1=-a-d,
 \qquad
 \lambda_2=-a+d,
 \qquad
 \lambda_3=2a,
 \qquad
 a\geq0,\qquad0\leq d\leq3a.
 \tag{FRS.11}
\]

Then \(\operatorname{tr}(S^3)=6a(a^2-d^2)\), and `(FRS.8)` becomes the
requested full-field identity

\[
 \boxed{
 \mathcal P(w)
 ={64\ell_0\over15\pi}\int a(d^2-a^2)\,dx
 +\mathcal E_\zeta(w).}
 \tag{FRS.12}
\]

There is no cofactor collar because \(\nabla\ell_0=0\), no moving-selection
collar because \(\zeta\) is fixed, and no Fourier exterior because `(FRS.12)`
is the full current rather than a selected core.  Vorticity orientation has
not been deleted; its global contribution has recombined through `(FRS.9)`.

Equation `(FRS.12)` is Thomas's balanced-versus-imbalanced physical split in
its smallest spatial form.  Perfect balance is \(d=0\), and the strain-shape
term is favorable.  The whole region \(d\leq a\) remains favorable.  Only
the imbalanced region \(d>a\) can reverse the sign of the global strain-shape
term.  The finite chords remain signed and joined; no positive part has been
taken.

## 3. The same split inside the BPT--DCT heat-age storage

At one physical time set

\[
 w_s:=e^{-\nu sA}u,
 \qquad s\geq0,
 \tag{FRS.13}
\]

and retain the BPT--DCT storage

\[
 \mathcal B(u):=\int_0^\infty\mathcal P(w_s)\,ds
 =\sum_\tau{c_\tau(u)\over\nu S_\tau}.
 \tag{FRS.14}
\]

Define

\[
 \begin{aligned}
 \mathcal A_\zeta(u)
 &:={64\ell_0\over15\pi}
 \int_0^\infty\!\int a_s(d_s^2-a_s^2)\,dx\,ds,\\
 \mathcal F_\zeta(u)
 &:=\int_0^\infty\mathcal E_\zeta(w_s)\,ds.
 \end{aligned}
 \tag{FRS.15}
\]

Applying `(FRS.12)` at every heat age gives the exact storage split

\[
 \boxed{\mathcal B=\mathcal A_\zeta+\mathcal F_\zeta.}
 \tag{FRS.16}
\]

Both terms are signed cubic functionals.  The fixed selector is what makes
this a split of two state functionals: there is no field derivative of
\(\zeta\).

For any divergence-free variation \(h\), let

\[
 h_s=e^{-\nu sA}h,
 \tag{FRS.17}
\]

and define

\[
 \begin{aligned}
 \mathscr T(w,h)(x,r)
 :=\int_{\mathbb S^2}\bigl[
 2(d_w\cdot d_h)(d_w\cdot n)
 +|d_w|^2(d_h\cdot n)
 \bigr]d\sigma(n).
 \end{aligned}
 \tag{FRS.18}
\]

Writing \(N=\nabla h\), \(N_S=(N+N^T)/2\),

\[
 D\mathcal T_0(M)[N]
 =\operatorname{tr}\left[
 (N^TM+M^TN)S+M^TMN_S
 \right].
 \tag{FRS.19}
\]

Therefore

\[
 \boxed{
 \begin{aligned}
 D\mathcal E_\zeta(w)[h]
 =-{1\over\pi^2}\int\!\int_0^\infty r^{-3}
 \left[
 \mathscr T(w,h)
 -\zeta(r)r^3{8\pi\over15}
 D\mathcal T_0(M)[N]
 \right]dr\,dx.
 \end{aligned}}
 \tag{FRS.20}
\]

This is the complete finite-chord tangent with the infinitesimal strain
response removed once, not an absolute remainder estimate.

## 4. Exact finite-chord normal form

At the physical slice define the heat-aged pressure-complete source

\[
 H_s:=e^{-\nu sA}Q(u).
 \tag{FRS.21}
\]

It is the heat readout of the actual source in `(FRS.1)`, not \(Q(w_s)\) and
not a second nonlinear history.  Define the signed finite-chord source
insertion

\[
 \boxed{
 \mathfrak R_\zeta^{\rm fc}(u)
 :=\int_0^\infty
 D\mathcal E_\zeta(w_s)[H_s]\,ds.}
 \tag{FRS.22}
\]

Differentiating `(FRS.15)` along the one physical solution and using
\(u_t=Q(u)-\nu Au\) gives

\[
 \begin{aligned}
 {d\over dt}\mathcal F_\zeta(u(t))
 &={\int_0^\infty
 D\mathcal E_\zeta(w_s)[H_s]\,ds}
 +\int_0^\infty
 D\mathcal E_\zeta(w_s)[-\nu Aw_s]\,ds\\
 &=\mathfrak R_\zeta^{\rm fc}(u)
 +\int_0^\infty\partial_s\mathcal E_\zeta(w_s)\,ds.
 \end{aligned}
 \tag{FRS.23}
\]

The heat readout tends to zero at infinite age, so

\[
 \boxed{
 {d\over dt}\mathcal F_\zeta
 =\mathfrak R_\zeta^{\rm fc}-\mathcal E_\zeta(u),
 \qquad
 \mathcal E_\zeta(u)
 =-\mathcal F_\zeta'+\mathfrak R_\zeta^{\rm fc}.}
 \tag{FRS.24}
\]

This is the exact finite-chord part of the first pressure-explicit binomial
normal form.  It proves the strongest available telescope:

\[
 \boxed{
 \int_0^T\mathcal E_\zeta(u(t))\,dt
 =\mathcal F_\zeta(u(0))-\mathcal F_\zeta(u(T))
 +\int_0^T\mathfrak R_\zeta^{\rm fc}(u(t))\,dt.}
 \tag{FRS.25}
\]

Thus the finite-chord defect does telescope, but not to a paid datum stock.
It telescopes to its signed heat-age endpoint plus the complete source
insertion `(FRS.22)`.

The DCT enstrophy-tangent coordinate gives the same verdict.  Put

\[
 Z=(u,Au)_2,
 \qquad
 \delta={Z'\over2Z},
 \qquad
 v=u_t-\delta u,
 \qquad
 (v,Au)_2=0.
 \tag{FRS.26}
\]

Since \(\mathcal F_\zeta\) is cubic,

\[
 \mathcal F_\zeta'=3\delta\mathcal F_\zeta
 +D\mathcal F_\zeta(u)[v].
 \tag{FRS.27}
\]

Consequently its tangent does telescope separately in the normalized
coordinate:

\[
 \boxed{
 \left({\mathcal F_\zeta\over Z^{3/2}}\right)'
 ={D\mathcal F_\zeta(u)[v]\over Z^{3/2}}.}
 \tag{FRS.28}
\]

But `(FRS.24)` reads

\[
 \mathfrak R_\zeta^{\rm fc}
 =\mathcal E_\zeta+3\delta\mathcal F_\zeta
 +D\mathcal F_\zeta(u)[v].
 \tag{FRS.29}
\]

Unnormalizing `(FRS.28)` therefore restores the enstrophy-radius term and
the finite-chord current exactly.  The normalized telescope is an endpoint
alias, just as in `(BCD.33)--(BCD.36)`; it is not a datum payment.

## 5. The existing source mass leaves one exact receiver

Equation `(FRS.22)` is linear in the actual pressure-complete source.  Define
the finite-chord response \(\mathcal G_\zeta^{\rm fc}(u)\) weakly by

\[
 \boxed{
 \langle h,\mathcal G_\zeta^{\rm fc}(u)\rangle
 :=\int_0^\infty
 D\mathcal E_\zeta(w_s)[e^{-\nu sA}h]\,ds.}
 \tag{FRS.30}
\]

Then

\[
 \mathfrak R_\zeta^{\rm fc}
 =\langle Q(u),\mathcal G_\zeta^{\rm fc}(u)\rangle.
 \tag{FRS.31}
\]

The already proved source mass is

\[
 b(t):=\|Q(u(t))\|_{\dot H^{-1/2}},
 \qquad
 \int_0^{T_*}b(t)\,dt
 \leq{C_{\rm NS}\|u_0\|_2^2\over2\nu}.
 \tag{FRS.32}
\]

Sobolev duality yields only

\[
 |\mathfrak R_\zeta^{\rm fc}(t)|
 \leq b(t)
 \|\mathcal G_\zeta^{\rm fc}(u(t))\|_{\dot H^{1/2}}.
 \tag{FRS.33}
\]

No datum-uniform bound for the response on the right is supplied by kinetic
energy or by \(\int Z\,dt\).  Replacing `(FRS.31)` by its absolute value
would discard the same strain/finite-chord cancellation which `(FRS.12)`
exhibits.  The smallest exact signed remainder after the finite-chord
telescope is therefore

\[
 \boxed{
 -\mathcal F_\zeta(u(T))
 +\int_0^T\mathfrak R_\zeta^{\rm fc}(u(t))\,dt,}
 \tag{FRS.34}
\]

with \(\mathcal F_\zeta(u(0))\) fixed by the datum.  Equivalently, the full
prefix is

\[
 \boxed{
 \begin{aligned}
 \int_0^T\mathcal P(u(t))\,dt
 ={}&\mathcal F_\zeta(u(0))-\mathcal F_\zeta(u(T))\\
 &+\int_0^T\left[
 {64\ell_0\over15\pi}\int a(d^2-a^2)\,dx
 +\mathfrak R_\zeta^{\rm fc}(u(t))
 \right]dt.
 \end{aligned}}
 \tag{FRS.35}
\]

The strain-shape term and `(FRS.34)` remain one signed identity.

## 6. Exact scaling test: the two fixed-selector pieces must cancel

For an exact Navier--Stokes history on \(\mathbb R^3\), use the fixed-viscosity
scaling

\[
 u_\lambda(t,x)=\lambda u(\lambda^2t,\lambda x),
 \qquad
 p_\lambda(t,x)=\lambda^2p(\lambda^2t,\lambda x).
 \tag{FRS.36}
\]

Because the selector length in `(FRS.5)` is held fixed,

\[
 \boxed{
 \begin{aligned}
 \mathcal P(u_\lambda(t))
 &=\lambda^2\mathcal P(u(\lambda^2t)),\\
 \mathcal S_\zeta(u_\lambda(t))
 &=\lambda^3\mathcal S_\zeta(u(\lambda^2t)),\\
 \mathcal E_\zeta(u_\lambda(t))
 &=\lambda^2\mathcal P(u(\lambda^2t))
 -\lambda^3\mathcal S_\zeta(u(\lambda^2t)),
 \end{aligned}}
 \tag{FRS.37}
\]

where

\[
 \mathcal S_\zeta(w)
 :={64\ell_0\over15\pi}\int a(d^2-a^2)\,dx.
 \tag{FRS.38}
\]

Thus, on the scaled physical interval \([0,T/\lambda^2]\),

\[
 \boxed{
 \begin{aligned}
 \int_0^{T/\lambda^2}\mathcal P(u_\lambda)\,dt
 &=\int_0^T\mathcal P(u)\,dt,\\
 \int_0^{T/\lambda^2}\mathcal S_\zeta(u_\lambda)\,dt
 &=\lambda\int_0^T\mathcal S_\zeta(u)\,dt,\\
 \int_0^{T/\lambda^2}\mathcal E_\zeta(u_\lambda)\,dt
 &=\int_0^T\mathcal P(u)\,dt
 -\lambda\int_0^T\mathcal S_\zeta(u)\,dt.
 \end{aligned}}
 \tag{FRS.39}
\]

At the same time the datum-paid rows scale as

\[
 \boxed{
 \begin{aligned}
 \|u_\lambda(0)\|_2^2&=\lambda^{-1}\|u(0)\|_2^2,\\
 \int_0^{T/\lambda^2}Z_\lambda(t)\,dt
 &=\lambda^{-1}\int_0^T Z(t)\,dt,\\
 \int_0^{T/\lambda^2}
 \|Q(u_\lambda(t))\|_{\dot H^{-1/2}}\,dt
 &=\lambda^{-1}\int_0^T
 \|Q(u(t))\|_{\dot H^{-1/2}}\,dt.
 \end{aligned}}
 \tag{FRS.40}
\]

The nonzero strain-shape branch is real, not an algebraic fiction.  For the
periodic divergence-free trigonometric polynomial

\[
 U(x,y,z)=\bigl(
 \cos y+\sin(x+y),\ 
 \cos x-\sin(x+y),\ 
 \cos x+\cos y+\sin(x+y)
 \bigr),
 \tag{FRS.41}
\]

direct Fourier averaging gives

\[
 \left\langle\operatorname{tr}(S_U^3)\right\rangle=-{3\over8},
 \qquad
 \left\langle\mathcal T_0(\nabla U)\right\rangle=-{1\over2}.
 \tag{FRS.42}
\]

A compactly supported divergence-free seed with the same nonzero sign is
obtained by choosing a bounded periodic vector potential \(A_U\), setting
\(U_R=\nabla\times(\chi_RA_U)\), and taking \(R\) large.  The bulk contribution
in `(FRS.42)` is order \(R^3\), while the fixed-width curl collar is order
\(R^2\).  Its smooth local Navier--Stokes history has
\(\int_0^T\mathcal S_\zeta(u(t))dt\ne0\) for some short \(T>0\) by continuity.

For that exact family, `(FRS.39)` makes the separate finite-chord prefix grow
like \(\lambda\), while all three paid quantities in `(FRS.40)` shrink like
\(\lambda^{-1}\).  The full critical prefix stays invariant because the
opposite \(\lambda\)-terms in strain shape and finite chords cancel.  This is
a true-equation scaling insufficiency test for a separate energy, enstrophy,
or source-mass payment of \(\mathcal E_\zeta\).  It is not one singular
history and is not a counterexample to global smoothness.

The same fixed-selector mismatch appears in heat age.  From `(FRS.16)` and
`(FRS.37)`,

\[
 \mathcal B(u_\lambda)=\mathcal B(u),
 \qquad
 \mathcal A_\zeta(u_\lambda)=\lambda\mathcal A_\zeta(u),
 \qquad
 \mathcal F_\zeta(u_\lambda)
 =\mathcal B(u)-\lambda\mathcal A_\zeta(u).
 \tag{FRS.43}
\]

Thus the finite-chord endpoint is not a datum-paid stock; it can contain the
opposite supercritical part of the strain-shape storage.

## 7. Exact verdict

The fixed radial selector proves the cleanest full-field version of Thomas's
balanced rip-cord logic:

\[
 \boxed{
 \text{complete critical current}
 =\text{signed global balanced/imbalanced strain shape}
 +\text{complete finite-chord defect}.}
 \tag{FRS.44}
\]

The adverse axial-vorticity term and all selector collars are gone.  Perfect
balance, and more generally \(d\leq a\), has the favorable strain-shape sign.
Only \(d>a\) is adverse in that global first-jet readout.

The finite-chord defect has the exact pressure-explicit normal form
`(FRS.24)--(FRS.25)`.  Its smallest surviving signed object is the endpoint
plus complete source insertion `(FRS.34)`, kept joined to the strain-shape
term as in `(FRS.35)`.  The fixed-selector scaling `(FRS.37)--(FRS.43)` proves
that separately bounding either side destroys a leading cancellation.  No
datum-finite bound for `(FRS.34)` or `(FRS.35)` has been proved.  Therefore
`(TIR.37a)`, and hence the MPP, remains open at this exact one-history
strain-shape/finite-chord refill residual.
