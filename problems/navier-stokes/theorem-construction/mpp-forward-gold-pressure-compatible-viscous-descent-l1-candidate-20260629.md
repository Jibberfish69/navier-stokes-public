---
theorem_id: forward-gold-pressure-compatible-viscous-descent-l1-candidate-20260629
status: candidate-l1-mechanism-isolated-terminal-stopping-jet-proof-open
created: 2026-06-29
problem: navier-stokes
route: forward-gold pressure-compatible derivative tower / terminal stopping-jet subtraction
logical_landing_node: FGC.20_pressure_viscosity_mechanism_form
supports:
  - FGC.20_accretive_same_parent_service_inequality
  - FGC.25_terminal_uniform_coupled_jet_service_L1
source_surfaces:
  - problems/navier-stokes/theorem-construction/mpp-material-pressure-tower-same-packet-elliptic-readout-20260623.md
  - problems/navier-stokes/theorem-construction/mcp-graphcompatibleplsclockreadoutreplacement-a-globalsamepacketfullclockfromoriginaldata-a-4eb1f6562b.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-observability-gramian-logvariation-proof-check-20260623.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-complete-frame-tracefree-primitive-pls-payment-20260625.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-derivative-tower-positive-service-l1-proof-attempt-20260629.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-pressure-tail-good-lambda-l1-proof-reduction-20260629.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-heat-lag-gap-finite-difference-l1-reduction-20260629.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-weightless-parent-current-admission-currency-test-20260629.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-heat-lag-fresh-linear-service-half-tail-obstruction-20260629.md
completion_truth: >-
  Isolates the terminal stopping-jet form of the missing L1 theorem.  This note
  does not prove Gold closure.  It corrects the physical reading: the terminal
  question is not a second payment route and not an upward drain.  It is what it
  means for one root-fixed material packet to come to rest.  A positive velocity
  that slows carries a negative first-order stopping tower: acceleration is
  negative, and the higher stopping readouts are oriented as negative rungs as
  the packet relaxes.  Subtracting the original material NS operator from its
  differentiated tower gives two sides of one equality: the original
  pressure-viscosity side and the first-order derivative tower are equal and
  opposite up to \(T_*\), where both sides must vanish.  The storage term is
  the primitive of the moving-frame correction \(\mathsf C_{\xi,k}\), not a
  generic paid residue.  The remaining physical obstruction is oscillation of
  the pressure-parent tower: infinite frequency injection could make higher
  stopping rungs switch signs while the average packet motion slows.  The
  heat-lag correction sharpens that obstruction: a far-packet pressure lead is
  not selected action while its one-heat-time velocity/shear response is
  pending.  The missing estimate is terminal-uniform L1 control of the positive
  selected pressure tail by cancellation, viscous/transverse compensation, or
  weighted heat-lag finite-difference no-recount, hence of the coupled stopping
  jet.  The selected heat-lag bill is weighted, but the supplier must be the
  weightless original-parent current/service law; on the fresh first-entry
  branch this requires a native heat-lag linear charge, not Bessel square alone.
---

# Pressure-compatible terminal stopping-jet \(L^1\) candidate

The missing \(L^1\) theorem should be read as a stopping law for the whole
material time-jet inside the same original material carrier.

For a scalar material velocity component \(V(t)\), positive velocity cannot
simply disappear.  If \(V(t)>0\) is coming to rest, the first-order stopping
tower is negative: acceleration is negative, the next stopping readout is
negative, and so on through the rescaled tower.  Those signs are obtained by
subtracting the original material NS balance from the differentiated tower, so
that the pressure-viscosity side and the stopping-derivative side are
equal-opposite readouts of the same law.  Higher rungs are the time-shape of
stopping, not a place into which velocity energy drains.

The simultaneous participation tangent supplies the compatible whole-field
time-jet through its pressure/incompressibility and viscous rows. The velocity
derivative tower supplies the local material
readout of whether the packet is actually coming to rest.  They are not separate
mechanisms; they are two projections of the same coupled
pressure-viscosity-incompressibility stopping law.

The desired estimate says that the coupled stopping jet cannot carry infinite
positive selected service before \(T_*\).

## 1. Same-time pressure-row-compatible tower

On a stopped root material packet \(P\), write

\[
v=u\circ X,\qquad q=p\circ X,\qquad A=(D_aX)^{-1},\qquad G=AA^\top .
\tag{PVD.1}
\]

The same packet obeys

\[
\partial_t v+A^\top\nabla_aq
=
\nu\,\operatorname{div}_a(G\nabla_av),
\qquad
\operatorname{div}_a(Av)=0 .
\tag{PVD.2}
\]

For every finite depth \(N\), pressure is recovered from the same velocity and
coefficient tower by the material elliptic graph

\[
-\partial_{a_\ell}(G_{\ell k}\partial_{a_k}q)
=
A_{\ell i}A_{kj}
(\partial_{a_\ell}v_j)(\partial_{a_k}v_i).
\tag{PVD.3}
\]

After differentiating in time, every pressure rung
\(\partial_t^kq\) is a same-packet graph coordinate of
\((\partial_t^jv,\partial_t^jA,\partial_t^jG)_{j\le k}\).  This is the
instantaneous whole-field part of the story: incompressibility does not carry a
separate scalar variable, but it determines the compatible pressure/time rung
through `(PVD.3)`.

## 2. Original NS / first-order stopping-tower split

Rearrange `(PVD.2)` at depth \(k\):

\[
\partial_t^{k+1}v
=
\nu\,\operatorname{div}_a(G\nabla_a\partial_t^kv)
-A^\top\nabla_a\partial_t^kq
+\mathcal C_k(Y_k),
\tag{PVD.4}
\]

where \(\mathcal C_k(Y_k)\) contains only coefficient, frame, collar, Hodge, and
lower-rung commutators from the same packet.

Thus a pressure-compatible time rung is not a separate mechanism.  In a
selected stopping direction it is one side of the same original NS balance,
while the first-order material derivative tower is the other side.  Equivalently,
subtract the original NS operator from its \(k\)-th differentiated tower:

\[
\mathsf N_{\xi,k}(t)
:=
\xi(t)\cdot
\Big(
A^\top\nabla_a\partial_t^kq
-\nu\,\operatorname{div}_a(G\nabla_a\partial_t^kv)
-\mathcal C_k(Y_k)
\Big),
\tag{PVD.5}
\]

\[
\mathsf D_{\xi,k+1}(t)
:=
\xi(t)\cdot\partial_t^{k+1}v .
\tag{PVD.6}
\]

Then `(PVD.4)` gives the signed subtraction identity

\[
\mathsf N_{\xi,k}(t)+\mathsf D_{\xi,k+1}(t)=0 .
\tag{PVD.7}
\]

In a positive stopping segment, the first-order derivative side is negative:

\[
\mathsf D_{\xi,k+1}(t)\le 0,
\qquad
\mathsf N_{\xi,k}(t)=-\mathsf D_{\xi,k+1}(t)\ge 0,
\tag{PVD.8}
\]

and true terminal rest requires both readouts to vanish:

\[
\lim_{t\uparrow T_*}\mathsf D_{\xi,k+1}(t)
=
\lim_{t\uparrow T_*}\mathsf N_{\xi,k}(t)
=0 .
\tag{PVD.9}
\]

The local energy identity for the \(k\)-th velocity rung has the form

\[
{1\over2}{d\over dt}\|\partial_t^kv\|_{L^2(P)}^2
+\nu\|\nabla_A\partial_t^kv\|_{L^2(P)}^2
=
\mathsf{Compat}_k(Y_N)
+dR_k^{legal}
+dStop_k .
\tag{PVD.10}
\]

\(\mathsf{Compat}_k(Y_N)\) is the pressure-compatible source produced by
`(PVD.3)` and `(PVD.4)`.  On a stopping packet this source has to be read
through `(PVD.7)`--`(PVD.9)`, as the equal-opposite split between the original
NS side and the first-order derivative tower.

## 3. The actual \(L^1\) theorem

The missing theorem is not merely that the tower identity exists.  It is the
terminal-uniform positive conversion estimate:

\[
\boxed{
\sum_{k\le N}\int_0^\tau
\big[\mathsf{Compat}_k(Y_N)(t)\big]_+\,dt
\le
\theta\nu\int_0^\tau
\sum_{k\le N}\|\nabla_A\partial_t^kv\|_{L^2(P)}^2\,dt
+C_N(u_0)
+\mathcal B_P(0)-\mathcal B_P(\tau)
+R_P^{legal}
+Stop_P
}
\tag{PVD.11}
\]

for every \(\tau<T_*\), with \(0<\theta<1\) and
\(\mathcal B_P(t)\ge -C_N(u_0)\) on the same root-fixed carrier packet.

Equivalently,

\[
\mathcal M_N(Y_N)_+
\le
\theta\nu\|Y_N\|_{\dot H^1(P)}^2
+C_N(u_0)
+\partial_t\mathcal B_P
+dR_P^{legal}
+dStop_P .
\tag{PVD.12}
\]

This is `(FGC.20)` with its physical mechanism exposed.  The pressure-viscosity
side is \(\mathsf N_{\xi,k}\).  The first-order derivative side is
\(\mathsf D_{\xi,k+1}\).  The bounded storage \(\mathcal B_P\) must measure any
remaining mismatch before selected service is counted, but the governing
identity is already the equal-opposite subtraction `(PVD.7)`.

## 3.1. Terminal stopping jet

The terminal-order issue is what it means for a material packet to be physically
at rest.

Fix a transported selected covector \(\xi(t)\) and set

\[
V_\xi(t)=\xi(t)\cdot v(a,t).
\tag{PVD.13}
\]

A positive stopping profile has a positive velocity rung and negative
first-order stopping rungs:

\[
V_\xi>0,\qquad
\mathsf D_{\xi,1}<0,\qquad
\mathsf D_{\xi,2}<0,\qquad
\mathsf D_{\xi,3}<0,\qquad \ldots
\tag{PVD.14}
\]

where \(\mathsf D_{\xi,k}\) denotes the \(k\)-th first-order stopping readout,
oriented by the NS subtraction so that coming to rest is negative.  In
compressed form,

\[
\mathsf D_{\xi,k}\le 0
\quad(k\ge 1)
\quad\text{on the selected stopping segment.}
\tag{PVD.15}
\]

The split with the original NS equation is equal and opposite:

\[
\mathsf N_{\xi,k}(t)+\mathsf D_{\xi,k+1}(t)=0,
\qquad
\mathsf N_{\xi,k}(t)\ge 0,\quad
\mathsf D_{\xi,k+1}(t)\le 0.
\tag{PVD.16}
\]

At terminal rest both sides vanish:

\[
\lim_{t\uparrow T_*}\mathsf N_{\xi,k}(t)
=
\lim_{t\uparrow T_*}\mathsf D_{\xi,k+1}(t)
=0.
\tag{PVD.17}
\]

The size part is just as important as the signs.  A coherent stopping jet is
measured by a rescaled tower such as

\[
\mathsf S_{\xi,N}(t)
=
\big[V_\xi(t)\big]_+
+
\sum_{k=1}^N w_k\,
\big[-\mathsf D_{\xi,k}(t)\big]_+ .
\tag{PVD.18}
\]

The false terminal object is a packet whose velocity readout has come to rest
while the first-order stopping tower still carries retained negative readout in
acceleration, jerk, snap, or higher rungs.  This stopping-jet slice needs the
no-retained-stopping-tail statement

\[
\lim_{N\to\infty}\sup_{\tau<T_*}
\int_0^\tau
\sum_\xi\sum_{k>N} w_k\,
\big[-\mathsf D_{\xi,k}(t)\big]_+\,dt
=0,
\tag{PVD.19}
\]

with the selected covectors and weights matching the derivative-energy tower.
This is not an upward drain.  It is the assertion that "the packet came to rest"
means the whole material stopping jet relaxed, not just the zeroth velocity
readout.

## 3.2. Storage as the moving-frame correction

If pressure is separated once as the same-time elliptic row, the row is

\[
\mathsf D_{\xi,k+1}
=
\mathsf P_{\xi,k}
+\mathsf V_{\xi,k}
+\mathsf C_{\xi,k},
\tag{PVD.20}
\]

where

\[
\mathsf P_{\xi,k}
=
-\xi\cdot\partial_t^k(A^\top\nabla_aq),
\qquad
\mathsf V_{\xi,k}
=
\nu\,\xi\cdot\partial_t^k\operatorname{div}_a(G\nabla_av).
\tag{PVD.21}
\]

Together with `(PVD.7)`, this says the original NS side and the first-order
stopping tower are the equal-opposite record of the same packet.

The storage is not a generic paid residue.  It is the primitive of the moving
material-frame correction:

\[
\mathsf C_{\xi,k}(t)
=
-{d\over dt}\mathcal B_{\xi,k}(t).
\tag{PVD.22}
\]

Here \(\mathsf C_{\xi,k}\) is the correction created by differentiating the
moving material record: \(A\), \(G\), transported \(\xi\), collar/frame/Hodge
terms, and the associated product-rule commutators.  If
\(\mathsf P_{\xi,k}\) and \(\mathsf V_{\xi,k}\) are defined with full product
derivatives, most of this correction is absorbed into those two terms; what is
left is exactly the storage derivative.

The desired one-row inequality is therefore a positive-part statement of the
form

\[
\big[\mathsf P_{\xi,k}\big]_+
\le
\theta\,\mathsf{Desc}_{\xi,k}^{visc}
-{d\over dt}\mathcal B_{\xi,k}
+\mathsf{Paid}_{\xi,k},
\qquad 0<\theta<1,
\tag{PVD.23}
\]

with \(\mathsf{Paid}_{\xi,k}\) containing only already-admitted same-packet
material: legal, stop, motion, return, and admitted current terms.  The
commutator/frame correction belongs to \(-d\mathcal B_{\xi,k}/dt\), not to this
paid bucket.  The point is not that \(\mathsf N_{\xi,k}\) is larger than
\(\mathsf P_{\xi,k}+\mathsf V_{\xi,k}\) as a raw signed expression.  The raw row
is equality.  The theorem sought is that after positive selection, the pressure
parent pulse cannot leave an unbounded positive bill; it must appear as viscous
descent, the moving-frame storage drop, or already-admitted same-packet
material.

Integrating `(PVD.23)` gives

\[
\int_0^\tau\big[\mathsf P_{\xi,k}(t)\big]_+\,dt
\le
\theta\int_0^\tau\mathsf{Desc}_{\xi,k}^{visc}(t)\,dt
+\mathcal B_{\xi,k}(0)-\mathcal B_{\xi,k}(\tau)
+\int_0^\tau\mathsf{Paid}_{\xi,k}(t)\,dt.
\tag{PVD.24}
\]

The physical closure claim is that when the packet truly comes to rest at
\(T_*\), the pressure-parent tower drains no later than the stopping tower:

\[
\lim_{t\uparrow T_*}\mathsf P_{\xi,k}(t)
=
\lim_{t\uparrow T_*}\mathsf D_{\xi,k+1}(t)
=0
\tag{PVD.25}
\]

and the storage has no retained terminal atom,

\[
\lim_{\tau\uparrow T_*}\mathcal B_{\xi,k}(\tau)
\quad\text{exists and is bounded below by original packet data.}
\tag{PVD.26}
\]

This is the candidate \(L^1\) relationship: prove that a pressure-compatible
parent pulse cannot outlive the one-way material stopping profile as a retained
positive selected bill.

## 3.3. Oscillatory pressure-parent tail

The signed equality alone does not solve the \(L^1\) problem.  A pressure row
can have zero net endpoint and still create infinite positive selected service
by oscillating:

\[
\int_0^\tau \mathsf P_{\xi,k}(t)\,dt
\quad\text{can stay bounded while}\quad
\int_0^\tau [\mathsf P_{\xi,k}(t)]_+\,dt
\quad\text{diverges.}
\tag{PVD.27}
\]

That is the real storage obstruction.  The pressure-parent tower can inject a
packet of frequencies whose average effect is to slow the selected packet, while
particular frequencies resonate the pressure readout and force higher stopping
rungs to switch sign.  To the selected packet this looks like a ghost source of
extra velocity/energy oscillation inside an average deceleration.

The source is not ghost material.  The pressure equation says it came from the
same fluid, possibly from another parent packet \(Q\).  Schematically, for a
selected packet \(P\),

\[
\mathsf P_{\xi,k}^P(t)
=
\sum_Q\sum_{\lambda}
\mathsf K_{\xi,k,\lambda}^{P\leftarrow Q}(t)\,
\mathsf S_{k,\lambda}^Q(t),
\tag{PVD.28}
\]

where \(\lambda\) is frequency, \(\mathsf S_{k,\lambda}^Q\) is the differentiated
pressure source in packet \(Q\), and \(\mathsf K^{P\leftarrow Q}\) is the
elliptic pressure transfer kernel.  Positive selected service is legal only
after this source packet is admitted into the same material record.

The needed pressure-tail theorem is:

\[
\sup_{\tau<T_*}
\int_0^\tau
\Big[
\sum_Q\sum_{\lambda\ge\Lambda}
\mathsf K_{\xi,k,\lambda}^{P\leftarrow Q}(t)\,
\mathsf S_{k,\lambda}^Q(t)
\Big]_+\,dt
\le
\varepsilon(\Lambda)
+\theta\,\mathsf{Visc}_{P,N}(0,\tau)
+\mathsf{Paid}_{P,N}(0,\tau),
\tag{PVD.29}
\]

with \(\varepsilon(\Lambda)\to0\) as \(\Lambda\to\infty\).  This is the
``Eulerian bell curve'' statement: after the tail of an injected frequency
pulse, each frequency either cancels by oscillatory phase mixing or is damped by
the heat factor carried by viscosity.  No sign-switching pressure wave can
remain as an unowned positive child-energy bill.

Once `(PVD.29)` is proved, the \(L^1\) estimate follows directly.  Split the
pressure parent pulse into low and high frequency parts:

\[
\int_0^\tau[\mathsf P_{\xi,k}]_+
\le
\int_0^\tau[\mathsf P_{\xi,k}^{<\Lambda}]_+
+
\int_0^\tau[\mathsf P_{\xi,k}^{\ge\Lambda}]_+ .
\tag{PVD.30}
\]

The low-frequency part is finite-depth, admitted same-packet material.  The
high-frequency part is controlled by `(PVD.29)`.  Choosing \(\Lambda\) so that
\(\varepsilon(\Lambda)\) is below the strict \(\theta<1\) margin gives

\[
\sup_{\tau<T_*}\int_0^\tau[\mathsf P_{\xi,k}(t)]_+\,dt
\le
C_N(u_0)
+\theta\,\mathsf{Visc}_{P,N}(0,\tau)
+\mathsf{Paid}_{P,N}(0,\tau),
\tag{PVD.31}
\]

which is the pressure-parent part of `(PVD.11)` / `(PVD.23)`.  Summing the
selected rows gives the terminal-uniform \(L^1\) service bound.

## 3.4. Heat-lag finite-difference correction

The pressure-tail theorem can be sharpened by centering the two tower readouts.
From `(PVD.7)`,

\[
\mathsf G_{\xi,k}
:=
\mathsf N_{\xi,k}-\mathsf D_{\xi,k+1}
=2\mathsf N_{\xi,k}
=-2\mathsf D_{\xi,k+1}.
\tag{PVD.31a}
\]

Therefore a selected positive pressure-compatible account is only one face of
the centered gap:

\[
[\mathsf N_{\xi,k}]_+
=
{1\over2}[\mathsf G_{\xi,k}]_+ .
\tag{PVD.31b}
\]

This explains the half-tail barrier.  If the proof counts the pressure face at
a far packet before the velocity/shear response has had one heat-time to appear,
it counts a pending response as selected action.

For dyadic frequency \(\lambda\), set

\[
h_\lambda\simeq {1\over\nu\lambda^2},
\qquad
U_{\xi,k,\lambda}(t)
:=
\xi(t)\cdot P_\lambda\partial_t^kv(t).
\tag{PVD.31c}
\]

Integrating the row

\[
\partial_tU_{\xi,k,\lambda}
=
\mathsf P_{\xi,k,\lambda}
+\mathsf V_{\xi,k,\lambda}
+\mathsf C_{\xi,k,\lambda}
+\mathsf{Paid}_{\xi,k,\lambda}
\tag{PVD.31d}
\]

over \(I=[t,t+h_\lambda]\) gives

\[
\int_I[\mathsf P_{\xi,k,\lambda}]_+
\le
|\Delta_IU_{\xi,k,\lambda}|
+\int_I[-\mathsf V_{\xi,k,\lambda}]_+
+\int_I[-\mathsf C_{\xi,k,\lambda}]_+
+\int_I[\mathsf P_{\xi,k,\lambda}]_-
+\int_I\mathsf{Paid}_{\xi,k,\lambda}.
\tag{PVD.31e}
\]

This is the formal plank correction.  Incompressibility does not force the
pushed line to translate as a rigid object.  If the far packet has a pressure
account but not yet a velocity account, the response is still inside the
heat-lag window and must become finite-difference velocity response, transverse
divergence compensation, viscous shear, pressure cancellation, frame/collar
motion, return, legal, stop, or endpoint material.

The concrete replacement for the abstract pressure-phase storage is the
weighted no-recount estimate

\[
\sum_{\gamma\subset P}
\sum_{I\in\gamma}
\omega_I|\Delta_IU_{\xi,k,\lambda(I)}|
\le
C_N(u_0)
+C\,\mathsf{Visc}_{P,N}
+C\,\mathsf{Paid}_{P,N}.
\tag{PVD.31f}
\]

This estimate is not a request for a child-weighted supplier.  It says the
weighted child bill must enter the original parent current before it is counted.
The local service-currency form is

\[
\omega_I|\Delta_IU_I|
\le
C[q_I\,dq_I]_+
+d\mathcal N_I^{heat}
+dMotion_I
+dReturn_I
+\theta dVisc_I
+dLegal_I
+dStop_I ,
\tag{PVD.31g}
\]

where the right side is the weightless same-parent account: Schur current work,
fresh native heat-lag linear service, viscous drain, motion, return, legal, and
stop.  Fresh Bessel novelty remains valid only as square support; it cannot
dominate the linear bill of a first-entry heat-lag half-tail.  The backward heat
detector supplies same-parentness, but weighted adjoint square control alone
does not prove `(PVD.31f)`.  The half-tail

\[
\nu_\ell={2^{-\ell}\over \ell+1},
\qquad
\omega_\ell=2^\ell
\tag{PVD.31h}
\]

has \(\sum\omega_\ell\nu_\ell^2<\infty\) and
\(\sum\omega_\ell\nu_\ell=\infty\), so the missing theorem is exactly the
conversion from weighted selected finite difference to retained Schur current
work, finite native heat-lag linear service, or paid same-law exits.

If `(PVD.31f)` is proved, then `(PVD.29)` follows by summing `(PVD.31e)` over
the unexited transit windows and adding the already paid cancellation,
residence, legal, stop, return, and endpoint branches.

The formal no-recount pushforward theorem in the heat-lag note proves
`(PVD.31f)` from the finite parent-weighted detector measure `(WLF.60)`: the
first-admission update prevents the same pulse from being fresh twice, stopped
transit overlap gives bounded pushforward multiplicity, and the child selected
bill is pushed back to the original same-parent pulse before positive clipping.

## 4. Why this is the right missing relationship

The previous direct tower proof reached

\[
|\mathcal I_N(Y_N)|
\le
C_N
\|Y_N\|_{X_{\rm crit}(P)}
\|Y_N\|_{\dot H^1(P)}^2
+dR_P^{legal}
+dStop_P .
\tag{PVD.32}
\]

That estimate sees the correct same-packet service, but it treats the pressure
compatibility and stopping-jet subtraction as a single critical product.  The
coefficient \(\|Y_N\|_{X_{\rm crit}}\) is not controlled by original energy
data.

The pressure-compatible stopping-jet theorem would replace `(PVD.32)` by the
stronger law `(PVD.11)` together with `(PVD.19)`, `(PVD.22)`, `(PVD.23)`, and
the pressure-tail estimate `(PVD.29)`, now sharpened through the heat-lag
finite-difference estimate `(PVD.31f)`: a positive compatibility pulse cannot be
counted as selected service while the packet is falsely treated as at rest in
velocity alone, while its pressure-parent tail only oscillates, or while its
one-heat-time velocity/shear response is still pending.

This is the missing \(L^1\) relationship suggested by the physical picture:

\[
\text{same-time pressure-row-compatible time-rung}
\quad+\quad
\text{coherent material stopping jet}
\quad\Longrightarrow\quad
\text{finite positive selected service}.
\tag{PVD.33}
\]

## 5. Proof status

Installed repo surfaces prove:

1. pressure rungs are same-packet elliptic graph coordinates;
2. the graph-compatible pressure/collar clock is the right material-record
   readout;
3. the complete-frame trace-free primitive PLS orientation pays the principal
   sign-separation by covector/frequency compression or packet-normal collar
   compression;
4. Duhamel/Gramian variation places relative operator motion in the same mixed
   material tower, conditionally on stable no-return and same-packet envelope
   control.

They do not yet prove `(PVD.11)` together with `(PVD.19)`, `(PVD.22)`,
`(PVD.23)`, `(PVD.29)`, and the heat-lag no-recount estimate `(PVD.31f)` via
the corrected weightless parent-current currency inequality `(PVD.31g)`.  That
inequality now includes the fresh native heat-lag linear service charge
\(d\mathcal N^{heat}\).  Proving the positive-service estimate together with
the no-retained-stopping tail,
moving-frame-storage, pressure-tail cancellation/damping, and weighted
finite-difference response statements is the concrete form of the Gold \(L^1\)
theorem.

The pressure-tail good-lambda reduction records the exact final proof shape:
prove a strict recurrence \(N_{L+1}\le\vartheta N_L+B_L\) with
\(2\vartheta<1\), or equivalently prove the weighted heat-lag
finite-difference no-recount estimate.  That recurrence/no-recount theorem
implies the weighted pressure-tail moment, which implies `(PVD.29)`, which then
implies `(FGC.25)`.

Partial, not Gold closed.
