---
theorem_id: forward-gold-radiodrome-bath-self-sourced-pursuit-test-20260706
status: strict-reduction-bounded-custody-pursuit-rigidity-global-wkb-refresh-open
created: 2026-07-06
problem: navier-stokes
route: forward-gold / confinement constant / bath recursion / overlap bath exact matrix
target_object:
  - RadiodromeBath.SelfSourcedPursuitTest
  - BoundedCustody.NoFreeActiveSupercriticalService
  - HighReLogRoomRefreshBankVariation.REMAINS
source_refs:
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-bath-steady-or-tracking-dichotomy-20260705.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-overlap-bath-fast-motion-threshold-obstruction-20260706.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-overlap-bath-local-supercritical-motion-obstruction-20260706.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-overlap-bath-nonaffine-transport-threshold-obstruction-20260706.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-overlap-bath-supercritical-residual-scale-split-20260706.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-overlap-bath-nonaffine-broadband-branch-collapse-20260706.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-overlap-bath-beltrami-material-phase-service-identity-20260706.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-overlap-bath-carrier-scale-room-ledger-20260706.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-overlap-bath-variable-weight-refresh-variation-ledger-20260706.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-overlap-bath-bank-scale-motion-variation-ledger-20260706.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-overlap-bath-cyclic-carrier-shuttle-not-free-20260706.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-overlap-bath-many-cell-wkb-parameter-window-20260706.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-overlap-bath-many-cell-wkb-support-density-split-20260706.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-overlap-bath-persistent-wkb-is-construction-surface-20260706.md
completion_truth: >-
  Bounded-custody pursuit test and strict reduction only. The radiodrome idea
  does produce a real invariant in the bath route, but the invariant is not a
  global proof of the claim that self-sourced non-affine/broadband transport
  can never sustain supercritical pressure-Hessian motion. The installed
  threshold says order-one tracking needs omega/s >= beta^(-4/5). Affine and
  ordinary non-affine same-fluid custody stay inside the q=4/5 pressure row;
  supercritical non-affine motion must be a fine/sparse high-Re residual or it
  pays by residual energy. In the surviving material WKB branch, active
  same-shape pressure service obeys the exact phase ledger
  S:K = sum_i w_i D_t log lambda_i. Inside a WKB log-window this gives
  |int S:K| <= W Delta + (Delta/2) V_w + W V_D, so a fixed material population,
  a closed carrier cycle, or a bounded-refresh same-bank bath cannot provide
  indefinite sign-coherent active service. Continued service must spend high-Re
  carrier log-room, weight refresh/reassembly variation, bank log-variation, a
  fixed-density compensator/residue, or become the actual near-uniform
  same-fluid WKB bath construction/exclusion surface. This proves the bounded
  custody version of (*) and leaves the global WKB refresh/construction branch
  open.
---

# Radiodrome bath self-sourced pursuit test

## 1. The target

The proposed test is the bath-recursion version of radiodrome:

\[
  \text{self-sourced non-affine same-fluid transport cannot sustain }
  {\omega_K\over s}\gtrsim\beta^{-4/5}
  \quad\text{across octaves.}
  \tag{RB.1}
\]

Here \(K(t)\in\operatorname{Sym}_0(3)\) is the retained trace-free pressure
Hessian moment, \(s\) is the producer clock, and
\[
  \omega_K:=\left|D_t{K\over |K|}\right|
  \tag{RB.2}
\]
is the angular speed of the pressure-Hessian direction on intervals where
\(|K|>0\).

The intended pursuit picture is:

\[
  \text{pressure Hessian direction }K(t)
  \quad\text{is chased by}\quad
  \text{the same-fluid pressure-service bank}.
  \tag{RB.3}
\]

The only useful result would be native to the Navier-Stokes source: the
pressure-service bank is made from the same velocity field that is chasing
\(K(t)\), through pressure, Hodge projection, incompressibility, viscosity, and
material transport. A geometric chase imposed after the fact does not count.

## 2. Installed pursuit threshold

The fast-motion threshold already gives the radiodrome number. A fixed
pressure-service bank tracking \(K(t)\) over one producer clock has
\[
  {W_{\rm track}\over E_{\rm prod}}
  \lesssim
  {\omega_K\over s}\beta^{4/5}.
  \tag{RB.4}
\]

Thus a fixed order-one payer begins only at
\[
  {\omega_K\over s}\gtrsim\beta^{-4/5}.
  \tag{RB.5}
\]

The local affine same-shape test is far below this threshold:
\[
  {\omega_K\over s}=O(\beta^{4/5}).
  \tag{RB.6}
\]

Ordinary affine-subtracted residual transport is also cheap. If
\[
  \eta_D:={\delta_D\over s}
  \tag{RB.7}
\]
measures the non-affine gradient variation across the pressure bank, then
\[
  {W_{\rm nonaff}\over E_{\rm prod}}
  \lesssim
  \eta_D\beta^{4/5}.
  \tag{RB.8}
\]

An order-one non-affine transport payer therefore needs the spatial analogue
of the same threshold:
\[
  \eta_D\gtrsim\beta^{-4/5}.
  \tag{RB.9}
\]

So the radiodrome test has only one live non-affine case:

\[
  \text{supercritical same-fluid residual motion.}
  \tag{RB.10}
\]

## 3. Supercritical residuals are already sorted locally

Let a supercritical residual be active on length
\[
  \ell=\theta D
  \tag{RB.11}
\]
and support fraction \(\phi\) inside the pressure bank. The residual scale
split gives
\[
  {E_{\rm res}\over E_{\rm prod}(D)}
  \sim
  \phi\eta_D^2\theta^2.
  \tag{RB.12}
\]

At the pursuit threshold \(\eta_D\sim\beta^{-4/5}\),
\[
  {E_{\rm res}\over E_{\rm prod}(D)}
  \sim
  \phi\theta^2\beta^{-8/5}.
  \tag{RB.13}
\]

Hence coherent or moderate support already pays order-one energy when
\[
  \phi\theta^2\gtrsim\beta^{8/5}.
  \tag{RB.14}
\]

To remain no larger than the installed \(q=4/5\) pressure row, it must satisfy
\[
  \phi\theta^2\lesssim\beta^{12/5}.
  \tag{RB.15}
\]

This is the first hard output of the test. The supercritical no-payer branch is
not generic broadband motion. It is fine, sparse, high-Reynolds motion, and the
filed branch-collapse note routes it to Reynolds-edge refresh, fixed-density
compensator/residue, or persistent WKB construction/exclusion.

## 4. The self-sourced WKB invariant

The surviving cheap branch is a material WKB pressure bath. There the
self-sourced structure gives an exact scalar identity.

For a Beltrami WKB carrier \(k_i=\lambda_i n_i\) in producer strain \(S\),
\[
  D_t\log\lambda_i=-n_i\cdot S n_i.
  \tag{RB.16}
\]

The carrier's trace-free pressure shape is
\[
  Q_{n_i}={1\over3}I-n_i\otimes n_i,
  \tag{RB.17}
\]
and since \(\operatorname{tr}S=0\),
\[
  S:Q_{n_i}=D_t\log\lambda_i.
  \tag{RB.18}
\]

Therefore a positive WKB pressure mixture
\[
  K=\sum_i w_i Q_{n_i},
  \qquad w_i\ge0,
  \tag{RB.19}
\]
satisfies
\[
  S:K=\sum_i w_iD_t\log\lambda_i.
  \tag{RB.20}
\]

This is the native pursuit invariant. Active same-shape pressure service is
carrier log-scale drift of the same material population.

## 5. Bounded-custody theorem

Use relative carrier scales
\[
  z_i=\log(\lambda_iD)
  \tag{RB.21}
\]
inside one WKB log-window
\[
  a\le z_i\le b,
  \qquad
  \Delta=b-a.
  \tag{RB.22}
\]

Let
\[
  W:=\sum_iw_i,
  \qquad
  V_w(I):=\int_I\sum_i|D_tw_i|\,dt,
  \qquad
  V_D(I):=\int_I|D_t\log D|\,dt.
  \tag{RB.23}
\]

The variable-weight and bank-scale ledgers give, on any retained interval
\(I\),
\[
  \left|\int_I S:K\,dt\right|
  \le
  W\Delta
  +
  {\Delta\over2}V_w(I)
  +
  WV_D(I).
  \tag{RB.24}
\]

For a closed same-bank carrier cycle, the endpoint room term vanishes and
\[
  \left|\int_I S:K\,dt\right|
  \le
  {\Delta\over2}V_w(I)+WV_D(I).
  \tag{RB.25}
\]

Thus a fixed material WKB population cannot keep paying sign-coherent active
service after its finite log-room is spent. A cyclic shuttle cannot reset the
service for free. A moving bank cannot hide the retuning; it appears as
\(V_D\).

Summing over an octave chain \(\{I_m\}\), bounded custody gives
\[
  \sum_m\left|\int_{I_m}S:K\,dt\right|
  \le
  \sum_m
  \left(
    W_m\Delta_m
    +
    {\Delta_m\over2}V_w(I_m)
    +
    W_mV_D(I_m)
  \right).
  \tag{RB.26}
\]

Consequently, if the right side is finite along the chain, cumulative active
pressure service is finite. A same-shape bath that needs a fixed positive
amount of active service per retained octave must eventually spend one of the
currencies on the right side.

This is the bounded-custody version of (*).

## 6. Why this is not the global proof of (*)

The preceding theorem controls the active same-shape service channel
\(S:K\). It does not prove a universal bound
\[
  {\omega_K\over s}=O(\beta^{4/5})
  \tag{RB.27}
\]
for every Hodge-legal non-affine/broadband pressure moment.

The current sources leave real doors:

1. the WKB log-window can be large when the local Reynolds number is very large:
   \[
     \Delta_{\rm WKB}
     \lesssim
     {1\over2}\log\operatorname{Re}_D
     -
     {24\over25}\log {1\over\beta},
     \tag{RB.28}
   \]
   with the dense fixed-density version
   \[
     \Delta_{\rm dense}
     \lesssim
     {1\over2}\log\operatorname{Re}_D
     -
     {6\over5}\log {1\over\beta};
     \tag{RB.29}
   \]
2. weight variation \(V_w\) is only a refresh/reassembly ledger until a
   Gate-8/custody theorem or compensator route prices it in record-ladder
   currency;
3. bank log-variation \(V_D\) is a moving-envelope or \(T^{*+}\)-schedule
   custody bill, not yet a uniform floor;
4. orthogonal pressure service with \(S:K=0\) can rotate tensor directions, but
   it cannot by itself supply the active same-shape amplitude-service row;
5. persistent high-Re WKB is still the actual construction/exclusion surface
   for a near-uniform same-fluid bath after finite/atomic carrier admission,
   microlocal-profile admission, high-factor routing, and Pack/Part certificate
   failures are accounted for.

Thus the full claim
\[
  \text{all self-sourced non-affine/broadband transport stays subcritical}
  \tag{RB.30}
\]
is not proved here. The proved statement is the sharper routing theorem:
\[
\begin{array}{ll}
\text{ordinary affine or residual motion}
  &\Rightarrow q=4/5\text{ pressure row},\\[1mm]
\text{coherent supercritical residual}
  &\Rightarrow \text{residual-energy payer},\\[1mm]
\text{fine/sparse supercritical residual}
  &\Rightarrow \text{WKB high-Re / refresh / compensator surface},\\[1mm]
\text{bounded-custody active WKB service}
  &\Rightarrow \text{finite log-room plus }V_w\text{ plus }V_D.
\end{array}
\tag{RB.31}
\]

## 7. Result

Radiodrome is useful here as a total-variation test, not as a direct
confinement proof.

It proves that a self-sourced material WKB bath cannot keep the active
same-shape pressure-service channel alive through fixed carriers, closed
carrier cycles, or bounded refresh/bank variation. The required pursuit work
is forced into one of three explicit ledgers:
\[
  \text{carrier log-room},\qquad
  \text{weight refresh/reassembly variation},\qquad
  \text{bank log-variation}.
  \tag{RB.32}
\]

The remaining proof target is therefore not the broad phrase
"non-affine/broadband transport." It is the concrete high-Re WKB custody
problem:

\[
  \text{price or exclude }
  \sum_m
  \left(
    W_m\Delta_m
    +
    {\Delta_m\over2}V_w(I_m)
    +
    W_mV_D(I_m)
  \right)
  \tag{RB.33}
\]
for the actual same-fluid bath, or exhibit a summability-valid construction
that keeps that quantity lawful.

No confinement constant and no MPP closure are claimed.
