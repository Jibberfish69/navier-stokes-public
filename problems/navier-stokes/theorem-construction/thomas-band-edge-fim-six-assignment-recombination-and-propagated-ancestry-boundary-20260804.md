# Thomas's band-edge FIM recombination and propagated-ancestry boundary

Status: proved noncanonical exact classification and same-critical boundary
inside Thomas Birnie's one-fluid, fixed-viscosity, pressure-explicit
binomial/VPI reversible-intersection method.

The band-edge commutator from the projected low-flow propagator is not a new
physical interaction.  It is exactly the two ordered high-output assignments
of an ultra-nonlocal FIM triad whose other four output/input assignments lie
on the complementary side of the artificial high cut.  The full six-term
recombination is already part of the FIM exterior and is viscously paid when
it is paired at the same physical time with the actual critical receiver.

That statement does **not** pay the projected commutator as a vector source.
The low derivative in the FIM estimate appears only after the complementary
receiver assignments are rejoined.  A projected Duhamel ancestry pairs the
commutator with a transported terminal receiver rather than the same-time
critical receiver.  The exact propagated identity therefore retains both the
complementary receiver current and a propagated-receiver defect.  At a later
nonlinear generation it retains the complete mixed ancestry containing at
least one propagated band-edge source.

Consequently the instantaneous band-edge current is absent from the CDR
dynamic core, but its earlier source can still be an ancestor of a later core
parent.  No datum-finite contraction, no proof of `(TIR.37a)`, and no MPP
closure follow.

The one object throughout is the same smooth Navier--Stokes velocity generated
by \(u_0\).  The low, band, and high fields below are simultaneous Fourier
readouts of that one history.  Crossing the cut \(r\) does not create a new
fluid participant or a new physical event.

## 1. The exact band-edge source is an ultra-nonlocal FIM fragment

Write

\[
 \partial_tu+\nu\Lambda^2u+\mathcal N(u,u)=0,
 \qquad
 \mathcal N(f,g):=\mathbb P((f\cdot\nabla)g),
 \tag{BER.1}
\]

with the Leray projection, and hence the simultaneous pressure response,
inside every ordered interaction.  Put

\[
 U_0:=\|u_0\|_2,
 \qquad
 \kappa_\nu:=\left({\nu\over U_0}\right)^2,
\]

fix \(r\gtrsim\kappa_\nu\) above the bounded-frequency collar from
`(FIM.35)`, and put

\[
 a=c_{\rm st}
 \left({\nu\over U_0}\right)^{2/5}r^{4/5},
 \qquad 2a<r.
 \tag{BER.2}
\]

Using the same cuts as `(PLF.4)`, define

\[
 U:=S_{<a}u,
 \qquad H:=(I-S_{<a})u,
 \qquad V:=Q_rH,
 \qquad B:=(I-Q_r)H.
 \tag{BER.3}
\]

Thus \(u=U+B+V\).  None of these fields evolves independently.  With

\[
 \mathcal L_a z=\mathcal N(U,z)+\mathcal N(z,U),
 \tag{BER.4}
\]

the exact projected commutator is

\[
 \boxed{
 \mathcal C_{r,a}
 =Q_r[\mathcal L_a,Q_r]H
 =-Q_r\mathcal L_aB.}
 \tag{BER.5}
\]

For a sharp cut, a nonzero Fourier contribution to `(BER.5)` has one low
leg \(p\), one band leg \(q\), and one high output \(k=p+q\) satisfying

\[
 |p|<a,
 \qquad r-a<|q|<r,
 \qquad r\leq |k|<r+a.
 \tag{BER.6}
\]

Hence its maximum frequency \(h\) satisfies \(r\leq h<r+a<3r/2\), while
its minimum frequency is below \(a\).  If \(c_{\rm st}\) is no larger than
the static FIM constant, then

\[
 |p|<a
 \leq c_0\left({\nu\over U_0}\right)^{2/5}h^{4/5}.
 \tag{BER.7}
\]

Every band-edge triad is therefore in the ultra-nonlocal exterior removed by
`(FIM.28)--(FIM.34)`.  Smooth Littlewood--Paley cuts replace `(BER.6)` by
fixed collars and do not change `(BER.7)` after shrinking
\(c_{\rm st}\) by a fixed factor.

## 2. Exactly which two of the six assignments form the commutator

Let \(\Gamma_{r,a}\) be the set of geometric triads in `(BER.6)`, together
with their reality partners and fixed cutoff collars.  For fields whose
Fourier supports occupy specified legs of \(\Gamma_{r,a}\), write

\[
 \mathfrak T_{\Gamma}(f,g;z)
 :=-\operatorname{Re}
 \bigl(\mathcal N_{\Gamma}(f,g),\Lambda z\bigr)_2.
 \tag{BER.8}
\]

The pressure completion remains inside
\(\mathcal N_{\Gamma}\); `(BER.8)` does not extract or assign a sign to a
pressure term.  Because `(BER.5)` has high output \(V\) and the two input
orders are retained, its same-time critical pairing is exactly

\[
 \boxed{
 \mathfrak J_{r,a}^{\rm be}
 :=\operatorname{Re}(\mathcal C_{r,a},\Lambda V)_2
 =\mathfrak T_{\Gamma}(U,B;V)
  +\mathfrak T_{\Gamma}(B,U;V).}
 \tag{BER.9}
\]

These are two assignments, not all six.  The four complementary assignments
on the same geometric triads are

\[
\begin{aligned}
 \mathfrak J_{r,a}^{\rm ret}
 :={}&
 \mathfrak T_{\Gamma}(U,V;B)
 +\mathfrak T_{\Gamma}(V,U;B)\\
 &+\mathfrak T_{\Gamma}(B,V;U)
 +\mathfrak T_{\Gamma}(V,B;U).
\end{aligned}
 \tag{BER.10}
\]

The first line has the other high leg \(B\) as receiver.  The second line has
the low leg \(U\) as receiver.  The complete FIM incidence is

\[
 \boxed{
 \mathfrak J_{r,a}^{(6)}
 =\mathfrak J_{r,a}^{\rm be}
  +\mathfrak J_{r,a}^{\rm ret}.}
 \tag{BER.11}
\]

This rejoining is mathematically active.  For the low-transport pair,
incompressibility, self-adjointness of \(\Lambda\), and the fact that all
receivers are divergence-free give the exact identity

\[
\begin{aligned}
 &\mathfrak T_{\Gamma}(U,B;V)
 +\mathfrak T_{\Gamma}(U,V;B)\\
 &\qquad
 =-\operatorname{Re}
 \bigl([\Lambda,U\cdot\nabla]V,B\bigr)_2.
\end{aligned}
 \tag{BER.12}
\]

The high derivative in the first term of `(BER.12)` has become one
derivative on the low coefficient.  The two stretching assignments already
differentiate \(U\), and the two high--high-to-low assignments place the
critical multiplier on \(U\).  This is precisely the joined low--high
commutator/high--high-to-low structure in `(FIM.29)`.

The proof of `(FIM.29)--(FIM.34)` applies to the bounded submask
\(\Gamma_{r,a}\), which is closed under all six assignments and reality.
Thus, after choosing \(c_{\rm st}\) for any fixed
\(0<\theta<1/4\),

\[
 \boxed{
 |\mathfrak J_{r,a}^{(6)}(t)|
 \leq \theta\nu
 \|\Lambda^{3/2}P_{\sim r}u(t)\|_2^2
 \leq \theta\nu
 \|\Lambda^{3/2}u(t)\|_2^2.}
 \tag{BER.13}
\]

The bounded-frequency branch is paid by `(FIM.35)`.  Equation `(BER.13)`
is the exact sense in which the band-edge interaction was already present in
the FIM exterior: its **six-assignment completion** is paid.  It does not say
that `(BER.9)` is paid independently.

## 3. The projected commutator alone does not inherit the FIM payment

Solving `(BER.11)` for the high-output fragment gives the strongest
same-time signed statement available from FIM:

\[
 \boxed{
 \mathfrak J_{r,a}^{\rm be}
 =\mathfrak J_{r,a}^{(6)}
  -\mathfrak J_{r,a}^{\rm ret}.}
 \tag{BER.14}
\]

Therefore `(BER.13)` leaves the exact complementary receiver current

\[
 -\mathfrak J_{r,a}^{\rm ret}.
 \tag{BER.15}
\]

The necessity of this join is also visible before any time integration.  If
\(b_B\) and \(b_V\) denote comparable high-shell \(L^2\) amplitudes, the
energy-only estimate for the upward transport assignment has the scale

\[
 |\mathfrak T_{\Gamma}(U,B;V)|
 \lesssim U_0a^{3/2}r^2b_Bb_V.
 \tag{BER.16}
\]

Relative to the critical viscous scale
\(\nu r^3(b_B^2+b_V^2)\), its coefficient is

\[
 {U_0a^{3/2}\over\nu r}
 =c_{\rm st}^{3/2}
 \left({U_0\over\nu}\right)^{2/5}r^{1/5},
 \tag{BER.17}
\]

which is not uniform in \(r\).  After the return assignment in `(BER.12)`
is restored, the scale is instead

\[
 U_0a^{5/2}r\,b_Bb_V,
 \qquad
 {U_0a^{5/2}\over\nu r^2}=c_{\rm st}^{5/2}.
 \tag{BER.18}
\]

Equations `(BER.16)--(BER.18)` are an estimate countertest, not a
separately prescribed Navier--Stokes history.  They identify the exact
cancellation used by FIM and prohibit transferring its bound to one
projected assignment.

There is also a finite true-Leray check of the join.  On \(\mathbb T^3\),
take

\[
 p=(3,0,0),\qquad q=(0,R,0),\qquad k=(-3,-R,0),
\]

and assign

\[
 \widehat u(p)=e_2,\qquad
 \widehat u(q)=e_3,\qquad
 \widehat u(k)=i e_3,
\]

with conjugate coefficients at the reflected modes.  These coefficients are
divergence-free.  The complete ordered convolution with its output Leray
projection gives, on one representative of each conjugate pair,

\[
 T_p=0,\qquad T_q=-R,\qquad T_k=R.
\]

For a cut strictly between \(R\) and
\(\sqrt{R^2+9}\), the high-output band-edge current and its complementary
receiver current are

\[
 \mathfrak J^{\rm be}=R\sqrt{R^2+9},
 \qquad
 \mathfrak J^{\rm ret}=-R^2,
\]

whereas the six-assignment recombination is only

\[
 \mathfrak J^{(6)}
 =R\bigl(\sqrt{R^2+9}-R\bigr).
\]

Thus the high-output fragment and the complementary receiver fragment are
both nonzero and nearly cancel.  The conjugate modes multiply every displayed
quantity by the same factor.  This is an instantaneous exact-equation
laboratory for the recombination identity, not a continuing-history
counterexample.

## 4. The strongest exact signed projected-propagator identity

The actual projected field obeys `(PLF.16)`.  Put

\[
 \mathcal F_{r,a}^{\rm hh}:=-Q_r\mathcal N(H,H).
 \tag{BER.19}
\]

For the projected low-flow propagator
\(\mathscr U_{r,a}(t,s)\), the exact one-history formula is

\[
 V(t)=\mathscr U_{r,a}(t,s)V(s)
 +\int_s^t\mathscr U_{r,a}(t,\tau)
 \bigl(\mathcal F_{r,a}^{\rm hh}
       +\mathcal C_{r,a}\bigr)(\tau)\,d\tau.
 \tag{BER.20}
\]

Do not take a norm.  Fix the terminal critical receiver
\(G_t:=\Lambda V(t)\) and propagate it backward by the exact adjoint:

\[
 \Psi_t(\tau)
 :=\mathscr U_{r,a}(t,\tau)^*G_t.
 \tag{BER.21}
\]

Pairing `(BER.20)` with \(G_t\) gives

\[
\begin{aligned}
 \|\Lambda^{1/2}V(t)\|_2^2
 ={}&\operatorname{Re}(V(s),\Psi_t(s))_2\\
 &+\int_s^t
 \operatorname{Re}(\mathcal F_{r,a}^{\rm hh}(\tau),
                     \Psi_t(\tau))_2\,d\tau\\
 &+\int_s^t
 \operatorname{Re}(\mathcal C_{r,a}(\tau),
                     \Psi_t(\tau))_2\,d\tau.
\end{aligned}
 \tag{BER.22}
\]

The FIM receiver at time \(\tau\) is

\[
 G(\tau):=\Lambda V(\tau),
 \tag{BER.23}
\]

not \(\Psi_t(\tau)\).  Define the exact propagated-receiver defect

\[
 \mathcal R_{t;r,a}(\tau)
 :=\Psi_t(\tau)-G(\tau).
 \tag{BER.24}
\]

Using `(BER.9)`, `(BER.11)`, and `(BER.24)`, the final term in
`(BER.22)` is exactly

\[
\begin{aligned}
 &\int_s^t
 \operatorname{Re}(\mathcal C_{r,a},\Psi_t)_2\,d\tau\\
 &\quad=
 \int_s^t\mathfrak J_{r,a}^{(6)}(\tau)\,d\tau
 -\int_s^t\mathfrak J_{r,a}^{\rm ret}(\tau)\,d\tau
 +\int_s^t
 \operatorname{Re}(\mathcal C_{r,a}(\tau),
                     \mathcal R_{t;r,a}(\tau))_2\,d\tau.
\end{aligned}
 \tag{BER.25}
\]

Only the first term on the right of `(BER.25)` is paid by `(BER.13)`.  The
other two terms are the exact signed survivors:

\[
 \boxed{
 -\int_s^t\mathfrak J_{r,a}^{\rm ret}
 +\int_s^t
 \operatorname{Re}(\mathcal C_{r,a},\mathcal R_{t;r,a})_2.}
 \tag{BER.26}
\]

No pressure component was split in deriving `(BER.22)--(BER.26)`, and no
absolute value or source norm was used.  The first survivor is the current
through the complementary receivers required by FIM recombination.  The
second records that a propagated ancestry does not use the same-time critical
receiver on which FIM's absorption was proved.

Even for the heat propagator alone, the two receivers are different.  If
\(G(\tau)=e^{-\nu r^2\tau}G(0)\), then

\[
 \Psi_t(\tau)
 =e^{-\nu r^2(t-\tau)}G(t)
 =e^{-\nu r^2(2t-\tau)}G(0),
 \tag{BER.27}
\]

which is not \(G(\tau)\) for \(\tau<t\).  Thus the last term in
`(BER.26)` is not a notation defect caused by the low-flow coefficient.

## 5. What is removed from the CDR core and what remains in ancestry

At receiver time, every triad in \(\Gamma_{r,a}\) violates the static
minimum-leg floor of `(FIM.49)`.  Therefore the CDR symmetric core mask
removes its full six-assignment current before source-square Cauchy.  In
particular, the signed record consequence

\[
 \int_{I_n}\mathcal P_{1/2}^{\rm core}(t)\,dt
 \geq {A_n\over4}
 \tag{BER.28}
\]

contains no instantaneous band-edge triad from `(BER.6)`.  This is a real
clarification of the PLF boundary: the band-edge term is not a new unpaid
receiver-time component of the CDR core.

It may nevertheless occur earlier in the same parent's ancestry.  On a
source window \([\sigma,t]\), define, without changing the fluid history,

\[
\begin{aligned}
 V^0_{t,\sigma}
 &:=\mathscr U_{r,a}(t,\sigma)V(\sigma),\\
 V^{\rm hh}_{t,\sigma}
 &:=\int_\sigma^t\mathscr U_{r,a}(t,\tau)
       \mathcal F_{r,a}^{\rm hh}(\tau)\,d\tau,\\
 V^{\rm be}_{t,\sigma}
 &:=\int_\sigma^t\mathscr U_{r,a}(t,\tau)
       \mathcal C_{r,a}(\tau)\,d\tau.
\end{aligned}
 \tag{BER.29}
\]

Thus the actual field on this window is
\(V=V^0+V^{\rm hh}+V^{\rm be}\).  Put
\(W:=V^0+V^{\rm hh}\).  If the actual field is inserted into any later
frozen, pressure-complete bilinear core source
\(\mathcal Q^{\rm ch}\), bilinearity gives the exact joined expansion

\[
\begin{aligned}
 \mathcal Q^{\rm ch}
 [W+V^{\rm be},W+V^{\rm be}]
 ={}&\mathcal Q^{\rm ch}[W,W]\\
 &+\mathcal Q^{\rm ch}[W,V^{\rm be}]
 +\mathcal Q^{\rm ch}[V^{\rm be},W]\\
 &+\mathcal Q^{\rm ch}[V^{\rm be},V^{\rm be}].
\end{aligned}
 \tag{BER.30}
\]

The two mixed terms in `(BER.30)` each contain an inherited-endpoint piece
and a zero-initial high--high-source piece.  Hence the complete
band-edge-containing ancestry consists of five terms, not three.

For a later receiver interval \(I\), retain the same actual critical receiver
by writing

\[
 \mathfrak J_I[F]
 :=\int_I\operatorname{Re}
 \bigl(\Lambda^{-1/2}F(t),\Lambda^{3/2}u(t)\bigr)_2\,dt.
 \tag{BER.31}
\]

After that pairing, the precise band-edge-ancestry remainder is

\[
\boxed{
\begin{aligned}
 \mathfrak B_I^{\rm be}
 :={}&\mathfrak J_I\bigl[
 \mathcal Q^{\rm ch}[V^0,V^{\rm be}]
 +\mathcal Q^{\rm ch}[V^{\rm be},V^0]\\
 &\hspace{15mm}
 +\mathcal Q^{\rm ch}[V^{\rm hh},V^{\rm be}]
 +\mathcal Q^{\rm ch}[V^{\rm be},V^{\rm hh}]\\
 &\hspace{27mm}
 +\mathcal Q^{\rm ch}[V^{\rm be},V^{\rm be}]
 \bigr].
\end{aligned}}
 \tag{BER.32}
\]

FIM does not bound `(BER.32)`: the earlier commutator source is now paired,
through the propagator and another complete nonlinear interaction, with a
later receiver.  Equations `(BER.25)--(BER.26)` display the corresponding
receiver mismatch before the outer bilinear insertion.  Bounding
`(BER.32)` by the datum would be a new reconvergence theorem, not a reuse of
`(FIM.34)`.

## 6. No datum-finite contraction

Suppose, more strongly than anything proved here, that both survivors in
`(BER.26)` and the complete ancestry remainder `(BER.32)` vanished.  The
remaining source in `(BER.22)` would still be
\(\mathcal F_{r,a}^{\rm hh}\).  On the local dynamic-core branch one parent
may remain comparable to the output, and its source time may satisfy
\(t-\tau\downarrow0\).  Hence

\[
 e^{-(1-\varepsilon)\nu r^2(t-\tau)}\longrightarrow1,
 \tag{BER.33}
\]

and the critical bilinear heat scaling remains

\[
 r^{1/2}\|B_r(u_r,u_r)\|_2
 \lesssim {1\over\nu}
 \bigl(r^{1/2}\|u_r\|_2\bigr)^2,
 \tag{BER.34}
\]

with no decaying power of \(r\).  Thus the joined FIM payment removes the
artificial band-edge current from the receiver-time core, but it does not
produce a factor below one on the surviving recent local ancestry.

## 7. Exact verdict

The audit yields three exact statements:

\[
\boxed{
\begin{aligned}
 &\mathcal C_{r,a}
 \text{ is the two-assignment high-output fragment of the FIM exterior};\\
 &\mathfrak J_{r,a}^{\rm be}
 +\mathfrak J_{r,a}^{\rm ret}
 =\mathfrak J_{r,a}^{(6)}
 \text{ is paid, but }\mathfrak J_{r,a}^{\rm be}
 \text{ alone is not};\\
 &\text{projected ancestry retains `(BER.26)` and `(BER.32)`, while the}
 \text{ local recent branch has no uniform heat gain.}
\end{aligned}}
 \tag{BER.35}
\]

Accordingly this audit corrects the classification of the instantaneous
band-edge term without turning the projected propagator into a datum-finite
contraction.  The remaining theorem is still `(TIR.37a)`.  The result is a
same-critical boundary inside Thomas's method, not a strict reduction and
not MPP closure.
