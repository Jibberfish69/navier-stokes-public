# Thomas's monotone material scale flux, weighted endpoint, and wobble boundary

**Date:** 2026-08-04

**Status:** exact one-fluid material identities, exact finite-prefix sign,
exact incompressible coasting calibration, and exact moving-orientation sign
countertest proved below. The monotone scale-entry term has a good sign, but
its datum-finite sum is not proved: on the balanced coasting branch it is
stored exactly in the scale-weighted compression endpoint. Variable
orientation adds a same-order wobble term, and the pressure-complete VPI
projection has no fixed sign. This note does not prove (TIR.37a) and does not
close the MPP.

This note continues the signed adjacent-scale residual (JPC.20) in
thomas-joined-pressure-viscous-material-coarea-and-critical-scale-jump-boundary-20260803.md.
It tests the selector forced by the actual same-label chord, rather than an
absolute occupancy, a fixed cohort, or a separately prescribed scale clock.
The physical order is retained:

1. one material chord in the same continuing velocity-pressure history;
2. its actual contraction or expansion and actual orientation;
3. the nested fine-scale selectors crossed by that chord;
4. core and complement recombined before inverse-scale valuation; and
5. the simultaneous pressure--viscous VPI curvature of that same field.

The exact result is not a new criterion. It identifies why monotone nesting
and no recount do not themselves pay the critical first scale moment.

## 1. Same-label chord coordinates

Let \(X(a,t)\) be the material flow of one smooth incompressible
Navier--Stokes history, let

\[
M:=\nabla u,
\qquad
\mathsf C:=\nabla D_tu=-\nabla^2p+\nu\Delta M,
\qquad
D_tM+M^2=\mathsf C,
\tag{MSF.1}
\]

and let \(F=D_aX\). Fix one initial same-label chord \(\eta\ne0\) and put

\[
R(a,t):=F(a,t)\eta=\rho n,
\qquad
\rho:=|R|,
\qquad
K:=\rho^{-1}.
\tag{MSF.2}
\]

Define its logarithmic length rate, orientation velocity, and VPI projection
by

\[
\alpha:=n\cdot Mn,
\qquad
\beta:=(I-n\otimes n)Mn,
\qquad
c:=n\cdot\mathsf Cn.
\tag{MSF.3}
\]

Since \(\dot R=MR\), these are exact material identities:

\[
\boxed{
D_t\rho=\alpha\rho,
\qquad
D_t\log K=-\alpha,
\qquad
D_tn=\beta.}
\tag{MSF.4}
\]

Differentiating \(\alpha=n\cdot Mn\) and using (MSF.1) gives

\[
\boxed{D_t\alpha=-\alpha^2+|\beta|^2+c.}
\tag{MSF.5}
\]

No spatial packet or second history has been introduced. \(K\) is the
inverse length of this one continuing material chord. It must not be
identified with a heat, Fourier, or record scale without an additional
proved bridge.

## 2. The natural nested selector gives a positive crossing term

Fix an increasing scale grid

\[
0<K_J<K_{J+1}<\cdots<K_N,
\qquad
\Delta K_j:=K_j-K_{j-1}>0,
\tag{MSF.6}
\]

and let \(\psi\in C^1(\mathbb R;[0,1])\) be nondecreasing. The natural
cumulative fine selector for the material chord is

\[
\Theta_j(a,t):=
\psi\!\left(\log {K(a,t)\over K_j}\right).
\tag{MSF.7}
\]

It is nested in \(j\), and (MSF.4) gives

\[
\boxed{D_t\Theta_j=-\psi_j'\alpha.}
\tag{MSF.8}
\]

Consequently the signed membership term in (JPC.20) has the exact sign

\[
\boxed{
-(D_t\Theta_j)\alpha
=\psi_j'\alpha^2\ge0.}
\tag{MSF.9}
\]

This remains true at both an entry and an exit. During contraction
\(\alpha<0\), the chord enters finer selectors and \(D_t\Theta_j>0\); during
expansion \(\alpha>0\), it exits and \(D_t\Theta_j<0\). Multiplication by
the simultaneous rate \(-\alpha\) makes both contributions nonnegative.
Thus signed entry/exit does not telescope to net occupancy once the critical
rate factor required by the VPI identity is retained.

Define the quantized inverse length

\[
\widehat K_{J,N}
:=K_J+\sum_{j=J+1}^N\Delta K_j\Theta_j.
\tag{MSF.10}
\]

For a material label measure \(da\), introduce

\[
\begin{aligned}
\mathfrak B_{J,N}(T)
&:=\sum_{j>J}\Delta K_j
  \left[\int\Theta_j\alpha\,da\right]_0^T,\\
\mathfrak J_{J,N}(T)
&:=-\sum_{j>J}\Delta K_j
  \int_0^T\!\int(D_t\Theta_j)\alpha\,da\,dt,\\
\mathfrak Q_{J,N}(T)
&:=\sum_{j>J}\Delta K_j
  \int_0^T\!\int\Theta_j\alpha^2\,da\,dt,\\
\mathfrak W_{J,N}(T)
&:=\sum_{j>J}\Delta K_j
  \int_0^T\!\int\Theta_j|\beta|^2\,da\,dt.
\end{aligned}
\tag{MSF.11}
\]

Then

\[
\mathfrak J_{J,N}\ge0,
\qquad
\mathfrak Q_{J,N}\ge0,
\qquad
\mathfrak W_{J,N}\ge0,
\tag{MSF.12}
\]

and

\[
\mathfrak B_{J,N}(T)
=\left[
\int(\widehat K_{J,N}-K_J)\alpha\,da
\right]_0^T.
\tag{MSF.13}
\]

No label is counted twice in (MSF.10)--(MSF.13): Abel summation values
one scale state by its adjacent increments.

## 3. The complete moving-frame finite-prefix law

Put \(P=n\otimes n\). The moving orientation cannot be deleted. From
\(D_tP=\beta\otimes n+n\otimes\beta\) and \(Mn=\alpha n+\beta\),

\[
\begin{aligned}
(D_tP):M
&=|\beta|^2+n\cdot M\beta,\\
P:M^2
&=\alpha^2+n\cdot M\beta.
\end{aligned}
\tag{MSF.14}
\]

Therefore the frame terms recombine exactly as

\[
\boxed{P:M^2-(D_tP):M=\alpha^2-|\beta|^2.}
\tag{MSF.15}
\]

Applying the material selector identity (JPC.11) to
\(A=\Theta_jP\), or equivalently integrating (MSF.5), gives the exact
increment law

\[
\boxed{
\sum_{j>J}\Delta K_j
\int_0^T\!\int\Theta_jc\,da\,dt
=\mathfrak B_{J,N}
+\mathfrak J_{J,N}
+\mathfrak Q_{J,N}
-\mathfrak W_{J,N}.}
\tag{MSF.16}
\]

For a spatially varying material frame, the pressure--viscous collar form of
the left side contains the derivatives of \(P\), and the full scale-valued
partition also retains the baseline \(K_J\int P:\mathsf C\). These are
exactly the variable-orientation residuals (JPC.23)--(JPC.24), not
lower-order errors. Equation (MSF.16) shows their material content: wobble
enters at the same adjacent scale weight as contraction.

The finite-prefix identity can be rearranged as

\[
\boxed{
\mathfrak J_{J,N}+\mathfrak Q_{J,N}
=\sum_{j>J}\Delta K_j
  \int_0^T\!\int\Theta_jc\,da\,dt
-\mathfrak B_{J,N}+\mathfrak W_{J,N}.}
\tag{MSF.17}
\]

Thus the good sign in \(\mathfrak J_{J,N}\) is not a datum payment. To bound
the positive critical terms through (MSF.17), one must still control the
joined VPI service, the negative compression endpoint, and the critically
weighted wobble. None is removed by nesting or no recount.

## 4. Continuous layer cake makes the endpoint alias exact

For the sharp continuous family

\[
\Theta_\kappa=\mathbf1_{\{0<\kappa<K\}},
\tag{MSF.18}
\]

the usual smooth approximation gives

\[
\int_0^\infty\Theta_\kappa\,d\kappa=K,
\qquad
\int_0^\infty D_t\Theta_\kappa\,d\kappa=D_tK=-K\alpha.
\tag{MSF.19}
\]

Hence

\[
\boxed{
-\int_0^\infty(D_t\Theta_\kappa)\alpha\,d\kappa
=K\alpha^2.}
\tag{MSF.20}
\]

Integrating (MSF.5) over this layer cake yields

\[
\boxed{
\int_0^T Kc\,dt
=[K\alpha]_0^T
+2\int_0^T K\alpha^2\,dt
-\int_0^T K|\beta|^2\,dt.}
\tag{MSF.21}
\]

The two copies of \(K\alpha^2\) are different readouts of the same history:
one is interior contraction and one is scale entry/exit. They may not be
charged as independent positive services.

On the exact fixed-axis coasting branch

\[
c=0,
\qquad
\beta=0,
\qquad
D_t\alpha=-\alpha^2,
\tag{MSF.22}
\]

equation (MSF.21) becomes

\[
\boxed{
-[K\alpha]_0^T
=2\int_0^T K\alpha^2\,dt.}
\tag{MSF.23}
\]

The monotone crossing flux is therefore not cancelled away. It is stored
exactly in the negative scale-weighted compression endpoint.

## 5. Exact balanced coasting and the failure of incompressible cancellation

Use the balanced affine calibration (BRP.9)--(BRP.15) with
\(\tau=T_*-t\):

\[
M=\operatorname{diag}(-\tau^{-1},-\tau^{-1},2\tau^{-1}),
\qquad
F=\operatorname{diag}
\left({\tau\over\tau_0},{\tau\over\tau_0},
      \left({\tau_0\over\tau}\right)^2\right).
\tag{MSF.24}
\]

For one transverse unit chord,

\[
\rho={\tau\over\tau_0},
\qquad
K={\tau_0\over\tau},
\qquad
\alpha=-{1\over\tau},
\qquad
\beta=c=0.
\tag{MSF.25}
\]

Direct integration gives

\[
\int_{t_0}^{t}K\alpha^2\,ds
={\tau_0\over2}
\left({1\over\tau^2}-{1\over\tau_0^2}\right),
\tag{MSF.26}
\]

and

\[
-[K\alpha]_{t_0}^{t}
=\tau_0
\left({1\over\tau^2}-{1\over\tau_0^2}\right).
\tag{MSF.27}
\]

Thus (MSF.23) is sharp, and the endpoint is unbounded in this exact local
VPI calibration. The affine field has infinite kinetic energy and is not an
MPP counterhistory. Its role is narrower and exact: the local VPI law,
monotone same-label nesting, pressure completion, no wobble, and
incompressibility do not algebraically convert (MSF.23) into a datum bound.

Incompressibility controls the unweighted product of the three material
stretches. For the three axes in (MSF.24),

\[
\prod_{i=1}^3K_i=1,
\qquad
\sum_{i=1}^3\alpha_i=0.
\tag{MSF.28}
\]

But the inverse-scale valuation destroys that cancellation:

\[
\boxed{
\sum_{i=1}^3K_i\alpha_i
=-{2\tau_0\over\tau^2}
+{2\tau\over\tau_0^2}
\longrightarrow-\infty.}
\tag{MSF.29}
\]

The two transverse chords each cross every finer threshold once. No return,
reselection, or recount is needed for the finite-prefix sum to grow. The
expanding direction preserves volume but its decreasing inverse length cannot
cancel the two scale-weighted transverse endpoints.

## 6. Exact relation to the open inverse-scale material moment

The material inverse length \(K=\rho^{-1}\) and the heat/record scale are not
identical by definition. If an actual response-carrying event proves the
matched relation

\[
-\alpha\simeq\nu K^2
\tag{MSF.30}
\]

on material volume \(m\), then the negative endpoint has the critical size

\[
\boxed{
mK(-\alpha)\simeq\nu K^3m
=\nu{m\over r^3}.}
\tag{MSF.31}
\]

This is exactly the normalized recruited-label moment in (BRP.25),
(BRP.28), and (JPC.31). More precisely, on a \(q\)-grid, suppose a selected
heat-time visit on material volume \(m_j\) obeys
\[
|I_j|\ge{\theta_0\over\nu K_j^2},
\qquad
-\alpha\ge c_0\nu K_j^2,
\qquad
\Theta_j\ge\vartheta_0>0.
\tag{MSF.31a}
\]
Then

\[
\Delta K_j\int_{I_j}\!\int\Theta_j\alpha^2
\ge(1-q^{-1})\vartheta_0c_0^2\theta_0
\nu K_j^3m_j,
\tag{MSF.32}
\]

while its compression endpoint has the same size by (MSF.31).

Equivalently, if the response scale is defined from compression by

\[
K_h:=\sqrt{(-\alpha)_+/\nu},
\tag{MSF.33}
\]

then the continuous fixed-axis identity (JPC.29c) has endpoint density

\[
{(-\alpha)_+^{3/2}\over\sqrt\nu}
=\nu K_h^3.
\tag{MSF.34}
\]

Therefore a uniform bound on the compression endpoint is not a cheaper
consequence of monotone material nesting. Once the material scale is proved
to be the response scale, it is the missing critical inverse-scale moment
itself. Without that identification, (MSF.23) remains an exact geometric
chord identity but cannot be promoted to the global first prefix. This
distinction prevents both directions of circularity.

## 7. Variable orientation gives an exact sign-indefinite VPI family

The wobble term in (MSF.16) is not formal. Fix \(a>0\) and
\(\omega\ge0\), and set

\[
A_{a,\omega}
=\begin{pmatrix}
-a&-\omega&0\\
\omega&a&0\\
0&0&0
\end{pmatrix},
\qquad
u(x)=A_{a,\omega}x.
\tag{MSF.35}
\]

Then

\[
\operatorname{tr}A_{a,\omega}=0,
\qquad
A_{a,\omega}^2
=(a^2-\omega^2)\operatorname{diag}(1,1,0).
\tag{MSF.36}
\]

With

\[
p(x)=-{a^2-\omega^2\over2}(x_1^2+x_2^2),
\tag{MSF.37}
\]

one has

\[
(u\cdot\nabla)u+\nabla p=0,
\qquad
\Delta u=0.
\tag{MSF.38}
\]

Thus (MSF.35)--(MSF.38) is an exact stationary affine solution of the
unforced differential equation. At \(n=e_1\),

\[
\boxed{
\alpha=-a,
\qquad
\beta=\omega e_2,
\qquad
c=a^2-\omega^2,
\qquad
D_t\alpha=0.}
\tag{MSF.39}
\]

The chord is initially contracting, so \(D_tK=aK>0\) and every natural
fine-scale crossing in (MSF.9) has the same positive sign. Nevertheless,
the simultaneous pressure-complete VPI projection \(c\) is positive for
\(\omega<a\), zero for \(\omega=a\), and negative for \(\omega>a\).
Equation (MSF.5) remains exact because the wobble square changes at the same
time.

This affine family is again a local exact calibration, not a finite-energy
singular history. It decisively rules out a universal sign theorem derived
only from incompressibility, monotone scale entry, and the pointwise VPI law.
A whole-field finite-energy theorem would have to use the joined collar and
same-history exterior to control the finite-prefix combination; it cannot
delete \(\mathfrak W_{J,N}\) or assign \(c\) a favorable sign.

### 7.1 One admissible periodic history has both VPI signs during contraction

The sign boundary is not confined to an infinite-energy affine calibration.
On \(\mathbb T^3\), put

\[
f(y):=\sin y-\frac14\sin(2y),
\qquad
u(t,x,y,z):=
\left(e^{\nu t\partial_y^2}f(y),0,0\right),
\qquad
p=0.
\tag{MSF.39a}
\]

This is one exact global smooth finite-energy Navier--Stokes history:
the nonlinear term vanishes, the velocity remains divergence free, and it
solves \(u_t=\nu\Delta u\). At \(t=0\),

\[
M_{12}=f'(y)=\cos y-\frac12\cos(2y),
\qquad
\mathsf C_{12}=\nu f'''(y)
=\nu\bigl(-\cos y+2\cos(2y)\bigr),
\tag{MSF.39b}
\]

with \(M^2=0\). For the same chord direction

\[
n={1\over\sqrt2}(1,-1,0)
\tag{MSF.39c}
\]

at both locations,

\[
\alpha=-\frac12f'(y),
\qquad
c=-\frac\nu2f'''(y),
\qquad
|\beta|^2=\alpha^2.
\tag{MSF.39d}
\]

At \(y=0\),

\[
\alpha=-\frac14,
\qquad
c=-\frac\nu2,
\tag{MSF.39e}
\]

whereas at \(y=\pi/3\),

\[
\alpha=-\frac38,
\qquad
c=\frac{3\nu}{4}.
\tag{MSF.39f}
\]

Thus the same admissible fluid at the same time has monotone fine-scale entry
\(D_tK=-\alpha K>0\) at both material locations, while its exact
pressure-complete VPI projection has opposite signs. Here pressure is
identically zero rather than omitted; viscosity, wobble, and chord deformation
recombine through (MSF.5). This proves the sign-indefinite boundary for actual
smooth finite-energy Navier--Stokes data. It does not provide a singular
history or refute a possible nonlocal finite-prefix theorem.

## 8. Exact boundary

The signed material-scale attack proves

\[
\boxed{
\begin{aligned}
&\text{natural monotone nested selector}
&&\Longrightarrow\mathfrak J_{J,N}\ge0,\\
&\text{no recount}
&&\Longrightarrow\text{one adjacent-increment valuation, not a bound},\\
&\text{balanced no-wobble coasting}
&&\Longrightarrow\mathfrak J_{J,N}+\mathfrak Q_{J,N}
  =-\mathfrak B_{J,N},\\
&\text{incompressibility}
&&\Longrightarrow\sum\alpha_i=0,
  \text{ but not }\sum K_i\alpha_i=0,\\
&\text{variable orientation}
&&\Longrightarrow\text{the same-order term }-\mathfrak W_{J,N}
  \text{ and no fixed VPI sign}.
\end{aligned}}
\tag{MSF.40}
\]

So the physical order does force a sign, but it is the sign of a positive
critical flux that still has to be bounded. The only telescope available on
the hardest coasting branch transfers that flux into the negative
scale-weighted compression endpoint. Under the required scale-matching
bridge, a uniform endpoint bound is precisely the open
\(\nu m/r^3\) moment, not an energy-level payment.

No noncircular datum-finite estimate sufficient for (TIR.37a) follows from
these identities. The exact surviving finite-prefix boundary is
(MSF.16)--(MSF.17), including endpoint, entry/exit, contraction, wobble,
the joined pressure--viscous VPI service, and the variable-frame baseline.
The record-to-material selector bridge and a datum-finite bound for that
complete signed history remain unproved.
