---
theorem_id: forward-gold-pressure-compatible-viscous-descent-l1-candidate-20260629
status: candidate-l1-mechanism-isolated-proof-open
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
  Isolates the pressure-compatible / viscous-descent form of the missing L1
  theorem.  This note does not prove Gold closure.  It states the sharper
  mechanism: pressure supplies the instantaneous compatible time-derivative
  tower as an elliptic same-packet graph, while viscosity supplies the causal
  parabolic descent that turns those time-rungs into lower velocity/energy
  rungs.  The missing estimate is finite total positive service for that
  pressure-to-viscous descent conversion on one root-fixed parent packet.
---

# Pressure-compatible viscous-descent \(L^1\) candidate

The missing \(L^1\) theorem should be read as a conversion law between two
faces of the same participation packet.

Pressure gives the whole-field compatible derivative tower immediately.
Viscosity spends heat-time moving that derivative tower down into lower
velocity rungs until a selected child can read it as energy/action.

The desired estimate says that this conversion cannot have infinite positive
service before \(T_*\).

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

## 2. Viscous descent through the velocity tower

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

Thus a pressure-compatible time rung is not already readable energy.  It becomes
readable only after the parabolic operator spends heat-time pushing it through
the velocity tower.  The local energy identity for the \(k\)-th rung has the
form

\[
{1\over2}{d\over dt}\|\partial_t^kv\|_{L^2(P)}^2
+\nu\|\nabla_A\partial_t^kv\|_{L^2(P)}^2
=
\mathsf{Compat}_k(Y_N)
+dR_k^{legal}
+dStop_k .
\tag{PVD.5}
\]

\(\mathsf{Compat}_k(Y_N)\) is the pressure-compatible source produced by
`(PVD.3)` and `(PVD.4)`.  The viscous term is the time-spending/descent term.

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
\tag{PVD.6}
\]

for every \(\tau<T_*\), with \(0<\theta<1\) and
\(\mathcal B_P(t)\ge -C_N(u_0)\) on the same root-fixed parent packet.

Equivalently,

\[
\mathcal M_N(Y_N)_+
\le
\theta\nu\|Y_N\|_{\dot H^1(P)}^2
+C_N(u_0)
+\partial_t\mathcal B_P
+dR_P^{legal}
+dStop_P .
\tag{PVD.7}
\]

This is `(FGC.20)` with its physical mechanism exposed.  The pressure side is
the instantaneous compatible time tower.  The viscosity side is the heat-time
descent through the velocity derivative tower.  The bounded storage
\(\mathcal B_P\) must measure the remaining mismatch between a compatibility
pulse already present in the pressure/time tower and the amount of heat-time
viscous descent still required before that pulse is readable as selected energy.

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
\tag{PVD.8}
\]

That estimate sees the correct same-packet service, but it treats the pressure
compatibility and viscous descent as a single critical product.  The coefficient
\(\|Y_N\|_{X_{\rm crit}}\) is not controlled by original energy data.

The pressure-compatible viscous-descent theorem would replace `(PVD.8)` by the
stronger causal payment law `(PVD.6)`: a positive compatibility pulse is charged
by the heat-time needed to descend through the velocity tower, plus a bounded
same-parent storage drop.

This is the missing \(L^1\) relationship suggested by the physical picture:

\[
\text{instantaneous pressure-compatible time-rung}
\quad+\quad
\text{viscous heat-time descent}
\quad\Longrightarrow\quad
\text{finite positive selected service}.
\tag{PVD.9}
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

They do not yet prove `(PVD.6)`.  Proving `(PVD.6)` is the concrete form of the
Gold \(L^1\) theorem.

Partial, not Gold closed.
