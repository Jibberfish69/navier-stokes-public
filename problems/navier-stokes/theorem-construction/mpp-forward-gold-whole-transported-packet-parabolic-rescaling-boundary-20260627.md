---
theorem_id: forward-gold-whole-transported-packet-parabolic-rescaling-boundary-20260627
status: annular-wavelet-traction-current-reuse-payment-open
created: 2026-06-27
problem: navier-stokes
route: forward-gold same-material stopped routed participation current
logical_landing_node: GlobalSamePacketFullClockFromOriginalData.A
refines:
  - ReusedSameMaterialStressChannelReturnResetCharge.A
  - ForwardNativeReserveBirthPaysFullPLS.A
  - FullPacketScaleUniformActionProducer.A
  - CrossScaleSameMaterialReuseMustPay.A
  - DivergenceFreeAnnularWaveletTractionCurrentPayment.A
attacks_hinge:
  - CrossScaleSameMaterialReusePayment.A
  - ParentCurrentRecordVariationPaysInheritedStressReuse.A
  - ScaleUniformWholePacketActionInequality.A
  - OriginalHistoryWeightedFreshCurrentCapacity.A
  - OriginalParticipationStorageCoercivity.A
source_surfaces:
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-reused-channel-return-service-no-recirculation-equivalence-20260627.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-inherited-stress-direction-bv-quotient-compression-20260627.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-critical-sample-energy-compatibility-test-20260625.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-full-annular-density-bridge-direct-test-20260625.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-full-annular-density-prelimit-left-clock-circularity-test-20260625.md
  - problems/navier-stokes/theorem-construction/mcp-availableparticipationentropyconstruction-a-globalsamepacketfullclockfromoriginaldata-a-a85c6d09fe.md
effect: >-
  Corrects the scale target: do not rescale individual selected readouts.
  Rescale the whole transported Navier-Stokes material packet.  In the unit
  packet variables, velocity, pressure, material map, metric, incompressibility,
  Hodge/stress tests, and collar motion obey the same material system with the
  same viscosity.  The positive payment is the material traction current tested
  against a parent-known divergence-free stopped annular wavelet frame.  Pressure
  cancels in the stress pairing, fresh QR directions are Bessel and paid by the
  viscous \(L^2\) strain, and inherited directions must stay attached to the
  parent current record unless angle, selector, frame, reset/reselection, stop,
  or legal state changes.  The local packet storage calculation remains as a
  pressure test: \(A_j=-h_j\) pays algebraically but is lower-bounded exactly
  when \(h_j\) is already bounded, while gauge storage \(A_j=-m_jh_j\) works
  only after assuming the coefficient/full-material clock.  Partial, not Gold
  closed.
---

# Whole transported packet parabolic rescaling boundary

The scale correction is to rerun the proof on the whole transported material
packet, not to renormalize the selected scalar readouts one at a time.  The
entire pressure-viscosity-incompressibility-velocity packet has the Navier-
Stokes scaling.

## 1. Eulerian packet scaling

Fix a packet centered at \((x_0,t_0)\) with spatial scale \(r\).  Set

```math
y={x-x_0\over r},
\qquad
s={t-t_0\over r^2},
\tag{1}
```

and

```math
U(y,s)=r\,u(x_0+ry,t_0+r^2s),
\qquad
P(y,s)=r^2p(x_0+ry,t_0+r^2s).
\tag{2}
```

Then \(U,P\) solve the same equation with the same viscosity:

```math
\partial_sU+U\cdot\nabla_yU+\nabla_yP
=
\nu\Delta_yU,
\qquad
\nabla_y\cdot U=0.
\tag{3}
```

The point is that the whole coupled packet is invariant.  Pressure is not being
scaled as an external source, and viscosity is not being changed.

## 2. Material packet scaling

Let

```math
X^{(r)}(\alpha,s)
=
{X(a_0+r\alpha,t_0+r^2s)-x_0\over r}.
\tag{4}
```

Pull the material variables back to \((\alpha,s)\):

```math
V^{(r)}(\alpha,s)=r\,V(a_0+r\alpha,t_0+r^2s),
\qquad
Q^{(r)}(\alpha,s)=r^2Q(a_0+r\alpha,t_0+r^2s).
\tag{5}
```

Since \(D_\alpha X^{(r)}=D_aX\), the material inverse deformation and metric are
unchanged as tensors on the rescaled packet:

```math
A^{(r)}=A,
\qquad
G^{(r)}=G,
\tag{6}
```

pulled back to \((\alpha,s)\).  Consequently the whole material Navier-Stokes
system is identical:

```math
\partial_s V^{(r)}
+(A^{(r)})^T\nabla_\alpha Q^{(r)}
=
\nu\,\operatorname{div}_\alpha
\bigl(G^{(r)}\nabla_\alpha V^{(r)}\bigr),
\qquad
D_{A^{(r)}}V^{(r)}=0.
\tag{7}
```

The same stopped Hodge lift, divergence-free stress testing, material
connection motion, collar motion, and inherited/fresh stress-channel split must
therefore be read on the rescaled unit packet.

## 3. Material traction current annular wavelet payment

On a stopped parent material history \(P\), write the material stress law as

```math
\partial_s V=\operatorname{Div}_A T_A,
\qquad
T_A=-Q A+2\nu S_A A .
```

Choose stopped material annular wavelet tests \(w_Q\) that are parent-known and
divergence-free in the material coordinates:

```math
D_A\cdot w_Q=0.
```

Then the pressure contribution to the current readout vanishes exactly:

```math
\int_{\operatorname{Hist}(Q)} Q\,D_A\cdot w_Q=0.
```

The routed current increment is therefore viscous stress-work:

```math
\Delta J_Q
=
\int_{\operatorname{Hist}(Q)}T_A:\nabla_A w_Q
=
2\nu\int_{\operatorname{Hist}(Q)}S_A:\nabla_A w_Q .
```

Put all stopped tests into the parent Hilbert space

```math
\mathfrak H_P=L^2_{\mathrm{sym,tr}}(\operatorname{Hist}(P)),
```

and define the normalized stress-test vector

```math
a_Q
=
\sqrt{\mathcal R(Q)}\,
1_{\operatorname{Hist}(Q)}
P_{\mathrm{sym,tr}}\nabla_A w_Q .
```

Then

```math
\sqrt{\mathcal R(Q)}\,\Delta J_Q
=
\langle 2\nu S_A,a_Q\rangle_{\mathfrak H_P}.
```

Choose the stopped annular wavelets by parent-known QR:

```math
a_Q=d_Q+b_Q,
```

where \(d_Q\) is orthogonal to earlier admitted fresh directions and \(b_Q\) is
the inherited parent direction.  The fresh part is Bessel:

```math
\sum_Q |\langle 2\nu S_A,d_Q\rangle|^2
\le
4\nu^2\int_{\operatorname{Hist}(P)}|S_A|^2
\le
C(u_0).
```

The load-bearing inherited estimate is

```math
\sum_Q |\langle 2\nu S_A,b_Q\rangle|^2
\le
C\,\operatorname{Var}_P(J_{\rm parent})
+C\,R_{\rm legal}(P)
+C\,Stop(P).
```

Here \(J_{\rm parent}\) is the same parent material traction-current record.  An
inherited same-direction read is not a fresh scale action.  It remains attached
to that parent current record unless the material history changes angle,
selector, frame, collar, or stopping state; those changes are precisely the
reset/reselection, legal, and stop variations.

Combining the fresh Bessel part and the inherited current-record variation gives
the constructive stopped current square packing:

```math
\sum_{Q\subset P}
\mathcal R(Q)|\Delta J_Q|^2
\le
C(u_0)+C\,\operatorname{Var}_P(J_{\rm parent})
+C\,R_{\rm legal}(P)+C\,Stop(P).
```

Thus Gold closes from this mechanism exactly when the parent current-record
variation is proved finite from original transported Navier-Stokes history, with
bounded multiplicity across stopped descendants.

## 4. Local packet storage calculation

On one fully rescaled packet, isolate a high shell of the material stress
record.  Its normalized high stress energy has the model form

```math
\dot h_j+\nu d_j=b_jh_j+\rho_j.
\tag{8}
```

Here \(h_j\) is the normalized high stress energy, \(d_j\) is the corresponding
viscous/high-shell dissipation, \(b_j\) is the low material pressure/frame
coefficient, and \(\rho_j\) is legal, stop, or lower-order transfer.  The bad
normalized action is

```math
b_jh_j\,ds.
\tag{9}
```

The direct storage is

```math
A_j=-h_j.
\tag{10}
```

Then

```math
\dot A_j+b_jh_j
=
\nu d_j-\rho_j.
\tag{11}
```

So the algebra pays the bad term.  The lower bound fails at exactly the
continuation-strength point:

```math
A_j\ge -C
\qquad
\Longleftrightarrow
\qquad
h_j\le C.
\tag{12}
```

Thus local packet storage is circular.  It proves the desired packet action
only after assuming the high shell is already bounded.

## 5. Gauge storage calculation

The next local candidate is a gauge storage

```math
A_j=-m_jh_j,
\qquad
\dot m_j=-b_jm_j.
\tag{13}
```

This cancels the same bad action:

```math
\dot A_j+m_jb_jh_j
=
m_j\nu d_j-m_j\rho_j.
\tag{14}
```

But the weight is usable only while the coefficient clock is finite:

```math
m_j(s)=m_j(s_0)
\exp\left(-\int_{s_0}^s b_j(\tau)\,d\tau\right).
\tag{15}
```

So a uniform gauge requires

```math
\int |b_j|\,ds<\infty
\tag{16}
```

or an equivalent signed bounded-oscillation control.  That is the full material
clock in coefficient form.  Gauge storage is therefore another circular local
storage unless the coefficient/frame service has already been paid from original
history.

## 6. Constructive cross-scale closure statement

The rescaled packet calculation leaves one nonlocal theorem.  Infinite nested
reuse of the same material channel must remain inside the parent material
traction-current record, or it must create paid cross-scale change in the
original history:

```math
\sum_{k\subset P}^{reuse}
\Omega^{(1)}_{\rm norm}(P_k)
\le
C_N(u_0)+R_{\rm legal}(P)+Stop(P),
\tag{17}
```

where each \(P_k\) is viewed in its own unit packet scaling, and
\(\Omega^{(1)}_{\rm norm}(P_k)\) contains the normalized reused-channel action
that local storage would pay only circularly.

Equivalently, construct a forward same-material reserve assignment

```math
\iota:\Gamma_N^{reuse}(P)\to\mathcal R_N^{cross}(u_0;P)
\tag{18}
```

with

```math
\omega_\gamma
\le
C_N\rho_{\iota(\gamma)}
+R_{\rm legal}(\gamma)
+Stop(\gamma),
\qquad
\operatorname{mult}(\iota)\le C_N,
\tag{19}
```

and

```math
\sum_{\rho\in\mathcal R_N^{cross}(u_0;P)}\rho
\le
C_N(u_0)+R_{\rm legal}(P)+Stop(P).
\tag{20}
```

The reserve atom must be born from actual cross-scale same-material change:

```math
\rho
\in
\{
\text{fresh orthogonal stress work},
\text{collar/turnstile motion},
\text{pressure/frame coefficient loss},
\text{reset/reselection loss},
\text{legal/stop loss}
\}.
\tag{21}
```

This is the mathematical form of "reuse must pay."  Reusing the same rescaled
packet shape down a nested terminal family is not forbidden by the local packet
law.  It is paid when repeated inherited reads are counted as variation of the
same parent material traction-current record, or when repetition forces one of
the cross-scale changes in `(21)` with bounded multiplicity.

## 7. Why Bessel and raw energy still miss the target

The heat-scale counterprofile gives the scale count.  Raw energy and raw
Bessel/strain attachment can have

```math
\sum_k r_k<\infty
\tag{22}
```

while smoothness needs to rule out

```math
\sum_k 1=\infty.
\tag{23}
```

The standard fresh Bessel estimate pays genuine orthogonal stress work through
the \(d_Q\) part of the annular wavelet frame.  It does not by itself pay
infinitely many inherited reads of the same rescaled material channel through
the \(b_Q\) part.  The local storage \(A_j=-h_j\) sees those reads but has no
lower bound; the gauge storage sees them only after importing the full
coefficient clock.

Thus the noncircular Gold producer is `(17)`--`(21)`, not an ordinary packet
energy and not a scalar readout normalization.

## 8. Consequence if the cross-scale reuse theorem is proved

Assume `(17)`--`(21)` holds for the stopped packet family with the existing
finite-overlap stop/legal accounting.  Together with the installed fresh Bessel
part, summing over rescaled packets gives

```math
\sum_{P^{(r)}}\int d\Omega^{(r)}
\le
C_N(u_0)+R_{\rm legal}+Stop.
\tag{24}
```

The installed consumers then give finite selected critical action, finite
routed-current/full same-material clock, bounded continuation-depth material
record, and the standard \(H^s\) continuation past a finite terminal time.

Thus the whole-packet rescaling is exactly right as a normalization principle,
but the storage calculation shows what it cannot supply locally.  The remaining
theorem is the cross-scale same-material reuse payment `(17)`--`(21)`, proved
from the original Navier-Stokes law without importing the downstream full
material clock.

Gold remains partial, not closed.
