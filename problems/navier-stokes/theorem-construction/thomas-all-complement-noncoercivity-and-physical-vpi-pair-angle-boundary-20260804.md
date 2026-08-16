# Thomas's all-complement noncoercivity and physical VPI-pair angle boundary

**Date:** 2026-08-04

**Status:** noncanonical exact frozen countercalibration and whole-history
hypothesis boundary inside Thomas Birnie's one-fluid, pressure-explicit
binomial/VPI reversible-intersection method.

This note continues only the canonical material three-label,
six-assignment receiver in (STK.13)--(STK.19), the eight component blocks in
(TPR.1)--(TPR.17), the primitive pressure-explicit current
\(\mathcal P_{1/2}=(Q(u),\Lambda u)_2\), and the physical all-pair VPI
identity (JEM.10)--(JEM.13).  It does not replace the current, the same
material history, or Thomas's co-normal probe by an independent model.

The exact answer is negative at the frozen and record-sum levels.
Incompressibility and the pressure-complete trilinear tensor do not force a
selected contracting-line component.  The positivity assumption
\(\int_IJ>0\) does not exclude the all-complement block.  The physical pair
sign \(j_{ab}>0\) does not force the velocity difference to have any
contracting-line or co-normal component.

The countercalibrations below are deliberately separated from the still
unproved whole-history statement.  They rule out a universal algebraic sign
or angle theorem.  They do not construct a canonical failed double-recent
record with its causal heat parents, moving gate, and actual selector.

## 1. Positive record sums do not exclude the all-complement block

Write

\[
 A_\sigma:=\int_IJ_\sigma(t)\,dt,
 \qquad
 A:=\int_IJ(t)\,dt=\sum_{\sigma\in\{s,c\}^3}A_\sigma.
 \tag{TAC.1}
\]

The assumption \(A>0\) implies only
\(\max_\sigma A_\sigma\ge A/8\).  It contains no inequality involving
\(A_{ccc}\).  In particular, the component identities (TPR.2)--(TPR.6)
permit

\[
 A_{ccc}=A>0,
 \qquad
 A_\sigma=0\quad(\sigma\ne ccc).
 \tag{TAC.2}
\]

At the exact algebraic level this occurs by taking the admissible weight
\(\chi=0\): then \(W=0\), \(\overline W=I\), and

\[
 J_{ccc}=J,\qquad J_\sigma=0\quad(\sigma\ne ccc).
 \tag{TAC.3}
\]

This does not assert that Thomas's actual episode selector vanishes on a
canonical failed record.  It proves that neither the eight-block identity nor
the positive-record hypothesis by itself excludes that possibility.  A
nontrivial selector theorem must add an overlap statement.

The complete six-assignment sum is already retained inside every
\(J_\sigma\); it does not mix the three \(s/c\) bits.  Upon recombining the
eight blocks, the moving-projector terms cancel label by label through
\(D_tW_\ell^s+D_tW_\ell^c=0\).  Thus neither six-assignment symmetry nor
eight-block recombination can manufacture a co-normal angle absent from the
individual actual-receiver contractions.

## 2. A lawful noncollinear six-assignment current entirely in one complement

Work on the standard three-torus with normalized Haar measure.  Put

\[
 \begin{aligned}
 k&=(1,1,1),&
 p&=(0,-1,0),&
 q&=(-1,0,-1),\\
 A&=(0,-1,1),&
 B&=(0,0,-1),&
 D&=(0,1,0).
 \end{aligned}
 \tag{TAC.4}
\]

Then \(k+p+q=0\), \(k\times p=(1,0,-1)\ne0\), and

\[
 k\cdot A=p\cdot B=q\cdot D=0.
 \tag{TAC.5}
\]

The real finite Fourier field whose three chosen representatives are

\[
 \widehat v(k)=A,\qquad
 \widehat v(p)=iB,\qquad
 \widehat v(q)=D,
 \qquad
 \widehat v(-r)=\overline{\widehat v(r)}
 \tag{TAC.6}
\]

is therefore smooth, real, divergence-free, and supported on one
noncollinear triad and its reality partner.

Let

\[
 P=e_1\otimes e_1,\qquad \overline P=I-P.
 \tag{TAC.7}
\]

All three polarizations lie exactly in the complementary plane:

\[
 PA=PB=PD=0,\qquad
 \overline PA=A,\quad\overline PB=B,\quad\overline PD=D.
 \tag{TAC.8}
\]

Use the primitive pressure-complete nonlinearity

\[
 Q(v)=-\mathbb P((v\cdot\nabla)v).
 \tag{TAC.9}
\]

Because \(\Lambda v\) is divergence-free, the Leray projector is
self-adjoint and

\[
 (Q(v),\Lambda v)_2
 =(-(v\cdot\nabla)v,\Lambda v)_2.
 \tag{TAC.10}
\]

Thus the following calculation includes, rather than deletes, the slaved
pressure completion.  Summing both parent orders at each of the three
receivers and then the reality partner gives

\[
 \begin{array}{c|ccc}
 \text{receiver frequency}&\pm k&\pm p&\pm q\\ \hline
 -\widehat{(v\cdot\nabla)v}(r)\cdot
 \overline{\widehat v(r)}
 &0&-1&1.
 \end{array}
 \tag{TAC.11}
\]

After the receiver weight \(|r|\) is inserted,

\[
 \boxed{
 (Q(v),\Lambda v)_2
 =2\left(-|p|+|q|\right)
 =2(\sqrt2-1)>0.}
 \tag{TAC.12}
\]

Replacing \(iB\) by \(-iB\) reverses the sign and changes none of
(TAC.4), (TAC.5), or (TAC.8).  Hence neither incompressibility nor the
primitive pressure-explicit tensor gives a sign or a positive angle with a
prescribed line.  For the frozen projector (TAC.7), every component block
containing an \(s\) factor vanishes and the complete six-assignment current
is carried by \(ccc\).

As a smooth divergence-free periodic datum, \(v\) starts a fixed-viscosity
smooth Navier--Stokes solution.  By continuity, its primitive current remains
positive for a short interval.  This is not yet the canonical double-recent
record: the recent legs, FIM mask, and dynamic record gate have not been
identified with this illustrative triad.

## 3. One same-fluid frozen field joins positive primitive current to a
positive VPI pair with zero contracting-line component

The preceding tensor test can be joined to the physical pair sign without
changing the fluid object.  Define the low finite Fourier field

\[
 \boxed{
 w(x)=
 \bigl(
 -\sin(x_1+x_2)-\sin(x_1+x_3),\
 \sin(x_1+x_2),\
 \sin(x_1+x_3)
 \bigr).}
 \tag{TAC.13}
\]

It is divergence-free.  Its strain is exactly

\[
 S_w(x)=\operatorname{diag}(-c_1-c_2,c_1,c_2),
 \quad
 c_1=\cos(x_1+x_2),\quad
 c_2=\cos(x_1+x_3).
 \tag{TAC.14}
\]

For \(N\in6\mathbb N\), use the scaled real form of (TAC.6),

\[
 v_N(x)
 =2A\cos(Nk\cdot x)
 -2B\sin(Np\cdot x)
 +2D\cos(Nq\cdot x),
 \tag{TAC.15}
\]

and put

\[
 u_{M,\delta,N}:=Mw+\delta v_N,
 \qquad
 M>2\delta N>0.
 \tag{TAC.16}
\]

The low support
\(\{\pm(1,1,0),\pm(1,0,1)\}\) contains no zero-sum triple.
For \(N\ge6\), no mixed low/high zero-sum triple exists.  Therefore the only
contribution to the primitive current is the high triad, and (TAC.12) gives

\[
 \boxed{
 \mathcal P_{1/2}(u_{M,\delta,N})
 =2(\sqrt2-1)\delta^3N^2>0.}
 \tag{TAC.17}
\]

This is an exact frequency-support statement; there is no small-error term.

Now choose the two material positions at the frozen time

\[
 y=(0,0,0),
 \qquad
 x=\left(0,-{5\pi\over3},-{\pi\over3}\right),
 \qquad R=x-y.
 \tag{TAC.18}
\]

Since \(N\in6\mathbb N\), all three high phases differ by integral multiples
of \(2\pi\) between \(x\) and \(y\), and

\[
 v_N(x)=v_N(y)=(0,0,2).
 \tag{TAC.19}
\]

The velocity difference is consequently

\[
 \boxed{
 V=u_{M,\delta,N}(x)-u_{M,\delta,N}(y)
 ={M\sqrt3\over2}(0,1,-1).}
 \tag{TAC.20}
\]

At the same two points,

\[
 \begin{aligned}
 S_u(x)
 &=\operatorname{diag}\left(-M,{M\over2},{M\over2}\right)
 -\delta N(e_2\otimes e_3+e_3\otimes e_2),\\
 S_u(y)
 &=\operatorname{diag}(-2M,M,M)
 -\delta N(e_2\otimes e_3+e_3\otimes e_2).
 \end{aligned}
 \tag{TAC.21}
\]

The condition \(M>2\delta N\) makes both expanding-plane eigenvalues
positive.  Thus at both endpoints the unique contracting line is exactly

\[
 e_-=e_1,
 \qquad
 P_-=e_1\otimes e_1.
 \tag{TAC.22}
\]

The actual pair velocity is entirely in the complementary expanding plane:

\[
 P_-V=0.
 \tag{TAC.23}
\]

Moreover,

\[
 |R|^2={26\pi^2\over9},
 \qquad
 |V|^2={3M^2\over2},
 \qquad
 V\cdot R=-{2\pi\sqrt3\over3}M<0.
 \tag{TAC.24}
\]

The physical VPI-pair current (JEM.10) therefore satisfies

\[
 \boxed{
 j_{xy}
 =-{1\over\pi^2}{|V|^2(V\cdot R)\over|R|^6}>0,
 \qquad
 V\cdot e_-=0.}
 \tag{TAC.25}
\]

If the co-normal is initialized by Thomas's rule \(n=e_-\), then also
\(V\cdot n=0\).  The positive pair sign says exactly that this finite chord
is contracting, \(V\cdot R<0\); it does not say that its velocity difference
occupies the local contracting line.

Equations (TAC.17) and (TAC.25) hold in one real, smooth, divergence-free
finite Fourier datum.  For every fixed \(\nu>0\), that datum generates a
smooth periodic Navier--Stokes history for a nonzero time.  The calibration
is frozen at the initial slice and does not claim that the canonical
double-recent gate admits these modes as one failed record.  The pair formula
is kinematic on the periodic lift; no whole-space aggregate claim is made
from this pair calibration.

## 4. What these exact examples rule out

The examples prove all of the following negative statements.

1. Frequency transversality \(r\cdot\widehat u(r)=0\) leaves a
   two-dimensional polarization plane and does not orient it toward a
   strain eigenline.
2. The pressure-explicit Leray tensor does not create such an orientation:
   in the scalar current it pairs against the divergence-free receiver and
   gives exactly (TAC.10).
3. The six receiver/input assignments can have either sign while every
   polarization lies in a fixed complementary plane.
4. The positive-record identity alone permits \(ccc\) to be the
   record-carrying fixed block.
5. The physical sign \(j_{ab}>0\) does not force a contracting-line or
   co-normal component, even when both endpoint strains have the same unique
   contracting line in the same lawful field.

What is not proved is equally exact.  The examples do not realize the recent
Duhamel parents, the dynamic FIM gate, the actual material selector
\(\chi(a,t)\), and the positive canonical record simultaneously over a full
record interval.  A theorem may still use those causal whole-history
relations.  It cannot be obtained from a universal frozen angle or sign.

## 5. The whole-history hypothesis that would actually be needed

First, the all-complement block must be excluded or paid by an estimate not
present in TPR.  A quantitative form is: for one \(\eta>0\), uniformly over
positive records,

\[
 \boxed{
 A_n^{\not c}
 :=\sum_{\sigma\ne ccc}\int_{I_n}J_{n,\sigma}^{\rm rr}(t)\,dt
 \ge\eta\int_{I_n}J_n^{\rm rr}(t)\,dt>0.}
 \tag{TAC.26}
\]

Then one fixed pattern \(\sigma_n\ne ccc\) carries at least
\(A_n^{\not c}/7\) and has at least one selected slot.  Alternatively, one
may pay \(A_{n,ccc}\) by a datum-summable upper bound instead of excluding
it; positivity alone gives neither result.

Second, the selected slot must be joined to the actual co-normal response of
the complete six-assignment receiver.  If \(\sigma_\ell=s\), contract the
other two slots and denote the resulting effective receiver covector by
\(Z_{n,\sigma,\ell}\).  The relevant signed response is

\[
 \mathcal C_{n,\sigma,\ell}
 :=-\int_{I_n}\!\int
 Z_{n,\sigma,\ell}\cdot
 \bigl(\mathring D_tP_{-,\ell}\bigr)F_\ell
 \,d\lambda\,dt.
 \tag{TAC.27}
\]

Here \(d\lambda\) denotes the remaining material labels and every role,
parent-order, receiver-assignment, and reality partner remains inside
\(Z\).  A usable receiver-angle theorem would have to prove, with the same
sign over a record-dominating subhistory,

\[
 \boxed{
 \mathcal C_{n,\sigma_n,\ell_n}
 \ge\eta_1
 \int_{I_n}J_{n,\sigma_n}^{\rm rr}(t)\,dt-\varepsilon_n,}
 \tag{TAC.28}
\]

and identify the co-normal component of (TAC.27) as a nonnegative,
uniformly controlled receiver weight times
\(-n\cdot\mathcal R_-\).  All remaining pieces of
\((\mathring D_tP_-)F\), all complementary blocks, both kernel transports,
all three pressure-complete leg responses, and every entry/exit atom must
either telescope or enter \(\varepsilon_n\).

Finally one needs the actual budget

\[
 \sum_n\varepsilon_n<\infty,
 \qquad
 \sum_n\mathcal C_{n,\sigma_n,\ell_n}
 \le C(u_0,\nu).
 \tag{TAC.29}
\]

Equations (TAC.26)--(TAC.29), or a stronger theorem implying them, are the
missing whole-history bridge.  They are not consequences of
incompressibility, the primitive trilinear tensor, the finite branch
pigeonhole, or the pair sign.  No datum endpoint, TIR.37a, or MPP closure is
proved here.
