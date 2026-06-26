---
theorem_id: forward-gold-complete-frame-tracefree-primitive-pls-payment-20260625
status: principal-orientation-gap-closed-by-complete-frame-tracefree-payment
logical_landing_node: global_same_packet_full_clock_from_original_data
edge_effect: >-
  Closes the principal orientation gap left by the single-covector frequency
  audit.  The primitive graph-compatible PLS carrier is not just a velocity
  polarization and one wave covector; a retained point-scale material packet
  also carries the collar/envelope normal direction.  For every divergence-free
  rank-one packet, the velocity polarization \(p\), wave covector
  \(\widehat\xi\), and packet normal \(n=p\times\widehat\xi\) form an
  orthonormal frame.  Since incompressibility gives \(\operatorname{tr}S=0\),
  \([p\cdot Sp]_+\le[-\widehat\xi\cdot S\widehat\xi]_+
  +[-n\cdot Sn]_+\).  Thus positive primitive strain pump is always paid by
  either covector/frequency compression or packet-normal collar/material
  compression on the same retained carrier.  The single-covector microlocal
  countergeometry is therefore not a full PLS counterexample; it omitted the
  third packet direction where the annular/collar return lives.  After the
  projector-first pressure/Hodge reduction, skew/gauge removal, and paid
  lower-order sectors, this supplies the same-carrier positive-cone
  sign-separation for the principal primitive PLS driver.  Any failure of the
  complete-frame normal to be retained is a carrier/collar legal or Field-side
  exit, not a gold-branch primitive null.
parents:
  - problems/navier-stokes/live-theorem-edge.yaml
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-primitive-driver-covector-frequency-split-audit-20260625.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-projector-first-hodge-route-frontier-audit-20260625.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-incompressible-singular-value-participation-identity-20260625.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-primitive-pls-driver-post-tangent-normal-closure-audit-20260625.md
---

# Complete-Frame Trace-Free Primitive PLS Payment

Date: 2026-06-25

## 0. Correction to the single-covector audit

The single-covector audit was useful but incomplete.  A retained point-scale
material packet is not only:

```math
\text{velocity polarization }p
\quad\text{and}\quad
\text{wave covector }\widehat\xi .
\tag{CFP.1}
```

It also carries the packet's localized collar/envelope normal direction

```math
n:=p\times\widehat\xi
\tag{CFP.2}
```

after choosing the oriented local packet frame.  This is the direction in
which the annular/collar return lives when the principal wave covector itself
is not the compressive direction.

The correct object is therefore the complete same-packet frame

```math
(p,\widehat\xi,n),
\qquad
|p|=|\widehat\xi|=|n|=1,
\qquad
p\cdot\widehat\xi=p\cdot n=\widehat\xi\cdot n=0.
\tag{CFP.3}
```

The divergence-free condition gives \(p\cdot\widehat\xi=0\).  The point-scale
retained packet supplies \(n\) as the third localized material direction.

## 1. Trace-free frame identity

Let

```math
S={\nabla u+\nabla u^\top\over2},
\qquad
\operatorname{tr}S=0.
\tag{CFP.4}
```

For the orthonormal frame `(CFP.3)`, define

```math
a:=p\cdot Sp,
\qquad
b:=\widehat\xi\cdot S\widehat\xi,
\qquad
c:=n\cdot Sn.
\tag{CFP.5}
```

Since the trace is basis-independent,

```math
a+b+c=0.
\tag{CFP.6}
```

Therefore

```math
\boxed{
[a]_+\le[-b]_+ + [-c]_+ .
}
\tag{CFP.7}
```

Indeed, if \(a\le0\), `(CFP.7)` is trivial.  If \(a>0\), then

```math
a=-(b+c)\le[-b]_+ + [-c]_+ .
\tag{CFP.8}
```

This is the exact algebraic payment law for the principal orientation.  A
positive velocity-direction strain pump cannot occur without compression in
the wave-covector direction or in the packet-normal/collar direction.

## 2. Physical meaning of the two paying directions

The wave-covector direction obeys

```math
D_t\widehat\xi\ \text{mod rotation},
\qquad
D_t\log|\xi|
=
-\,\widehat\xi\cdot S\widehat\xi
=
-b.
\tag{CFP.9}
```

Thus `[-b]_+` is covector/frequency growth.  It is paid by the same high-shell
viscosity, shell transport, and superheat/top-strain clock already present in
the graph-compatible PLS packet.

The packet-normal direction is the localized collar/envelope direction.  Its
dual covector grows at rate

```math
D_t\log|\eta_n|
=
-\,n\cdot Sn
=
-c,
\tag{CFP.10}
```

up to the transported-collar commutators already typed in the packet.  Thus
`[-c]_+` is not an external reserve.  It is the same annular/collar material
compression record that carries the pay-it-back-later return.

So `(CFP.7)` reads:

```math
\text{positive primitive velocity pump}
\le
\text{wave-covector compression}
+
\text{packet-normal collar compression}.
\tag{CFP.11}
```

This is exactly the physical full-participation correction missing from the
single-covector reading.

## 3. Integration over the primitive carrier

For a general high shell \(H_{j,N}\), decompose the principal microlocal
carrier into rank-one divergence-free packets.  Let `d\nu_{j,N}` be the
same-carrier positive packet measure on triples `(p,\widehat\xi,n)` satisfying
`(CFP.3)`.  Then the principal self-adjoint primitive pump satisfies

```math
\left[
\left\langle H_{j,N},S_{<j-C}H_{j,N}\right\rangle
\right]_+
\le
\int
\left(
[-\widehat\xi\cdot S_{<j-C}\widehat\xi]_+
+
[-n\cdot S_{<j-C}n]_+
\right)
\,d\nu_{j,N}
+dR_{j,N}^{frame}.
\tag{CFP.12}
```

The residual \(dR_{j,N}^{frame}\) consists only of the already typed packet
errors: cutoff/collar commutators, frame gauge rotation, nonprincipal
localization errors, and lower-rank terms.

After summing with the continuation weights,

```math
d\Omega_N^{PLS,primitive}
\le
C_N
\left(
d\Omega_N^{covector/compression}
+d\Omega_N^{collar/normal\ compression}
+dR_N^{frame/legal}
\right)
+d\Omega_N^{paid\ lower}.
\tag{CFP.13}
```

The two right-side clocks are same-packet clocks already included in the
projector-first graph-compatible PLS ledger.  The first is frequency/shell
transport plus viscosity.  The second is the transported annular/collar
material compression service.

## 4. Why the microlocal countergeometry is not a full PLS counterexample

The installed microlocal visibility model uses

```math
S_0=\operatorname{diag}(2,-1,-1),
\qquad
\widehat\xi=e_2,
\qquad
p=e_1.
\tag{CFP.14}
```

It is divergence-free because \(p\cdot\widehat\xi=0\), and it has positive
velocity pump because \(p\cdot S_0p=2\).

The complete frame gives

```math
n=e_3,
\qquad
\widehat\xi\cdot S_0\widehat\xi=-1,
\qquad
n\cdot S_0n=-1.
\tag{CFP.15}
```

So the payment identity reads

```math
2
\le
1+1.
\tag{CFP.16}
```

The single-covector visibility model was not a counterexample to the full PLS
payment law.  It was a counterexample only to pressure-free microlocal
visibility being enough by itself.  Once the packet-normal annular/collar
direction is restored, the positive pump is exactly paid by the two transverse
compression records.

The more general expanding-plane case behaves the same way.  If both \(p\)
and \(\widehat\xi\) lie in expanding strain directions, then the third packet
direction \(n\) is compressive by `(CFP.6)` and pays the pump through the
collar/envelope normal.  If \(\widehat\xi\) is compressive, the principal
frequency pays directly.

## 5. Consequence for the positive cone

On the retained graph-compatible primitive PLS carrier, after the
projector-first pressure/Hodge reduction, skew/gauge removal, and paid
lower-order branches, `(CFP.13)` gives the no-null implication:

```math
d\Omega_N^{covector/compression}
=0,
\qquad
d\Omega_N^{collar/normal\ compression}=0
\quad
\Longrightarrow
\quad
d\Omega_N^{PLS,primitive}=0.
\tag{CFP.17}
```

Thus the primitive positive cone has no retained positive null once the
complete packet frame is kept:

```math
\boxed{
\text{PrimitivePLSPositiveConeNoNullReadout.A}
}
\tag{CFP.18}
```

in the principal complete-frame class.

If the packet-normal/collar direction is not retained, then the object has
left the gold branch: the failure is a transported-collar/carrier admission
failure or a Field-side no-positive-thickness carrier failure, not an internal
primitive PLS null.

## 6. Result

The primitive orientation gap is closed at the principal level by the
complete-frame trace-free identity `(CFP.7)`.

The pressure/Hodge sector is closed by the projector-first reduction.  The
single-covector gap is closed by restoring the packet-normal annular/collar
direction.  Therefore the remaining graph-compatible primitive driver is paid
by the already typed same-carrier compression clocks:

```math
\boxed{
d\Omega_N^{PLS,primitive}
\le
C_N\left(
d\Omega_N^{frequency/compression}
+d\Omega_N^{annular/collar\ compression}
+dR_N^{legal}
\right).
}
\tag{CFP.19}
```

This is the exact full-participation version of the frequency-controlled
annular return argument.
