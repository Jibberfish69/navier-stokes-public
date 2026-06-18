# MPP Marvin Upstream Object-Formalization Closure Note

## Status

Theorem-facing localization packet.

Role: discharge the promoted Marvin upstream object-formalization obligations that
remain after the retained six-burden class-membership packet has been recorded as
conditionally terminally closed.

This note does not reopen

```math
LCI.A,\ CJ.A_{\mathrm{low}}.7,\ FCI.5f,\ OFP.A,\ CFI.A,\ End_{NS}.
\tag{MUP.0}
```

Those remain governed by
[mpp-terminal-class-membership-six-burden-closure-note.md](/Users/thomasbirnie/Workspace/ToE/Research-Consolidation/problems/navier-stokes/theorem-construction/mpp-terminal-class-membership-six-burden-closure-note.md).

The job here is narrower: promote the upstream mixed-jet, strict-shadow,
Hopf/shuffle, Lagrangian, Lemma 4B, and energy-insufficiency material into local
theorem objects with the correct route status.

## Discharge Ledger

| Obligation | Local discharge |
| --- | --- |
| `marvin-upstream-eb3fabeeac46` | `MUP.CLAY`: Clay-target route ingredients are localized as the official target, the mixed-jet tower, the strict-shadow/export sidecar, and the conditional six-burden attachment surface. |
| `marvin-upstream-ada9835aa864` | `MUP.QC`: the mixed-jet `H^s` transport-plus-pressure quadratic convolution theorem is formalized. |
| `marvin-upstream-6d929e8a052a` | `MUP.NEXT`: the next-time weighted mixed-jet envelope inequality is formalized. |
| `marvin-upstream-954339945793` | `MUP.SHADOW`: strict-shadow / Route A material is localized as downstream export context and not a replacement for the main conditional packet. |
| `marvin-upstream-96892bab139f` | `MUP.CLAY2`: the two Clay whole-space reductions are localized as radius-loss weighted mixed-jet energy and Euclidean strict-shadow discharge criterion. |
| `marvin-upstream-409f183ee495` | `MUP.HOPF`: the Hopf/shuffle refinement is packaged as an algebraic theorem object. |
| `marvin-upstream-c8f7cb511776` | `MUP.LAG6`: the refined Lagrangian six-lemma route is localized as a reserve analytic route. |
| `marvin-upstream-e2f5b0a915cf` | `MUP.4B`: the Lemma 4B geometry-testing ladder is completed as a theorem-facing decision packet. |
| `debt-global-energy-or-enstrophy-control-is-necessary-but-not-sufficient` | `MUP.EI`: energy/enstrophy is recorded as necessary infrastructure but not a closure mechanism. |

## Proposition `MUP.CLAY` (Clay-target route ingredients are localized)

The official target remains the three-dimensional incompressible Navier-Stokes
problem on either `R^3` or `T^3`. In the whole-space branch, the datum class is
smooth, divergence-free, and rapidly decaying on `R^3`; in the periodic branch,
the datum class is smooth, divergence-free, and periodic on `T^3`.

The localized route ingredients are the following.

1. The classical mixed-jet tower:

```math
J_{m,\alpha}:=\partial_t^m\partial_x^\alpha u,
\qquad
\Pi_{m,\alpha}:=\partial_t^m\partial_x^\alpha p.
\tag{MUP.1}
```

2. The differentiated equation:

```math
\partial_t J_{m,\alpha}
+
\sum_{a=0}^{m}\sum_{\beta\le\alpha}
\binom ma\binom{\alpha}{\beta}
(J_{a,\beta}\cdot\nabla)J_{m-a,\alpha-\beta}
+
\nabla\Pi_{m,\alpha}
=
\nu\Delta J_{m,\alpha}.
\tag{MUP.2}
```

3. The differentiated pressure law:

```math
-\Delta\Pi_{m,\alpha}
=
\partial_i\partial_j
\sum_{a=0}^{m}\sum_{\beta\le\alpha}
\binom ma\binom{\alpha}{\beta}
(J_{a,\beta})_i(J_{m-a,\alpha-\beta})_j.
\tag{MUP.3}
```

4. The route-local conditional class-membership packet `(MUP.0)`, which is a
retained-window `Pack/Part/Field` closure surface and not a mixed-jet theorem.

5. The strict-shadow / Euclidean export sidecar, which is downstream context
unless its own splice, full-data lift, strict-shadow, and carrier-control
hypotheses are supplied.

Therefore the upstream Clay-target reduction is localized as a route map, not as
a new unconditional theorem:

```math
\boxed{
\text{Clay target}
\Rightarrow
\text{mixed-jet route objects}
\quad\text{or}\quad
\text{Euclidean strict-shadow export objects}
\quad\text{plus the separate retained class-membership packet}.
}
\tag{MUP.4}
```

This discharges `marvin-upstream-eb3fabeeac46` as local object-formalization.

## Theorem `MUP.QC` (Mixed-jet `H^s` quadratic convolution)

Fix `s>3/2`. Define

```math
T_{m,\alpha}
:=
\sum_{a=0}^{m}\sum_{\beta\le\alpha}
\binom ma\binom{\alpha}{\beta}
(J_{a,\beta}\cdot\nabla)J_{m-a,\alpha-\beta}.
\tag{MUP.5}
```

Then

```math
\|T_{m,\alpha}\|_{H^{s-1}}
+
\|\nabla\Pi_{m,\alpha}\|_{H^{s-1}}
\le
C_s
\sum_{a=0}^{m}\sum_{\beta\le\alpha}
\binom ma\binom{\alpha}{\beta}
\|J_{a,\beta}\|_{H^s}
\|J_{m-a,\alpha-\beta}\|_{H^s}.
\tag{MUP.6}
```

With factorial weights

```math
w_{m,\alpha}(\tau,r):={\tau^m r^{|\alpha|}\over m!\,\alpha!}
\tag{MUP.7}
```

and weighted envelopes

```math
\mathfrak A_s(\tau,r):=
\sum_{m,\alpha}w_{m,\alpha}\|J_{m,\alpha}\|_{H^s},
\tag{MUP.8}
```

```math
\mathfrak T_s(\tau,r):=
\sum_{m,\alpha}w_{m,\alpha}\|T_{m,\alpha}\|_{H^{s-1}},
\qquad
\mathfrak P_s(\tau,r):=
\sum_{m,\alpha}w_{m,\alpha}\|\nabla\Pi_{m,\alpha}\|_{H^{s-1}},
\tag{MUP.9}
```

one has

```math
\boxed{
\mathfrak T_s(\tau,r)+\mathfrak P_s(\tau,r)
\le
C_s\mathfrak A_s(\tau,r)^2.
}
\tag{MUP.10}
```

### Proof

For transport, `H^s(R^3)` is an algebra when `s>3/2`, and

```math
\|(f\cdot\nabla)g\|_{H^{s-1}}
\le C_s\|f\|_{H^s}\|g\|_{H^s}.
\tag{MUP.11}
```

For pressure, the operator

```math
F\mapsto \nabla(-\Delta)^{-1}\partial_i\partial_jF_{ij}
\tag{MUP.12}
```

is order `1`, hence maps `H^s` to `H^{s-1}`. Applying the product estimate to
the tensor in `(MUP.3)` gives `(MUP.6)`. Multiplying by `w_{m,\alpha}` and using

```math
{1\over m!\alpha!}
\binom ma\binom{\alpha}{\beta}
=
{1\over a!\beta!(m-a)!(\alpha-\beta)!}
\tag{MUP.13}
```

turns the binomial sum into the ordinary product of the weighted series. This
proves `(MUP.10)` and discharges `marvin-upstream-ada9835aa864`.

## Theorem `MUP.NEXT` (Next-time weighted mixed-jet envelope)

Define the next-time envelope at natural regularity by

```math
\mathfrak A^{next}_{s-1}(\tau,r)
:=
\sum_{m,\alpha}
{\tau^m r^{|\alpha|}\over m!\,\alpha!}
\|J_{m+1,\alpha}\|_{H^{s-1}}.
\tag{MUP.14}
```

Define the weighted dissipative envelope

```math
\mathfrak D_s^{(2)}(\tau,r)
:=
\sum_{m,\alpha}
{\tau^m r^{|\alpha|}\over m!\,\alpha!}
\|\Delta J_{m,\alpha}\|_{H^{s-1}}.
\tag{MUP.15}
```

Then

```math
\boxed{
\mathfrak A^{next}_{s-1}(\tau,r)
\le
\nu\,\mathfrak D_s^{(2)}(\tau,r)
+
C_s\,\mathfrak A_s(\tau,r)^2.
}
\tag{MUP.16}
```

This is the user's shorthand

```math
A^{next}_{s-1}(\tau,r)
\le
\nu D_s(\tau,r)+C_sA_s(\tau,r)^2
\tag{MUP.17}
```

with `D_s` read as the second-order dissipative envelope `(MUP.15)`.

### Proof

From `(MUP.2)`,

```math
J_{m+1,\alpha}
=
\nu\Delta J_{m,\alpha}
-T_{m,\alpha}
-\nabla\Pi_{m,\alpha}.
\tag{MUP.18}
```

Take `H^{s-1}` norms, multiply by the same factorial weight
`w_{m,\alpha}`, sum over `(m,\alpha)`, and use `(MUP.10)`. This gives
`(MUP.16)` and discharges `marvin-upstream-6d929e8a052a`.

## Proposition `MUP.SHADOW` (Strict-shadow reductions are downstream Route A context)

Under the exact strict-shadow identities on the exported Euclidean surface,

```math
\mathcal C(\partial_tX)=\partial_tu,
\qquad
\mathcal C(\Delta_DX)=\Delta u,
\qquad
\mathcal C(\mathbb P_DX)=\mathbb P_{\mathrm{Leray}}u,
\tag{MUP.19}
```

and

```math
\mathcal C(\mathbb P_DN_D(X))
=
\mathbb P_{\mathrm{Leray}}\big((u\cdot\nabla)u\big),
\tag{MUP.20}
```

the weak-shadow remainders vanish:

```math
\mathrm{ShadowDef}(X)\equiv 0,
\qquad
E_{\mathrm{sh}}(X)\equiv 0.
\tag{MUP.21}
```

This is a downstream corollary of exact strict shadow. It does not supply the
retained `Pack/Part/Field` class-membership packet and it does not replace
`(MUP.0)`.

Thus the strict-shadow material is localized as:

```math
\boxed{
\text{Route A export sidecar, consumer-only unless its own inputs are supplied.}
}
\tag{MUP.22}
```

This discharges `marvin-upstream-954339945793`.

## Proposition `MUP.CLAY2` (Two Clay whole-space reductions)

The two whole-space reductions promoted from Marvin are localized as follows.

### Classical radius-loss mixed-jet reduction

With squared factorial weights,

```math
\mathfrak E_s(\tau,r)
:=
\sum_{m,\alpha}w_{m,\alpha}(\tau,r)^2
\|J_{m,\alpha}\|_{H^s}^2,
\qquad
\mathfrak D_s(\tau,r)
:=
\sum_{m,\alpha}w_{m,\alpha}(\tau,r)^2
\|\nabla J_{m,\alpha}\|_{H^s}^2,
\tag{MUP.23}
```

the local weighted energy reduction supplies

```math
{1\over2}{d\over dt}\mathfrak E_s(\tau,r)
+
{3\nu\over4}\mathfrak D_s(\tau,r)
\le
C_{s,\nu}\big(1+\mathfrak A_s(\tau,r)^2\big)\mathfrak E_s(\tau,r).
\tag{MUP.24}
```

For `0<=\tau_0<\tau_1` and `0<=r_0<r_1`, the radius-loss comparison gives

```math
\mathfrak A_s(\tau_0,r_0)^2
\le
C(\tau_0,\tau_1,r_0,r_1)\mathfrak E_s(\tau_1,r_1).
\tag{MUP.25}
```

So the classical route is reduced to no-loss or globally propagated closure of
the weighted scale. It is not blocked by rung combinatorics.

### Euclidean strict-shadow discharge criterion

On the exported Euclidean surface, the whole-space consumer branch closes if
the following are supplied:

```math
(A1a)\quad\text{full-data Euclidean lift/readout coverage},
\tag{MUP.26}
```

```math
(A1b)\quad\text{exact strict-shadow descent on the Euclidean window},
\tag{MUP.27}
```

```math
(A1c)\quad\sup_{t\ge0}\|X(t)\|_{H_D^s}<\infty,\qquad s>5/2.
\tag{MUP.28}
```

Then `u=\mathcal C(X)` solves the classical whole-space equation and

```math
\sup_{t\ge0}\|u(t)\|_{H^s}
\le
C\sup_{t\ge0}\|X(t)\|_{H_D^s}
<
\infty,
\tag{MUP.29}
```

which is a continuation-level bound.

The local decision is therefore:

```math
\boxed{
\text{classical whole-space reduction }=\text{ radius-loss weighted scale problem,}
}
\tag{MUP.30}
```

```math
\boxed{
\text{Route A whole-space reduction }=(A1a)+(A1b)+(A1c)
\text{ after the export splice.}
}
\tag{MUP.31}
```

This discharges `marvin-upstream-96892bab139f`.

## Theorem `MUP.HOPF` (Hopf/shuffle object formalization)

Let `H_t=R[\theta]` with primitive generator

```math
\Delta\theta=\theta\otimes1+1\otimes\theta.
\tag{MUP.32}
```

In the divided-power basis `\gamma_n:=\theta^n/n!`,

```math
\Delta\gamma_n
=
\sum_{k=0}^{n}\gamma_k\otimes\gamma_{n-k}.
\tag{MUP.33}
```

For the full mixed-jet tower, let derivative letters

```math
\tau,\xi_1,\xi_2,\xi_3
\tag{MUP.34}
```

be primitive. For `A=(m,\alpha)` set

```math
\Theta^A:=\tau^m\xi^\alpha,
\qquad
\Gamma_A:={1\over m!\alpha!}\Theta^A.
\tag{MUP.35}
```

Then

```math
\Delta\Theta^A
=
\sum_{0\le r\le m}\sum_{0\le\beta\le\alpha}
\binom mr\binom{\alpha}{\beta}
\Theta^{(r,\beta)}\otimes\Theta^{(m-r,\alpha-\beta)},
\tag{MUP.36}
```

and

```math
\Delta\Gamma_A
=
\sum_{B\le A}\Gamma_B\otimes\Gamma_{A-B}.
\tag{MUP.37}
```

With `B(f,g):=(f\cdot\nabla)g`, the differentiated transport term is the image
of the coproduct:

```math
\partial^A\big((u\cdot\nabla)u\big)
=
B\big((J\otimes J)\Delta\Theta^A\big).
\tag{MUP.38}
```

After transport recentering, the commutator defect is the image of the
left-reduced coproduct:

```math
\widetilde T_A
:=
\partial^A\big((u\cdot\nabla)u\big)
-
(u\cdot\nabla)J_A
=
B\big((J\otimes J)\Delta_L'\Theta^A\big).
\tag{MUP.39}
```

This is the theorem object. It says Hopf/shuffle is the exact algebra of the
differentiated product rule and the recentered transport defect. It is not a
closure theorem, not wedge-Hopf topology, and not a substitute for the analytic
drain.

This discharges `marvin-upstream-409f183ee495`.

## Proposition `MUP.LAG6` (Lagrangian six-lemma route localized)

On the Lagrangian surface, let

```math
X(a,t)\text{ be the flow map},\qquad
F:=\nabla_aX,\qquad
A:=F^{-1},\qquad
G:=AA^\top,
\tag{MUP.40}
```

and

```math
v(a,t):=u(X(a,t),t),
\qquad
q(a,t):=p(X(a,t),t).
\tag{MUP.41}
```

The pulled-back equation is

```math
\partial_tv+A^\top\nabla_aq
=
\nu\,\mathrm{div}_a(G\nabla_av).
\tag{MUP.42}
```

The localized six-lemma route is:

1. differentiated Lagrangian decomposition;
2. deformation-adapted energy and coercivity;
3. ellipticity and frame-coefficient window;
4. coefficient-commutator absorption;
5. no-loss pressure recovery;
6. Lagrangian-to-Eulerian transfer back into the lifted tail.

In formulas, with `U_\alpha:=\partial_a^\alpha v` and
`Q_\alpha:=\partial_a^\alpha q`, the key differentiated equation is

```math
\partial_tU_\alpha
+
A^\top\nabla_aQ_\alpha
=
\nu\,\mathrm{div}_a(G\nabla_aU_\alpha)
+
\mathcal C_\alpha^v.
\tag{MUP.43}
```

This route is now a local reserve analytic route with one decisive pressure
contract:

```math
|\langle Q_\alpha,\mathcal P_\alpha\rangle|
\le
\varepsilon(\mathcal D_r^{Lag}+\mathcal C_r^{Lag})
+
C_\varepsilon\mathcal K_r^{Lag}.
\tag{MUP.44}
```

It is not promoted over the retained six-burden packet `(MUP.0)`. It remains an
alternative analytic drain for the Hopf/shuffle survivor and the Lagrangian
deformation commutator.

This discharges `marvin-upstream-c8f7cb511776`.

## Proposition `MUP.4B` (Lemma 4B geometry-testing ladder completed)

Let `L_G` denote the divergence-form operator

```math
L_G\Phi:=-\mathrm{div}_a(G\nabla_a\Phi).
\tag{MUP.45}
```

For a constraint defect

```math
\mathcal P_\alpha=\mathrm{div}_a\mathcal Z_\alpha,
\tag{MUP.46}
```

define the test potential and test field by

```math
L_G\Phi_\alpha=\mathrm{div}_a\mathcal Z_\alpha,
\qquad
W_\alpha^{test}:=A^\top\nabla_a\Phi_\alpha.
\tag{MUP.47}
```

The completed ladder is:

1. Energy-level test-field control is valid:

```math
\|\nabla_a\Phi_\alpha\|_2+\|W_\alpha^{test}\|_2
\le
C\|\mathcal Z_\alpha\|_2.
\tag{MUP.48}
```

2. Strong test-geometry control is a Lipschitz-coefficient estimate:

```math
\|\nabla_aW_\alpha^{test}\|_2
\le
C\big(\|\nabla_a\mathcal Z_\alpha\|_2+\|\mathcal Z_\alpha\|_2\big),
\tag{MUP.49}
```

assuming the corresponding ellipticity and coefficient window.

3. The naive same-depth bound is false:

```math
\|\nabla_aW_\alpha^{test}\|_2
\le C_{same}
\|\mathcal Z_\alpha\|_2
\tag{MUP.50}
```

cannot hold even in the constant-coefficient model, because
`\nabla^2(-\Delta)^{-1}\mathrm{div}` is order `1` on `\mathcal Z_\alpha`.

Define the weighted bilinear form

```math
\mathcal B_G(X,Y)
:=
\int G\nabla_a\Phi[X]:\nabla_a\Phi[Y]
=
-\int X\cdot\nabla_a\Phi[Y].
\tag{MUP.51}
```

The pressure pairing is then localized as

```math
\langle A^\top\nabla_aQ_\alpha,U_\alpha\rangle
=
\mathcal B_G(W_\alpha,\mathcal Z_\alpha),
\tag{MUP.52}
```

with the viscous-pressure part

```math
I_\alpha^{vp}
=
\nu\,\mathcal B_G\big(A\,\mathrm{div}_a(G\nabla_aU_\alpha),\mathcal Z_\alpha\big).
\tag{MUP.53}
```

Therefore Lemma 4B is narrowed to exactly two viable theorem programs:

```math
\boxed{
\text{prove a cancellation/renormalization reducing }I_\alpha^{vp}
\text{ to Dirichlet and commutator ledgers,}
}
\tag{MUP.54}
```

or

```math
\boxed{
\text{prove a same-depth theorem directly for }\mathcal B_G.
}
\tag{MUP.55}
```

The old target `(MUP.50)` is ruled out. This is the completed local
geometry-testing decision and discharges `marvin-upstream-e2f5b0a915cf`.

## Lemma `MUP.EI` (Energy/enstrophy is necessary but insufficient)

The baseline energy/enstrophy estimate

```math
\sup_{t\in[0,T]}\|u(t)\|_{L^2_x}^2
+
2\nu\int_0^T\|\nabla u(t)\|_{L^2_x}^2\,dt
\le
C_E
\tag{MUP.56}
```

is necessary for any regular classical route because it follows from the
classical energy identity. It is not sufficient for the present theorem route.

The missing information is scale-local and coercive:

```math
\boxed{
\text{baseline energy does not force the dangerous high-frequency transfer
into an absorbable dyadic tail ledger,}
}
\tag{MUP.57}
```

and

```math
\boxed{
\text{baseline enstrophy does not by itself provide the high-frequency
coercivity or commutator absorption needed for continuation.}
}
\tag{MUP.58}
```

Thus global energy/enstrophy control is infrastructure. It is not the closure
mechanism, and it must not be presented as a substitute for the scale-barrier,
class-membership, or deformation-drain packets.

This discharges the remaining packaging debt.

## Boundary

This packet proves localization and theorem-object status for the nine listed
items. It does not assert:

1. unconditional full-MPP closure;
2. that Route A replaces the retained six-burden packet;
3. that the mixed-jet radius-loss inequality gives no-loss global propagation;
4. that Hopf/shuffle combinatorics alone closes Navier-Stokes;
5. that Lemma 4B is solved by the false same-depth test-field estimate.

The terminal retained packet remains `(MUP.0)`. The local upstream obligations
are now discharged as source-backed theorem objects and route-status decisions.
