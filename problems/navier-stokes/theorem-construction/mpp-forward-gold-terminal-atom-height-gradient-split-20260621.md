---
ns_viewer:
  theorem_id: forward-gold-terminal-atom-height-gradient-split-20260621
  status: exact-terminal-atom-height-gradient-split-installed
  proof_role: forward_gold_terminal_atom_growth_split
  logical_landing_node: terminal_atom_height_or_gradient_growth
  edge_effect: >-
    Records the elementary consequence of the threshold-margin selector fork:
    if a terminal selected source atom survives while the projected tensor action
    tends to zero, then G_m^* A_m^* theta_m^2 diverges. Since this product equals
    (A_m^* theta_m)(G_m^* theta_m), at least one dimensionless factor diverges:
    either selected source height exceeds the terminal strip average, or the first
    spatial gradient rung of the selected source exceeds the terminal time scale.
    This turns the residual selector-complexity branch into a concrete height
    blowup / source-gradient tower-rung split.
  upstream_origin:
    - problems/navier-stokes/theorem-construction/mpp-forward-gold-threshold-margin-selector-capture-fork-20260621.md
    - problems/navier-stokes/theorem-construction/mpp-forward-gold-finite-band-threshold-gradient-growth-20260621.md
  downstream_consequence: >-
    The remaining terminal atom cannot be described only as hidden selected
    carrier. After high-factor/tensor action is removed, it must present either
    peak-height concentration in the time marginal or spatial source-gradient
    rung growth. The next exact closure can attack those two concrete branches
    by source-square/trace-AC/no-waste for height, or by coupled derivative-tower
    radius collapse / Field-face consumption for the gradient rung.
---

# MPP Forward-Gold Terminal Atom Height-Gradient Split

Date: 2026-06-21

## Status

This note records the elementary split created by the threshold-margin selector
fork. It is not a new estimate; it is the clean interpretation of the remaining
growth branch.

## 1. Starting point from the selector fork

Let \(I_m\) be terminal strips with

\[
\theta_m:=|I_m|\downarrow0.
\tag{HGS.1}
\]

Let

\[
N_m=-\mathbb P\nabla\cdot F_m,
\qquad
g_m=\sigma_m\cdot N_m,
\tag{HGS.2}
\]

and define

\[
A_m(s):=\int_{\mathbb T^3}[g_m(s,x)]_+\,dx,
\tag{HGS.3}
\]

\[
A_m^*:=
\operatorname*{ess\,sup}_{s\in I_m}A_m(s),
\qquad
G_m^*:=
\operatorname*{ess\,sup}_{s\in I_m}
\|\nabla_x g_m(s)\|_{L^\infty}.
\tag{HGS.4}
\]

Assume the selected atom survives:

\[
\int_{I_m}A_m(s)\,ds\ge a>0.
\tag{HGS.5}
\]

The threshold-margin selector fork gives

\[
\int_{I_m}\|F_m(s)\|_2\,ds
\ge
{a^3\over
36(8|\mathbb T^3|)^{3/2}G_m^*A_m^*\theta_m^2}.
\tag{HGS.6}
\]

Therefore, if the tensor action tends to zero,

\[
\int_{I_m}\|F_m(s)\|_2\,ds\to0,
\tag{HGS.7}
\]

then

\[
\boxed{
G_m^*A_m^*\theta_m^2\to\infty.
}
\tag{HGS.8}
\]

## 2. Height-gradient split

Factor `(HGS.8)` as

\[
G_m^*A_m^*\theta_m^2
=
\left(A_m^*\theta_m\right)
\left(G_m^*\theta_m\right).
\tag{HGS.9}
\]

Thus at least one of the two factors must diverge:

\[
\boxed{
A_m^*\theta_m\to\infty
\quad\text{or}\quad
G_m^*\theta_m\to\infty.
}
\tag{HGS.10}
\]

This is exact elementary algebra.

The first alternative says the selected source height is larger than the
terminal strip average scale. The second says the first spatial derivative rung
of the selected source is larger than the terminal time scale.

## 3. Relation to the atom itself

The atom condition `(HGS.5)` alone only gives

\[
A_m^*\theta_m\ge a.
\tag{HGS.11}
\]

So a terminal atom may have average-height concentration:

\[
A_m^*\theta_m=O(1).
\tag{HGS.12}
\]

In that case `(HGS.8)` forces the gradient branch:

\[
\boxed{
G_m^*\theta_m\to\infty.
}
\tag{HGS.13}
\]

Conversely, if the selected-source gradient remains terminal-scale bounded,

\[
G_m^*\theta_m=O(1),
\tag{HGS.14}
\]

then `(HGS.8)` forces the peak-height branch:

\[
\boxed{
A_m^*\theta_m\to\infty.
}
\tag{HGS.15}
\]

## Verdict

After the high-factor/tensor action branch is removed, a terminal selected atom
has only two exact remaining growth modes:

\[
\boxed{
\text{peak selected-source height}
\quad\text{or}\quad
\text{first spatial selected-source gradient rung}.
}
\tag{HGS.16}
\]

This is useful because it gives the next two concrete targets. The height branch
belongs to source-square, source-residence, trace absolute continuity, or
pressure-corrected no-waste. The gradient branch belongs to the coupled
derivative tower, analytic radius collapse, or a Field-face high-rung readout.
