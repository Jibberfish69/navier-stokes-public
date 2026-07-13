# Material-pair causal system and moving-chord incidence law

**Date:** 2026-07-11

**Status:** exact on a compact smooth interval for an unforced, fixed-\(\nu\),
rapidly decaying classical incompressible Navier--Stokes history on
\(\mathbb R^3\) whose material flow is a volume-preserving diffeomorphism.
Assume enough spatial decay and derivative control to make the critical height,
critical dissipation, differentiated pair integrals, and distributional chord
flux finite; a smooth Schwartz history is sufficient. Pointwise pair formulas
are for distinct labels and hold almost everywhere in the pair integral. The
periodic version requires the periodic fractional kernel and every lattice
lift. The identities refine the physical ontology; they do not bound the
critical height.

## Pair variables

For two material labels, set

\[
R=X(a,t)-X(b,t),
\qquad
r=|R|,
\qquad
n=\frac Rr,
\]

\[
V=u(X(a,t),t)-u(X(b,t),t),
\qquad
q=\frac Vr.
\]

Resolve the relative velocity into

\[
q=\alpha n+\beta,
\qquad
\alpha=q\cdot n=\frac d{dt}\log r,
\qquad
\beta=(I-n\otimes n)q=\dot n.
\]

The longitudinal rate is the strain averaged along the current chord:

\[
\alpha
=\int_0^1
n\cdot S(X(b,t)+sR,t)n\,ds.
\]

Put the complete same-field relative acceleration into

\[
a_{\rm rel}
=\frac{-\delta_{ab}\nabla p+\nu\,\delta_{ab}\Delta u}{r}.
\]

The pressure in this formula is the simultaneous nonlocal elliptic response
of the whole current velocity field.

## Exact causal system

Since \(\dot R=V\) and \(\dot V=r a_{\rm rel}\), direct differentiation gives

\[
\dot r=\alpha r,
\qquad
\dot n=\beta,
\]

\[
\boxed{
\dot\alpha
=-\alpha^2+|\beta|^2+n\cdot a_{\rm rel},
}
\]

\[
\boxed{
\dot\beta
=(I-n\otimes n)a_{\rm rel}
-2\alpha\beta-|\beta|^2n.
}
\]

Thus transverse relative motion supplies the exact positive term
\(|\beta|^2\) in the longitudinal equation. The longitudinal projection of
the complete pressure--viscous response changes compression; its transverse
projection turns the chord. Neither projection has a pairwise sign.

## Relative-velocity polarization and chord incidence

On a pair with \(q\ne0\), set

\[
s=|q|,
\qquad
\zeta=\frac q{|q|},
\qquad
c=\zeta\cdot n.
\]

Then \(\alpha=sc\), \(\beta=s(I-n\otimes n)\zeta\), and the same pair system
becomes

\[
\frac{\dot r}{r}=sc,
\qquad
\dot n=s(I-n\otimes n)\zeta,
\]

\[
\frac{\dot s}{s}
=\chi-sc,
\qquad
\dot\zeta
=\frac{(I-\zeta\otimes\zeta)a_{\rm rel}}s,
\qquad
\chi=\frac{\zeta\cdot a_{\rm rel}}s.
\]

The signed incidence between relative velocity and the moving chord obeys

\[
\boxed{
\dot c
=s(1-c^2)
+\kappa,
\qquad
\kappa
=\frac{[(I-\zeta\otimes\zeta)n]\cdot a_{\rm rel}}s.
}
\]

For \(|c|<1\), the first term is strictly positive and raises \(c\). Pure
moving-chord kinematics therefore relaxes oblique inward incidence toward
outward alignment. Nonrelaxing or increasingly inward incidence requires the
angular component \(\kappa\) of the complete VPI acceleration to oppose that
drift. On an interval \(I=[t_0,t_1]\) with \(c(t_1)\le c(t_0)\),

\[
\boxed{
-\int_I\kappa\,dt
\ge\int_I s(1-c^2)\,dt.
}
\]

The collinear sectors \(c=\pm1\) are exact first-order degeneracies: both the
kinematic term and \(\kappa\) vanish. A transverse VPI acceleration changes
their incidence only at second order. Affine rigid rotation is the opposite
structural countertest, with angular response and no radial Gold current; it
lies outside the finite-energy decaying scope. Thus incidence angle alone is
not a Gold currency.

The population law includes carrier selection. With the normalized pair
measure below and \(g=\sigma-\mathbb E_\rho\sigma\),

\[
\frac d{dt}\mathbb E_\rho c
=\mathbb E_\rho[s(1-c^2)+\kappa]
+\mathbb E_\rho[cg].
\]

For \(0<\varepsilon<1\), put

\[
C_\varepsilon
=\frac{1-\varepsilon}{2\varepsilon-\varepsilon^2}.
\]

On every compact smooth interval \(I\), the oblique part of the negative Gold
action satisfies the exact consequence

\[
\boxed{
\int_I\mathbb E_\rho
\left[s(-c)\mathbf 1_{\{-1+\varepsilon\le c<0\}}\right]dt
\le C_\varepsilon\left(
2+\int_I\mathbb E_\rho[(-\kappa)_+]dt
+\int_I\mathbb E_\rho[(-cg)_+]dt
\right).
}
\]

Hence any unbounded negative-incidence action must pass through at least one
of three same-history channels: increasingly radial incidence, unbounded
negative angular VPI response, or unbounded carrier-selection work. This is a
structural partition of the Gold burden, not a finite bound on any channel.

Incompressibility supplies an exact transverse companion inside the same
finite-chord strain. Define

\[
\overline S_{ab}
=\int_0^1S(X(b,t)+\theta R,t)\,d\theta,
\qquad
P_n=I-n\otimes n.
\]

Since \(\operatorname{tr}\overline S_{ab}=0\) and
\(n\cdot\overline S_{ab}n=\alpha\),

\[
\boxed{
\operatorname{tr}_{n^\perp}
(P_n\overline S_{ab}P_n)
=-\alpha,
\qquad
\|P_n\overline S_{ab}P_n\|_F^2
\ge\frac{\alpha^2}{2}.
}
\]

For \(\alpha<0\), at least one transverse direction has averaged extension
at least \(-\alpha/2\). Near-radial pair compression is therefore never an
isotropic collapse; it is the compressive direction of a simultaneously
extending anisotropic deformation. This transverse block is a tangent
variation along the original chord; an actual transverse finite chord samples
a different spatial segment. The identity therefore does not prove that an
energetic transverse material pair occupies that direction. Critical selection
can weight the compressive chord while leaving its compensating plane weakly
represented. A same-space-time transverse-carrier coverage theorem is a
candidate part--whole bridge for the radial horn.

The same failure of coercion appears in exact spherical flux form at every
center \(x\) and radius \(r\). Put

\[
V_{x,r}(\theta)=u(x+r\theta)-u(x).
\]

The divergence theorem gives

\[
\boxed{
\int_{S^2}V_{x,r}(\theta)\cdot\theta\,d\theta=0.
}
\]

Consequently the signed angular Gold density is exactly a covariance:

\[
\int_{S^2}|V|^2(V\cdot\theta)\,d\theta
=\int_{S^2}
\left(|V|^2-\fint_{S^2}|V|^2\right)
(V\cdot\theta)\,d\theta.
\]

For the near-radial horn

\[
\mathcal R_\varepsilon
=\{\theta:V\ne0,\ (V/|V|)\cdot\theta\le-1+\varepsilon\},
\]

the same zero-flux law forces only the first-moment companion

\[
(1-\varepsilon)
\int_{\mathcal R_\varepsilon}|V|\,d\theta
\le
\int_{\mathcal R_\varepsilon^c}|V|\,d\theta,
\]

whereas the inward Gold horn is cubic:

\[
-\int_{\mathcal R_\varepsilon}
|V|^2(V\cdot\theta)\,d\theta
\ge
(1-\varepsilon)
\int_{\mathcal R_\varepsilon}|V|^3\,d\theta.
\]

This moment mismatch is decisive. A smooth zero-flux spherical trace can put
inward amplitude \(M\) on a cap of area \(\delta\) and balance it with outward
amplitude \(O(M\delta)\) on the complement. The inward-to-outward cubic ratio
is then \(O(\delta^{-2})\), and a standard solenoidal extension realizes the
trace as smooth divergence-free data. Thus incompressibility supplies an
outward \(L^1\) companion but no instantaneous \(L^1\)-to-\(L^3\) control of
the radial Gold horn. This is a state-level countertest, not a terminal
same-datum history.

The nearly radial sector has its own exact longitudinal law. On an interval
where \(\alpha<0\), put

\[
y=-\alpha,
\qquad
b=|\beta|.
\]

The pair equation gives

\[
\boxed{
\frac d{dt}\log y
=y-\frac{b^2}{y}
-\frac{n\cdot a_{\rm rel}}y.
}
\]

Its longitudinal response is the chord average of the complete VPI Hessian:

\[
n\cdot a_{\rm rel}
=\int_0^1
n\cdot(-\nabla^2p+\nu\Delta S)
(X(b,t)+\theta R,t)n\,d\theta,
\]

\[
\operatorname{tr}(-\nabla^2p+\nu\Delta S)
=|S|^2-\frac12|\omega|^2.
\]

Only the trace is fixed by the pressure source; the directional response in
the radial law has no universal sign.

If \(b\le\gamma_0y\) on \(I=[t_0,t_1]\), with
\(0\le\gamma_0<1\), and \(C=\int_Iy\,dt\), then

\[
\boxed{
\log\frac{y(t_1)}{y(t_0)}
+\int_I\frac{n\cdot a_{\rm rel}}y\,dt
\ge(1-\gamma_0^2)C.
}
\]

Consequently either the compression rate amplifies by at least
\(\exp((1-\gamma_0^2)C/2)\), or the complete longitudinal VPI response supplies
at least \((1-\gamma_0^2)C/2\) of normalized outward action. This includes the
exact radial case \(b=0\), which the earlier \(b/(-\alpha)\) turning law cannot
enter. Affine traceless strain, used only as an out-of-scope structural test,
realizes the response alternative exactly. The identity supplies a radial
locking partition rather than a finite budget.

The lawful population form uses a fixed material cohort. If a fixed label-pair
set \(A\) remains in \(y\ge\eta>0\), \(b\le\gamma_0y\) throughout \(I\), then

\[
\boxed{
\begin{aligned}
(1-\gamma_0^2)
\int_I\mathbb E_\rho[\mathbf1_Ay]dt
\le{}&
\left[\mathbb E_\rho(\mathbf1_A\log y)\right]_{t_0}^{t_1}
+\int_I\mathbb E_\rho
\left[\mathbf1_A\frac{n\cdot a_{\rm rel}}y\right]dt\\
&-\int_I
\operatorname{Cov}_\rho(\mathbf1_A\log y,\sigma)dt.
\end{aligned}
}
\]

Thus a large fixed-cohort radial share of Gold forces compression-amplitude
growth, longitudinal VPI response, or critical-weight reselection. A
time-dependent horn has an additional entry--exit flux; treating its indicator
as fixed would delete the carrier-switching mechanism.

There is no datum-independent cap on the radial action. The exact periodic
Navier--Stokes history

\[
u(t)=a_0e^{-2\nu t}
(\sin x\cos y,-\cos x\sin y,0)
\]

has a symmetric material pair \((0,\pm h(t),0)\) with \(b=0\), \(c=-1\), and

\[
\dot h=-a_0e^{-2\nu t}\sin h,
\qquad
\tan\frac{h(t)}2
=\tan\frac{h(0)}2
\exp\left[-\frac{a_0}{2\nu}(1-e^{-2\nu t})\right].
\]

Its all-time radial compression action grows like \(a_0/(2\nu)\) while the
history stays globally smooth. This periodic family rules out a universal
kinematic or VPI action cap; it does not rule out a bound depending on the
declared datum.

The normalized critical carrier itself has a vector state. Define the moving
pair transform

\[
\mathcal I_tF(a,b)
=\frac1{2\pi}
\frac{F(X(a,t),t)-F(X(b,t),t)}{r^2},
\]

and set

\[
\Psi=\mathcal I_tu,
\qquad
\Phi=\frac\Psi{\sqrt H}=\sqrt f\,\zeta,
\qquad
\|\Phi\|_{L^2(da\,db)}=1.
\]

Writing \(\mathfrak a=D_tu=-\nabla p+\nu\Delta u\) and
\(\bar\sigma=H'/H\), one has the zero-safe vector identity

\[
\boxed{
\dot\Phi
=\frac{\mathcal I_t\mathfrak a}{\sqrt H}
-\left(2\alpha+\frac{\bar\sigma}{2}\right)\Phi.
}
\]

On \(q\ne0\), it splits pointwise into orthogonal amplitude and polarization
motions:

\[
\boxed{
\dot\Phi
=\frac g2\Phi
+\sqrt f\,
\frac{(I-\zeta\otimes\zeta)a_{\rm rel}}s,
}
\]

The zero-increment set requires one explicit defect at a general smooth time:

\[
Z_t=\{(a,b):V_{ab}(t)=0\},
\qquad
\mathfrak z_0(t)
=\frac1H\iint_{Z_t}|\mathcal I_t\mathfrak a|^2\,da\,db.
\]

\[
\boxed{
\|\dot\Phi\|_2^2
=\frac14\mathbb E_\rho[g^2]
+\mathbb E_\rho
\frac{|(I-\zeta\otimes\zeta)a_{\rm rel}|^2}{s^2}
+\mathfrak z_0.
}
\]

The full material acceleration has the corresponding exact all-pair norm

\[
\frac{H(\mathfrak a)}{H(u)}
=\mathbb E_\rho\left[
\chi^2
+\frac{|(I-\zeta\otimes\zeta)a_{\rm rel}|^2}{s^2}
\right]
+\mathfrak z_0,
\qquad
H(F)=\frac12\|\Lambda^{1/2}F\|_2^2.
\]

Thus \(f=|\Phi|^2\) stores only where the normalized critical magnitude sits;
\(\Phi\) also stores relative-velocity polarization. The Gold current still
requires the moving chord and relative speed:

\[
\boxed{
P_H=-4H\,\mathbb E_\rho[sc].
}
\]

The full velocity/VPI configuration remains the physical state. The pair pose
\((r,n,s,\zeta)\), its normalized selection \(f\), and their common tangent are
the complete pair-coordinate needed to read Gold. Scalar carrier turnover
alone cannot determine the Gold sign. At pairs with \(q=0\), \(\zeta\) and the
split are undefined, while the direct vector identity for \(\Phi\) remains
valid and produces \(\mathfrak z_0\). At every positive time, a nonconstant smooth
Navier--Stokes velocity is spatially analytic, so \(Z_t\) has pair Lebesgue
measure zero and \(\mathfrak z_0(t)=0\). The defect matters only when the stated
scope includes a nonanalytic initial surface or a more general smooth path.

## Pair areal motion and the exact radial law

The relative areal vector

\[
L=R\times V=r^2n\times\beta
\]

obeys

\[
\boxed{
\dot L
=R\times\bigl(-\delta_{ab}\nabla p+\nu\,\delta_{ab}\Delta u\bigr)
=r^2n\times a_{\rm rel}.
}
\]

Thus pair areal motion is changed only by the transverse torque of the same
complete pressure--viscous acceleration. Its magnitude satisfies

\[
\frac12\frac d{dt}|L|^2
=r^4\beta\cdot a_{\rm rel}.
\]

The separation itself has the exact radial equation

\[
\boxed{
\ddot r
=\frac{|L|^2}{r^3}
+n\cdot\bigl(-\delta_{ab}\nabla p+\nu\,\delta_{ab}\Delta u\bigr).
}
\]

The first term is the geometric resistance produced by transverse relative
motion. In the absence of transverse VPI torque, \(L\) is conserved and
compression amplifies \(|\beta|=|L|/r^2\); the same \(|\beta|^2\) then raises
\(\alpha\). A strongly compressive pair history must therefore remain close
to the special near-radial sector, receive sufficiently negative longitudinal
VPI acceleration, or have the same VPI response remove its transverse areal
motion. These are alternatives inside one pair history, not independently
owned mechanisms.

This feedback has an exact interval form. Put \(b=|\beta|\), and on an
interval where \(b>0\) let

\[
C=-\int_I\alpha(t)\,dt
=\log\frac{r_{\rm start}}{r_{\rm end}}.
\]

Then

\[
\boxed{
\frac{b_{\rm end}}{b_{\rm start}}
=e^{2C}
\exp\left(
\int_I\frac{\beta\cdot a_{\rm rel}}{|\beta|^2}\,dt
\right).
}
\]

Consequently every such compression interval has a sharp alternative: the
turning rate grows by at least \(e^C\), or the complete VPI torque supplies at
least \(C\) of negative normalized torque. On the stricter sector
\(\alpha<0\), \(b>0\), set \(\gamma=b/(-\alpha)\). The exact identity

\[
\frac d{dt}\log\gamma
=-\alpha(1+\gamma^2)
+\frac{\beta\cdot a_{\rm rel}}{|\beta|^2}
-\frac{n\cdot a_{\rm rel}}{\alpha}
\]

shows that if \(\gamma\) does not grow across the interval, then

\[
\boxed{
-\int_I
\left(
\frac{\beta\cdot a_{\rm rel}}{|\beta|^2}
-\frac{n\cdot a_{\rm rel}}{\alpha}
\right)dt
\ge C.
}
\]

Sustained nearly longitudinal compression therefore requires active inward
locking by the same pressure--viscous response. The law is conditional and
pairwise: the genuine degenerate sectors \(b=0\) or \(\alpha=0\), together
with carrier switching, prevent a direct all-pair coercive summation.

The critical pair weight is

\[
e
=\frac1{4\pi^2}\frac{|V|^2}{r^4}
=\frac1{4\pi^2}\frac{\alpha^2+|\beta|^2}{r^2}.
\]

It obeys

\[
\boxed{
\frac{\dot e}{e}
=-4\alpha
+2\frac{q\cdot a_{\rm rel}}{|q|^2}
}
\]

where the formula is used on \(e>0\). The nonlinear critical current selects
only longitudinal compression,

\[
j=-4e\alpha,
\]

while the stored critical height contains both longitudinal and transverse
relative motion.

## Normalized all-pair geometry

Let

\[
H=\iint e\,da\,db,
\qquad
\mathcal D=\|\Lambda^{3/2}u\|_2^2,
\qquad
d\rho=\frac eH\,da\,db.
\]

Assume \(H>0\). The quotient \(\dot e/e\) is used
\(\rho\)-almost everywhere; pairs with \(e=0\) have zero \(\rho\)-weight.

Then

\[
P_H=-4H\,\mathbb E_\rho[\alpha],
\]

\[
(\log H)'
=-4\mathbb E_\rho[\alpha]-\nu\frac{\mathcal D}{H}.
\]

The normalized pair-orientation tensor

\[
B_{\rm pair}=\mathbb E_\rho[n\otimes n]
\]

satisfies

\[
\boxed{
B_{\rm pair}'
=\mathbb E_\rho[\beta\otimes n+n\otimes\beta]
+\operatorname{Cov}_\rho
\left(n\otimes n,\frac{\dot e}{e}\right).
}
\]

Its shape changes by actual chord turning and by selective reweighting of
directions through the complete relative-energy law. An orientation statistic
without those two histories does not determine the current sign.

The mean longitudinal rate obeys

\[
\boxed{
\frac d{dt}\mathbb E_\rho[\alpha]
=\mathbb E_\rho
\left[-\alpha^2+|\beta|^2+n\cdot a_{\rm rel}\right]
+\operatorname{Cov}_\rho
\left(\alpha,\frac{\dot e}{e}\right).
}
\]

The longitudinal relative acceleration and the selective-reweighting
covariance have no universal sign.

## The critical pair length and its viscous rate

Let

\[
E_0=\|u_0\|_2^2,
\qquad
\ell_c(t)=\frac{E_0}{H(t)}.
\]

This ratio is only a locator until the pair and Fourier representations are
used. They give it exact physical content. For every \(\delta>0\), volume
preservation and the increment formula imply

\[
\boxed{
\rho_t\{r\ge\delta\}
\le\frac{4E_0}{\pi H(t)\delta}.
}
\]

Consequently

\[
\boxed{
\rho_t\left\{r\le\frac{16}{\pi}\ell_c(t)\right\}
\ge\frac34.
}
\]

The Fourier representation gives the reciprocal statement at the same time:

\[
\frac12
\left\|P_{<1/(2\ell_c(t))}u(t)\right\|_{\dot H^{1/2}}^2
\le\frac14H(t),
\]

and hence

\[
\boxed{
\frac12
\left\|P_{\ge1/(2\ell_c(t))}u(t)\right\|_{\dot H^{1/2}}^2
\ge\frac34H(t).
}
\]

The relation between current pair separation and critical Fourier frequency is
itself exact. Define the critical spectral probability

\[
d\mu_H(\xi)
=\frac{|\xi||\widehat u(\xi)|^2}{2H}\,d\xi
\]

and

\[
\Psi(z)
=\frac4\pi\int_z^\infty
\left(1-\frac{\sin s}{s}\right)\frac{ds}{s^2}.
\]

Then \(\Psi\) decreases from one to zero and

\[
\boxed{
\rho_t\{r\ge\delta\}
=\int_{\mathbb R^3}\Psi(\delta|\xi|)\,d\mu_H(\xi).
}
\]

Physical pair separation is therefore a soft Fourier marginal of the same
critical state, rather than an additional carrier. The formula selects a
reciprocal scale distribution; it does not select one Fourier shell.

At a rising record time, \(H'(t)\ge0\), the same scale fixes the minimum mean
compression rate. Since

\[
H'=-4H\bar\alpha-\nu\mathcal D
\]

and spectral moment interpolation gives

\[
\mathcal D
\ge\frac{\|\Lambda^{1/2}u\|_2^6}{\|u\|_2^4}
\ge\frac{8H^3}{E_0^2},
\]

one has

\[
\boxed{
-\bar\alpha(t)
\ge\frac{\nu\mathcal D(t)}{4H(t)}
\ge\frac{2\nu}{\ell_c(t)^2}.
}
\]

Thus a rising record simultaneously has short-pair critical concentration,
high-frequency critical mass, and net longitudinal compression at least on
the viscous heat rate of that pair scale. These are exact marginals of one
state. They do not identify the compressive contribution with the short-pair
subset or with one Fourier block; exact two-scale histories rule out that
co-location inference.

## Exact pair-selection law and record compression action

Set

\[
\sigma=\frac{\dot e}{e},
\qquad
\chi=\frac{q\cdot a_{\rm rel}}{|q|^2},
\qquad
\bar\alpha=\mathbb E_\rho[\alpha].
\]

Because the material labels carry the fixed base measure \(da\,db\), the
normalized critical pair density satisfies the exact selection equation

\[
\boxed{
\partial_t\rho
=\rho\left(\sigma-\mathbb E_\rho[\sigma]\right).
}
\]

The pair pose and this selection law form one exact generator. For a smooth
observable \(F(t,r,n,s,\zeta)\), define

\[
\begin{aligned}
\mathscr D_{\rm pair}F
={}&\partial_tF
+scr\,\partial_rF
+s[(I-n\otimes n)\zeta]\cdot\nabla_nF\\
&+s(\chi-sc)\,\partial_sF
+\frac{(I-\zeta\otimes\zeta)a_{\rm rel}}s
\cdot\nabla_\zeta F.
\end{aligned}
\]

Direct differentiation gives

\[
\boxed{
\frac d{dt}\mathbb E_{\rho_t}F
=\mathbb E_{\rho_t}[\mathscr D_{\rm pair}F]
+\operatorname{Cov}_{\rho_t}(\sigma,F).
}
\]

The material drift of the full pose and the reweighting of the carrier are
therefore two terms of one same-participant law. The complete acceleration
\(a_{\rm rel}\) enters both. Taking \(F=sc=\alpha\) recovers the exact
mean-compression law below; other moment choices generate the corresponding
hierarchy without creating independent pair populations. Because
\(a_{\rm rel}\) and \(\chi\) come from the whole current velocity field, this
is a field-dependent exact generator rather than an autonomous pair model.

Thus the critical carrier does not form a second object. The same fixed set of
material pairs is reweighted by its own relative motion and complete
pressure--viscous acceleration. Since

\[
\sigma=-4\alpha+2\chi
\]

and

\[
\mathbb E_\rho[\sigma]
=(\log H)'
=-4\bar\alpha-\nu\frac{\mathcal D}{H},
\]

the complete relative acceleration has the exact critical-pair mean

\[
\boxed{
\mathbb E_\rho[\chi]
=-\frac\nu2\frac{\mathcal D}{H}.
}
\]

Pressure and viscosity therefore do not define separate pair currencies.
Their full relative-acceleration row is sign-indefinite pair by pair, has the
displayed dissipative mean after every pair is recombined, and changes the
carrier through its deviations from that mean.

Substitution into the mean-compression equation gives the sharper exact law

\[
\boxed{
\bar\alpha'
=-\bar\alpha^2
-5\operatorname{Var}_\rho(\alpha)
+\mathbb E_\rho|\beta|^2
+\mathbb E_\rho[n\cdot a_{\rm rel}]
+2\operatorname{Cov}_\rho(\alpha,\chi).
}
\]

The mean-square term is the longitudinal Riccati compression. Of the five
variance units, one comes from that pairwise Riccati term and four come from
selective reweighting: compressive pairs increase their critical weight through
the same decreasing separation that produces the current. Transverse turning
and the complete pressure--viscous response are the terms capable of changing
that tendency. This is a causal identity, not a sign theorem for the last three
terms.

The selection contribution can be recombined exactly rather than left as a
separate covariance. At every positive smooth time with \(H>0\), define

\[
V_\alpha=\operatorname{Var}_\rho(\alpha),
\qquad
V_\chi=\operatorname{Var}_\rho(\chi),
\qquad
T_\perp=\mathbb E_\rho|\beta|^2,
\]

\[
\mathcal L_H=\|\partial_t\sqrt f\|_2^2,
\qquad
d_H=\nu\frac{\mathcal D}{H}.
\]

Since

\[
n\cdot a_{\rm rel}=\alpha\chi+s\kappa,
\qquad
\bar\chi=-\frac{d_H}{2},
\qquad
\mathcal L_H
=4V_\alpha+V_\chi-4\operatorname{Cov}_\rho(\alpha,\chi),
\]

the preceding mean-compression equation is equivalent to

\[
\boxed{
\bar\alpha'
+\bar\alpha^2
+\frac{d_H}{2}\bar\alpha
+2V_\alpha
+\frac34\mathcal L_H
=T_\perp
+\frac34V_\chi
+\mathbb E_\rho[s\kappa].
}
\]

Thus total carrier reselection is not an independent favorable mechanism in
the full mean law. Its Hellinger speed enters with a definite sign beside
Riccati compression and compression variance. The opposing joint VPI row is
transverse pair motion, longitudinal-power fluctuation, and signed angular
turning. A moving radial horn still has a separate entry--exit flux, so this
global recombination does not erase localized carrier switching.

Put

\[
\mathcal R_{\rm VPI}
=\mathbb E_\rho[n\cdot a_{\rm rel}]
+2\operatorname{Cov}_\rho(\alpha,\chi).
\]

Whenever mean compression is weakening, \(\bar\alpha'\ge0\), the exact
necessary condition is

\[
\boxed{
\mathbb E_\rho|\beta|^2+\mathcal R_{\rm VPI}
\ge \bar\alpha^2+5\operatorname{Var}_\rho(\alpha).
}
\]

Thus neither the Riccati term nor compression-selection can terminate the
compressive phase. Turning and the complete VPI response must jointly overcome
them. No sign or coercive fraction is hidden in \(\mathcal R_{\rm VPI}\): exact
globally smooth planar and Beltrami Navier--Stokes histories realize positive,
negative, and zero regulator sectors.

The logarithmic height law also integrates exactly. On every interval
\([a,b]\) with \(H>0\),

\[
\boxed{
-\int_a^b\bar\alpha(t)\,dt
=\frac14\log\frac{H(b)}{H(a)}
+\frac\nu4\int_a^b\frac{\mathcal D(t)}{H(t)}\,dt.
}
\]

Every record doubling therefore contains at least \(\frac14\log2\) of signed,
critical-weighted material-pair compression action. An unbounded record ladder
forces

\[
-\int_0^{T_*}\bar\alpha(t)\,dt=+\infty.
\]

At the stated smooth scope, \(\bar\alpha\) is continuous. Every positive
record gain therefore contains a nonempty open time interval on which
\(\bar\alpha<0\). The identity fixes the action of that compression, while the
countertests below rule out a scale-independent lower bound on its duration.

This conclusion requires neither sign persistence nor a minimum physical dwell
time. It does not say that one fixed pair carries every doubling: the selection
equation allows the normalized weight to move among the same history's
material pairs. The unresolved Gold question is whether the complete VPI law
permits that compression-selection process to repeat through unbounded records.

## A terminal critical carrier cannot settle

Write \(m=da\,db\), \(f_t=d\rho_t/dm=e_t/H_t\), and

\[
g_t
=\sigma_t-\mathbb E_{\rho_t}\sigma_t
=-4(\alpha_t-\bar\alpha_t)+2(\chi_t-\bar\chi_t).
\]

The selection equation is \(\partial_t f_t=f_tg_t\). Consequently the exact
total-variation path speed and the square-root-density path speed are

\[
\frac12\|\partial_t f_t\|_{L^1(m)}
=\frac12\mathbb E_{\rho_t}|g_t|,
\qquad
\|\partial_t\sqrt{f_t}\|_{L^2(m)}^2
=\frac14\operatorname{Var}_{\rho_t}(\sigma_t)
+\mathfrak z_0(t).
\]

Here the second quantity is the almost-everywhere \(L^2\) metric speed. On
every positive-time portion of the Navier--Stokes history,
\(\mathfrak z_0=0\) by spatial analyticity.

Suppose a finite-time smooth history on \([0,T_*)\) has
\(t_n\uparrow T_*\) and \(H(t_n)\to\infty\). Then, for every \(t_0<T_*\),

\[
\boxed{
\int_{t_0}^{T_*}\mathbb E_{\rho_t}|g_t|\,dt=+\infty,
\qquad
\int_{t_0}^{T_*}
\sqrt{\operatorname{Var}_{\rho_t}(\sigma_t)}\,dt=+\infty.
}
\]

This turnover is accompanied by forced concentration. The exterior
\(X^1\)-bound in the proof of [Tao's Proposition
11.6](https://msp.org/apde/2013/6-1/apde-v6-n1-p02-s.pdf), applied to the associated
incomplete almost-smooth \(H^1\) solution with normalized pressure, supplies
an \(R_0<\infty\) such that

\[
\sup_{t<T_*}\|u(t)\|_{H^1(\{|x|>R_0\})}<\infty.
\]

Fix \(R>R_0\) and put \(d=(R-R_0)/2\). Splitting increments at length \(d\),
using the fundamental theorem of calculus on the short exterior segments and
finite energy on the long increments, gives

\[
\int_{|x|>R}\int_{\mathbb R^3}
\frac{|u(x,t)-u(y,t)|^2}{|x-y|^4}\,dy\,dx
\le C\left(
d\sup_{s<T_*}\|\nabla u(s)\|_{L^2(|x|>R_0)}^2
+d^{-1}E_0
\right).
\]

The right side is independent of \(t\). Volume preservation and division by
\(H(t_n)\) therefore show that the normalized carrier has vanishing mass when
either current endpoint lies outside \(B_R\).

Let

\[
\ell_n=\frac{E_0}{H(t_n)},
\qquad
\delta_n=\sqrt{L\ell_n}
\]

for any fixed reference length \(L>0\). The global separation-tail estimate
gives

\[
\rho_{t_n}\{r_{t_n}>\delta_n\}
\le C\frac{\ell_n}{\delta_n}
=C\sqrt{\frac{\ell_n}{L}}
\longrightarrow0.
\]

Consequently the material-pair sets

\[
C_n
=\{(a,b):X(a,t_n),X(b,t_n)\in B_R,\ r_{t_n}\le\delta_n\}
\]

satisfy

\[
\boxed{
\rho_{t_n}(C_n)\longrightarrow1,
\qquad
m(C_n)
=|\{(x,y)\in B_R^2:|x-y|\le\delta_n\}|
\le |B_R|\,|B_{\delta_n}|\longrightarrow0.
}
\]

Thus every terminal high-record sequence of one fixed rapidly decaying datum
forces genuine concentration of the full critical pair carrier on vanishing
six-dimensional material-pair sets, with asymptotically all normalized carrier
mass lying on pairs whose current Eulerian endpoints belong to one fixed
bounded region. Pair-label escape can describe only the ancestry of some
concentrating labels; it is not a second diffuse physical horn.

The current-space limit has a canonical form. Push \(\rho_{t_n}\) forward by
\(X_{t_n}\times X_{t_n}\):

\[
d\widetilde\rho_n(x,y)
=\frac1{4\pi^2H(t_n)}
\frac{|u(x,t_n)-u(y,t_n)|^2}{|x-y|^4}\,dx\,dy.
\]

The exterior estimate makes \(\{\widetilde\rho_n\}\) tight, and the
separation estimate makes \(|x-y|\to0\) in probability. Every such sequence
therefore has a subsequence and a spatial probability measure \(\mu\) for
which

\[
\boxed{
\widetilde\rho_{n_k}
\rightharpoonup
(x\mapsto(x,x))_\#\mu.
}
\]

Define the terminal spatial regularity-failure locus

\[
\Sigma_{\rm sp}
=\mathbb R^3\setminus
\left\{x_0:\exists r>0,
\ \sup_{t<T_*}\|\nabla u(t)\|_{L^\infty(B(x_0,2r))}<\infty
\right\}.
\]

The diagonal measure satisfies \(\operatorname{supp}\mu\subset\Sigma_{\rm sp}\).
Indeed, if some ball \(B(x_0,2r)\) has
\(\sup_{t<T_*}\|\nabla u(t)\|_{L^\infty(B(x_0,2r))}<\infty\), then

\[
\sup_{t<T_*}
\frac1{4\pi^2}
\iint_{B(x_0,r)^2}
\frac{|u(x,t)-u(y,t)|^2}{|x-y|^4}\,dx\,dy
<\infty.
\]

Division by \(H(t_n)\to\infty\) forces \(\mu(B(x_0,r))=0\), after shrinking
the ball once if necessary. The limiting measure records the spatial location
of vanishing-scale critical activity; it is not a concentration of fluid mass
and need not be a point mass.

The same concentration separately implies, in fixed material-label Hilbert
space,

\[
\boxed{
\sqrt{f_{t_n}}\rightharpoonup0,
\qquad
\Phi_{t_n}\rightharpoonup0
\quad\text{in }L^2(da\,db),
}
\]

while both sequences have norm one. For any fixed \(L^2\) test, split its
pairing over \(C_n\) and \(C_n^c\); absolute continuity on
\(m(C_n)\to0\) and \(\rho_{t_n}(C_n^c)\to0\) give the weak limit. Thus no
fixed material-pair profile or fixed \(L^2\) pair probe carries the terminal
record.

### Statistical singularity and the exact adjoint cost

Fix \(t_0<T_*\) and write \(f_0=f_{t_0}\). The concentrating sets above obey

\[
\rho_{t_0}(C_n)\longrightarrow0,
\qquad
\rho_{t_n}(C_n)\longrightarrow1,
\]

because \(m(C_n)\to0\) and \(f_0\in L^1(m)\). Therefore

\[
\boxed{
\begin{aligned}
\|\rho_{t_n}-\rho_{t_0}\|_{\rm TV}&\longrightarrow1,\\
\int\sqrt{f_{t_n}f_0}\,dm&\longrightarrow0,\\
D_{\chi^2}(\rho_{t_n}\|\rho_{t_0})&\longrightarrow+\infty,\\
D_{\rm KL}(\rho_{t_n}\|\rho_{t_0})&\longrightarrow+\infty.
\end{aligned}
}
\]

Indeed, the affinity is bounded by

\[
\sqrt{\rho_{t_n}(C_n)\rho_{t_0}(C_n)}
+\sqrt{\rho_{t_n}(C_n^c)\rho_{t_0}(C_n^c)},
\]

while

\[
1+D_{\chi^2}(\rho_{t_n}\|\rho_{t_0})
=\int\frac{f_{t_n}^2}{f_0}\,dm
\ge
\frac{\rho_{t_n}(C_n)^2}{\rho_{t_0}(C_n)}.
\]

The KL claim follows by applying data processing to the binary partition
\(\{C_n,C_n^c\}\). Thus a terminal high-record sequence becomes
statistically singular relative to every fixed earlier carrier.

### The density ratio is a material-lineage amplification

Fix a positive reference time \(t_0<T_*\) and define

\[
\Gamma_{t_0,t}
=\sqrt{\frac{f_t}{f_{t_0}}}
=\sqrt{\frac{e_t}{e_{t_0}}}
\sqrt{\frac{H(t_0)}{H(t)}}
\]

with the extended ratio on zero sets. Then

\[
\operatorname{Aff}(\rho_t,\rho_{t_0})
=\int\sqrt{f_tf_{t_0}}\,dm
=\mathbb E_{\rho_t}[\Gamma_{t_0,t}^{-1}].
\]

For every finite \(M\),

\[
\boxed{
\rho_t\{\Gamma_{t_0,t}\le M\}
\le
M\operatorname{Aff}(\rho_t,\rho_{t_0}).
}
\]

The terminal Hellinger affinity therefore proves

\[
\boxed{
\Gamma_{t_0,t_n}\longrightarrow+\infty
\quad\text{in }\rho_{t_n}\text{-probability}.
}
\]

On the decaying Euclidean surface,

\[
e=\frac1{4\pi^2}\frac{s^2}{r^2},
\]

so the likelihood amplitude has the full endpoint-pose form

\[
\boxed{
\Gamma_{t_0,t}
=
\frac{s(t)r(t_0)}{s(t_0)r(t)}
\sqrt{\frac{H(t_0)}{H(t)}}.
}
\]

Equivalently,

\[
\log\frac{f_t}{f_{t_0}}
=2\log\frac{s(t)r(t_0)}{s(t_0)r(t)}
-\log\frac{H(t)}{H(t_0)}.
\]

Thus a material pair sampled from the late critical carrier overwhelmingly
belongs to a lineage whose local critical amplitude
\(s/r=|V|/r^2\) has outgrown its earlier value by more than the global
root-height amplification, with an additional factor tending to infinity.
This is a statement in the moving late-carrier probability; it does not assert
convergence for a fixed pair under \(\rho_{t_0}\).

On every lineage with \(V\ne0\) throughout \([t_0,t]\), differentiation gives

\[
\log\frac{f_t}{f_{t_0}}
=\int_{t_0}^t g_\tau\,d\tau,
\qquad
\frac12g
=(\chi-\mathbb E_\rho\chi)
-2(sc-\mathbb E_\rho[sc]).
\]

The endpoint identity remains valid when \(V\) crosses zero, while the
ordinary logarithmic time integral can then be undefined. On
\(\mathbb T^3\), the endpoint identity holds for the full periodic fractional
kernel; the displayed single-chord formula holds lift by lift on the augmented
pair-lattice space rather than after summing all lifts.

The record restriction is essential. On the normalized torus, let

\[
u_N(t,y)
=\left(
e^{-\nu N^2t}\sin Ny+e^{-\nu t}\sin y,
0,0
\right).
\]

This is an exact globally smooth pressureless Navier--Stokes history because
\((u_N\cdot\nabla)u_N=0\). Its initial kinetic energy is bounded uniformly in
\(N\). At a positive time \(s_N=o(N^{-2})\), the high mode contributes order
\(N\) to \(H\) and dominates the normalized pair carrier. At

\[
t_N=\frac{\log N}{\nu N^2},
\]

its critical contribution is order \(N^{-1}\), while the frequency-one
contribution remains order one. Put \(\delta_N=N^{-1/2}\). The pair-tail
estimate gives

\[
\rho_{s_N}\{r>\delta_N\}\longrightarrow0,
\]

and the low-mode Lipschitz bound, together with the vanishing high-mode
remainder, gives

\[
\rho_{t_N}\{r\le\delta_N\}\longrightarrow0.
\]

Splitting the Hellinger affinity across these two separation sectors yields

\[
\boxed{
\operatorname{Aff}(\rho_{s_N},\rho_{t_N})\longrightarrow0.
}
\]

Thus global smoothness, energy decay, and viscosity do not supply a universal
overlap floor. This exact sector replaces a fine carrier by a coarse carrier
while \(H\) falls. Gold concerns record-selected replacement in the opposite
direction, toward increasing critical concentration.

For a fixed positive reference time \(t_0\), either

\[
\inf_{t\in\mathcal R(T)}
\operatorname{Aff}(\rho_t,\rho_{t_0})>0
\]

or uniform integrability of the record likelihoods,

\[
\lim_{K\to\infty}
\sup_{t\in\mathcal R(T)}
\mathbb E_{\rho_{t_0}}
\left[
\frac{f_t}{f_{t_0}}
\mathbf1_{\{f_t/f_{t_0}>K\}}
\right]
=0,
\]

would exclude terminal carrier concentration. Here \(\mathcal R(T)\) denotes
the critical-height record times below \(T\). Either estimate, proved from the
original datum uniformly up to the maximal time, would close Gold. Neither is
currently a strict reduction: smooth continuation already makes the carrier
family compact on each closed smooth interval, so obtaining this uniform
record estimate is continuation compactness expressed in carrier coordinates.
No Part or Field failure follows, so the statement has no Silver exit force.

This singularity is exactly the cost seen by the natural pair-vector adjoint.
Let

\[
\eta=\dot\zeta,
\qquad
K=\eta\otimes\zeta-\zeta\otimes\eta.
\]

Then \(K^*=-K\), \(K\zeta=\eta\), and

\[
\dot\Phi=\frac g2\Phi+K\Phi.
\]

For \(t<t_1<T_*\), the dual terminal condition \(G(t_1)=\Phi(t_1)\) has the
explicit overlap-preserving solution

\[
\dot G=-\frac g2G+KG,
\qquad
G(t)=\frac{f_{t_1}}{\sqrt{f_t}}\,\zeta_t.
\]

Consequently

\[
\langle\Phi(t),G(t)\rangle=1,
\qquad
\|G(t)\|_2^2
=1+D_{\chi^2}(\rho_{t_1}\|\rho_t).
\]

The angular-only tracker

\[
U(t)=\sqrt{f_{t_1}}\,\zeta_t,
\qquad
\dot U=KU,
\]

instead satisfies

\[
\|U(t)\|_2=1,
\qquad
\langle\Phi(t),U(t)\rangle
=\int\sqrt{f_tf_{t_1}}\,dm.
\]

At a terminal record sequence, the exact-overlap adjoint norm diverges at
every fixed earlier time, while the norm-preserving angular tracker loses all
overlap. Polarization turning is the skew row. Carrier selection is the
self-adjoint row that forces the density-ratio cost. They are orthogonal
coordinates of the same complete material VPI tangent.

More generally, let \(G_n^T\) be any unit terminal pair covector satisfying
\(|\langle\Phi(t_n),G_n^T\rangle|\ge c>0\), and evolve it backward by the full
dual. Pointwise orthogonality of the \(K\)-transport gives

\[
\|G_n(t_0)\|_2^2
=\int\frac{f_{t_n}}{f_{t_0}}|G_n^T|^2\,dm.
\]

The overlap outside \(C_n\) tends to zero, while on \(C_n\)
Cauchy--Schwarz gives

\[
c-o(1)
\le
\sqrt{\rho_{t_0}(C_n)}\,\|G_n(t_0)\|_2.
\]

Hence every natural full-dual probe with uniform terminal visibility has
diverging norm at each fixed earlier time.

This is a strict boundary on adjoint strategies rather than Gold closure. The
vector carrier \(\Phi=\sqrt f\,\zeta\) still omits the moving chord and relative
speed in

\[
\frac{P_H}{H}=-4\mathbb E_\rho[sc].
\]

Any closing history theorem must control the full pair pose rather than a
bounded adjoint of \(\Phi\) alone.

There is no raw-entropy shortcut. Whenever the entropy is finite and
differentiation is justified, the selection equation gives

\[
\frac d{dt}\int f\log f\,dm
=\mathbb E_\rho[g\log f],
\]

with no sign-definite Fisher term. Under

\[
u_A(x,t)=A^3v^{\nu/A}(A^2x,A^5t),
\]

one has

\[
f_A(a,b,t)=A^{12}f_{v^{\nu/A}}(A^2a,A^2b,A^5t),
\qquad
\operatorname{Ent}(f_A)
=\operatorname{Ent}(f_{v^{\nu/A}})+12\log A.
\]

Raw differential entropy depends on the six-dimensional pair-label units and
cannot be an intrinsic energy-only Gold resource. Relative entropy is
coordinate-invariant and diverges on the terminal sequence, but no
datum-controlled upper budget or monotone evolution has been proved for it.

On \(\mathbb T^3\), positive-time analyticity and compactness make
\(D_{\rm KL}(\rho_t\|\rho_s)\) finite for any two positive smooth times of a
nonconstant solution. Analytic zero-increment sets contribute only integrable
logarithmic singularities. On \(\mathbb R^3\), this proves local finiteness,
while global finiteness additionally requires

\[
\int f_t\left[\log\frac{f_t}{f_s}\right]_+\,dm<\infty.
\]

The stated rapid-decay scope does not itself prove that cross-time lower-tail
condition. The terminal KL lower bound is therefore an extended-value theorem
on \(\mathbb R^3\); a finite KL-based Gold criterion on that surface first
needs a tail-comparability theorem. Total variation and Hellinger affinity are
finite without this extra condition.

For a fixed reference time \(s\), define

\[
K_s(t)=D_{\rm KL}(\rho_t\|\rho_s).
\]

Whenever the required derivatives are finite,

\[
K_s'(t)
=\mathbb E_{\rho_t}
\left[g_t\log\frac{f_t}{f_s}\right],
\]

and hence

\[
K_s(s)=K_s'(s)=0,
\qquad
K_s''(s)=\mathbb E_{\rho_s}g_s^2=4\mathcal L_H(s).
\]

Thus relative entropy has the Hellinger selection speed as its local
curvature. It is blind to the polarization component
\(\sqrt f\,\dot\zeta\), and therefore does not by itself observe the vector
carrier or the full pair pose.

The raw material-label Fisher information is generically infinite before any
scaling test. Near the pair diagonal of a nonconstant smooth field, on cones
where the directional velocity gradient is nonzero,

\[
f(a,b)\asymp |a-b|^{-2},
\qquad
|\nabla_{a,b}\log f|^2\asymp |a-b|^{-2}.
\]

The relative radial integral in
\(\int f|\nabla\log f|^2\,dm\) therefore contains
\(\int_0^\varepsilon r^{-2}\,dr=+\infty\). Any Fisher route must first
renormalize the canonical diagonal singularity and then prove a new
same-participant evolution inequality for that renormalized object.

This concentration proves both path-length divergences directly. Finite
\(\int\mathbb E_{\rho_t}|g_t|\,dt\) would make \(f_t\) Cauchy in \(L^1(m)\).
Finite \(\int\sqrt{\operatorname{Var}_{\rho_t}(\sigma_t)}\,dt\) would make
\(\sqrt{f_t}\) Cauchy in \(L^2(m)\), hence again make \(f_t\) Cauchy in
\(L^1(m)\). Either conclusion makes \(\{f_{t_n}\}\) uniformly integrable,
contradicting \(\rho_{t_n}(C_n)\to1\) on sets with \(m(C_n)\to0\).

The possible escaped-label ancestry is quantitatively rare in base measure.
Indeed,

\[
\int_{\mathbb R^3}|X(a,t)-a|^2\,da
\le t\int_0^t\|u(s)\|_2^2\,ds
\le T_*^2E_0.
\]

If \(L_R(t)=X_t^{-1}(B_R)\), then for \(A>R\),

\[
|L_R(t)\cap\{|a|>A\}|
\le\frac{T_*^2E_0}{(A-R)^2}.
\]

This controls the Lebesgue size of long-displacement labels, while leaving
open whether the singular normalized carrier is tight in its original labels.

The proved infinite turnover now has an exact critical upper control. For
\(0<\theta<1\), \(1<p<\infty\), and \(p'=p/(p-1)\), let

\[
[F]_{\dot W^{\theta,p}}^p
=\iint_{\mathbb R^3\times\mathbb R^3}
\frac{|F(x)-F(y)|^p}{|x-y|^{3+\theta p}}\,dx\,dy.
\]

Hölder on the actual pair increments gives

\[
\boxed{
\frac12\mathbb E_\rho|g|
\le
\frac1{4\pi^2H}
\left(
4[u]_{\dot W^{2/3,3}}^3
+2[u]_{\dot W^{\theta,p}}
[\mathfrak a]_{\dot W^{1-\theta,p'}}
\right).
}
\]

At \(\theta=1/2\), \(p=2\), this becomes

\[
\frac12\mathbb E_\rho|g|
\le
\frac{[u]_{\dot W^{2/3,3}}^3}{\pi^2H}
+2\sqrt{\frac{H(\mathfrak a)}H}.
\]

Combining it with terminal infinite turnover proves

\[
\boxed{
\int^{T_*}\frac{[u]_{\dot W^{2/3,3}}^3}{H}\,dt
+\int^{T_*}\sqrt{\frac{H(D_tu)}H}\,dt
=+\infty.
}
\]

Both terms are invariant time actions at the Navier--Stokes scaling. This is a
restriction on every terminal high-record history. No datum-bound for either
term is supplied here.

## The local tensor is a moving-chord incidence field

Start from the Eulerian all-separation tensor

\[
\mathsf T_u(z)
=\frac1{\pi^2}\int_0^1\int_{\mathbb R^3}
\frac{|u(z+(1-s)r)-u(z-sr)|^2}{|r|^4}
\widehat r\otimes\widehat r\,dr\,ds.
\]

For \(z_s=X(b,t)+sR\), the all-separation tensor has the exact distributional
representation

\[
\mathsf T_u(z)
=4\iint e_{ab}
\int_0^1 n_{ab}\otimes n_{ab}\,
\delta(z-z_s)\,ds\,da\,db.
\]

The interior point of the straight chord moves with

\[
w_s=(1-s)u(X(b,t),t)+s u(X(a,t),t),
\]

which generally differs from the fluid velocity at \(z_s\). Define

\[
\mathcal J_{ijk}
=4\iint e
\int_0^1 n_i n_j(w_s)_k
\delta(z-z_s)\,ds\,da\,db.
\]

Then

\[
\partial_t(\mathsf T_u)_{ij}
+\partial_k\mathcal J_{ijk}
=4\iint\!\int_0^1
\left[
\dot e\,n_i n_j
+e(\beta_i n_j+n_i\beta_j)
\right]
\delta(z-z_s)\,ds\,da\,db.
\]

The interpolation defect is exactly

\[
w_s-u(z_s)
=\int_0^1
G(s,\theta)(R\cdot\nabla)^2
u(X(b,t)+\theta R,t)\,d\theta,
\]

\[
G(s,\theta)
=\min(s,\theta)\bigl(1-\max(s,\theta)\bigr).
\]

Thus \(\mathsf T_u\) is the incidence field of straight chords whose material
endpoints move with the fluid. The chord interior is controlled by the same
field's curvature and is not generally a material line. The tensor is a
derived whole-field configuration, not an independently transported object.

## Terminal critical mass forces late cross-pair work

Assume the same smooth decaying history has times \(\tau_n\uparrow T_*\) for
which

\[
R_n=\|\Lambda^{1/2}u(\tau_n)\|_2^2\longrightarrow\infty,
\qquad
E_0=\|u_0\|_2^2>0.
\]

After passing to first record times, assume
\(\|\Lambda^{1/2}u(s)\|_2^2\le R_n\) for every \(s\le\tau_n\).

Set

\[
\lambda_n=\frac{R_n}{4E_0},
\qquad
v_n=P_{\ge\lambda_n}u(\tau_n).
\]

The energy bound gives

\[
\|P_{<\lambda_n}u(\tau_n)\|_{\dot H^{1/2}}^2
\le\lambda_nE_0=\frac{R_n}{4},
\]

and hence

\[
\boxed{
\|v_n\|_{\dot H^{1/2}}^2\ge\frac{3R_n}{4}.
}
\]

Fix \(c\ge1/2\), and for all sufficiently large \(n\) put

\[
\ell_n=\frac{c}{\nu\lambda_n^2},
\qquad
\sigma_n=\tau_n-\ell_n>0,
\]

\[
w_n(s)=e^{\nu(\tau_n-s)\Delta}v_n.
\]

With \(B(u)=\mathbb P\nabla\!\cdot(u\otimes u)\), the backward heat equation
for \(w_n\) and the Navier--Stokes equation give

\[
\frac d{ds}\langle u(s),\Lambda w_n(s)\rangle
=-\langle B(u(s)),\Lambda w_n(s)\rangle.
\]

At the earlier endpoint,

\[
\left|
\langle u(\sigma_n),\Lambda w_n(\sigma_n)\rangle
\right|
\le
E_0\sup_{\rho\ge\lambda_n}
\rho e^{-\nu\ell_n\rho^2}
\le\frac{R_n}{4}e^{-c}.
\]

Put \(c_0=(3-e^{-c})/4>1/2\). Therefore, for all sufficiently large \(n\),

\[
\boxed{
\int_{\sigma_n}^{\tau_n}
-\langle B(u(s)),\Lambda w_n(s)\rangle\,ds
\ge c_0R_n.
}
\]

Equivalently, the high-pass Duhamel contribution accumulated on this shrinking
window has \(\dot H^{1/2}\) norm at least \(c_0\sqrt{R_n}\). An unbounded
critical-height history cannot obtain its endpoint critical mass by homogeneous
heat survival from \(\sigma_n\); it contains critical-size late projected
transport--pressure response.

This response has an exact pair representation,

\[
\langle u,\Lambda w\rangle
=\frac1{2\pi^2}\iint
\frac{\delta u\cdot\delta w}{|x-y|^4}\,dx\,dy.
\]

The backward heat probe \(w\) is divergence-free. For
\(\theta\in[0,1]\), set

\[
x_+=z+(1-\theta)r,
\qquad
x_-=z-\theta r,
\qquad
\delta u=u(x_+)-u(x_-),
\qquad
\delta w=w(x_+)-w(x_-).
\]

Define the signed cross-incidence tensor

\[
\mathsf T_{u,w}(z)
=\frac1{\pi^2}\int_0^1\!\int
\frac{\delta u\cdot\delta w}{|r|^4}
\widehat r\otimes\widehat r\,dr\,d\theta.
\]

Then

\[
\boxed{
-\langle B(u),\Lambda w\rangle
=-2\int S:\mathsf T_{u,w}\,dx
+\langle(u\cdot\nabla)w,\Lambda u\rangle.
}
\]

The terminal certificate therefore lands on a signed cross-pair weight and a
probe-advection term. It is one same-history VPI identity, but it is not the
positive pair tensor \(\mathsf T_u\) or its Gold current.

The normalized pair-vector law identifies the exact decomposition that any
bridge must control. The backward heat field \(w\), and hence \(\Phi_w\) and
\(H_w\), is a future-fitted
proof coordinate derived from \(u(\tau_n)\); it is not a component of the
fluid. For the same moving pair transform \(\mathcal I_s\), set

\[
\Psi_w=\mathcal I_sw,
\qquad
H_w=\|\Psi_w\|_2^2,
\qquad
\Phi_w=\frac{\Psi_w}{\sqrt{H_w}},
\qquad
\bar\sigma_w=\frac{H_w'}{H_w}.
\]

The fractional cross-pair identity is

\[
\langle u,\Lambda w\rangle
=2\sqrt{HH_w}\,\langle\Phi,\Phi_w\rangle.
\]

Differentiating it along the actual material labels gives

\[
\boxed{
-\frac{\langle B(u),\Lambda w\rangle}{2\sqrt{HH_w}}
=\langle\dot\Phi,\Phi_w\rangle
+\langle\Phi,\dot\Phi_w\rangle
+\frac{\bar\sigma+\bar\sigma_w}{2}
\langle\Phi,\Phi_w\rangle.
}
\]

For the record probe on \(I_n=[\sigma_n,\tau_n]\), put

\[
Z_n(s)
=-\frac{\langle B(u(s)),\Lambda w_n(s)\rangle}
{2\sqrt{H(s)H_{w_n}(s)}}.
\]

Since \(H(s)\le H(\tau_n)\) on a record window and backward heat contraction
gives \(H_{w_n}(s)\le H_{w_n}(\tau_n)\le H(\tau_n)\), the work lower bound
implies

\[
\int_{I_n}(Z_n)_+\,ds\ge c_0.
\]

Hence

\[
\boxed{
c_0
\le
\int_{I_n}|\langle\dot\Phi,\Phi_{w_n}\rangle|\,ds
+\int_{I_n}\|\dot\Phi_{w_n}\|_2\,ds
+\frac12\int_{I_n}
(|\bar\sigma|+|\bar\sigma_{w_n}|)\,ds.
}
\]

At least one of the three terms is at least \(c_0/3\). No identity forces the
actual-carrier tangent to be that term. For an exact periodic countertest,
dilate a positive-current 2D3C triad so that the endpoint cutoff lies below
its minimum nonzero Fourier frequency. Then

\[
\Phi_w(\tau)=\Phi(\tau),
\qquad
\langle\dot\Phi(\tau),\Phi_w(\tau)\rangle=0,
\]

while \(-\langle B(u(\tau)),\Lambda u(\tau)\rangle=P_H(\tau)>0\). On a
backward interval of length \(\varepsilon\), source work is
\(O(\varepsilon)\) while the actual-tangent pairing is
\(O(\varepsilon^2)\). This refutes pointwise and arbitrary-short universal
fixed-fraction observability. It does not refute a theorem specific to the
terminal heat-scale windows.

The endpoint high-pass state is nevertheless forced onto the amplified
material lineages. Fix a positive reference time \(t_0\), choose \(K<\infty\),
and set

\[
A_{K,n}=\{\Gamma_{t_0,\tau_n}>K\}.
\]

Then \(\rho_{\tau_n}(A_{K,n})\to1\). Moreover,

\[
\left\langle\Phi(\tau_n),\Phi_{w_n}(\tau_n)\right\rangle
=
\sqrt{\frac{H_{w_n}(\tau_n)}{H(\tau_n)}}
\ge\frac{\sqrt3}{2}.
\]

The overlap split over \(A_{K,n}\cup A_{K,n}^c\) and
\(\rho_{\tau_n}(A_{K,n}^c)\to0\) yield

\[
\boxed{
\liminf_{n\to\infty}
\int_{A_{K,n}}
|\Phi_{w_n}(\tau_n)|^2\,dm
\ge\frac34.
}
\]

So endpoint state co-location is a theorem. To state the remaining historical
obstruction without inventing a positive pairwise source density, define

\[
C_A(t)
=2\int_A\Psi_u(t)\cdot\Psi_{w_n}(t)\,dm.
\]

At the endpoint,

\[
C_{A_{K,n}}(\tau_n)
=
\langle u(\tau_n),\Lambda v_n\rangle+o(R_n),
\]

whereas the heat estimate gives only

\[
|C(\sigma_n)|\le\frac{e^{-c}}4R_n
\]

for the global sum over all pair labels. Put

\[
H_n=H(\tau_n)=\frac{R_n}{2}.
\]

The endpoint localization above gives

\[
C_{A_{K,n}}(\tau_n)
\ge\left(\frac32-o(1)\right)H_n.
\]

There is consequently an exact reconstruction-or-persistence alternative:

\[
\boxed{
\begin{aligned}
|C_{A_{K,n}}(\sigma_n)|\le\frac{H_n}{2}
&\Longrightarrow
C_{A_{K,n}}(\tau_n)-C_{A_{K,n}}(\sigma_n)
\ge(1-o(1))H_n,\\[2mm]
|C_{A_{K,n}}(\sigma_n)|>\frac{H_n}{2}
&\Longrightarrow
H(\sigma_n)>\frac{H_n}{16},
\qquad
\rho_{\sigma_n}(A_{K,n})>\frac1{16}.
\end{aligned}
}
\]

For the second implication, Cauchy--Schwarz, backward heat contraction, and the
record property give

\[
\frac{H_n}{2}
<2\left(
\int_{A_{K,n}}|\Psi_u(\sigma_n)|^2\,dm
\right)^{1/2}
\|\Psi_{w_n}(\sigma_n)\|_2
\le
2\sqrt{
H_n
\int_{A_{K,n}}|\Psi_u(\sigma_n)|^2\,dm
}.
\]

Hence

\[
H(\sigma_n)\rho_{\sigma_n}(A_{K,n})
=
\int_{A_{K,n}}|\Psi_u(\sigma_n)|^2\,dm
>\frac{H_n}{16}.
\]

Since first-record selection gives \(H(\sigma_n)\le H_n\), both lower bounds
follow. The earlier cancellation branch is therefore a genuine physical
branch: the same terminal lineage cohort already carries a fixed fraction of
the earlier critical carrier, and the complement supplies the opposing signed
overlap needed to hide it in the small global boundary value.

The persistence branch is not passive inheritance from \(t_0\). Since

\[
A_{K,n}
=\left\{
\frac{f_{\tau_n}}{f_{t_0}}>K^2
\right\},
\]

the change-of-measure identity gives

\[
\boxed{
\rho_{t_0}(A_{K,n})
\le K^{-2}\rho_{\tau_n}(A_{K,n})
\le K^{-2}.
}
\]

Take a diagonal sequence \(K_n\to\infty\) slowly enough that
\(\rho_{\tau_n}(A_{K_n,n})\to1\). Whenever the persistence branch occurs,

\[
\rho_{t_0}(A_{K_n,n})\longrightarrow0,
\qquad
\rho_{\sigma_n}(A_{K_n,n})>\frac1{16}.
\]

Thus the same terminal material cohort was recruited from vanishing normalized
critical weight before the final heat window. Persistence shifts the required
reconstruction to earlier material time; it does not remove it.

This prior recruitment has an exact cohort-conditioned action. Let

\[
M_n(t)=\rho_t(A_{K_n,n}).
\]

Because \(A_{K_n,n}\) is fixed in material-label space, it has no entry--exit
flux. The zero-safe selection equation \(\partial_t f_t=f_tg_t\) gives

\[
\frac d{dt}\log M_n(t)
=
\mathbb E_{\rho_t(\cdot\mid A_{K_n,n})}g_t
\]

almost everywhere. Hence the persistence branch forces

\[
\boxed{
\int_{t_0}^{\sigma_n}
\mathbb E_{\rho_t(\cdot\mid A_{K_n,n})}g_t\,dt
\ge
2\log K_n-\log16
\longrightarrow+\infty.
}
\]

The exact decomposition

\[
g_t
=-4(\alpha_t-\bar\alpha_t)
+2(\chi_t-\bar\chi_t),
\qquad
\chi_t=\frac{\zeta_t\cdot a_{{\rm rel},t}}{s_t},
\]

shows what performs the recruitment. Relative material compression and the
directional relative acceleration act together, centered against the complete
critical carrier. Since

\[
a_{\rm rel}
=\frac{-\delta\nabla p+\nu\,\delta\Delta u}{r},
\]

pressure and viscosity occur as the simultaneous same-field VPI response; the
action assigns neither one a separately owned sign or budget. Individual
relative-velocity zero crossings do not invalidate the aggregate identity:
\(f_tg_t=\partial_tf_t\) is zero-safe and \(M_n\) is absolutely continuous
under the stated differentiated-pair-integral hypotheses.

### The part--whole rejoin removes the normalized-ledger separation

For every fixed material-label cohort \(A\), define its unnormalized critical
pair contribution

\[
H_A(t)
=\int_A e_t\,dm
=H(t)\rho_t(A).
\]

Put

\[
a_A=\mathbb E_{\rho_t(\cdot\mid A)}\alpha,
\qquad
c_A=\mathbb E_{\rho_t(\cdot\mid A)}\chi.
\]

The zero-safe pair-energy equation is

\[
\boxed{
H_A'=H_A(-4a_A+2c_A).
}
\]

Whenever \(H_A>0\),

\[
\boxed{
\frac d{dt}\log H_A=-4a_A+2c_A,
\qquad
\frac d{dt}\log\rho_t(A)
=\frac d{dt}\log H_A-\frac d{dt}\log H.
}
\]

Thus normalized recruitment and global height growth are relative coordinates
of the one cohort contribution \(H_A\). The normalized carrier does not create
a second critical-energy owner.

For \(A_n=A_{K_n,n}\), the direct persistence estimate above already gives the
sharp product bound

\[
H_{A_n}(\sigma_n)
=H(\sigma_n)\rho_{\sigma_n}(A_n)
>\frac{H_n}{16},
\]

while

\[
H_{A_n}(t_0)
=H(t_0)\rho_{t_0}(A_n)
\le\frac{H(t_0)}{K_n^2}.
\]

Consequently

\[
\boxed{
\int_{t_0}^{\sigma_n}
\left(-4a_{A_n}+2c_{A_n}\right)\,dt
\ge
\log\frac{H_n}{16H(t_0)}
+2\log K_n
\longrightarrow+\infty.
}
\]

The positive parts obey the exact causal consequence

\[
\boxed{
4\int_{t_0}^{\sigma_n}(-a_{A_n})_+\,dt
+2\int_{t_0}^{\sigma_n}(c_{A_n})_+\,dt
\ge
\log\frac{H_n}{16H(t_0)}
+2\log K_n.
}
\]

Every persistent terminal cohort therefore carries unbounded conditional
material compression, unbounded positive complete VPI relative acceleration,
or both. The second alternative is the complete same-field
pressure--viscous response, not a pressure-only or viscosity-only channel.

The full pair generator also passes exactly to every fixed cohort. With
\(\mathbb E_A=\mathbb E_{\rho_t(\cdot\mid A)}\),

\[
\boxed{
\frac d{dt}\mathbb E_A F
=\mathbb E_A[\mathscr D_{\rm pair}F]
+\operatorname{Cov}_A(\sigma,F).
}
\]

Taking \(F=\alpha\) gives

\[
a_A'
=-a_A^2-5\operatorname{Var}_A(\alpha)
+\mathbb E_A|\beta|^2
+\mathbb E_A[n\cdot a_{\rm rel}]
+2\operatorname{Cov}_A(\alpha,\chi).
\]

Since

\[
n\cdot a_{\rm rel}=\alpha\chi+s\kappa,
\qquad
\mathcal L_A
=\frac14\operatorname{Var}_A(\sigma)
=4\operatorname{Var}_A(\alpha)
+\operatorname{Var}_A(\chi)
-4\operatorname{Cov}_A(\alpha,\chi),
\]

this is equivalent to

\[
\boxed{
a_A'+a_A^2-a_Ac_A
+2\operatorname{Var}_A(\alpha)
+\frac34\mathcal L_A
=
\mathbb E_A|\beta|^2
+\frac34\operatorname{Var}_A(\chi)
+\mathbb E_A[s\kappa].
}
\]

The future-selected terminal cohort is therefore a lawful fixed-label part of
the one material history, while remaining coupled to the whole velocity field
through \(a_{\rm rel}\). It is not an autonomous packet or a second fluid.

The conditional identity supplies no universal coercive sign. The exact
pressureless periodic Navier--Stokes shear

\[
u(y,t)
=\varepsilon
\left(e^{-\nu t}\sin y,\ 0,\ e^{-4\nu t}\sin2y\right)
\]

has fixed positive-measure pair cohorts on which

\[
\mathbb E_A|\beta|^2+\mathbb E_A[s\kappa]<0
\]

for sufficiently small \(\varepsilon\), while
\(\operatorname{Var}_A(\chi)\) can be made arbitrarily small. This rules out an
unconditional sign or fixed coercive fraction in the cohort law. It does not
rule out an additional theorem special to the terminal likelihood cohorts.

Finally, the large cohort amplification is not yet a smaller Gold theorem.
Algebraically,

\[
\frac{H_A(t)}{H_A(t_0)}
=\frac{H(t)}{H(t_0)}
\cdot\frac{\rho_t(A)}{\rho_{t_0}(A)}.
\]

A uniform terminal-cohort bound on the left would directly prevent the
critical-height/likelihood divergence already under test. It becomes a strict
Gold reduction only after an independently finite, datum-controlled
same-material action is proved to dominate it without counting overlapping
future-selected cohorts repeatedly. The installed no-recount machinery is a
consumer of such an action, not its source.

There is no Silver landing. The future-selected cohort remains a fixed-label
part of the admitted same Navier--Stokes history and obeys the exact
whole-field conditional generator. Its amplification supplies neither a Part
failure nor a Field failure, and Pack is not a CM face. A Silver effect would
need an additional proved membership clause identifying loss of
material-lineage uniform integrability as a Field failure.

The cross-pair representation remains signed, and the Leray/pressure response
is nonlocal, so neither branch defines a positive source measure owned by
individual pairs. The first branch proves order-\(H_n\) cross-pair state
reconstruction on the terminal cohort. The second proves backward material
recruitment of that cohort. A fixed-datum bound preventing unbounded repetition
of both mechanisms is still open.

Thus the identity decomposes the scalar projected-source work among the actual
carrier tangent, the moving future-probe tangent, and the two norm-change rows.
The scalar work does not lower-bound material carrier turnover by itself.

The same boundary is visible without directional normalization whenever the
following quotient and its material derivative are integrable; otherwise the
preceding zero-safe vector identity is the authoritative form. Put

\[
\theta
=\frac{\delta u\cdot\delta w}{|\delta u|^2}
\]

on the \(\rho\)-support. Then

\[
\langle u,\Lambda w\rangle=2H\mathbb E_\rho\theta
\]

and

\[
\boxed{
-\frac{\langle B(u),\Lambda w\rangle}{2H}
=\mathbb E_\rho\dot\theta
+\bar\sigma\mathbb E_\rho\theta
+\mathbb E_\rho[g\theta].
}
\]

Since \(\mathbb E_\rho\theta^2\le H_w/H\),

\[
\left|
-\frac{\langle B(u),\Lambda w\rangle}{2H}
-\mathbb E_\rho\dot\theta
-\bar\sigma\mathbb E_\rho\theta
\right|
\le
\sqrt{\operatorname{Var}_\rho\sigma}
\sqrt{\frac{H_w}{H}}.
\]

Equivalently,

\[
\sqrt{\operatorname{Var}_\rho\sigma}
\ge
\left|
-\frac{\langle B(u),\Lambda w\rangle}{2H}
-\mathbb E_\rho\dot\theta
-\bar\sigma\mathbb E_\rho\theta
\right|
\sqrt{\frac H{H_w}}.
\]

Here \(\dot\theta\) is the complete pair-overlap drift generated by both the
actual material pair tangent and the moving probe. Only the residual after
that overlap drift and the norm change can force scalar carrier turnover.

For any positive reference time \(t_0\), the likelihood amplitude gives the
exact two-time form

\[
\frac12\langle u(t),\Lambda w(t)\rangle
=H(t)\mathbb E_{\rho_t}\theta_t
=H(t)\mathbb E_{\rho_{t_0}}
\left[\Gamma_{t_0,t}^2\theta_t\right].
\]

Hence

\[
\boxed{
\int_{t_0}^{\tau}
-\frac12\langle B(u),\Lambda w\rangle\,dt
=
\left[
H(t)\mathbb E_{\rho_{t_0}}
\left(\Gamma_{t_0,t}^2\theta_t\right)
\right]_{t_0}^{\tau}.
}
\]

The likelihood affects source work only through the signed observable
\(\theta_t\). In differential form,

\[
-\frac{\langle B,\Lambda w\rangle}{2H}
=
\mathbb E_\rho\dot\theta
+\bar\sigma\,\mathbb E_\rho\theta
+\operatorname{Cov}_\rho(g,\theta).
\]

Neither large \(\Gamma\) nor Hellinger singularity gives a sign to the
covariance, probe drift, or norm row. A historical alignment or
signed-cancellation theorem is additional structure.

This is a structural participation distinction. If
\(C=(u\cdot\nabla)u\), then

\[
B=\mathbb PC=C+\nabla p,
\qquad
D_tu=\nu\Delta u+C-B=\nu\Delta u-\nabla p.
\]

The backward heat probe isolates the divergence-free Eulerian source \(B\),
whereas material-pair polarization is driven by the recombined acceleration
\(D_tu\). In every pressureless 2D3C flow, \(C=B\), so the projected source
can be nonzero while its nonlinear part cancels completely from \(D_tu\). In
a Beltrami flow, \(B=0\) while \(C-B=-\nabla p\) can be nonzero. These exact
full-PDE sectors rule out algebraic identification of \(B\) with material
turnover. Any coercive comparison requires additional same-history hypotheses;
it cannot follow from the coordinate split alone.

## Terminal records force unbounded high-frequency projected-source action

The same terminal probe gives an exact high-pass source-action lower bound. Since
\(w_n\) is supported above \(\lambda_n\),

\[
\int_{\sigma_n}^{\tau_n}
\|\Lambda w_n(s)\|_{\dot H^{1/2}}^2\,ds
=\int_{\sigma_n}^{\tau_n}
\|w_n(s)\|_{\dot H^{3/2}}^2\,ds
\le\frac{R_n}{2\nu}.
\]

Cauchy--Schwarz against the preceding work lower bound yields

\[
\boxed{
\int_{\sigma_n}^{\tau_n}
\|P_{\ge\lambda_n}B(u(s))\|_{\dot H^{-1/2}}^2\,ds
\ge2\nu c_0^2R_n.
}
\]

Both endpoints of these windows tend to \(T_*\), so they contain a pairwise
disjoint subsequence. Summing on that subsequence gives

\[
\boxed{
\int_0^{T_*}\|B(u(t))\|_{\dot H^{-1/2}}^2\,dt=+\infty.
}
\]

Finite energy controls the same projected transport--pressure response one
derivative lower:

\[
\|B(u)\|_{\dot H^{-3/2}}
\lesssim \|u\otimes u\|_{\dot H^{-1/2}}
\lesssim \|u\|_2\|u\|_6
\lesssim \|u\|_2\|\nabla u\|_2,
\]

and hence

\[
\int_0^{T_*}\|B(u(t))\|_{\dot H^{-3/2}}^2\,dt
\le C\frac{E_0^2}{\nu}<\infty.
\]

Define the finite coarse-action measure and its instantaneous frequency quotient by

\[
d\mu_B(t)=\|B(u(t))\|_{\dot H^{-3/2}}^2\,dt,
\qquad
\kappa_B(t)^2
=\frac{\|B(u(t))\|_{\dot H^{-1/2}}^2}
{\|B(u(t))\|_{\dot H^{-3/2}}^2},
\]

with the quotient set to zero when the denominator vanishes. Every terminal
window satisfies

\[
\boxed{
\int_{\sigma_n}^{\tau_n}\kappa_B(t)^2\,d\mu_B(t)
\ge2\nu c_0^2R_n.
}
\]

Thus the projected nonlinear response has finite coarse
\(\dot H^{-3/2}\) action but an unbounded high-frequency
\(\dot H^{-1/2}\) moment on shrinking terminal windows. High endpoint mass
cannot be inherited passively through the heat flow. This proves unavoidable
action above thresholds tending to infinity, not a normalized source carrier
or coherent source trajectory. The one-derivative gap prevents the finite
energy measure from charging that critical source action.

At \(\tau_n\), let

\[
\ell_{c,n}=\frac{E_0}{H(\tau_n)}=\frac{2E_0}{R_n}.
\]

Then the source cutoff and window are

\[
\lambda_n=\frac1{2\ell_{c,n}},
\qquad
\ell_n
=\frac{4c\ell_{c,n}^2}{\nu},
\]

and the source lower bound is \(4\nu c_0^2H(\tau_n)\). The physical pair
length, reciprocal nonlinear-source frequency, and viscous heat clock are
therefore one datum-anchored terminal scale. This is a scale identification,
not a proof that the source work is carried by the same pairs that dominate
\(\rho_{\tau_n}\).

An exact periodic countertest shows why that last distinction is necessary.
With

\[
v=(0,2\cos x,-2\cos y-2\sin(x+y)),
\]

take

\[
u_N(0)
=N^4v
+\left(0,0,
\sqrt{\frac{2\sqrt2-2}{\nu}}\,N^{9/2}\cos Nx\right).
\]

This is initial data for a globally smooth 2D3C Navier--Stokes history with
constant pressure. Its normalized critical pair measure concentrates at
separation \(O(N^{-1})\), its critical height is initially increasing, and

\[
B(u_N(0))
=\left(0,0,
4N^8\cos x\,[\sin y-\cos(x+y)]\right)
\]

has Fourier support below \(\sqrt5\). Thus positive growth and short-pair
concentration do not force instantaneous high-frequency source co-location.
The terminal source theorem is genuinely historical and future-fitted.

## Exact boundary of the consequence

Fixed-viscosity scaling makes the time actions of \(\alpha\), \(\beta\), and
\(\dot e/e\) scale invariant while kinetic energy scales like length. At one
common reference configuration, replacing the datum by its negative preserves
\(e\), \(n\), \(H\), \(\mathcal D\), and every even orientation tensor while
reversing \(\alpha\), \(\beta\), and \(P_H\). This is an instantaneous
countertest, not a time-reversal or sign symmetry between forward
Navier--Stokes histories.

There is also no uniform positive floor, depending only on kinetic energy, for
a fixed nonzero relative record upcrossing measured by Leray dissipation or the
known \(\int H^2dt\) bound. Choose a divergence-free
Schwartz field \(\psi\) with \(P_H(\psi)>0\), evolve it as \(v^{\nu/A}\) at
viscosity \(\nu/A\), and set

\[
u_A(x,t)=A^3v^{\nu/A}(A^2x,A^5t),
\qquad
p_A(x,t)=A^6q^{\nu/A}(A^2x,A^5t).
\]

This is an exact fixed-\(\nu\) history, \(\|u_A(0)\|_2=\|\psi\|_2\), and on a
fixed positive relative-gain event of duration \(O(A^{-5})\),

\[
\nu\int\|\Lambda u_A\|_2^2dt=O(A^{-1}),
\qquad
\int H(u_A)^2dt=O(A^{-1}),
\]

while the normalized pair-compression action remains order one. The event
comes from smooth small-viscosity convergence to the local Euler history of
\(\psi\). On a common local \(H^m\) interval, the difference
\(z=v^\mu-v^0\) obeys

\[
\partial_tz+v^\mu\cdot\nabla z+z\cdot\nabla v^0+\nabla q
=\mu\Delta v^\mu,
\qquad \mu=\frac\nu A,
\]

and the standard \(H^{m-1}\) energy estimate gives
\(\sup_{[0,\tau_0]}\|z\|_{H^{m-1}}\le C\mu\). Strict positive Euler
critical-height growth therefore persists for all large \(A\). This is a
varying-data counterfamily, not one terminal ladder.

The same family removes the entire energy-interpolation hierarchy as a source
of an energy-only floor for that fixed relative gain. For

\[
\mathcal M_s(t)=\|\Lambda^su(t)\|_2^2,
\qquad 0<s\le1,
\]

Fourier interpolation and the energy identity give

\[
\mathcal M_s\le \mathcal M_0^{1-s}\mathcal M_1^s,
\]

\[
\boxed{
\int_0^T \mathcal M_s(t)^{1/s}\,dt
\le
\frac{\mathcal M_0(0)^{1/s}}{2\nu}.
}
\]

For the exact fixed-energy family above and each fixed \(s\in(0,1]\),

\[
\mathcal M_s(u_A(t))=A^{4s}\mathcal M_s(v^{\nu/A}(A^5t)),
\]

so on its fixed relative-gain event,

\[
\boxed{
\int \mathcal M_s(u_A)^{1/s}dt
=A^{-1}\int_0^{\tau_0}
\mathcal M_s(v^{\nu/A})^{1/s}d\tau
=O(A^{-1}).
}
\]

Thus every globally finite Sobolev occupation supplied by interpolation
between kinetic energy and Leray dissipation can have vanishing cost on a
fixed critical-height gain at fixed initial energy. For \(s>1/2\), the
scale-critical exponent would instead be

\[
p_c=\frac2{2s-1}>\frac1s.
\]

At \(s=1\), this is the unresolved \(\int \mathcal M_1^2dt\) rather than the finite
\(\int \mathcal M_1dt\); at \(s=1/2\), critical control is the height itself. The
energy hierarchy therefore stops strictly below a critical record charger.
No uniform statement as \(s\downarrow0\), no full-datum-dependent floor, and no
one-history no-reuse conclusion is asserted.

The late cross-pair work also has no state-local coercive comparison with the
Gold current. On the normalized torus, let

\[
v=(0,2\cos x,-2\cos y-2\sin(x+y)),
\qquad
v_N=v(Nx,Ny,z),
\]

and put

\[
u_N=-v+N^{-2/3}v_N,
\qquad N\ge3.
\]

The low and high cubic triples do not mix. With

\[
P_0=P_H(v)=2\sqrt2-2,
\]

one obtains

\[
P_H(u_N)=0,
\qquad
-\left\langle
B(u_N),\Lambda P_{\ge N/2}u_N
\right\rangle=P_0>0.
\]

Replacing \(N^{-2/3}\) by \(a\) with \(a^3N^2=1+\delta\) makes the two
quantities \(\delta P_0\) and \((1+\delta)P_0\). One overall amplitude scaling
makes the total height derivative positive against viscosity, while their
ratio tends to infinity as \(\delta\downarrow0\). The endpoint test slot and
the complete Gold-current slot cannot be identified by an instantaneous
inequality, even at positive net gain. A genuinely temporal no-reuse or
cancellation theorem remains possible.

Exact periodic shears, Beltrami heat histories, recurrent cellular paths, and
smooth positive-current 2D3C histories separately show that anisotropy
magnitude, viscous decay, pair recurrence, and one positive compression
episode alone provide neither the current sign, a monotonicity law, nor a
sufficient peak criterion. They are periodic counterexamples and are not
asserted as decaying \(\mathbb R^3\) histories.

A datum-bound on
\(\int[ -\mathbb E_\rho\alpha]_+\,dt\) would be a sufficient condition stronger
than Gold, and a bound on
\(\int\mathbb E_\rho[(-\alpha)_+]\,dt\) would be stronger still. The exact
signed combination in the logarithmic law is the height evolution itself.
The identities above supply no finite original-data bound for any of these
quantities. The proved additions are the causal pair-pose system, its incidence
and normalized-vector laws, forced terminal carrier concentration, the exact
full-carrier recombination, and the structural separation between
projected-source work and material turnover. Gold still needs a same-history,
datum-controlled bound on

\[
T_\perp+\frac34V_\chi+\mathbb E_\rho[s\kappa]
\]

relative to the compressive side of the exact mean law; moving radial horns
also retain their entry--exit flux. A source-based proof must additionally
control the exact material transport and probe-drift rows rather than identify
projected-source work with the Gold current.
