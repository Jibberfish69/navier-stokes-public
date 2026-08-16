# Thomas's signed double-recent core join to the imbalance collar and complete finite chord

**Date:** 2026-08-04

**Status:** noncanonical exact same-record localization inside Thomas
Birnie's one-fluid, pressure-explicit binomial/VPI reversible-intersection
method.

The dynamic-core double-recent-parent construction can be carried out before
source-square Cauchy. A fixed fraction of every sufficiently large failed
record then remains a signed double-recent current. Joining that current to
the fixed radial all-field identity gives one quantified alternative: either
the same record carries a large one-contraction/two-expansion imbalance collar,
or it carries a large complete finite-chord/pressure-heat defect.

The complete symmetric core mask, all three output choices, both orders of
the two physical input parents, and the output Leray/pressure completion are
retained. Pressure is never assigned a regional sign or separated from the
source. The result is a same-critical localization, not a proof of
(TIR.37a) and not MPP closure.

The physical order remains Thomas's order: one continuing fixed-viscosity
fluid, the pulse or spring winding, the imbalanced stretched vortex, the
perfectly balanced rip-cord, and only then the primitive pressure-explicit
binomial/VPI rows and their simultaneous intersected readings. The balanced
rip-cord is not discharged by assuming wobble. Its fully recombined first
spatial jet is favorable; the calculation below identifies where a positive
double-recent record must go after that fact is retained.

## 1. Keep the canonical record signed through the high-output cut

Use the canonical records and constants from (CDR.1)--(CDR.10):

\[
I_n=(s_n,t_n),\qquad
A_n=4^nA_0,\qquad
\Delta_n=t_n-s_n,
\tag{DRF.1}
\]

\[
\int_{I_n}\mathcal P_{1/2}^{\rm core}(t)\,dt
\geq \frac{A_n}{4},
\qquad
\int_{I_n}\|\Lambda^{3/2}u(t)\|_2^2\,dt
\leq \frac{A_n+H_0}{\nu}.
\tag{DRF.2}
\]

For sufficiently large \(n\), \(A_n\geq H_0\), so

\[
\boxed{
\int_{I_n}\|\Lambda^{3/2}u(t)\|_2^2\,dt
\leq \frac{2A_n}{\nu}.}
\tag{DRF.3}
\]

Let \(Q_{\rm core}\) be (CDR.13), formed with the complete symmetric FIM
mask. For any source field \(F(t)\), write its signed pairing with the actual
record receiver as

\[
\mathfrak J_n[F]
:=\int_{I_n}\operatorname{Re}
\bigl(\Lambda^{-1/2}F(t),\Lambda^{3/2}u(t)\bigr)_2\,dt.
\tag{DRF.4}
\]

The low-output estimate (CDR.19) is

\[
\|\Lambda^{-1/2}P_{<K}Q_{\rm core}(t)\|_2^2
\leq C_LU_0^4K^4,
\qquad
U_0=\|u_0\|_2.
\tag{DRF.5}
\]

Choose

\[
\boxed{
K_n^4=
\frac{\nu A_n}
{512C_LU_0^4\Delta_n}.}
\tag{DRF.6}
\]

Since \(\Delta_n\leq T_*\), \(K_n\to\infty\). Equations
(DRF.3)--(DRF.6) give

\[
\begin{aligned}
\int_{I_n}
\|\Lambda^{-1/2}P_{<K_n}Q_{\rm core}\|_2^2\,dt
&\leq \frac{\nu A_n}{512},\\
\left|\mathfrak J_n[P_{<K_n}Q_{\rm core}]\right|
&\leq
\left(\frac{\nu A_n}{512}\frac{2A_n}{\nu}\right)^{1/2}
=\frac{A_n}{16}.
\end{aligned}
\tag{DRF.7}
\]

Therefore the signed high-output current, not merely its source square,
satisfies

\[
\boxed{
\mathfrak J_n[P_{\geq K_n}Q_{\rm core}]
\geq \frac{3A_n}{16}.}
\tag{DRF.8}
\]

No triad assignment has been made positive. The receiver-time mask remains
the same symmetric mask for all three possible output legs and both orders of
the remaining two physical inputs. The Leray projection is still applied
only after each ordered parent pair is joined.

## 2. Remove datum heat and old-containing parents in signed pairing

Use the exact mild split

\[
u=h_0+w,\qquad
h_0(t)=e^{-\nu t\Lambda^2}u_0,
\tag{DRF.9}
\]

and freeze the full-field core mask before inserting \(h_0\) and \(w\), as
in (CDR.25)--(CDR.34). Let

\[
\varepsilon_n^2
:=\int_{I_n}
\|\Lambda^{-1/2}\mathcal Q_n^{\rm ic}(t)\|_2^2\,dt.
\tag{DRF.10}
\]

The datum-heat estimate (CDR.29)--(CDR.31) gives

\[
\varepsilon_n\longrightarrow0.
\tag{DRF.11}
\]

Pairing with the same receiver and using (DRF.3) yields

\[
\left|\mathfrak J_n[\mathcal Q_n^{\rm ic}]\right|
\leq
\varepsilon_n\left(\frac{2A_n}{\nu}\right)^{1/2}
=o(A_n).
\tag{DRF.12}
\]

No hidden rate is needed: after division by \(A_n\), the right side is
\(\varepsilon_n\sqrt{2/(\nu A_n)}\to0\). Hence, eventually,

\[
\left|\mathfrak J_n[\mathcal Q_n^{\rm ic}]\right|
\leq \frac{A_n}{16}.
\tag{DRF.13}
\]

The static FIM floor applies to the minimum of all three geometric legs.
With

\[
\boxed{
r_n=c_{\rm st}
\left(\frac{\nu}{U_0}\right)^{2/5}K_n^{4/5},}
\tag{DRF.14}
\]

every ordered physical input pair beneath the high output in (DRF.8) obeys

\[
|p|\geq r_n,\qquad |q|\geq r_n.
\tag{DRF.15}
\]

Thus, for \(v_n=P_{\geq r_n}w\), equations (DRF.8) and (DRF.13)
give

\[
\boxed{
\mathfrak J_n[
\mathcal Q_n^{\rm ch}[v_n,v_n]]
\geq \frac{A_n}{8}.}
\tag{DRF.16}
\]

Split both copies of the same \(v_n\) at one heat lag:

\[
v_n=v_{n,\tau}^{\rm old}+v_{n,\tau}^{\rm rec}.
\tag{DRF.17}
\]

Let

\[
\mathcal R_{n,\tau}^{\rm old}
:=
\mathcal Q_n^{\rm ch}[v_n,v_n]
-
\mathcal Q_n^{\rm ch}
[v_{n,\tau}^{\rm rec},v_{n,\tau}^{\rm rec}].
\tag{DRF.18}
\]

The estimate (CDR.40)--(CDR.48) permits an arbitrary fixed target
\(\eta>0\). Choose

\[
\tau_n=
\frac{1+\log\!\left(1+F_n/(\eta\nu A_n)\right)}
{2\nu r_n^2},
\tag{DRF.19}
\]

where

\[
F_n=C_{\rm old}(D_ne_n+D_n^2\Delta_n),\qquad
D_n=4U_0^2r_n^2,\qquad
e_n=\int_{I_n}\|\Lambda v_n\|_2^2\,dt.
\tag{DRF.20}
\]

Then

\[
\tau_n
\leq
\frac{C(1+\log K_n)}{\nu K_n^{8/5}}
\longrightarrow0
\tag{DRF.21}
\]

and

\[
\int_{I_n}
\|\Lambda^{-1/2}\mathcal R_{n,\tau_n}^{\rm old}\|_2^2\,dt
\leq \eta\nu A_n.
\tag{DRF.22}
\]

Set

\[
\eta=\frac1{512}.
\tag{DRF.23}
\]

Pairing (DRF.22) with the same unsplit receiver costs

\[
\left|\mathfrak J_n[
\mathcal R_{n,\tau_n}^{\rm old}]\right|
\leq
\sqrt{2\eta}\,A_n
=\frac{A_n}{16}.
\tag{DRF.24}
\]

Consequently

\[
\boxed{
\mathfrak J_n^{\rm rr}
:=
\mathfrak J_n\!\left[
\mathcal Q_n^{\rm ch}
[v_{n,\tau_n}^{\rm rec},v_{n,\tau_n}^{\rm rec}]
\right]
\geq \frac{A_n}{16}.}
\tag{DRF.25}
\]

Write its instantaneous integrand as

\[
\begin{aligned}
J_n^{\rm rr}(t)
:={}&
\operatorname{Re}\Bigl(
\Lambda^{-1/2}\mathcal Q_n^{\rm ch}
[v_{n,\tau_n}^{\rm rec},v_{n,\tau_n}^{\rm rec}](t),
\Lambda^{3/2}u(t)\Bigr)_2,\\
\mathfrak J_n^{\rm rr}
={}&\int_{I_n}J_n^{\rm rr}(t)\,dt.
\end{aligned}
\tag{DRF.26}
\]

Every source in (DRF.25) is the complete pressure source from the last
\(\tau_n\) units of the same history. Every retained output is above \(K_n\),
both physical parents are above \(r_n\), and the frozen symmetric mask keeps
the six output/input assignments before the removed currents are rejoined as
signed errors.

Split \(I_n\) into the edge and interior pieces from (CDR.60). At least one
\(\sigma_n\in\{\mathrm{edge},\mathrm{int}\}\) satisfies

\[
\int_{I_n^{\sigma_n}}J_n^{\rm rr}(t)\,dt
\geq \frac{A_n}{32}.
\tag{DRF.27}
\]

Only on the interior piece are both source times themselves in \(I_n\). The
edge piece may inherit source times before \(s_n\); no false same-record
source count is made there.

## 3. Join to the fixed-selector balanced/imbalanced normal form

Fix the time-independent radial selector from (FRS.5) and put

\[
\ell_0=\int_0^\infty\zeta(r)\,dr,\qquad
c_\zeta=\frac{64\ell_0}{15\pi}.
\tag{DRF.28}
\]

For the ordered strain eigenvalues

\[
(-a-d,-a+d,2a),\qquad
a\geq0,\qquad 0\leq d\leq3a,
\tag{DRF.29}
\]

define

\[
\mathfrak q(x,t):=a(d^2-a^2),\qquad
\mathscr Q(t):=\int\mathfrak q(x,t)\,dx.
\tag{DRF.30}
\]

The complete fixed-selector identity (FRS.12) is

\[
\boxed{
\mathcal P_{1/2}(t)
=c_\zeta\mathscr Q(t)
+\mathcal E_\zeta(u(t)).}
\tag{DRF.31}
\]

Perfect balance is \(d=0\), and the entire two-contraction region
\(d\leq a\) has \(\mathfrak q\leq0\). Only

\[
d>a
\quad\Longleftrightarrow\quad
(\lambda_1,\lambda_2,\lambda_3)=(-c,b,e),
\qquad c=b+e,
\tag{DRF.32}
\]

has one contraction, two expansions, and \(\mathfrak q>0\).

Let \(J_n^{\rm lo}(t)\), \(J_n^{\rm ic}(t)\), and
\(J_n^{\rm old}(t)\) be the instantaneous signed receiver pairings whose
record integrals were estimated in (DRF.7), (DRF.13), and (DRF.24).
The exact source reconstruction is

\[
\mathcal P_{1/2}
=J_n^{\rm rr}
+J_n^{\rm old}
+J_n^{\rm ic}
+J_n^{\rm lo}
+\mathcal P_{1/2}^{\rm ext}
+\mathcal P_{1/2}^{\rm bd}
\qquad\text{on }I_n.
\tag{DRF.33}
\]

All terms in (DRF.33) retain their Leray/pressure completion. Define the
complete double-recent finite-chord/pressure-heat defect

\[
\boxed{
\begin{aligned}
\mathcal D_{\zeta,n}^{\rm rr}
:={}&
\mathcal E_\zeta
-J_n^{\rm old}
-J_n^{\rm ic}
-J_n^{\rm lo}\\
&-\mathcal P_{1/2}^{\rm ext}
-\mathcal P_{1/2}^{\rm bd}.
\end{aligned}}
\tag{DRF.34}
\]

Combining (DRF.31)--(DRF.34) gives the pointwise signed join

\[
\boxed{
J_n^{\rm rr}(t)
=c_\zeta\mathscr Q(t)
+\mathcal D_{\zeta,n}^{\rm rr}(t).}
\tag{DRF.35}
\]

No pressure piece has been extracted from
\(\mathcal D_{\zeta,n}^{\rm rr}\). It contains the complete finite chords,
the dynamic-core complement, the bounded output collar, datum heat ancestry,
and every old-containing pressure-complete parent in the signed combination
needed to reconstruct the full field.

Put

\[
\mathscr Q_+(t):=\int[\mathfrak q(x,t)]_+\,dx.
\tag{DRF.36}
\]

The complementary balanced part is nonpositive. Therefore (DRF.25) and
(DRF.35) imply

\[
c_\zeta\int_{I_n}\mathscr Q_+(t)\,dt
+\int_{I_n}\mathcal D_{\zeta,n}^{\rm rr}(t)\,dt
\geq \frac{A_n}{16}.
\tag{DRF.37}
\]

Every sufficiently large failed record consequently obeys

\[
\boxed{
\begin{aligned}
&c_\zeta\int_{I_n}\mathscr Q_+(t)\,dt
\geq \frac{A_n}{32},
\\[-1mm]
&\hspace{28mm}\text{or}
\\[-1mm]
&\int_{I_n}\mathcal D_{\zeta,n}^{\rm rr}(t)\,dt
\geq \frac{A_n}{32}.
\end{aligned}}
\tag{DRF.38}
\]

This is co-occurrence with the signed double-recent current, not ownership by
one triad assignment. The first line is the imbalanced
one-contraction/two-expansion face. Perfect balance and every \(d\leq a\)
configuration have already contributed with the favorable sign. The second
line is the complete residual required when the positive current is not
carried by that imbalance face.

## 4. The imbalance face includes its exact interface collar

The positive strain-shape face cannot be detached from its spatial interface.
Let \(\theta_\varepsilon\) be a smooth approximation to
\(\mathbf 1_{\{\mathfrak q>0\}}\). The weighted Betchov identity (SSR.30)
is

\[
\boxed{
\begin{aligned}
\int\theta_\varepsilon(\mathfrak q)\mathfrak q\,dx
={}&
\frac18\int\theta_\varepsilon(\mathfrak q)
\omega\cdot S\omega\,dx\\
&+\frac16\int
\nabla\theta_\varepsilon(\mathfrak q)\cdot
(\operatorname{cof}\nabla u)^Tu\,dx.
\end{aligned}}
\tag{DRF.39}
\]

The second line is the exact imbalance-interface cofactor collar. On every
preterminal compact interval, smoothness permits
\(\varepsilon\downarrow0\), and the left side tends to \(\mathscr Q_+\).
Thus the first branch of (DRF.38) means the complete quantity in (DRF.39),
not a separately owned positive strain cubic.

Material differentiation makes the restriction stronger:

\[
D_t\theta_\varepsilon(\mathfrak q)
=\theta_\varepsilon'(\mathfrak q)D_t\mathfrak q.
\tag{DRF.40}
\]

The exact response (SSR.12) inserts the simultaneous vorticity, trace-free
pressure Hessian, viscosity, and strain-gradient terms into the moving
collar. A proof may not keep the positive volume term and discard that
interface response.

## 5. Neither CDR floor pays the collar or the complete defect

The static minimum-leg floor (DRF.14)--(DRF.15) is a statement about all
three Fourier legs of the complete masked current. It does not identify a
Fourier covector with a material chord, a physical location, a strain
eigenframe, or the interface \(\mathfrak q=0\). It therefore supplies no
upper bound for either term in (DRF.39) and no sign for
\(\mathcal D_{\zeta,n}^{\rm rr}\).

This failure is quantitative for the floor alone. The exact decaying ABC
histories from (SSR.25)--(SSR.29) have active frequency \(N\), zero complete
pressure-coupled nonlinear source, and zero critical current, but

\[
\int_0^\infty\langle[\mathfrak q]_+\rangle\,dt
=\frac{C_+A^3N}{3\nu},
\qquad
\int_0^\infty Z(t)\,dt
=\frac{A^2\langle|U|^2\rangle}{2\nu}.
\tag{DRF.41}
\]

The first quantity grows linearly with the arbitrarily high minimum active
frequency while the datum-paid enstrophy clock is independent of \(N\). In
the same exact history, the imbalance face is canceled by the favorable
face, its interface, and the complete finite chords. A frequency floor
cannot turn (DRF.38) into a positive collar charge.

The double-recent ancestry is also exact but insufficient. With
\(\mathfrak A_n\) from (CDR.50), it gives

\[
\int_{I_n}\mathfrak A_n^4\,dt
\gtrsim \nu A_n,
\qquad
\sum_n\int_0^{T_*}\mathfrak A_n(t)\,dt<\infty.
\tag{DRF.42}
\]

The sector estimate is

\[
\|\Lambda^{-1/2}Q_n^{\rm rr}(t)\|_2
\leq C_{\rm sec}\mathfrak A_n(t)^2.
\tag{DRF.43}
\]

It controls the magnitude of the complete recent source before receiver
pairing. It does not allocate the signed pairing to \(\mathscr Q_+\) or to
\(\mathcal D_{\zeta,n}^{\rm rr}\). Equation (DRF.42) permits the fourth
moment to concentrate on shrinking time sets while its first moment remains
summable.

The fixed-selector identity is diagonal in the full field \(u\); the recent
source uses two heat-recruited parents and the actual unsplit receiver through
a nonlocal dynamic mask. Converting one into the other is exactly the defect
kept in (DRF.34), not a free co-location theorem.

Neither the static floor nor two-recent ancestry proves a datum-finite
material coarea/collar bound. A first one-sided sufficient quantity is

\[
\boxed{
c_\zeta\int_{I_n}\mathscr Q_+(t)\,dt
+\int_{I_n}\mathcal D_{\zeta,n}^{\rm rr}(t)\,dt}
\tag{DRF.44}
\]

without replacing its first term by an independently positive sheet charge
or splitting pressure out of its second term.  The later exact
selector-refund audit
`thomas-imbalance-interface-material-coarea-selector-refund-boundary-20260804.md`
sharpens the custody of this display: because

\[
c_\zeta\mathscr Q_+ +\mathcal D_{\zeta,n}^{\rm rr}
=J_n^{\rm rr}+c_\zeta\mathscr Q_-,
\]

`(DRF.44)` is a one-sided enlargement, not the selector-invariant residual.
The exact cross-cancelled join is

\[
\boxed{
J_n^{\rm rr}
=c_\zeta\mathscr Q_+
+\bigl(\mathcal D_{\zeta,n}^{\rm rr}
-c_\zeta\mathscr Q_-\bigr).}
\tag{DRF.44a}
\]

Thus the favorable two-contraction face must be refunded into the complete
finite-chord defect before the positive imbalance face is read.  Radial
selector rescaling reallocates these two coordinates while leaving
`(DRF.44a)` unchanged.

## 6. Exact verdict

The signed join proves the physical claim at the exact available scope:

\[
\boxed{
\begin{gathered}
\text{failed record}
\Longrightarrow
\text{positive signed double-recent six-assignment core current},
\\
\text{perfect balance and every }d\leq a
\text{ first jet are favorable},
\\
\text{therefore the same record carries either a quantified imbalance collar}
\\
\text{or a quantified complete finite-chord/pressure-heat defect}.
\end{gathered}}
\tag{DRF.45}
\]

The exact constants retained above are \(1/16\) for the signed
double-recent record and \(1/32\) for the two alternatives. The six
assignments remain inside one symmetric masked source, and every removed
source class is restored inside the signed defect (DRF.34).

What is not proved is a datum-finite upper bound for the selector-invariant
current `(DRF.44a)`.  A bound for `(DRF.44)` would be a stronger, overcharged
statement because it adds the favorable mass
\(c_\zeta\mathscr Q_-\). The static
minimum-leg floor has no material-collar coarea bridge, and the two-recent
source has only a summable first moment beside a concentrating fourth moment.
The one unpaid same-fluid term on the non-imbalance branch is
\(\mathcal D_{\zeta,n}^{\rm rr}\), with its complete finite-chord,
dynamic-complement, datum-heat, old-parent, and pressure completion kept
joined. No implication to (TIR.37a) or MPP closure is claimed.
