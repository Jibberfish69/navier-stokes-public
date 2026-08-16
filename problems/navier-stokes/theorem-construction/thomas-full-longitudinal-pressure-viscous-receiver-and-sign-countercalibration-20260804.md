# Thomas's full longitudinal pressure--viscous receiver and sign countercalibration

**Date:** 2026-08-04

**Status:** proved noncanonical exact identity, complete first-response-row
upper landing, and checked sign countercalibration inside Thomas Birnie's
one-fluid, pressure-explicit binomial/VPI reversible-intersection method.
Starting from the finite-chord VPI law and restoring both chord orientations
and the entire material-pair population, the full longitudinal term in
(FSQ.26) is exactly one Eulerian nonlinear receiver paired with the complete
material acceleration. Its pressure and viscous parts have the exact forms

\[
 \mathcal L^{p}_{\rm all}
 =\int p\,\nabla\!\cdot\mathcal W[u],
 \qquad
 \mathcal L^{\nu}_{\rm all}
 =-\nu\int\nabla u:\nabla\mathcal W[u],
 \tag{FLR.1}
\]

and the receiver is the variational derivative of Thomas's full signed
critical current. The pressure Poisson equation converts the first term into
a pairing of two different quadratic scalars, not a square. Exact finite
Fourier calibrations give both pressure signs, while the viscous term is odd
under \(u\mapsto-u\) and is nonzero. Therefore symmetrization, integration
by parts, and the pressure Poisson equation do not give either longitudinal
contribution a universal sign.

The exact absolute-value landing is

\[
 |\mathcal L^{p}_{\rm all}|
 \le3\mathcal K_{\rm ch}^{1/2}\mathcal R_p^{1/2},
 \qquad
 |\mathcal L^{\nu}_{\rm all}|
 \le3\mathcal K_{\rm ch}^{1/2}\mathcal R_\nu^{1/2},
 \tag{FLR.2}
\]

where \(\mathcal R_p\) and \(\mathcal R_\nu\) are exactly the pressure and
viscous halves of the complete first material-acceleration row. Those rows
are not paid on a whole terminal interval by the kinetic-energy identity.
The exact radial-variance refund in (FSQ.12b)--(FSQ.12e) changes the angular
excess but leaves the full longitudinal receiver untouched. Consequently
this note does **not** prove (FSQ.37), (TIR.37a), the endpoint-spanning
intersection, or the MPP.

The physical order is fixed:

1. one smooth finite-energy datum generates one velocity--pressure history;
2. every actual material chord retains its relative velocity, radial rate,
   wobble, and complete pressure--viscous relative acceleration;
3. on the balanced no-wobble rip-cord face, the same longitudinal
   acceleration enters both \(\mathfrak c\) and the indispensable
   \(\alpha\chi\) weight response;
4. both chord orientations and the entire surrounding pair population are
   restored before pressure or viscosity is integrated by parts; and
5. only then is the result tested against the datum-paid kinetic-energy row.

No \(\alpha\) factor is dropped, no regional pressure part is selected, no
endpoint intersection is assumed, and no alternate regularity criterion is
introduced.

## 1. Isolate the complete finite-chord longitudinal response

Let \(X(a,t)\) be the volume-preserving material flow of one smooth decaying
Navier--Stokes solution. At one fixed preterminal time put

\[
 x=X(a,t),\qquad y=X(b,t),\qquad z=x-y,\qquad r=|z|,
 \tag{FLR.3}
\]

\[
 v=u(x,t)-u(y,t),\qquad
 f=D_tu=-\nabla p+\nu\Delta u,\qquad
 a_f=f(x,t)-f(y,t).
 \tag{FLR.4}
\]

The primitive pair quantities are

\[
 e={1\over4\pi^2}{|v|^2\over r^4},\qquad
 \alpha={v\cdot z\over r^2},\qquad
 \mathfrak c={z\cdot a_f\over r^2},\qquad
 \chi={v\cdot a_f\over|v|^2}.
 \tag{FLR.5}
\]

Every product containing \(\chi\) is read without division when \(v=0\).
The finite-chord VPI law is

\[
 \boxed{
 a_f=\int_0^1
 \left[-\nabla^2p+\nu\Delta\nabla u\right](y+sz,t)z\,ds.}
 \tag{FLR.6}
\]

Thomas's full longitudinal response is

\[
 \mathcal L_{\rm all}
 :=\iint e\mathfrak c\,da\,db
   +2\iint e\alpha\chi\,da\,db.
 \tag{FLR.7}
\]

Volume preservation changes the label integral into the Eulerian all-pair
integral. Direct substitution in (FLR.7) gives, with no estimate,

\[
 \boxed{
 \mathcal L_{\rm all}
 ={1\over4\pi^2}\iint
 {\bigl[|v|^2z+2(v\cdot z)v\bigr]\cdot
       \bigl[f(x)-f(y)\bigr]
  \over |z|^6}\,dx\,dy.}
 \tag{FLR.8}
\]

The second summand in the numerator is exactly the
\(2\alpha\chi\) response. Removing its factor \(v\cdot z\), equivalently
removing \(\alpha\), would replace (FLR.7) by a different physical quantity.

For later use define the antisymmetric pair vector

\[
 \Phi_u(x,y)
 :={|v|^2z+2(v\cdot z)v\over|z|^6}.
 \tag{FLR.9}
\]

It obeys

\[
 \Phi_u(y,x)=-\Phi_u(x,y),
 \qquad
 [f(y)-f(x)]\cdot\Phi_u(y,x)
 =[f(x)-f(y)]\cdot\Phi_u(x,y).
 \tag{FLR.10}
\]

Thus (FLR.8) already contains both orientations. All formulas below are
understood through the same symmetric diagonal/far truncation used in
(JEM.16)--(JEM.19) and (PRT.15a)--(PRT.16). On every compact preterminal
interval the truncations converge; no endpoint intersection is used.

## 2. Full-orientation symmetrization gives one variational receiver

Define the principal-value full-population receiver

\[
 \boxed{
 \mathcal W[u](x)
 :={1\over2\pi^2}\operatorname{p.v.}\!\int
 \Phi_u(x,y)\,dy.}
 \tag{FLR.11}
\]

Antisymmetry in (FLR.10) gives the exact symmetrization

\[
 \boxed{
 \mathcal L_{\rm all}=\int f(x)\cdot\mathcal W[u](x)\,dx.}
 \tag{FLR.12}
\]

This receiver is fixed by the full signed current itself. Indeed, write

\[
 \mathcal P_{1/2}(u)
 =-{1\over\pi^2}\iint
 {|v|^2(v\cdot z)\over|z|^6}\,dx\,dy.
 \tag{FLR.13}
\]

For an arbitrary smooth vector variation \(h\), differentiation and the same
orientation symmetrization give

\[
 \boxed{
 D\mathcal P_{1/2}(u)[h]
 =-4\int h\cdot\mathcal W[u]\,dx.}
 \tag{FLR.14}
\]

Consequently

\[
 \boxed{
 \mathcal W[u]=-{1\over4}{\delta\mathcal P_{1/2}\over\delta u},
 \qquad
 \mathcal L_{\rm all}
 =-{1\over4}D\mathcal P_{1/2}(u)[D_tu].}
 \tag{FLR.15}
\]

This does not turn \(\mathcal L_{\rm all}\) into an endpoint derivative along
the Navier--Stokes history: the Eulerian time direction is
\(u_t=D_tu-(u\cdot\nabla)u\), and the omitted transport direction is exactly
where the simultaneous radial and angular geometry in (FSQ.5) resides.
Equation (FLR.15) identifies the response receiver; it does not delete the
other physical rows.

## 3. Exact pressure and viscous parts

Split the one material acceleration, not the fluid, as

\[
 f=f_p+f_\nu,\qquad
 f_p=-\nabla p,\qquad f_\nu=\nu\Delta u,
 \tag{FLR.16}
\]

and define

\[
 \mathcal L_{\rm all}^{p}:=\int f_p\cdot\mathcal W[u],
 \qquad
 \mathcal L_{\rm all}^{\nu}:=\int f_\nu\cdot\mathcal W[u].
 \tag{FLR.17}
\]

Then

\[
 \boxed{
 \mathcal L_{\rm all}
 =\mathcal L_{\rm all}^{p}+\mathcal L_{\rm all}^{\nu}.}
 \tag{FLR.18}
\]

The finite-chord form (FLR.6) yields the direct pressure identity

\[
 \boxed{
 \mathcal L_{\rm all}^{p}
 ={1\over4\pi^2}\iiint_0^1
 (\Phi_u(x,y)\otimes z):[-\nabla^2p](y+sz)
 \,ds\,dx\,dy,}
 \tag{FLR.19}
\]

and the direct viscous identity

\[
 \boxed{
 \mathcal L_{\rm all}^{\nu}
 ={\nu\over4\pi^2}\iiint_0^1
 (\Phi_u(x,y)\otimes z):\Delta\nabla u(y+sz)
 \,ds\,dx\,dy.}
 \tag{FLR.20}
\]

After all orientations have already been restored, ordinary distributional
integration by parts gives precisely

\[
 \boxed{
 \mathcal L_{\rm all}^{p}
 =-\int\nabla p\cdot\mathcal W[u]
 =\int p\,\nabla\!\cdot\mathcal W[u],}
 \tag{FLR.21}
\]

\[
 \boxed{
 \mathcal L_{\rm all}^{\nu}
 =\nu\int\Delta u\cdot\mathcal W[u]
 =-\nu\int\nabla u:\nabla\mathcal W[u].}
 \tag{FLR.22}
\]

The pressure does not cancel in (FLR.21), because
\(\mathcal W[u]\) is not a divergence-free linear test. The viscosity does
not become a square in (FLR.22), because the receiver is quadratic in
\(u\), not \(u\) itself.

The variational form is equivalently

\[
 \boxed{
 \mathcal L_{\rm all}^{p}
 =-{1\over4}D\mathcal P_{1/2}(u)[-\nabla p],
 \qquad
 \mathcal L_{\rm all}^{\nu}
 =-{1\over4}D\mathcal P_{1/2}(u)[\nu\Delta u].}
 \tag{FLR.23}
\]

## 4. What incompressibility and the pressure Poisson equation actually give

Put

\[
 M:=\nabla u,\qquad
 q:=-\Delta p=\partial_i u_j\,\partial_j u_i
 =\operatorname{tr}(M^2).
 \tag{FLR.24}
\]

If \(M=S+\Omega\) is its strain--rotation decomposition, then

\[
 \boxed{q=|S|^2-{1\over2}|\omega|^2.}
 \tag{FLR.25}
\]

Thus even the scalar source fixed by incompressibility has no pointwise sign.
Writing \(\mathsf S_u:=\operatorname{sym}(\Phi_u\otimes z)\), one has

\[
 \operatorname{tr}\mathsf S_u
 =\Phi_u\cdot z
 ={|v|^2|z|^2+2(v\cdot z)^2\over|z|^6}\ge0,
 \tag{FLR.26}
\]

while

\[
 -\nabla^2p={q\over3}I-(\nabla^2p)^\circ.
 \tag{FLR.27}
\]

Therefore (FLR.19) becomes the exact trace/trace-free split

\[
 \boxed{
 \begin{aligned}
 \mathcal L_{\rm all}^{p}
 ={1\over4\pi^2}\iiint_0^1
 \Bigg[&{q(y+sz)\over3}\,\Phi_u\cdot z\\
 &-\mathsf S_u^\circ:(\nabla^2p)^\circ(y+sz)
 \Bigg]\,ds\,dx\,dy.
 \end{aligned}}
 \tag{FLR.28}
\]

The first term is a nonnegative receiver multiplied by the sign-indefinite
strain--rotation difference \(q\); the second is the simultaneous nonlocal
trace-free pressure response. Pressure Poisson determines the latter by
Riesz transforms of the same \(q\), but does not turn (FLR.28) into a
positive square.

The global form makes the same fact shorter:

\[
 \boxed{
 \mathcal L_{\rm all}^{p}
 =\left\langle(-\Delta)^{-1}q,
                 \nabla\!\cdot\mathcal W[u]\right\rangle
 =\left\langle q,
       (-\Delta)^{-1}\nabla\!\cdot\mathcal W[u]\right\rangle.}
 \tag{FLR.29}
\]

Both factors in the last pairing are quadratic in \(u\), but they are
different quadratic scalars. Equation (FLR.29) is a bilinear pairing, not
the norm of either factor.

## 5. Complete first-response-row landing

For any full acceleration field \(g\), let

\[
 \mathcal R_g
 :={1\over4\pi^2}\iint
 {|g(x)-g(y)|^2\over|x-y|^4}\,dx\,dy
 ={1\over2}\|\Lambda^{1/2}g\|_2^2,
 \tag{FLR.30}
\]

and retain the complete chord-quartic row

\[
 \mathcal K_{\rm ch}
 :={1\over4\pi^2}\iint{|v|^4\over|z|^6}\,dx\,dy
 =\iint e(\alpha^2+|\beta|^2)\,dx\,dy.
 \tag{FLR.31}
\]

For the longitudinal response formed with \(g\), Cauchy--Schwarz gives

\[
 \left|\iint e\mathfrak c_g\right|
 \le\mathcal K_{\rm ch}^{1/2}\mathcal R_g^{1/2},
 \tag{FLR.32}
\]

and

\[
 \left|2\iint e\alpha\chi_g\right|
 \le2\mathcal K_{\rm ch}^{1/2}\mathcal R_g^{1/2}.
 \tag{FLR.33}
\]

Hence the exact full-population landing is

\[
 \boxed{
 |\mathcal L_g|
 \le3\mathcal K_{\rm ch}^{1/2}\mathcal R_g^{1/2}.}
 \tag{FLR.34}
\]

For the pressure and viscous accelerations separately,

\[
 \boxed{
 \mathcal R_p={1\over2}\|\Lambda^{3/2}p\|_2^2,
 \qquad
 \mathcal R_\nu={\nu^2\over2}\|\Lambda^{5/2}u\|_2^2.}
 \tag{FLR.35}
\]

Their homogeneous \(H^{1/2}\) cross term is zero because a pressure gradient
is Fourier-orthogonal to the divergence-free viscous acceleration. Thus

\[
 \boxed{
 \mathcal R_{D_tu}=\mathcal R_p+\mathcal R_\nu,}
 \tag{FLR.36}
\]

and (FLR.34) proves (FLR.2). This is a real upper bound, but it lands in
the same first pressure-explicit material-acceleration row identified in
(RMW.31)--(RMW.40). The kinetic-energy identity supplies neither
\(\mathcal R_p\in L_t^1(0,T_*)\) nor
\(\mathcal R_\nu\in L_t^1(0,T_*)\) before the endpoint-spanning intersection
has been proved.

## 6. Exact opposite-sign countercalibrations

The absence of sign in (FLR.21)--(FLR.29) is not merely a failure to find
the right integration by parts. It is checked by exact smooth
divergence-free fields.

Use normalized integration on \(\mathbb T^3\), and write

\[
 \mathcal P(u)=-\langle(u\cdot\nabla)u,\Lambda u\rangle.
 \tag{FLR.37}
\]

For Fourier coefficients, put

\[
 \widehat{N(u,u)}(q)
 =i\sum_{k+\ell=q}(\widehat u(k)\cdot\ell)\widehat u(\ell),
 \tag{FLR.38}
\]

\[
 \widehat p(q)
 =-{1\over|q|^2}\sum_{k+\ell=q}
 (q\cdot\widehat u(k))(q\cdot\widehat u(\ell)),
 \qquad
 \widehat f_p(q)=-iq\widehat p(q).
 \tag{FLR.39}
\]

The exact derivative used to evaluate (FLR.23) is

\[
 \boxed{
 \begin{aligned}
 D\mathcal P(u)[h]
 ={}&-\langle(h\cdot\nabla)u+(u\cdot\nabla)h,\Lambda u\rangle\\
 &-\langle(u\cdot\nabla)u,\Lambda h\rangle.
 \end{aligned}}
 \tag{FLR.40}
\]

Take

\[
 k_1=(1,0,0),\qquad k_2=(0,1,0),\qquad k_3=(-1,-1,0),
 \tag{FLR.41}
\]

set every unlisted coefficient to zero, and impose reality by
\(\widehat U(-k)=\overline{\widehat U(k)}\).

For \(U^+\), choose

\[
 \begin{aligned}
 \widehat U^+(k_1)&=(0,-2,-2+i),\\
 \widehat U^+(k_2)&=(1+i,0,-2+i),\\
 \widehat U^+(k_3)&=(-3/2-i/2,\ 3/2+i/2,\ -2+i).
 \end{aligned}
 \tag{FLR.42}
\]

For \(U^-\), choose

\[
 \begin{aligned}
 \widehat U^-(k_1)&=(0,2-i,2i),\\
 \widehat U^-(k_2)&=(1+2i,0,-2+i),\\
 \widehat U^-(k_3)&=(1/2+3i/2,\ -1/2-3i/2,\ 1+2i).
 \end{aligned}
 \tag{FLR.43}
\]

Every coefficient is perpendicular to its frequency, so both fields are
real, smooth, and divergence free. Direct evaluation of the finite sums
(FLR.38)--(FLR.40) gives

\[
 \boxed{
 \begin{aligned}
 \mathcal P(U^+)&=14(\sqrt2-1),\\
 \mathcal L_{\rm all}^{p}(U^+)
 &=29+2\sqrt2+6\sqrt5>0,\\
 \mathcal L_{\rm all}^{\nu}(U^+)
 &=14\nu(\sqrt2-1)>0,
 \end{aligned}}
 \tag{FLR.44}
\]

and

\[
 \boxed{
 \begin{aligned}
 \mathcal P(U^-)&=-16(\sqrt2-1),\\
 \mathcal L_{\rm all}^{p}(U^-)
 &=-{282\over5}+{37\over5}\sqrt2+10\sqrt5<0,\\
 \mathcal L_{\rm all}^{\nu}(U^-)
 &=-16\nu(\sqrt2-1)<0.
 \end{aligned}}
 \tag{FLR.45}
\]

The negative pressure sign follows already from
\(\sqrt2<3/2\) and \(\sqrt5<9/4\). For these three-mode supports, every
nonzero current monomial contains \(k_1,k_2,k_3\), and
\(|k_1|^2+|k_2|^2+|k_3|^2=4\). Hence
\(D\mathcal P(u)[\nu\Delta u]=-4\nu\mathcal P(u)\), which explains the
viscous values in (FLR.44)--(FLR.45) without an estimate.

There is also a structural parity check:

\[
 \mathcal W[-u]=\mathcal W[u],\qquad
 p[-u]=p[u],
 \tag{FLR.46}
\]

so

\[
 \boxed{
 \mathcal L_{\rm all}^{p}[-u]
 =\mathcal L_{\rm all}^{p}[u],\qquad
 \mathcal L_{\rm all}^{\nu}[-u]
 =-\mathcal L_{\rm all}^{\nu}[u].}
 \tag{FLR.47}
\]

Because (FLR.44) proves that the viscous functional is not identically zero,
(FLR.47) alone rules out either universal viscous sign. Equations
(FLR.44)--(FLR.45) separately rule out either universal pressure sign.

These periodic fields are an exact countercalibration to any sign claimed
solely from incompressibility, symmetrization, integration by parts, or the
pressure Poisson equation: all four operations are valid without boundary
terms on \(\mathbb T^3\). The same signs occur for smooth rapidly decaying
\(\mathbb R^3\) data by replacing each Fourier atom by a sufficiently narrow
real divergence-free packet. The multilinear symbols in
(FLR.37)--(FLR.40) are continuous at the listed nonzero frequencies;
nonresonant packet products have disjoint support, and the pressure-gradient
multiplier vanishes at the zero output. Thus the packet values converge,
after their common positive normalization, to (FLR.44)--(FLR.45) and the
strict signs persist.

Each field is legitimate smooth initial data and therefore starts one local
classical Navier--Stokes history. The countercalibration does not prescribe
a pressure part independently of its velocity field.

## 7. The kinetic-energy row does not pay these components

For an integer \(N\ge1\), put

\[
 U_N^\pm(x):=U^\pm(Nx)
 \quad\hbox{on }\mathbb T^3.
 \tag{FLR.48}
\]

Normalized kinetic energy is unchanged, while direct homogeneity of
(FLR.37)--(FLR.40) gives

\[
 \boxed{
 \begin{aligned}
 \|U_N^\pm\|_2^2&=\|U^\pm\|_2^2,\\
 \|\nabla U_N^\pm\|_2^2&=N^2\|\nabla U^\pm\|_2^2,\\
 \mathcal L_{\rm all}^{p}[U_N^\pm]
 &=N^3\mathcal L_{\rm all}^{p}[U^\pm],\\
 \mathcal L_{\rm all}^{\nu}[U_N^\pm]
 &=N^4\mathcal L_{\rm all}^{\nu}[U^\pm].
 \end{aligned}}
 \tag{FLR.49}
\]

Thus neither longitudinal component is pointwise dominated by kinetic
energy plus its dissipation density with a constant depending only on the
energy and \(\nu\). The pressure ratio grows like \(N\), and the viscous
ratio grows like \(N^2\), relative to
\(\nu\|\nabla U_N^\pm\|_2^2\). Integration by parts has exposed a higher
response row; it has not converted it into the kinetic-energy dissipation.

This scaling statement is deliberately limited. It rules out payment by the
already available energy row and agrees with the exact landing
(FLR.34)--(FLR.36); it is not a singular Navier--Stokes history and does not
rule out a further same-history identity derived from Thomas's full VPI
tower.

## 8. The radial-variance refund does not alter the rip-cord response

The exact refunded FSQ response is

\[
 \boxed{
 \mathcal C_{\rm all}
 =\underbrace{(\mathcal A_{\rm all}-\mathcal V_{\rm rad})}
 _{\mathcal I_{\rm all}}
 +\mathcal L_{\rm all}^{p}
 +\mathcal L_{\rm all}^{\nu}.}
 \tag{FLR.50}
\]

The refund \(\mathcal V_{\rm rad}\) is the exact variance removed from the
five-unit radial self-amplification. It belongs to the angular-excess
coordinate in (FLR.50) and changes neither \(\mathcal W[u]\) nor either
identity in (FLR.21)--(FLR.23).

Even an artificial attempt to charge that even refund against the viscous
longitudinal term cannot create a universal sign. Under amplitude scaling,

\[
 \mathcal V_{\rm rad}[\varepsilon u]
 =\varepsilon^4\mathcal V_{\rm rad}[u],
 \qquad
 \mathcal L_{\rm all}^{\nu}[\varepsilon u]
 =\varepsilon^3\mathcal L_{\rm all}^{\nu}[u].
 \tag{FLR.51}
\]

For sufficiently small \(\varepsilon\), the nonzero odd viscous response in
(FLR.47) has either sign before an \(O(\varepsilon^4)\) refund can dominate
it. This is only a consistency check: Thomas's exact identity already fixes
the refund in \(\mathcal I_{\rm all}\), so it must not be reassigned term by
term.

On an individual balanced no-wobble contracting chord,
\(\beta=0\), \(\alpha<0\), and
\(\chi=\mathfrak c/\alpha\), hence

\[
 \boxed{\mathfrak c+2\alpha\chi=3\mathfrak c.}
 \tag{FLR.52}
\]

Equations (FLR.19)--(FLR.29) show what that rip-cord acceleration becomes
only after its expanding directions, all other orientations, and the whole
pressure field have been restored. It is the signed receiver
\(\mathcal L_{\rm all}^{p}+\mathcal L_{\rm all}^{\nu}\), not a positive
regional pressure charge.

## 9. Verdict

The exact advance is

\[
 \boxed{
 \begin{gathered}
 \mathcal L_{\rm all}
 ={1\over4\pi^2}\iint\Phi_u\cdot\delta(D_tu)
 =\int D_tu\cdot\mathcal W[u]
 =-{1\over4}D\mathcal P_{1/2}(u)[D_tu],\\
 \mathcal L_{\rm all}^{p}
 =\int p\,\nabla\!\cdot\mathcal W[u],\qquad
 \mathcal L_{\rm all}^{\nu}
 =-\nu\int\nabla u:\nabla\mathcal W[u],\\
 |\mathcal L_{\rm all}^{p}|
 \le3\mathcal K_{\rm ch}^{1/2}\mathcal R_p^{1/2},\qquad
 |\mathcal L_{\rm all}^{\nu}|
 \le3\mathcal K_{\rm ch}^{1/2}\mathcal R_\nu^{1/2}.
 \end{gathered}}
 \tag{FLR.53}
\]

The exact countercalibrations prove that neither component has a universal
sign, and the fixed-energy frequency family proves that the kinetic-energy
row does not pay either higher response. The radial-variance refund leaves
this longitudinal term intact. What remains is to derive a whole-terminal,
same-history control of the joined refunded response from Thomas's primitive
pressure-explicit tower. No such control, (TIR.37a), or MPP closure is
claimed here.
