# Thomas's full-signed-current adjacent-record endpoint propagation and zero-response countercalibration

**Date:** 2026-08-04

**Status:** exact noncanonical endpoint-propagation theorem and sharp scalar
countercalibration inside Thomas Birnie's one-fluid, pressure-explicit
binomial/VPI reversible-intersection method.  The theorem uses the canonical
last-half records in their actual order and the already proved full-current
identity

\[
 Q'=4\left({5Q^2\over16H}-\widehat{\mathcal C}\right).
 \tag{FEP.1}
\]

A right-record endpoint spike has only two exact continuations through the
next record: it loses half its height and forces positive full joined
turn-down action, or it remains positive and carries the same winding through
the intervening prefix levels in a quantitatively short time.  A left-record
spike has the same half-turn alternative or first propagates to the right
endpoint.

Canonical record topology does not force the second continuation to turn.
An explicit monotone scalar calibration satisfies the complete recombined
law `(FEP.1)`, the exact critical balance, every canonical adjacent-record
level relation, and the datum-form height-mass bound, while
\(\widehat{\mathcal C}=0\), every record takes the endpoint branch, and no
completed \(Q\)-pulse occurs.  This calibration is an insufficiency test for
those exact identities, not an admitted Navier--Stokes history and not a
counterexample to Thomas's theory.  It proves that converting all recurrent
endpoint spikes requires one further same-fluid fact excluding persistent
terminal winding; adjacency and `(FEP.1)` alone do not supply that fact.

No monotonicity is assumed in the endpoint theorem.  No terminal trace,
endpoint-spanning intersection, `(TIR.37a)`, alternate continuation
criterion, independently prescribed pressure part, or separated complement
is used.  The only endpoint continuity used is the preterminal local absolute
continuity of the already recombined scalar \(Q\), proved before `(FSQ.6)`.

## 1. The one history and its adjacent canonical records

Fix one smooth finite-energy datum \(u_0\), one viscosity \(\nu>0\), and its
one maximal preterminal Navier--Stokes history.  Retain

\[
 \mathscr W(t):=\int_0^t\mathcal P_{1/2}(r)\,dr,
 \qquad
 Q(t):=[\mathcal P_{1/2}(t)]_+,
 \qquad
 H(t):={1\over2}\|\Lambda^{1/2}u(t)\|_2^2.
 \tag{FEP.2}
\]

The full radial variance has already been refunded and every material-pair
orientation, both radial-current signs, pressure, viscosity, angular
response, and longitudinal response remain inside the one scalar
\(\widehat{\mathcal C}\) in `(FEP.1)`.

Assume the exact failure prefix used to define the canonical records.  With
\(A_{n+1}=4A_n\),

\[
 \begin{aligned}
 t_n&:=\inf\{t<T_*:\mathscr W(t)=A_n\},\\
 s_n&:=\sup\{t<t_n:\mathscr W(t)=A_n/2\},\\
 I_n&:=(s_n,t_n),\qquad \Delta_n:=t_n-s_n.
 \end{aligned}
 \tag{FEP.3}
\]

The actual order and levels across adjacent records are

\[
 t_n<s_{n+1}<t_{n+1},
 \qquad
 \mathscr W(t_n)=A_n,
 \quad
 \mathscr W(s_{n+1})=2A_n,
 \quad
 \mathscr W(t_{n+1})=4A_n.
 \tag{FEP.4}
\]

No sign or monotonicity of \(\mathcal P_{1/2}\) is asserted in either gap.
The order `(FEP.4)`, not a pasted interval or reselected fluid history, is
the only adjacent-record topology used below.

## 2. A right endpoint either turns down by half or traverses the next record

Let

\[
 M:=Q(t_n)>0.
 \tag{FEP.5}
\]

First suppose that \(Q\) reaches \(M/2\) before or at \(t_{n+1}\), and let

\[
 \rho_n:=\inf\{t\in(t_n,t_{n+1}]:Q(t)\le M/2\}.
 \tag{FEP.6}
\]

Preterminal continuity gives \(Q(\rho_n)=M/2\).  On
\([t_n,\rho_n]\), \(Q\ge M/2>0\), so the full signed current itself is
positive there:

\[
 \mathcal P_{1/2}=Q.
 \tag{FEP.7}
\]

Integrating the exact complete law `(FEP.1)` without taking an absolute
value gives

\[
 \boxed{
 \int_{t_n}^{\rho_n}\widehat{\mathcal C}(t)\,dt
 ={5\over16}\int_{t_n}^{\rho_n}{Q(t)^2\over H(t)}\,dt
 +{M\over8}
 \ge {M\over8}.}
 \tag{FEP.8}
\]

Here \(H>0\) wherever \(Q>0\), by the full-current weighted Cauchy
inequality `(FSQ.11)`.  Consequently

\[
 \int_{t_n}^{\rho_n}[\widehat{\mathcal C}(t)]_+\,dt
 \ge {M\over8}.
 \tag{FEP.9}
\]

This is a positive action of the already joined, variance-refunded,
all-complement response.  It is not a pressure sign and it does not assign
the action to a selected pair population.

Now suppose instead that no \(\rho_n\) in `(FEP.6)` exists.  Then
\(Q>M/2\) throughout \((t_n,t_{n+1}]\).  Equation `(FEP.7)` holds on the
whole adjacent span, so \(\mathscr W\) is strictly increasing there.  In
particular the first and last crossings of the intermediate level \(2A_n\)
coincide, and the canonical left endpoint \(s_{n+1}\) is that unique
crossing.  Moreover,

\[
 3A_n
 =\mathscr W(t_{n+1})-\mathscr W(t_n)
 =\int_{t_n}^{t_{n+1}}Q(t)\,dt
 >{M\over2}(t_{n+1}-t_n).
 \tag{FEP.10}
\]

Therefore the exact propagation alternative is

\[
 \boxed{
 t_{n+1}-t_n<{6A_n\over M},
 \qquad
 Q(s_{n+1})>{M\over2},
 \qquad
 Q(t_{n+1})>{M\over2}.}
 \tag{FEP.11}
\]

On the endpoint branch of `(FSQ.36)`, if the maximum is attained at
\(t_n\), then \(M\ge A_n/(4\Delta_n)\).  Thus `(FEP.11)` sharpens to

\[
 \boxed{t_{n+1}-t_n<24\Delta_n.}
 \tag{FEP.12}
\]

The constant-time compression in `(FEP.12)` is not a contradiction on a
finite terminal interval.  It says exactly that, absent the joined
turn-down action `(FEP.8)`, the same positive spring winding crosses the
bridge and the whole next canonical record without resetting.

## 3. A left endpoint first turns down or becomes a right endpoint

Let \(M:=Q(s_n)>0\).  If \(Q\) first reaches \(M/2\) at some
\(\sigma_n\le t_n\), the same calculation gives

\[
 \boxed{
 \int_{s_n}^{\sigma_n}\widehat{\mathcal C}(t)\,dt
 ={5\over16}\int_{s_n}^{\sigma_n}{Q(t)^2\over H(t)}\,dt
 +{M\over8}
 \ge {M\over8}.}
 \tag{FEP.13}
\]

If it does not, \(Q>M/2\) on \((s_n,t_n]\), whence

\[
 {A_n\over2}
 =\int_{s_n}^{t_n}Q(t)\,dt
 >{M\over2}\Delta_n,
 \tag{FEP.14}
\]

and therefore

\[
 \boxed{
 \Delta_n<{A_n\over M},
 \qquad Q(t_n)>{M\over2}.}
 \tag{FEP.15}
\]

Put \(M_1:=Q(t_n)>M/2\).  The left spike has become a right spike of the
same record without any change of fluid or response decomposition, so
Section 2 applies from \(t_n\) with height \(M_1\).  Consequently either

\[
 \boxed{
 \int_{t_n}^{\rho_n}\widehat{\mathcal C}(t)\,dt
 \ge {M_1\over8}>{M\over16},}
 \tag{FEP.15a}
\]

where \(\rho_n\) is the first time the propagated right-endpoint height
reaches \(M_1/2\), or

\[
 \boxed{
 t_{n+1}-t_n<{6A_n\over M_1}<{12A_n\over M},
 \qquad
 Q(s_{n+1}),Q(t_{n+1})>{M_1\over2}>{M\over4}.}
 \tag{FEP.15b}
\]

If the endpoint alternative `(FSQ.17)` is attained at the left endpoint,
then \(M\ge A_n/(4\Delta_n)\).  The two continuations sharpen respectively
to

\[
 \boxed{
 \int_{t_n}^{\rho_n}\widehat{\mathcal C}(t)\,dt
 >{A_n\over64\Delta_n}}
 \tag{FEP.15c}
\]

or

\[
 \boxed{t_{n+1}-t_n<48\Delta_n.}
 \tag{FEP.15d}
\]

Thus both sides of the endpoint maximum in `(FSQ.36)` have the same exact
continuation: joined half-turn action, or persistent positive prefix
traversal.  The smaller constants in `(FEP.15a)--(FEP.15d)` record the one
possible left-to-right propagation before the Section 2 alternative is
applied; no factor is silently identified with the original left height.

## 4. When an endpoint really does become a completed pulse

Adjacency converts a spike into a completed pulse only when the same current
is actually bracketed at a lower level.  Precisely, let \(e\) be the spike
time and suppose \(a<e<b<T_*\), \(Q(a)=Q(b)=\lambda>0\), and
\(Q>\lambda\) on \((a,b)\).  Then `[a,b]` is a completed full-current
pulse and `(FEP.1)` gives the exact cancellation of its endpoint term:

\[
 \boxed{
 \int_a^b\widehat{\mathcal C}(t)\,dt
 ={5\over16}\int_a^b{Q(t)^2\over H(t)}\,dt.}
 \tag{FEP.16}
\]

For example, if a record endpoint of height \(M\) is bracketed on both
sides by values at most \(\theta M\), \(0<\theta<1\), continuity supplies
first and last crossings at level \(\theta M\) and hence `(FEP.16)`.
Canonical prefix levels constrain \(\mathscr W\), however, not values of
\(Q=\mathscr W'_+\).  They supply no such lower brackets.  Treating the
prefix crossings in `(FEP.4)` as current-height crossings would add exactly
the missing assertion.

## 5. Sharp zero-response calibration on all adjacent records

The persistent alternative is not merely a logical wording gap.  The exact
scalar identities used above admit it sharply.  On \(0\le t<1\), set

\[
 \nu=1,
 \qquad H(t)=1,
 \qquad
 Q(t)=\mathcal P_{1/2}(t)={4\over5(1-t)},
 \qquad
 \widehat{\mathcal C}(t)=0,
 \tag{FEP.17}
\]

and

\[
 \mathscr W(t):=\int_0^tQ(r)\,dr
 =-{4\over5}\log(1-t).
 \tag{FEP.18}
\]

Then

\[
 Q'(t)={4\over5(1-t)^2}
 =4\,{5Q(t)^2\over16H(t)},
 \tag{FEP.19}
\]

so the complete recombined law `(FEP.1)` holds exactly with zero net joined
response.  Nothing has been removed from a constituent pressure or
complement in this countertest: \(\widehat{\mathcal C}\) is calibrated only
after the full recombination and variance refund.  Accordingly `(FEP.17)`
does not claim a pressure-free fluid or a same-field realization.

The exact critical balance is also retained at the scalar level.  Set
\(D(t):=Q(t)\).  Since \(H(t)=H(0)\),

\[
 \mathscr W(t)=H(t)-H(0)+\nu\int_0^tD(r)\,dr.
 \tag{FEP.20}
\]

For every interval \(J\subset(0,1)\),

\[
 B(J):=\int_JH(t)\,dt=|J|\le\sqrt{|J|}.
 \tag{FEP.21}
\]

Thus `(FEP.21)` has the exact datum-bound form `(FSQ.21)` after choosing
\(\|u_0\|_2^2/\sqrt{8\nu}\ge1\).  In particular, even the already paid
height mass does not contradict this persistent winding schedule.

For an arbitrary \(A_n=4^nA_0\), the unique crossing time of level \(L\)
is

\[
 T(L)=1-e^{-5L/4}.
 \tag{FEP.22}
\]

Hence

\[
 \begin{aligned}
 t_n&=T(A_n),&s_n&=T(A_n/2),\\
 t_{n-1}&=T(A_n/4)<s_n<t_n,
 &s_{n+1}&=T(2A_n)<t_{n+1}=T(4A_n).
 \end{aligned}
 \tag{FEP.23}
\]

All canonical record and adjacent-record levels occur in the correct order
on this one scalar history.  Put \(x_n:=e^{-5A_n/8}\).  Then

\[
 \Delta_n=x_n-x_n^2,
 \qquad
 Q(t_n)={4\over5x_n^2},
 \tag{FEP.24}
\]

and the normalized endpoint term obeys

\[
 \boxed{
 {\Delta_n\over A_n}Q(t_n)
 ={4\over5A_n}\left(e^{5A_n/8}-1\right)
 \ge {1\over2}>{1\over4}.}
 \tag{FEP.25}
\]

The inequality uses only \(e^y-1\ge y\).  Since \(Q\) is strictly
increasing, \(Q(t_n)\) is the maximum endpoint on every \(I_n\), the set
\(\{t\in I_n:Q(t)>Q(t_n)\}\) is empty, and no completed pulse of the form
`(FSQ.18)--(FSQ.20)` exists.  At the same time

\[
 \int_{I_n}[\widehat{\mathcal C}(t)]_+\,dt=0.
 \tag{FEP.26}
\]

Thus every `(FSQ.36)` alternative is discharged by its endpoint term alone,
on every adjacent canonical record, while the response term is identically
zero.

This construction supplies only the four scalar functions in
`(FEP.17)--(FEP.18)`.  It supplies no velocity field, pressure, material
flow, primitive pair population, or pressure-explicit binomial tower.
Therefore it is neither a Navier--Stokes history nor an obstruction to
Thomas's theory.  Its exact and only force is an implication-level
insufficiency result: the recombined scalar law, critical balance,
height-mass form, and canonical record topology do not by themselves imply
that persistent endpoint winding turns down.

## 6. Exact theorem and boundary

What is proved is:

1. an actual right endpoint that turns down by half before the next record
   endpoint forces the exact positive full joined action `(FEP.8)`;
2. without that turn-down, the same positive current makes the entire
   adjacent prefix ascent, identifies the intermediate canonical crossing,
   and obeys the propagation bounds `(FEP.11)--(FEP.12)`;
3. a left endpoint obeys the same action alternative or propagates first to
   the right endpoint, with the inherited constants recorded in
   `(FEP.13)--(FEP.15d)`;
4. genuine lower bracketing converts an endpoint into the completed pulse
   `(FEP.16)`; and
5. `(FEP.17)--(FEP.26)` prove that canonical adjacency, the exact critical
   balance, the datum-form height budget, and the full signed-current law do
   not themselves provide that bracketing or a datum-paid contradiction.

The calibration is not an admitted Navier--Stokes history, so it does not
prove that the actual fluid realizes persistent zero-response winding.  It
does prove that a purported endpoint elimination derived only from the
listed scalar identities would be invalid.  The unpaid in-method statement
is therefore not endpoint regularity.  It is a same-fluid theorem forcing
either a lower bracket/turn-down of recurrent full-current spikes or a
datum-finite bound on their already recombined positive response.  Until
that additional physical consequence is derived from the pressure-explicit
binomial/VPI law, the endpoint branch of `(FSQ.36)`, `(TIR.37a)`, the
endpoint-spanning intersection, and MPP closure remain unproved.
