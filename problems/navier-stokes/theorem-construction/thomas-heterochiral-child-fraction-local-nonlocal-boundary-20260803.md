# Thomas's heterochiral child fraction: local contraction and nonlocal boundary

Status: proved exact within-triad fraction law and full-field local/nonlocal
nonuniformity inside Thomas Birnie's one-fluid, pressure-explicit binomial/VPI
reversible-intersection method.  The calculation starts from the fully
symmetrized signed current in
`thomas-signed-first-cutoff-moment-three-leg-triad-boundary-20260803.md`.
It does not introduce positive input colouring or treat one triad as an
independent fluid event.

The result is two-sided.  Every positive heterochiral critical transfer sends
strictly less than one half of its single donor's kinetic-energy loss into the
unique-helicity leg, and scale-local geometry makes that gap uniform.  But the
sharp gap tends to zero in the high--high--low limit.  After the nonlocal
triads are recombined through incompressibility, their radial null gives a
small scale-ratio factor, but its coefficient is the open critical height.
Choosing the split adaptively to absorb that coefficient makes the local
one-half gap tend to zero at exactly the dangerous rate.  Thus no genuine
datum-paid contraction toward `(TIR.37a)` follows from this geometry alone.

The formulas below are the present rigorous development of Thomas's supplied
method; they are not attributed to him as verbatim historical equations.

## 1. Exact positive-transfer fractions on one signed triad

Let the three side lengths of a nondegenerate Fourier triangle be

\[
 0<a\le b\le c<a+b.
 \tag{HCF.1}
\]

For a helical subtriad, write \(s_i\in\{+1,-1\}\), \(h_i=s_ir_i\), and
use the exact pressure-complete transfer vector

\[
 (T_a,T_b,T_c)
 =\gamma(h_c-h_b,\ h_a-h_c,\ h_b-h_a).
 \tag{HCF.2}
\]

It obeys

\[
 T_a+T_b+T_c=0,
 \qquad
 h_aT_a+h_bT_b+h_cT_c=0.
 \tag{HCF.3}
\]

Suppose the unique-helicity leg \(o\) has positive transfer \(T_o>0\).
Then exactly one of the other two legs is a donor and the remaining leg gains
alongside \(o\).  Put \(g=|\gamma|\).  The three cases are

\[
\begin{array}{c|c|c|c|c}
o&\text{donor loss}&\text{unique gain}&\text{other gain}
 &\theta_o:={T_o\over\text{donor loss}}\\ \hline
a&(a+c)g&(c-b)g&(a+b)g&{c-b\over a+c}\\[1mm]
b&(b+c)g&(c-a)g&(a+b)g&{c-a\over b+c}\\[1mm]
c&(b+c)g&(b-a)g&(a+c)g&{b-a\over b+c}.
\end{array}
 \tag{HCF.4}
\]

Every row of `(HCF.4)` conserves kinetic energy exactly: the two gains add to
the one donor loss.  The triangle inequality gives

\[
 \boxed{0\le\theta_o<\frac12.}
 \tag{HCF.5}
\]

This is a fraction of a signed triad's instantaneous kinetic-energy transfer,
not a fraction of a mode's total evolution.  The common phase-geometric factor
\(g\) cancels from the fraction; it controls the clock, not the share.

The critical first moment values the receiver and donor at different radii.
If \(d(o)\) is the single donor in `(HCF.4)`, define the diagnostic critical
ratio

\[
 \vartheta_o
 :={r_oT_o\over r_{d(o)}|T_{d(o)}|}.
 \tag{HCF.5a}
\]

The exact values are

\[
 \boxed{
 \vartheta_a={a(c-b)\over b(a+c)},
 \qquad
 \vartheta_b={b(c-a)\over a(b+c)},
 \qquad
 \vartheta_c={c(b-a)\over a(b+c)}.}
 \tag{HCF.5b}
\]

Unlike the kinetic fractions, `(HCF.5b)` is not universally below one half.
It is not itself a conserved critical currency—the third leg also contributes
to the critical current—but it is the exact test of whether the donor's
critical valuation can pay the unique receiver directly.

## 2. Sharp uniform fraction on scale-local triangles

Fix \(0<\eta<1\) and call the triangle scale-local when

\[
 {a\over c}\ge\eta.
 \tag{HCF.6}
\]

Put \(x=a/c\) and \(y=b/c\).  Then

\[
 0<x\le y\le1,
 \qquad x+y>1,
 \tag{HCF.7}
\]

and the three fractions become

\[
 \theta_a={1-y\over1+x},
 \qquad
 \theta_b={1-x\over1+y},
 \qquad
 \theta_c={y-x\over1+y}.
 \tag{HCF.8}
\]

Direct optimization on `(HCF.7)` gives the sharp local supremum

\[
 \boxed{
 \theta_o\le\Theta(\eta):=
 \begin{cases}
 {1-\eta\over2-\eta},&0<\eta\le\frac12,\\[2mm]
 {1-\eta\over1+\eta},&\frac12\le\eta<1,
 \end{cases}
 \qquad
 \Theta(\eta)<\frac12.}
 \tag{HCF.9}
\]

For \(0<\eta\le1/2\), the supremum is approached with \(o=b\),
\(a/c=\eta\), and \(b/c\downarrow1-\eta\), the degenerate triangle boundary.
For \(\eta\ge1/2\), it is attained in the equal-low-side boundary
\(a=b=\eta c\) for the \(o=a\) or \(o=b\) family.  Thus `(HCF.9)` is the
best geometry-only one-child fraction.

For the critically valued ratios in `(HCF.5b)`, the sharp local supremum is
instead

\[
 \boxed{
 \vartheta_o\le\Upsilon(\eta):={1-\eta\over2\eta}.}
 \tag{HCF.9a}
\]

It follows that a geometry-only critical half barrier exists precisely for a
narrow local band:

\[
 \boxed{
 \Upsilon(\eta)<\frac12
 \quad\Longleftrightarrow\quad
 \eta>\frac12.}
 \tag{HCF.9b}
\]

At the dyadic boundary \(a/c=1/2\) the best ratio is exactly one half.  For
broader local conventions it can exceed one half even though the underlying
kinetic fraction remains below one half.

## 3. High--high--low degeneration

On a high--high--low triangle let

\[
 \varepsilon:={a\over c}\downarrow0.
 \tag{HCF.10}
\]

The triangle inequality forces \(b/c\to1\).  If the unique-helicity leg is one
of the two high legs, `(HCF.8)` gives

\[
 \boxed{
 \theta_b\longrightarrow\frac12,
 \qquad
 \theta_c\longrightarrow\frac12.}
 \tag{HCF.11}
\]

The corresponding critically valued ratios are much worse:

\[
 \boxed{
 \vartheta_b\sim{1\over2\varepsilon},
 \qquad
 \vartheta_c\sim{1\over2\varepsilon}.}
 \tag{HCF.11a}
\]

Thus a low-frequency kinetic donor can feed a high unique-helicity receiver
with an arbitrarily large critical valuation.  The incompressible geometric
null must control the recombined rate; a donor-stock fraction cannot.

If the low leg is unique, then

\[
 0\le\theta_a<{a\over a+c}\longrightarrow0,
 \tag{HCF.12}
\]

while the other high leg receives asymptotically all of the donor transfer.
The critical work remains small in that last case because the two high radii
differ by at most \(a\).

Equation `(HCF.11)` proves that there is no universal
\(\theta_o\le1/2-\delta\) with \(\delta>0\) over all heterochiral triangles.
The vanishing coupling of a skinny triangle only slows its interaction clock;
it does not improve the transfer fraction.  Increasing the same triad's
amplitude can make the nonlinear clock arbitrarily faster than its viscous
clock, so viscosity supplies no geometry-only replacement for \(\delta\).
That amplitude comparison is an exact varying-data insufficiency test, not a
same-history Navier--Stokes counterexample.

## 4. Full-field recombination of the nonlocal branch

The radial-gap and incompressibility nulls do improve the full signed
high--high--low current.  Let \(\Delta_j\) be a smooth finite-overlap
Littlewood--Paley decomposition, write \(u_j=\Delta_ju\), and let

\[
 R:=\|\Lambda^{1/2}u\|_2^2,
 \qquad
 D:=\|\Lambda^{3/2}u\|_2^2.
 \tag{HCF.13}
\]

Take \(\eta=2^{-M}\) and define \(\mathcal P_{1/2}^{\rm nl}(\eta)\) by
recombining every pressure-complete triad for which the smallest active
frequency is at most \(\eta\) times the largest.  No positive part is taken.

For low--high output at frequency \(2^j\), the leading transport term cancels
by incompressibility.  The commutator leaves one low derivative and one high
critical multiplier.  For high--high output at the low frequency, move the
transport derivative onto the low critical test.  The resulting joined bound
is

\[
\begin{aligned}
 |\mathcal P_{1/2}^{\rm nl}(\eta)|
 \le{}&C\sum_j2^j\|u_j\|_2^2
       \sum_{\ell\le j-M}2^{5\ell/2}\|u_\ell\|_2\\
 &+C\sum_j\|u_j\|_2\|u_{j+O(1)}\|_2
       \sum_{\ell\le j-M}2^{7\ell/2}\|u_\ell\|_2.
 \tag{HCF.14}
\end{aligned}
\]

The two exact dyadic Cauchy bounds are

\[
 \sum_{\ell\le j-M}2^{5\ell/2}\|u_\ell\|_2
 \le C\eta^2 2^{2j}R^{1/2},
 \tag{HCF.15}
\]

and

\[
 \sum_{\ell\le j-M}2^{7\ell/2}\|u_\ell\|_2
 \le C\eta^3 2^{3j}R^{1/2}.
 \tag{HCF.16}
\]

Finite overlap in the high indices then gives

\[
 \boxed{
 |\mathcal P_{1/2}^{\rm nl}(\eta)|
 \le C_{\rm LP}\eta^2 R^{1/2}D.}
 \tag{HCF.17}
\]

Equation `(HCF.17)` is the exact gain supplied by incompressibility and the
radial-gap null at this interface.  It is not datum-paid: \(R^{1/2}\) is the
critical height being bounded and \(D\) is its viscous action.  Integrating
the absolute bound requires the unavailable quantity

\[
 \int_0^{T_*}R(t)^{1/2}D(t)\,dt.
 \tag{HCF.18}
\]

Energy pays neither `(HCF.18)` nor a uniform bound for its coefficient.
Further cancellation inside the signed time integral remains possible, but
`(HCF.17)` alone has returned the open first-prefix interface.

## 5. The local/nonlocal tradeoff has no uniform setting

To absorb `(HCF.17)` into half of the critical viscous row one needs

\[
 C_{\rm LP}\eta^2R^{1/2}\le{\nu\over2}.
 \tag{HCF.19}
\]

On a branch where \(R\to\infty\), this forces

\[
 \eta\lesssim\nu^{1/2}R^{-1/4}.
 \tag{HCF.20}
\]

But for \(\eta\le1/2\), the sharp local fraction gap from `(HCF.9)` is

\[
 \boxed{
 {1\over2}-\Theta(\eta)
 ={\eta\over2(2-\eta)}
 \sim{\eta\over4}.}
 \tag{HCF.21}
\]

Thus the adaptive split needed to absorb the nonlocal branch makes the best
local one-child gap decay like

\[
 O(\nu^{1/2}R^{-1/4})\longrightarrow0.
 \tag{HCF.22}
\]

At critical valuation the same tradeoff is stronger.  Equations `(HCF.9a)`
and `(HCF.20)` give

\[
 \Upsilon(\eta)
 ={1-\eta\over2\eta}
 \gtrsim \nu^{-1/2}R^{1/4}
 \tag{HCF.22a}
\]

on the large-\(R\) adaptive branch.  The split that makes the nonlocal null
absorbable therefore leaves no local critical donor contraction at all.

Conversely, fixing \(\eta>0\) preserves a uniform local gap but leaves the
unbounded coefficient \(C_{\rm LP}\eta^2R^{1/2}\) in the nonlocal branch.
There is no scale split for which both mechanisms are uniform on the dangerous
critical-height branch.

## 6. Why the local fraction is not yet a full-field contraction

Even at fixed local \(\eta\), `(HCF.9)` is a per-triad ratio, not an additive
payment.  The exact modal row is

\[
 {d\over dt}e_s(k)
 +2\nu|k|^2e_s(k)
 =\sum_{\tau\ni(k,s)}T_{\tau,k}.
 \tag{HCF.23}
\]

The same mode can be the donor in one incident triad, the unique-helicity
receiver in another, and the paired-helicity receiver in a third at the same
time.  Only the signed sum in `(HCF.23)` is a field evolution.  Assigning each
positive child its own copy of a donor loss, or its own copy of the viscous
term, overcounts the one mode.  Phases of different incident parent pairs can
reinforce or cancel in the same output line, so taking the positive part before
the sum destroys the pressure-complete current.

Therefore a genuine contraction still requires a mode-consistent,
time-oriented theorem for the recombined incident current.  The exact
fraction law does not provide ownership, no-recount, or destructive phase
incidence by itself.

## 7. Exact verdict for `(TIR.37a)`

The strict local fraction and the nonlocal null are real pieces of Thomas's
physical turn-down mechanism:

\[
 \text{local unique-child kinetic share}<\frac12,
 \qquad
 |\mathcal P_{1/2}^{\rm nl}|
 \lesssim\eta^2R^{1/2}D.
 \tag{HCF.24}
\]

They do not combine into a datum-uniform contraction.  The high--high--low
boundary makes the kinetic fraction approach one half and the critically
valued ratio diverge; adaptive nonlocal absorption drives the local gap to
zero, simultaneous incidence prevents
triad-local fractions from being summed as modewise storage, and viscosity
belongs once to the full modal row.  The remaining theorem is still a signed
full-history cancellation among all incident pressure-coupled triads.  No
bound for `(TIR.37a)` or global-regularity conclusion is proved here.
