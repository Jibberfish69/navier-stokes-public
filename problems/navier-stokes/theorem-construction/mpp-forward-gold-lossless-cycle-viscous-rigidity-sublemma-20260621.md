---
theorem_id: forward-gold-lossless-cycle-viscous-rigidity-sublemma-20260621
status: sublemma-proved-conditional-on-galilean-invariant-selected-activity
logical_landing_node: lossless_cycle_viscous_rigidity_sublemma
edge_effect: "Proves the first exact rigidity piece inside the upgraded four-body lossless-cycle branch. If the normalized Body-II viscous loss tends to zero on the retained heat-scale cylinder, then the spatially varying part of the normalized velocity vanishes by Poincare, the strain vanishes, the pressure source vanishes, and the projected nonlinear source vanishes after removing the spatial mean. Therefore every selected activity controlled by Galilean-invariant strain/projected-source/tower-variation quantities vanishes. The sublemma does not close the full gold theorem because it still requires the selected terminal carrier to be such a Galilean-invariant same-carrier activity and does not handle polar-retention, compactness-relay, or geometry-clock defects."
parents:
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-upgraded-four-body-current-frontier-20260621.md
  - problems/navier-stokes/theorem-construction/mpp-four-body-cyclic-payment-closure-direct-attempt-20260621.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-bodyii-participation-exchange-normal-form-20260621.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-packet-selector-polar-retention-criterion-20260621.md
---

# Lossless-Cycle Viscous Rigidity Sublemma

Date: 2026-06-21

## 0. Aim

The upgraded four-body frontier has two equivalent forms:

```math
dL_{4B}+dD_{4B}+c\,dA_{\rm sel}
\le
dR_{\rm legal},
\qquad
c>0,
\tag{LCV.1}
```

or lossless-cycle rigidity:

```math
\boxed{
\text{every lossless same-carrier four-body cycle has }dA_{\rm sel}=0.
}
\tag{LCV.2}
```

This note proves the first exact sublemma on the rigidity side.

It asks what remains if the normalized Body-II viscous loss vanishes.

The answer is:

```math
\boxed{
\text{zero normalized viscous loss leaves only the spatial mean/Galilean mode.}
}
\tag{LCV.3}
```

So every genuinely Galilean-invariant selected activity vanishes in that
subcase.

## 1. Normalized cylinder setup

Let

```math
Q_1=(-1,0)\times B_1.
\tag{LCV.4}
```

Let \(V_n\) be a sequence of normalized velocities on \(Q_1\), with

```math
V_n\in L^2((-1,0);H^1(B_1)).
\tag{LCV.5}
```

Assume the normalized viscous loss tends to zero:

```math
D_n^{\rm vis}
:=
\int_{-1}^{0}\int_{B_1}|\nabla_y V_n|^2\,dy\,ds
\longrightarrow0.
\tag{LCV.6}
```

Assume also the normalized local energy is bounded:

```math
\sup_n
\int_{-1}^{0}\int_{B_1}|V_n|^2\,dy\,ds
<\infty.
\tag{LCV.7}
```

Define the spatial mean

```math
m_n(s)
:=
{1\over |B_1|}
\int_{B_1}V_n(s,y)\,dy
\tag{LCV.8}
```

and the mean-free part

```math
W_n(s,y):=V_n(s,y)-m_n(s).
\tag{LCV.9}
```

## 2. Poincare collapse of the spatially varying part

For each \(s\), Poincare gives

```math
\int_{B_1}|W_n(s,y)|^2\,dy
\le
C_P
\int_{B_1}|\nabla_y V_n(s,y)|^2\,dy.
\tag{LCV.10}
```

Integrating in \(s\),

```math
\boxed{
\int_{Q_1}|W_n|^2\,dy\,ds
\le
C_P D_n^{\rm vis}
\longrightarrow0.
}
\tag{LCV.11}
```

Thus zero normalized viscous loss forces

```math
V_n(s,y)=m_n(s)+o_{L^2(Q_1)}(1).
\tag{LCV.12}
```

This is exactly the removable Galilean/mean-mode branch.

## 3. Strain and pressure source vanish

The strain satisfies

```math
S(V_n)={1\over2}(\nabla V_n+\nabla V_n^\top),
\tag{LCV.13}
```

so `(LCV.6)` implies

```math
\boxed{
\|S(V_n)\|_{L^2(Q_1)}\to0.
}
\tag{LCV.14}
```

Consequently, for every \(1\le p\le2\),

```math
\boxed{
\|S(V_n)\|_{L^p(Q_1)}\to0.
}
\tag{LCV.15}
```

The pressure source is

```math
f_n
=
\partial_i(V_n)_j\,\partial_j(V_n)_i.
\tag{LCV.16}
```

By Cauchy-Schwarz,

```math
\|f_n\|_{L^1(Q_1)}
\le
\|\nabla V_n\|_{L^2(Q_1)}^2
=
D_n^{\rm vis}
\to0.
\tag{LCV.17}
```

Therefore, after fixing pressure constants,

```math
\boxed{
\nabla Q_n
=
\nabla(-\Delta)^{-1}f_n
\to0
}
\tag{LCV.18}
```

distributionally.  On the whole-space or torus normalized readout, the
endpoint potential estimate also gives convergence to zero in the weak
\(L^{3/2}\) pressure-gradient scale.

The pressure source does not carry a nonzero lossless selected activity in this
subcase.

## 4. Projected nonlinear source after mean removal

The Leray-projected nonlinear source is

```math
N_n
=
-\mathbb P\nabla\cdot(V_n\otimes V_n).
\tag{LCV.19}
```

Since \(m_n(s)\) is spatially constant,

```math
\nabla_y\cdot(m_n\otimes m_n)=0.
\tag{LCV.20}
```

Using \(V_n=m_n+W_n\),

```math
\nabla\cdot(V_n\otimes V_n)
=
\nabla\cdot(W_n\otimes W_n)
+
\nabla\cdot(m_n\otimes W_n)
+
\nabla\cdot(W_n\otimes m_n).
\tag{LCV.21}
```

The local energy bound `(LCV.7)` gives \(m_n\) bounded in \(L^2_s\).  Together
with `(LCV.11)`,

```math
\|W_n\otimes W_n\|_{L^1(Q_1)}\to0,
\tag{LCV.22}
```

and

```math
\|m_n\otimes W_n\|_{L^1(Q_1)}
+
\|W_n\otimes m_n\|_{L^1(Q_1)}
\to0.
\tag{LCV.23}
```

Therefore

```math
\boxed{
N_n\to0
\quad
\text{in }L^1_sW^{-1,1}_y\text{ on }Q_1.
}
\tag{LCV.24}
```

Thus the projected nonlinear source also vanishes after the spatial mean is
recognized as a removable Galilean mode.

## 5. Consequence for selected activity

Let \(A_{\rm sel}^{(n)}\) be a selected activity on \(Q_1\).  Suppose it is
controlled by Galilean-invariant spatial-variation readouts:

```math
A_{\rm sel}^{(n)}
\le
C
\left[
\|S(V_n)\|_{L^p(Q_1)}^p
+
\|N_n\|_{L^1_sW^{-1,1}_y(Q_1)}
+
D_n^{\rm vis}
\right]
+
o_n(1)
\tag{LCV.25}
```

for some \(1\le p\le2\).

Then `(LCV.6)`, `(LCV.15)`, and `(LCV.24)` imply

```math
\boxed{
A_{\rm sel}^{(n)}\to0.
}
\tag{LCV.26}
```

This proves the zero-viscous-loss rigidity subcase:

```math
\boxed{
\text{lossless cycle}
+
\text{normalized viscous loss included}
+
\text{Galilean-invariant selected activity}
\Longrightarrow
\text{zero selected activity.}
}
\tag{LCV.27}
```

## 6. What this sublemma does not prove

The sublemma does not prove the full gold theorem.

It uses the domination hypothesis `(LCV.25)`.  That hypothesis is exactly where
the source-carrier problem can still hide.

The sublemma does not handle:

```math
\boxed{
\text{positive-selector polar-retention failure }dK_{\rm sel};
}
\tag{LCV.28}
```

```math
\boxed{
\text{Body-III compactness/no-loss relay failure }dK_C^+;
}
\tag{LCV.29}
```

```math
\boxed{
\text{Body-IV geometry/strain-clock failure }dK_G^+;
}
\tag{LCV.30}
```

or

```math
\boxed{
\text{a selected activity that charges raw spatial mean / cutoff flux instead
of Galilean-invariant singular participation.}
}
\tag{LCV.31}
```

Those cases are outside the zero-viscous-loss rigidity sublemma.

## 7. Current contribution to the four-body frontier

The upgraded four-body current frontier asked for:

```math
\boxed{
\text{strict same-carrier four-body cycle payment}
\quad\text{or}\quad
\text{lossless four-body cycle rigidity.}
}
\tag{LCV.32}
```

This note proves the first rigorous piece of the lossless rigidity branch:

```math
\boxed{
D_Q^{\rm vis}=0
\text{ kills every Galilean-invariant selected activity controlled by strain,
projected source, or tower variation.}
}
\tag{LCV.33}
```

Therefore any nonzero lossless terminal activity must sit in one of the
remaining mismatch channels:

```math
dK_{\rm sel},
\qquad
dK_C^+,
\qquad
dK_G^+,
\tag{LCV.34}
```

or in a selected carrier that is not actually Galilean-invariant singular
participation.
