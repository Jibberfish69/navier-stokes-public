---
theorem_id: forward-gold-face-b-selfsimilar-literature-and-extraction-correction-20260709
created: 2026-07-09
problem: navier-stokes
route: forward-gold / c_0 / Face B / rescaled-limit extraction
status: proved-literature-and-object-type-correction; tower-to-full-rescaled-solution-extraction-open
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
  profiles. The exact open Gold line is therefore extraction of a nontrivial
  full rescaled Navier-Stokes solution from the retained tower, with local
  energy, pressure, recurrence, and profile topology passed. A projected or
  amplitude-normalized packet is not such a solution. No Gold closure claimed.
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
