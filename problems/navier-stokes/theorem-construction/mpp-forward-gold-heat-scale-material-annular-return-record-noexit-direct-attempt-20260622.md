---
theorem_id: forward-gold-heat-scale-material-annular-return-record-noexit-direct-attempt-20260622
status: retained-atlas-shrinking-count-solved-uniform-material-record-survival-not-installed
logical_landing_node: heat_scale_material_annular_return_record_noexit
edge_effect: >-
  Separates the solved retained-atlas heat-scale shrinking/counting step from
  the still-open material record no-exit step. The center endpoint pulse has
  already been attached to the same heat-scale material annular stress/strain
  return when that return record is retained, and the transported annular atlas
  plus bounded-overlap A_4B counting forbids infinitely many fixed-size
  shrinking pulses on that retained branch. This note tests the separate pure
  gold question: whether original smooth data forces the retained material
  strain-metric/coefficient/velocity-pressure tower up to the terminal face. For
  each preterminal packet the material annular record exists while the smooth
  solution exists. Uniform terminal retention requires a non-collapsing
  heat-time return window, bounded strain-metric material geometry, and bounded
  transported frame/coefficient plus velocity-pressure tower on the same
  annulus. Current energy/local-energy/frequency inputs do not produce these
  uniform bounds: a heat-scale pulse can create order-one normalized
  strain-metric deformation and return work at scale r_m while paying only
  radius-weighted physical cost.
parents:
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-heat-scale-material-annular-return-attachment-direct-attempt-20260622.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-material-strain-metric-clock-sharpening-20260622.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-annular-stress-strain-to-strain-metric-clock-direct-attempt-20260622.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-terminal-same-packet-record-survival-material-clock-direct-attempt-20260622.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-full-participation-material-tower-noexit-direct-attempt-20260622.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-initial-smooth-frequency-tail-to-material-record-direct-attempt-20260622.md
---

# Heat-Scale Material Annular Return Record No-Exit Direct Attempt

Date: 2026-06-22

## 0. Target

The attachment theorem already proves the retained-branch statement:

```math
\text{center endpoint overlap at scale }r_m
\le
\text{same heat-scale material annular return at scale }r_m.
\tag{HMR.1}
```

The retained-atlas shrinking/counting step is now handled in
`mpp-forward-gold-heat-scale-shrinking-resolution-on-retained-atlas-20260622.md`.
This note attacks the separate remaining material-record clause:

```math
\boxed{
OriginalSmoothData
\Longrightarrow
\text{the heat-scale material annular return record is retained}
}
\tag{HMR.2}
```

This is not the bounded-overlap shrinking count.  The radius is still not
frozen or bypassed.
The same annulus is rescaled at radius \(r_m\), and retention is asked in the
unit heat-scale variables.

## 1. Heat-scale material return packet

For a terminal packet at radius \(r_m\), set

```math
V_m(s,y)
=
r_m u(t_m+r_m^2s,x_m+r_my),
\qquad
Q_m(s,y)
=
r_m^2p(t_m+r_m^2s,x_m+r_my).
\tag{HMR.3}
```

Let \(Y_m(a,s)\) be the material flow in the normalized variables:

```math
{dY_m\over ds}
=
V_m(s,Y_m(a,s)),
\qquad
Y_m(a,s_0)=a.
\tag{HMR.4}
```

Let

```math
F_m=D_aY_m,
\qquad
A_m=F_m^{-1},
\qquad
G_m=A_mA_m^\top .
\tag{HMR.5}
```

Incompressibility gives

```math
\det F_m=1.
\tag{HMR.6}
```

The material frame equation is

```math
\partial_sF_m
=
\nabla_yV_m(s,Y_m)F_m.
\tag{HMR.7}
```

For base annular geometry, the sharper clock is not the full velocity gradient.
Let

```math
S_m={1\over2}\left(\nabla_yV_m+\nabla_yV_m^\top\right).
\tag{HMR.8}
```

The pulled-back metric \(C_m=F_m^\top F_m\) obeys

```math
\partial_sC_m
=
2F_m^\top S_mF_m.
\tag{HMR.9}
```

Thus the heat-scale strain metric clock is

```math
\mathcal K_m(I)
:=
\int_I
\|S_m(s)\|_{L^\infty(\widehat A_m(s))}\,ds .
\tag{HMR.10}
```

Finite \(\mathcal K_m(I)\) controls the material annulus metric on \(I\):

```math
\|F_m(s)\|_\infty+\|F_m(s)^{-1}\|_\infty
\le
C\exp\mathcal K_m(I).
\tag{HMR.11}
```

Thus a retained heat-scale material annular return record requires a uniform
base strain-metric clock on the delayed heat-time return window. The higher
tower may still require controlled frame/connection and coefficient records;
pure rotation is a gauge issue for the tower, not a source of annular
thickness loss.

## 2. Full participation pullback

Pull back the normalized velocity and pressure:

```math
v_m(a,s)=V_m(s,Y_m(a,s)),
\qquad
q_m(a,s)=Q_m(s,Y_m(a,s)).
\tag{HMR.12}
```

The full pressure-viscosity-incompressibility-velocity law becomes

```math
\partial_s v_m
+
A_m^\top\nabla_a q_m
=
\nu\,\operatorname{div}_a(G_m\nabla_a v_m),
\tag{HMR.13}
```

with

```math
\operatorname{div}_a(A_mv_m)=0.
\tag{HMR.14}
```

This is the exact coupled law on the material annulus.  No channel has been
separated from the packet; transport is represented by the moving frame.

For a finite tower depth \(N\), define a concrete return-record norm

```math
\begin{aligned}
\mathfrak R_{N,m}(I)
:={}&
\sup_{s\in I}
\sum_{|\beta|\le N+1}
\left(
\|D_a^\beta A_m(s)\|_{L^\infty}
+
\|D_a^\beta G_m(s)\|_{L^\infty}
\right)\\
&+
\sup_{s\in I}
\sum_{|\alpha|\le N}
\left(
\|D_a^\alpha v_m(s)\|_{H^1(A_\sharp)}
+
\|D_a^\alpha q_m(s)\|_{H^1(A_\sharp)}
\right).
\end{aligned}
\tag{HMR.15}
```

The no-exit theorem can now be stated without hiding the heat scale:

```math
\boxed{
\sup_m\mathfrak R_{N,m}(I_m^{ret})<\infty
\quad\text{for the delayed heat-time return windows }I_m^{ret}.
}
\tag{HMR.16}
```

Here \(I_m^{ret}\) is the same material-annular return window generated by the
spike packet, measured in the normalized heat time \(s\).

## 3. What original smooth data gives

For each fixed \(m\), the packet is preterminal.  The classical solution is
smooth on every compact subinterval before \(T_*\).  Therefore

```math
\mathfrak R_{N,m}(I)<\infty
\tag{HMR.17}
```

for every fixed preterminal interval \(I\) where the material annulus stays
inside the smooth solution.

That pointwise-in-\(m\) fact is not the needed theorem.  The endpoint problem is
uniform retention:

```math
\sup_m\mathfrak R_{N,m}(I_m^{ret})<\infty.
\tag{HMR.18}
```

Smooth initial data gives a finite entrance tower, but propagation to the
terminal heat-scale windows still depends on the same coupled material clock.
For example, the base carrier already needs the strain metric clock, and the
differentiated material tower from `(HMR.11)` contains derivatives of
\(A_m\) and \(G_m\).

## 4. Why energy and frequency do not solve it

One heat-scale packet can have order-one normalized strain-metric deformation:

```math
\int_{-1}^{0}
\|S(V_m)(s)\|_{L^\infty(B_1)}\,ds
\simeq
1.
\tag{HMR.19}
```

The corresponding physical dissipation is radius-weighted:

```math
\int_{t_m-r_m^2}^{t_m}
\int_{B_{r_m}(x_m)}
|\nabla_xu|^2\,dx\,dt
=
r_m
\int_{-1}^{0}\int_{B_1}
|\nabla_yV_m|^2\,dy\,ds.
\tag{HMR.20}
```

Thus a terminal dyadic stack can have finite physical dissipation while
carrying order-one normalized material events at infinitely many heat scales.
The energy inequality does not produce `(HMR.16)`.

The frequency route has the same obstruction.  Smooth initial data means rapid
initial tail decay, not finite frequency support.  The nonlinear and pressure
terms can refill high packets, and propagation of the finite tower again
requires the coupled material clock.

## 5. Direct result

The material-record no-exit problem behind the heat-scale annular route is now
in exact material-annular form:

```math
\boxed{
OriginalSmoothData
\Longrightarrow
\sup_m\mathfrak R_{N,m}(I_m^{ret})<\infty.
}
\tag{HMR.21}
```

This theorem is not proved by the current installed inputs.

What is proved is the retained-branch implication:

```math
\boxed{
\sup_m\mathfrak R_{N,m}(I_m^{ret})<\infty
\Longrightarrow
\text{center overlap attaches to the same heat-scale annular return}
\Longrightarrow
A_{4B}\text{ counts it}.
}
\tag{HMR.22}
```

Failure of `(HMR.21)` is not a hidden center atom.  It is the heat-scale
material annular return record leaving the same packet:

```math
\boxed{
Pack_Q+\neg Part_{N,Q}.
}
\tag{HMR.23}
```

## 6. Exact frontier after this attempt

The route has not avoided the shrinking heat scale.  The retained-atlas
shrinking/counting step is solved by the transported annular carrier and
bounded-overlap \(A_{4B}\) counting.  The remaining pure gold theorem is the
single same-carrier material-record survival statement:

```math
\boxed{
\text{uniform heat-scale material strain-metric/tower record survival}.
}
\tag{HMR.24}
```

More sharply, the base annular geometry part is a strain-metric record; the
full tower also needs the transported frame/coefficient and velocity-pressure
record. Any proof of `(HMR.24)` would close the pure forward-gold no-exit branch,
because the retained heat-scale annular return is already attached to the
four-body packet.  Without `(HMR.24)`, the correct landing is the Part-side
loss of the same-packet record.
