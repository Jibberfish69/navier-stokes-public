---
ns_viewer:
  theorem_id: forward-gold-gradient-sobolev-branch-to-cm-face-20260621
  status: exact-finite-rung-gradient-branch-cm-face-consumer-installed
  proof_role: forward_gold_finite_rung_gradient_branch_cm_consumer
  logical_landing_node: gradient_sobolev_branch_to_cm_face
  edge_effect: >-
    Consumes the finite Sobolev side of the gradient branch after same-carrier
    CM admission. The prior Sobolev tower note proves that the residual gradient
    branch forces theta_m S_m,gamma^2 -> infinity for
    S_m,gamma=sup_{s in I_m}||v_m(s)||_{H^(gamma+1)}. If the same terminal
    object is admitted to the CM witness test and Pack_Q plus Part_N,Q survive,
    then any positive Field_N,rho,Q certificate at depth N above gamma+1 supplies
    a uniform finite-rung Sobolev/tower bound on the same normalized windows.
    That gives theta_m S_m,gamma^2 -> 0, contradicting the gradient branch.
    Therefore the finite-rung Sobolev branch lands as not Pack_Q, not Part_N,Q,
    or for all rho>0 not Field_N,rho,Q. This does not consume the separate
    high-rung-only analytic-tail branch.
  upstream_origin:
    - problems/navier-stokes/theorem-construction/mpp-forward-gold-gradient-branch-sobolev-tower-blowup-20260621.md
    - problems/navier-stokes/theorem-construction/r3-cm-contrapositive-sobolev-hs-energy-20260528.md
    - problems/navier-stokes/theorem-construction/mpp-member-smooth-contrapositive-witness-face-bridge-20260504.md
  downstream_consequence: >-
    The finite-rung Sobolev branch of the terminal selected-source gradient
    alternative is consumed by the existing CM face grammar once same-carrier
    admission and sufficient-depth Field readout are present. The remaining
    gold work is now the height/source-square UI production branch and the
    high-rung-only analytic tail branch, which still needs tail-to-carrier,
    no-waste, unweighted action, or profile production.
---

# MPP Forward-Gold Gradient Sobolev Branch To CM Face

Date: 2026-06-21

## Status

This note consumes the finite Sobolev side of the source-gradient branch after
same-carrier CM admission.

It does not prove endpoint UI, and it does not prove a new positive regularity
estimate. It proves the branch-local implication:

\[
\boxed{
\text{finite-rung Sobolev gradient branch}
\Longrightarrow
\neg Pack_Q
\vee
\neg Part_{N,Q}
\vee
\forall\rho>0\,\neg Field_{N,\rho,Q},
}
\tag{GCM.1}
\]

with \(N\) chosen above the Sobolev readout depth.

## 1. Input from the Sobolev gradient branch

The finite Sobolev tower note proves that for every fixed \(\gamma>5/2\), the
residual source-gradient branch

\[
G_m^*\theta_m\to\infty
\tag{GCM.2}
\]

forces

\[
\theta_m S_{m,\gamma}^2\to\infty,
\tag{GCM.3}
\]

where

\[
S_{m,\gamma}
:=
\operatorname*{ess\,sup}_{s\in I_m}
\|v_m(s)\|_{H^{\gamma+1}_F},
\qquad
\theta_m:=|I_m|\downarrow0.
\tag{GCM.4}
\]

Thus the branch is a fixed finite-rung Sobolev tower blowup in the normalized
terminal windows.

## 2. CM admission alternatives

Let the same terminal object be tested in the CM witness grammar at depth
\(N\), with \(N\) high enough to read \(H^{\gamma+1}\) on the selected
normalized windows.

If the selected terminal windows cannot be placed on a same-fluid carrier with
the required compatible local charts, then

\[
\neg Pack_Q.
\tag{GCM.5}
\]

If the windows are carried, but the differentiated
pressure-viscosity-incompressibility tower through depth \(N\) cannot be
written for the same solution on those windows, then

\[
\neg Part_{N,Q}.
\tag{GCM.6}
\]

These are the same first two alternatives in the installed Sobolev wall to CM
face theorem.

## 3. Retained Pack and Part force Field failure

Assume instead that \(Pack_Q\) and \(Part_{N,Q}\) survive.

By the installed Field readout meaning, a positive \(Field_{N,\rho,Q}\)
certificate at depth \(N\) gives a uniform finite-rung tower bound on the same
normalized windows. In particular, for the chosen \(\gamma\), there is a finite
constant \(C_{\gamma,\rho,Q}\) such that

\[
S_{m,\gamma}
\le
C_{\gamma,\rho,Q}
\quad\text{along the retained terminal subsequence.}
\tag{GCM.7}
\]

Therefore

\[
\theta_m S_{m,\gamma}^2
\le
\theta_m C_{\gamma,\rho,Q}^2
\to0.
\tag{GCM.8}
\]

This contradicts `(GCM.3)`. Hence, on retained \(Pack_Q\) and
\(Part_{N,Q}\), no positive Field scale can survive:

\[
\forall\rho>0\,\neg Field_{N,\rho,Q}.
\tag{GCM.9}
\]

Combining `(GCM.5)`, `(GCM.6)`, and `(GCM.9)` gives `(GCM.1)`.

## 4. Boundary of the consumer

This note consumes only the fixed finite-rung branch:

\[
\theta_m S_{m,\gamma}^2\to\infty.
\tag{GCM.10}
\]

It does not consume high-rung-only analytic radius collapse, where every fixed
finite Sobolev rung can remain bounded while the factorial analytic tail
diverges. That branch still needs one of the separate bridges:

\[
\boxed{
\text{tail-to-selected-carrier, unweighted action, strict no-waste, or profile
production.}
}
\tag{GCM.11}
\]

## Verdict

The finite Sobolev side of the source-gradient branch is no longer an
unclassified gold obstruction. Once the same terminal object is admitted to the
CM witness grammar, it lands in the existing face split:

\[
\boxed{
\text{finite-rung source-gradient tower blowup}
\Longrightarrow
\neg Pack_Q
\vee
\neg Part_{N,Q}
\vee
\forall\rho>0\,\neg Field_{N,\rho,Q}.
}
\tag{GCM.12}
\]

The remaining uncaptured branch is the high-rung-only analytic tail, together
with the height/source-square UI production problem.
