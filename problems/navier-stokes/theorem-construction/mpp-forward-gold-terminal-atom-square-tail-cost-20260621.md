---
ns_viewer:
  theorem_id: forward-gold-terminal-atom-square-tail-cost-20260621
  status: exact-terminal-atom-square-tail-cost-installed
  proof_role: forward_gold_height_branch_source_square_consumer
  logical_landing_node: terminal_atom_square_tail_cost
  edge_effect: >-
    Records the exact consumer fact behind the height branch. If a nonnegative
    selected source marginal a_m carries mass at least a on terminal strips I_m
    of length theta_m -> 0, then int_{I_m} a_m^2 ds >= a^2/theta_m -> infinity,
    and for every fixed K the tail mass int_{I_m cap {a_m>K}} a_m ds is at least
    a-K theta_m, hence tends to at least a. Thus the terminal atom is exactly a
    failure of same-carrier tail UI and same-carrier source-square control. This
    proves only the consumer side: source-square/tail UI would kill the height
    branch once identified with the actual selected carrier. It does not produce
    that source-square bound from Navier-Stokes.
  upstream_origin:
    - problems/navier-stokes/theorem-construction/mpp-forward-gold-terminal-atom-height-gradient-split-20260621.md
    - problems/navier-stokes/theorem-construction/mpp-forward-gold-same-carrier-tail-ui-production-normal-form-20260620.md
    - problems/navier-stokes/theorem-construction/mpp-forward-gold-source-square-to-moving-trace-modulus-20260619.md
  downstream_consequence: >-
    The peak-height side of the height/gradient split is not a new independent
    obstruction. It is the already-isolated same-carrier tail UI/source-square
    production gap. After tensor action is removed, the unresolved alternatives
    are therefore: produce same-carrier square/tail/no-waste control for the
    selected marginal, or consume the spatial source-gradient rung through the
    coupled derivative tower or CM Field-face readout.
---

# MPP Forward-Gold Terminal Atom Square-Tail Cost

Date: 2026-06-21

## Status

This note records the exact consumer calculation for the height side of the
height-gradient split.

It does not produce a Navier-Stokes source-square reserve. It proves that once
the actual selected positive source marginal is dominated by a same-carrier
square or tail budget, a terminal atom is impossible.

## 1. Terminal selected marginal

Let

\[
a_m:I_m\to[0,\infty),
\qquad
\theta_m:=|I_m|\downarrow0.
\tag{STC.1}
\]

Assume the terminal selected atom condition:

\[
\int_{I_m}a_m(s)\,ds\ge a>0.
\tag{STC.2}
\]

## 2. Square cost

By Cauchy-Schwarz on \(I_m\),

\[
\left(\int_{I_m}a_m(s)\,ds\right)^2
\le
\theta_m\int_{I_m}a_m(s)^2\,ds.
\tag{STC.3}
\]

Using `(STC.2)`,

\[
\boxed{
\int_{I_m}a_m(s)^2\,ds
\ge
{a^2\over\theta_m}
\to\infty.
}
\tag{STC.4}
\]

So a fixed terminal atom on a shrinking strip has infinite same-carrier
square cost.

## 3. Tail cost

For any fixed \(K>0\),

\[
\int_{I_m\cap\{a_m\le K\}}a_m(s)\,ds
\le
K\theta_m.
\tag{STC.5}
\]

Therefore

\[
\int_{I_m\cap\{a_m>K\}}a_m(s)\,ds
\ge
a-K\theta_m.
\tag{STC.6}
\]

Taking \(\limsup_m\),

\[
\boxed{
\limsup_m
\int_{I_m\cap\{a_m>K\}}a_m(s)\,ds
\ge a
\quad\text{for every fixed }K>0.
}
\tag{STC.7}
\]

Consequently,

\[
\boxed{
\lim_{K\to\infty}
\sup_m
\int_{\{a_m>K\}}a_m(s)\,ds
\ge a.
}
\tag{STC.8}
\]

Thus the terminal atom is exactly a failure of same-carrier tail uniform
integrability.

## 4. Connection to the height-gradient split

The previous split says that after projected tensor action is removed, the
remaining selected atom forces

\[
A_m^*\theta_m\to\infty
\quad\text{or}\quad
G_m^*\theta_m\to\infty.
\tag{STC.9}
\]

The first side is a peak-height version of the same square/tail obstruction.
Indeed `(STC.4)` and `(STC.8)` already follow from the terminal atom condition
itself, before using peak height.

So the height side is not a new independent wall. It is the already isolated
same-carrier square/tail UI production gap.

## Verdict

The exact consumer theorem is:

\[
\boxed{
\text{terminal selected atom}
\Longrightarrow
\text{divergent same-carrier square cost and failed same-carrier tail UI}.
}
\tag{STC.10}
\]

Therefore the height branch closes only after one of these actual selected
carrier inputs is produced:

\[
\boxed{
\text{same-carrier source-square domination, same-carrier tail UI, Orlicz/p>1
control, or strict no-waste on the selected marginal.}
}
\tag{STC.11}
\]

This note does not prove any of those production inputs. It prevents the
height branch from being misdescribed as a separate obstruction.
