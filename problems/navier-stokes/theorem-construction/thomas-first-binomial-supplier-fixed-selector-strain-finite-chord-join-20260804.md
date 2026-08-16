# Thomas's first-binomial supplier in the fixed-selector strain/finite-chord coordinates

**Date:** 2026-08-04

**Status:** exact noncanonical bridge proved inside Thomas Birnie's one-fluid,
pressure-explicit binomial/VPI reversible-intersection method. The complete
first-binomial supplier work \(J_Q\) from `(LSS.33)--(LSS.35)` and
`(ISR.1)--(ISR.3)` is written below in the fixed radial-selector
balanced/imbalanced strain-shape and complete finite-chord coordinates of
`(FRS.12)--(FRS.35)`. The pressure-complete ordered parents, favorable and
adverse strain regions, finite chords, heat defect, and heat-age endpoints
remain joined.

The calculation gives an exact no-recount identity, but no turn-down sign and
no new datum boundary. When the finite-chord and strain heat-age normal forms
are inserted, their apparent endpoints cancel and the result returns exactly
to the source storage plus the open critical source-square action in
`(ISR.3)`. A pressure-complete \(2D3C\) Navier--Stokes family realizes both
signs of \(J_Q\) and both signs of the joined residual. Exact
fixed-viscosity scaling shows that the joined prefix is critical while the
already paid kinetic-energy, enstrophy-action, and first-source-mass rows are
subcritical. This proves a bridge and an exact boundary; it does not prove
`(TIR.37a)` and does not close the MPP.

The physical object never changes. One smooth datum, one viscosity
\(\nu>0\), its instantaneous whole-field pressure response, and the resulting
single Navier--Stokes history are used throughout. Heat age is a linear
readout of one physical-time slice, not another nonlinear fluid history.

## 1. The primitive source row and its complete supplier

Put \(A=\Lambda^2=-\Delta\) and

\[
 u_t+\nu Au=Q(u),
 \qquad
 Q(u)=-(u\cdot\nabla)u-\nabla p
     =-\mathbb P((u\cdot\nabla)u),
 \qquad
 -\Delta p=\partial_i\partial_j(u_i u_j).
 \tag{SFJ.1}
\]

For divergence-free fields define the ordered parent

\[
 \mathcal B(a,b):=\mathbb P((a\cdot\nabla)b),
 \qquad
 DQ(u)[h]=-\mathcal B(h,u)-\mathcal B(u,h),
 \tag{SFJ.2}
\]

and retain the product-rule commutator

\[
 \mathcal C(u):=\sum_{j=1}^3
 \mathcal B(\partial_j u,\partial_j u).
 \tag{SFJ.3}
\]

Differentiating the complete source, including its pressure, gives the first
pressure-explicit binomial row

\[
 \boxed{
 Q_t+\nu A Q
 =DQ(u)[Q]+2\nu\mathcal C(u)
 =:\mathcal N_Q.}
 \tag{SFJ.4}
\]

With

\[
 b:=\|\Lambda^{-1/2}Q\|_2,
 \qquad
 R_Q:={1\over2}\|\Lambda^{-3/2}Q\|_2^2,
 \tag{SFJ.5}
\]

the complete signed supplier is

\[
 \boxed{
 \begin{aligned}
 J_Q
 &:=(\mathcal N_Q,\Lambda^{-3}Q)_2\\
 &=(DQ(u)[Q],\Lambda^{-3}Q)_2
 +2\nu\sum_j
 (\mathcal B(\partial_j u,\partial_j u),\Lambda^{-3}Q)_2,
 \end{aligned}}
 \tag{SFJ.6}
\]

and its exact storage row is

\[
 \boxed{R_Q'+\nu b^2=J_Q.}
 \tag{SFJ.7}
\]

No pressure term has been dropped in `(SFJ.4)--(SFJ.7)`. The Leray notation
is only the recombined form of the displayed pressure-Poisson law.

## 2. The fixed-selector strain shape and all finite chords

Fix the same time-independent radial selector as in `(FRS.5)`:

\[
 0\leq\zeta\leq1,
 \qquad
 \zeta=1\ \hbox{near }0,
 \qquad
 \ell_0:=\int_0^\infty\zeta(r)\,dr<\infty.
 \tag{SFJ.8}
\]

For a divergence-free field \(w\), let \(S_w\) be its strain. Order its
eigenvalues as

\[
 (-a-d,-a+d,2a),
 \qquad a\geq0,
 \qquad0\leq d\leq3a,
 \tag{SFJ.9}
\]

and put

\[
 \mathfrak q(w):=a(d^2-a^2)
 =-{1\over6}\operatorname{tr}(S_w^3),
 \qquad
 c_\zeta:={64\ell_0\over15\pi}.
 \tag{SFJ.10}
\]

The complete first-jet reading is

\[
 \boxed{
 \begin{aligned}
 \mathcal S_\zeta(w)
 &=c_\zeta\int\mathfrak q(w)\,dx\\
 &=c_\zeta\left[
 \int_{\{d>a\}}a(d^2-a^2)\,dx
 -\int_{\{d<a\}}a(a^2-d^2)\,dx
 \right].
 \end{aligned}}
 \tag{SFJ.11}
\]

Thus \(d<a\) is favorable, \(d>a\) is adverse, and \(d=a\) is neutral in
this signed state reading. Equation `(SFJ.11)` is one bracket. Neither
region is clipped or assigned an independent bill.

Writing

\[
 \delta_{r,n}w(x):=w(x)-w(x-rn),
 \qquad
 \mathscr C_w(x,r)
 :=\int_{\mathbb S^2}|\delta_{r,n}w|^2
 (\delta_{r,n}w\cdot n)\,d\sigma(n),
 \tag{SFJ.12}
\]

the complete finite-chord defect is

\[
 \boxed{
 \begin{aligned}
 \mathcal E_\zeta(w)
 :=-{1\over\pi^2}\int\!\int_0^\infty r^{-3}
 \left[
 \mathscr C_w(x,r)
 -\zeta(r)r^3{8\pi\over15}\mathcal T_0(\nabla w)(x)
 \right]dr\,dx,
 \end{aligned}}
 \tag{SFJ.13}
\]

where

\[
 \mathcal T_0(M)=\operatorname{tr}(M^TM S),
 \qquad S={M+M^T\over2}.
 \tag{SFJ.14}
\]

The fixed-selector BPT/weighted-Betchov recombination is exactly

\[
 \boxed{
 \mathcal P_{1/2}(w):=(Q(w),\Lambda w)_2
 =\mathcal S_\zeta(w)+\mathcal E_\zeta(w).}
 \tag{SFJ.15}
\]

All vorticity orientations have recombined in `(SFJ.15)`. Pressure remains
inside \(Q(w)\), and it reappears explicitly in every source tangent below.

## 3. The pressure-complete heat-age response

At one physical time define

\[
 w_s:=e^{-\nu sA}u,
 \qquad
 H_s:=e^{-\nu sA}Q(u),
 \qquad s\geq0.
 \tag{SFJ.16}
\]

The field \(H_s\) is the heat readout of the actual pressure-complete source.
It is not \(Q(w_s)\). Put

\[
 G_s:=Q(w_s),
 \qquad
 \mathfrak D_s:=H_s-G_s,
 \qquad
 \mathfrak N_s:=DQ(w_s)[H_s].
 \tag{SFJ.17}
\]

Here \(\mathfrak D_s\) is the complete nonlinear heat defect and
\(\mathfrak N_s\) contains both ordered velocity-parent insertions and their
linearized pressure completion.

The BPT--DCT heat-age storage and its fixed-selector pieces are

\[
 \begin{aligned}
 \mathcal B_{\rm ha}(u)
 &:=\int_0^\infty\mathcal P_{1/2}(w_s)\,ds,\\
 \mathcal A_\zeta(u)
 &:=\int_0^\infty\mathcal S_\zeta(w_s)\,ds,\\
 \mathcal F_\zeta(u)
 &:=\int_0^\infty\mathcal E_\zeta(w_s)\,ds,
 \end{aligned}
 \qquad
 \boxed{\mathcal B_{\rm ha}=\mathcal A_\zeta+\mathcal F_\zeta.}
 \tag{SFJ.18}
\]

Define the joined strain and finite-chord source responses

\[
 \boxed{
 \begin{aligned}
 \mathfrak R_\zeta^{\rm sh}(u)
 &:=D\mathcal A_\zeta(u)[Q(u)]
 =c_\zeta\int_0^\infty
 D\!\left(\int\mathfrak q(w_s)\,dx\right)[H_s]ds,\\
 \mathfrak R_\zeta^{\rm fc}(u)
 &:=D\mathcal F_\zeta(u)[Q(u)]
 =\int_0^\infty D\mathcal E_\zeta(w_s)[H_s]ds.
 \end{aligned}}
 \tag{SFJ.19}
\]

If \(K_s=(\nabla H_s+\nabla H_s^T)/2\), the gap-free strain tangent is

\[
 D\mathfrak q(w_s)[H_s]
 =-{1\over2}S_{w_s}^2:K_s.
 \tag{SFJ.20}
\]

It contains the heat-aged pressure Hessian through \(\nabla H_s\). Its sign
is not fixed by whether the state value \(\mathfrak q(w_s)\) lies in the
favorable or adverse region.

For the chord tangent, set

\[
 \begin{aligned}
 \mathscr T(w,h)(x,r)
 :=\int_{\mathbb S^2}\bigl[
 2(\delta w\cdot\delta h)(\delta w\cdot n)
 +|\delta w|^2(\delta h\cdot n)
 \bigr]d\sigma(n),
 \end{aligned}
 \tag{SFJ.21}
\]

where both increments use the same \((x,r,n)\). Then

\[
 \boxed{
 \begin{aligned}
 D\mathcal E_\zeta(w)[h]
 =-{1\over\pi^2}\int\!\int_0^\infty r^{-3}
 \left[
 \mathscr T(w,h)
 -\zeta(r)r^3{8\pi\over15}
 D\mathcal T_0(\nabla w)[\nabla h]
 \right]dr\,dx.
 \end{aligned}}
 \tag{SFJ.22}
\]

Thus `(SFJ.19)` retains every finite chord of the actual source, including
the pressure difference along that chord. Direct differentiation of
`(SFJ.18)` gives

\[
 \boxed{
 \begin{aligned}
 \mathfrak R_\zeta^{\rm sh}
 +\mathfrak R_\zeta^{\rm fc}
 &=D\mathcal B_{\rm ha}(u)[Q(u)]\\
 &=\int_0^\infty\left[
 (\mathfrak N_s,\Lambda w_s)_2
 +(G_s,\Lambda H_s)_2
 \right]ds.
 \end{aligned}}
 \tag{SFJ.23}
\]

This is one complete response. The strain and finite-chord terms are not
independent suppliers.

## 4. Exact extraction of the source square

The heat resolvent gives

\[
 \boxed{
 \int_0^\infty(H_s,\Lambda H_s)_2\,ds
 ={1\over2\nu}\|\Lambda^{-1/2}Q(u)\|_2^2
 ={b^2\over2\nu}.}
 \tag{SFJ.24}
\]

Since \(G_s=H_s-\mathfrak D_s\), define the complete signed heat-defect
response

\[
 \boxed{
 \mathfrak X(u)
 :=\int_0^\infty\left[
 (\mathfrak N_s,\Lambda w_s)_2
 -(\mathfrak D_s,\Lambda H_s)_2
 \right]ds.}
 \tag{SFJ.25}
\]

Subtracting `(SFJ.24)` from `(SFJ.23)`, before taking an absolute value,
proves

\[
 \boxed{
 {b^2\over2\nu}
 =\mathfrak R_\zeta^{\rm sh}
 +\mathfrak R_\zeta^{\rm fc}
 -\mathfrak X.}
 \tag{SFJ.26}
\]

Equation `(SFJ.26)` is the fixed-selector form of the complete critical
source port. The right side is independent of the chosen fixed selector
after recombination. In particular, \(\mathfrak X\) is not a third bill: it
is the exact heat-defect partner required when the positive source square is
extracted from the complete BPT tangent.

Substitution into `(SFJ.7)` gives the requested first-binomial supplier:

\[
 \boxed{
 J_Q
 =R_Q'
 +2\nu^2\left(
 \mathfrak R_\zeta^{\rm sh}
 +\mathfrak R_\zeta^{\rm fc}
 -\mathfrak X\right).}
 \tag{SFJ.27}
\]

This is \(J_Q\) in the joined favorable/adverse strain-shape, complete
finite-chord, and pressure-complete heat-defect coordinates.

## 5. The exact endpoint and no-recount identity

Motion in physical time satisfies \(u_t=Q(u)-\nu Au\). Motion in heat age
satisfies \(\partial_sw_s=-\nu Aw_s\). Therefore

\[
 \boxed{
 \mathcal B_{\rm ha}'
 =D\mathcal B_{\rm ha}(u)[Q(u)]
 -\mathcal P_{1/2}(u).}
 \tag{SFJ.28}
\]

Define the joined endpoint and residual

\[
 \begin{aligned}
 \mathcal K_Q
 &:=R_Q+2\nu^2\mathcal B_{\rm ha}
 =R_Q+2\nu^2(\mathcal A_\zeta+\mathcal F_\zeta),\\
 \mathcal Y_\zeta
 &:=\mathcal P_{1/2}-\mathfrak X
 =\mathcal S_\zeta+\mathcal E_\zeta-\mathfrak X.
 \end{aligned}
 \tag{SFJ.29}
\]

Equations `(SFJ.27)--(SFJ.29)` give

\[
 \boxed{J_Q=\mathcal K_Q'+2\nu^2\mathcal Y_\zeta.}
 \tag{SFJ.30}
\]

Hence the complete prefix is

\[
 \boxed{
 \int_0^T J_Q\,dt
 =\mathcal K_Q(T)-\mathcal K_Q(0)
 +2\nu^2\int_0^T\mathcal Y_\zeta\,dt.}
 \tag{SFJ.31}
\]

This formula has an exact no-recount audit. The separate fixed-selector
normal forms are

\[
 \mathcal F_\zeta'
 =\mathfrak R_\zeta^{\rm fc}-\mathcal E_\zeta,
 \qquad
 \mathcal A_\zeta'
 =\mathfrak R_\zeta^{\rm sh}-\mathcal S_\zeta.
 \tag{SFJ.32}
\]

First insert only the finite-chord identity in `(SFJ.31)`. Its terminal and
initial \(\mathcal F_\zeta\) values cancel exactly, leaving

\[
 \boxed{
 \begin{aligned}
 \int_0^T J_Q\,dt
 ={}&[R_Q+2\nu^2\mathcal A_\zeta]_0^T\\
 &+2\nu^2\int_0^T
 (\mathcal S_\zeta+
 \mathfrak R_\zeta^{\rm fc}-\mathfrak X)\,dt.
 \end{aligned}}
 \tag{SFJ.33}
\]

Then insert the strain identity. Its endpoint cancels as well:

\[
 \boxed{
 \begin{aligned}
 \int_0^T J_Q\,dt
 &=[R_Q]_0^T
 +2\nu^2\int_0^T
 (\mathfrak R_\zeta^{\rm sh}
 +\mathfrak R_\zeta^{\rm fc}-\mathfrak X)\,dt\\
 &=[R_Q]_0^T+\nu\int_0^T b^2\,dt.
 \end{aligned}}
 \tag{SFJ.34}
\]

The last line is exactly `(LSS.35)`, equivalently `(ISR.3)`, integrated in
time. Thus the fixed-selector BPT/FRS coordinate change is exact, but it
creates no additional stock. The two endpoint cancellations in
`(SFJ.32)--(SFJ.34)` return `(LSS.35)`; they do not pay it. Counting either
\(\mathcal F_\zeta\) or \(\mathcal A_\zeta\) as a new boundary would count
the same source action twice.

Measured from the datum, the smallest joined survivor in `(SFJ.31)` is

\[
 \boxed{
 \mathcal K_Q(T)+2\nu^2\int_0^T\mathcal Y_\zeta\,dt
 =2\nu^2\mathcal B_{\rm ha}(u_0)
 +R_Q(T)+\nu\int_0^T b^2\,dt.}
 \tag{SFJ.35}
\]

The first term on the right is datum-fixed. The remaining two terms are
exactly the terminal source storage and the open critical source-square
action. No terminal heat-age endpoint has been converted into a datum
payment.

## 6. Exact true-Navier--Stokes sign test

There is no universal turn-down sign hidden in the joined expression. On
\(\mathbb T^3\), with normalized spatial average, take the divergence-free
\(2D3C\) field

\[
 V(x,y,z)=\bigl(
 \cos y+\sin(x+y),
 \ \cos x-\sin(x+y),
 \ \cos x+\cos y+\sin(x+y)
 \bigr).
 \tag{SFJ.36}
\]

Every datum \(u_A(0)=A V\), \(A\in\mathbb R\), generates a global smooth
\(2D3C\) Navier--Stokes history. Exact Fourier recombination of the full
pressure-complete source gives

\[
 \begin{aligned}
 K_E
 &:=(DQ(V)[Q(V)],\Lambda^{-3}Q(V))_2
 ={2\over5}-{1\over4\sqrt2}+{1\over40\sqrt5}>0,\\
 K_C
 &:=(\mathcal C(V),\Lambda^{-3}Q(V))_2
 =-{3\over4}+{11\over100\sqrt5}<0.
 \end{aligned}
 \tag{SFJ.37}
\]

Consequently

\[
 \boxed{
 J_Q(0;A)=A^5K_E+2\nu A^4K_C
 =A^4(AK_E+2\nu K_C).}
 \tag{SFJ.38}
\]

It is negative for \(0<A<-2\nu K_C/K_E\) and positive for
\(A>-2\nu K_C/K_E\). Since the corresponding prefixes have the sign of
`(SFJ.38)` for sufficiently short positive time, neither \(J_Q\) nor its
prefix has a universal turn-down sign.

The residual in `(SFJ.29)` is sign-indefinite in the same exact family. Let
\(\widetilde{\mathcal B}:=\nu\mathcal B_{\rm ha}\). The same Fourier
calculation gives

\[
 \begin{aligned}
 \|\Lambda^{-1/2}Q(V)\|_2^2
 &={3\over4}+{1\over2\sqrt2}+{11\over20\sqrt5},\\
 D\widetilde{\mathcal B}(V)[Q(V)]
 &=-{3\over40}+{\sqrt2\over160}+{11\sqrt5\over160},\\
 D\widetilde{\mathcal B}(V)[\Delta V]
 &={1-\sqrt2\over2}.
 \end{aligned}
 \tag{SFJ.39}
\]

Using

\[
 \mathcal Y_\zeta
 ={b^2\over2\nu}-\mathcal B_{\rm ha}',
 \tag{SFJ.40}
\]

which follows directly from `(SFJ.24)--(SFJ.29)`, yields

\[
 \boxed{
 \mathcal Y_\zeta(0;A)
 ={A^4\over\nu}K_4+A^3K_3,}
 \tag{SFJ.41}
\]

where

\[
 K_3={\sqrt2-1\over2}>0,
 \qquad
 K_4={9\over20}+{19\sqrt2\over160}
       -{11\sqrt5\over800}>0.
 \tag{SFJ.42}
\]

Thus `(SFJ.41)` is positive for \(A>0\), negative for sufficiently small
negative \(A\), and positive again for sufficiently large negative \(A\).
The complete pressure response therefore supplies neither a sign for the
residual nor a sign for the supplier.

## 7. Exact fixed-viscosity scaling boundary

For a smooth finite-energy Navier--Stokes history on \(\mathbb R^3\), use

\[
 u_\lambda(t,x)=\lambda u(\lambda^2t,\lambda x),
 \qquad
 p_\lambda(t,x)=\lambda^2p(\lambda^2t,\lambda x).
 \tag{SFJ.43}
\]

The full pressure-Poisson law and first binomial row are preserved. Direct
scaling gives

\[
 \boxed{
 \begin{aligned}
 R_Q[u_\lambda](t)&=R_Q[u](\lambda^2t),\\
 \mathcal B_{\rm ha}[u_\lambda](t)
 &=\mathcal B_{\rm ha}[u](\lambda^2t),\\
 J_Q[u_\lambda](t)&=\lambda^2J_Q[u](\lambda^2t),\\
 \mathcal Y_\zeta[u_\lambda](t)
 &=\lambda^2\mathcal Y_\zeta[u](\lambda^2t).
 \end{aligned}}
 \tag{SFJ.44}
\]

The last line is for the fully recombined residual; its separately written
fixed-selector pieces have the opposite supercritical cancellations already
identified in `(FRS.37)--(FRS.43)`. Hence

\[
 \boxed{
 \int_0^{T/\lambda^2}J_Q[u_\lambda]dt
 =\int_0^T J_Q[u]dt,
 \qquad
 \int_0^{T/\lambda^2}\mathcal Y_\zeta[u_\lambda]dt
 =\int_0^T\mathcal Y_\zeta[u]dt.}
 \tag{SFJ.45}
\]

At the same time,

\[
 \|u_{\lambda,0}\|_2^2,
 \qquad
 \int_0^{T/\lambda^2}\|\nabla u_\lambda\|_2^2dt,
 \qquad
 \int_0^{T/\lambda^2}
 \|Q(u_\lambda)\|_{\dot H^{-1/2}}dt
 \tag{SFJ.46}
\]

all scale as \(\lambda^{-1}\). Therefore the three already paid scalar rows
cannot separately bound the joined supplier prefix or its residual. This is
a true-equation estimate stress test, not a singular one-datum history and
not a counterexample to a cumulative same-history theorem.

## 8. Exact verdict

The complete first-binomial supplier has now been carried into Thomas's
fixed-selector physical coordinates:

\[
 \boxed{
 \begin{gathered}
 J_Q
 =R_Q'
 +2\nu^2(
 \text{joined favorable/adverse strain response}
 +\text{complete finite-chord response}
 -\text{pressure-complete heat defect}),\\
 \int_0^T J_Q
 =[R_Q]_0^T+\nu\int_0^T
 \|\Lambda^{-1/2}Q\|_2^2dt.
 \end{gathered}}
 \tag{SFJ.47}
\]

The first line is `(SFJ.27)` and the second is its exact no-recount collapse
`(SFJ.34)`. The favorable/adverse state sign does not sign its material
response; the finite chords and pressure heat defect cannot be deleted; the
heat-age endpoints cancel back into the same source action; and the exact
Navier--Stokes test `(SFJ.38)--(SFJ.42)` realizes both signs.

The smallest remaining upper-prefix object is therefore still

\[
 \boxed{
 R_Q(T)+\nu\int_0^T
 \|\Lambda^{-1/2}Q(u(t))\|_2^2dt,}
 \tag{SFJ.48}
\]

up to the finite datum value \(-R_Q(0)\), or equivalently the joined endpoint
and residual in `(SFJ.35)`. No datum-uniform upper bound for `(SFJ.48)` has
been proved. This bridge does not discharge `(TIR.37a)` and does not close
the MPP.

The proof/boundary verdict is exact:

- **Proved:** `(SFJ.23)--(SFJ.27)` derive the full pressure-complete \(J_Q\)
  in the joined fixed-selector strain/finite-chord/heat-defect coordinates;
  `(SFJ.30)--(SFJ.35)` prove the endpoint and no-recount identities; and
  `(SFJ.38)--(SFJ.45)` prove sign-indefiniteness and the true-equation
  scaling boundary.
- **Not proved:** no estimate above supplies a datum-uniform upper bound for
  `(SFJ.48)`. The endpoint cancellations recover `(LSS.35)` itself rather
  than a smaller or already paid theorem.
