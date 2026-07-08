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
been admitted on the same retained edge. The remaining theorem is not another
lag label and not a raw untyped norm. Its native form is a same-currency lower
bound, equivalently a zero-bill exclusion of the aligned atom.

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

or, in lower-bound form,

```math
\texttt{UniformTransverseHodgeCoercivityInRecordCurrency.A}.
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

## 7. Uniaxial survivor split: local normal form or parent pressure bank

The uniaxial survivor has two genuinely different sources.

First, \(H\) may be locally produced on the same atom. Write

```math
H=hP+k\,n\otimes n,
\qquad
P=I-n\otimes n,
\qquad
h\ne k.
\tag{ATH.15}
```

Since \(H\) is a Hessian, it is a Codazzi tensor:

```math
\nabla_\ell H_{ij}=\nabla_iH_{\ell j}.
\tag{ATH.16}
```

For a Codazzi tensor with eigenvalue multiplicity \(2+1\), (ATH.16) forces the
two-plane distribution \(P\) to be integrable and umbilic on the simple
uniaxial region; \(h\) is constant along each leaf, and the pressure-axis
curvature is controlled by the transverse derivative of the eigenvalue gap.
Thus the local pressure eigensurfaces are the Euclidean totally-umbilic
surfaces: planar or spherical, up to the usual endpoint degeneracies. This is
the local normal-form sublemma:

```math
\texttt{UniaxialHessianCodazziNormalForm.A}.
\tag{ATH.17}
```

Now impose co-diagonal biaxial strain. On the same splitting,

```math
S=aP-2a\,n\otimes n.
\tag{ATH.18}
```

The planar normal form gives a fixed pressure axis. A zero-collar finite-energy
retained atom in this branch is either the affine endpoint, or it needs lateral
or endpoint cut-off and pays through collar/exit/parent ownership. The spherical
normal form gives a radial biaxial strain; incompressibility and strain
compatibility force the radial amplitude into the \(r^{-3}\) homogeneous branch
on an annulus, hence a singular/non-finite-energy center or a paid cut-off. In
short:

```math
\text{local uniaxial }H+\text{ co-diagonal biaxial }S
\Longrightarrow
\text{affine endpoint / singular radial branch / collar-exit payment.}
\tag{ATH.19}
```

(ATH.19) is not yet a theorem in the weak strict-atom class; the remaining work
is to prove (ATH.17) and the strain-compatibility classification with the atom
error terms. But it shows that the local uniaxial branch is not the hard
survivor.

Second, \(H\) may be supplied by a nonlocal same-field pressure bank. A remote
source can be divergence-free and can vanish to first order at the selected
station while its Riesz pressure contribution supplies a trace-free uniaxial
Hessian on the atom. That cannot be killed by local Codazzi equations, because
inside the child atom the bank is a harmonic parent field. The required theorem
is instead a parent-bank dichotomy:

```math
\texttt{ParentHarmonicUniaxialBankPaysOrRoutesOut.A}.
\tag{ATH.20}
```

One useful formulation is:

```math
H_{\rm far}^{tf}\ne0,\quad
[H_{\rm far},S]=0
\text{ through a retained child tower}
\Longrightarrow
\mathsf P_{\rm parent}
+\mathsf P_{\rm mix}
+\mathsf P_{\rm collar}
+\mathsf P_{\rm exit}
+\mathsf S_{\rm pass}
\gtrsim
\mathsf S_{\rm ret},
\tag{ATH.21}
```

unless the child service is parent-owned endpoint service. Physically: a fixed
harmonic parent Hessian can align one child by ownership/pass, but a positive
record tower that keeps changing scale or material orientation must either
re-aim the parent pressure frame, spend selector/order-lock variation, or expose
the remote bank as a same-currency Field/parent bill. This is the nonlocal
piece Claude should attack next; a purely local Codazzi closure cannot see it.

## 7. Local algebra cannot close the survivor

The uniaxial survivor is not pointwise impossible. Existing remote-bank tests
already show the physical reason: a same-fluid divergence-free field can vanish
to first order at the selected station while its nonlocal pressure source
supplies a prescribed trace-free Hessian there. Choosing that trace-free Hessian
uniaxial gives the \(h_1=h_2\ne h_3\) pressure spectrum without changing the
local strain record at first order.

So a proof that only uses the local strain frame, local Codazzi algebra, or
pointwise incompressibility will miss the actual adversary. The needed theorem
must say that such a bank is retained and paid in \(\mathsf B_{\rm ret}\),
summable below the normalized record, or routed to collar/exit/pass. This is why
the lower bound (ATH.5) is a same-currency transverse Hodge coercivity theorem,
not a local diagonalization theorem.
