---
theorem_id: forward-gold-total-strain-vorticity-exchange-retention-direct-attempt-20260622
status: direct-attempt-reduces-to-critical-strain-vorticity-clock-not-installed
logical_landing_node: total_strain_vorticity_exchange_retention
edge_effect: >-
  Tests whether original smooth data itself produces the retained total
  strain-vorticity exchange record needed after the net-versus-total correction.
  The exact total exchange is int phi |omega dot S omega|. It is controlled by
  either an L^1_s L^\infty_y strain clock times enstrophy height, or by a
  scale-critical L^3-type gradient/strain-vorticity density. Current energy,
  local energy, and the signed enstrophy ledger do not produce that unweighted
  heat-scale record: one normalized pulse has order-one total exchange while
  physical dissipation is radius-weighted. Thus retained total exchange is
  counted by A_4B, but pure forward no-exit requires a critical
  strain-vorticity clock or material tower survival theorem that is not
  installed.
parents:
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-positive-vorticity-stretching-total-exchange-admission-20260622.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-same-packet-strain-tower-coercion-direct-attempt-20260622.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-full-participation-material-tower-noexit-direct-attempt-20260622.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-terminal-same-packet-record-survival-material-clock-direct-attempt-20260622.md
---

# Total Strain-Vorticity Exchange Retention Direct Attempt

Date: 2026-06-22

## 0. Target

The retained-branch admission note proved that the selected positive stretching
carrier is paid once the total strain-vorticity exchange is retained:

```math
\int_I\int\phi[\omega\cdot S\omega]_+\,dy\,ds
\le
\int_I\int\phi|\omega\cdot S\omega|\,dy\,ds .
\tag{TSV.1}
```

The pure gold question is whether original smooth data forces the right side to
remain a retained same-packet record up to the terminal face.

Set

```math
X_{\omega S}^{tot}(I)
:=
\int_I\int\phi|\omega\cdot S\omega|\,dy\,ds .
\tag{TSV.2}
```

The desired theorem is

```math
\boxed{
X_{\omega S}^{tot}(I)
\le
C\int_I A_{4B}(\sigma)\,d\sigma
}
\tag{TSV.3}
```

on the terminal material annular atlas produced by original smooth data, with
no loss of the same packet.

## 1. Exact size of the exchange

Pointwise,

```math
|\omega\cdot S\omega|
\le
|S|\,|\omega|^2 .
\tag{TSV.4}
```

This gives the strain-clock form

```math
X_{\omega S}^{tot}(I)
\le
\int_I
\|S(s)\|_{L^\infty(\widehat A(s))}
\int_{\widehat A(s)}\phi|\omega(s)|^2\,dy\,ds .
\tag{TSV.5}
```

So one sufficient same-packet record is

```math
\boxed{
\int_I\|S(s)\|_{L^\infty(\widehat A(s))}\,ds<\infty
\quad\text{and}\quad
\sup_{s\in I}\int_{\widehat A(s)}\phi|\omega(s)|^2\,dy<\infty .
}
\tag{TSV.6}
```

This is the strain-metric clock plus enstrophy height.  It is a continuation
strength record.

A scale-critical form is obtained by Holder:

```math
\int_{\widehat A}\phi |S|\,|\omega|^2
\le
\|S\|_{L^3(\widehat A)}
\|\omega\|_{L^3(\widehat A)}^2
\lesssim
\|\nabla V\|_{L^3(\widehat A)}^3 .
\tag{TSV.7}
```

Thus another sufficient record is the critical density

```math
\boxed{
\int_I\int_{\widehat A(s)}
|\nabla V|^3\,dy\,ds<\infty .
}
\tag{TSV.8}
```

or any same-packet strain/vorticity variant that controls `(TSV.7)`.

This critical density is the heat-scale visible form of the annular strain
history.  For

```math
V_r(s,y)=r\,u(t_r+r^2s,x_r+ry),
\tag{TSV.8a}
```

we have

```math
\nabla_yV_r(s,y)
=
r^2\nabla_xu(t_r+r^2s,x_r+ry),
\qquad
dy\,ds=r^{-5}\,dx\,dt .
\tag{TSV.8b}
```

Hence

```math
\int_{-1}^{0}\int_{\widehat A_r}
|\nabla_yV_r|^3\,dy\,ds
=
r
\int_{t_r-r^2}^{t_r}
\int_{A_r(t)}
|\nabla_xu|^3\,dx\,dt .
\tag{TSV.8c}
```

For a heat-scale strain event with

```math
|\nabla_xu|\simeq r^{-2}
\tag{TSV.8d}
```

on a parabolic region of size \(r^3\cdot r^2\), the right side of `(TSV.8c)`
is order one.  Thus `(TSV.8)` is not erased by the shrinking physical radius;
it is the normalized same-annulus strain-history readout.

## 2. Why energy and signed enstrophy do not produce it

The physical dissipation of one heat-scale packet carries the radius discount:

```math
\int_{t_m-r_m^2}^{t_m}
\int_{B_{r_m}}
|\nabla u|^2\,dx\,dt
=
r_m
\int_{-1}^{0}\int_{B_1}|\nabla V_m|^2\,dy\,ds .
\tag{TSV.9}
```

But the normalized total strain-vorticity exchange is scale-critical:

```math
\int_{-1}^{0}\int_{B_1}
|\omega_m\cdot S_m\omega_m|\,dy\,ds
\tag{TSV.10}
```

can stay order-one on each normalized heat-scale packet.  Therefore physical
energy can control the radius-weighted sum, not the unweighted total-exchange
sum needed by the terminal annular count.

The signed enstrophy identity also does not produce `(TSV.2)`.  It controls

```math
\int\phi\,\omega\cdot S\omega,
\tag{TSV.11}
```

while `(TSV.2)` contains the absolute value.  Positive and negative stretching
can cancel in `(TSV.11)` while the total participation `(TSV.2)` remains large.

## 3. Exact current reduction

Current inputs therefore prove this retained-branch statement:

```math
\boxed{
\text{if }X_{\omega S}^{tot}\text{ is retained on the same material packet,}
\quad
\int\phi[\omega\cdot S\omega]_+
\leadsto
A_{4B}.
}
\tag{TSV.12}
```

They do not prove the pure forward no-exit statement

```math
\boxed{
OriginalSmoothData
\Longrightarrow
X_{\omega S}^{tot}
\text{ remains a retained same-packet terminal record.}
}
\tag{TSV.13}
```

To prove `(TSV.13)`, one needs one of the following same-packet records:

```math
\boxed{
\int \|S\|_{L^\infty}\,ds
\quad\text{with enstrophy height}
}
\tag{TSV.14}
```

or

```math
\boxed{
\int\int|\nabla V|^3\,dy\,ds
}
\tag{TSV.15}
```

or the equivalent finite material tower survival theorem that implies these
records on the transported annulus.

## 4. Landing

The total exchange correction removes the fake signed-cancellation obstruction.
It does not by itself prove original-smooth-data no-exit.

The exact frontier is:

```math
\boxed{
\texttt{TotalStrainVorticityExchangeRetention.A}
}
\tag{TSV.16}
```

with content `(TSV.13)`, or a same-packet critical strain-vorticity clock such
as `(TSV.14)`--`(TSV.15)`.

If the record is retained, the heat-scale shrinking problem is solved by the
transported annular atlas and the finite four-body count.  If the record is not
retained, the branch is loss of the same-packet derivative participation record.
