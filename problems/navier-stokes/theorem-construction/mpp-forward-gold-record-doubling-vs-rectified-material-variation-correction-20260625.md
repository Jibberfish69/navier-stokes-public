---
theorem_id: forward-gold-record-doubling-vs-rectified-material-variation-correction-20260625
status: correction-installed-doubling-is-net-growth-subcase-not-full-payback-clock
logical_landing_node: global_same_packet_full_clock_from_original_data
edge_effect: >-
  Corrects the live edge so material-record doubling is not treated as the
  whole pay-it-back-later mechanism. Doubling is the unbounded-record / net
  positive-growth subcase. The native physical object is the rectified full
  material service clock of the same transported pressure-viscosity-
  incompressibility-velocity history. Annular payback can have large total
  stress/strain variation with small net change, so the route must count the
  full positive material service/variation clock before reducing to any
  monotone record-growth language.
parents:
  - problems/navier-stokes/live-theorem-edge.yaml
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-material-record-doubling-direct-test-20260625.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-bounded-material-record-excludes-infinite-action-cycles-20260625.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-annular-payback-physical-frame-completion-boundary-20260625.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-moving-pump-subheat-absorption-superheat-record-dichotomy-20260625.md
---

# Record Doubling Versus Rectified Material Variation Correction

Date: 2026-06-25

## 0. Correction

The physical payback mechanism is not a net-growth-only theorem.

The same transported annulus can carry inward stress/strain service and later
return it outward.  The net record change on an interval can be small while the
total pressure-strain work, coefficient deformation, pressure elliptic service,
and collar/frame variation are large.

Therefore the native clock is the rectified full material service clock

```math
d\Omega_N^{full}
=
C_{\log}\,d[\log(1+\mathcal P_N^{mat})]_+
+d\Omega_N^{ann,+}
+d\Omega_N^{service,+}
+d\Omega_N^{legal},
\tag{RDV.1}
```

read on one original transported material history.

The material-record doubling statement is only the subcase

```math
\mathcal P_N^{mat}(t_m)\to\infty .
\tag{RDV.2}
```

It is not a replacement for `(RDV.1)`.

## 1. Why doubling is only a subcase

Let

```math
Y_N(t)=1+\mathcal P_N^{mat}(t).
\tag{RDV.3}
```

If

```math
\limsup_{t\uparrow T_*}Y_N(t)=\infty ,
\tag{RDV.4}
```

then stopping times give material-record doublings and

```math
\int_{I_m}d[\log Y_N]_+\ge \log2 .
\tag{RDV.5}
```

This is a correct net-growth branch.

But the annular payback picture also contains rectified return:

```math
\int_I [a(t)]_+\,dt
\le
\left[\int_Ia(t)\,dt\right]_+
+ |I|\operatorname{Var}_I(a),
\tag{RDV.6}
```

where \(a(t)\) is a signed same-material pressure/strain service density.
The first term is net change.  The second term is the total variation needed
to count inward/outward payback chatter.

So a proof that only counts `(RDV.5)` is incomplete unless the bounded-record
variation branch has already been absorbed into the same full material clock.

## 2. Installed bounded-record result

The bounded-record theorem gives the required object test:

```math
\sup_{t<T_*}\mathcal P_N^{mat}(t)<\infty
\quad\Longrightarrow\quad
\text{finite fixed-stack annular action under the same service clock.}
\tag{RDV.7}
```

This does not mean the service clock disappears.  It means bounded-record
annular cycling is not a detached obstruction.  Its variation is already a
coordinate of the full material clock `(RDV.1)`.

Thus the clean implication is

```math
\int_0^{T_*}d\Omega_N^{full}=\infty
\quad\Longrightarrow\quad
\text{failure of the same full material clock itself.}
\tag{RDV.8}
```

Only after the bounded-record variation coordinate is included in
`d\Omega_N^{full}` may the remaining unbounded-record branch be described by
doublings.

## 3. Consequence for the moving pump dichotomy

The moving-pump split gives

```math
\int_{I_j}[\mathcal M_j^{mov}]_+
\le
{1\over2}\int_{I_j}d_j
+
C\int_{I_j}
\Theta_j^{mat}e_j
\mathbf 1_{\{\Theta_j^{mat}>\delta2^{2j}\}}\,dt
+
\int_{I_j}r_j\,dt .
\tag{RDV.9}
```

The sub-heat part is absorbed by high-shell viscous residence.  The remaining
term is not automatically a material-record doubling.  It is the super-heat
rate residence of the same material service clock:

```math
\Theta_j^{mat}e_j
\mathbf 1_{\{\Theta_j^{mat}>\delta2^{2j}\}}\,dt
\subset
d\Omega_N^{service,+}.
\tag{RDV.10}
```

If this residence drives \(Y_N\) upward, it appears as
`d[log Y_N]_+`.  If it is later paid back outward with little net growth, it
appears as rectified annular/service variation.  Both are in `(RDV.1)`.

## 4. Correct live target

The MPP-facing gold target is therefore

```math
\boxed{
\int_0^{T_*}d\Omega_N^{full}<\infty .
}
\tag{RDV.11}
```

The doubling theorem is retained only as the unbounded-record branch of this
full-clock target:

```math
\text{record doubling}
\subset
\text{positive full material clock},
\tag{RDV.12}
```

not as the whole physical payback law.

This preserves the user-supplied ontology: the center spike, annular layers,
later stress/strain return, pressure, viscosity, incompressibility, velocity,
and frequency transfer remain one original smooth material history.
