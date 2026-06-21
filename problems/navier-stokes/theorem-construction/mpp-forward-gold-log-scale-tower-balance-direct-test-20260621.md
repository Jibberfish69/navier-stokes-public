---
theorem_id: forward-gold-log-scale-tower-balance-direct-test-20260621
status: direct-test-complete-not-gold-closure
logical_landing_node: log_scale_tower_balance_terminal_weight_obstruction
edge_effect: "Derives the exact sigma-derivative balance for the rescaled Navier-Stokes packet and for every mixed tower rung. The scale derivative does produce normalized viscous/tower loss, but with the factor -2s, which vanishes at the terminal face s=0. Therefore this exact log-scale identity controls terminal-distance-weighted activity, not the unweighted same-carrier reserve. The remaining gold route needs source residence away from s=0, a pressure-corrected/no-waste trace theorem at s=0, or CM consumption of the retained terminal pulse."
parents:
  - problems/navier-stokes/theorem-construction/mpp-four-body-cyclic-payment-closure-direct-attempt-20260621.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-mixed-derivative-tower-participation-law-20260621.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-post-june21-heat-scale-branch-integration-20260621.md
---

# Log-Scale Tower Balance Direct Test

Date: 2026-06-21

## 0. Aim

The four-body resurrection asks whether the missing unweighted terminal reserve
can come from the scale-normalized tower itself.

This note tests the most direct possibility: differentiate the same normalized
packet in the logarithmic scale variable.

The outcome is exact.

The logarithmic scale derivative sees normalized viscous/tower loss, but only
with a terminal-distance factor.  It therefore gives a weighted reserve near
the terminal face, not the unweighted reserve needed by the gold route.

## 1. Base rescaled packet

Let

```math
r=e^{-\sigma},
\qquad
V_\sigma(s,y)=r\,u(T^\ast+r^2s,x_\ast+ry),
\qquad
Q_\sigma(s,y)=r^2p(T^\ast+r^2s,x_\ast+ry).
\tag{LST.1}
```

For fixed \(\sigma\), suppress the subscript and write

```math
\partial_sV+(V\cdot\nabla)V+\nabla Q=\nu\Delta V,
\qquad
\nabla\cdot V=0.
\tag{LST.2}
```

The same-solution scale coupling is

```math
\partial_\sigma V+2s\partial_sV+y\cdot\nabla V+V=0.
\tag{LST.3}
```

Let

```math
e={1\over2}|V|^2,
\qquad
F=(e+Q)V-\nu\nabla e.
\tag{LST.4}
```

Then the smooth local energy identity is

```math
\partial_s e+\nu|\nabla V|^2+\nabla\cdot F=0.
\tag{LST.5}
```

## 2. Exact sigma-balance for base energy

Let \(\phi\in C_c^\infty((-1,0)\times\mathbb R^3)\) be fixed in normalized
coordinates, and define

```math
E_\phi(\sigma)=\int_{-1}^{0}\int_{\mathbb R^3}\phi(s,y)e_\sigma(s,y)\,dy\,ds.
\tag{LST.6}
```

From `(LST.3)`,

```math
\partial_\sigma e=-2s\partial_s e-y\cdot\nabla e-2e.
\tag{LST.7}
```

Therefore, using `(LST.5)`,

```math
\begin{aligned}
-{d\over d\sigma}E_\phi(\sigma)
&=
\int (-2s)\phi\,\nu|\nabla V|^2 \\
&\quad+
\int 2s\,F\cdot\nabla\phi \\
&\quad-
\int e\,y\cdot\nabla\phi
-
\int \phi e .
\end{aligned}
\tag{LST.8}
```

All integrals are over \((-1,0)\times\mathbb R^3\).

This is an exact identity.  No linearization or approximation has been used.

The useful term is

```math
\int (-2s)\phi\,\nu|\nabla V|^2.
\tag{LST.9}
```

It is normalized and log-scale.  But it carries the factor \(-s\).  That factor
vanishes at the terminal face \(s=0\).

## 3. Exact sigma-balance for a mixed tower rung

Let

```math
W_{m,\alpha}=\partial_s^m\partial_y^\alpha V,
\qquad
Q_{m,\alpha}=\partial_s^m\partial_y^\alpha Q.
\tag{LST.10}
```

The mixed tower equation is

```math
\left(\partial_s+V\cdot\nabla-\nu\Delta\right)W_{m,\alpha}
+\nabla Q_{m,\alpha}
=
-B_{m,\alpha},
\tag{LST.11}
```

where \(B_{m,\alpha}\) is the usual differentiated Leibniz sum.

Set

```math
e_{m,\alpha}={1\over2}|W_{m,\alpha}|^2,
\tag{LST.12}
```

and

```math
F_{m,\alpha}
=
e_{m,\alpha}V+Q_{m,\alpha}W_{m,\alpha}
-\nu\nabla e_{m,\alpha}.
\tag{LST.13}
```

Since \(\nabla\cdot W_{m,\alpha}=0\),

```math
\partial_s e_{m,\alpha}
+\nu|\nabla W_{m,\alpha}|^2
+\nabla\cdot F_{m,\alpha}
=
-W_{m,\alpha}\cdot B_{m,\alpha}.
\tag{LST.14}
```

The scale coupling for this rung is

```math
\partial_\sigma W_{m,\alpha}
+2s\partial_sW_{m,\alpha}
+y\cdot\nabla W_{m,\alpha}
+h_{m,\alpha}W_{m,\alpha}
=0,
\tag{LST.15}
```

with

```math
h_{m,\alpha}=2m+|\alpha|+1.
\tag{LST.16}
```

Thus

```math
\partial_\sigma e_{m,\alpha}
=
-2s\partial_s e_{m,\alpha}
-y\cdot\nabla e_{m,\alpha}
-2h_{m,\alpha}e_{m,\alpha}.
\tag{LST.17}
```

For

```math
E_{m,\alpha,\phi}(\sigma)
=
\int\phi e_{m,\alpha},
\tag{LST.18}
```

the exact log-scale tower identity is

```math
\begin{aligned}
-{d\over d\sigma}E_{m,\alpha,\phi}(\sigma)
&=
\int (-2s)\phi\,\nu|\nabla W_{m,\alpha}|^2 \\
&\quad+
\int 2s\,F_{m,\alpha}\cdot\nabla\phi \\
&\quad-
\int e_{m,\alpha}\,y\cdot\nabla\phi \\
&\quad+
\int (2h_{m,\alpha}-3)\phi e_{m,\alpha} \\
&\quad+
\int (-2s)\phi\,W_{m,\alpha}\cdot B_{m,\alpha}.
\end{aligned}
\tag{LST.19}
```

Again, this is exact.

The desired tower loss appears, but it appears as

```math
\int (-2s)\phi\,\nu|\nabla W_{m,\alpha}|^2.
\tag{LST.20}
```

The nonlinear tower forcing is also terminal-distance weighted:

```math
\int (-2s)\phi\,W_{m,\alpha}\cdot B_{m,\alpha}.
\tag{LST.21}
```

So the log-scale derivative does not directly charge a source concentrated
arbitrarily close to \(s=0\).

## 4. Consequence for the unweighted reserve

If the selected activity is supported away from the terminal face, say

```math
\operatorname{supp} A_\sigma\subset\{-1<s\le -\delta\},
\qquad
\delta>0,
\tag{LST.22}
```

then \(-s\ge\delta\), and `(LST.19)` can charge the activity up to cutoff,
pressure, nonlinear, and exchange terms.

But the terminal time-face atom is precisely the opposite scenario.  Its model
is a nonnegative source density \(a_\varepsilon\) with

```math
a_\varepsilon(s)={1\over\varepsilon}\mathbf 1_{(-\varepsilon,0]}(s),
\qquad
\int_{-1}^{0}a_\varepsilon(s)\,ds=1.
\tag{LST.23}
```

The terminal-distance weighted mass is

```math
\int_{-1}^{0}(-s)a_\varepsilon(s)\,ds
=
{\varepsilon\over2}
\longrightarrow0.
\tag{LST.24}
```

Thus any identity whose coercive term is weighted by \(-s\) cannot control the
unweighted terminal mass

```math
\int_{-1}^{0}a_\varepsilon(s)\,ds.
\tag{LST.25}
```

This is the exact obstruction.

## 5. Four-body interpretation

The direct log-scale tower balance supplies a real four-body ingredient:

```math
\text{scale derivative}
\quad\Longrightarrow\quad
\text{terminal-distance-weighted normalized tower loss.}
\tag{LST.26}
```

It does not supply the missing unweighted reserve:

```math
\int A(\sigma)\,d\sigma<\infty.
\tag{LST.27}
```

It supplies only the version where the selected activity has a terminal-distance
weight inside each normalized cylinder.

Therefore the four-body loop can close from `(LST.19)` only after one of the
following exact additions is proved:

```math
\boxed{
\text{source residence: the selected activity spends a fixed fraction of its
mass away from }s=0;
}
\tag{LST.28}
```

```math
\boxed{
\text{terminal trace no-waste: mass concentrated at }s=0\text{ is charged by
an exact pressure/source trace;}
}
\tag{LST.29}
```

or

```math
\boxed{
\text{the retained terminal pulse is admitted to the CM Pack/Part/Field
consumer.}
}
\tag{LST.30}
```

## Verdict

The scale-normalized tower has been tested directly.

It gives an exact log-scale balance, but the coercive tower loss is multiplied
by terminal distance \(-s\).  This proves that the direct \(\sigma\)-energy
route cannot by itself exclude the last-instant time-face atom.

The next exact gold theorem is therefore not "derive the log-scale identity";
that identity is now derived.  The remaining producer must remove or charge the
terminal factor \(-s\) by source residence, terminal trace no-waste, or the
already typed CM face consumption branch.
