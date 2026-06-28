---
theorem_id: forward-gold-affine-schur-accretivity-gap-no-free-upcrossing-target-20260628
status: fixed-core-lower-edge-root-reserve-open
created: 2026-06-28
problem: navier-stokes
route: forward-gold affine Schur scale-memory record / original packet storage
logical_landing_node: BoundedBelowSameMaterialServiceStorage.A
refines:
  - AffineSchurFiniteStateNoFreeUpcrossing.A
  - OriginalParticipationStorageCoercivity.A
  - BoundedBelowSameMaterialServiceStorage.A
  - PositiveCriticalTransferBound.A
  - NativeBirthChargePacking.A
source_surfaces:
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-original-participation-storage-direct-derivation-20260627.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-affine-schur-finite-state-no-free-upcrossing-20260627.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-bounded-below-same-material-service-storage-target-20260628.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-service-storage-equivalence-local-storage-no-go-20260628.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-affine-martingale-under-service-storage-adjudication-20260628.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-paid-parent-current-span-perpendicular-category-repair-20260628.md
completion_truth: partial-not-gold-closed
effect: >-
  Records the corrected affine Schur scale-memory state. The original packet
  gives the affine Schur identity and exposes the exact missing sign. The
  pointwise angle version of that sign is too strong: fresh orthogonal
  production can be invisible at first contact. The sharper retained-production
  form is a Schur residence/thickness gate. Schur-thick retained production is
  paid by the Schur pairing G_J^{-1}m_J against p_J; Schur-thin production must
  be fresh onset, route motion, negative return, viscous/time-thickness loss,
  legal/stop, or same-witness endpoint-face material. A first-passage test
  proves that Schur memory pays residence after visibility but not arbitrarily
  thin square-large impulses. A BV pressure test then identifies the exact
  parent quantity that sees those impulses: material-time variation of the
  same-carrier source detector. A further pressure test shows that arbitrary BV
  is still too weak a target; the useful producer is the parabolic source
  equation for that detector. The scalar output heat equation is the wrong
  object because differentiating the product creates a critical cross-gradient
  forcing. The two-particle equation is the supplier form; the proof mechanism
  must be same-carrier duality and packing. The corrected payment category is
  the paid parent-current span, not the raw catalogue of known detector
  coordinates. A zero-current direction is fresh relative to paid parent-current
  history, so its first positive entry is Bessel-payable and updates the Schur
  current. After that update, repeated same-carrier production in the coordinate
  is Schur current work. If the event keeps looking perpendicular in the payment
  sense, it was not admitted into the parent current. A later stopped
  coefficient-update audit shows the next hidden gap: the identity
  dM_i=-<B_i,phi_i>dt+paid proves only a signed parent-current derivative. It
  does not by itself control the squared positive selected bill, because
  positive clipping and squaring before signed same-carrier admission can turn a
  thin current derivative into fake paid action. Thus the current open producer
  is signed high-high current-square admission: every positive high-high dyadic
  transfer must first be admitted as a signed increment of the paid same-carrier
  parent current, and only then may the positive square be packed by first-entry
  Bessel novelty, retained Schur current work, time-thickness/endpoint descent,
  or routed return, motion, viscosity, legal, or stop. The visible/invisible
  split of that square bill exposes the next exact gap: a concentrated invisible
  square subinterval is only a measure-theoretic subinterval until the stopped
  parent packet can localize it as a lawful same-carrier child and pay every
  cutoff, Hodge, pressure, frame, collar, route, legal, and stop defect. The
  sharper nonanticipatory form is parent-predictable dual stopped-testing: the
  invisible square bill is recovered by a dual time weight, and that weight is
  not legal if it is chosen from future child readout. The original packet must
  make the localized high-high detector a stopped parent-built test through the
  localized Green current, or charge the time-cutoff, pressure-Hodge,
  material-frame, collar, route, viscosity, legal, stop, or same-witness endpoint
  defect. The later first-hit score repair makes the interval predictable but
  leaves the endpoint/cutoff trace. The central service-storage anchor now
  splits that trace: first-exit traces are paid by harmonic Cauchy, changed
  questions are motion/legal/stop/endpoint, and the fixed-core trace is exactly
  retained lower-edge admission plus the original root-geometry reserve. That
  fixed-core lower-edge/root-reserve theorem is the current open producer; after
  it, the Schur-thin gate gives finite original-data control of the Schur
  record, negative return, and inverse-Gram route variation.
---

# Affine Schur accretivity gap for no-free-upcrossing

Status: sharp target, not Gold closure.

The strongest noncircular storage found so far is the affine Schur scale-memory
record. It identifies the exact missing sign in the original packet derivation.

For each fresh scale interval \(J\), define

\[
m_J(t,x)=\int_J (1,s)\,\widetilde Z^{new}(s,t,x)\,ds,
\tag{1}
\]

and the inverse-weight Gram matrix

\[
\mathsf G_J(t)=\int_J w(s,t)^{-1}(1,s)^T(1,s)\,ds .
\tag{2}
\]

The storage is

\[
\mathfrak S_J(t)=
\int \langle m_J,\mathsf G_J^{-1}m_J\rangle\,dx .
\tag{3}
\]

This is the right coordinate because the selected critical weight is exactly the
inverse-Gram scale geometry of the affine stopped packet.

## 1. What the original packet gives

The original pressure-viscosity-incompressibility-velocity packet gives the
exact evolution

\[
D_t m_J=p_J-r_J+e_J,
\qquad
D_t\mathsf G_J=\mathsf K_J ,
\tag{4}
\]

where \(p_J\) is positive fresh production, \(r_J\) is return/reset, \(e_J\) is
paid or legal error, and \(\mathsf K_J\) is route-geometry motion from the same
coupled material packet.

Differentiating (3) gives

\[
D_t\mathfrak S_J
=
2\langle \mathsf G_J^{-1}m_J,p_J-r_J+e_J\rangle
-
\langle \mathsf G_J^{-1}m_J,\mathsf K_J\mathsf G_J^{-1}m_J\rangle .
\tag{5}
\]

This is an identity. It is not yet a no-free-upcrossing estimate.

## 2. The missing accretive sign

The desired structural payment

\[
dA_J^+
\lesssim
d\mathfrak S_J^+
+dA_J^-
+\mathfrak S_J\,d\mathcal K_J
+dR_{legal}+dStop
\tag{6}
\]

follows only after the selected positive production is accretive against the
Schur gradient:

\[
H_w\|c_{\theta,J}^+\|_2^2
\lesssim
\langle \mathsf G_J^{-1}m_J,p_J\rangle_+ .
\tag{7}
\]

That is the missing line. The original packet gives the signed pairing in (5).
It does not force (7). A fresh production direction can be orthogonal to the
current Schur record, or it can enter through a new affine direction with tiny
raw mass and large inverse-Gram weight. The raw energy sees the raw mass; the
selected clock sees the inverse-Gram weight.

Thus the affine Schur identity exposes the exact place where scale-normalized
selection can still outrun raw packet energy.

## 3. The sharp finite reserve theorem

Gold closes from the affine Schur record exactly under the finite reserve bound

\[
\sum_J
\left(
\sup_t\mathfrak S_J
+
\int dA_J^-
+
\int \mathfrak S_J\,d\mathcal K_J
\right)
\le C_N(u_0)+R_{legal}+Stop .
\tag{8}
\]

Here the three terms are:

1. bounded affine Schur scale-memory record;
2. rectified negative return/reset of the same affine potential;
3. inverse-Gram route-geometry variation.

Under (8), the formal no-free-upcrossing inequality (6) gives finite selected
affine production, then the installed selected-action/full-clock/\(H^s\)
continuation relay applies.

## 4. Proof truth

The affine Schur construction does not prove smoothness. It proves the exact
identity and isolates the missing coercive sign.

The remaining original-packet theorem is

\[
\sum_J
\left(
\sup_t\mathfrak S_J
+
\int dA_J^-
+
\int \mathfrak S_J\,d\mathcal K_J
\right)
\le C_N(u_0)+R_{legal}+Stop ,
\tag{9}
\]

or equivalently, derive the rectified accretive lower bound (7) and the finite
negative-return / inverse-Gram-variation storage from the original
pressure-viscosity-incompressibility-velocity packet.

Partial, not Gold closed. The packet supplies the affine Schur identity; it does
not yet supply the rectified accretive lower bound.

## 5. What is required from this hinge to close smoothness

From the current Gold frontier, the smoothness proof needs exactly this chain.

1. Retained selected production is first admitted as a bounded same-carrier
   original-packet read, before scalar selected readout.
2. Parent-subtracted fresh directions Bessel-pack; exact inherited reuse is
   subtracted; changed inherited reuse is paid by first-exit motion, route
   variation, stop, or legal loss.
3. The affine Schur record `(3)` is the storage for retained same-material
   production after the fresh and moving pieces have been removed.
4. Retained positive production must obey a Schur residence/thickness gate:
   either it is visible to the current Schur gradient, or it is not retained
   reuse and must be charged as fresh onset, motion, negative return, viscous
   time-thickness, stop/legal, or same-witness endpoint-face material.
5. Once that gate is proved, `(7)` supplies the rectified accretive lower bound,
   `(6)` gives no-free-upcrossing, `(8)` gives finite selected affine
   production, and the already installed selected-action/full-clock/\(H^s\)
   continuation relay gives smooth continuation.

Thus the live producer is no longer "find some finite reserve."  It is the
retention gate that turns a positive selected production into either Schur-
visible same-material residence or a paid nonretained branch.

## 6. Residence pressure test: the pointwise angle theorem is false

The hard-block countermodel shows that a pointwise angle theorem cannot be the
right statement.  At a single instant one can have \(m=e_1\), \(G=I\), and
\(p=e_2\), so

\[
\langle G^{-1}m,p\rangle=0
\tag{10}
\]

while the selected positive detector in the \(e_2\) direction is nonzero.
That kills the instantaneous form of `(7)`.

But retained same-direction production has more structure than a single
instant.  On a frozen parent carrier and after the already paid return, motion,
stop, and legal pieces are removed, the component in a retained direction \(e\)
obeys

\[
h_e:=\langle G_J^{-1/2}m_J,e\rangle,
\qquad
q_e:=\langle G_J^{-1/2}p_J,e\rangle,
\qquad
D_t h_e=q_e+\hbox{paid}.
\tag{11}
\]

So an orthogonal direction that keeps producing on the same carrier writes
itself into the Schur record.  It can be invisible at first contact, but it
cannot be both retained, same-direction, and permanently absent from \(m_J\)
unless the production is repeatedly reset, moved, returned, stopped, legally
lost, or squeezed into a thin impulse before the record has residence time.

This gives the correct split.  Define the Schur visibility ratio

\[
\chi_J
:=
{\langle G_J^{-1}m_J,p_J\rangle_+
\over
H_w\|c_{\theta,J}^{+}\|_2^2}
\tag{12}
\]

on events where the denominator is nonzero.  For a fixed \(\eta>0\), the
Schur-thick retained branch is

\[
\chi_J\ge\eta .
\tag{13}
\]

On that branch the desired accretive lower bound is immediate, with an
\(\eta^{-1}\) loss:

\[
H_w\|c_{\theta,J}^{+}\|_2^2
\le
\eta^{-1}\langle G_J^{-1}m_J,p_J\rangle_+ .
\tag{14}
\]

The only possible unpaid branch is therefore the Schur-thin retained branch

\[
\chi_J<\eta .
\tag{15}
\]

The live theorem is exactly the admission rule for `(15)`:

\[
\chi_J<\eta
\Longrightarrow
J\in Fresh_P\cup Motion_P\cup Return_P\cup ViscThick_P
\cup Legal_P\cup Stop_P\cup CM_P^{end}.
\tag{16}
\]

Here \(Fresh_P\) means first directional onset paid by parent-subtracted
Bessel novelty; \(Motion_P\) means parent-announced frame/route change;
\(Return_P\) means negative affine return \(dA_J^-\); \(ViscThick_P\) means the
source was too impulse-like to be retained without paying viscous or temporal
thickness; and \(CM_P^{end}\) is the same-witness endpoint-face branch.

Paid line:

\[
\text{Schur-thick retained production `(13)'}
\Longrightarrow
\text{accretive payment `(14)'}
\Longrightarrow
\text{no-free-upcrossing through `(5)'--`(8)'.}
\tag{17}
\]

Unproved line:

\[
\text{prove the Schur-thin admission rule `(16)' from the same
pressure--viscosity--incompressibility--velocity packet.}
\tag{18}
\]

Thomas-dialogue verdict:

- Is this actually the live object? Yes.  It attacks the sign/accretivity gap
  after the affine Schur identity, not the already installed no-free-zoom
  support packet.
- Did this prove smoothness? No.  It rejects the false pointwise angle theorem
  and isolates the exact retained-production gate still needed for Gold.
- What does it mean physically? A newly orthogonal source can be invisible to
  the old Schur record, but if it remains on the same material carrier it
  becomes part of that record.  If it never gains residence, it is an onset,
  motion, return, viscous-thickness, stop/legal, or endpoint-face event rather
  than retained reuse.
- Is this the full coupled packet or a scalar proxy? Full packet only if
  \(m_J,G_J,p_J,r_J,e_J,K_J\), viscosity, pressure, incompressibility, carrier
  motion, selector loss, and endpoint faces are all kept before selected scalar
  readout.
- Is this already handled in the repo? The hard-block note already proves that
  the instantaneous angle claim is false.  The Schur-thin admission rule `(16)`
  is not installed.
- Did this create another alias? No.  It demotes "positive angle" as too strong
  and "finite reserve" as too vague.  The current hinge is the concrete
  retention gate `(16)`.

Partial, not Gold closed. The next producer is the Schur-thin admission rule
`(16)`, or else the same-witness endpoint-face consumption of its failure.

## 7. First-passage attempt: Schur memory pays residence, not thin impulse

Now test `(16)` by the most direct mechanism.  Follow one retained direction
\(e\) and let \(h_e,q_e\) be as in `(11)`.  Stop the branch at the first time
the accumulated Schur record becomes visible:

\[
\tau_\eta
:=
\inf\{t:\langle G_J^{-1}m_J,p_J\rangle_+
\ge
\eta\,H_w\|c_{\theta,J}^{+}\|_2^2\}.
\tag{19}
\]

After \(\tau_\eta\), the event is Schur-thick and `(14)` pays it.  Before
\(\tau_\eta\), the only possible payment from the Schur memory is the accumulated
increase of \(h_e\).  That gives a first-passage \(L^1\) control, not the
selected square bill.

The obstruction is already visible in the scalar frozen-carrier model

\[
D_th=q,\qquad h(0)=0,\qquad q\ge0 .
\tag{20}
\]

Choose disjoint pulses

\[
q_n(t)=n^3\,{\bf 1}_{I_n}(t),
\qquad |I_n|=n^{-5}.
\tag{21}
\]

Then

\[
\int_{I_n}q_n\,dt=n^{-2},
\qquad
\sum_n\int_{I_n}q_n\,dt<\infty,
\tag{22}
\]

so the Schur record can have finite total growth, while

\[
\int_{I_n}q_n^2\,dt=n,
\qquad
\sum_n\int_{I_n}q_n^2\,dt=\infty .
\tag{23}
\]

Thus first-passage Schur memory alone cannot prove `(16)`.  It pays residence
after the record has had time to form; it does not pay arbitrarily thin
positive impulses before residence.

The missing line is therefore not another storage identity.  It is a
same-carrier parabolic thickness estimate for Schur-thin blocks:

\[
\sum_{B\subset P:\ \chi_B<\eta}
\int_B H_w\|c_{\theta,B}^{+}\|_2^2
\le
C_\eta\Big(
E_{\rm fresh}(P)+E_{\rm motion}(P)+A^-_P
+Legal_P+Stop_P+CM_P^{end}
\Big)
+\theta\nu\sum_{B\subset P}D_B ,
\qquad \theta<1 .
\tag{24}
\]

Here the left side is only over blocks that have failed Schur visibility.  The
right side says such a block must be fresh onset, moving/reselected geometry,
negative return, legal/stop, endpoint-face material, or genuinely viscous time
thickness.  A positive selected source that is both retained and same-carrier
cannot be an infinite family of square-large, record-small impulses unless the
viscous/material-time part of the Navier--Stokes packet pays it.

Paid line:

\[
\text{first-passage Schur memory}
\Longrightarrow
\text{Schur-thick payment after residence.}
\tag{25}
\]

Failed line:

\[
\text{first-passage Schur memory alone}
\not\Longrightarrow
\text{Schur-thin selected square control, by `(21)'--`(23)'.}
\tag{26}
\]

Sharper unproved line:

\[
\text{prove the parabolic time-thickness estimate `(24)' from the coupled
material Navier--Stokes packet.}
\tag{27}
\]

Thomas-dialogue verdict:

- Is this actually the live object? Yes.  It tries to prove the Schur-thin
  branch `(16)`.
- Did this prove smoothness? No.  It proves the residence part of the idea and
  exposes the thin-impulse countermodel to Schur memory alone.
- What does it mean physically? If the source stays, it writes a record and the
  Schur pairing sees it.  If it fires too fast to write a record, the proof must
  charge the material time scale, viscosity, carrier motion, or endpoint face.
- Is this the full coupled packet or a scalar proxy? The countermodel is scalar
  only as a failure test for Schur memory.  The required producer `(24)` is full
  coupled packet work because only viscosity, pressure transport,
  incompressibility, carrier motion, and legal/selector terms can rule out the
  thin impulses.
- Is this already handled in the repo? No.  Existing Bessel/motion/Schur
  support handles fresh directions, moving directions, and residence after
  visibility.  It does not prove `(24)`.
- Did this create another alias? No.  It removes an alias: "Schur alignment"
  by itself is too coarse.  The live producer is parabolic time thickness for
  Schur-thin retained positive production.

Partial, not Gold closed. The current sharp producer is `(24)`.

## 8. BV pressure test: thin impulses are source-variation events

The thin-pulse obstruction in `(21)`--`(23)` is not invisible to all parent
quantities.  In the scalar frozen-carrier model \(D_th=q\), integration by
parts gives

\[
\int_B q^2\,dt
=
[hq]_{\partial B}
-
\int_B h\,dq .
\tag{28}
\]

Thus, after boundary terms are assigned to fresh onset, stop, legal, or block
exit, a Schur-thin square bill is bounded by source variation:

\[
\int_B q^2\,dt
\le
Boundary_B
+
\sup_B |h|\;{\rm Var}_B(q).
\tag{29}
\]

This exactly detects the pulse countermodel.  For `(21)`, the accumulated
record is \(\sup h\sim n^{-2}\), while \({\rm Var}(q_n)\sim n^3\), and the
product is order \(n\), the same size as the selected square bill in `(23)`.
So the failure of Schur memory alone is not mysterious: thin impulses move the
problem from storage to material-time variation of the source detector.

The live producer can therefore be stated more sharply than `(24)`.  For
Schur-thin retained blocks, prove the same-carrier source-variation bound

\[
\sum_{B:\chi_B<\eta}
\sup_B\|G_B^{-1/2}m_B\|\,
{\rm Var}_B^P(G_B^{-1/2}p_B)
\le
\theta\nu\sum_B D_B
+
C_\eta\big(
E_{\rm fresh}+E_{\rm motion}+A^-+Legal+Stop+CM^{end}
\big),
\qquad \theta<1 .
\tag{30}
\]

Here \({\rm Var}_B^P\) is material-time variation along the parent carrier,
including the differentiated pressure, viscosity, incompressibility, frame,
commutator, collar, and selector terms before scalar readout.

Then `(28)`--`(30)` give the Schur-thin parabolic thickness estimate `(24)`.
The PDE content has become exact: a source that is too thin to build Schur
residence must oscillate, turn on/off, or change through the material
Navier--Stokes law, and that variation must be paid by viscosity, pressure
transport, route motion, legal/stop, or endpoint-face consumption.

Paid line:

\[
\text{material source-variation bound `(30)'}
\Longrightarrow
\text{Schur-thin estimate `(24)'}
\Longrightarrow
\text{Schur retention gate `(16)'.}
\tag{31}
\]

Unproved line:

\[
\text{derive `(30)' from the same-carrier differentiated stress-current
equation without losing the critical coefficient.}
\tag{32}
\]

Thomas-dialogue verdict:

- Is this actually the live object? Yes.  It attacks the Schur-thin branch by
  identifying the exact parent quantity that sees thin impulses.
- Did this prove smoothness? No.  It is a noncircular reduction: prove the
  material source-variation bound `(30)`, then the Schur-thin gate follows.
- What does it mean physically? A source pulse that is too fast to leave a
  Schur record must have a sharp material turn-on, turn-off, or direction
  change.  That is not free in the coupled pressure-viscosity-incompressibility
  dynamics.
- Is this the full coupled packet or a scalar proxy? The scalar identity
  `(28)` is only the pulse algebra.  The required bound `(30)` is full-packet:
  it differentiates the parent stress source along the material carrier.
- Is this already handled in the repo? The existing notes handle source
  admission, Bessel novelty, frame motion, and Schur residence.  The
  differentiated source-variation estimate `(30)` is not installed.
- Did this create another alias? No.  It replaces the phrase "time thickness"
  by a concrete producer: material BV/commutator control of Schur-thin source
  detectors.

Partial, not Gold closed. The current sharp producer is `(30)`.

## 9. Differentiated source equation: BV is useful only after parabolic structure

The BV reduction `(28)`--`(30)` is still not the final PDE mechanism.  As a raw
statement, material BV can be just another name for the desired selected square
bill.  The Navier--Stokes content must say why that variation is itself paid.

For a Schur-thin block \(B\), set

\[
b_B:=G_B^{-1/2}p_B .
\tag{33}
\]

The useful target is a same-carrier differentiated source equation of the form

\[
D_t^P b_B+\nu\mathcal L_B^P b_B
=
\mathcal C_B^{press/Hodge}
+\mathcal C_B^{frame}
+\mathcal C_B^{collar}
+\mathcal C_B^{selector}
+\mathcal C_B^{fresh/end},
\tag{34}
\]

where \(\mathcal L_B^P\) is the parent heat-scale positive operator on the same
carrier.  The pressure/Hodge top part must cancel using incompressibility; what
remains is a same-carrier commutator, collar, selector, frame, fresh-onset, or
endpoint-face forcing term.

If `(34)` is available with

\[
\sum_{\chi_B<\eta}
\sup_B\|G_B^{-1/2}m_B\|
\int_B \|\nu\mathcal L_B^P b_B\|
\le
\theta\nu\sum_B D_B
+C_\eta E_{\rm heat/rem}(P),
\qquad \theta<1,
\tag{35}
\]

and

\[
\sum_{\chi_B<\eta}
\sup_B\|G_B^{-1/2}m_B\|
\int_B
\|\mathcal C_B^{press/Hodge}
+\mathcal C_B^{frame}
+\mathcal C_B^{collar}
+\mathcal C_B^{selector}
+\mathcal C_B^{fresh/end}\|
\le
C_\eta(E_{\rm motion}+E_{\rm fresh}+A^-+Legal+Stop+CM^{end}),
\tag{36}
\]

then `(30)` follows by integrating the source variation in `(34)`.

This is sharper than asking for source BV.  The scalar pulse
\(q_n=n^3{\bf 1}_{I_n}\), \(|I_n|=n^{-5}\), can have huge BV and tiny record
because it is an arbitrary forcing.  A homogeneous heat-scale source
\[
D_tb+\lambda b=0,\qquad \lambda\simeq\nu 2^{2m},
\tag{37}
\]
has

\[
\sup_t\left|\int_0^t b(s)\,ds\right|\,{\rm Var}(b)
\simeq
{b(0)^2\over \lambda}
\simeq
\int_0^\infty b(t)^2\,dt .
\tag{38}
\]

So parabolic residence is exactly the missing thickness.  A pulse sharper than
the heat scale must be produced by the forcing terms in `(34)`, and those terms
must be fresh, moving, returned, legal/stopped, or endpoint-face consumed.

Paid line:

\[
\text{same-carrier parabolic source equation `(34)' plus `(35)'--`(36)'}
\Longrightarrow
\text{source-variation bound `(30)'.}
\tag{39}
\]

Unproved line:

\[
\text{derive `(34)'--`(36)' for the high-high stress source detector
\(B_{k\ell m}=\Lambda^{-1/2}P_m\mathbb P\nabla\cdot(u_k\otimes u_\ell)\)
without reintroducing the critical \(H^{1/2}\) coefficient.}
\tag{40}
\]

Thomas-dialogue verdict:

- Is this actually the live object? Yes.  It attacks `(30)` rather than naming
  source variation as a new reserve.
- Did this prove smoothness? No.  It proves only that `(30)` follows from the
  same-carrier parabolic source equation with paid forcing.
- What does it mean physically? A retained source cannot flash faster than the
  heat scale unless something in the coupled packet turns it on, changes it, or
  ejects it.  That "something" is exactly the paid forcing side of `(34)`.
- Is this the full coupled packet or a scalar proxy? The heat model `(37)` is
  only the thickness calibration.  The real object is the differentiated
  pressure--viscosity--incompressibility stress detector equation `(34)`.
- Is this already handled in the repo? The prelimit master balance handles
  same-carrier commutator absorption for full material towers, and the
  commutator-admission notes handle low-high motion and abstract Bessel
  novelty.  They do not install `(34)`--`(36)` for the Schur-thin high-high
  source detector.
- Did this create another alias? No.  It demotes raw BV/time-thickness to a
  consumer and names the actual producer: same-carrier parabolic source
  equation plus paid forcing.

Partial, not Gold closed. The current sharp producer is `(34)`--`(36)`.

## 10. Two-particle pressure test: scalar output heat is the wrong equation

The source equation `(34)` still has one hidden trap.  If \(b_B\) is treated as
a scalar output packet and one applies the ordinary output heat operator, the
Leibniz rule creates a critical forcing term.

In the model case \(D_t u-\nu\Delta u=0\),

\[
(D_t-\nu\Delta)(u\otimes u)
=
-2\nu\,\nabla u\odot\nabla u .
\tag{41}
\]

After applying \(\Lambda^{-1/2}P_m\mathbb P\nabla\cdot\), the right side is a
same-scale high-high source of the same critical size as the original one.  It
is not automatically a paid error.  Treating `(41)` as forcing would recreate
the \(H^{1/2}\) coefficient obstruction inside the source-variation theorem.

Therefore the parabolic equation must be written on the bilinear input pair,
before collapsing to the selected output detector.  For the high-high source

\[
B_{k\ell m}
=
\Lambda^{-1/2}P_m\mathbb P\nabla\cdot(u_k\otimes u_\ell),
\tag{42}
\]

the correct heat operator is the two-particle material operator

\[
\mathcal L_{k\ell}^{P,2}(u_k,u_\ell)
:=
((-\Delta_P)u_k,u_\ell)+(u_k,(-\Delta_P)u_\ell),
\tag{43}
\]

pushed through the same bilinear stress map.  The target source equation is

\[
D_t^P b_{k\ell m}
+\nu\,\mathcal B_{k\ell m}^P\mathcal L_{k\ell}^{P,2}(u_k,u_\ell)
=
\mathcal C_{k\ell m}^{press/Hodge}
+\mathcal C_{k\ell m}^{frame/collar/selector}
+\mathcal C_{k\ell m}^{fresh/end},
\tag{44}
\]

where \(b_{k\ell m}=G^{-1/2}B_{k\ell m}\) and
\(\mathcal B_{k\ell m}^P\) is the parent-built same-carrier bilinear stress
detector.  The cross-gradient in `(41)` is no longer an unpaid forcing term; it
is part of the two-input heat variation being measured before output
projection.

The required absorption estimate is correspondingly

\[
\sum_{\chi_B<\eta}
\sup_B\|G_B^{-1/2}m_B\|
\int_B
\left\|\nu\,\mathcal B_{k\ell m}^P
\mathcal L_{k\ell}^{P,2}(u_k,u_\ell)\right\|
\le
\theta\nu\sum_B(D_k+D_\ell)
+C_\eta E_{\rm paid}(P),
\qquad \theta<1 .
\tag{45}
\]

The remaining forcing estimate is

\[
\sum_{\chi_B<\eta}
\sup_B\|G_B^{-1/2}m_B\|
\int_B
\|\mathcal C_{k\ell m}^{press/Hodge}
+\mathcal C_{k\ell m}^{frame/collar/selector}
+\mathcal C_{k\ell m}^{fresh/end}\|
\le
C_\eta(E_{\rm motion}+E_{\rm fresh}+A^-+Legal+Stop+CM^{end}).
\tag{46}
\]

Paid line:

\[
\text{two-particle source equation `(44)' plus `(45)'--`(46)'}
\Longrightarrow
\text{source-variation bound `(30)'.}
\tag{47}
\]

Failed line:

\[
\text{scalar output heat equation}
\not\Longrightarrow
\text{paid source variation, because `(41)' is critical high-high forcing.}
\tag{48}
\]

Sharper unproved line:

\[
\text{construct the parent-built bilinear stress detector
\(\mathcal B_{k\ell m}^P\) and prove `(44)'--`(46)' without selected-child
lookahead and without the critical \(H^{1/2}\) coefficient.}
\tag{49}
\]

Thomas-dialogue verdict:

- Is this actually the live object? Yes.  It attacks the proof of `(34)`--`(36)`
  for the high-high stress source.
- Did this prove smoothness? No.  It rejects the scalar output heat version and
  replaces it with the correct two-particle source equation.
- What does it mean physically? The stress source is made by two moving packets.
  Heat acts on the two packets before their product is projected; treating the
  product as a scalar output creates a fake forcing term of exactly the dangerous
  size.
- Is this the full coupled packet or a scalar proxy? Full packet only if the
  two input carriers, Leray/Hodge pressure correction, material frame, selector,
  collar, and endpoint branches are all kept before output projection.
- Is this already handled in the repo? No.  Existing notes isolate the
  high-high source detector and prove abstract novelty packing after admission.
  The parent-built two-particle source equation `(44)`--`(46)` is not installed.
- Did this create another alias? No.  It removes one: "parabolic source
  equation" meant as scalar output heat is an alias for the high-high
  obstruction.  The live producer is the two-particle same-carrier source
  equation.

Partial, not Gold closed. The current sharp producer is `(44)`--`(46)`.

## 11. Duality-and-packing audit: no-free-zoom admission plus metric-variation packing

The two-particle equation `(44)`--`(46)` is still only the supplier form unless
the selected read is admitted through the parent packet and then packed there.
The proof has to be a same-carrier duality-and-packing argument.

Start with a stopped parent packet \(P\).  For each selected child packet
\(Q\subset P\), the selected critical packet is

\[
D_Q=(S,\Pi_Q\nabla^2p),
\qquad S=\nabla_{\rm sym}u,
\tag{50}
\]

where \(\Pi_Q\nabla^2p\) is the pressure-Hessian part seen on the same selected
carrier.  Its scale-critical selected zoom bill is

\[
a_Q
:=
\|S\|_{L^{5/2}(Q)}^2
+
\|\Pi_Q\nabla^2p\|_{L^{5/4}(Q)}^2 .
\tag{51}
\]

The parent-known stress current is

\[
\mathfrak J_P(\psi)
=
\int_P
u\cdot(-\partial_t\psi-\nu\Delta\psi)
+
(u\otimes u):\nabla\psi
+
p\,\nabla\cdot\psi
\,dx\,dt .
\tag{52}
\]

This current keeps velocity, viscosity, pressure, and incompressibility in one
parent-built packet.  For each selected \(Q\), let \(\mathcal A_Q(P)\) be the
class of backward adjoint test fields built from the parent carrier and
detecting \(Q\).  Define

\[
\rho_Q
:=
\sup_{\psi\in\mathcal A_Q(P),\ \|\psi\|_{\mathfrak C_P}\le1}
|\mathfrak J_P(\psi)|^2 .
\tag{53}
\]

This is the parent-known same-carrier capacity of \(Q\).

Admission is the first real lemma.  Choose a dual critical test that sees
\(D_Q\), solve the backward adjoint equation on the parent carrier, integrate
by parts through the Navier-Stokes weak form, and put every
boundary/reselection/reset defect into \(e_Q\).  The required no-free-zoom
admission inequality is

\[
a_Q
\le
C\rho_Q
+
C e_Q .
\tag{54}
\]

This is exactly where circularity can enter.  The class \(\mathcal A_Q(P)\), the
norm \(\mathfrak C_P\), and the projection \(\Pi_Q\) must be parent-built before
the selected child readout.  If the dual test is allowed to use selected-child
lookahead, `(54)` only renames the old selector admission gap.

Packing is the second real lemma.  The selected adjoint detectors must be
Bessel in the parent capacity space:

\[
\sum_{Q\subset P}
|\mathfrak J_P(\psi_Q)|^2
\le
C\|\mathfrak J_P\|_{\mathfrak C_P^\ast}^2
+
C E_{\rm paid}(P).
\tag{55}
\]

Equivalently,

\[
\sum_{Q\subset P}\rho_Q
\le
C\mathcal R(P)
+
C E_{\rm paid}(P).
\tag{56}
\]

The reserve in \(\mathfrak C_P\) cannot store only endpoint deformation.  A
stretch followed by reverse-stretch can cancel in the endpoint state.  It does
not cancel as positive material variation.  With

\[
G=(\nabla_aX)^T\nabla_aX,
\qquad
K=G^{-1/2}D_tG\,G^{-1/2},
\tag{57}
\]

the packing reserve must count

\[
\int_P |K|^2\,d\mu_P .
\tag{58}
\]

This is the part that survives reversible affine cycles.  Endpoint storage may
miss a cycle that returns to its starting shape; positive material-metric
variation still records the work done during the cycle.

Combining admission and packing gives the intended no-free-zoom estimate:

\[
\sum_{Q\subset P}a_Q
\le
C\sum_{Q\subset P}\rho_Q
+
C\sum_{Q\subset P}e_Q
\le
C\mathcal R(P)
+
C E_{\rm paid}(P)
<\infty .
\tag{59}
\]

Paid line:

\[
\text{parent-built adjoint admission `(54)' plus Bessel packing `(55)'--`(58)'}
\Longrightarrow
\text{finite selected zoom bill `(59)'.}
\tag{60}
\]

Failed line:

\[
\text{endpoint deformation storage alone}
\not\Longrightarrow
\text{packing through reversible affine cycles.}
\tag{61}
\]

Sharper unproved line:

\[
\text{construct \(\mathfrak C_P\), \(\mathcal A_Q(P)\), and \(\Pi_Q\) so that
`(54)' is nonanticipatory, and prove `(55)' with the positive metric-variation
reserve `(58)'.}
\tag{62}
\]

Thomas-dialogue verdict:

- Is this actually the live object? Yes.  It turns the selected squeeze into a
  parent-known same-carrier capacity and tries to pack that capacity.
- Did this prove smoothness? No.  It gives the proof mechanism that would turn
  selected zoom into paid parent capacity, but `(54)` and `(55)` are still the
  two unproved lemmas.
- What does it mean physically? A child cannot zoom for free if the parent has
  already supplied an adjoint detector that sees the same velocity-pressure
  packet, and if repeated detector use is charged to positive material
  variation.
- Is this the full coupled packet or a scalar proxy? Full coupled packet only
  when \(\mathfrak J_P\) keeps velocity, viscosity, pressure, and
  incompressibility together and \(\Pi_Q\nabla^2p\) is a same-carrier pressure
  read, not an after-the-fact scalar projection.
- Is this already handled in the repo? No.  Existing Bessel notes prove abstract
  packing after admission.  This section names the exact admission and the
  stronger positive-metric reserve needed for reversible affine cycles.
- Did this create another alias? No.  It collapses "two-particle source
  equation," "selected squeeze," and "parent adjoint detector" into one proof
  burden: same-carrier adjoint admission plus positive-metric-variation packing.

Partial, not Gold closed. The current sharp producer is same-carrier adjoint
admission `(54)` plus positive-metric-variation Bessel packing `(55)`--`(58)`.

## 12. Null-current pressure test: the parent capacity must be localized

The admission inequality `(54)` still hides one mathematical lie if
\(\mathfrak J_P\) is read as the raw weak-form current on interior adjoint
tests.  Navier-Stokes itself makes that current vanish.

For every smooth adjoint field \(\psi\) compactly supported in the interior of
the parent packet \(P\), the weak formulation gives

\[
\mathfrak J_P(\psi)=0 .
\tag{63}
\]

Thus an interior detector class would give

\[
\rho_Q
=
\sup_{\psi\in\mathcal A_Q(P),\ \|\psi\|_{\mathfrak C_P}\le1}
|\mathfrak J_P(\psi)|^2
=0,
\tag{64}
\]

while the selected zoom bill \(a_Q\) can be positive.  In that reading,

\[
a_Q\le C\rho_Q+C e_Q
\tag{65}
\]

is false unless the whole selected squeeze has already been hidden inside the
error \(e_Q\).  That would only rename the selector-admission gap.

The parent-known current has to be the localized Green current, not the raw
interior weak-form current.  Choose a parent cutoff or stopped material carrier
\(\chi_P\), form the global test \(\chi_P\psi\), and commute the weak equation
through the parent localization.  Schematically,

\[
0
=
\mathfrak J(\chi_P\psi)
=
\mathfrak J_P^{int}(\psi)
+
\mathfrak J_P^{loc}(\psi),
\tag{66}
\]

where \(\mathfrak J_P^{int}(\psi)\) is the formal interior weak current and
\(\mathfrak J_P^{loc}(\psi)\) is the parent-visible cutoff, collar, frame,
material-boundary, reselection, and parabolic-bottom current.  Since
\(\mathfrak J_P^{int}\) vanishes for true interior tests, the nonzero parent
capacity must be built from \(\mathfrak J_P^{loc}\).

The corrected capacity is therefore

\[
\rho_Q^{loc}
:=
\sup_{\psi\in\mathcal A_Q^{loc}(P),\ \|\psi\|_{\mathfrak C_P}\le1}
|\mathfrak J_P^{loc}(\psi)|^2 .
\tag{67}
\]

The admissible adjoint class \(\mathcal A_Q^{loc}(P)\) is no longer just
"solve an adjoint that sees \(Q\)."  It must solve the parent backward problem
with selected critical source, keep the detector parent-announced, and expose
the source through the parent localization:

\[
\mathcal L_P^\ast\psi_Q=\mathcal E_Q(D_Q),
\qquad
\psi_Q\ \text{built on the stopped parent carrier before child readout}.
\tag{68}
\]

The actual no-free-zoom admission line becomes

\[
a_Q
\le
C\rho_Q^{loc}
+
C e_Q^{collar/reset/selector/legal}.
\tag{69}
\]

This is a collar-observability statement for the full coupled packet.  It says:
if the selected strain-pressure packet is real, then the parent backward
adjoint must push a visible amount of that packet into parent-known
collar/cutoff/material-boundary current, unless the packet is paid by
reselection, legal stop, pressure-Hodge null cancellation, fresh onset, or
same-witness endpoint-face material.

The Bessel step must then pack the localized currents, not the null interior
weak currents:

\[
\sum_{Q\subset P}(\rho_Q^{loc})^{nov}
\le
C\mathcal R_{loc}(P)
+
C\int_P |K|^2\,d\mu_P
+
C E_{\rm paid}(P).
\tag{70}
\]

The positive metric-variation reserve still matters here, but it is not enough
by itself.  It pays repeated motion of the parent detector geometry.  The
localized Green current is what prevents the adjoint capacity from being zero.

Paid line:

\[
\text{localized Green-current admission `(69)' plus localized-current packing `(70)'}
\Longrightarrow
\text{finite selected zoom bill `(59)'.}
\tag{71}
\]

Failed line:

\[
\text{raw weak-form parent current on compact interior adjoint tests}
\not\Longrightarrow
\text{selected zoom admission, because the current is zero.}
\tag{72}
\]

Sharper unproved line:

\[
\text{prove parent-localized adjoint observability `(69)' for the full
strain--pressure packet, then pack the localized novelty currents by `(70)'.}
\tag{73}
\]

Thomas-dialogue verdict:

- Is this actually the live object? Yes.  It attacks the exact point where
  "parent-known capacity" could be fake: the raw weak-form current is null on
  interior tests.
- Did this prove smoothness? No.  It rejects the raw-current admission and
  replaces it with the sharper localized Green-current admission.
- What does it mean physically? A child squeeze is paid only if the parent sees
  it through its real collar, cutoff, material-boundary, bottom, frame, or
  reselection current.  An interior test that vanishes by the equation has seen
  nothing.
- Is this the full coupled packet or a scalar proxy? It is full-packet only
  when the localization keeps velocity, viscosity, pressure, incompressibility,
  material frame, and pressure-Hodge null routing in the same Green identity.
- Is this already handled in the repo? No.  Existing notes prove bounded Riesz
  admission after a selected unit is already admitted and prove abstract Bessel
  after parent-subtracted novelty.  They do not prove the localized Green
  observability `(69)`.
- Did this create another alias? No.  It removes one: raw parent adjoint
  capacity is an alias unless it is the localized current produced by commuting
  the parent weak form.

Partial, not Gold closed at this pressure-test stage. Section 13 below
supersedes the localized-current route as the live producer by repairing the
paid parent-current category.

## 13. Paid parent-current span repair: perpendicular is not a fourth channel

The localized-current pressure test `(63)`--`(73)` fixed one false capacity: the
raw interior weak-form current is null.  The paid-parent-current repair fixes a
second category error.  A direction may be known geometrically by the parent
without being paid as parent current.

Let \(H_P\) be the parent detector Hilbert space and set

\[
g(t)=G(t)^{-1}m(t).
\tag{74}
\]

The span used for payment is

\[
R_{\rm paid}(t)
=
\overline{\operatorname{span}}\{
\text{directions already admitted with nonzero paid current response,
or already charged as novelty/motion/return}
\}.
\tag{75}
\]

This is not the raw detector dictionary.  A catalogued direction \(a\) with

\[
\langle a,g(t_0)\rangle=0
\tag{76}
\]

is not already paid as parent current.  If positive same-carrier production
first enters that coordinate, then before the entry it is fresh relative to
\(R_{\rm paid}\).  That first entry is the Bessel novelty case.  In fixed metric
notation,

\[
m^+=m+\delta a,
\qquad
g^+=g+\delta G^{-1}a,
\qquad
\delta>0.
\tag{77}
\]

After `(77)`, the coordinate is no longer perpendicular in the payment sense.
Repeated admitted production in the same coordinate is Schur current work:

\[
\int_{t_0}^{t_1} q\,dq
=
{1\over2}\bigl(q(t_1)^2-q(t_0)^2\bigr),
\qquad
q(t)=\langle g(t),a\rangle .
\tag{78}
\]

When \(G\) moves, the same calculation is the affine Schur identity: the change
of \(G^{-1}\) is the metric-motion term and is paid by
\(\mathfrak S\,d\mathcal K\), route motion, return, legal, or stop.  There is
no retained channel in which the same same-carrier positive production remains
perpendicular forever.

The old obstruction

\[
a\in R,\qquad \langle a,g\rangle=0,
\tag{79}
\]

was therefore a bookkeeping contradiction.  If \(R\) means raw geometric
catalogue, then `(79)` has not been paid and first positive production is fresh.
If \(R\) means paid parent-current span, then repeated positive production
updates \(g\) and becomes Schur work.  If the update is refused, the event was
not admitted into the paid parent current.

Thus the remaining Gold wall is narrower:

\[
\text{each positive high-high dyadic transfer}
\Longrightarrow
\text{paid parent-current entry, or paid route/return/viscous/legal/stop.}
\tag{80}
\]

Equivalently, after fresh novelty and motion are removed, a retained positive
same-carrier increment must satisfy

\[
T_Q^+
\lesssim
\int_Q \langle G^{-1}m,p_Q\rangle_+
+dA_Q^-
+\mathfrak S_Q\,d\mathcal K_Q
+\theta\nu D_Q
+Legal_Q+Stop_Q,
\qquad \theta<1 .
\tag{81}
\]

The exact hard line is admission/update:

\[
\text{positive high-high Navier--Stokes dyadic transfer}
\Longrightarrow
\text{admitted increment of the paid same-carrier parent current}.
\tag{82}
\]

Paid line:

\[
\text{admission/update `(82)' plus Schur/Bessel/motion accounting}
\Longrightarrow
\text{finite selected zoom bill `(59)'.}
\tag{83}
\]

Failed line:

\[
\text{known geometric coordinate with zero current}
\not\Longrightarrow
\text{already-paid parent-current direction.}
\tag{84}
\]

Sharper unproved line:

\[
\text{prove `(82)' for every positive high-high dyadic transfer, or route the
transfer to return, motion, viscosity, legal, or stop before selected readout.}
\tag{85}
\]

Thomas-dialogue verdict:

- Is this actually the live object? Yes.  It corrects the payment category
  itself: paid parent-current span, not raw detector catalogue.
- Did this prove smoothness? No.  It removes the fake repeated-perpendicular
  obstruction and narrows the remaining theorem to high-high same-carrier
  admission/update.
- What does it mean physically? A new zero-current direction is an unpaid
  direction until the fluid actually produces current there.  First production
  is a fresh entry; later production is work in the same current coordinate.
- Is this the full coupled packet or a scalar proxy? It is full-packet only
  when the high-high dyadic transfer is admitted as an increment of the same
  pressure-viscosity-incompressibility parent current, with pressure-Hodge nulls
  and metric motion routed before scalar readout.
- Is this already handled in the repo? The corrected surface
  `mpp-forward-gold-paid-parent-current-span-perpendicular-category-repair-20260628.md`
  installs the category repair.  It explicitly leaves same-carrier dyadic
  admission open.
- Did this create another alias? No.  It deletes an alias: "repeated
  perpendicular unpaid channel" was the same event being treated as both
  nonfresh and zero-current.

Partial, not Gold closed. The current sharp producer is the high-high
same-carrier dyadic admission/update theorem `(82)`.

## 14. Stopped coefficient-update audit: no positive clipping before signed admission

The service-storage coefficient-update identity is the right direction, but it
does not discharge `(82)`.  It proves a signed current identity, not the
square-positive packing estimate needed by `(81)`.

In the parent-declared same-carrier frame, the projected equation gives a
coordinate identity of the form

\[
dq_i=b_i\,dt+dR_i,
\qquad
b_i=-\sigma_i\langle B_{mmm},\phi_i^P\rangle ,
\tag{86}
\]

where \(dR_i\) contains viscosity, low/high routing, frame/collar motion, legal,
and stop terms.  This is a valid parent-current update identity.  The missing
step is the upgrade

\[
b_i^+\,dt
\leadsto
\nu^{-1}(b_i^+)^2\,dt
\tag{87}
\]

inside the same paid current ledger.  That upgrade is not automatic.

The countermodel is one-dimensional.  Let \(q_\varepsilon\) start at zero and
increase by \(\varepsilon\) on an interval of length \(\varepsilon^2\).  Then

\[
\int (dq_\varepsilon)_+=\varepsilon,
\qquad
\Delta(q_\varepsilon^2)=\varepsilon^2,
\qquad
\int_0^{\varepsilon^2}
\left({dq_\varepsilon\over dt}\right)^2dt=1 .
\tag{88}
\]

So a linear current update and endpoint Schur storage do not control the
scale-critical square bill.  If the pulse is erased afterward, the erasure is
return and must be paid with the same scale-critical strength.  If it is not
erased, retained Schur work starts only after enough signed current exists for
the pairing to see the production.  This is exactly the Schur-thin defect, now
seen in the high-high coefficient-update language.

The failed line in the stopped update proof is therefore

\[
\text{signed coefficient identity `(86)'}
\not\Longrightarrow
\sum_i\nu^{-1}\int (b_i^+)^2
\text{ is paid.}
\tag{89}
\]

The positive part may be taken only after the full same-carrier decomposition
has already admitted the signed increment.  Equivalently, the raw scalar
positive read

\[
\bigl[-\langle B_{mmm},\phi_i^P\rangle\bigr]_+
\tag{90}
\]

does not count until pressure-Hodge nulls, cutoff/collar terms, material-frame
motion, low/high routing, and stop/legal pieces have been separated in the same
identity and the remaining signed increment has updated the paid current.

The sharpened theorem is

\[
\nu^{-1}\sum_i\int_I (b_i^+)^2
\lesssim
\sum_i\int_I q_i\,db_i^+
+dA_I^-
+\mathfrak S_I\,d\mathcal K_I
+\theta\nu D_I
+Legal_I+Stop_I+CM_I^{end},
\qquad \theta<1,
\tag{91}
\]

on the stopped retained family, with first-entry intervals interpreted through
parent-subtracted Bessel novelty and Schur-thin intervals routed to the
time-floor/endpoint descent.  Formula `(91)` is not a new payment channel.  It
is the missing noncircular rule that says square-positive selected transfer is
counted only after signed parent-current admission.

Paid line:

\[
\text{signed admission `(86)' plus square packing `(91)'}
\Longrightarrow
\text{the high-high part of `(81)'.}
\tag{92}
\]

Unproved line:

\[
\text{prove `(91)' for the actual selected high-high coefficients, or route
failure to return, motion, viscosity, legal, stop, or same-witness endpoint.}
\tag{93}
\]

Thomas-dialogue verdict:

- Is this actually the live object? Yes.  It audits the exact place where the
  coefficient-update note moved too fast: signed current update was treated as
  squared positive-transfer admission.
- Did this prove smoothness? No.  It reopens the central hinge at the sharper
  sign/scale line `(91)`.
- What does it mean physically? The parent can see the high-high source as a
  velocity-current derivative, but a thin derivative spike is not paid merely
  because it has a current coordinate.  The spike must either build signed
  current thickly enough for Schur work, enter as Bessel novelty with the right
  square packing, or be routed.
- Is this the full coupled packet or a scalar proxy? It is full-packet only
  after pressure-Hodge, cutoff/collar, material-frame, low/high, viscosity,
  legal, and stop terms are split before the positive part is taken.
- Is this already handled in the repo? No.  The service-storage note records
  the useful signed coefficient identity, but its jump to the square estimate is
  exactly the open line.

Partial, not Gold closed. The current sharp producer is signed high-high
parent-current square admission before positive selected readout `(91)`.

## 15. Invisible-square refinement audit: density is not child admission

The visible/invisible split in the service-storage anchor sharpens `(91)`, but
it still has one hidden admission line.  From

\[
c_i=b_i^+,\qquad
Z_i=\{q_i^+<\eta\nu^{-1}c_i\},
\tag{94}
\]

the visible set is paid by the Schur pairing:

\[
\nu^{-1}\int_{V_i}c_i^2\,dt
\le
\eta^{-1}\int_{V_i}q_i^+c_i\,dt .
\tag{95}
\]

The hard set is \(Z_i\).  A density argument can find a smaller time interval
where \(\int c_i^2\) remains large, but that alone is not a proof move in the
same-material packet.  The smaller interval has to be admitted as a stopped
same-carrier child with the same high-high coefficient, before selected readout.

The failed line is

\[
\text{large invisible square density on a subinterval}
\not\Longrightarrow
\text{lawful retained same-carrier child packet.}
\tag{96}
\]

Localizing the coefficient changes the object.  The cutoff has to commute
through \(\mathbb P\), \(P_m\), \(\Lambda^{-1/2}\), the material pullback, the
transported frame, and the pressure-Hodge split.  Those commutators are not
cosmetic.  They are exactly the collar, Hodge, pressure, frame, route, legal,
and stop costs that decide whether the subinterval is a retained child or a paid
escape.

So Section 74's descent is conditional on the following refinement-admission
theorem:

\[
\begin{array}{c}
\text{retained nonendpoint invisible high-high square bill on }Z_i\\
\Longrightarrow\\
\text{a smaller stopped same-carrier child with comparable } \nu^{-1}\int c_i^2,
\text{ or paid return/motion/viscosity/legal/stop/endpoint.}
\end{array}
\tag{97}
\]

Once `(97)` holds, the Section 68 descent applies: repeated invisible
nonendpoint concentration produces a strictly smaller same-witness child until
it either reaches the time floor or accumulates at the same-witness endpoint
face.  Without `(97)`, the descent proof is circular because it has selected a
high-density subinterval by looking at the child bill before proving that the
parent packet can lawfully ask that localized question.

Paid line:

\[
\text{visible Schur payment `(95)' + refinement admission `(97)'}
\Longrightarrow
\text{square-positive admission `(91)'.}
\tag{98}
\]

Current unproved line:

\[
\text{prove `(97)' for the actual high-high source coefficient, or route the
localization defect to return, motion, viscosity, legal, stop, or endpoint.}
\tag{99}
\]

Thomas-dialogue verdict:

- Is this actually the live object? Yes.  It is the exact place where the
  invisible-square argument could cheat: turning density selection into child
  admission.
- Did this prove smoothness? No.  It replaces a vague anti-atom statement by
  the concrete same-carrier refinement theorem `(97)`.
- What does it mean physically? A violent high-high kick inside the parent
  history only counts as a smaller child if the original packet can localize the
  kick without changing the carrier or hiding the cost in pressure-Hodge/collar
  terms.
- Is this the full coupled packet or a scalar proxy? It is full-packet only when
  the localization commutators are paid in the same pressure-viscosity-
  incompressibility identity before the positive square is counted.
- Is this already handled in the repo? No.  Existing selector descent handles a
  retained child after admission.  It does not prove that an arbitrary
  high-density invisible square subinterval is such a child.
- Did this create another alias? It collapses the anti-atom wording back to the
  actual producer: same-carrier invisible-square refinement admission.

## 16. Parent-predictable dual stopped-testing form

The refinement theorem `(97)` must be read through duality.  On an invisible
subinterval \(J\subset Z_i\),

\[
\nu^{-1}\int_J c_i^2\,dt
=
\sup_{\|\alpha\|_{L^2(J)}\le1}
\nu^{-1}\left|\int_J c_i\alpha\,dt\right|^2 .
\tag{100}
\]

The maximizing \(\alpha\) is selected from the future high-high readout.  It is
not automatically a parent-built stopped test.  The candidate parent detector is

\[
\Psi_{i,J,\alpha}
=
\chi_J\alpha\Lambda^{-1/2}P_m\mathbb P\phi_i^P ,
\tag{101}
\]

pulled back to the same material carrier.  The actual original-packet identity
has the form

\[
\int_J c_i\alpha\,dt
=
\mathfrak J_P^{loc}(\Psi_{i,J,\alpha})
+\mathcal E^{time}
+\mathcal E^{Hodge}
+\mathcal E^{frame/collar}
+\mathcal E^{route}
+Legal+Stop .
\tag{102}
\]

Therefore the sharp producer is

\[
\sup_{\|\alpha\|_{L^2(J)}\le1}
\nu^{-1}|\mathfrak J_P^{loc}(\Psi_{i,J,\alpha})|^2
\le
C\rho_{i,J}^{loc},
\qquad
\sum_{J\subset Z_i}\rho_{i,J}^{loc}
\le
C\mathcal R_{loc}(P)+C\int |K|^2\,d\mu_P+C E_{paid}(P),
\tag{103}
\]

with all terms in `(102)` outside the localized current paid by return, motion,
collar, route, viscosity, legal, stop, or the same-witness endpoint face.  This
is the noncircular content of `(97)`.

Partial, not Gold closed.  At this point the sharp producer is
parent-predictable dual stopped-testing `(100)`--`(103)`; Sections 17--18 below
collapse it further to the fixed-core lower-edge/root-reserve survivor.

## 17. First-hit audit: predictability still leaves the endpoint trace

The nonanticipatory way to choose the invisible interval in Section 16 is not a
maximal-density search.  It is a fixed-quantum first hit of the parent-known
square score.  For the invisible coefficient \(c_i\) on \(Z_i\), set

\[
A_i(t)
=
\nu^{-1}\int_{t_i}^{t}1_{Z_i}(\sigma)c_i(\sigma)^2\,d\sigma .
\tag{104}
\]

Fix the retained selected quantum \(\kappa_P\) before the child readout and
define

\[
\tau_{n+1}
=
\inf\{t>\tau_n:\ A_i(t)-A_i(\tau_n)=\kappa_P\},
\tag{105}
\]

with carrier exit, collar failure, route change, legal loss, and stop taken as
paid exits.  Then \(J_n=[\tau_n,\tau_{n+1}]\) is a parent-announced stopped
interval, and

\[
\nu^{-1}\int_{J_n}c_i^2\,dt=\kappa_P .
\tag{106}
\]

If `(105)` never fires, the remaining invisible bill is below the retained
quantum or sits on an endpoint/stop face.  Thus first hitting repairs the
lookahead in the choice of \(J\): the interval is selected by a monotone
parent score, not by searching the future child density.

This does not yet prove `(103)`.  For a stopped \(J\), the dual weight
\(\alpha\) is legal only because the parent detector class has already included
the whole unit ball \(L^2(J)\).  The maximizing
\(\alpha=c_i/\|c_i\|_{L^2(J)}\) is then an element of a predeclared capacity
space, not a new child-fitted selector.  The real remaining cost appears when
the localized detector is commuted through the parent packet:

\[
d(\chi_J\Psi)=\chi_J\,d\Psi+\Psi\,d\chi_J .
\tag{107}
\]

The \(\Psi\,d\chi_J\) term is the same-carrier endpoint/cutoff trace created by
turning a parent score interval into a stopped test.  It is not paid by the
first-hit identity `(106)`, and it is not paid by abstract Bessel packing after
admission.  The missing estimate is

\[
\sup_{\|\alpha\|_{L^2(J)}\le1}
\nu^{-1}
\left|
\mathcal E^{\partial J}_{i,J,\alpha}
\right|^2
\le
Paid_{i,J}+CM_{i,J}^{end},
\tag{108}
\]

where \(\mathcal E^{\partial J}\) is the time-cutoff endpoint trace from
`(107)`, including its pressure-Hodge, frame, collar, route, viscosity, legal,
and stop companions.  It must either enter the same stopped return/BV currency,
the positive endpoint trace temporal-variation currency, or a same-witness
endpoint face.

The pressure test is the terminal pulse model.  A sequence can have
\(\nu^{-1}\int_J c_i^2=\kappa_P\) on first-hit intervals \(J\) with
\(|J|\downarrow0\).  First hitting makes those intervals predictable, but the
cutoff trace concentrates at their endpoints unless `(108)` supplies temporal
variation, return, route, legal, stop, or endpoint payment.

Paid line:

\[
\text{first-hit score `(104)'--`(106)' + endpoint trace charge `(108)'}
\Longrightarrow
\text{parent-predictable dual stopped-testing `(103)'.}
\tag{109}
\]

Failed line:

\[
\text{first-hit square-score predictability}
\not\Longrightarrow
\text{payment of the endpoint/cutoff trace in `(107)'.}
\tag{110}
\]

Current unproved line:

\[
\text{prove `(108)' for the actual invisible high-high stopped tests, or route
the cutoff trace to return, motion, viscosity, legal, stop, or endpoint.}
\tag{111}
\]

## 18. Endpoint trace charge collapses to first-exit or fixed-core return

The endpoint trace charge `(108)` is not a new producer.  Once the first-hit
score `(104)`--`(106)` makes \(J\) parent-predictable, the boundary term in

\[
d(\chi_J\Psi)=\chi_J\,d\Psi+\Psi\,d\chi_J
\tag{112}
\]

has the same stopped-selector split as the central service-storage anchor.

If the endpoint of \(J\) is a parent-announced first exit, the trace is paid by
the harmonic Cauchy estimate:

\[
H_J\|D_J^{fresh}\|_2^2
\lesssim
\int_{\operatorname{Hist}(J)}w|G_{\rm route}|^2+Legal+Stop .
\tag{113}
\]

If the endpoint is fixed-core replay, the trace is a return of the same stopped
root record \(P_R=\Gamma_RZ^S\).  The original packet pays only the harmonic
square return

\[
H_J\left({\Delta_J^-P_R\over |J|}\right)^2
\le
\int_Jw|G_{\rm root}^{new}|^2,
\tag{114}
\]

so selected counting still needs the retained lower edge and root reserve:

\[
\omega_J^{ret}
\lesssim
H_J\left({\Delta_J^-P_R\over |J|}\right)^2+Paid(J),
\qquad
\int_{\operatorname{Hist}(P)}w|G_{\rm root}^{new}|^2
\le
C_N(u_0)\mathcal R(P)+R_{\rm legal}+Stop .
\tag{115}
\]

If the endpoint is neither first-exit nor fixed-core, it is a changed
selector/collar/route question and belongs to motion, legal, stop, or the
same-witness endpoint face.

Thus `(108)` collapses to the same live producer as the central anchor:

\[
\text{retained fixed-core lower-edge admission plus original root-geometry
reserve for the actual invisible high-high dual weights.}
\tag{116}
\]

Partial, not Gold closed. The current sharp producer is `(116)`.
