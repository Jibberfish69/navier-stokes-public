# Thomas's pressure-complete recruitment: source-mass and quadratic-storage obstructions

Status: two checked obstructions inside Thomas Birnie's one-fluid,
pressure-explicit reversible-intersection method. The first is a one-history
forced-heat countertest proving that the already-paid kinetic-energy and
source-mass identities do not by themselves bound the first critical prefix.
It is **not** a Navier--Stokes counterhistory because its source is prescribed
and is not the quadratic pressure-complete source of its velocity field. The
second is a genuine Euler/Navier--Stokes algebraic obstruction to absorbing the
critical current into a fixed bounded-below quadratic storage.

Neither result obstructs Thomas's live target: a history-dependent signed
turn-down/no-recount identity derived from the complete unaveraged
pressure-coupled VPI and binomial law of the same fluid. They identify exact
features that such an identity must use.

## 1. The interface being tested

For a divergence-free heat-source history

\[
u_t+\nu\Lambda^2u=Q,
\tag{PSQ.1}
\]

put

\[
K(t):=\|u(t)\|_2^2,
\qquad
Z(t):=\|\Lambda u(t)\|_2^2,
\qquad
R(t):=\|\Lambda^{1/2}u(t)\|_2^2,
\tag{PSQ.2}
\]

and

\[
b(t):=\|Q(t)\|_{\dot H^{-1/2}}.
\tag{PSQ.3}
\]

The paid recruited-source estimates in the one-fluid Navier--Stokes history
have the form

\[
(u,Q)=0,
\qquad
b(t)\leq C_{\rm NS} Z(t),
\qquad
\int_0^{T_*}Z(t)\,dt<\infty.
\tag{PSQ.4}
\]

For the actual Navier--Stokes source,

\[
Q_{\rm NS}=-(u\cdot\nabla)u-\nabla p
=-\mathbb P((u\cdot\nabla)u),
\tag{PSQ.5}
\]

all three statements in (PSQ.4) are consequences of the same pressure-coupled
velocity history. The question tested below is whether (PSQ.1)--(PSQ.4), heat
causality, and one-history continuity already force

\[
\sup_{t<T_*}\int_0^t
(\Lambda^{1/2}u,\Lambda^{1/2}Q)\,ds<\infty.
\tag{PSQ.6}
\]

They do not. The missing information is the identity (PSQ.5), not another
scalar bound on \(Q\).

## 2. One continuous finite-time recruitment countertest

Work first on the three-dimensional torus. Let

\[
r_n:=r_0 2^n,
\qquad r_0=2^{n_0},
\tag{PSQ.7}
\]

and choose real, mean-zero, \(L^2\)-orthonormal divergence-free eigenmodes

\[
\Lambda\phi_n=r_n\phi_n,
\qquad
\|\phi_n\|_2=1.
\tag{PSQ.8}
\]

They may be chosen as parallel shears, for example normalized versions of

\[
\phi_n(x)=(0,\cos(r_nx_1),0).
\tag{PSQ.9}
\]

Fix a smooth monotone function

\[
\Theta:[0,1]\longrightarrow[0,\pi/2]
\tag{PSQ.10}
\]

which is constant to all orders at both endpoints and satisfies

\[
\Theta(0)=0,
\qquad
\Theta(1)=\pi/2,
\qquad
L_\Theta:=\|\Theta'\|_\infty<\infty,
\qquad
\int_0^1|\Theta'(s)|\,ds=\frac\pi2.
\tag{PSQ.11}
\]

Let \(c>0\) and define

\[
\delta_n:=c r_n^{-5/2},
\qquad
t_0:=0,
\qquad
t_{n+1}:=t_n+\delta_n.
\tag{PSQ.12}
\]

Then

\[
T_*:=\lim_{n\to\infty}t_n
=c\sum_{n=0}^\infty r_n^{-5/2}
=\frac{c r_0^{-5/2}}{1-2^{-5/2}}<\infty.
\tag{PSQ.13}
\]

On \(I_n=[t_n,t_{n+1}]\), set

\[
\vartheta_n(t)
:=\Theta\!\left(\frac{t-t_n}{\delta_n}\right),
\tag{PSQ.14}
\]

\[
f(t)
:=\cos\vartheta_n(t)\,\phi_n
+\sin\vartheta_n(t)\,\phi_{n+1},
\tag{PSQ.15}
\]

and

\[
f^\perp(t)
:=-\sin\vartheta_n(t)\,\phi_n
+\cos\vartheta_n(t)\,\phi_{n+1}.
\tag{PSQ.16}
\]

The instantaneous kinetic mean frequency is

\[
\mu(t):=\|\Lambda f(t)\|_2^2
=r_n^2\cos^2\vartheta_n(t)
+r_{n+1}^2\sin^2\vartheta_n(t).
\tag{PSQ.17}
\]

Choose \(a_0>0\), solve

\[
a'(t)=-\nu\mu(t)a(t),
\qquad a(0)=a_0,
\tag{PSQ.18}
\]

and define one continuing history

\[
u(t):=a(t)f(t),
\qquad
Q(t):=u_t(t)+\nu\Lambda^2u(t).
\tag{PSQ.19}
\]

Because every derivative of \(\Theta\) vanishes at the endpoints, the end of
the \(n\)-th transition and the start of the \((n+1)\)-st transition have the
same mode \(\phi_{n+1}\), the same value of \(\mu=r_{n+1}^2\), and matching
derivatives of every order. Hence \(u\) and \(Q\) are smooth on every compact
subinterval of \([0,T_*)\). This is one continuous history, not independent
profiles pasted at each scale.

## 3. Exact kinetic-energy cancellation and surviving amplitude

Equations (PSQ.16)--(PSQ.19) give

\[
Q
=a\dot\vartheta_n f^\perp
+\nu a(\Lambda^2-\mu)f.
\tag{PSQ.20}
\]

Since \((f,f^\perp)=0\), \(\|f\|_2=1\), and
\((f,\Lambda^2f)=\mu\),

\[
(u,Q)
=aa'+\nu a^2\mu
=0.
\tag{PSQ.21}
\]

Thus this prescribed-source history obeys the exact unforced kinetic-energy
identity

\[
\frac12\frac d{dt}\|u(t)\|_2^2
+\nu\|\Lambda u(t)\|_2^2=0.
\tag{PSQ.22}
\]

Write

\[
S_{1/2}(r_0)
:=\sum_{n=0}^\infty r_n^{-1/2}
=\frac{r_0^{-1/2}}{1-2^{-1/2}}.
\tag{PSQ.23}
\]

Since \(\mu(t)\leq r_{n+1}^2=4r_n^2\) on \(I_n\),

\[
\int_0^{T_*}\mu(t)\,dt
\leq4cS_{1/2}(r_0)<\infty.
\tag{PSQ.24}
\]

Consequently

\[
a(t)\downarrow a_\infty
:=a_0\exp\!\left(-\nu\int_0^{T_*}\mu(t)\,dt\right)>0,
\tag{PSQ.25}
\]

and

\[
\int_0^{T_*}Z(t)\,dt
=\int_0^{T_*}a(t)^2\mu(t)\,dt
\leq4a_0^2cS_{1/2}(r_0)<\infty.
\tag{PSQ.26}
\]

## 4. The source satisfies the same critical mass estimate

On \(I_n\),

\[
\|f^\perp\|_{\dot H^{-1/2}}^2
=r_n^{-1}\sin^2\vartheta_n
+r_{n+1}^{-1}\cos^2\vartheta_n
\leq r_n^{-1}.
\tag{PSQ.27}
\]

Put \(\Delta_n:=r_{n+1}^2-r_n^2=3r_n^2\). Directly from
(PSQ.15) and (PSQ.17),

\[
(\Lambda^2-\mu)f
=-\Delta_n\sin^2\vartheta_n\cos\vartheta_n\,\phi_n
+\Delta_n\cos^2\vartheta_n\sin\vartheta_n\,\phi_{n+1}.
\tag{PSQ.28}
\]

Therefore

\[
\|(\Lambda^2-\mu)f\|_{\dot H^{-1/2}}
\leq C_2r_n^{3/2},
\qquad
C_2:=3\sqrt{\frac32}.
\tag{PSQ.29}
\]

Equations (PSQ.20), (PSQ.27), and (PSQ.29) give

\[
b(t)
\leq a(t)|\dot\vartheta_n(t)|r_n^{-1/2}
+C_2\nu a(t)r_n^{3/2}.
\tag{PSQ.30}
\]

Also

\[
Z(t)=a(t)^2\mu(t)\geq a(t)^2r_n^2
\geq a_\infty^2r_n^2,
\tag{PSQ.31}
\]

and

\[
|\dot\vartheta_n(t)|
\leq\frac{L_\Theta}{c}r_n^{5/2}.
\tag{PSQ.32}
\]

Hence

\[
\frac{b(t)}{Z(t)}
\leq
\frac{L_\Theta}{ca_\infty}
+\frac{C_2\nu}{a_\infty r_n^{1/2}}.
\tag{PSQ.33}
\]

The parameters can be chosen to match any prescribed source constant
\(C_\sharp>0\), in particular \(C_\sharp=C_{\rm NS}\). First choose

\[
c\geq\frac{4L_\Theta}{C_\sharp a_0}.
\tag{PSQ.34}
\]

Then choose the dyadic starting frequency \(r_0\) so large that

\[
4\nu cS_{1/2}(r_0)\leq\log2,
\qquad
\frac{2C_2\nu}{a_0r_0^{1/2}}\leq\frac{C_\sharp}{2}.
\tag{PSQ.35}
\]

The first inequality in (PSQ.35) and (PSQ.25) give
\(a_\infty\geq a_0/2\). Equations (PSQ.33)--(PSQ.35) then give the pointwise
bound

\[
\boxed{
\|Q(t)\|_{\dot H^{-1/2}}
\leq C_\sharp\|\Lambda u(t)\|_2^2
\quad(0<t<T_*).}
\tag{PSQ.36}
\]

The source mass is explicitly finite. Let

\[
S_1(r_0):=\sum_{n=0}^\infty r_n^{-1}
=\frac{r_0^{-1}}{1-2^{-1}}=2r_0^{-1}.
\tag{PSQ.37}
\]

Using (PSQ.11), (PSQ.12), and (PSQ.30),

\[
\begin{aligned}
\int_{I_n}b(t)\,dt
&\leq
a_0r_n^{-1/2}
\int_{I_n}|\dot\vartheta_n(t)|\,dt
+C_2\nu a_0r_n^{3/2}\delta_n
\\
&\leq
\frac{\pi a_0}{2}r_n^{-1/2}
+C_2\nu a_0c r_n^{-1}.
\end{aligned}
\tag{PSQ.38}
\]

Thus

\[
\boxed{
\int_0^{T_*}\|Q(t)\|_{\dot H^{-1/2}}\,dt
\leq
\frac{\pi a_0}{2}S_{1/2}(r_0)
+C_2\nu a_0cS_1(r_0)<\infty.}
\tag{PSQ.39}
\]

## 5. The critical height and signed prefix still diverge

At \(t_n\), the history is \(u(t_n)=a(t_n)\phi_n\). Therefore

\[
R(t_n)
=\|\Lambda^{1/2}u(t_n)\|_2^2
=a(t_n)^2r_n
\geq a_\infty^2r_n
\longrightarrow\infty.
\tag{PSQ.40}
\]

Define the signed critical heat-source current

\[
\mathcal P_{1/2}^{Q}(t)
:=(\Lambda^{1/2}u(t),\Lambda^{1/2}Q(t)).
\tag{PSQ.41}
\]

Pairing (PSQ.1) at critical order gives

\[
\frac12R'(t)
+\nu\|\Lambda^{3/2}u(t)\|_2^2
=\mathcal P_{1/2}^{Q}(t).
\tag{PSQ.42}
\]

Hence

\[
\begin{aligned}
\int_0^{t_n}\mathcal P_{1/2}^{Q}(t)\,dt
={}&
\frac12R(t_n)-\frac12R(0)
\\
&+\nu\int_0^{t_n}\|\Lambda^{3/2}u(t)\|_2^2\,dt,
\end{aligned}
\tag{PSQ.43}
\]

and (PSQ.40) proves

\[
\boxed{
\sup_{0<t<T_*}
\int_0^t\mathcal P_{1/2}^{Q}(s)\,ds
=\infty.}
\tag{PSQ.44}
\]

Equations (PSQ.21), (PSQ.22), (PSQ.26), (PSQ.36), and (PSQ.39) all hold
along this same history. Thus finite kinetic energy, exact energy
orthogonality, finite enstrophy action, a datum-finite critical source mass,
the pointwise source estimate, heat causality, and absence of profile resets do
not imply the first signed prefix.

## 6. Why this is not a Navier--Stokes counterhistory

Every linear combination in (PSQ.15) is a parallel shear of the form

\[
u(t,x)=(0,F(t,x_1),0).
\tag{PSQ.45}
\]

Consequently

\[
(u\cdot\nabla)u=F\partial_2u=0,
\qquad
\mathbb P((u\cdot\nabla)u)=0.
\tag{PSQ.46}
\]

The prescribed source \(Q\) in (PSQ.20) rotates the surviving kinetic stock
between modes, whereas the genuine pressure-complete Navier--Stokes source of
the same velocity is zero. Therefore (PSQ.7)--(PSQ.44) is an exact
insufficiency theorem for the scalar source-mass/heat interface. It is not a
Navier--Stokes solution, a physical supplier allowed in Thomas's one-fluid
argument, or an obstruction to proving the datum-side prefix from the actual
law (PSQ.5).

The countertest makes the required new input precise: the proof must show that
the exact quadratic pressure-coupled source cannot perform the rapid tangent
recruitment in (PSQ.20) without leaving a datum-finite signed residual, collar,
sideband, or material-history charge. Replacing that source by an arbitrary
energy-orthogonal \(Q\) deletes the theorem-bearing structure.

## 7. Fixed quadratic negative-dome storage: exact full-Euler obstruction

The next obstruction acts on the genuine pressure-complete nonlinearity. Write

\[
B(u,u):=\mathbb P((u\cdot\nabla)u),
\qquad
u_t+B(u,u)+\nu\Lambda^2u=0.
\tag{PSQ.47}
\]

The Euler part of the critical response is

\[
\mathcal P_{1/2}(u)
:=-\langle\Lambda u,B(u,u)\rangle,
\tag{PSQ.48}
\]

and for

\[
H(u):=\frac12\langle u,\Lambda u\rangle
\tag{PSQ.49}
\]

one has

\[
\frac d{dt}H(u)\Big|_{\rm Euler}
=\mathcal P_{1/2}(u).
\tag{PSQ.50}
\]

Consider a fixed self-adjoint, translation- and rotation-invariant quadratic
storage

\[
S_M(u):=\frac12\langle u,Mu\rangle.
\tag{PSQ.51}
\]

Suppose it is proposed as a universal one-sided turn-down stock:

\[
\mathcal P_{1/2}(u)
+\frac d{dt}S_M(u)\Big|_{\rm Euler}
\leq0
\tag{PSQ.52}
\]

for every smooth divergence-free field. The left side of (PSQ.52) is cubic.
Since

\[
B(-u,-u)=B(u,u),
\tag{PSQ.53}
\]

both terms in (PSQ.52) reverse sign under \(u\mapsto-u\). Applying (PSQ.52)
to \(u\) and \(-u\) therefore forces equality:

\[
\mathcal P_{1/2}(u)
+\frac d{dt}S_M(u)\Big|_{\rm Euler}=0.
\tag{PSQ.54}
\]

Equivalently, \(H+S_M\) must be a quadratic invariant of the complete
three-dimensional Euler nonlinearity.

### 7.1 Helical-triad classification

For a nonzero Fourier frequency \(k\), use the helical basis

\[
ik\times h_\sigma(k)=\sigma|k|h_\sigma(k),
\qquad \sigma\in\{+1,-1\}.
\tag{PSQ.55}
\]

A translation- and rotation-invariant quadratic form has scalar weights
\(w_\sigma(r)\), \(r=|k|\), on the two helical polarizations. On a
nondegenerate interacting triad \(k+p+q=0\), let
\(T_k,T_p,T_q\) denote the three instantaneous modal kinetic-energy transfer
rates for helicities \(\sigma_k,\sigma_p,\sigma_q\). The complete Euler
interaction conserves kinetic energy and signed helicity, so

\[
T_k+T_p+T_q=0,
\tag{PSQ.56}
\]

\[
\sigma_k|k|T_k
+\sigma_p|p|T_p
+\sigma_q|q|T_q=0.
\tag{PSQ.57}
\]

For a nondegenerate helical coupling, varying the phases realizes the
one-dimensional transfer direction orthogonal to the two vectors in
(PSQ.56)--(PSQ.57). Invariance of a third quadratic weight requires

\[
w_{\sigma_k}(|k|)T_k
+w_{\sigma_p}(|p|)T_p
+w_{\sigma_q}(|q|)T_q=0
\tag{PSQ.58}
\]

on that direction. Hence the weight triple in (PSQ.58) lies in the span of
the energy and helicity weight triples:

\[
\bigl(w_{\sigma_k}(|k|),
w_{\sigma_p}(|p|),
w_{\sigma_q}(|q|)\bigr)
=A_{kpq}(1,1,1)
+B_{kpq}(\sigma_k|k|,\sigma_p|p|,\sigma_q|q|).
\tag{PSQ.59}
\]

Overlapping same-sign and mixed-sign nondegenerate triads connect the
frequency continuum. Continuity of the multiplier identifies the constants
across overlaps, giving

\[
\boxed{w_\sigma(r)=A+B\sigma r.}
\tag{PSQ.60}
\]

These are exactly kinetic energy plus signed helicity. This classification is
being used only for the fixed translation- and rotation-invariant quadratic
storage class in (PSQ.51).

### 7.2 Bounded-below storage is impossible

The critical height \(H\) has helical weight \(r\) for both signs. Since
\(H+S_M\) must have the invariant weights (PSQ.60), the two storage weights are

\[
m_+(r)=A+(B-1)r,
\qquad
m_-(r)=A+(-B-1)r.
\tag{PSQ.61}
\]

If either weight is negative at some frequency, scaling the amplitude in that
helical direction makes \(S_M\) unbounded below. Boundedness below for all
smooth divergence-free fields therefore requires both high-frequency slopes
to be nonnegative:

\[
B-1\geq0,
\qquad
-B-1\geq0.
\tag{PSQ.62}
\]

These inequalities are incompatible. In fact the same contradiction holds
even if boundedness below is requested only on a fixed kinetic-energy sphere:
keeping the \(L^2\) amplitude fixed and sending its frequency to infinity
drives the negative-slope helical branch to \(-\infty\). Thus

\[
\boxed{
\text{no fixed bounded-below quadratic storage can absorb the complete}
\ \dot H^{1/2}\text{ Euler current for both helicities}.}
\tag{PSQ.63}
\]

The two incompatible inequalities in (PSQ.62) are the algebraic face of the
perfectly balanced branch: signed helicity can pay one helical direction only
by exposing the other, while the critical height weights both directions
positively.

### 7.3 Viscosity does not repair a universal quadratic turn-down

Suppose instead that a proposed fixed quadratic storage leaves a universal
viscous or energy-level quadratic remainder. At one instant replace a smooth
field \(u\) by \(\lambda u\). The Euler current and the Euler derivative of
\(S_M\) scale as \(\lambda^3\), reverse sign under \(\lambda\mapsto-\lambda\),
and the viscous quadratic terms scale as \(\lambda^2\). Letting
\(|\lambda|\to\infty\) for both signs forces the cubic part to vanish
identically. The argument returns to (PSQ.54)--(PSQ.63). Therefore adding a
fixed quadratic viscous remainder cannot create the missing universal
bounded-below storage.

This conclusion does not apply to a nonlinear storage with independently
proved coercivity, a material-history functional, an oriented signed current
primitive, or a full pressure-coupled VPI no-recount law. Those are precisely
the in-method possibilities left open.

## 8. Exact consequence for the live datum theorem

The two checked obstructions give the following boundary:

\[
\boxed{
\begin{aligned}
&\text{energy cancellation + heat causality + finite critical source mass}
\\
&\qquad\text{do not bound the first signed prefix without }Q=Q_{\rm NS};
\\[1mm]
&\text{the exact full-Euler law admits no fixed bounded-below quadratic}
\\
&\qquad\text{stock that absorbs the critical current for both helicities.}
\end{aligned}}
\tag{PSQ.64}
\]

Accordingly, neither the forced history nor the quadratic-storage family is a
failure branch for Thomas's proof. The live theorem remains to derive, from
the one continuing Navier--Stokes velocity-pressure history, a
history-dependent signed identity or strict contraction that makes rapid
recruitment pay through the actual unaveraged convolution, simultaneous
pressure response, sidebands/collar, and material ancestry. Proving that law
would bound the first prefix and feed the already-proved complete-intersection
bootstrap; this note does not prove that law or global regularity.
