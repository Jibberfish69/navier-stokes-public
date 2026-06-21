---
ns_viewer:
  theorem_id: forward-gold-exact-nonlinear-duhamel-terminal-split-20260621
  status: exact-identity-installed-no-terminal-smoothing-closure
  proof_role: forward_gold_exact_nonlinear_duhamel_identity
  logical_landing_node: exact_nonlinear_duhamel_terminal_split
  edge_effect: "Installs the exact Leray-Duhamel identity for the rescaled Navier-Stokes equation. This is not a linear approximation: the source is the actual Leray-projected nonlinearity -P div(v tensor v), with pressure removed only by the exact incompressible projection. The identity separates old heat-smoothed data from the terminal nonlinear contribution. Material born before a positive time gap has heat smoothing time; material supplied on the terminal sublayer has vanishing smoothing time. This proves only the supplier boundary: heat smoothing alone does not give endpoint UI or uniform coupled tower radius. The remaining burden is a same-carrier estimate on the actual nonlinear/pressure contribution."
  upstream_origin:
    - problems/navier-stokes/theorem-construction/mpp-forward-gold-terminal-duhamel-smoothing-does-not-produce-uniform-radius-20260621.md
    - problems/navier-stokes/theorem-construction/mpp-forward-gold-mixed-derivative-tower-participation-law-20260621.md
    - problems/navier-stokes/theorem-construction/mpp-forward-gold-duhamel-maximal-regularity-square-reserve-test-20260620.md
  downstream_consequence: "Future Duhamel or viscosity arguments must start from the exact nonlinear split here. The old-data portion may be heat-smoothed after a positive time gap. The terminal sublayer remains the same-carrier nonlinear source problem and must be controlled by endpoint UI, unweighted action, strict no-waste, source-square domination, or profile production."
---

# MPP Forward-Gold Exact Nonlinear Duhamel Terminal Split

Date: 2026-06-21

## Status

This note records the exact Duhamel identity that belongs to Navier-Stokes.
It does not replace the nonlinear equation by a linear forced equation.

Exactness scope. The identities below are identities for the smooth
preterminal rescaled Navier-Stokes sequence \(v_j\). Passing any term to a
terminal weak or profile limit is a separate compactness/convergence theorem;
it is not supplied by this Duhamel identity itself.

The point is narrow:

\[
\boxed{
\text{Duhamel separates old heat-smoothed material from terminal nonlinear
material, but it does not bound the terminal nonlinear material.}
}
\tag{NDS.1}
\]

That is the exact correction to any phrase like "viscosity re-injects radius."

## 1. Rescaled Navier-Stokes with Leray projection

On a terminal heat-scale cylinder, write

\[
v_j(s,y)
=
r_j u(T+r_j^2s,x_\ast+r_jy),
\qquad
q_j(s,y)
=
r_j^2 p(T+r_j^2s,x_\ast+r_jy).
\tag{NDS.2}
\]

Then

\[
\partial_s v_j+(v_j\cdot\nabla)v_j+\nabla q_j
=
\nu\Delta v_j,
\qquad
\nabla\cdot v_j=0.
\tag{NDS.3}
\]

Since \(\nabla\cdot v_j=0\),

\[
(v_j\cdot\nabla)v_j
=
\nabla\cdot(v_j\otimes v_j).
\tag{NDS.4}
\]

Let \(\mathbb P\) be the Leray projection onto divergence-free vector fields.
Applying \(\mathbb P\) to `(NDS.3)` gives the exact projected equation

\[
\partial_s v_j-\nu\Delta v_j
=
N_j,
\qquad
N_j:=
-\mathbb P\nabla\cdot(v_j\otimes v_j).
\tag{NDS.5}
\]

This is not a linear approximation. The term \(N_j\) is the actual
incompressible Navier-Stokes nonlinearity, with pressure removed by the exact
projection.

## 2. Exact Duhamel identity

For

\[
-1\le a<b\le0,
\tag{NDS.6}
\]

the exact mild identity is

\[
v_j(b)
=
e^{\nu(b-a)\Delta}v_j(a)
+
\int_a^b
e^{\nu(b-\sigma)\Delta}N_j(\sigma)\,d\sigma.
\tag{NDS.7}
\]

Taking \(b=0\), \(a=-1\), and splitting at a fixed
\(\theta\in(0,1)\), one gets

\[
\begin{aligned}
v_j(0)
&=
e^{\nu\Delta}v_j(-1)\\
&\quad+
\int_{-1}^{-\theta}
e^{\nu(-\sigma)\Delta}N_j(\sigma)\,d\sigma\\
&\quad+
\int_{-\theta}^{0}
e^{\nu(-\sigma)\Delta}N_j(\sigma)\,d\sigma.
\end{aligned}
\tag{NDS.8}
\]

The first two terms have at least \(\theta\) units of heat time before the
endpoint. The last term has heat time in the interval \([0,\theta]\).

## 3. What smoothing actually gives

For \(k\ge0\), the heat semigroup estimate gives

\[
\|\nabla^k e^{\nu r\Delta}f\|_{L^2}
\le
C_k(\nu r)^{-k/2}\|f\|_{L^2},
\qquad
r>0.
\tag{NDS.9}
\]

Therefore the terminal nonlinear sublayer in `(NDS.8)` satisfies

\[
\left\|
\nabla^k
\int_{-\theta}^{0}
e^{\nu(-\sigma)\Delta}N_j(\sigma)\,d\sigma
\right\|_{L^2}
\le
C_k\nu^{-k/2}
\int_{-\theta}^{0}
(-\sigma)^{-k/2}
\|N_j(\sigma)\|_{L^2}\,d\sigma.
\tag{NDS.10}
\]

This is the exact obstruction. The heat factor becomes singular as
\(\sigma\uparrow0\). Thus a terminal layer is controlled only if the actual
nonlinear source has enough same-carrier strength near the endpoint.

Duhamel gives the split. It does not provide that strength.

## 4. Mixed tower version

For the mixed tower

\[
W_{j,m,\alpha}
=
\partial_s^m\partial_y^\alpha v_j,
\tag{NDS.11}
\]

apply \(\partial_s^m\partial_y^\alpha\) to `(NDS.5)`. Since
\(\mathbb P\), \(\partial_s\), and \(\partial_y^\alpha\) commute on
\(\mathbb R^3\),

\[
\partial_s W_{j,m,\alpha}
-\nu\Delta W_{j,m,\alpha}
=
F_{j,m,\alpha},
\tag{NDS.12}
\]

where

\[
F_{j,m,\alpha}
:=
-\partial_s^m\partial_y^\alpha
\mathbb P\nabla\cdot(v_j\otimes v_j).
\tag{NDS.13}
\]

Hence

\[
W_{j,m,\alpha}(0)
=
e^{\nu\theta\Delta}W_{j,m,\alpha}(-\theta)
+
\int_{-\theta}^{0}
e^{\nu(-\sigma)\Delta}
F_{j,m,\alpha}(\sigma)\,d\sigma.
\tag{NDS.14}
\]

Formula `(NDS.14)` is the tower-level Duhamel identity. It is exact, but it is
not a radius lower bound. A positive coupled tower radius requires a bound on
the terminal source rungs \(F_{j,m,\alpha}\) in the same factorial/Gevrey
currency as the tower.

## 5. Local selected-carrier caveat

The identity above is global on \(\mathbb R^3\). The selected carrier in the
gold route is local. After multiplying by a spatial cutoff \(\eta\), the heat
operator no longer commutes with the localization:

\[
(\partial_s-\nu\Delta)(\eta v_j)
=
\eta N_j
-\nu[\Delta,\eta]v_j.
\tag{NDS.15}
\]

The commutator is

\[
[\Delta,\eta]v_j
=
(\Delta\eta)v_j+2\nabla\eta\cdot\nabla v_j.
\tag{NDS.16}
\]

Thus a selected-carrier Duhamel proof must also pay cutoff/collar terms. The
global identity cannot be silently localized without these terms.

There is also a projected-source localization cost. If

\[
L F:=\mathbb P\nabla\cdot F,
\qquad
F=v_j\otimes v_j,
\tag{NDS.17}
\]

then

\[
\eta N_j
=
-L(\eta F)-[\eta,L]F,
\tag{NDS.18}
\]

where

\[
[\eta,L]F
:=
\eta L F-L(\eta F).
\tag{NDS.19}
\]

So the local selected source is not merely the global nonlinear source
multiplied by \(\eta\). It carries a Leray/cutoff commutator that must be paid
or retained on the same ledger.

## Verdict

The exact Navier-Stokes Duhamel fact is:

\[
\boxed{
v_j(0)
=
e^{\nu\Delta}v_j(-1)
+
\int_{-1}^{0}
e^{\nu(-\sigma)\Delta}
\big[-\mathbb P\nabla\cdot(v_j\otimes v_j)\big](\sigma)\,d\sigma.
}
\tag{NDS.20}
\]

Splitting the integral gives old material with positive smoothing time and a
terminal nonlinear layer with vanishing smoothing time:

\[
\boxed{
\int_{-\theta}^{0}
e^{\nu(-\sigma)\Delta}
\big[-\mathbb P\nabla\cdot(v_j\otimes v_j)\big](\sigma)\,d\sigma.
}
\tag{NDS.21}
\]

So the remaining gold theorem cannot be "viscosity smooths it." It must be a
same-carrier theorem controlling the actual nonlinear/pressure contribution:

\[
\boxed{
\text{endpoint UI, unweighted action, strict no-waste, source-square domination,
or profile production.}
}
\tag{NDS.22}
\]
