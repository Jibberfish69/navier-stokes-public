# Higher-response moment-positivity insufficiency theorem

**Date:** 2026-08-03  
**Relation to Thomas's proof:** direct audit of the completed-response theorem
in `thomas-one-fluid-reversible-intersection-proof-spine-20260803.md`  
**Status:** proved obstruction to a moment-only derivation; not a
Navier--Stokes counterhistory and not an obstruction to Thomas's
pressure-explicit one-fluid theorem.

## 1. Exact question

Write

\[
E_s(t)=\frac12\|\Lambda^su(t)\|_2^2,
\qquad
E_s'=-2\nu E_{s+1}+\mathcal P_s,
\]

and

\[
\mathfrak R_{s,n}
=\sum_{j=0}^{n-1}(-2\nu)^j
\partial_t^{n-1-j}\mathcal P_{s+j}.
\]

Then

\[
\partial_t^nE_s=(-2\nu)^nE_{s+n}+\mathfrak R_{s,n},
\]

and, for odd \(n\),

\[
\int_0^t\mathfrak R_{s,n}
=\partial_t^{n-1}E_s(t)-\partial_t^{n-1}E_s(0)
+(2\nu)^n\int_0^tE_{s+n}.
\tag{HRM.1}
\]

The question tested here is whether the following information forces the
upper prefix in (HRM.1) to be finite for some odd \(n\):

1. every \(E_s(t)\) is a positive Fourier moment of one field;
2. the complete moment sequence is log-convex and Hankel-positive;
3. all spatial rows are compatible readings of that same field;
4. the kinetic-energy equality is finite; and
5. the differentiated balance and completed-response identities hold.

The answer is no.  The exact pressure-complete Navier--Stokes source must
supply an additional same-history restriction on temporal concentration.

## 2. One compatible smooth Fourier profile

Fix a nonzero divergence-free
\(\phi\in\mathcal S(\mathbb R^3;\mathbb R^3)\), normalize
\(\|\phi\|_2=1\), and put

\[
c_s:=\|\Lambda^s\phi\|_2^2,
\qquad
\phi_\lambda(x):=\lambda^{3/2}\phi(\lambda x).
\]

Then

\[
\|\Lambda^s\phi_\lambda\|_2^2=c_s\lambda^{2s}.
\tag{HRM.2}
\]

Choose a nonnegative \(b\in C_c^\infty((-1,1))\) satisfying
\(b(x)=e^x\) for \(|x|\leq1/4\).  On \(0\leq t<1\), set

\[
a_k:=1-2^{-k},
\qquad
w_k:=2^{-k^2-4},
\qquad
K_k:=2^k,
\]

and

\[
\lambda(t)
:=1+\sum_{k=1}^\infty
K_k b\!\left(\frac{t-a_k}{w_k}\right).
\tag{HRM.3}
\]

The supports in (HRM.3) are disjoint and accumulate only at \(t=1\), so
\(\lambda\in C^\infty([0,1))\).  For every finite \(q\),

\[
\int_0^1\lambda(t)^q\,dt<\infty,
\tag{HRM.4}
\]

because

\[
\int_0^1\lambda(t)^q\,dt
\leq
1+C_{q,b}\sum_k w_k(1+K_k^q)
<\infty,
\qquad
\sum_k w_kK_k^q
=\frac1{16}\sum_k2^{-k^2+kq}<\infty.
\]

Define

\[
\alpha(t)
:=\alpha_0\exp\!\left(
-2\nu c_1\int_0^t\lambda(r)^2\,dr
\right),
\qquad
v(t,x):=\alpha(t)^{1/2}\phi_{\lambda(t)}(x).
\tag{HRM.5}
\]

By (HRM.4), \(\alpha(t)\downarrow\alpha_*>0\).  For every \(t<1\),
\(v(t)\) is a single divergence-free Schwartz field, and

\[
E_s^\sharp(t)
:=\frac12\|\Lambda^sv(t)\|_2^2
=\frac{c_s}{2}\alpha(t)\lambda(t)^{2s}.
\tag{HRM.6}
\]

In particular,

\[
\int_0^1E_s^\sharp(t)\,dt<\infty
\qquad\text{for every finite }s,
\tag{HRM.7}
\]

while

\[
(E_0^\sharp)'=-2\nu E_1^\sharp.
\tag{HRM.8}
\]

Thus the kinetic-energy row and every whole-interval spatial Sobolev row are
finite simultaneously.

## 3. Full moment and Hankel compatibility

At each fixed time, the positive measure

\[
d\mu_t(\xi)=|\widehat v(t,\xi)|^2\,d\xi
\]

generates every row in (HRM.6).  Hence, for
\(0\leq\theta\leq1\),

\[
E_{\theta r+(1-\theta)s}^\sharp
\leq
(E_r^\sharp)^\theta(E_s^\sharp)^{1-\theta},
\tag{HRM.9}
\]

and every moment Hankel matrix is positive semidefinite:

\[
\sum_{i,j=0}^N z_i\overline z_j
E_{s+i+j}^\sharp
=\frac12\int |\xi|^{2s}
\left|\sum_{i=0}^Nz_i|\xi|^{2i}\right|^2d\mu_t(\xi)
\geq0.
\tag{HRM.10}
\]

The scale factor acts on (HRM.10) by diagonal congruence.  In the narrow-shell
limit the moment matrix becomes rank one, so every log-convexity inequality is
saturated. This last statement is a diagnostic narrow-shell limit; the fixed
Schwartz profile \(\phi\) need not itself have a rank-one moment matrix.
Higher rows then record powers of the same occupied frequency; they do not
become independent finite resources.

## 4. Exact completed responses and failure of every odd prefix

Define the compatible algebraic source rows

\[
\mathcal P_s^\sharp
:=(E_s^\sharp)'+2\nu E_{s+1}^\sharp.
\tag{HRM.11}
\]

Equation (HRM.8) says \(\mathcal P_0^\sharp=0\).  Repeated substitution in
(HRM.11) gives the exact completed-response identity

\[
\partial_t^nE_s^\sharp
=(-2\nu)^nE_{s+n}^\sharp+\mathfrak R_{s,n}^\sharp,
\tag{HRM.12}
\]

where \(\mathfrak R_{s,n}^\sharp\) is formed from the same binomial expression
as above with \(\mathcal P^\sharp\).

Fix \(s>0\) and an integer \(m\geq0\).  On the \(k\)-th pulse use the scaled
time \(x=(t-a_k)/w_k\).  Since

\[
\partial_x\alpha
=-2\nu c_1w_k\lambda^2\alpha,
\qquad
w_kK_k^2\longrightarrow0,
\]

\(\alpha\) is asymptotically constant in every fixed \(x\)-derivative on
\(|x|\leq1/4\).  Since \(b=e^x\) there,

\[
\partial_t^mE_s^\sharp(a_k)
=\frac{c_s}{2}\alpha(a_k)
w_k^{-m}K_k^{2s}
\bigl((2s)^m+o(1)\bigr)
\longrightarrow+\infty.
\tag{HRM.13}
\]

For every odd \(n\), integration of (HRM.12) therefore gives

\[
\begin{aligned}
\int_0^{a_k}\mathfrak R_{s,n}^\sharp(t)\,dt
={}&
\partial_t^{n-1}E_s^\sharp(a_k)
-\partial_t^{n-1}E_s^\sharp(0)\\
&+(2\nu)^n\int_0^{a_k}E_{s+n}^\sharp(t)\,dt
\longrightarrow+\infty.
\end{aligned}
\tag{HRM.14}
\]

The last integral is bounded uniformly in \(k\) by (HRM.7).  The divergence
comes entirely from the compressed temporal boundary jet.  Consequently,

\[
\boxed{
\sup_{0<t<1}\int_0^t\mathfrak R_{s,n}^\sharp(r)\,dr=\infty
\quad\text{for every }s>0\text{ and every odd }n.
}
\tag{HRM.15}
\]

This also defeats a Taylor-kernel rescue.  On the \(k\)-th pulse the
\(n\)-th response has size
\(K_k^{2s}w_k^{-n}\), while an \(n\)-fold time kernel contributes
\(w_k^n\).  Indeed, the simultaneous viscous row has size
\(K_k^{2(s+n)}\), whose ratio to the temporal term is
\((w_kK_k^2)^n\to0\).  Their product is the original height
\(K_k^{2s}\); increasing temporal depth exactly preserves the compressed
pulse instead of damping it.

## 5. First records and finite energy do not add the missing time thickness

For the critical row \(H^\sharp=E_{1/2}^\sharp\), the successive pulse peaks
have size comparable to \(K_k\to\infty\).  After passing to a subsequence,
their rising flanks contain successive first records.  Yet the kinetic-energy
loss on the \(k\)-th pulse obeys

\[
2\nu\int_{a_k-w_k}^{a_k+w_k}E_1^\sharp(t)\,dt
\lesssim w_kK_k^2,
\qquad
\sum_kw_kK_k^2<\infty.
\tag{HRM.16}
\]

The exact record balance formed from (HRM.11) still requires the full critical
current to create each new height.  Moment positivity and finite energy do not
bound that current's upper prefix because they contain no restriction on the
width \(w_k\) of its same-profile temporal concentration.

## 6. Exact scope of the result

The field \(v\) in (HRM.5) is not asserted to solve unforced Navier--Stokes.
Its algebraic source rows (HRM.11) are not asserted to equal the
pressure-explicit nonlinear currents generated by \(v\).  It is therefore not
a blow-up construction and does not refute Thomas's one-fluid physical
mechanism.

It proves the sharper logical boundary:

\[
\boxed{
\begin{gathered}
\text{positive compatible Fourier moments}
+\text{ all spatial rows in }L_t^1
+\text{ finite kinetic-energy loss}\\
+\text{ the exact completed-response algebra}
\quad\not\Longrightarrow\quad
\text{a datum-finite odd upper prefix on any prescribed }s>0\text{ row}.
\end{gathered}
}
\tag{HRM.17}
\]

Accordingly, log-convexity, Hankel positivity, first-record timing, and
time-kernel integration cannot by themselves prove the turn-down theorem.
The needed new fact must use the original pressure-explicit binomial source to
forbid this kind of arbitrarily thin same-history refill, or else charge its
compression to a datum-finite signed quantity.  That is the exact point where
the physical no-reset/no-external-supplier logic must enter the mathematics.
