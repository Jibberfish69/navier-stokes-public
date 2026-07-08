---
theorem_id: forward-gold-c0-aligned-critical-record-atom-transverse-hodge-coercivity-20260707
created: 2026-07-07
problem: navier-stokes
route: forward-gold / c_0 / transverse pressure-Hodge coercivity / uniaxial aligned survivor
status: strict-reduction-open; transverse-Hodge-coercivity-terminal
source_refs:
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-c0-causal-lag-commutator-sign-target-20260707.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-c0-transverse-coupling-reduces-to-angular-sphere-positivity-20260707.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-c0-claude-codex-sync-transverse-coupling-20260707.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-overlap-bath-exact-shear-cell-pressure-hessian-display-20260706.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-overlap-bath-local-affine-dynamic-obstruction-20260706.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-c0-gate1-remote-pressure-tail-dichotomy-direct-attempt-20260706.md
completion_truth: >-
  This note records the corrected terminal c_0 reduction and the current
  uniaxial survivor. The commutator is the signed brake once a transverse
  pressure Hessian is present; the remaining open theorem is the same-currency
  transverse Hodge lower bound, equivalently the exclusion of aligned
  incompressible critical-record atoms except pass, collar/exit payment,
  service-zero, or parent-owned affine endpoint-kernel escape. Causal lag,
  stretched-vortex quadrupoles, local BKM/CKN visibility, angular transport, and
  Liouville/UCP remain diagnostic, branch, or proof-method tools unless they
  prove this coercivity or produce a physically admitted counterprofile. Claude
  cycles 10--11 sharpen the local Codazzi survivor: an anisotropic uniaxial
  pressure Hessian, \(h_1=h_2\ne h_3\), co-diagonal with a biaxial strain record.
  Exact shear-cell pressure-bank notes show this survivor is locally physically
  realizable as a pressure Hessian shape; it is admitted for c_0 only if the
  same incompressible velocity field realizes it through the retained record
  tower without paying or routing the bank.
---

# Aligned Critical-Record Atom And Transverse Hodge Coercivity

## 1. Physical object

Work with one incompressible Navier-Stokes velocity field. Let

```math
S=\frac{\nabla u+\nabla u^T}{2},
\qquad
Q=\partial_i u_j\partial_j u_i,
\qquad
H=\nabla^2(-\Delta)^{-1}Q .
\tag{ATH.1}
```

In the strain eigenframe, split the pressure Hessian into the diagonal aligned
part and the off-diagonal transverse part:

```math
H=H_\parallel^S+H_\perp^S,
\qquad
H_\perp^S:=\Pi_\perp^S H .
\tag{ATH.2}
```

The aligned part moves eigenvalues. The transverse part rotates the strain
eigenframe. Scalar and isotropic pieces commute with \(S\), so they can be
trace/gauge/pass content, but they cannot carry the retained \(c_0\) brake.

Thus

```math
\widehat H_\perp=0
\tag{ATH.3}
```

means pressure is aligned in the strain frame. It does not by itself mean the
rung is affine. A finite-energy incompressible packet can have an anisotropic
pressure Hessian that remains diagonal in the moving strain frame. That is the
dangerous aligned atom.

## 2. Signed brake versus same-currency transverse Hodge lower bound

The commutator supplies the signed braking channel once \(H_\perp^S\) is
present:

```math
([S^2,H])_{ij}=(\lambda_i^2-\lambda_j^2)H_{ij},
\qquad i\ne j .
\tag{ATH.4}
```

So the sign story is coherent only after the transverse pressure Hessian has
been admitted on the same retained edge. The remaining theorem is a
same-currency lower bound, equivalently a zero-bill exclusion of the aligned
atom.

After pass, collar/exit, and parent-owned affine endpoint-kernel classes have
been removed, the lower-bound form is

```math
\left\|
\Pi_\perp^S\nabla^2(-\Delta)^{-1}
\left(\partial_i u_j\partial_j u_i\right)
\right\|_{\mathsf B_{\rm ret}}
\ge
c_*
\mathsf R_{\rm rec}(u).
\tag{ATH.5}
```

The native zero-bill wall is:

```math
\mathsf S_{\rm ret}=1,\qquad
\mathsf P\to0,\qquad
[H,S]=0
\Longrightarrow
\text{pass}
\;\vee\;
\text{service-zero}
\;\vee\;
\text{collar/exit paid}
\;\vee\;
\text{parent-owned affine endpoint kernel}.
\tag{ATH.6}
```

This is the compact theorem:

```math
\texttt{NoAlignedIncompressibleCriticalRecordAtomExceptEscapes.A}
\tag{ATH.7}
```

After the shear-cell audit, the lower-bound phrasing is not the live target by
itself. The same object must be stated as a no-free aligned-bank/payment
dichotomy:

```math
\texttt{NoAlignedIncompressibleCriticalRecordAtomExceptEscapes.A}
\quad+\quad
\texttt{ParentHarmonicUniaxialBankPaysOrIsSummable.A}.
\tag{ATH.8}
```

## 3. Physical admissibility

A candidate atom must pass these same-fluid checks before it can be pursued.

1. The pressure Hessian must be the Riesz/Hodge image of the same velocity
   gradient source \(Q\), not a detached pressure bank.
2. The record amplitude and the transverse pressure response must live on the
   same retained edge before readout.
3. The aligned condition \(H_\perp^S=0\) must be imposed on the same moving
   strain frame, not on a frozen scalar or radial proxy.
4. Any collar, remote bank, selector change, channel rotation, or endpoint
   kernel contribution must be paid in the same \(c_0\) bill currency or routed
   out.

Scalar radial shells fail this test as \(c_0\) carriers: they have no
trace-free quadrupole and no off-diagonal strain-frame response. They are null
controls only.

## 4. Why causal lag is demoted

Causal lag was a useful way to see that the brake is time-oriented after the
transverse channel is present. It does not supply the magnitude/admission source
for that channel. The terminal obstruction is an aligned positive-record atom:
the same field keeps its pressure Hessian co-diagonal with the strain frame
while still claiming retained service and paying no collar/exit/atomization
bill.

Therefore causal-lag, strict-repeller, stretched-vortex quadrupole, angular
transport, and local BKM/CKN packets are branch tests. They matter only by
proving the transverse Hodge lower bound (ATH.5), by paying/routing one of the
escapes in (ATH.6), or by constructing a physically admitted counterprofile.

## 5. What proves \(c_0\)

The \(c_0\) backend consumes the signed commutator once the transverse Hodge
lower bound has been supplied in the same strict-atom currency. The needed
package is:

```math
\text{uniform transverse Hodge coercivity}
+
\text{currency/accounting compatibility}
+
\text{commutator sign balance}
\Longrightarrow
c_0>0 .
\tag{ATH.9}
```

What remains open is exactly the first two inputs: prove the same-field
Calderon-Zygmund/Riesz pressure Hessian cannot co-diagonalize with the strain
frame on a lawful incompressible critical-record atom in the zero-bill limit,
and prove the strict-atom accounting compactifies the sequence without
double-counting or losing the selected channel.

Leaving either input unproved gives a sharp reduction, not closure.

## 6. Pressure-spectrum survivor after the Codazzi audit

Claude cycles 10--11 add a useful local audit, but it has to be read through
the same physical gate. If \(H\) is diagonal in the strain frame,

```math
H=\sum_i h_i e_i\otimes e_i,
\tag{ATH.10}
```

then the Hessian/Codazzi identities constrain off-diagonal frame connection by
pressure eigenvalue gaps. Schematically,

```math
(h_i-h_j)\,\langle\nabla e_i,e_j\rangle
\;+\;
\text{diagonal-gradient terms}
=0
\tag{ATH.11}
```

on the aligned branch. Distinct pressure eigenvalues therefore make spatial
frame rotation visible to the pressure-Hessian equations. That is a legitimate
Liouville/UCP attack on the aligned atom.

The local audit does not kill the pressure-degenerate branch. If

```math
h_1=h_2\ne h_3,
\tag{ATH.12}
```

then \(H\) is anisotropic and uniaxial, but rotations inside the \((e_1,e_2)\)
pressure-degenerate plane are invisible to the local Codazzi torsion. This is
not an isotropic proxy and not a scalar shell. It is the physically dangerous
aligned survivor: an anisotropic uniaxial pressure Hessian co-diagonal with a
biaxial strain record.

Thus the next sharp subtest is

```math
\texttt{NoUniaxialPressureBiaxialStrainCriticalRecordAtomExceptEscapes.A}.
\tag{ATH.13}
```

The test is not merely whether a prolate source model has the adverse
quadrupole sign. The prolate source model is a pressure-shape warning. The
physical question is whether the same incompressible velocity field can realize

```math
\nabla\cdot u=0,\qquad
H=\nabla^2(-\Delta)^{-1}(\partial_i u_j\partial_j u_i),
\qquad
H_\perp^S=0,
\qquad
h_1=h_2\ne h_3,
\tag{ATH.14}
```

while \(S\) still carries a positive biaxial critical record in the same
participation/payment currency. If yes, it is the admitted anisotropic
counterprofile. If no, this closes the only local Codazzi survivor left by the
distinct-spectrum attack.

## 7. Local algebra cannot close the survivor

The uniaxial survivor is not pointwise impossible. The exact shear-cell display
shows the physical reason. For every \(K\in{\rm Sym}_0(3)\), there is a
periodic divergence-free cell \(u_K\) with

```math
u_K(0)=0,\qquad
\nabla u_K(0)=0,\qquad
\nabla^2p_K(0)=K,
\qquad
-\Delta p_K=\partial_i (u_K)_j\,\partial_j (u_K)_i.
\tag{ATH.15}
```

Take the strain frame as the coordinate frame and choose

```math
K=k\,{\rm diag}(1,1,-2),
\qquad k\ne0.
\tag{ATH.16}
```

This is exactly the uniaxial pressure spectrum \(h_1=h_2\ne h_3\). The
zero-diagonal frame used by the shear-cell construction can be chosen
explicitly:

```math
a_1=\left(\sqrt{2/3},0,1/\sqrt3\right),
\quad
a_2=\left(-1/\sqrt6,1/\sqrt2,1/\sqrt3\right),
\quad
a_3=\left(-1/\sqrt6,-1/\sqrt2,1/\sqrt3\right),
\tag{ATH.17}
```

and each vector satisfies \(\langle Ka_m,a_m\rangle=0\). Reciprocal shear
amplitudes in this frame realize (ATH.16) by the exact pressure-Hessian display.

Now place a local biaxial affine strain record at the selected station,

```math
A={\rm diag}(\alpha,\beta,-\alpha-\beta),
\qquad
\alpha,\beta,-\alpha-\beta \text{ distinct},
\tag{ATH.18}
```

and put the pressure cell outside the record core or in a zero-gradient service
pocket. At the station the bank does not alter the local strain to first order,
but its pressure Hessian can be co-diagonal and uniaxial in the same frame:

```math
S(0)=A,\qquad
H_\perp^S(0)=0,\qquad
h_1=h_2\ne h_3.
\tag{ATH.19}
```

Thus a proof that only uses the local strain frame, local Codazzi algebra, or
pointwise incompressibility will miss the actual adversary. The uniaxial
pressure/biaxial strain configuration is locally compatible with one
divergence-free velocity field after localization/Hodge correction.

This is not a retained \(c_0\) counterexample. It is the obstruction to local
closure. To become an admitted aligned atom, the bank must persist through the
material record tower and evade the retained Field/viscous/selected currency.
The available remote-pressure tail theorem gives the exact closing dichotomy:
every pressure source used by the selected record is either inside the retained
Field envelope and paid, legal/stopped/collar, or a Pack/Part/Field route-out.
Applying that closure to the uniaxial pressure bank is the current subproblem:

```math
\texttt{ParentHarmonicUniaxialBankPaysOrRoutesOut.A}.
\tag{ATH.20}
```

## 8. Cycle-12 phase bookkeeping after the local-rigidity failure

Claude cycle 12 usefully isolates the in-plane strain phase, but cycle 13
supersedes the local closure reading. The exact shear-cell bank can prescribe
the uniaxial pressure Hessian at jet level, so no case is killed by local
Codazzi algebra alone.

The phase bookkeeping is still useful. In the pressure-degenerate plane, pressure
is isotropic while strain can remain anisotropic:

```math
H=hP+k\,n\otimes n,
\qquad
S=\lambda_1e_1\otimes e_1+\lambda_2e_2\otimes e_2+\lambda_3n\otimes n,
\qquad
e_1,e_2\in P,\quad \lambda_1\ne\lambda_2.
\tag{ATH.21}
```

For every in-plane eigenbasis \((e_1,e_2)\),

```math
[H,S]=0,
\tag{ATH.22}
```

because \(H\) cannot see the spin-2 angle inside its degenerate plane. This is
the no-wake phase coordinate: pressure is in-plane isotropic, strain is
in-plane anisotropic, and the retained record claims to persist without a phase
bill.

The scalar pressure source

```math
Q=|S|^2-\frac12|\omega|^2
\tag{ATH.23}
```

can see the magnitude of the in-plane strain anisotropy, but it does not
automatically retain the phase
\(e_1\otimes e_1-e_2\otimes e_2\). Thus phase custody is a real payment
coordinate, not a pointwise pressure-spectrum contradiction:

```math
\texttt{InPlaneSpinTwoRecordPhasePaysOrRoutesOut.A}.
\tag{ATH.24}
```

A useful form is:

```math
\lambda_1-\lambda_2\ne0,\quad
H|_P=hP,\quad
\mathsf S_{\rm ret}=1
\Longrightarrow
\mathsf P_{\rm phase}
+\mathsf P_{\rm parent}
+\mathsf P_{\rm collar}
+\mathsf P_{\rm exit}
+\mathsf S_{\rm pass}
\gtrsim1,
\tag{ATH.25}
```

unless the in-plane strain phase is parent-owned endpoint data.

The proof split is:

1. fixed in-plane phase through the tower \(\Rightarrow\) parent-owned
   endpoint service or a comparable-scale bank that is paid;
2. phase rotation in space, material time, or scale \(\Rightarrow\)
   selector/order-lock variation, hence \(\mathsf P_{\rm phase}\);
3. cone-mixing or Young-measure hiding of the phase \(\Rightarrow\)
   atomization must recover a selected spin-2 channel without service loss, or
   the averaged object is pass/service-zero.

So the phase form of the bank wall is:

```math
\text{pressure in-plane isotropic}
\quad+\quad
\text{strain in-plane anisotropic retained record}
\quad+\quad
\text{zero phase/parent/collar/exit bill}.
\tag{ATH.26}
```

Proving (ATH.24) helps only as a component of
\(\texttt{ParentHarmonicUniaxialBankPaysOrRoutesOut.A}\). Producing a same-field
finite-energy atom satisfying (ATH.21)--(ATH.22) with zero phase, parent,
collar, and exit bill is the honest counterprofile.

## 9. Parent-bank scaling: why the shear cell is not a tower counterexample

Claude cycle 13 correctly demotes all purely local rigidity attempts. The exact
shear-cell display means a local jet can prescribe the uniaxial pressure Hessian
without changing the selected strain to first order. Therefore the proof cannot
be "local Codazzi forbids the bank." It has to be "a bank strong enough to serve
the retained tower is owned and paid."

The scaling is the useful fact. Under the Navier-Stokes normalization

```math
U_r(y)=r\,u(x_0+ry),
\qquad
P_r(y)=r^2p(x_0+ry),
\tag{ATH.27}
```

the normalized pressure Hessian obeys

```math
\nabla_y^2P_r(y)=r^4\nabla_x^2p(x_0+ry).
\tag{ATH.28}
```

So a fixed parent harmonic Hessian \(H_{\rm par}\) contributes only
\(r^4H_{\rm par}\) in the child coordinates. More generally, a pressure source
living at a parent scale \(R\gg r\), with order-one normalized parent strength,
contributes to the child normalized Hessian with a factor comparable to

```math
\left(\frac rR\right)^4.
\tag{ATH.29}
```

Thus a genuinely remote bank cannot supply order-one aligned pressure to an
arbitrarily deep normalized child tower. It is summable below the retained
record.

To keep \(H_\perp^S=0\) with order-one normalized effect at every retained rung,
the bank must occur at comparable scale:

```math
R\sim r.
\tag{ATH.30}
```

But then it is no longer a harmless remote jet. It lies in the strict atom,
collar, adjacent parent, or Field envelope. The exact theorem is:

```math
\texttt{ComparableScalePressureBankIsAtomCollarParentOrField.A}.
\tag{ATH.31}
```

Combined with far-field decay, this gives the parent-bank dichotomy in the form
needed for \(c_0\):

```math
\texttt{ParentHarmonicUniaxialBankPaysOrIsSummable.A}.
\tag{ATH.32}
```

One possible statement is:

```math
\mathsf S_{\rm ret}(Q_r)=1,\quad
\|H^{\rm bank}_{r,tf}\|_{\rm norm}\ge c
\Longrightarrow
\mathsf P_{\rm atom/collar/parent/Field}(Q_r)\ge c'
\quad\text{or}\quad
\sum_{\text{remote }R\gg r}\|H^{R\to r}_{tf}\|_{\rm norm}<\infty.
\tag{ATH.33}
```

This is the no-free-bank version of the \(c_0\) wall. A shear cell proves the
local jet is possible; scaling says an order-one tower bank cannot remain remote
and free. The remaining proof work is to make the near/far pressure split,
normalized \(r^4/R^4\) decay, and atom/collar/parent/Field admission exact in
the strict participation currency.

## 10. Hessian-channel tail admission

The installed Gate 1 theorem controls a selected pressure increment in the
relay/cutoff flux. The aligned-bank wall asks for a pressure Hessian component
in the strain frame. These are not the same readout. The transfer is licensed
only after the selected strict atom admits the pressure-Hessian channel as part
of its retained packet.

The needed analogue is

```math
\texttt{RetainedPressureHessianCZTailAdmission.A}.
\tag{ATH.34}
```

For \(H=\nabla^2(-\Delta)^{-1}Q\), decompose \(Q\) into a near part and dyadic
annuli \(A_\ell\) outside the selected packet. The Hessian kernel satisfies

```math
|K_H(x-y)|\le C\,|x-y|^{-3}.
\tag{ATH.35}
```

Hence, on a selected packet of radius \(r\),

```math
\|H_{\rm far}\|_{\rm packet}
\le
C
\sum_{\ell\ge0}
(2^\ell r)^{-3}
\|Q\|_{L^1(A_\ell)}.
\tag{ATH.36}
```

After NS normalization this is the same \((r/R)^4\) parent-to-child decay
recorded in (ATH.29) for sources at scale \(R\). Thus a far bank is summable
below the normalized record unless the annular source is itself retained at
comparable strength.

If the annular source is retained, it belongs to the legal Field/viscous
envelope and is paid. If it is outside every retained Field envelope while still
needed for the selected Hessian readout, then the pressure-Hessian component is
not terminally retained with the witness, giving the same terminal Part/Field
route-out as the pressure-increment Gate 1 theorem. Therefore the exact
reduction is:

```math
\texttt{RetainedPressureHessianCZTailAdmission.A}
+
\texttt{ComparableScalePressureBankIsAtomCollarParentOrField.A}
\Longrightarrow
\texttt{ParentHarmonicUniaxialBankPaysOrIsSummable.A}.
\tag{ATH.37}
```

What remains unpaid is not local pressure algebra. It is the channel-admission
statement that the selected \(c_0\) strict atom really contains the
pressure-Hessian readout in \(\mathsf B_{\rm ret}\), and the comparable-scale
ownership statement that a bank strong enough to cancel \(H_\perp^S\) is atom,
collar, parent, or Field currency before readout.

## 11. Parent-borrowed alignment: non-telescoping octave cost

Claude cycle 14 gives the physical reading of the pressure bank. Since a
shear-cell bank can satisfy \(u_{\rm bank}(0)=0\) and
\(\nabla u_{\rm bank}(0)=0\) while prescribing the trace-free pressure Hessian,
the aligned child pressure is not locally generated by the child affine record.
It is parent-borrowed through the nonlocal pressure solve.

A \(c_0=0\) tower would therefore need infinitely many retained octaves where
each child borrows the aligned uniaxial Hessian from its parent and no octave
records a collar, Field, selector, endpoint, or parent bill.

The exact adjacent-scale theorem is:

```math
\texttt{ParentBorrowingCostNonTelescoping.A}.
\tag{ATH.38}
```

One useful form is:

```math
\mathsf S_{\rm ret}(Q_r)=1,\quad
\|H^{\rm par\to child}_{r,tf}\|_{\rm norm}\gtrsim1
\Longrightarrow
\mathsf P_{\rm collar}(r,2r)
+\mathsf P_{\rm Field}(r,2r)
+\mathsf P_{\rm parent}(r,2r)
\gtrsim1,
\tag{ATH.39}
```

unless the bank is parent-owned affine endpoint data, pass-owned, or
service-zero. The non-telescoping content is that strict atoms orient ownership
across each adjacent collar. A child that uses the parent bank must either retain
and pay that Hodge/collar work, or exclude the bank and forfeit the claimed
pressure-Hessian readout.

Thus the live \(c_0\) route is:

```math
\texttt{RetainedPressureHessianCZTailAdmission.A}
+
\texttt{ComparableScalePressureBankIsAtomCollarParentOrField.A}
+
\texttt{ParentBorrowingCostNonTelescoping.A}
\Longrightarrow
\texttt{ParentHarmonicUniaxialBankPaysOrIsSummable.A}.
\tag{ATH.40}
```

The remaining burden is to prove the adjacent-collar payment identity in the
strict participation currency and show its endpoint terms are exactly pass,
service-zero, or parent-owned affine kernel.

## 12. Frame-variation admission: answering the \(dK_J\) telescope risk

The affine Schur/no-free-upcrossing source does not yet control frame total
variation. It exposes the missing step. The packet gives a signed identity for
\(\mathfrak S_J=\int\langle m_J,\mathsf G_J^{-1}m_J\rangle dx\), and the desired
finite reserve is

Physical audit: this is an accounting-compatibility subtest for an already
admitted pressure-Hessian channel. It does not replace
\(\texttt{UniformTransverseHodgeCoercivityInRecordCurrency.A}\), and it does
not turn a fixed aligned pressure bank into an affine rung. Frame variation can
bill a rotating retained spin-2 phase. A fixed-phase, order-one,
parent-borrowed aligned bank still belongs to
\(\texttt{ComparableScalePressureBankIsAtomCollarParentOrField.A}\) and
\(\texttt{ParentBorrowingCostNonTelescoping.A}\) unless it is pass-owned,
service-zero, or genuinely parent-owned affine endpoint data.

```math
\sum_J
\left(
\sup_t\mathfrak S_J
+\int dA_J^-
+\int\mathfrak S_J\,d\mathcal K_J
\right)
\le C_N(u_0)+R_{legal}+Stop.
\tag{ATH.41}
```

Thus \(dK_J\) cannot be treated as already paid. It is paid only after the
retained spin-2 frame motion is admitted as positive route-metric variation in
the selected parent-pulled metric:

```math
\texttt{RetainedSpinTwoFrameVariationAdmittedBySchurMetric.A}.
\tag{ATH.42}
```

A useful form is:

```math
\mathsf S_{\rm ret}(Q_r)\simeq1,\quad
|\Delta\theta_r|>0
\Longrightarrow
\mathfrak S_J\,d\mathcal K_J^{geom}
\gtrsim |\Delta\theta_r|,
\tag{ATH.43}
```

unless the frame change is not retained, in which case the branch routes to
phase hiding, collar/Field, parent endpoint, pass/service-zero, legal, or stop.

After this admission theorem, the BV split is exactly:

```math
\sum_r|\Delta\theta_r|<\infty
\Longrightarrow
\text{fixed-phase / parent-endpoint branch},
\qquad
\sum_r|\Delta\theta_r|=\infty
\Longrightarrow
\sum_J\int\mathfrak S_J\,d\mathcal K_J^{geom}=\infty.
\tag{ATH.44}
```

So \(dK_J\) can telescope only as an unadmitted or gauge-degenerate coordinate.
In the strict retained currency, it must become positive route variation or the
record is not actually retained.

## 13. In-plane rotating-wave fork: pressure blindness is conditional

Claude cycle 16 supplies the missing generator for the in-plane spin-2 phase.
In the pressure-degenerate plane, the inviscid strain-frame equation gives

```math
\frac{D\varphi}{Dt}
=
-\,\frac{\tfrac14\,\omega_1\omega_2+H_{12}}{\lambda_1-\lambda_2},
\qquad
H_{12}=0\ \text{on the Case-B wall}.
\tag{ATH.45}
```

Thus the phase can precess by the local vorticity skew while the scalar pressure
source \(Q=|S|^2-\frac12|\omega|^2\) is blind to the in-plane spin-2 angle.

This is a real pressure-channel blind spot, but it is not yet a physical
counterprofile. Pointwise \(Q\)-blindness does not construct a divergence-free
velocity-gradient field whose rotating-wave embedding is spatially compatible,
viscously admissible, finite-energy/localized, and retained through the strict
\(c_0\) tower.

The exact fork is therefore

```math
\texttt{RotatingWaveSpinTwoRecordAdmittedOrPaysOrderLock.A}.
\tag{ATH.46}
```

Either the retained-record metric charges the spin-2 precession as order-lock /
frame-variation payment, or a same-field rotating-wave profile is actually
admitted with \(o(1)\) order-lock cost. Only the second outcome is a genuine
counterprofile to the transverse-coupling route.

## 14. Harmonic spin-2 tail: orientation admission is the sign

Cycle 16 sharpens the parent-bank wall. Inside the child packet, a
parent-borrowed pressure bank is harmonic. Its retained \(l=2\) part is a
trace-free tensor \(K_{\rm par}\), and the aligned Case-B readout is the
oriented coefficient

```math
a_{\rm align}
=
\langle K_{\rm par},T_\varphi\rangle,
\qquad
T_\varphi=e_1\otimes e_1-e_2\otimes e_2.
\tag{ATH.47}
```

The scalar size \(\|K_{\rm par}\|\) is not enough. It is T-even and can miss the
coherent sign of the up-scale leaked quadrupoles. The Schur route-metric term
\(\mathfrak S_J\,d\mathcal K_J\) controls that sign only if the parent CZ tail
is admitted as an oriented tensor detector, not merely as a magnitude tail.

The exact admission theorem is:

```math
\texttt{OrientedHarmonicSpinTwoTailSchurAdmission.A}.
\tag{ATH.48}
```

One useful form is:

```math
\mathsf S_{\rm ret}(Q_r)\simeq1,\quad
|a_{\rm align}|\gtrsim1
\Longrightarrow
K_{\rm par}\otimes T_{\varphi_r}
\in\mathcal C_P
\quad\text{with}\quad
d\mathcal K_J^{orient}\text{ charging its motion},
\tag{ATH.49}
```

or else the pressure-Hessian tail is not retained and the branch routes to
collar/Field, parent endpoint, pass/service-zero, legal, or stop.

Thus the live bank-payment theorem is orientation-sensitive:

```math
\texttt{OrientedHarmonicSpinTwoTailSchurAdmission.A}
+
\texttt{ComparableScalePressureBankIsAtomCollarParentOrField.A}
+
\texttt{ParentBorrowingCostNonTelescoping.A}
\Longrightarrow
\texttt{ParentHarmonicUniaxialBankPaysOrIsSummable.A}.
\tag{ATH.50}
```

If the retained record metric sees \(T_\varphi\), the up-leaked quadrupoles
superpose coherently only by paying oriented route variation. If the retained
metric sees only the scalar pressure source \(Q\), it is blind to
\(\varphi\), and the rotating-wave branch is the honest counterprofile
candidate pending same-field compatibility, localization, viscosity, and strict
retention.
