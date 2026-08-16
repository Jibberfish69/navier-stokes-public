# Thomas's parent-age reciprocal moment telescope and positivity boundary

Status: exact auxiliary theorem and checked obstruction inside Thomas Birnie's
one-fluid pressure-explicit binomial/VPI method. Starting from the positive
parent-age storage (SH.251)--(SH.258), this note derives the complete reciprocal
moment hierarchy, proves positivity of its first two parent-pair kernels,
proves indefiniteness of every later individual kernel, proves that every
finite *joined* kernel prefix is nevertheless positive, and shows that the
fully resummed positive kernel reconstructs the original coherent collapsed
source-square port. The calculation does not bound the first signed critical
prefix and does not obstruct a genuinely signed cancellation among the actual
nonlinear parent insertions.

## 1. One fixed output and its actual parent field

Work first at one smooth finite output/helicity prefix. Let \(\mathcal H\) be
the real Hilbert output fiber. Keep \(\gamma>0\), \(c>0\), parent heat rates
\(\delta_a>0\), and the joined parent density \(\Theta_a(t)\in\mathcal H\).
The actual same-field parent evolution has the form

\[
\dot\Theta_a=-\delta_a\Theta_a+N_a,
\qquad
g=\int\Theta_a\,da,
\qquad
\dot z=\gamma(g-z).
\tag{PRM.1}
\]

For Navier--Stokes, \(N_a\) is not an independent port. It is the sum of the
two exact pressure-complete insertions of
\(\mathcal N(u)=-\mathbb P(u\cdot\nabla u)\) into the two physical velocity
parents:

\[
\begin{aligned}
N_{\Theta,p}^{(1)}
&=-ic_{\mathcal F}\mathbb P_k
\left[
(\widehat{\mathcal N(u)}(p)\cdot q)\widehat u(q)
\right],\\
N_{\Theta,p}^{(2)}
&=-ic_{\mathcal F}\mathbb P_k
\left[
(\widehat u(p)\cdot q)\widehat{\mathcal N(u)}(q)
\right],
\qquad
N_{\Theta,p}=N_{\Theta,p}^{(1)}+N_{\Theta,p}^{(2)} .
\end{aligned}
\tag{PRM.2}
\]

Thus (PRM.1) is an output-fiber readout of the original binomial source law,
not a forced model.

## 2. Exact reciprocal age hierarchy

Put

\[
f_a:=\frac1{\gamma+\delta_a},
\qquad
r_a:=\frac{\delta_a}{\gamma+\delta_a}=1-\gamma f_a,
\qquad 0<r_a<1.
\tag{PRM.3}
\]

For every integer \(m\ge0\), define

\[
\begin{aligned}
X_m&:=\int f_ar_a^m\Theta_a\,da,\\
Y_m&:=\int r_a^m\Theta_a\,da,\\
\mathcal N_m&:=\int f_ar_a^mN_a\,da .
\end{aligned}
\tag{PRM.4}
\]

Then the reciprocal identity \(1=\gamma f_a+r_a\) and (PRM.1) give

\[
\boxed{
Y_m=\gamma X_m+Y_{m+1},
\qquad
\dot X_m=-Y_{m+1}+\mathcal N_m.}
\tag{PRM.5}
\]

Equivalently,

\[
\boxed{
Y_m=\gamma X_m-\dot X_m+\mathcal N_m.}
\tag{PRM.6}
\]

Finite iteration yields

\[
\boxed{
g=Y_0
=\gamma\sum_{m=0}^{N-1}X_m+Y_N.}
\tag{PRM.7}
\]

Whenever dominated convergence is available, \(Y_N\to0\) and

\[
\sum_{m=0}^{\infty}X_m=\frac1\gamma g,
\qquad
\sum_{m=0}^{\infty}\mathcal N_m
=\frac1\gamma\int N_a\,da.
\tag{PRM.8}
\]

The first equality is the exact reciprocal nesting of the parent ages. The
second shows immediately that the actual nonlinear insertion is redistributed
by that nesting, not deleted.

## 3. Every moment has an exact signed homological identity

Define

\[
F_m:=c\,\operatorname{Re}\langle z,Y_m\rangle,
\qquad
B_m:=c\,\operatorname{Re}\langle z,X_m\rangle.
\tag{PRM.9}
\]

Using \(\dot z=\gamma(g-z)\) and (PRM.5),

\[
\begin{aligned}
\dot B_m
={}&\gamma c\,\operatorname{Re}\langle g,X_m\rangle
-c\,\operatorname{Re}\langle z,\gamma X_m+Y_{m+1}\rangle\\
&+c\,\operatorname{Re}\langle z,\mathcal N_m\rangle .
\end{aligned}
\]

Since \(\gamma X_m+Y_{m+1}=Y_m\),

\[
\boxed{
F_m
=-\dot B_m+R_m
+c\,\operatorname{Re}\langle z,\mathcal N_m\rangle,
\qquad
R_m:=\gamma c\,\operatorname{Re}\langle g,X_m\rangle.}
\tag{PRM.10}
\]

Let

\[
w_m(x):=\frac{x^m}{(\gamma+x)^{m+1}},
\tag{PRM.11}
\]

so that \(f_ar_a^m=w_m(\delta_a)\), and define the symmetric kernel

\[
n_m(a,b)
:=\frac{\gamma c}{2}
\frac{w_m(\delta_a)+w_m(\delta_b)}
{\delta_a+\delta_b}.
\tag{PRM.12}
\]

For

\[
C_m
:=\iint n_m(a,b)
\operatorname{Re}\langle\Theta_a,\Theta_b\rangle\,da\,db,
\tag{PRM.13}
\]

direct differentiation of both parent legs gives

\[
\boxed{
R_m=-\dot C_m+R_{N,2,m},}
\tag{PRM.14}
\]

where

\[
R_{N,2,m}
:=\iint n_m(a,b)\operatorname{Re}
\left(
\langle N_a,\Theta_b\rangle
+\langle\Theta_a,N_b\rangle
\right)\,da\,db .
\tag{PRM.15}
\]

Therefore every reciprocal moment has the exact signed normal form

\[
\boxed{
F_m
=-\partial_t(B_m+C_m)+R_{{\rm NL},m},}
\tag{PRM.16}
\]

with

\[
R_{{\rm NL},m}
:=c\,\operatorname{Re}\langle z,\mathcal N_m\rangle
+R_{N,2,m}.
\tag{PRM.17}
\]

For \(m=0\), (PRM.16) is exactly the parent-age construction
(SH.251)--(SH.252).

## 4. What small positive storage really forces

For \(m=0\), write \(X=X_0\) and

\[
e_0:=X+\frac z\gamma .
\tag{PRM.18}
\]

The positive storage (SH.253) satisfies

\[
K_2
\ge\frac{\gamma c}{2}\|e_0\|^2.
\tag{PRM.19}
\]

The first reciprocal relation \(g=\gamma X+Y_1\) is equivalently

\[
g=-z+\gamma e_0+Y_1.
\tag{PRM.20}
\]

Consequently the still-signed source-response current obeys the exact identity

\[
\boxed{
c\,\operatorname{Re}\langle z,g\rangle
=-c\|z\|^2
+c\,\operatorname{Re}\langle z,Y_1\rangle
+\gamma c\,\operatorname{Re}\langle z,e_0\rangle.}
\tag{PRM.21}
\]

Young's inequality and (PRM.19) give the one-sided consequence

\[
\boxed{
c\,\operatorname{Re}\langle z,g\rangle
\le
-\frac c2\|z\|^2
+c\,\operatorname{Re}\langle z,Y_1\rangle
+\gamma K_2.}
\tag{PRM.22}
\]

Thus \(K_2\) can force exactly the passage suggested by the reciprocal
physical reading, but only under the quantitative threshold below. It does
not show unconditionally that the higher moment is positive or datum-finite.

More precisely, if

\[
 I:=c\|z\|^2,
\]

then \(F_0-F_1=\gamma B_0\) and
\(K_2=E+B_0+C_0\), with \(\gamma E=I/2\), give the exact identity

\[
 \boxed{
 F_1=F_0+\frac12I+\gamma C_0-\gamma K_2.}
 \tag{PRM.22a}
\]

Here \(C_0\) is precisely the nonnegative parent-pair storage denoted \(C_2\)
in (SH.252)--(SH.253). In particular, (PRM.22) is equivalent to the weaker
but storage-free lower bound

\[
 \boxed{F_1\ge F_0+\frac12I-\gamma K_2.}
 \tag{PRM.22b}
\]

Therefore the exact sign passage and a simpler sufficient condition are

\[
 \boxed{
 F_1>0
 \ \Longleftrightarrow\
 \gamma K_2<F_0+\frac12I+\gamma C_0,
 \qquad
 \gamma K_2<F_0+\frac12I\ \Longrightarrow\ F_1>0.}
 \tag{PRM.22c}
\]

The unquantified statement ``\(F_0>0\) and \(K_2\) is small'' must mean one of
the thresholds in (PRM.22c); positivity of \(F_0\) alone does not force
positivity of \(F_1\).

## 5. Positivity survives two kernels and then fails

The sign of \(C_m\) is the sign of the scalar kernel

\[
\mathcal K_m(x,y)
:=\frac{w_m(x)+w_m(y)}{x+y},
\qquad x,y>0,
\tag{PRM.23}
\]

up to the positive factor \(\gamma c/2\).

For \(m=0\), with \(f_x=(\gamma+x)^{-1}\),

\[
\boxed{
\mathcal K_0(x,y)
=f_xf_y\left(1+\frac{2\gamma}{x+y}\right).}
\tag{PRM.24}
\]

This is positive definite: the first term is rank one and
\((x+y)^{-1}=\int_0^\infty e^{-sx}e^{-sy}\,ds\).

For \(m=1\),

\[
\boxed{
\mathcal K_1(x,y)
=
\frac{\gamma^2+xy+\dfrac{4\gamma xy}{x+y}}
{(\gamma+x)^2(\gamma+y)^2}.}
\tag{PRM.25}
\]

This too is positive definite. Its first two numerator terms are rank-one
kernels, and its last term is a positive Cauchy-kernel integral.

For every \(m\ge2\), positivity fails already on two parent ages. The
determinant of the \(2\times2\) matrix
\((\mathcal K_m(x_i,x_j))_{i,j=1}^2\) is

\[
\boxed{
\det
=
\frac{
(xw_m(y)-yw_m(x))(xw_m(x)-yw_m(y))
}
{xy(x+y)^2}.}
\tag{PRM.26}
\]

Now

\[
xw_m(x)=\left(\frac{x}{\gamma+x}\right)^{m+1}
\tag{PRM.27}
\]

is strictly increasing, whereas

\[
\frac{w_m(x)}x
=\frac{x^{m-1}}{(\gamma+x)^{m+1}}
\tag{PRM.28}
\]

has logarithmic derivative

\[
\frac{d}{dx}\log\frac{w_m(x)}x
=\frac{(m-1)\gamma-2x}{x(\gamma+x)}.
\tag{PRM.29}
\]

Choose

\[
0<y<x<\frac{(m-1)\gamma}{2}.
\tag{PRM.30}
\]

Then the second factor in the numerator of (PRM.26) is positive, while the
first is

\[
xy\left(\frac{w_m(y)}y-\frac{w_m(x)}x\right)<0.
\tag{PRM.31}
\]

Hence

\[
\boxed{
\det(\mathcal K_m(x_i,x_j))<0
\qquad(m\ge2),}
\tag{PRM.32}
\]

and \(C_m\) is indefinite on a two-parent fiber. Therefore the direct
reciprocal iteration cannot produce an all-orders sequence of positive
parent-age storages. This is an algebraic obstruction to moment-by-moment
positivity, not an obstruction to a signed telescope.

### 5.1 The response completion survives once, but its balance does not repeat

The preceding kernel statement can be sharpened to the response-completed
storage actually needed to repeat (SH.258). Put

\[
 E:=\frac c{2\gamma}\|z\|^2,
 \qquad I:=c\|z\|^2,
 \qquad \mathscr K_m:=E+B_m+C_m.
 \tag{PRM.32a}
\]

Since \(\dot E=F_0-I\), (PRM.16) gives the exact evolution

\[
 \boxed{
 \dot{\mathscr K}_m
 =R_{{\rm NL},m}-I+F_0-F_m.}
 \tag{PRM.32b}
\]

Only \(m=0\) cancels the last two currents and recovers
\(\dot K_2=R_{\rm NL}-I\). Algebraically,

\[
 \begin{aligned}
 \mathscr K_m
 ={}&\frac c{2\gamma}\|z+\gamma X_m\|^2\\
 &+\frac{\gamma c}{2}\iint
 \left[
 \mathcal K_m(\delta_a,\delta_b)
 -w_m(\delta_a)w_m(\delta_b)
 \right]
 \operatorname{Re}\langle\Theta_a,\Theta_b\rangle\,da\,db .
 \end{aligned}
 \tag{PRM.32c}
\]

For \(m=1\), (PRM.25) gives

\[
 \boxed{
 \mathcal K_1(x,y)-w_1(x)w_1(y)
 =\frac{\displaystyle
 \gamma^2+\frac{4\gamma xy}{x+y}}
 {(\gamma+x)^2(\gamma+y)^2}.}
 \tag{PRM.32d}
\]

The right side is positive definite: its first term is rank one and its
second is a diagonally weighted Cauchy kernel. Hence \(\mathscr K_1\ge0\).
But its evolution contains
\(F_0-F_1=\gamma B_0\), which has no sign. For \(m\ge2\), setting \(z=0\)
reduces \(\mathscr K_m\) to the indefinite parent-pair form from (PRM.32).
Thus there is one further positive response completion, but not a repeated
copy of the \(K_2'=R_{\rm NL}-I\) balance.

### 5.2 Every joined finite kernel prefix is positive

Indefiniteness of the individual increments \(C_m\), \(m\ge2\), does not
license discarding the signed finite telescope. For \(N\ge1\), put

\[
 a_N(x):=1-\left(\frac{x}{\gamma+x}\right)^N,
 \qquad
 \overline C_N:=\sum_{m=0}^{N-1}C_m .
 \tag{PRM.32e}
\]

The geometric sum is exact:

\[
 \boxed{
 \sum_{m=0}^{N-1}n_m(x,y)
 =\frac c2\frac{a_N(x)+a_N(y)}{x+y}.}
 \tag{PRM.32f}
\]

This joined kernel is positive definite for every finite \(N\), despite the
indefiniteness of its later increments. Write
\(r_x=x/(\gamma+x)\) and \(r_y=y/(\gamma+y)\). Then

\[
 \frac{a_N(x)+a_N(y)}{x+y}
 =\frac{1-(r_xr_y)^N}{x+y}
 +\frac{(1-r_x^N)(1-r_y^N)}{x+y},
 \tag{PRM.32g}
\]

and

\[
 \begin{aligned}
 \frac{1-(r_xr_y)^N}{x+y}
 &={}\sum_{\ell=0}^{N-1}r_x^\ell r_y^\ell
 \frac{1-r_xr_y}{x+y},\\
 \frac{1-r_xr_y}{x+y}
 &=\frac{\gamma}{(\gamma+x)(\gamma+y)}
 +\frac{\gamma^2}
 {(x+y)(\gamma+x)(\gamma+y)}.
 \end{aligned}
 \tag{PRM.32h}
\]

Here \(x,y>0\) and \(\gamma>0\). The two kernels in the second line are,
respectively, rank one and a diagonally weighted Cauchy kernel; multiplication
by \(r_x^\ell r_y^\ell\) preserves positive definiteness. The second term in
(PRM.32g) is also a diagonally weighted Cauchy kernel. Therefore

\[
 \boxed{\overline C_N\ge0\qquad(N\ge1).}
 \tag{PRM.32i}
\]

The current paid by this joined positive parent-pair storage is not \(F_0\).
Summing (PRM.16) and the reciprocal moments gives

\[
 \boxed{
 \begin{aligned}
 \sum_{m=0}^{N-1}F_m
 &=-\partial_t\left(\sum_{m=0}^{N-1}B_m+\overline C_N\right)
   +\sum_{m=0}^{N-1}R_{{\rm NL},m},\\
 \sum_{m=0}^{N-1}Y_m
 &=\frac1\gamma\int
 (\gamma+\delta_a)(1-r_a^N)\Theta_a\,da,\\
 \sum_{m=0}^{N-1}\mathcal N_m
 &=\frac1\gamma\int(1-r_a^N)N_a\,da .
 \end{aligned}}
 \tag{PRM.32j}
\]

At a smooth compact parent prefix these limits are automatic. In the
untruncated parent continuum, passage to \(N=\infty\) in the middle line
requires the corresponding first parent-rate moment to be integrable; it may
not be assumed as a consequence of the zeroth parent mass. Under that
assumption,

\[
 \boxed{
 \sum_{m=0}^{\infty}F_m
 =\frac c\gamma\operatorname{Re}\left\langle
 z,\int(\gamma+\delta_a)\Theta_a\,da\right\rangle .}
 \tag{PRM.32k}
\]

This is the exact first parent-heat-rate moment. Indeed, with
\(d_a:=\delta_a/\gamma\),

\[
 r_a=\frac{d_a}{1+d_a},
 \qquad
 \sum_{m=0}^{\infty}r_a^m=1+d_a,
 \qquad
 r_a^N=\exp\!\left[-N\log\left(1+\frac1{d_a}\right)\right].
 \tag{PRM.32l}
\]

For \(d_a\gg1\), a fixed attenuation of \(r_a^N\) therefore requires
\(N\asymp d_a\). In the Fourier parent field,

\[
 d_p=\frac{|p|^2+|k-p|^2}{|k|^2},
 \tag{PRM.32m}
\]

which is invariant under a common Navier--Stokes dilation. Thus no finite
reciprocal depth gains critical scaling; joining all depths installs the full
parent-rate first moment. This is a first-moment wall inside the stronger
source-square route, not a new datum payment for the output-shell Dini tail.
The source-square route is sufficient for that tail by (SH.221), but is not
an equivalent rewriting of it.

## 6. Full resummation is positive but returns the open source square

The whole moment series can be summed exactly:

\[
\sum_{m=0}^{\infty}w_m(x)
=\frac1{\gamma+x}
\sum_{m=0}^{\infty}
\left(\frac{x}{\gamma+x}\right)^m
=\frac1\gamma .
\tag{PRM.33}
\]

Consequently

\[
\boxed{
\sum_{m=0}^{\infty}n_m(a,b)
=\frac c{\delta_a+\delta_b}.}
\tag{PRM.34}
\]

The resummed parent-pair storage is positive:

\[
\boxed{
\begin{aligned}
C_\infty
&:=c\iint
\frac{\operatorname{Re}\langle\Theta_a,\Theta_b\rangle}
{\delta_a+\delta_b}\,da\,db\\
&=c\int_0^\infty
\left\|\int e^{-s\delta_a}\Theta_a\,da\right\|^2ds
\ge0.
\end{aligned}}
\tag{PRM.35}
\]

Put

\[
G_s:=\int e^{-s\delta_a}\Theta_a\,da,
\qquad
\mathcal N_s:=\int e^{-s\delta_a}N_a\,da .
\tag{PRM.36}
\]

Differentiation of (PRM.35) gives

\[
\boxed{
\dot C_\infty
=-c\|g\|^2
+2c\,\operatorname{Re}\int_0^\infty
\langle\mathcal N_s,G_s\rangle\,ds.}
\tag{PRM.37}
\]

Thus the price of recovering positivity after all higher moments are joined
is the coherent collapsed source square \(c\|g\|^2\), together with the full
joined nonlinear parent-insertion remainder. In the actual Fourier
construction this is the same source-square/parent-fiber-collapse port already
isolated in (SH.218)--(SH.223), not a datum-paid quantity.

Equation (PRM.8) gives the same verdict on the insertion tower:

\[
\boxed{
\sum_{m=0}^{\infty}\mathcal N_m
=\frac1\gamma\int N_a\,da.}
\tag{PRM.38}
\]

The original binomial parent insertion survives the complete reciprocal
resummation with its sign and phase. It has not become an endpoint term.

### 6.1 The complete unweighted insertion identity and the critical-weight boundary

At the full unselected pressure-complete parent level there is one further
exact identity in the complete **unweighted** global \(L^2\) pairing. It does
not resolve the output-weighted source square in (PRM.37) when \(c\) is the
nonconstant critical Fourier weight. Let

\[
S_s:=e^{-\nu s\Lambda^2},
\qquad
v_s:=S_su,
\qquad
G_s:=Q(v_s),
\qquad
H_s:=S_sQ(u),
\tag{PRM.39}
\]

where \(Q(v)=-\mathcal B(v,v)\). Define the signed VPI-minus-heat source
defect and the exact nonlinear parent insertion by

\[
\mathfrak D_s:=H_s-G_s,
\qquad
\mathfrak N_s:=DQ(v_s)[H_s]
=-\mathcal B(H_s,v_s)-\mathcal B(v_s,H_s).
\tag{PRM.40}
\]

The pressure-complete kinetic cancellation

\[
(Q(v),v)_2=0
\tag{PRM.41}
\]

holds for every divergence-free \(v\). Differentiating (PRM.41) at \(v_s\)
in the direction \(H_s\) gives

\[
(\mathfrak N_s,v_s)_2+(G_s,H_s)_2=0.
\tag{PRM.42}
\]

Since \(H_s=G_s+\mathfrak D_s\),

\[
\boxed{
\|G_s\|_2^2
=-(\mathfrak N_s,v_s)_2
-(G_s,\mathfrak D_s)_2.}
\tag{PRM.43}
\]

At \(s=0\), \(\mathfrak D_0=0\), and (PRM.43) becomes the exact opposing
first binomial insertion

\[
\boxed{
(DQ(u)[Q(u)],u)_2=-\|Q(u)\|_2^2.}
\tag{PRM.44}
\]

The corresponding helicity identity follows by differentiating
\((Q(v),\nabla\times v)_2=0\):

\[
\boxed{
(\mathfrak N_s,\nabla\times v_s)_2
+(G_s,\nabla\times H_s)_2=0.}
\tag{PRM.45}
\]

All pairings in (PRM.41)--(PRM.45) are complete global unweighted \(L^2\)
pairings. The kinetic and helicity cancellations are not outputwise, and a
nonconstant Fourier multiplier cannot be inserted into them. Consequently
(PRM.43) cannot be applied separately at each output or multiplied by the
critical source-square weight.

In Fourier variables the heat defect in (PRM.40) retains the complete parent
phase and has multiplier

\[
\boxed{
e^{-\nu s|k|^2}
-e^{-\nu s(|p|^2+|q|^2)},
\qquad k=p+q.}
\tag{PRM.46}
\]

It vanishes exactly on the Stokes-resonant face
\(|k|^2=|p|^2+|q|^2\), but it has no global sign away from that face.

The correct output-weighted law comes directly from the simultaneous
material-time/heat-age transport. With
\(L:=\partial_t-\partial_s\), one has

\[
\boxed{
LG_s=\mathfrak N_s,
\qquad
L\|W^{1/2}G_s\|_2^2
=2\operatorname{Re}(W\mathfrak N_s,G_s)_2}
\tag{PRM.46a}
\]

for every nonnegative self-adjoint Fourier multiplier \(W\) commuting with
the heat semigroup. Integrating over the triangle
\(0\le t\le\tau\), \(0\le s\le\tau-t\) gives

\[
\boxed{
\begin{aligned}
\int_0^\tau\|W^{1/2}Q(u(t))\|_2^2dt
={}&\int_0^\tau\|W^{1/2}Q(S_su_0)\|_2^2ds\\
&+2\int_0^\tau\int_0^{\tau-t}
\operatorname{Re}(W\mathfrak N_s(t),G_s(t))_2\,ds\,dt .
\end{aligned}}
\tag{PRM.46b}
\]

For the raw critical source port,
\(W=\nu^{-1}\Lambda^{-1}\). Thus the signed triangular insertion in
(PRM.46b) is exactly the open weighted source action minus a datum-finite
boundary. It is an exact no-recount identity, not a datum payment. The full
derivation, the transverse restriction, and the Stokes-resonant sign boundary
are recorded in
thomas-full-field-insertion-heat-defect-no-recount-boundary-20260803.md.

## 7. Exact verdict for the first-prefix attack

The parent-age construction supplies a real opposing nesting:

\[
\boxed{
F_1=F_0+\frac12I+\gamma C_0-\gamma K_2,
\qquad
Y_m=\gamma X_m+Y_{m+1}.}
\tag{PRM.47}
\]

But the direct completion has an exact boundary:

\[
\boxed{
\begin{aligned}
&m=0,1:\quad\text{positive response-completed individual storages};\\
&m\ge2:\quad\text{indefinite individual two-parent kernels};\\
&m<N\text{ joined}:\quad
  \text{positive parent-pair storage for every finite }N,\\
&\hspace{37mm}\text{but it governs }\sum_{m<N}F_m
  \text{ and hence the first parent-rate moment};\\
&\text{all }m\text{ resummed}:\quad
\text{positive storage, but the original collapsed source square returns}.
\end{aligned}}
\tag{PRM.48}
\]

Accordingly, the parent-age moments do not by themselves prove the
datum-finite first critical prefix. A successful continuation of Thomas's
method must use a genuinely signed cancellation among the actual joined
insertions \(N_a\) and the heat defect \(\mathfrak D_s\) before their parent
fiber collapses. Merely declaring every higher moment positive is false by
(PRM.32), while summing away that indefiniteness returns the coherent
output-weighted source port by (PRM.37). The unweighted identity (PRM.43)
cannot resolve that weighted port. At the critical weight, (PRM.46b) instead
shows that the joined triangular insertion is the open source action minus a
datum-finite boundary.

This leaves a strictly identified in-method lemma: derive, from the full
pressure-explicit binomial insertion tree represented by (PRM.2), a signed
telescoping or no-recount bound for the output-weighted joined remainders
\(R_{{\rm NL},m}\) which neither estimates them separately nor resums them
into the critical source square; equivalently, close the transverse triangular
insertion in (PRM.46b), joined with its off-resonant heat defect, without
separating its signs. No such bound is proved here.
