---
ns_viewer:
  theorem_id: forward-gold-high-rung-radius-collapse-not-endpoint-ui-direct-test-20260621
  status: direct-test-complete-high-rung-radius-collapse-is-not-endpoint-ui-by-itself
  proof_role: forward_gold_coupled_tower_high_rung_collapse_test
  logical_landing_node: high_rung_radius_collapse_vs_endpoint_ui
  edge_effect: "Tests whether high-rung-only coupled analytic radius collapse automatically gives endpoint UI failure or a terminal atom/profile. It does not. A time-independent smooth nonanalytic localized profile can have all fixed finite Sobolev rungs bounded while every positive factorial analytic radius diverges. Its normalized selected carrier can be bounded in time, so endpoint UI holds. Therefore high-rung analytic-radius collapse is weaker than terminal time-face atom formation. To use it in the gold route one needs an additional theorem tying high-rung tail mass to the selected endpoint carrier, unweighted action, no-waste, or profile production."
  upstream_origin:
    - problems/navier-stokes/theorem-construction/mpp-forward-gold-controlled-coupled-radius-collapse-direct-test-20260621.md
    - problems/navier-stokes/theorem-construction/mpp-forward-gold-coupled-tower-radius-survival-implies-endpoint-ui-20260621.md
    - problems/navier-stokes/theorem-construction/mpp-forward-gold-same-carrier-tail-ui-production-normal-form-20260620.md
  downstream_consequence: "Do not identify high-rung-only radius collapse with endpoint UI failure. The sharpened remaining bridge is HighRungTailToSelectedEndpointCarrier.A, or one of its known equivalents: same-carrier unweighted action, strict no-waste, or minimal Zeno profile production."
---

# MPP Forward-Gold High-Rung Radius Collapse Is Not Endpoint UI By Itself

Date: 2026-06-21

## Status

This note tests whether the high-rung-only branch from canonical coupled radius
collapse already gives the endpoint obstruction:

\[
\boxed{
\text{high-rung-only coupled radius collapse}
\Longrightarrow
\neg\text{SelectedCarrierEndpointUI.A}.
}
\tag{HRC.1}
\]

The implication is false at this level. High-rung analytic-radius collapse can
mean only that the limiting profile is smooth but nonanalytic. That is not the
same thing as a terminal time-face atom.

## 1. Smooth nonanalytic model

Choose a nonzero compactly supported smooth scalar function

\[
\phi\in C_c^\infty(B_1),
\tag{HRC.2}
\]

which is not real analytic across an interior surface. For example, let
\(\chi_0\in C_c^\infty(B_1)\) satisfy \(\chi_0\equiv1\) near \(0\), and set

\[
\phi(y)=
\begin{cases}
\chi_0(y)\exp\!\left(-{1\over y_1^2}\right),& y_1>0,\\
0,& y_1\le0.
\end{cases}
\tag{HRC.3}
\]

Let \(V\in C_c^\infty(B_1;\mathbb R^3)\) be a nonzero divergence-free vector
field built from this \(\phi\), for instance

\[
V=\nabla\times(0,0,\phi).
\tag{HRC.4}
\]

Set the rescaled terminal-cylinder fields to be time-independent:

\[
v_j(s,y):=V(y),
\qquad
-1\le s\le0.
\tag{HRC.5}
\]

This is a model for the logical implication `(HRC.1)`, not a claimed exact
Navier-Stokes solution.

## 2. Every fixed rung is bounded

For every fixed \((m,\alpha)\),

\[
\partial_s^m\partial_y^\alpha v_j
=
\begin{cases}
\partial_y^\alpha V,&m=0,\\
0,&m\ge1.
\end{cases}
\tag{HRC.6}
\]

Therefore, for every fixed \((m,\alpha)\),

\[
\sup_j\sup_{-1\le s\le0}
\|\partial_s^m\partial_y^\alpha v_j(s)\|_{H^\sigma(B_2)}
<\infty.
\tag{HRC.7}
\]

So the finite-rung branch is absent.

## 3. Every positive spatial analytic radius fails

If there were \(\rho_*>0\) and \(E_*<\infty\) such that

\[
\sum_{\alpha}
{\rho_*^{2|\alpha|}\over(\alpha!)^2}
\|\partial_y^\alpha V\|_{H^\sigma(B_2)}^2
\le E_*,
\tag{HRC.8}
\]

then the standard Sobolev embedding and Cauchy-Hadamard criterion would give a
positive local real-analytic radius for \(V\) across the plane \(y_1=0\) near
the origin. This contradicts the choice of \(V\).

Hence, for every \(\rho_*>0\),

\[
\sum_{\alpha}
{\rho_*^{2|\alpha|}\over(\alpha!)^2}
\|\partial_y^\alpha V\|_{H^\sigma(B_2)}^2
=\infty.
\tag{HRC.9}
\]

Thus the high-rung/factorial spatial radius collapses, while every fixed finite
rung remains bounded.

## 4. Endpoint UI can still hold

Let the selected normalized carrier be any legal finite-order local expression
of \(V\), for example

\[
a_j(s)
:=
\int_{B_1}
\left[
\left\langle
\Sigma(V)(y)\,\Omega(V)(y),
\Omega(V)(y)
\right\rangle
\right]_+
dy.
\tag{HRC.10}
\]

This quantity is independent of \(j\) and \(s\), and it is finite:

\[
a_j(s)=A<\infty.
\tag{HRC.11}
\]

Therefore

\[
\int_{-\theta}^{0}a_j(s)\,ds
=A\theta,
\tag{HRC.12}
\]

and so

\[
\lim_{\theta\downarrow0}\limsup_j
\int_{-\theta}^{0}a_j(s)\,ds
=0.
\tag{HRC.13}
\]

That is `SelectedCarrierEndpointUI.A`.

## 5. Exact lesson

The model proves the logical separation:

\[
\boxed{
\text{high-rung-only analytic radius collapse}
\not\Longrightarrow
\neg\text{SelectedCarrierEndpointUI.A}.
}
\tag{HRC.14}
\]

High-rung collapse means that analytic/factorial control has failed. It does
not by itself say that terminal mass has concentrated at \(s=0\).

To convert high-rung collapse into a gold obstruction, one needs an additional
bridge:

\[
\boxed{
\text{HighRungTailToSelectedEndpointCarrier.A}
}
\tag{HRC.15}
\]

meaning that the high-rung tail must force one of:

\[
\boxed{
\begin{gathered}
\neg\text{SelectedCarrierEndpointUI.A},\\
\text{UnweightedTerminalCriticalActionReserve.A},\\
\text{StrictRescaledNoWasteLyapunov.A},\\
\text{or MinimalZenoProfileProduction.A}.
\end{gathered}
}
\tag{HRC.16}
\]

## Verdict

The coupled tower branch now has a precise split:

\[
\boxed{
\text{uniform radius survives}
\Longrightarrow
\text{endpoint UI holds;}
}
\tag{HRC.17}
\]

\[
\boxed{
\text{finite-rung radius failure}
\Longrightarrow
\text{visible finite-rung readout;}
}
\tag{HRC.18}
\]

and

\[
\boxed{
\text{high-rung-only radius failure}
\Longrightarrow
\text{zero analytic radius only, unless an additional tail-to-carrier bridge is
proved.}
}
\tag{HRC.19}
\]

So high-rung-only collapse is not a solved forward-gold contradiction. The new
exact missing bridge is

\[
\boxed{
\text{HighRungTailToSelectedEndpointCarrier.A.}
}
\tag{HRC.20}
\]
