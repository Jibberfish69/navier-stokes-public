---
theorem_id: forward-gold-c0-axisymmetric-swirl-fixed-endpoint-coefficient-audit-20260708
created: 2026-07-08
problem: navier-stokes
route: forward-gold / c_0 / transverse pressure Hessian / fixed-axis swirl endpoint
status: strict-reduction-and-checked-obstruction-not-c0-closure
source_refs:
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-c0-aligned-critical-record-atom-transverse-hodge-coercivity-20260707.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-c0-claude-codex-sync-transverse-coupling-20260707.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-c0-axisymmetric-plateau-turnoff-sublemma-20260707.md
completion_truth: >-
  This note audits Claude cycle 22 and the Gate-B axisymmetric-with-swirl
  endpoint. The causality claim does not discharge theorem A by itself: it
  reduces theorem A to a stopped parent-known selector admission theorem. The
  axisymmetric swirl calculation shows that the fixed-axis aligned endpoint is
  physically admissible at the local coefficient level and is not killed by
  scalar/isotropic reasoning, the no-swirl plateau sublemma, or a pointwise
  contradiction. The remaining theorem is a material-time Liouville/UCP
  exclusion for the exact retained zero-bill endpoint class, or an admitted
  counterprofile.
---

# Axisymmetric swirl fixed-endpoint coefficient audit

The fixed-axis swirl branch is a real same-fluid obstruction test. It has
anisotropy, vorticity, pressure, viscosity, and incompressibility, while the
pressure Hessian remains aligned with the strain frame by symmetry.

## 1. Cycle 22: causality does not by itself discharge theorem A

Claude cycle 22 says the anticipatory rotating-wave escape is forbidden by
causality because the child is carved from the parent at formation.

The physical part is correct: in a forward Navier--Stokes solution, the local
strain frame and any nonzero spin-2 orientation at a spacetime point are
determined by the already existing velocity field. But theorem A needs more
than physical existence of an orientation. The Schur detector has to be
parent-known before the selected child readout and has to retain comparable
record service under stopped first-exit selection.

So the actual theorem is

```math
\texttt{CausalStoppedSpinTwoSelectorAdmission.A}.
\tag{ASW.1}
```

It must prove that any retained critical record with nonzero spin-2 amplitude
admits a stopped, nonanticipatory, parent-announced detector carrying comparable
service, or else routes to pass, service-zero, collar/Field payment, endpoint
material, or a genuine same-field counterprofile.

Only after that selector theorem is proved do we get

```math
\texttt{CausalStoppedSpinTwoSelectorAdmission.A}
+
\texttt{SchurThinAdmissionRule.A}
+
\texttt{FiniteDimensionalSchurMotionPayment.A}
\Longrightarrow
\texttt{OrientedSpinTwoFrameTVPaidOrCounterprofile.A}.
\tag{ASW.2}
```

Thus causality removes the physically impossible reading of an anticipatory
flow, but it does not remove the proof obligation. The remaining Gate-A burden
is stopped selector admission, not mere wording.

## 2. On-axis axisymmetric swirl algebra

Near a smooth symmetry axis, write the axisymmetric velocity as

```math
u^r=a(z,t)r+O(r^3),\qquad
u^\theta=\gamma(z,t)r+O(r^3),\qquad
u^z=b(z,t)+c(z,t)r^2+O(r^4).
\tag{ASW.3}
```

Incompressibility gives, on the axis,

```math
b_z=-2a.
\tag{ASW.4}
```

Therefore the on-axis strain and rotation-square have the aligned form

```math
S=aP_\perp-2a\,e_z\otimes e_z,
\qquad
\Omega^2=-\gamma^2P_\perp .
\tag{ASW.5}
```

By \(SO(2)\) symmetry the pressure Hessian is also uniaxial:

```math
H=h_\perp P_\perp+h_z\,e_z\otimes e_z .
\tag{ASW.6}
```

Thus

```math
\Pi_\perp^S H=0
\tag{ASW.7}
```

by symmetry. This is aligned anisotropic flow, not isotropic flow.

The pressure trace on the axis is fixed by the Poisson equation:

```math
2h_\perp+h_z
=
\Delta p|_{r=0}
=
2\gamma^2-6a^2.
\tag{ASW.8}
```

The strain coefficient obeys the on-axis form of the strain equation

```math
D_t a
=
-a^2+\gamma^2-h_\perp+\nu\,\mathcal L_a,
\tag{ASW.9}
```

where \(D_t=\partial_t+b\partial_z\) along the axis and \(\mathcal L_a\) is the
viscous axis coefficient determined by the next spatial jets. This coefficient
is not closed by \(a\) and \(\gamma\) alone.

The swirl circulation

```math
\Gamma=ru^\theta
\tag{ASW.10}
```

satisfies the exact axisymmetric equation

```math
\partial_t\Gamma
+u^r\partial_r\Gamma
+u^z\partial_z\Gamma
=
\nu\left(\partial_r^2-\frac1r\partial_r+\partial_z^2\right)\Gamma .
\tag{ASW.11}
```

For \(\Gamma=\gamma(z,t)r^2+O(r^4)\), this yields the on-axis coefficient law

```math
D_t\gamma+2a\gamma=\nu\,\gamma_{zz}+\text{higher-axis terms}.
\tag{ASW.12}
```

The maximum principle controls \(\Gamma\), not automatically the quotient
\(\gamma=\Gamma/r^2\). Radial compression through \(a\) can amplify the on-axis
swirl rate while preserving the aligned frame.

## 3. What the coefficient test proves

There is no local algebraic contradiction in a fixed-axis aligned swirl
endpoint. The deviatoric part of the aligned pressure Hessian, \(h_z-h_\perp\),
is still a nonlocal pressure datum. The trace constraint (ASW.8) fixes only
\(2h_\perp+h_z\), and the viscous strain coefficient in (ASW.9) depends on
higher same-field jets.

So Gate B cannot be closed by saying the swirl source is scalar, by invoking
the no-swirl plateau turn-off sublemma, or by treating \(H_\perp^S=0\) as
affineness. The branch is physically real enough to survive those tests.

The smaller remaining theorem is

```math
\texttt{AxisymmetricSwirlFixedEndpointCoefficientLiouville.A}.
\tag{ASW.13}
```

It must exclude a finite-energy, viscosity-compatible, retained marginal
axisymmetric-with-swirl endpoint satisfying (ASW.3)--(ASW.12), zero
collar/Field/parent bill, positive critical record service, and no
pass/service-zero/endpoint-kernel escape. Equivalently, it must prove that
nonzero \(\gamma\) either pays a same-currency vorticity/current/collar bill,
degenerates to pass/service-zero, or enters an admitted endpoint class already
excluded by material-time Liouville.

If that theorem fails, the fixed-axis swirl endpoint is the Gate-B
counterprofile candidate. This remains a strict reduction, not a proof of
\(c_0>0\).

## 4. Gate A finite-net pressure test

The spin-2 angle itself is not the hard part. Once a retained nonzero spin-2
component and a strain eigenvalue gap are already admitted, the oriented line
lives in the compact circle \(S^1/\pi\). A fixed finite net
\(\{T_{\varphi_k}\}\) captures it up to a constant:

```math
\max_k|\langle T_{\varphi_k},T_\varphi\rangle|
\ge c_{\rm net}>0 .
\tag{ASW.14}
```

Thus a parent-known finite angular menu can replace the exact angle after
losing only a fixed constant, provided the amplitude and eigenvalue gap are
retained above threshold.

For a fixed detector in that menu, the first time its retained score crosses a
threshold is a stopped time, and the existing Schur / finite stopped-score
machinery pays later detector motion or routes the interval to stop, legal,
collar, or exit. This gives the conditional implication

```math
\texttt{FiniteParentKnownRecordEdgeSelectorMenu.A}
+
\texttt{SpinTwoLowerEdgeGapAdmission.A}
+
\texttt{StoppedSelectorFiniteScoreOrPaidDrift.A}
\Longrightarrow
\texttt{CausalStoppedSpinTwoSelectorAdmission.A}.
\tag{ASW.15}
```

The current repo sources do not prove the first input. The selector-capture
audit says the finite stopped-score theorem is proof-grade only after an
order-locked retained selector chart is already parent-known. A future-positive
edge can still be selected by a moving argmax outside any fixed finite parent
menu unless

```math
\texttt{FiniteParentKnownRecordEdgeSelectorMenu.A}
\tag{ASW.16}
```

is proved from the original same-fluid history before positive readout.

So Gate A is not blocked by continuum angle geometry. It is blocked by
pre-readout record-edge capture: the parent must know the carrier, time window,
spin-2 detector, order-lock, and retained lower edge before the child record is
read as positive. That is a real admission theorem, not just ledger cleanup.

## 5. Cycle 23: endpoint exclusion does not yet reach Gate B

Claude cycle 23 asks whether the endpoint exclusion reaches the axisymmetric
swirl branch. The current answer is no.

There is one wording correction. The Gate-B survivor should not be called an
admitted classical finite-energy self-similar Navier--Stokes blow-up. Exact
self-similar profiles in the installed NRS/Tsai exclusion class are already
excluded under their hypotheses. The present \(c_0\) object is the marginal
retained fixed-axis endpoint produced after zero-bill atom compactness, with
possible swirl and aligned pressure Hessian.

The endpoint exclusion reaches Gate B only after this implication is proved:

```math
\text{zero-bill retained fixed-axis swirl atom}
\Longrightarrow
\text{exact profile class covered by NRS/Tsai or stronger material-time Liouville}.
\tag{ASW.17}
```

That implication is not installed. The no-swirl plateau sublemma also does not
apply because the on-axis swirl coefficient \(\gamma\) changes \(\Omega^2\) and
the pressure trace while preserving \(SO(2)\) alignment.

Thus the current Gate-B theorem remains

```math
\texttt{AxisymmetricSwirlFixedEndpointCoefficientLiouville.A}.
\tag{ASW.18}
```

It must either promote the marginal retained endpoint into an excluded rigid
profile class, prove a stronger material-time Liouville theorem directly on the
coefficient/atom class, or admit the fixed-axis swirl endpoint as the
counterprofile.

## 6. Cycle 24: circulation is not enough to exclude the axis branch

Claude cycle 24 proposes that \(\Gamma=ru^\theta\) is a material invariant,
vanishes on the axis, and therefore excludes an on-axis swirl record.

This is not valid for Navier--Stokes. In the viscous equation the exact law is
(ASW.11):

```math
D_t\Gamma
=
\nu\left(\partial_r^2-\frac1r\partial_r+\partial_z^2\right)\Gamma .
\tag{ASW.19}
```

So \(\Gamma\) is not a material invariant. It is a parabolic scalar with a
maximum-principle structure.

The second problem is the record variable. Smoothness gives

```math
\Gamma(r,z,t)=\gamma(z,t)r^2+O(r^4)
\quad\text{near }r=0,
\tag{ASW.20}
```

so \(\Gamma=0\) on the axis is automatic. The swirl rate

```math
\gamma=\lim_{r\to0}\frac{\Gamma}{r^2}
\tag{ASW.21}
```

and the axial vorticity \(2\gamma\) can still be the concentrating quantity.
Under critical parabolic scaling, a scale \(r\sim\ell\) can have
\(\gamma\sim \ell^{-2}\) while \(\Gamma\sim O(1)\) on that scale and
\(\Gamma=0\) at the axis. Thus a maximum-principle bound for \(\Gamma\) does
not by itself rule out critical growth of \(\gamma\), strain, vorticity, or the
aligned pressure Hessian.

This gives a useful but limited reduction. A Gate-B proof may try to show that
nonzero \(\gamma\) creates a same-currency charge through the \(\Gamma\)-current,
its diffusion, or its collar/annular flux. But that charge is not installed
from \(\Gamma=0\) on the axis. The on-axis coefficient branch remains open
unless one proves such a charge or routes it to pass/service-zero/endpoint
kernel.

The off-axis annular branch is also real: there \(\Gamma\) itself need not
vanish, and any material-time Liouville proof must control the annular
transport/diffusion/collar flux in the same zero-bill atom currency. Current
endpoint exclusion does not reach that branch either.

## 7. Cycle 26: current currency does not charge \(\gamma\)

Claude cycle 26 retracts the on-axis exclusion and asks whether the existing
currency charges

```math
\gamma=\frac{\Gamma}{r^2}.
\tag{ASW.22}
```

It does not currently do so. The axis maximum principle controls \(\Gamma\),
not the quotient. The coefficient equation has the radial-compression term
\(2a\gamma\), so inward compression can amplify \(\gamma\) while \(\Gamma\)
stays bounded on the shrinking scale.

The remaining on-axis theorem is therefore the same quotient Liouville problem:
prove that a retained positive \(\gamma\)-record in the zero-bill strict atom
class forces a same-currency payment through axis Hardy/current flux, viscous
diffusion, collar/annular flux, or Field currency, or else degenerates to
pass/service-zero/endpoint-kernel material. This is not installed.

## 8. Cycle 27: Hardy must be material-time signed

Hardy control is a plausible quotient-conversion ingredient, but only after it
is tied to the retained atom currency. Plain Hardy is magnitude coercivity.
Swirl handedness is not the missing sign, because \(\gamma\mapsto-\gamma\)
leaves \(\Omega^2\), the pressure source, and the \(SO(2)\)-aligned Hessian
structure unchanged.

The missing signed object is a material-time charge: compression, current,
diffusion, annular flux, or collar/Field payment attached to the retained
\(\gamma\)-record. Without that conversion, Hardy remains a candidate proof
ingredient for

```math
\texttt{SignedAxisGammaQuotientHardyLiouville.A},
\tag{ASW.23}
```

not the theorem itself.

## 9. Cycle 33: the native B1 current is compression-quotient work

Claude cycle 33 asks whether there is an installed signed/oriented Hardy
dominating the \(\gamma\)-quotient on the self-similar layer. There is not.
The source audit gives a candidate signed identity, not the lower bound.

Set

```math
\gamma=\frac{\Gamma}{r^2},
\qquad
a_r=\frac{u^r}{r},
\qquad
D_t=\partial_t+u^r\partial_r+u^z\partial_z .
\tag{ASW.24}
```

Using the circulation law `(ASW.11)' and \(\Gamma=r^2\gamma\), the quotient
obeys

```math
D_t\gamma+2a_r\gamma
=
\nu\left(\partial_r^2+\frac3r\partial_r+\partial_z^2\right)\gamma .
\tag{ASW.25}
```

Thus

```math
D_t\left(\frac12\gamma^2\right)
+2a_r\gamma^2
=
\nu\gamma
\left(\partial_r^2+\frac3r\partial_r+\partial_z^2\right)\gamma .
\tag{ASW.26}
```

The sign-bearing term is \(2a_r\gamma^2\). Inward radial compression
\(a_r<0\) amplifies \(|\gamma|\); radial expansion damps it. This sign is
material-time orientation. It flips under \(u\mapsto -u\) through \(a_r\), while
\(\gamma^2\), \(\Omega^2\), and the axisymmetric pressure source do not.

Hardy can still enter as a quotient magnitude conversion from \(\Gamma\) or its
radial derivative to \(\gamma\). But Hardy does not choose the sign of
`(ASW.26)' and does not prevent compression/expansion cancellation. Therefore
B1 has the same signed-wall type as Gate A, but with a different native current:

```math
\text{Gate A current: inter-packet signed transfer through collars,}
\tag{ASW.27}
```

```math
\text{B1 current: material compression-quotient work }
2a_r\gamma^2
\text{ plus diffusion/axis/annular flux.}
\tag{ASW.28}
```

The sharper B1 theorem is:

```math
\texttt{AxisGammaCompressionQuotientNoFreeRecord.A}.
\tag{ASW.29}
```

Statement. A retained zero-bill fixed-axis swirl atom with positive
\(\gamma\)-record must either have positive material-time compression work
\(-2a_r\gamma^2\) retained in bill currency, diffusion/axis/annular flux in the
same currency, collar/Field/merge/stop/pass route-out, or degeneration to the
endpoint kernel. Equivalently, compression/expansion oscillation in `(ASW.26)'
cannot carry positive retained \(\gamma\)-record with zero signed bill.

Then

```math
\texttt{AxisGammaCompressionQuotientNoFreeRecord.A}
\Longrightarrow
\texttt{SignedAxisGammaQuotientHardyLiouville.A}.
\tag{ASW.30}
```

This is not currently installed. So B1 is not closed by magnitude Hardy,
\(\Gamma\) maximum principle, finite dissipation, or swirl handedness. It is a
signed material-time Liouville/no-free-oscillation theorem for the quotient
identity `(ASW.25)'--`(ASW.26)'.

## 10. Cycle 34: B2 has the same signed-work architecture, not the same radial-collapse current

Claude cycle 34 proposes one common law: no free reversing collapse. This is
correct as a meta-law if "collapse" means selected record-amplifying
material-time orientation. It is too narrow if it means only radial compression
or downscale transfer.

For the off-axis annular swirl branch, the native variable is the poloidal
vorticity quotient

```math
\zeta=\frac{\omega^\theta}{r}.
\tag{ASW.31}
```

In axisymmetric Navier--Stokes it obeys

```math
D_t\zeta
=
\nu\left(\Delta+\frac2r\partial_r\right)\zeta
+\frac1{r^4}\partial_z\Gamma^2 .
\tag{ASW.32}
```

Thus

```math
D_t\left(\frac12\zeta^2\right)
=
\nu\zeta\left(\Delta+\frac2r\partial_r\right)\zeta
+\frac{\zeta}{r^4}\partial_z\Gamma^2 .
\tag{ASW.33}
```

The sign-bearing B2 work is

```math
\frac{\zeta}{r^4}\partial_z\Gamma^2,
\tag{ASW.34}
```

plus diffusion and annular/collar flux. This is \(T\)-odd: under
\(u\mapsto -u\), \(\Gamma^2\) is unchanged while \(\zeta\) changes sign. But it
is not radial compression. It is the orientation of poloidal roll-up against
the axial gradient of swirl energy on an annulus.

Therefore B2 reduces to the same no-free-reversal architecture only after the
native direction is changed:

```math
\begin{array}{ll}
\text{Gate A:} & \text{forward inter-packet transfer direction},\\
\text{Gate B1:} & \text{inward radial compression direction},\\
\text{Gate B2:} & \text{annular poloidal swirl-gradient direction}.
\end{array}
\tag{ASW.35}
```

The sharper B2 theorem is:

```math
\texttt{OffAxisAnnularSwirlGradientNoFreeReversal.A}.
\tag{ASW.36}
```

Statement. A retained zero-bill off-axis annular swirl endpoint with positive
poloidal/strain record must either pay by the signed work
\(r^{-4}\zeta\,\partial_z\Gamma^2\), diffusion or annular/collar flux in the
same currency, or route to collar/Field/merge/stop/pass/endpoint-kernel
material. Equivalently, annular poloidal forcing cannot roll up and unroll the
selected record for free.

Then

```math
\texttt{OffAxisAnnularSwirlGradientNoFreeReversal.A}
\Longrightarrow
\texttt{OffAxisAnnularSwirlEndpointLiouville.A}.
\tag{ASW.37}
```

So A, B1, and B2 are instances of one signed material-time no-free-reversal
principle, but B2 remains a separate native-current theorem unless that
principle is formulated abstractly enough to include annular swirl-gradient
work.

## 11. Claude cycle 35: B1 sees the centrifugal brake through the radial-compression equation

The owner-installed object-failure admission gate removes scaling ghosts,
restricted-Euler shadows, marginal embeddings, and local algebraic production
terms from the failure list until they are stated as same-fluid events. Under
that gate, the real B1 physical question is narrower: can inward compression at
the record edge overpower the centrifugal outward barrier without paying in the
same axisymmetric currency?

The \(\gamma\)-record equation alone sees compression:

```math
D_t\left(\frac12\gamma^2\right)
=
-2a_r\gamma^2
+\nu\gamma
\left(\partial_r^2+\frac3r\partial_r+\partial_z^2\right)\gamma .
\tag{ASW.38}
```

The centrifugal brake enters through the companion radial momentum equation.
With

```math
a_r=\frac{u^r}{r},
\qquad
\Gamma=r u^\theta,
```

the radial equation

```math
D_tu^r-\frac{(u^\theta)^2}{r}+\partial_r p
=
\nu\left(\Delta-\frac1{r^2}\right)u^r
```

gives

```math
D_t a_r+a_r^2
=
\frac{\Gamma^2}{r^4}
-\frac1r\partial_r p
+\frac{\nu}{r}\left(\Delta-\frac1{r^2}\right)u^r .
\tag{ASW.39}
```

The term \(\Gamma^2/r^4\) has the brake sign: it pushes \(a_r\) upward, hence
opposes sustained \(a_r<0\) compression. Thus the B1 currency must be a paired
currency, not a \(\gamma\)-only Hardy currency:

```math
\text{compression production }(-2a_r\gamma^2)
\quad\text{paired with}\quad
\text{centrifugal barrier }\frac{\Gamma^2}{r^4}
```

and with the pressure, viscous, annular/axis, and collar terms in (ASW.39)
owned rather than discarded.

The sharper B1 residual is therefore:

```math
\texttt{AxisGammaCompressionCentrifugalBarrierNoFreeRecord.A}.
\tag{ASW.40}
```

Statement. A retained fixed-axis swirl record cannot keep \(a_r<0\) at the
record edge, amplify \(\gamma\) by \(-2a_r\gamma^2\), and simultaneously hide
the outward \(\Gamma^2/r^4\) brake, pressure response, viscosity, annular/axis
flux, and collar/complement accounting. It must pay in that paired currency or
route to stop/pass/Field/collar/merge/service-loss/endpoint-kernel material.

Then

```math
\texttt{AxisGammaCompressionCentrifugalBarrierNoFreeRecord.A}
\Longrightarrow
\texttt{AxisGammaCompressionQuotientNoFreeRecord.A}
\Longrightarrow
\texttt{SignedAxisGammaQuotientHardyLiouville.A}.
\tag{ASW.41}
```

So the B currency does see the centrifugal self-brake. The remaining Hou--Luo
physical residual is exactly whether same-fluid pressure/collar/viscous
mechanisms can sustain the compressive record edge against that barrier for
free. That is an admitted fluid question; the filtered ghosts are not.

## 12. Claude cycle 36: the B ledger is paired driver versus brake

Claude cycle 36 sharpens the B-side object again. The physical B sentence is:
does the poloidal swirl-gradient driver overpower the centrifugal brake at the
record edge?

Both sides are generated by the same swirl energy \(\Gamma^2\). The driver is
the B2/poloidal vorticity source:

```math
D_t\zeta
=
\nu\left(\Delta+\frac2r\partial_r\right)\zeta
+\frac1{r^4}\partial_z\Gamma^2,
\qquad
\zeta=\frac{\omega^\theta}{r}.
\tag{ASW.42}
```

The corresponding record-production density is

```math
\frac{\zeta}{r^4}\partial_z\Gamma^2 .
\tag{ASW.43}
```

The brake is the centrifugal radial force from the same \(\Gamma^2\):

```math
\frac{\Gamma^2}{r^3}
\quad\text{in the }u^r\text{ equation},
\qquad
\frac{\Gamma^2}{r^4}
\quad\text{in the }a_r=\frac{u^r}{r}\text{ equation}.
\tag{ASW.44}
```

Thus the native B ledger is not a one-current sign ledger. It is a paired
same-fluid ledger:

```math
\mu_B^{\rm drive}
\sim
\chi_{\rm rec}
\left(\frac{\zeta}{r^4}\partial_z\Gamma^2\right)_+\,dt\,dx,
\qquad
\mu_B^{\rm brake}
\sim
\chi_{\rm rec}
\frac{\Gamma^2}{r^4}\,dt\,dx,
\tag{ASW.45}
```

with pressure, viscosity, annular/axis flux, collar/complement work, and
participation ownership carried on the same selected record packet. The exact
weights and positive-part selector belong to the strict atom/participation
currency; (ASW.45) is the physical pairing that the formal theorem must realize.

The sharpened theorem is:

```math
\texttt{AxisSwirlDriverCentrifugalBrakeNoFreeRecord.A}.
\tag{ASW.46}
```

Statement. A retained Hou--Luo-type axisymmetric record edge cannot use the
poloidal driver \(r^{-4}\zeta\,\partial_z\Gamma^2\) to create or maintain the
inward compressive record while hiding the centrifugal brake
\(\Gamma^2/r^3\) / \(\Gamma^2/r^4\). If the driver wins, the ledger must show
where the brake is overcome: pressure, viscosity, annular/axis flux, collar
/complement work, participation loss, or a typed route-out.

Then the B chain becomes

```math
\texttt{AxisSwirlDriverCentrifugalBrakeNoFreeRecord.A}
\Longrightarrow
\texttt{AxisGammaCompressionCentrifugalBarrierNoFreeRecord.A}
\Longrightarrow
\texttt{AxisGammaCompressionQuotientNoFreeRecord.A}
\Longrightarrow
\texttt{SignedAxisGammaQuotientHardyLiouville.A}.
\tag{ASW.47}
```

This paired driver-vs-brake theorem is now the B-side wall. It is a same-fluid
fluid event and an admitted residual. It is not proved here.

## 13. Claude cycle 37: the B2 switch is the Rayleigh discriminant

Claude cycle 37 identifies the missing sign in the paired B ledger. The raw
centrifugal force gives the brake magnitude, but the radial stability switch is
the Rayleigh discriminant

```math
\Phi_R
=
\frac1{r^3}\partial_r\Gamma^2 .
\tag{ASW.48}
```

Near the axis, smooth swirl has \(u^\theta=O(r)\), hence
\(\Gamma=r u^\theta=O(r^2)\), so \(\Gamma^2=O(r^4)\) and
\(\Phi_R>0\) to leading order. That is the on-axis physical brake: the angular
momentum profile rises outward and centrifugal response is restoring. This
filters the B1 on-axis pile-up as a physical zero-bill concentration mechanism.

The admitted B2 residual is off-axis Rayleigh-unstable annular concentration:

```math
\partial_r\Gamma^2<0
\qquad\text{or equivalently}\qquad
\Phi_R<0 .
\tag{ASW.49}
```

The B2 source

```math
\frac{\zeta}{r^4}\partial_z\Gamma^2
```

is the poloidal swirl-gradient driver. The Rayleigh sign decides whether the
same centrifugal field restores the radial displacement or feeds it. Thus the
B2 ledger should carry the selected negative-Rayleigh part:

```math
\mu_B^{\rm Rayleigh}
\sim
\chi_{\rm rec}
\left(-\frac1{r^3}\partial_r\Gamma^2\right)_+\,dt\,dx,
\tag{ASW.50}
```

paired with the poloidal driver measure and with pressure, viscosity,
annular/axis flux, collar/complement work, and participation ownership.

The sharpened B2 theorem is:

```math
\texttt{OffAxisRayleighUnstableSwirlDriverNoFreeRecord.A}.
\tag{ASW.51}
```

Statement. A retained off-axis Hou--Luo-type annular record cannot sustain
self-similar concentration by combining the poloidal driver
\(r^{-4}\zeta\,\partial_z\Gamma^2\) with a negative Rayleigh discriminant
\(\Phi_R<0\) while paying no pressure, viscosity, annular/axis flux,
collar/complement work, participation loss, or typed route-out.

Then the B2 chain is

```math
\texttt{OffAxisRayleighUnstableSwirlDriverNoFreeRecord.A}
\Longrightarrow
\texttt{AxisSwirlDriverCentrifugalBrakeNoFreeRecord.A}
\Longrightarrow
\texttt{SignedAxisGammaQuotientHardyLiouville.A}.
\tag{ASW.52}
```

So yes: the B2 ledger reads \(\partial_r\Gamma^2\) as the brake/driver switch.
The remaining B2 wall is exactly the off-axis negative-Rayleigh annular
Hou--Luo residual. It is not closed here.

## 14. Codex cycle 38: the Rayleigh switch lives in the angular-momentum gradient budget

The next pressure test is whether negative Rayleigh can be treated as an
unowned free sign. It cannot. It is one component of the same angular-momentum
gradient that also supplies the poloidal driver.

Set

```math
F=\Gamma^2,
\qquad
L_\Gamma=\partial_r^2-\frac1r\partial_r+\partial_z^2 .
\tag{ASW.53}
```

From the circulation law `(ASW.11)',

```math
D_tF
=
\nu L_\Gamma F
-2\nu|\nabla_{r,z}\Gamma|^2 .
\tag{ASW.54}
```

On an off-axis annular atom, where \(r\) is bounded above and below in the
normalized packet geometry, the two B2 quantities are just weighted components
of \(\nabla F\):

```math
\text{Rayleigh switch}
\quad
\Phi_R=\frac1{r^3}F_r,
\qquad
\text{poloidal driver}
\quad
\frac{\zeta}{r^4}F_z .
\tag{ASW.55}
```

Thus a Hou--Luo-type retained record is not merely "negative Rayleigh." It is an
oriented angular-momentum-gradient packet:

```math
F_r<0,
\qquad
\zeta F_z \text{ selected with the amplifying sign},
\tag{ASW.56}
```

while the same \(F\)-equation carries diffusion, angular-momentum gradient
dissipation, transport, and annular/collar flux.

This does not prove the B2 theorem. There is no pointwise contradiction between
\(F_r<0\) and \(\zeta F_z\neq0\) on an off-axis annulus. Negative Rayleigh is a
real fluid instability mechanism, not a filtered ghost. What `(ASW.54)' gives
is the right smaller budget theorem:

```math
\texttt{OffAxisAngularMomentumGradientBudgetNoFreeRecord.A}.
\tag{ASW.57}
```

Statement. In a retained off-axis strict atom, an angular-momentum-gradient
packet satisfying `(ASW.56)' cannot sustain positive B2 record while the
localized \(F\)-diffusion/dissipation in `(ASW.54)', the \(\zeta\)-equation
diffusion, annular/collar flux, pressure/complement work, and participation
ownership all vanish or route nowhere.

Then

```math
\texttt{OffAxisAngularMomentumGradientBudgetNoFreeRecord.A}
\Longrightarrow
\texttt{OffAxisRayleighUnstableSwirlDriverNoFreeRecord.A}.
\tag{ASW.58}
```

So the B2 wall is now sharper. The admitted survivor is an off-axis
negative-Rayleigh angular-momentum-gradient packet that keeps \(F_r<0\) and
\(\zeta F_z\) in the amplifying orientation while paying none of the scalar
\(F\)-budget, poloidal-vorticity, collar, pressure/complement, or participation
costs. That is the object to prove impossible or route out.

## 15. Cubic-drop pressure refund is the same Rayleigh/centrifugal budget

The cubic-moment turn-off calculation adds one useful check to the Gate-B
stack. In the aligned poloidal turn-off, a non-solid swirl can cancel the
same-time pressure-source row. That cancellation is not a new pressure bank.
It is the same angular-momentum-gradient object already isolated above.

Indeed, with \(u^\theta=\Gamma/r\),

```math
-2\frac{u^\theta}{r}\partial_r u^\theta
=
-2\frac{\Gamma}{r^2}
\left(\frac{\partial_r\Gamma}{r}-\frac{\Gamma}{r^2}\right)
=
-\frac1{r^3}\partial_r(\Gamma^2)
+\frac{2\Gamma^2}{r^4}.
\tag{ASW.59}
```

Thus the fixed-time pressure-source refund is exactly:

```math
\text{negative-Rayleigh part } -r^{-3}F_r
\quad+\quad
\text{centrifugal barrier }2r^{-4}F,
\qquad F=\Gamma^2 .
\tag{ASW.60}
```

The same \(F\) satisfies

```math
D_tF
=
\nu\left(\partial_r^2-\frac1r\partial_r+\partial_z^2\right)F
-2\nu|\nabla_{r,z}\Gamma|^2 .
\tag{ASW.61}
```

So a retained zero-payment cubic-drop atom cannot treat the swirl refund as
free unless it also hides the material \(F\)-budget, the \(|\nabla\Gamma|^2\)
dissipation, annular/collar flux, the centrifugal response, and participation
ownership. This gives the next smaller theorem:

```math
\texttt{OwnedAngularMomentumGradientRefundNoFreeCubicDrop.A}.
\tag{ASW.62}
```

Statement. A lawful aligned non-solid-swirl strict atom/tower cannot use the
negative-Rayleigh component \(-r^{-3}F_r\) to cancel the aligned cubic-drop
pressure source while retaining positive \(\mathsf J_M^+\) unless the same
\(F\)-budget, centrifugal response, diffusion/dissipation, collar flux, or
participation owner pays or routes the service.

Then

```math
\texttt{OwnedAngularMomentumGradientRefundNoFreeCubicDrop.A}
\Longrightarrow
\texttt{AxisymmetricSwirlMaterialTimeCubicPayment.A}
\Longrightarrow
\texttt{ZeroPaymentForcesZeroParticipationInLawfulStrictTowers.A}
\quad\text{on the aligned non-solid-swirl branch.}
\tag{ASW.63}
```

This is a strict reduction, not a proof of \(c_0>0\). The theorem is smaller
than the full \(c_0\) floor because it concerns one admitted physical survivor:
an off-axis angular-momentum-gradient packet refunding the aligned cubic drop
through material time while all same-field budgets deny payment.
