---
theorem_id: forward-gold-pressure-tail-good-lambda-l1-proof-reduction-20260629
status: proof-reduction-to-strict-pressure-tail-good-lambda-open
created: 2026-06-29
problem: navier-stokes
route: forward-gold terminal stopping-jet / pressure-parent oscillation tail
attacks:
  - PVD.29_pressure_tail_cancellation_damping
  - FGC.20_accretive_same_parent_service_inequality
  - FGC.25_terminal_uniform_coupled_jet_service_L1
source_surfaces:
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-pressure-compatible-viscous-descent-l1-candidate-20260629.md
  - problems/navier-stokes/theorem-construction/mpp-material-pressure-tower-same-packet-elliptic-readout-20260623.md
  - problems/navier-stokes/theorem-construction/mpp-pressure-hessian-partner-graph-normal-form-20260517.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-fresh-frequency-flux-residence-transit-dichotomy-20260627.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-heat-lag-gap-finite-difference-l1-reduction-20260629.md
completion_truth: >-
  Shows the proof architecture for the oscillatory pressure-parent tail L1
  theorem.  The pressure tail must be controlled by retained Calderon-Zygmund
  cancellation, viscous residence damping, source-parent admission, and the
  heat-lag finite-difference response of the centered NS tower gap.  The algebra
  below proves that a strict recurrence, or the equivalent weighted heat-lag
  no-recount theorem, implies terminal-uniform L1 pressure-tail control.  The
  file does not prove Gold closure because the strict recurrence / weighted
  heat-lag telescoping theorem remains the open mathematical lemma.
---

# Pressure-tail good-lambda \(L^1\) proof reduction

The pressure-tail problem is the positive-part problem.  The signed pressure row
can cancel while the selected positive variation accumulates:

\[
\int \mathsf P_{\xi,k}
\quad\hbox{finite,}\qquad
\int [\mathsf P_{\xi,k}]_+
\quad\hbox{not yet controlled.}
\tag{PTG.1}
\]

The goal is to prove the high-frequency pressure-tail estimate isolated in the
terminal stopping-jet note:

\[
\sup_{\tau<T_*}
\int_0^\tau
\left[
\mathsf P_{\xi,k}^{\ge \Lambda}(t)
\right]_+dt
\le
\varepsilon(\Lambda)
+\theta\,\mathsf{Visc}_{P,N}(0,\tau)
+\mathsf{Paid}_{P,N}(0,\tau),
\qquad \varepsilon(\Lambda)\to0 .
\tag{PTG.2}
\]

Once `(PTG.2)` is known, the pressure-parent part of the \(L^1\) theorem follows
by splitting pressure into low and high frequencies.  Low frequencies are
finite-depth admitted material.  High frequencies are `(PTG.2)`.

## 1. Pressure packets and the four exits

Use the same-packet elliptic pressure graph to write, schematically,

\[
\mathsf P_{\xi,k}^{P,\ge\Lambda}(t)
=
\sum_{Q}\sum_{\lambda\ge\Lambda}
\mathsf K_{\xi,k,\lambda}^{P\leftarrow Q}(t)
\mathsf S_{k,\lambda}^{Q}(t).
\tag{PTG.3}
\]

Here \(P\) is the selected receiver packet, \(Q\) is the source parent packet,
\(\lambda\) is frequency, \(\mathsf K\) is the pressure/Riesz transfer kernel,
and \(\mathsf S\) is the differentiated pressure source from the same fluid
history.

Every positive selected pressure lobe has exactly four possible fates.

1. Its Calderon-Zygmund cancellation partner remains in the selected ledger.
2. The partner exits through collar, cutoff, harmonic pressure, legal geometry,
   stop, or return.
3. The lobe resides at frequency long enough for heat damping to pay it.
4. The lobe transits upward through frequency without residence and without a
   legal exit.

The first three fates are not the hard branch.  The retained partner is paid by
kernel cancellation plus the one-sided weight/projection error.  Legal exits are
paid by the legal/stop/collar ledger.  Residence is paid by the viscous term.
For a stopped pressure-tail lobe, set

\[
M_{\xi,k,\lambda}(I)
:=
\int_I[\mathsf P_{\xi,k,\lambda}^{res}(t)]_+dt .
\tag{PTG.4}
\]

The residence branch is

\[
\int_I \mathsf{Desc}_{\xi,k,\lambda}^{visc}(t)\,dt
\ge
\varepsilon M_{\xi,k,\lambda}(I),
\tag{PTG.5}
\]

and therefore

\[
M_{\xi,k,\lambda}(I)
\le
\varepsilon^{-1}
\int_I \mathsf{Desc}_{\xi,k,\lambda}^{visc}(t)\,dt
+R_I^{legal/stop}.
\tag{PTG.6}
\]

The remaining branch is a transit branch: a sign-switching pressure pulse keeps
moving into higher frequencies faster than one heat residence time.

## 2. Tail measure

Let \(\mu_L\) be the pressure-tail measure at ratio level \(L\).  Concretely,
\(\mu_L\) counts the same-material pressure-tail events for which the selected
positive pressure bill is at least \(2^L\) times the local heat-rate/viscous
measure:

\[
E_L
:=
\left\{
(P,Q,\lambda,t):
[\mathsf P_{\xi,k,\lambda}^{P\leftarrow Q}(t)]_+
>
2^L\,d\mathsf D_{\lambda}^{visc}(t)
\right\},
\tag{PTG.7}
\]

\[
N_L:=\mu(E_L).
\tag{PTG.8}
\]

The finite pressure-tail \(L^1\) theorem is equivalent to the first ratio
moment

\[
\sum_{L\ge0}2^L N_L<\infty.
\tag{PTG.9}
\]

This is the same tail algebra as the source-frontier ratio-tail formulation:
raw \(L^1\) mass is not enough; the first weighted ratio moment is the object.

## 3. Strict good-lambda lemma

The missing lemma is the strict recurrence

\[
N_{L+1}
\le
\vartheta N_L
+B_L,
\qquad
2\vartheta<1,
\tag{PTG.10}
\]

where \(B_L\) is the already-paid part:

\[
\sum_{L\ge0}2^L B_L
\le
C_N(u_0)
+C\,\mathsf{Visc}_{P,N}(0,T_*)
+C\,\mathsf{Paid}_{P,N}(0,T_*).
\tag{PTG.11}
\]

This is the exact theorem to prove.  Its meaning is physical:

1. a retained pressure oscillation loses a fixed fraction by cancellation;
2. a resident high frequency loses a fixed fraction by viscous damping;
3. an exited lobe is legal/stop/return/collar material;
4. an unexited transit lobe must enter the same source-parent thread and cannot
   create a new independent positive bill at the next level.

The strictness \(2\vartheta<1\) is the whole point.  A recurrence with
\(\vartheta\ge1/2\) would still allow a critical half-tail.

## 4. Good-lambda summation

Assume `(PTG.10)` and `(PTG.11)`.  Let

\[
S_M:=\sum_{L=0}^{M}2^L N_L.
\tag{PTG.12}
\]

Multiply `(PTG.10)` by \(2^{L+1}\) and sum \(0\le L<M\):

\[
\sum_{L=0}^{M-1}2^{L+1}N_{L+1}
\le
2\vartheta\sum_{L=0}^{M-1}2^L N_L
+2\sum_{L=0}^{M-1}2^L B_L.
\tag{PTG.13}
\]

The left side is \(S_M-N_0\).  Hence

\[
S_M-N_0
\le
2\vartheta S_M
+2\sum_{L=0}^{M-1}2^L B_L.
\tag{PTG.14}
\]

Since \(2\vartheta<1\),

\[
S_M
\le
{N_0+2\sum_{L=0}^{M-1}2^L B_L\over 1-2\vartheta}.
\tag{PTG.15}
\]

Letting \(M\to\infty\) and using `(PTG.11)` gives

\[
\sum_{L\ge0}2^L N_L
\le
C_N(u_0)
+C\,\mathsf{Visc}_{P,N}(0,T_*)
+C\,\mathsf{Paid}_{P,N}(0,T_*).
\tag{PTG.16}
\]

By the layer-cake representation of the positive pressure bill, `(PTG.16)`
implies `(PTG.2)`.

## 4.1. How to prove the recurrence

The recurrence `(PTG.10)` is proved by decomposing \(E_{L+1}\) into paid exits
and the unexited transit branch:

\[
E_{L+1}
=
E_{L+1}^{cz}
\cup E_{L+1}^{legal}
\cup E_{L+1}^{res}
\cup E_{L+1}^{trans}.
\tag{PTG.17}
\]

The first three pieces contribute to \(B_L\).  Thus the only required estimate
is

\[
\mu(E_{L+1}^{trans})
\le
\vartheta\,\mu(E_L)
+B_L^{trans},
\qquad 2\vartheta<1.
\tag{PTG.18}
\]

Equivalently, every unexited pressure-transit thread must satisfy a strict
compression inequality.  If \(\gamma\) is a same-source-parent thread of
successive pressure lobes, the pressure-phase form of the needed line estimate
is

\[
d\mu_{L+1}^{\gamma}
\le
\left({1\over2}-\varepsilon_0\right)d\mu_L^{\gamma}
+dB_L^{\gamma}
-d\Phi_\gamma ,
\qquad \varepsilon_0>0,
\tag{PTG.19}
\]

where \(\Phi_\gamma\) is a bounded-below pressure-phase/ancestry storage and
\(\sum_L2^L\int dB_L^\gamma\) is already-paid material.

The heat-lag gap formulation replaces the abstract storage by the concrete
finite-difference response of the centered NS tower gap:

\[
\mathsf G_{\xi,k}
:=
\mathsf N_{\xi,k}-\mathsf D_{\xi,k+1}
=2\mathsf N_{\xi,k},
\qquad
[\mathsf N_{\xi,k}]_+
=
{1\over2}[\mathsf G_{\xi,k}]_+ .
\tag{PTG.24}
\]

On one dyadic heat window \(I\), the differentiated row gives

\[
\int_I[\mathsf P_{\xi,k,\lambda}]_+
\le
|\Delta_IU_{\xi,k,\lambda}|
+\int_I[-\mathsf V_{\xi,k,\lambda}]_+
+\int_I[-\mathsf C_{\xi,k,\lambda}]_+
+\int_I[\mathsf P_{\xi,k,\lambda}]_-
+\int_I\mathsf{Paid}_{\xi,k,\lambda}.
\tag{PTG.25}
\]

Thus the strict recurrence follows from the weighted heat-lag no-recount
theorem

\[
\sum_{\gamma\subset P}
\sum_{I\in\gamma}
\omega_I\,|\Delta_IU_{\xi,k,\lambda(I)}|
\le
C_N(u_0)
+C\,\mathsf{Visc}_{P,N}
+C\,\mathsf{Paid}_{P,N}.
\tag{PTG.22}
\]

In recurrence form this is

\[
d\mu_{L+1}^{\gamma}
\le
\left({1\over2}-\varepsilon_0\right)d\mu_L^\gamma
+dB_L^\gamma
+dT_L^\gamma,
\qquad
\sum_L2^L\int dT_L^\gamma<\infty.
\tag{PTG.23}
\]

Summing `(PTG.23)` over all transit threads gives `(PTG.18)` with
\(\vartheta=1/2-\varepsilon_0\), after \(dT_L^\gamma\) is absorbed into the
already finite weighted tail.

Physically, the heat-lag version says: a pressure oscillation that neither
cancels, nor exits legally, nor resides long enough to damp cannot be counted as
selected action while the velocity/shear response over one heat-time window is
still pending.  The far-packet pressure lead must become finite-difference
velocity response, viscous/transverse incompressible compensation, pressure
partner cancellation, frame/collar motion, return, legal, stop, or endpoint
material.  If the same child response is repeatedly reread as a new pressure
lead, the lobe is the critical one-child half-tail and the strict coefficient is
false.

So the proof of `(PTG.10)` is exactly the proof of `(PTG.19)` or, in the
heat-lag formulation, the weighted finite-difference no-recount theorem
`(PTG.22)`.

## 5. How this proves the \(L^1\) wall

Insert `(PTG.2)` into the row split

\[
\mathsf D_{\xi,k+1}
=
\mathsf P_{\xi,k}
+\mathsf V_{\xi,k}
-{d\over dt}\mathcal B_{\xi,k}
+\mathsf{Paid}_{\xi,k}.
\tag{PTG.20}
\]

The pressure-parent positive part is finite by `(PTG.2)`.  The viscous part is
already the descent term.  The moving-frame commutator is the storage derivative
\(-d\mathcal B_{\xi,k}/dt\).  The remaining terms are admitted same-packet
paid material.  Summing over selected rows gives

\[
\sup_{\tau<T_*}
\int_0^\tau
\int_P
\mathcal M_N(Y_N)_+\,da\,dt
\le
C_N(u_0).
\tag{PTG.21}
\]

This is `(FGC.25)`.  The proof of smoothness follows from the already-installed
Gold closure reduction after `(PTG.10)` / `(PTG.22)` is proved.

## 6. Current proof status

The algebra from `(PTG.10)` to `(PTG.25)` is complete.  The open mathematical
content is exactly `(PTG.22)`: weighted same-parent heat-lag finite-difference
telescoping, equivalently the strict same-parent transit inequality below the
critical half-tail barrier.

Partial, not Gold closed.
