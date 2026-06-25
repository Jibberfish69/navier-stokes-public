---
theorem_id: forward-gold-full-annular-density-prelimit-left-clock-circularity-test-20260625
status: prelimit-left-clock-absorption-is-circular-unless-density-is-produced-by-loss-or-bounded-storage-drop
logical_landing_node: global_same_packet_full_clock_from_original_data
edge_effect: >-
  Tests whether the full gauge-reduced annular density can be made finite by
  placing it into the smooth prelimit master balance as left-side clock before
  compactness. The prelimit order is correct for lower-semicontinuity defects:
  any positive clock genuinely produced by the smooth same-carrier identity can
  pass to the relaxed limit with interface loss on the left. It does not by
  itself produce new positive clock mass. The full annular density is an
  absolute-value majorant of signed flux-derivative terms. Putting that
  absolute density on the left is noncircular only after each piece is derived
  as strict loss, bounded-below storage drop, or summable legal residual. The
  pressure-time and cubic collar pieces fail that test from installed inputs.
parents:
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-prelimit-master-balance-construction-check-20260623.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-signed-cancellation-pressure-time-cubic-gradient-test-20260625.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-pressure-strain-annular-action-producer-test-20260625.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-annular-density-termwise-control-audit-20260625.md
---

# Full Annular Density Prelimit Left-Clock Circularity Test

Date: 2026-06-25

## 0. Result

The prelimit master-balance order is correct for this route: build the smooth
same-carrier identity first, put every genuinely produced positive clock on the
left, then pass to the relaxed limit.

That order does not let us add an arbitrary positive density to the left.

For the full annular density, the decisive test is:

```math
\mathcal S_\phi^\sharp\,dt
\quad\text{must be produced by the smooth identity as loss, bounded-below storage drop, or legal residual.}
\tag{PLC.1}
```

If it is placed on the left only by definition, the argument assumes the finite
full clock it is trying to prove.

## 1. What the smooth prelimit balance can legitimately do

A smooth prelimit master balance has the form

```math
d\mathfrak L_m
+
c\,d\mathfrak C_m
+
d\mathcal L_m
\le
dR_m,
\qquad
\int dR_m<\infty.
\tag{PLC.2}
```

This is noncircular when every component of `dC_m` is derived from the smooth
same-carrier Navier-Stokes calculation.  In particular, a positive term may
enter `dC_m` only if it is one of:

```math
\text{strict nonnegative loss},
\tag{PLC.3}
```

```math
\text{positive part of a bounded-below storage drop},
\tag{PLC.4}
```

or

```math
\text{a residual already proved summable from subcritical local-energy data}.
\tag{PLC.5}
```

This is exactly why the prelimit method fixes the interface-defect problem: a
clock that is already on the left before compactness stays on the left after
relaxed lower semicontinuity.

## 2. The full annular density is not produced merely by differentiating the flux

The gauge-reduced annular flux derivative is

```math
{d\over dt}F_\phi^\sharp=I_1+I_2+I_3.
\tag{PLC.6}
```

The full density used in the rectified route is an absolute majorant:

```math
\mathcal S_\phi^\sharp
\simeq
|I_1|+|I_2|+|I_3|
\quad\text{after reducing }D_tT^\sharp\text{ to the spatial pressure-stress tower}.
\tag{PLC.7}
```

The signed derivative controls only

```math
I_1+I_2+I_3.
\tag{PLC.8}
```

It does not control the absolute sum `(PLC.7)`.  Component cancellations can
make `(PLC.8)` small while `(PLC.7)` is positive.  Thus the flux derivative
itself does not produce the positive density as a left-side loss.

## 3. Attempted absorption into the left clock

Suppose one tries to define

```math
d\mathfrak C_m
:=
\mathcal S_{\phi,m}^\sharp(t)\,dt
+
\text{other clocks}.
\tag{PLC.9}
```

Then `(PLC.2)` would imply

```math
\int_0^{T_*}\mathcal S_{\phi,m}^\sharp(t)\,dt<\infty
\tag{PLC.10}
```

after bounded-below storage and summable residual are known.

But deriving `(PLC.2)` with `(PLC.9)` requires the inequality

```math
c\,\mathcal S_{\phi,m}^\sharp(t)\,dt
\le
-d\mathfrak L_m
+dR_m
-\text{other nonnegative losses}.
\tag{PLC.11}
```

The installed smooth identities provide signed terms of the form `(PLC.8)`,
strict viscous/tower losses, and legal residuals.  They do not provide
`(PLC.11)` for the pressure-time elliptic service and cubic collar action.

Therefore `(PLC.9)` is a valid definition of the desired clock only after a
producer for `(PLC.11)` has been proved.  It is not itself that producer.

## 4. Pressure-time service fails the left-clock test as installed

The pressure-time term can be rewritten by differentiating

```math
Y_\phi(t)=\int P\,U\cdot\nabla\phi\,dx.
\tag{PLC.12}
```

This gives

```math
-\int D_tP\,U\cdot\nabla\phi
=
-{d\over dt}Y_\phi
+
\int P(\nabla\cdot T^\sharp)\cdot\nabla\phi
-
\int P\,U_i(\partial_iU_k)(\partial_k\phi).
\tag{PLC.13}
```

The derivative term can be absorbed into storage only if `Y_phi` is part of a
bounded-below cross-storage package.  The two remaining terms have the same
scale as the annular pressure-stress service:

```math
P\,\nabla\cdot T^\sharp\,\nabla\phi,
\qquad
P\,U\,\nabla U\,\nabla\phi.
\tag{PLC.14}
```

They are not legal residuals from local energy.  They are part of the full
positive material clock.  So pressure-time service cannot be put on the left
without also paying `(PLC.14)`.

## 5. Cubic collar action fails the left-clock test as installed

The cubic collar terms have the schematic form

```math
U(\nabla U)(\nabla U)\nabla\phi
\quad\text{and}\quad
U\,S(U)\,\nabla U\,\nabla\phi.
\tag{PLC.15}
```

They live exactly on the transported annular collar.  Bulk incompressible skew
cancellation does not remove them, because the collar gradient is the physical
interface where the annular exchange is read.

They are not nonnegative losses, and they are not derivatives of a known
bounded-below storage.  Their positive part is a material deformation service
term.  Putting it into `dC_m` is correct only after the same smooth identity
produces it with a sign or an independent loss estimate.

## 6. Exact conclusion

The prelimit master-balance route legitimately says:

```math
\text{anything genuinely produced as smooth left-clock mass}
\quad\text{survives compactness on the left}.
\tag{PLC.16}
```

It does not say:

```math
\text{any desired positive annular density can be declared left-clock mass}.
\tag{PLC.17}
```

For the full annular density, the current installed identities prove same-packet
admission and signed redistribution.  They do not prove the needed production
inequality:

```math
c\,\mathcal S_\phi^\sharp(t)\,dt
\le
-d\mathfrak L_m
+dR_m
-\text{other nonnegative losses}.
\tag{PLC.18}
```

Thus the noncircular state is:

```math
\boxed{
\text{prelimit absorption works only after the full annular density is produced as loss/storage/residual.}
}
\tag{PLC.19}
```

The pressure-time and cubic-gradient pieces remain exactly the positive full
material-clock burden, not a compactness artifact and not a residual that the
prelimit order removes by itself.