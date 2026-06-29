---
theorem_id: forward-gold-pressure-compatible-viscous-descent-l1-candidate-20260629
status: candidate-l1-mechanism-isolated-terminal-stopping-jet-proof-open
created: 2026-06-29
problem: navier-stokes
route: forward-gold pressure-compatible derivative tower / viscous descent
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
  opposite up to \(T_*\), where both sides must vanish.  The missing estimate is
  terminal-uniform L1 control of positive selected service for that coupled
  stopping jet.
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

The pressure/incompressibility tower supplies the instantaneous compatible
whole-field time-jet.  The velocity derivative tower supplies the local material
readout of whether the packet is actually coming to rest.  They are not separate
payment accounts; they are two projections of the same coupled
pressure-viscosity-incompressibility stopping law.

The desired estimate says that the coupled stopping jet cannot carry infinite
positive selected service before \(T_*\).

## 1. Instantaneous pressure-compatible tower

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

Thus a pressure-compatible time rung is not a separate payment account.  In a
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
acceleration, jerk, snap, or higher rungs.  Gold closure needs the
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
\tag{PVD.20}
\]

That estimate sees the correct same-packet service, but it treats the pressure
compatibility and viscous descent as a single critical product.  The coefficient
\(\|Y_N\|_{X_{\rm crit}}\) is not controlled by original energy data.

The pressure-compatible stopping-jet theorem would replace `(PVD.20)` by the
stronger law `(PVD.11)` together with `(PVD.19)`: a positive compatibility pulse
cannot be counted as selected service while the packet is falsely treated as at
rest in velocity alone.

This is the missing \(L^1\) relationship suggested by the physical picture:

\[
\text{instantaneous pressure-compatible time-rung}
\quad+\quad
\text{coherent material stopping jet}
\quad\Longrightarrow\quad
\text{finite positive selected service}.
\tag{PVD.21}
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

They do not yet prove `(PVD.11)` together with `(PVD.19)`.  Proving the
positive-service estimate together with the no-retained-stopping-tail statement
is the concrete form of the Gold \(L^1\) theorem.

Partial, not Gold closed.
