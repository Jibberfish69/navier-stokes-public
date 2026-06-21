---
theorem_id: forward-gold-fourbody-terminal-trace-ac-component-test-20260621
status: component-test-complete-trace-ac-reduces-to-unweighted-action-or-charged-defect
logical_landing_node: fourbody_terminal_trace_ac_component_test
edge_effect: "Tests FourBodyTerminalTraceAC.A component by component. The summed strip inequality proves no-free terminal Zeno if the four-body storage drop and legal residual have uniform terminal absolute continuity. Body I needs terminal AC of tower radius-spend and tower exchange current; Body II needs terminal AC of local energy/tower storage, signed current, and viscous/tower loss; Body III needs no-loss relay/tightness so terminal atoms do not survive as weak packet defects; Body IV needs terminal AC of the deformation/strain clock or a charged geometry defect. Each component trace modulus is exactly an unweighted same-carrier action/no-waste/trace theorem, not a consequence of physical energy or fixed-cylinder smoothness. Thus the component test does not close the gold theorem; it identifies the precise strict no-waste production sites."
parents:
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-no-free-terminal-zeno-fourbody-direct-attempt-20260621.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-bodyi-factorial-tower-radius-spend-normal-form-20260621.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-bodyii-participation-exchange-normal-form-20260621.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-bodyiii-no-loss-relay-normal-form-20260621.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-bodyiv-deformation-gradient-return-normal-form-20260621.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-terminal-trace-nowaste-direct-test-20260621.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-upgraded-four-body-current-frontier-20260621.md
---

# Four-Body Terminal Trace AC Component Test

Date: 2026-06-21

## 0. Aim

The direct no-free Zeno four-body attempt reduced the terminal donor-chain
problem to the strip estimate

\[
cA_m((-\theta,0])
\le
R_m((-\theta,0])
+
L_{4B,m}(-\theta)-L_{4B,m}(0).
\tag{FTT.1}
\]

So the required supplier is

\[
\boxed{
\lim_{\theta\downarrow0}
\limsup_m
\left(
R_m((-\theta,0])
+
\left[L_{4B,m}(-\theta)-L_{4B,m}(0)\right]_+
\right)
=0.
}
\tag{FTT.2}
\]

This note tests `(FTT.2)` against the actual four body storages.

The result is exact: fixed preterminal smoothness gives absolute continuity for
each single \(m\), but the gold theorem needs a uniform terminal modulus across
the Zeno family.  That uniform modulus is precisely an unweighted same-carrier
action/no-waste theorem.

## 1. Component sufficient condition

Write the summed storage as

\[
L_{4B,m}
=
L_{S,m}+L_{Q,m}+L_{C,m}+L_{G,m},
\tag{FTT.3}
\]

where \(S,Q,C,G\) denote tower/scale, participation, compactness/no-loss, and
geometry.

A sufficient component condition for `(FTT.2)` is

\[
\boxed{
\lim_{\theta\downarrow0}
\limsup_m
\left[
L_{i,m}(-\theta)-L_{i,m}(0)
\right]_+
=0
\qquad
i\in\{S,Q,C,G\},
}
\tag{FTT.4}
\]

and

\[
\boxed{
\lim_{\theta\downarrow0}
\limsup_m
R_m((-\theta,0])=0.
}
\tag{FTT.5}
\]

This is stronger than needed because it forbids cancellations between storage
components.  It is the right exact test: any proof using cancellation between
unidentified terminal jumps would need an additional signed identity showing
that those jumps are the same carrier.  No such cancellation identity is
installed.

## 2. Body I trace test

Body I has

\[
dL_S+dD_S^{rad}=dJ_{SQ}.
\tag{FTT.6}
\]

On \((-\theta,0]\),

\[
L_S(-\theta)-L_S(0)
=
D_S^{rad}((-\theta,0])
-
J_{SQ}((-\theta,0]).
\tag{FTT.7}
\]

Therefore

\[
\left[L_S(-\theta)-L_S(0)\right]_+
\le
D_S^{rad}((-\theta,0])
+
J_{SQ}^-((-\theta,0]).
\tag{FTT.8}
\]

Thus Body-I terminal trace AC follows from

\[
\lim_{\theta\downarrow0}
\limsup_m
\left(
D_{S,m}^{rad}((-\theta,0])
+
J_{SQ,m}^-((-\theta,0])
\right)=0.
\tag{FTT.9}
\]

But \(D_S^{rad}\) is exactly the moving factorial-radius spend, and
\(J_{SQ}\) is the tower exchange current.  A terminal Zeno packet can have
order-one normalized tower activity in every last heat-scale strip while the
physical cost is radius-discounted.  So `(FTT.9)` is an unweighted tower
radius-spend / tower-current terminal modulus.  It is not produced by the
factorial cancellation itself.

Body I therefore reduces trace AC to

\[
\boxed{
\text{unweighted same-carrier tower radius-spend/current tail depletion,}
}
\tag{FTT.10}
\]

or a charged tower trace defect.

## 3. Body II trace test

Body II has

\[
dM+dD=dJ.
\tag{FTT.11}
\]

On the terminal strip,

\[
M(-\theta)-M(0)
=
D((-\theta,0])
-
J((-\theta,0]).
\tag{FTT.12}
\]

Hence

\[
\left[M(-\theta)-M(0)\right]_+
\le
D((-\theta,0])
+
J^-((-\theta,0]).
\tag{FTT.13}
\]

So Body-II terminal trace AC follows from

\[
\lim_{\theta\downarrow0}
\limsup_m
\left(
D_m((-\theta,0])
+
J_m^-((-\theta,0])
\right)=0.
\tag{FTT.14}
\]

The identity proves visibility of a terminal pulse as storage drop, dissipation,
or negative current.  It does not prove that those terminal pieces vanish.

At heat scale, the normalized dissipation/action can remain order-one while the
physical dissipation is weighted by the radius.  The signed current can also
retain a terminal atom unless the negative partner is retained, legally charged,
or absorbed by the full loop.

Body II therefore reduces trace AC to

\[
\boxed{
\text{terminal AC of local energy/tower storage, viscous/tower loss, and signed
participation current on the same carrier,}
}
\tag{FTT.15}
\]

which is exactly strict no-waste, source-square/critical-density reserve, or
signed-polar saturation in Body-II language.

## 4. Body III trace test

Body III relays packet measures through weak-star compactness.  The relay
criterion says the weak packet exists, but the no-loss theorem is

\[
\mathcal P_*=\mathcal P[U,\Pi],
\tag{FTT.16}
\]

or else the mismatch is a charged relay defect \(K_C^+\).

Weak-star compactness does not remove terminal atoms.  A sequence of terminal
source curves

\[
a_m(s)\,ds
\rightharpoonup
a_*\delta_0
\tag{FTT.17}
\]

is a valid weak-star limit of finite measures.  Thus Body III can relay the
terminal atom unless the no-loss identification proves that the atom belongs to
the canonical limiting Navier-Stokes packet and is illegal there, or unless the
atom is charged to \(K_C^+\).

Body III therefore reduces trace AC to

\[
\boxed{
\text{selected-carrier tightness/no-loss at the terminal face,}
}
\tag{FTT.18}
\]

or a charged compactness/no-loss defect.

## 5. Body IV trace test

Body IV is controlled by the same-carrier deformation clock

\[
\Gamma_{A_0}(t_0,t)
=
\int_{t_0}^{t}
\|S(X(\cdot,\tau),\tau)\|_{L^\infty(A_0)}\,d\tau.
\tag{FTT.19}
\]

Finite \(\Gamma\) recertifies the pulled-back metric and returns the packet to
Body I.  Terminal trace AC for the geometry storage follows from a uniform
terminal modulus

\[
\lim_{\theta\downarrow0}
\limsup_m
\int_{-\theta}^{0}
A_{{\rm geom},m}(s)\,ds
=0,
\tag{FTT.20}
\]

where \(A_{\rm geom}\) is the normalized strain/deformation activity controlling
the metric coefficients.

The heat-scale calculation in the Body-IV note shows the obstruction: an
order-one normalized strain clock on each shrinking heat window has only
radius-discounted physical dissipation.  So `(FTT.20)` is not produced by
energy.

Body IV therefore reduces trace AC to

\[
\boxed{
\text{unweighted same-carrier deformation/strain-clock terminal modulus,}
}
\tag{FTT.21}
\]

or a charged geometry defect.

## 6. Legal residual trace

The legal residual also needs terminal absolute continuity:

\[
\lim_{\theta\downarrow0}
\limsup_m
R_m((-\theta,0])=0.
\tag{FTT.22}
\]

Finite legal mass is not enough.  A legal measure can have the same endpoint
atom model

\[
R_m(ds)=a\,\tau_m^{-1}{\bf 1}_{(-\tau_m,0]}(s)\,ds.
\tag{FTT.23}
\]

So legal residuals must either have a terminal modulus, be charged as a CM
Part/Field terminal failure, or be included in a strict no-waste reserve.

## 7. Current state

The component test does not prove `FourBodyTerminalTraceAC.A`.

It proves the exact reduction:

\[
\boxed{
\begin{gathered}
\text{Body-I tower-radius/current tail depletion}\\
+\text{Body-II participation storage/loss/current tail depletion}\\
+\text{Body-III terminal no-loss/tightness}\\
+\text{Body-IV deformation-clock tail depletion}\\
+\text{legal residual terminal AC}
\\
\Longrightarrow
\text{FourBodyTerminalTraceAC.A}.
\end{gathered}
}
\tag{FTT.24}
\]

Each line of `(FTT.24)` is an unweighted same-carrier theorem or a charged
defect theorem.  Current Navier-Stokes energy/local-energy inputs supply
fixed-\(m\) preterminal absolute continuity and radius-discounted physical
budgets.  They do not supply the uniform terminal modulus across the Zeno
family.

Thus the strict no-waste target has been sharpened:

\[
\boxed{
\text{the needed no-waste theorem is not a generic monotonicity statement;}
}
\tag{FTT.25}
\]

it is the simultaneous terminal absolute continuity of the tower,
participation, compactness/no-loss, geometry, and legal residual records on the
same selected carrier.
