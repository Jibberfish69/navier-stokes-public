---
theorem_id: forward-gold-complete-frame-payment-vs-full-clock-producer-audit-20260626
status: referee-audit-installed-complete-frame-payment-not-full-clock-producer
logical_landing_node: global_same_packet_full_clock_from_original_data
edge_effect: >-
  Audits the complete-frame trace-free primitive payment against the actual
  Gold-route producer burden. The complete-frame identity closes the pointwise
  primitive positive-cone null on retained packets, but it does not by itself
  prove finite total full PLS clock. The transverse paying records are
  frequency/covector compression and annular/collar-normal compression; their
  finite rectified total over the original transported material history is
  exactly part of the same full PLS clock still to be produced. This prevents
  the candidate assembly from being promoted to a solved state without a
  noncircular bounded-below storage, entropy, no-free-upcrossing theorem, or
  equivalent direct finite-action proof.
parents:
  - problems/navier-stokes/live-theorem-edge.yaml
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-complete-frame-tracefree-primitive-pls-payment-20260625.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-primitive-pls-driver-post-tangent-normal-closure-audit-20260625.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-superheat-residence-fixed-hs-equivalence-20260625.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-complete-frame-hodge-referee-sufficiency-audit-20260626.md
---

# Complete-Frame Payment Versus Full-Clock Producer Audit

Date: 2026-06-26

## 0. Referee purpose

This note fixes the exact distinction exposed by the current complete-frame
Hodge candidate.

The complete-frame trace-free identity proves a pointwise same-packet payment:

```math
[p\cdot Sp]_+
\le
[-\widehat\xi\cdot S\widehat\xi]_+
+
[-n\cdot Sn]_+ .
\tag{CFVA.1}
```

Here \(p\) is velocity polarization, \(\widehat\xi\) is the wave covector
direction, and \(n\) is the packet collar/envelope normal.  This is the right
one-fluid object.  It repairs the single-covector mistake by restoring the
third retained material direction.

The audit question is different:

```math
\int_0^{T_*}d\Omega_N^{PLS,full}<\infty .
\tag{CFVA.2}
```

That is a finite-time statement about the rectified total of all same-material
participation-law-strain service along the original transported material
history.

## 1. What the complete-frame identity proves

For each retained point-scale packet, positive velocity-direction pump cannot
be a free null.  It is carried by one of two transverse records:

```math
[-\widehat\xi\cdot S\widehat\xi]_+
\quad\text{or}\quad
[-n\cdot Sn]_+ .
\tag{CFVA.3}
```

The first record is wave-covector/frequency compression:

```math
D_t\log|\xi|
=
-\widehat\xi\cdot S\widehat\xi .
\tag{CFVA.4}
```

The second record is annular/collar-normal material compression:

```math
D_t\log|\eta_n|
=
-n\cdot Sn
\tag{CFVA.5}
```

up to the already typed transported-collar commutators.

Therefore the primitive positive-cone orientation gap is closed on retained
complete-frame packets.  A positive primitive pump is not detached from the
same material participation law.

## 2. What it does not prove

Equations `(CFVA.3)`--`(CFVA.5)` identify where the payment lives.  They do not
prove that the total transverse payment is finite on \([0,T_*)\).

After summing over shells and time, the complete-frame identity gives only

```math
d\Omega_N^{PLS,primitive}
\le
C_N\left(
d\Omega_N^{frequency/compression}
+
d\Omega_N^{annular/collar\ compression}
+
dR_N^{legal}
\right).
\tag{CFVA.6}
```

The two right-side clocks are not external finite reserves.  They are
components of the same full PLS clock.  Thus `(CFVA.6)` is a valid same-packet
admission and orientation theorem, not a finite-clock producer.

Promoting `(CFVA.6)` directly to `(CFVA.2)` would be circular unless one also
proves

```math
\int_0^{T_*}
\left(
d\Omega_N^{frequency/compression}
+
d\Omega_N^{annular/collar\ compression}
\right)
<\infty
\tag{CFVA.7}
```

from original smooth data without assuming bounded continuation-depth material
record.

## 3. Relation to the current equivalence theorem

The installed superheat-residence equivalence states that finite full material
residence is continuation-strength:

```math
\int_0^{T_*}d\Omega_N^{PLS,full}<\infty
\quad\Longleftrightarrow\quad
\sup_{t<T_*}\mathcal P_N^{mat}(t)<\infty
\tag{CFVA.8}
```

up to the fixed finite derivative depth needed for the readout.

Therefore any proof of `(CFVA.2)` must supply a noncircular source of finite
rectified transverse compression/action.  It cannot use the bounded material
record, fixed \(H^s\) control, or continuation criterion as an input.

## 4. Noncircular producer test

A valid Gold producer must give one of the following directly on the original
smooth material history:

```math
\mathscr A_N(0)<\infty,
\qquad
\inf_{t<T_*}\mathscr A_N(t)>-\infty,
\qquad
d\mathscr A_N+c_Nd\Omega_N^{PLS,full}
\le
dR_N^{legal},
\qquad
\int_0^{T_*}dR_N^{legal}<\infty,
\tag{CFVA.9}
```

or an equivalent no-free-upcrossing / no-self-birth theorem:

```math
\int_0^{T_*}d\Omega_N^{PLS,full}
\le
C_N(u_0).
\tag{CFVA.10}
```

The storage or argument must control the rectified total, not only the signed
net exchange.  It must also be bounded below without assuming the same
continuation-depth material record that `(CFVA.2)` is meant to prove.

## 5. Referee conclusion

The complete-frame trace-free identity is a real proof of same-packet
orientation/admission.  It prevents a retained primitive packet from being a
positive-cone null.

The Gold smoothness proof still requires the finite full-clock producer
`(CFVA.9)` or `(CFVA.10)`.  Until that producer is installed, the complete-frame
Hodge assembly remains a candidate assembly and the downstream no-finite-
breakdown statement remains conditional on
\(\mathrm{GlobalSamePacketFullClockFromOriginalData.A}\).
