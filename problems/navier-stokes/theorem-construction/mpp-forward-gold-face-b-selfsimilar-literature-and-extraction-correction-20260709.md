---
theorem_id: forward-gold-face-b-selfsimilar-literature-and-extraction-correction-20260709
created: 2026-07-09
problem: navier-stokes
route: forward-gold / c_0 / Face B / rescaled-limit extraction
status: proved-literature-and-object-type-correction; current-H2-to-classical-profile-extraction-refuted
source_refs:
  - problems/navier-stokes/theorem-construction/theorem-b-consolidated-statement-and-wall-maps-20260709.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-strict-goodlambda-requires-epsilon-reserve-20260626.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-radiodrome-participation-tower-relay-defect-reduction-20260706.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-surplus-zero-single-scale-c0-is-exactly-zero-counterobject-is-log-self-similar-20260706.md
external_primary_refs:
  - https://conservancy.umn.edu/items/06194408-3b10-4eac-bc6b-a09481a3f134
  - https://www.pdmi.ras.ru/~seregin/Recent%20Publications/engESS3.pdf
  - https://arxiv.org/abs/1306.0305
completion_truth: >-
  The corpus's claim that Face B is an ESS/Tsai extension to a log-marginal
  profile is refuted as stated. N_L is a dyadic tail sequence, not a velocity
  profile, so no L3 membership claim is defined before a tower-to-field map.
  ESS's L_{3,infinity} notation is the mixed space L^infinity_t L^3_x, not
  spatial weak-L3. Tsai already excludes exact backward self-similar weak
  solutions satisfying finite local energy. Chae excludes a stated class of
  locally asymptotically discretely self-similar blowups with time-periodic L3
  profiles. A direct scaling test refutes that extraction from the current H2
  hypotheses. H2 places a fixed fraction of the diverging critical-height
  record in one selected packet. Under the only scaling that preserves
  Navier-Stokes with fixed viscosity, the selected packet's local L2 mass
  diverges. Strong passage of that packet to a finite-local-energy profile is
  therefore impossible. If the full field converges only because the selected
  projection is cancelled or lost through nonlocal tails, the retained
  positive record has not passed. Dividing by the divergent packet amplitude
  restores bounded mass but changes the equation to one with divergent
  convection coefficient, or after a time change to a vanishing-viscosity
  equation. Fixed quadrupole phase also does not provide recurrence of the full
  field. Thus the current Face-B map to Tsai/Chae is refuted, while Gold itself
  remains open.
---

# Face-B correction: the missing object is the rescaled NS limit, not a "log-marginal Tsai extension"

## 1. The corpus's `N_L` is not a velocity profile

The installed tail variable is

```math
N_L=\sum_{\ell\ge L}\nu_\ell,
\qquad
N_L\simeq\frac{2^{-L}}{L+1},
\qquad
\sum_L2^LN_L=\infty.
\tag{FBE.1}
```

It is a dyadic distribution tail with a restored Bernstein weight. It is not
a spatial field `U(y)`, a spacetime field `v(s,y)`, or a norm of either one.
Consequently, statements such as

```math
N_L\notin L^3,
\qquad
N_L\notin L^{3,\infty},
\tag{FBE.2}
```

are ill-typed. A function-space obstruction exists only after an explicit map
from the tail entries `nu_l` to a full rescaled velocity and pressure has been
proved.

## 2. What ESS actually assumes

Escauriaza--Seregin--Sverak define the mixed norm `L_{s,l}(Q_T)` and state
their endpoint at `s=3`, `l=infinity`:

```math
u\in L^\infty(0,T;L^3(\mathbb R^3)).
\tag{FBE.3}
```

Their notation `L_{3,infinity}` is therefore not the spatial Lorentz space
`L^{3,infinity}(R^3)`. The theorem says that a Leray--Hopf solution bounded in
`L^3_x` uniformly in time is smooth. It does not classify an abstract dyadic
tail and it is not, by itself, a backward self-similar profile theorem.

## 3. Exact backward self-similarity is already excluded at finite local energy

Tsai's 1998 theorem has the directly relevant form: a backward self-similar
weak Navier--Stokes solution satisfying a finite local energy estimate on a
ball is identically zero. Thus, once a retained tower has been proved to
produce a nontrivial exact backward self-similar suitable/local-energy limit,
there is no additional `L^3` or log-marginal extension to prove. Tsai already
kills that branch.

For an asymptotically discretely self-similar branch, Chae's 2013 theorem
excludes locally asymptotically DSS blowup when the limiting log-time-periodic
profile lies in

```math
C^1(\mathbb R_s;L^3(\mathbb R^3)\cap C^2(\mathbb R^3)).
\tag{FBE.4}
```

This is a conditional consumer with explicit topology. It cannot be invoked
until that topology and periodic profile have been extracted from the full
field.

## 4. The first missing implication

For record centers `(t_m,x_m)` and scales `delta_m`, the NS rescaling is

```math
v_m(s,y)
=\delta_m u(t_m+\delta_m^2s,x_m+\delta_my),
\qquad
q_m(s,y)
=\delta_m^2p(t_m+\delta_m^2s,x_m+\delta_my).
\tag{FBE.5}
```

Face B needs one of the following actual passages.

```math
\begin{array}{ll}
\text{self-similar branch:}&
(v_m,q_m)\to(V,P),\quad (V,P)\text{ nontrivial, suitable, finite local
energy, and stationary in log time};\\[1mm]
\text{DSS branch:}&
(v_m,q_m)\to(V,P),\quad V\text{ nontrivial, log-time periodic, and in the
topology of }(\mathrm{FBE.4}).
\end{array}
\tag{FBE.6}
```

The required proof must pass all of:

1. a full velocity-pressure pair solving rescaled Navier--Stokes, not one
   frequency projection;
2. local energy/suitability and pressure compactness;
3. nontriviality at the record after rescaling;
4. stationarity, periodicity, or asymptotic periodicity in log time;
5. the spatial tail or `L^3` topology required by the selected Liouville
   theorem.

The current `(H2)--(H4)` display does not prove these five lines. In
particular, the order-locked tight packet used by the fixed-face compactness
lemma is a frequency-local snapshot. Its spatial tightness can give strong
`L^3` compactness for that projected packet, but the projection is not closed
under Navier--Stokes evolution and is not a suitable weak solution. Dividing a
packet by an extra amplitude normalization likewise changes the equation.

## 5. Correct Face-B trichotomy

```math
\begin{array}{lll}
\text{exact backward self-similar full limit}
&\Longrightarrow&\text{excluded by Tsai once finite local energy is passed};\\
\text{asymptotically DSS full limit in }(\mathrm{FBE.4})
&\Longrightarrow&\text{excluded by Chae};\\
\text{only the tail }N_L\simeq2^{-L}/L
&\Longrightarrow&\text{no PDE limit object has been produced.}
\end{array}
\tag{FBE.7}
```

Therefore the exact remaining theorem is
`RetainedTowerToFullRescaledRecurrentNSLimit.A`. Calling it an extension of
ESS, NRS, or Tsai hides the first failed line. If that extraction theorem
lands in either of the first two rows of `(FBE.7)`, the corresponding classical
Liouville result is already a terminal consumer. If it does not, the corpus
must state the different rescaled PDE class actually obtained before a new
Liouville theorem can be formulated.

This is a strict reduction and source correction. It does not prove the
extraction theorem or close Gold.

## 6. Direct extraction test: current H2 cannot produce the required classical profile

Write

```math
R_m:=H_{\rm crit}(t_m)\longrightarrow\infty,
\qquad
N_m\simeq\delta_m^{-1}.
\tag{FBE.8}
```

The divergence in `(FBE.8)` is the defining critical-height record climb of
the Gold counterhistory. The current H2 localization clause is

```math
\delta_m^{-1}
\left\|P_{N_m}u(t_m)\right\|_{L^2(A_m)}^2
\ge c_1R_m,
\qquad
A_m=B(x_m,C\delta_m).
\tag{FBE.9}
```

Apply the fixed-viscosity Navier--Stokes scaling `(FBE.5)`. A scale-covariant
Littlewood--Paley projection sends `P_{N_m}` to a fixed unit-frequency
projection, and `A_m` to `B_C`. Hence

```math
\left\|P_{\simeq1}v_m(0)\right\|_{L^2(B_C)}^2
=
\delta_m^{-1}
\left\|P_{N_m}u(t_m)\right\|_{L^2(A_m)}^2
\ge c_1R_m
\longrightarrow\infty.
\tag{FBE.10}
```

This gives an exact fork.

### 6.1 Retention and finite-local-energy compactness are incompatible here

If the selected packet passes strongly in `L^2_loc` to the corresponding
unit-frequency part of a finite-local-energy limit `V`, then its norms on
`B_C` are bounded. This contradicts `(FBE.10)`. The same contradiction follows
from the strong local `L^3` passage invoked for the native cubic current,
because on a bounded ball strong `L^3` convergence bounds `L^2`.

It is logically possible for the full fields `v_m` to have a local limit while
the globally defined projections in `(FBE.10)` diverge through nonlocal tails
and cancellations with other frequencies. That alternative does not prove
Face B: it loses the selected packet carrying the positive record. A separate
no-cancellation/tail theorem would be needed to identify the full-field limit
with the retained service, and once that identification is strong enough to
pass the packet, `(FBE.10)` applies.

Thus the current hypotheses do not give both objects required by Face B:

```math
\text{finite-local-energy full NS limit}
\quad+\quad
\text{strong retention of the H2 record packet}.
\tag{FBE.11}
```

### 6.2 Amplitude normalization changes the equation

Let `a_m` be any amplitude normalization large enough to bound the selected
packet; `(FBE.10)` forces `a_m\gtrsim R_m^{1/2}\to\infty` (one canonical
choice is the selected packet's own `L^2(B_C)` norm). Put

```math
w_m=\frac{v_m}{a_m},
\qquad
\pi_m=\frac{q_m}{a_m}.
\tag{FBE.12}
```

Then the exact equation is

```math
\partial_s w_m
+a_m(w_m\cdot\nabla)w_m
+\nabla\pi_m
=\nu\Delta w_m,
\qquad
\nabla\cdot w_m=0.
\tag{FBE.13}
```

This is not Navier--Stokes with a fixed nonlinearity coefficient. With the
accelerated time `\tau=a_ms`, `(FBE.13)` becomes

```math
\partial_\tau w_m
+(w_m\cdot\nabla)w_m
+\nabla\widetilde\pi_m
=\frac{\nu}{a_m}\Delta w_m,
\tag{FBE.14}
```

so any compact limit is a vanishing-viscosity/Euler object, not a
fixed-viscosity profile to which Tsai, ESS, or Chae applies. Navier--Stokes
scaling cannot normalize the divergence because `H_crit` is scale invariant.

### 6.3 Fixed phase does not supply full-field recurrence

For consecutive moving microscopes, set

```math
\lambda_m=\frac{\delta_{m+1}}{\delta_m},
\qquad
\zeta_m=\frac{x_{m+1}-x_m}{\delta_m},
\qquad
\tau_m=\frac{t_{m+1}-t_m}{\delta_m^2}.
\tag{FBE.15}
```

The same-solution identity is

```math
v_{m+1}(s,y)
=\lambda_m
v_m\!\left(\tau_m+\lambda_m^2s,
            \zeta_m+\lambda_my\right).
\tag{FBE.16}
```

The Face-B condition `V<\infty` gives convergence of one normalized
quadrupole orientation. It gives no compactness of the full state, no control
of the normalized time and space shifts in `(FBE.15)`, and no unique tangent
ensuring that `v_m` and `v_{m+1}` have the same limit. Therefore `(FBE.16)`
does not become a self-similar or DSS identity under the current hypotheses.

### 6.4 Gate result

`RetainedTowerToFullRescaledRecurrentNSLimit.A` is not merely unproved in its
current placement; the version needed to send H2 directly to the classical
finite-local-energy profile consumers is refuted by `(FBE.10)--(FBE.14)`.
Any replacement must change one of the premises: select an order-one local
concentration rather than a fixed fraction of the divergent record, produce a
different PDE limit and prove a Liouville theorem for that limit, or prove a
direct material-time rigidity without profile compactification. None of those
replacements is presently proved. This refutes the current Face-B route, not
Gold.
