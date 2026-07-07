---
theorem_id: forward-gold-c0-vieillefosse-participation-lawfulness-inquiry-20260707
created: 2026-07-07
problem: navier-stokes
route: forward-gold / c_0 / participation law / Vieillefosse lawfulness
status: open-inquiry-strict-reduction-not-proof; adjacent-overlap-charge-lemma-refuted
ontology_lock:
  fluid_field_object: one same-fluid incompressible viscous pressure-constrained Navier-Stokes history
  participant: selected same-field participant, not an observer cutoff and not an independent model blob
  pressure_role: incompressibility lawfulness constraint and nonlocal coupling, not an extensive positive numerator
  numerator_role: viscous and drift participation cost after lawful pressure coupling
source_refs:
  - /Users/thomasbirnie/.codex/attachments/c31f8ce7-0076-4959-b6f6-83099d391b87/pasted-text.txt
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-c0-critical-height-growth-not-self-similar-profile-correction-20260707.md
  - problems/navier-stokes/theorem-construction/mpp-shared-participation-and-tower-coherence-law.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-radiodrome-participation-tower-relay-defect-reduction-20260706.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-c0-adjacent-affine-chain-mismatch-is-free-mode-20260707.md
blocks:
  - NonAffinePressureViscousSignedCommutatorCoercivity.A
  - FullTowerPositiveChannelThreeMeasureAdmission.A
  - NormalizedRelayBillCompactnessRecordPassage.A
  - CriticalAffineChannelHodgeHardyBridge.A
  - CausalLagCommutatorSignTarget.A
completion_truth: >-
  Working inquiry and strict reduction only. The affine Vieillefosse core is a
  lawful incompressible local jet, and the purely isotropic pressure Hessian
  belongs only to the infinite spatially uniform affine jet. It is the
  reversible restricted-Euler fiction, not the behavior of a finite-energy
  same-field flow with collars, neighbors, or turn-off. The live free manifold
  is broader: aligned anisotropy, where the participation Hessian is diagonal
  in the strain frame and \([S^2,\nabla^2q]=0\). Any positive c_0 bite must come
  from transverse anisotropy: a signed material-time lag between the local
  stretch frame and the nonlocal participation frame. That commutator sign is
  not proved here. The adjacent-overlap-charge attempt in Sections 21--23 is
  refuted because it charges affine amplitude mismatch, a participation/Korn
  null mode. The log-scale Hodge-Hardy bridge in Section 24 is only an
  off-kernel bookkeeping coordinate; it cannot supply endpoint strictness by
  itself. Endpoint strictness requires the causal-lag / route-b sign theorem.
---

# Vieillefosse participation-lawfulness inquiry

This note records the live inquiry from the conversation: realize the
Vieillefosse strain as a lawful incompressible same-field participant, compute
the true deviatoric pressure response, and test whether that pressure response
pushes transverse to the frictionless-stretching direction. A transverse
component gives the infinitesimal Shizuta-Kawashima/genuine-coupling bite. No
transverse component leaves the log endpoint alive.

## 1. Physical object

The object is one evolving incompressible Navier-Stokes velocity field. A
selected participant is a same-field packet read from that field by a lawful
participation weight or tower coordinate. It is not an external test box and
not a separate local ODE.

The dangerous physical picture is a same-fluid strain packet trying to eat
itself. In the strain eigenframe, biaxial strain on the Vieillefosse branch
stretches with almost no frictional cost. The local restricted-Euler reading
allows that behavior. The question is whether the true pressure law, after
incompressibility and same-field participation are enforced, throws the packet
off that frictionless direction.

The c_0 question in this coordinate is therefore:

```math
\text{Does every lawful same-field Vieillefosse-tangent participant pay a
uniform viscous participation cost per unit self-stretching?}
\tag{VPL.1}
```

This is not a pointwise eigenframe estimate. It is a same-field pressure-
lawfulness and participation-gluing estimate.

## 2. Sequence recorded from the conversation

The starting wall was the exact self-similar cone. A uniform
\(\varepsilon>0\) over all admissible objects is the same as \(c_0>0\), hence
the full Navier-Stokes regularity wall. Scale-covariant quantities are flat on
the exact self-similar state, and viscosity is marginal there. The missing
theorem cannot be obtained by re-reading the same scale-covariant functional.

The first speculative branch was "self-similar, self-measuring,
self-analytic." The useful part of that branch was not a new completed proof;
it was the recognition that the missing object must distinguish lawful
same-field self-measurement from a merely scale-repeated pattern.

The fractal branch sharpened that into a log-scale participation question.
Fractal repetition by itself does not pay or save anything: a self-similar
Calderon-Zygmund pressure law is scale-invariant rung by rung. The only possible
leak is a log endpoint where the tower is nearly constant across many scales
and the cost escapes to the ends.

The participation-law correction then changed the object. A window is not an
observer cutoff. The boundary of the participant is where the selected same
fluid fades into, borrows from, or loses coherence with the parent field.
Pressure participation is therefore a commutator at the participation boundary,
not a positive bulk payer.

The later correction from the supplied Opus text was sharper: at the perfect
self-similar scale, pressure is skew/workless in the relevant pairing. It is
the constraint that decides lawfulness. The numerator is carried by viscosity
and drift after lawfulness is imposed. NRS/Tsai-type exact self-similar
exclusion kills finite-energy exact self-similar profiles; it does not by
itself kill the marginal minimizing sequence whose local core is a
restricted-Euler/Vieillefosse self-stretcher.

The live task became:

```math
\text{Realize the Vieillefosse strain as a lawful incompressible tower,
compute the true deviatoric pressure response, and test its transverse
component.}
\tag{VPL.2}
```

## 3. Pressure cancellation and participation commutator

Let

```math
S=\frac12(\nabla u+\nabla u^T),
\qquad
\nabla\cdot u=0.
\tag{VPL.3}
```

Since \(\nabla^2q\) is symmetric,

```math
S:\nabla^2q=\partial_i u_j\,\partial_{ij}q.
\tag{VPL.4}
```

Globally, with no participation boundary,

```math
\int S:\nabla^2q\,dx
=
\int \partial_i u_j\,\partial_{ij}q\,dx
=
-\int u_j\,\partial_j\Delta q\,dx
=
\int (\partial_j u_j)\Delta q\,dx
=0.
\tag{VPL.5}
```

So pressure cannot be treated as an extensive positive numerator in the global
same-field pairing.

With a participation weight \(\chi\), the pressure term becomes the boundary
commutator

```math
\begin{aligned}
\int \chi\,S:\nabla^2q\,dx
&=
\int \chi\,\partial_i u_j\,\partial_{ij}q\,dx\\
&=
\int u_j\big((\partial_j\chi)\Delta q-(\partial_i\chi)\partial_{ij}q\big)\,dx\\
&=
\int u\cdot(\Delta q\,I-\nabla^2q)\nabla\chi\,dx .
\end{aligned}
\tag{VPL.6}
```

Under the strict participation law, \(\nabla\chi\) is not an arbitrary cutoff
surface. It is the same-field participation gradient. It records where the
selected packet is attached to the parent incompressible field.

This is the first precise place where a positive c_0 bite could live:

```math
\text{the true pressure law must force the participation boundary to create
viscous cost transverse to the frictionless self-stretching direction.}
\tag{VPL.7}
```

## 4. Fractal/log-scale endpoint

For a rung scale \(r_n=2^{-n}\), write a scale-native participant as

```math
u_n(x)=a_n r_n^{-1}U(x/r_n),
\qquad
q_n(x)=a_n^2 r_n^{-2}Q(x/r_n),
\qquad
\chi_n(x)=\phi(x/r_n).
\tag{VPL.8}
```

Then

```math
\nabla\chi_n(x)=r_n^{-1}\nabla\phi(x/r_n),
\qquad
\nabla^2 q_n(x)=a_n^2r_n^{-4}\nabla^2Q(x/r_n).
\tag{VPL.9}
```

The pressure-participation commutator has the same scaling as the cubic
self-stretching service:

```math
\mathcal C_n
=
a_n^3r_n^{-3}
\left[
\int U\cdot(\Delta Q\,I-\nabla^2Q)\nabla\phi\,dy
\right],
\tag{VPL.10}
```

while

```math
\mathcal S_n
=
a_n^3r_n^{-3}
\int \phi\,[-\operatorname{tr}(S_U^3)]_+\,dy.
\tag{VPL.11}
```

Pure scale repetition therefore gives no automatic small factor. The leak, if
it exists, is not "fractal geometry pays less." The leak is a log-scale
endpoint: a long tower whose middle rungs look almost identical, with the cost
escaping to the entrance and exit ends.

The log-scale model is a mass-gap question. If the log-scale participation
operator has only derivative energy in scale, a nearly constant mode over
length \(L\) costs like an endpoint correction and the \(2^{-L}/L\) object
survives. If the operator has positive onsite mass at the self-similar mode,
the middle rungs pay uniformly and \(c_0\) gets a floor.

## 5. Opus correction: pressure as constraint

The corrected \(\theta=0\) reading is:

```math
\varepsilon(\theta=0)
=
\inf_{\text{lawful towers}}
\frac{\mathcal V_\chi(u)}{\mathcal S_\chi(u)}.
\tag{VPL.12}
```

Here \(\mathcal V_\chi\) is the viscous/drift participation cost after
lawfulness is imposed, and \(\mathcal S_\chi\) is the positive self-stretching
service. Pressure does not enter as a bulk positive numerator. Pressure enters
by deciding which towers are lawful and by coupling the local strain core to
the nonlocal incompressible parent field.

The missing theorem is therefore not "pressure Hessian is positive." The
missing theorem is:

```math
\text{a zero-viscous-cost Vieillefosse self-stretcher cannot be completed into
a lawful same-field participation tower.}
\tag{VPL.13}
```

Equivalently, the true nonlocal pressure response must satisfy an
infinitesimal genuine-coupling condition against the frictionless
Vieillefosse direction.

## 6. Concrete affine-core computation

Take the biaxial Vieillefosse strain

```math
S=\lambda D,
\qquad
D=\operatorname{diag}(1,1,-2),
\tag{VPL.14}
```

and the affine incompressible velocity field

```math
u(x)=Sx.
\tag{VPL.15}
```

Then \(\nabla\cdot u=\operatorname{tr}S=0\), \(\omega=0\), and
\(\Delta u=0\). The pressure equation is

```math
-\Delta p=\partial_i u_j\,\partial_j u_i=\operatorname{tr}(S^2)=6\lambda^2.
\tag{VPL.16}
```

One may choose

```math
p(x)=-\lambda^2|x|^2,
\qquad
\nabla^2p=-2\lambda^2I.
\tag{VPL.17}
```

Thus

```math
\operatorname{dev}\nabla^2p=0.
\tag{VPL.18}
```

For an affine time-dependent ansatz \(u(x,t)=S(t)x\), the Navier-Stokes
equation reduces to

```math
\dot Sx+S^2x+\nabla p=0.
\tag{VPL.19}
```

With (VPL.17),

```math
\dot S=-S^2+2\lambda^2I=\lambda S,
\qquad
\dot\lambda=\lambda^2.
\tag{VPL.20}
```

So the exact affine core reproduces the frictionless Vieillefosse
self-stretching and the true pressure response is purely isotropic. There is
no deviatoric pressure kick and no transverse component at the affine core.

This closes the local check in the negative direction:

```math
\text{the c_0 floor cannot come from the affine pointwise pressure response.}
\tag{VPL.21}
```

## 7. Where the remaining calculation lives

The affine field is not a finite-energy same-field participant. A lawful
participant must be attached to the parent field through a non-affine gluing
layer. That is where incompressibility, pressure, and viscosity can see the
object.

The next calculation is to choose a same-field realization, for example

```math
u=\mathbb P(\chi Sx)
\tag{VPL.22}
```

or an equivalent divergence-corrected participant with the same affine core,
and compute the true pressure

```math
-\Delta p=\partial_i u_j\,\partial_j u_i.
\tag{VPL.23}
```

Let \(P_\parallel\) be the projection in traceless symmetric strain space onto
the Vieillefosse tangent \(\operatorname{span}\{D\}\), and let

```math
P_\perp=I-P_\parallel.
\tag{VPL.24}
```

The infinitesimal SK/genuine-coupling test is whether the non-affine pressure
response has a uniform transverse component:

```math
P_\perp\operatorname{dev}\nabla^2p[u]\neq 0
\quad\text{with a lower bound tied to the selected service.}
\tag{VPL.25}
```

The target estimate would have the form

```math
\mathcal V_\chi(u)
\ge
c\,\mathcal S_\chi(u)
\tag{VPL.26}
```

for all lawful Vieillefosse-tangent participants in this class, with
\(c>0\) independent of tower depth. Such a bound would supply the local
positive mass needed at the \(\theta=0\) mode and would block the
\(2^{-L}/L\) log endpoint in this coordinate.

The current note does not prove (VPL.26). It identifies the exact place where
the proof must bite: the finite-energy participation/gluing layer, not the
affine core and not a positive bulk pressure numerator.

## 8. Current conclusion

The affine Vieillefosse core is a lawful incompressible local jet with zero
deviatoric pressure response. That means the pressure kick, if it exists, is
created only when the local self-stretcher is forced to become a same-field
finite-energy participant.

So the inquiry is now sharply reduced:

```math
\text{Does the non-affine participation layer force a transverse pressure
response that creates uniform viscous participation cost?}
\tag{VPL.27}
```

A positive answer is the infinitesimal SK mass needed for \(c_0\). A negative
answer leaves the log endpoint alive.

## 9. First gluing-layer calculation

The affine core has no transverse pressure response. The first place to look is
therefore the simplest finite-energy collar:

```math
v(x)=\chi(r)Sx,
\qquad
S=\lambda D,
\qquad
D=\operatorname{diag}(1,1,-2),
\qquad
r=|x|.
\tag{VPL.28}
```

This raw field is not yet divergence-free unless \(\chi\) is constant, but it
shows the unavoidable source term created by finite-energy participation. Write

```math
A_{ji}=\partial_i v_j
=
\chi S_{ji}+(Sx)_j\partial_i\chi .
\tag{VPL.29}
```

The pressure source before the Leray correction is

```math
f_{\rm raw}
=
\partial_i v_j\,\partial_j v_i
=
\operatorname{tr}(A^2).
\tag{VPL.30}
```

Since \(S\) is symmetric,

```math
\operatorname{tr}(A^2)
=
\chi^2\operatorname{tr}(S^2)
+2\chi\,\nabla\chi\cdot S^2x
+(\nabla\chi\cdot Sx)^2.
\tag{VPL.31}
```

For a radial collar, let \(\mu=x_3/r\). Then

```math
\nabla\chi\cdot Sx
=
\lambda r\chi'(1-3\mu^2),
\qquad
\nabla\chi\cdot S^2x
=
\lambda^2 r\chi'(1+3\mu^2),
\tag{VPL.32}
```

and

```math
f_{\rm raw}
=
\lambda^2\left[
6\chi^2
+2\chi r\chi'(1+3\mu^2)
+r^2(\chi')^2(1-3\mu^2)^2
\right].
\tag{VPL.33}
```

The affine interior is the first term \(6\lambda^2\), which gives only
isotropic pressure. The collar terms are different. Using Legendre polynomials,

```math
1+3\mu^2=2+2P_2(\mu),
\tag{VPL.34}
```

and

```math
(1-3\mu^2)^2
=
\frac45+\frac87P_2(\mu)+\frac{72}{35}P_4(\mu).
\tag{VPL.35}
```

Therefore the collar contains the forced fourth angular mode

```math
f_{\rm raw}^{(4)}
=
\lambda^2 r^2(\chi')^2\frac{72}{35}P_4(\mu).
\tag{VPL.36}
```

This mode is zero exactly when there is no collar. A finite-energy participant
must have a collar or an equivalent non-affine gluing correction, so the affine
zero-pressure-kick calculation cannot persist unchanged through participation.

After pressure is recovered from

```math
-\Delta p=f,
\tag{VPL.37}
```

the \(P_4\) source produces a non-isotropic pressure component. Its Hessian is
deviatoric and cannot be everywhere parallel to the affine Vieillefosse tensor
\(D\). Thus the collar creates a transverse pressure channel:

```math
P_\perp\operatorname{dev}\nabla^2p_{\rm collar}\neq0
\tag{VPL.38}
```

for any fixed nontrivial radial collar before possible cancellations from the
full Leray projection and tower optimization are accounted for.

This is the first concrete evidence for the expected SK bite. It is not yet the
uniform \(c_0\) theorem. The remaining proof burden is to show that the
divergence-free correction and the full same-field tower cannot cancel or
delaminate this transverse \(P_4\) pressure channel so that

```math
\mathcal V_\chi(u_L)\to0,
\qquad
\mathcal S_\chi(u_L)=1
\tag{VPL.39}
```

along a \(2^{-L}/L\) endpoint sequence.

## 10. Leray-corrected collar: the \(P_4\)-free condition

The previous calculation used the raw collar. The incompressible correction can
be kept explicit. Let

```math
Q=x\cdot Dx,
\qquad
D=\operatorname{diag}(1,1,-2).
\tag{VPL.40}
```

Every axisymmetric no-swirl divergence-free \(l=2\) gluing of the affine
Vieillefosse core can be written in the form

```math
u=A(r)Dx+B(r)Qx .
\tag{VPL.41}
```

For the actual Leray projection of \(\chi(r)Dx\), this comes from

```math
u=\chi(r)Dx-\nabla(h(r)P_2(\mu)),
\tag{VPL.42}
```

with

```math
A=\chi+\frac{h}{r^2},
\qquad
B=\frac{rh'-2h}{2r^4}.
\tag{VPL.43}
```

The divergence-free condition is

```math
\frac{A'}{r}+rB'+5B=0.
\tag{VPL.44}
```

Now compute the pressure source

```math
f=\partial_i u_j\,\partial_j u_i.
\tag{VPL.45}
```

The \(P_4\) part has the form

```math
f^{(4)}
=
\frac{72}{35}r^4 C_4(r)P_4(\mu),
\tag{VPL.46}
```

where direct differentiation of (VPL.41) gives

```math
C_4
=
\left(\frac{A'}{r}+rB'\right)^2
+11B^2
+\frac{2AB'}{r}
+\frac{2BA'}{r}
+6rBB'.
\tag{VPL.47}
```

Use the divergence-free relation and introduce the dimensionless variables

```math
\rho=\frac{r^2B}{A},
\qquad
\tau=\frac{rA'}{A}.
\tag{VPL.48}
```

Then

```math
C_4
=
\frac{A^2}{r^4}
\left[
6\rho^2-10\rho-(4\rho+2)\tau
\right].
\tag{VPL.49}
```

The condition that the incompressible collar have no \(P_4\) pressure source is
therefore

```math
\tau=\frac{\rho(3\rho-5)}{2\rho+1}.
\tag{VPL.50}
```

The divergence-free relation in the same variables is

```math
(1+\rho)\tau+r\rho'+3\rho=0.
\tag{VPL.51}
```

Combining (VPL.50) and (VPL.51), a \(P_4\)-free incompressible collar must obey

```math
r\rho'
=
-\frac{\rho(3\rho^2+4\rho-2)}{2\rho+1}.
\tag{VPL.52}
```

At the affine Vieillefosse core,

```math
\rho=0,
\qquad
\tau=0.
\tag{VPL.53}
```

Near \(\rho=0\), the right side of (VPL.52) is smooth. Hence the solution that
agrees with the affine core on any interior interval is forced to remain

```math
\rho\equiv0,
\qquad
\tau\equiv0.
\tag{VPL.54}
```

That means \(B=0\) and \(A\) is constant: the field never enters a finite-energy
collar. Therefore an incompressible same-symmetry gluing layer that actually
departs from the affine core cannot keep the \(P_4\) pressure source identically
zero.

This improves (VPL.38): the transverse \(P_4\) channel is not just an artifact
of the raw cutoff. It survives the Leray-corrected axisymmetric gluing unless
the gluing is trivial.

This still stops short of \(c_0>0\). It proves a nonzero transverse channel for
the first incompressible collar model. The full \(c_0\) floor still requires a
quantitative lower bound that survives tower optimization, non-axisymmetric
escape, and log-endpoint delamination.

## 11. Physical upgrade path

The collar calculation should be read physically as a stress-transfer
calculation. The affine Vieillefosse core is an infinite frictionless
self-stretcher. To make it a finite-energy same-fluid participant, the parent
field has to turn that affine stretcher off. That turn-off is the gluing layer.

The gluing layer cannot be physically neutral. The core is an \(l=2\)
quadrupolar strain. A finite-energy turn-off of an \(l=2\) stretcher forces the
fluid to bend the quadrupole through the collar. Quadrupole times quadrupole
contains

```math
2\otimes2=0\oplus2\oplus4.
\tag{VPL.55}
```

The \(l=0\) part is isotropic pressure. The \(l=2\) part can stay aligned with
the affine Vieillefosse direction. The \(l=4\) part is the transverse
four-lobed pressure stress. In the radial Leray-corrected collar, trying to
remove that \(l=4\) part forced the collar to be trivial.

This gives the physical upgrade principle:

```math
\text{a lawful finite-energy participation layer cannot turn off a
Vieillefosse stretcher without producing transverse pressure stress, unless
the attempted cancellation itself carries comparable viscous cost.}
\tag{VPL.56}
```

So the route from model-class coercivity to \(c_0\) is not to add more local
strain algebra. It is to eliminate the physical escape modes.

First, eliminate non-axisymmetric hiding. A non-axisymmetric gluing may rotate
or spread the \(l=4\) stress among the \(m=-4,\ldots,4\) components, but the
physical quantity is the whole \(l=4\) multipole mass:

```math
\|\Pi_{4}(\partial_i u_j\partial_j u_i)\|.
\tag{VPL.57}
```

The target statement is that if this \(l=4\) mass is made small while the
Vieillefosse service is fixed, then the compensating modes must have comparable
gradient energy. Physically: hiding the four-lobed pressure by adding
counter-shear is itself a viscous payment.

Second, eliminate pressure cancellation. Pressure is elliptic, so the
\(l=4\) source cannot disappear into a gauge or isotropic pressure. It can only
be cancelled by another \(l=4\) source of opposite sign. The same-field law must
charge that opposite source as participation cost, because it is another
non-affine deformation of the same packet or parent collar.

Third, eliminate log-endpoint delamination. A long tower can defeat a derivative
energy in log scale by putting all variation at the two ends. The participation
law has to supply a mass measure, not merely a derivative measure:

```math
d\mu_{\rm transverse}
\ge
c\,d\mu_{\rm service}
\tag{VPL.58}
```

on the active same-fluid participation rungs. In physical words: every rung
that claims Vieillefosse self-stretching service also has to be attached to the
parent field as a lawful participant, and that attachment has to create its own
transverse pressure stress. If the only stress is at the entrance and exit of a
long tower, the middle rungs were not individually lawful same-fluid
participants in the participation-law sense.

The upgraded theorem would therefore be an alternative:

```math
\|\Pi_4 f[u]\|_{\rm press}
+\mathcal V_{\rm cancel}(u)
\ge
c\,\mathcal S_{\rm Vieillefosse}(u),
\tag{VPL.59}
```

where \(f[u]=\partial_i u_j\partial_j u_i\), \(\Pi_4\) is the transverse
quadrupole-square pressure channel, and \(\mathcal V_{\rm cancel}\) charges any
same-field modes used to cancel that channel. This is the physical content of
the desired SK mass.

In this reading, \(c_0>0\) comes from a no-free-collar law: a same-fluid packet
may stretch like Vieillefosse only if the parent field supplies a gluing layer;
the gluing layer either emits transverse pressure stress or spends comparable
viscous deformation trying to hide it. The full theorem is the uniform version
of that sentence over all lawful participation towers.

## 12. How the three escape routes die

The proof should be run as a compactness contradiction. Normalize a lawful
participation sequence by

```math
\mathcal S_{\rm Vieillefosse}(u_n)=1,
\tag{VPL.60}
```

and suppose the transverse/cancellation bill tends to zero. The affine core
calculation says the limiting local core can only be the frictionless
Vieillefosse stretcher. The gluing calculation says any finite-energy attachment
of that core creates an \(l=4\) pressure channel unless another same-field mode
cancels it. The three escapes are exactly the three possible ways to claim that
this cancellation is free.

### 12.1 Non-axisymmetric hiding

Let \(G=\nabla u\) in one active collar and split it as

```math
G=G_0+E,
\tag{VPL.61}
```

where \(G_0\) is the axisymmetric Leray-corrected Vieillefosse gluing component
and \(E\) contains all non-axisymmetric or non-model correction modes. The
pressure source is

```math
f[u]=\operatorname{tr}(G^2)
=
\operatorname{tr}(G_0^2)
+2\operatorname{tr}(G_0E)
+\operatorname{tr}(E^2).
\tag{VPL.62}
```

Project to the full \(l=4\) spherical-harmonic subspace:

```math
\Pi_4 f[u]
=
F_{4,0}
+\Pi_4\big(2\operatorname{tr}(G_0E)+\operatorname{tr}(E^2)\big).
\tag{VPL.63}
```

The model calculation gives \(F_{4,0}\neq0\) for every nontrivial collar. If
non-axisymmetric hiding makes \(\Pi_4 f[u]\) small, then the correction term in
(VPL.63) must be comparable to \(F_{4,0}\). This gives the dichotomy

```math
\|\Pi_4 f[u]\|
+\|E\|_{\rm glue}^2
\ge
c\,\|F_{4,0}\|.
\tag{VPL.64}
```

For small \(E\), (VPL.64) follows by the boundedness of the bilinear map
\(E\mapsto\Pi_4\operatorname{tr}(G_0E)\): cancelling a fixed \(F_{4,0}\) forces
\(\|E\|\gtrsim \|F_{4,0}\|/\|G_0\|\). For large \(E\), the cost term
\(\|E\|_{\rm glue}^2\) already pays. Physically, spreading the four-lobed stress
among non-axisymmetric \(m\)-modes is still a deformation of the same collar,
and angular spectral gap on \(S^2\) charges that deformation.

So non-axisymmetric hiding dies if (VPL.64) is installed in the lawful
participation norm.

### 12.2 Pressure cancellation

Pressure cannot cancel an \(l=4\) source by isotropic gauge. On each nonzero
spherical harmonic,

```math
\nabla^2(-\Delta)^{-1}
\tag{VPL.65}
```

is an elliptic order-zero operator. Thus, on the \(l=4\) channel,

```math
\|\operatorname{dev}\nabla^2p_4\|
\simeq
\|\Pi_4 f[u]\|.
\tag{VPL.66}
```

The only way to erase the transverse pressure is to make the source
\(\Pi_4 f[u]\) small before pressure is solved. But by (VPL.63), that requires
another same-field \(l=4\) source of opposite sign. Call the modes creating that
opposite sign \(E_{\rm cancel}\). Then

```math
\|\operatorname{dev}\nabla^2p_4\|
+\|E_{\rm cancel}\|_{\rm glue}^2
\ge
c\,\|F_{4,0}\|.
\tag{VPL.67}
```

Physically, cancellation is not erasure. It is another deformation of the same
packet or parent collar, and that deformation has to be counted as viscous
participation cost. Pressure cancellation dies when the bill includes the modes
that manufacture the opposite \(l=4\) source.

### 12.3 Log-endpoint delamination

The log-endpoint escape tries to pay only at the entrance and exit of a long
tower. The way to kill it is to make the transverse bill an onsite measure on
active same-fluid participation rungs.

For each log-scale rung \(I\), the local no-free-collar statement must be

```math
\mu_T(I)
:=
\int_I
\big(
\|\Pi_4 f[u]\|_{\rm press}
+\|E_{\rm cancel}\|_{\rm glue}^2
\big)
\ge
c
\int_I d\mu_S,
\tag{VPL.68}
```

where \(d\mu_S\) is the Vieillefosse self-stretching service on that same
participant. This is stronger than a derivative-in-log-scale estimate. It says
the cost is attached to each active lawful rung, not to variation between
rungs.

Then a \(2^{-L}/L\) endpoint sequence cannot survive. If

```math
\mu_S([0,L])=1,
\qquad
\mu_T([0,L])\to0,
\tag{VPL.69}
```

then (VPL.68) gives

```math
0\leftarrow\mu_T([0,L])
\ge
c\,\mu_S([0,L])
=c,
\tag{VPL.70}
```

a contradiction.

Physically, the middle rungs cannot say "we are lawful same-fluid
Vieillefosse participants" while outsourcing all attachment stress to the two
ends of the tower. A lawful participant has to be attached where it participates.
If the collar stress is absent in the middle, the middle is not a lawful
same-field participant in the strict participation-law sense.

### 12.4 What remains after this reduction

The three escapes are killed by one local-to-measure theorem:

```math
\boxed{
\|\Pi_4 f[u]\|_{\rm press}
+\mathcal V_{\rm cancel}(u)
\ge
c\,\mathcal S_{\rm Vieillefosse}(u)
}
\tag{VPL.71}
```

on every active lawful participation packet, with \(c>0\) independent of scale,
orientation, and tower depth.

The model collar proves the nonzero channel in one symmetry class. The upgrade
requires proving that every mode used to hide or cancel that channel is itself a
same-field gluing deformation charged by \(\mathcal V_{\rm cancel}\), and that
the resulting measure is onsite on active rungs. That is the exact mathematical
form of the physical no-free-collar law.

## 13. All-tower no-free-collar proof attempt

The all-tower theorem has to be proved as measure domination. A global tower
estimate is too weak, because the \(2^{-L}/L\) endpoint tries to spread service
through the middle of a long tower while putting cost at the two ends.

Define the service measure and transverse bill measure on the same
participation space:

```math
d\nu
=
d\mu_{\rm service}
=
d\mu_{\rm Vieillefosse},
\tag{VPL.72}
```

and

```math
d\mu
=
d\mu_{\rm transverse}
+d\mu_{\rm cancel}
=
\big(
\|\Pi_4 f[u]\|_{\rm press}
+\mathcal V_{\rm cancel}(u)
\big).
\tag{VPL.73}
```

The desired no-free-collar inequality for all lawful participation towers is
equivalent to

```math
\nu\le C\mu .
\tag{VPL.74}
```

If (VPL.74) holds, then for any normalized tower

```math
\nu(\mathcal T)=1
\tag{VPL.75}
```

one gets

```math
\mu(\mathcal T)\ge C^{-1}.
\tag{VPL.76}
```

So \(c_0\ge C^{-1}>0\) in this coordinate.

### 13.1 Contradiction setup

Assume (VPL.74) fails. Then there is a lawful participation sequence with

```math
\nu_n(\mathcal T_n)=1,
\qquad
\mu_n(\mathcal T_n)\to0.
\tag{VPL.77}
```

By the failure of domination, choose a density point in participation
space where service has positive density and bill has zero relative density:

```math
\frac{\mu_n(Q_{\rho_n})}{\nu_n(Q_{\rho_n})}\to0,
\qquad
\nu_n(Q_{\rho_n})>0.
\tag{VPL.78}
```

Here \(Q_{\rho_n}\) is a same-field parabolic/log-scale participation cylinder
following the packet. Rescale, rotate into the local Vieillefosse eigenframe,
and normalize

```math
\nu_n(Q_1)=1.
\tag{VPL.79}
```

The rescaled objects still satisfy the same incompressible Navier-Stokes
lawfulness constraints, because the pressure equation and Leray projection are
scale invariant in this critical local readout. The bill tends to zero:

```math
\mu_n(Q_1)\to0.
\tag{VPL.80}
```

### 13.2 Tangent compactness

The required compactness statement is:

```math
\text{From any lawful normalized sequence satisfying (VPL.79)--(VPL.80), one
can extract a same-field tangent packet } u_\infty
\text{ with }
\nu_\infty(Q_1)=1
\text{ and }
\mu_\infty(Q_1)=0.
\tag{VPL.81}
```

This is the first hard theorem in the all-tower upgrade. It has to prevent the
normalization from disappearing into a Young-measure or log-endpoint defect.
Physically, it says: if the tower claims unit same-fluid Vieillefosse service
at a point, then after zooming in there is an actual tangent packet carrying
that service, not just bookkeeping mass.

### 13.3 Zero-bill tangent rigidity

The second hard theorem is the zero-bill rigidity statement:

```math
\mu_\infty(Q_1)=0
\quad\Longrightarrow\quad
u_\infty
\text{ is a pure affine Vieillefosse core on every active same-field collar.}
\tag{VPL.82}
```

The collar computation supplies the model mechanism. If a finite-energy gluing
layer is nontrivial, it produces an \(l=4\) transverse pressure channel. If an
extra mode cancels that channel, the extra mode is a charged gluing deformation.
So zero bill rules out both nontrivial transverse pressure and nontrivial
cancelling deformation.

Thus the only remaining zero-bill tangent is

```math
u_\infty(x)=\lambda D x
\tag{VPL.83}
```

up to rotation and scale on the active packet.

### 13.4 Finite-energy/lawfulness contradiction

A pure affine Vieillefosse core has unit service, but it has no finite-energy
same-field participation boundary. It is an infinite local jet, not a lawful
finite-energy packet attached to a parent field. A lawful participant with
\(\nu_\infty(Q_1)=1\) must have a nontrivial attachment layer. By
(VPL.82), zero bill forbids that attachment layer.

So the tangent object has to satisfy two incompatible statements:

```math
\nu_\infty(Q_1)=1
\tag{VPL.84}
```

and

```math
u_\infty
\text{ has no lawful finite-energy participation collar.}
\tag{VPL.85}
```

That contradiction proves (VPL.74).

### 13.5 Where the proof is still open

The proof reduces the all-tower no-free-collar inequality to two precise
theorems:

```math
\text{Tangent compactness: unit service and vanishing bill produce a lawful
zero-bill tangent packet.}
\tag{VPL.86}
```

and

```math
\text{Zero-bill tangent rigidity: every lawful zero-bill tangent packet is a
pure affine Vieillefosse jet, hence not a finite-energy participant.}
\tag{VPL.87}
```

The collar calculation is evidence for (VPL.87) and proves it in the
same-symmetry model class. The full \(c_0\) theorem requires (VPL.86) and
(VPL.87) for arbitrary lawful participation towers, including non-axisymmetric
mode mixing and log-endpoint Young-measure defects.

## 14. Handling the two load-bearing lines

The first correction is that the domination measure cannot live on raw
space-time points. If it did, a blow-up could sample the interior affine core
while the participation collar sits outside the zoom. The participation-law
measure space has to be packet/rung based:

```math
\mathcal A
=
\{\text{lawful same-field participation atoms: core + collar + parent
attachment at one scale}\}.
\tag{VPL.88}
```

On each atom \(a\in\mathcal A\), rescale to a fixed reference packet
\(\widehat a\) containing the core and the whole gluing layer. The service and
bill are then measures on atoms:

```math
\nu(a)=\mathcal S_{\rm Vieillefosse}(\widehat u_a),
\qquad
\mu(a)=\mathcal V_{\rm transverse/cancel}(\widehat u_a).
\tag{VPL.89}
```

With this choice, a density-point blow-up cannot leave the collar behind. Unit
service means a whole lawful participant is present.

### 14.1 Tangent compactness

The tangent compactness line is handled by adding the correct quotient
compactness to the bill. Let \(\mathfrak A\) be the finite-dimensional affine
Vieillefosse manifold

```math
\mathfrak A
=
\{
x\mapsto \lambda RDR^T x + \Omega x + b
:
\lambda\in\mathbb R,\ R\in SO(3),\ \Omega^T=-\Omega,\ b\in\mathbb R^3
\}.
\tag{VPL.90}
```

Translations and rotations are harmless symmetries; the service reads only the
symmetric Vieillefosse part. Define the non-affine gluing distance on the
reference packet by

```math
\mathcal G(u)
:=
\inf_{a\in\mathfrak A}
\|\nabla u-\nabla a\|_{L^2({\rm collar})}^2
+\|\nabla_{\omega}(\nabla u-\nabla a)\|_{L^2({\rm packet})}^2
+\|\partial_r(\nabla u-\nabla a)\|_{H^{-1}({\rm packet})}^2 .
\tag{VPL.91}
```

This is not a new external meter. Physically it is the viscous cost of
departing from one affine self-stretcher while attaching the selected packet to
the parent field. The transverse bill must include this quantity:

```math
\mu(a)
\gtrsim
\|\Pi_4 f[\widehat u_a]\|_{\rm press}
+\mathcal G(\widehat u_a).
\tag{VPL.92}
```

Now take a normalized sequence with

```math
\nu(a_n)=1,
\qquad
\mu(a_n)\to0.
\tag{VPL.93}
```

By (VPL.92),

```math
\mathcal G(\widehat u_{a_n})\to0.
\tag{VPL.94}
```

Choose \(a_n^*\in\mathfrak A\) realizing the affine quotient up to \(o(1)\).
Korn-Poincare on the fixed reference packet gives compactness modulo
\(\mathfrak A\):

```math
\widehat u_{a_n}-a_n^*
\to0
\quad\text{strongly in the packet topology needed to pass }f[u]
\text{ and }\mathcal S.
\tag{VPL.95}
```

The normalization \(\nu(a_n)=1\) fixes the affine amplitude, so after a
subsequence

```math
a_n^*\to a_\infty(x)=\lambda RDR^Tx+\Omega x+b,
\qquad
\lambda\neq0.
\tag{VPL.96}
```

Thus

```math
\widehat u_{a_n}\to a_\infty
\tag{VPL.97}
```

strongly enough that the service does not vanish into a Young measure:

```math
\nu_\infty=1,
\qquad
\mu_\infty=0.
\tag{VPL.98}
```

That handles tangent compactness. The decisive point is that vanishing bill
forces strong convergence modulo the affine Vieillefosse manifold; it does not
allow oscillation or log-scale bookkeeping mass to carry the service.

### 14.2 Zero-bill tangent rigidity

The zero-bill tangent line is then an equality case. If

```math
\mu_\infty=0,
\tag{VPL.99}
```

then by (VPL.92)

```math
\mathcal G(u_\infty)=0,
\qquad
\Pi_4 f[u_\infty]=0.
\tag{VPL.100}
```

The equality case of Korn-Poincare gives

```math
u_\infty\in\mathfrak A
\tag{VPL.101}
```

on the whole reference packet. The service normalization removes the trivial
case and gives a nonzero Vieillefosse strain:

```math
u_\infty(x)=\lambda RDR^Tx+\Omega x+b,
\qquad
\lambda\neq0.
\tag{VPL.102}
```

Now use the participation boundary. A lawful same-field atom is not just an
interior jet; it includes the attachment to the parent field. On the outer
participation boundary, the selected packet must either match the parent
admissibly or vanish relative to the parent readout. In either case the
nonzero affine field cannot satisfy the boundary condition without a nontrivial
collar:

```math
\lambda RDR^Tx+\Omega x+b
\text{ cannot be both nonzero affine in the core and zero-cost attached at the
outer boundary.}
\tag{VPL.103}
```

Therefore a zero-bill lawful atom has only the trivial affine amplitude:

```math
\lambda=0.
\tag{VPL.104}
```

But then

```math
\nu_\infty=0,
\tag{VPL.105}
```

contradicting (VPL.98). This proves the zero-bill rigidity once the packet/rung
lawfulness boundary and the gluing distance (VPL.91) are installed as part of
the strict participation law.

### 14.3 What the handled proof gives

With (VPL.88)--(VPL.92), the two load-bearing lines become standard:

```math
\text{vanishing bill}
\Rightarrow
\text{strong compactness modulo }\mathfrak A
\Rightarrow
\text{zero-bill tangent}
\Rightarrow
\text{nonzero affine lawful atom}
\Rightarrow
\text{boundary contradiction.}
\tag{VPL.106}
```

So the all-tower inequality follows:

```math
\nu\le C\mu,
\qquad
c_0\ge C^{-1}>0.
\tag{VPL.107}
```

The remaining non-formalized point is no longer "find the pressure effect." The
pressure effect is the \(l=4\) channel. The exact remaining formal burden is to
show that (VPL.91) is a legitimate participation-law bill: every non-affine
mode used to attach, hide, or cancel the Vieillefosse core is charged by the
same-field viscous participation cost already allowed in \(c_0\).

## 15. Legitimacy of the gluing distance as viscous participation bill

The gluing distance is legitimate only if it is dominated by the same localized
viscous participation form already present in the Navier-Stokes packet. This is
proved relative to the affine Vieillefosse nullspace.

Fix one lawful participation atom on a normalized reference packet \(P\), with
collar \(C\subset P\). For each affine Vieillefosse jet \(a\in\mathfrak A\),
write

```math
w=u-a,
\qquad
Z=\nabla w=\nabla u-\nabla a,
\qquad
E=S(u)-S(a)=\operatorname{sym}Z.
\tag{VPL.108}
```

Since \(a\) is affine,

```math
\Delta a=0,
\qquad
\nabla S(a)=0.
\tag{VPL.109}
```

So viscosity sees only the non-affine remainder \(w\). The relative localized
viscous strain form is

```math
\mathcal V_{\rm rel}(u,a)
:=
\nu
\left[
\int_P \phi\,|\nabla E|^2
+\int_C |E|^2
\right],
\tag{VPL.110}
```

where \(\phi\) is the same participation weight on the packet and the collar
term is the participation-boundary flux written as a positive trace/collar
quantity on the normalized atom. In physical terms, (VPL.110) is the viscous
cost of changing the strain away from one affine self-stretcher while attaching
the selected packet to its parent field.

This is not an added detector. It comes from the localized strain equation:

```math
\nu\int_P \phi|\nabla E|^2
=
-\nu\int_P \phi\,(\Delta S(u)):E
-\nu\int_P \nabla\phi\cdot\nabla E:E .
\tag{VPL.111}
```

The first term is the bulk viscous strain work. The second term is exactly the
participation-boundary flux. Strict participation law cannot discard that flux,
because it is where the selected packet is attached to the parent field. Moving
the flux into the collar term gives (VPL.110).

Now apply Korn-Hodge-Poincare on the fixed packet, modulo the affine nullspace
\(\mathfrak A\). Since \(u\) is incompressible, and translations, rigid
rotations, and affine Vieillefosse cores have been quotiented out,

```math
\inf_{a\in\mathfrak A}
\left[
\|Z\|_{L^2(C)}^2
+\|\nabla_\omega Z\|_{L^2(P)}^2
+\|\partial_r Z\|_{H^{-1}(P)}^2
\right]
\le
C
\inf_{a\in\mathfrak A}
\left[
\int_P\phi|\nabla E|^2
+\int_C |E|^2
\right].
\tag{VPL.112}
```

The left side is \(\mathcal G(u)\). Therefore

```math
\mathcal G(u)
\le
C\nu^{-1}
\inf_{a\in\mathfrak A}\mathcal V_{\rm rel}(u,a).
\tag{VPL.113}
```

This proves that \(\mathcal G\) is a legitimate viscous participation bill,
provided the strict participation bill includes the packet's relative viscous
strain form and its collar flux.

The hide/cancel modes are charged because they are exactly modes of \(w\)
outside the affine nullspace. A rigid translation or rigid rotation cannot
produce an \(l=4\) pressure source. A pure affine Vieillefosse jet produces the
frictionless core but no finite-energy attachment. Any mode that attaches the
packet, spreads the four-lobed stress, or creates an opposite \(l=4\) source
has

```math
Z\notin T\mathfrak A,
\tag{VPL.114}
```

and hence has positive Korn-Hodge distance. By (VPL.113), that distance is paid
by \(\mathcal V_{\rm rel}\).

Equivalently, if a sequence tries to make a non-affine attach/hide/cancel mode
free, then

```math
\mathcal V_{\rm rel}(u_n,a_n)\to0
\tag{VPL.115}
```

forces

```math
\mathcal G(u_n)\to0,
\qquad
\nabla u_n-\nabla a_n\to0
\quad\text{in the packet/collar topology.}
\tag{VPL.116}
```

Thus the alleged cancelling mode disappears. What remains is the affine
Vieillefosse core, which cannot be a finite-energy same-field participant with
zero collar cost. This is the desired legitimacy statement.

With (VPL.113), the all-tower no-free-collar inequality can be written without
invented bill currency:

```math
\|\Pi_4 f[u]\|_{\rm press}
+\inf_{a\in\mathfrak A}\mathcal V_{\rm rel}(u,a)
\ge
c\,\mathcal S_{\rm Vieillefosse}(u).
\tag{VPL.117}
```

The remaining proof task is now narrowed to a standard uniformity problem:
prove the Korn-Hodge-Poincare constant and the collar-flux sign are uniform for
the admissible family of strict participation atoms. If the participation atoms
have fixed normalized geometry and the collar flux is parent-owned, then
(VPL.117) is a legitimate same-field viscous participation estimate.

## 16. How the legitimate bill closes \(c_0\)

The definition of \(c_0\) is the infimum of payment per unit self-stretching
service over lawful participation towers. Write, on each lawful packet/rung
atom \(a\),

```math
\mathsf S(a)=\mathcal S_{\rm Vieillefosse}(a),
\tag{VPL.118}
```

and let \(\mathsf P(a)\) be the actual same-field pressure-viscous
participation payment allowed by the strict law. The previous section proves
that the gluing/cancellation bill is not invented:

```math
\mathsf P(a)
\ge
\|\Pi_4 f[u_a]\|_{\rm press}
+\inf_{b\in\mathfrak A}\mathcal V_{\rm rel}(u_a,b).
\tag{VPL.119}
```

The no-free-collar theorem is the uniform packet inequality

```math
\|\Pi_4 f[u_a]\|_{\rm press}
+\inf_{b\in\mathfrak A}\mathcal V_{\rm rel}(u_a,b)
\ge
c\,\mathsf S(a),
\qquad
c>0,
\tag{VPL.120}
```

with the same \(c\) for every scale, orientation, collar shape, and lawful
tower atom.

Combining (VPL.119) and (VPL.120),

```math
\mathsf P(a)\ge c\,\mathsf S(a)
\tag{VPL.121}
```

on every active atom. Summing/integrating over the whole lawful tower
\(\mathcal T\) gives

```math
\mathsf P(\mathcal T)
=
\int_{\mathcal T}\mathsf P(a)
\ge
c\int_{\mathcal T}\mathsf S(a)
=
c\,\mathsf S(\mathcal T).
\tag{VPL.122}
```

Normalize the counterobject service:

```math
\mathsf S(\mathcal T)=1.
\tag{VPL.123}
```

Then

```math
\mathsf P(\mathcal T)\ge c.
\tag{VPL.124}
```

Thus a \(c_0=0\) minimizing sequence cannot exist. If a sequence tried

```math
\mathsf S(\mathcal T_n)=1,
\qquad
\mathsf P(\mathcal T_n)\to0,
\tag{VPL.125}
```

then (VPL.122) would give

```math
0\leftarrow\mathsf P(\mathcal T_n)\ge c,
\tag{VPL.126}
```

which is impossible. Therefore

```math
c_0
=
\inf_{\mathcal T}
\frac{\mathsf P(\mathcal T)}{\mathsf S(\mathcal T)}
\ge
c
>0.
\tag{VPL.127}
```

So the logic is exact: legitimate gluing bill plus uniform no-free-collar
inequality implies \(c_0>0\). The current work has reduced the problem to
proving the uniform packet inequality (VPL.120) over the strict participation
atom class. Without that uniform theorem, the note is still a strict reduction,
not a claimed proof of \(c_0>0\).

## 17. Uniform packet inequality over strict participation atoms

This is the compactness proof of the uniform packet inequality. The strict
participation atom class must be normalized before compactness is invoked. An
atom is represented on a reference packet \(P\) with collar \(C\), participation
weight \(\phi\), and parent attachment data. Scale, translation, and rotation
are quotiented out.

The strict atom hypotheses are:

```math
\text{(A1) fixed normalized packet/collar geometry with uniform extension,
trace, Korn, and elliptic constants;}
\tag{VPL.128}
```

```math
\text{(A2) incompressibility and pressure lawfulness:
\(\nabla\cdot u=0\), \(-\Delta p=\partial_i u_j\partial_j u_i\);}
\tag{VPL.129}
```

```math
\text{(A3) parent-owned collar attachment: a nonzero affine Vieillefosse
core cannot satisfy the outer atom boundary at zero collar cost;}
\tag{VPL.130}
```

```math
\text{(A4) actual payment dominates the legitimate relative bill:
\(\mathsf P(a)\ge\|\Pi_4f[u]\|_{\rm press}
+\inf_{b\in\mathfrak A}\mathcal V_{\rm rel}(u,b)\);}
\tag{VPL.131}
```

```math
\text{(A5) service is continuous under the strong packet convergence supplied
by the relative bill.}
\tag{VPL.132}
```

Under these strict atom hypotheses, prove:

```math
\|\Pi_4 f[u]\|_{\rm press}
+\inf_{b\in\mathfrak A}\mathcal V_{\rm rel}(u,b)
\ge
c\,\mathsf S(u),
\qquad c>0.
\tag{VPL.133}
```

### 17.1 Contradiction normalization

Assume no such \(c\) exists. Then there are strict participation atoms \(u_n\)
with

```math
\mathsf S(u_n)=1,
\tag{VPL.134}
```

and

```math
\|\Pi_4 f[u_n]\|_{\rm press}
+\inf_{b\in\mathfrak A}\mathcal V_{\rm rel}(u_n,b)
\to0.
\tag{VPL.135}
```

Choose \(b_n\in\mathfrak A\) so that

```math
\mathcal V_{\rm rel}(u_n,b_n)\to0.
\tag{VPL.136}
```

Write

```math
w_n=u_n-b_n,
\qquad
E_n=S(u_n)-S(b_n).
\tag{VPL.137}
```

By the legitimacy estimate (VPL.113),

```math
\mathcal G(u_n)\to0.
\tag{VPL.138}
```

So Korn-Hodge-Poincare modulo \(\mathfrak A\) gives

```math
\nabla u_n-\nabla b_n\to0
\tag{VPL.139}
```

in the packet/collar topology. In particular, all non-affine attach/hide/cancel
modes disappear in the limit.

### 17.2 Compactness of the affine part

The normalization \(\mathsf S(u_n)=1\) prevents the Vieillefosse amplitude of
\(b_n\) from vanishing. The normalized packet removes translation, rotation,
and scale drift. Hence, after passing to a subsequence,

```math
b_n\to b_\infty
\in\mathfrak A,
\qquad
b_\infty(x)=\lambda RDR^Tx+\Omega x+\beta,
\qquad
\lambda\neq0.
\tag{VPL.140}
```

Together with (VPL.139),

```math
u_n\to b_\infty
\tag{VPL.141}
```

strongly enough to pass the service:

```math
\mathsf S(b_\infty)=1.
\tag{VPL.142}
```

The pressure-channel term is also lower semicontinuous, and (VPL.135) gives

```math
\Pi_4 f[b_\infty]=0.
\tag{VPL.143}
```

This is consistent with the affine Vieillefosse core: affine pressure is
isotropic. The contradiction has to come from strict participation, not from
the affine pressure equation.

### 17.3 Boundary equality case

Since the whole atom, including its collar, converges to \(b_\infty\), the
parent-owned attachment condition passes to the limit. But (A3) says a nonzero
affine Vieillefosse core cannot attach to the parent field at zero collar cost.
Equivalently, the zero-collar-cost equality case of the strict atom boundary is

```math
\lambda=0.
\tag{VPL.144}
```

That contradicts (VPL.140)--(VPL.142), where \(\lambda\neq0\) and
\(\mathsf S(b_\infty)=1\).

Therefore the contradiction sequence (VPL.134)--(VPL.135) cannot exist. This
proves the uniform packet inequality (VPL.133).

### 17.4 Meaning of the proof

The proof uses no extra currency beyond strict participation. The relative
viscous form is the packet's own localized viscous strain cost plus the
parent-owned collar flux. The \(P_4\) term is the true pressure response to the
quadrupole-square collar source. Korn-Hodge compactness says every attempted
attach/hide/cancel mode is either a rigid/affine null mode or it is paid.

Thus the uniform packet inequality follows once the strict atom class really
has (A1)--(A5). If any of those five atom properties is missing, that missing
property is the exact remaining gap. With (A1)--(A5) installed, the chain

```math
\text{uniform packet inequality}
\Rightarrow
\mathsf P(\mathcal T)\ge c\mathsf S(\mathcal T)
\Rightarrow
c_0\ge c>0
\tag{VPL.145}
```

is complete.

## 18. Strict atomization theorem

The five strict-atom properties are consequences of one stronger construction:

```math
\text{an active atom is a maximal same-affine-coherent participation packet,
including its collar and parent attachment.}
\tag{VPL.146}
```

Maximal means this: if the parent field carries the same affine Vieillefosse jet
through the outer collar at zero relative cost, the selected packet was too
small and must be merged with its parent. A genuine atom begins where a
Vieillefosse-like affine core is selected and ends at the first scale where that
same affine coherence must be turned off, rotated, cancelled, or attached to a
different parent state.

The tower theorem needed for \(c_0\) is therefore:

```math
\text{Every lawful participation tower decomposes into maximal same-affine
strict atoms with uniform normalized geometry, parent-owned positive collar
flux, and additive service/payment accounting.}
\tag{VPL.147}
```

The accounting clause means

```math
\mathsf S(\mathcal T)
=
\int_{\mathcal A}\mathsf S(a)\,d\pi(a),
\qquad
\mathsf P(\mathcal T)
\ge
c_{\rm acc}\int_{\mathcal A}\mathsf P(a)\,d\pi(a),
\tag{VPL.148}
```

for a universal \(c_{\rm acc}>0\). This is what prevents the atom estimates
from proving only a local statement while the tower hides service between atoms
or double-counts collar payment.

### 18.1 Consequences for A1--A5

**A1: geometry.** Each maximal atom is rescaled, translated, and rotated to a
reference packet \(P\) with collar \(C\):

```math
B_1\subset P\subset B_2,
\qquad
C=P\setminus B_{1+\delta},
\qquad
0<\delta_0\le\delta\le\delta_1<1,
\tag{VPL.149}
```

or to a uniformly \(C^{1,1}\)-bi-Lipschitz image of that packet:

```math
\|\Psi\|_{C^{1,1}}+\|\Psi^{-1}\|_{C^{1,1}}\le M.
\tag{VPL.150}
```

Thus extension, trace, Korn, Poincare, and elliptic constants are bounded by
one geometric constant:

```math
C_{\rm ext},C_{\rm tr},C_{\rm Korn},C_{\rm ell}
\le
C_{\rm geom}(M,\delta_0,\delta_1).
\tag{VPL.151}
```

Degenerate collars are excluded from the strict atom class; they must be split
into normalized atoms or charged as collar concentration.

**A2: lawfulness.** Atoms are restrictions of one incompressible Navier-Stokes
field, so

```math
\nabla\cdot u=0,
\qquad
-\Delta p=\partial_i u_j\,\partial_j u_i.
\tag{VPL.152}
```

Locally,

```math
p=(-\Delta)^{-1}(\eta\,\partial_i u_j\partial_j u_i)+h_{\rm par},
\tag{VPL.153}
```

where \(h_{\rm par}\) is the harmonic pressure trace from the parent field.
Pressure lawfulness is inherited from the same global field; the atom is not an
independent pressure model.

**A3: parent-owned collar attachment.** Let

```math
a(x)=\lambda RDR^Tx+\Omega x+\beta\in\mathfrak A,
\qquad
w=u-a.
\tag{VPL.154}
```

Zero collar cost means the relative strain and parent trace vanish in the strict
participation sense:

```math
S(w)=0\text{ on }C,
\qquad
\operatorname{Tr}_{\partial P}w
\text{ matches the parent at zero relative cost.}
\tag{VPL.155}
```

Korn rigidity gives \(w(x)=\Omega_Cx+\beta_C\) on the collar. Hence \(u\) still
carries the same affine symmetric part as \(a\) there. If \(\lambda\ne0\) and
the parent carries that same affine jet at zero cost, maximality forces a merge.
Therefore a maximal atom has zero collar cost only in the trivial affine case:

```math
\lambda=0.
\tag{VPL.156}
```

This is where the log endpoint is blocked: a middle rung cannot outsource its
collar to the parent while still claiming to be a separate lawful participant.

**A4: actual payment.** For \(E=S(u-a)\), the affine jet satisfies
\(\Delta S(a)=0\), and the localized viscous identity is

```math
\nu\int_P\phi|\nabla E|^2
=
-\nu\int_P\phi\,\Delta S(u):E
-\nu\int_P\nabla\phi\cdot\nabla E:E.
\tag{VPL.157}
```

The second term is the parent-owned collar flux. Strict participation must count
its positive collar work, not only the signed global flux. With that ownership,

```math
\mathsf P(a)
\ge
c_1\nu\int_P\phi|\nabla E|^2
+c_1\nu\int_C|E|^2
+\|\Pi_4 f[u]\|_{\rm press}.
\tag{VPL.158}
```

The Korn-Hodge estimate then gives

```math
\mathsf P(a)
\ge
c_2\left(\mathcal G(u)+\|\Pi_4 f[u]\|_{\rm press}\right).
\tag{VPL.159}
```

This is the legitimacy line. If the law allows signed collar cancellation before
positive ownership is assigned, (VPL.158) is false and the route remains open.

**A5: service continuity.** Service is a packet-local cubic strain readout,
for example

```math
\mathsf S(u)=\int_P\phi\,[-\operatorname{tr}(S(u)^3)]_+.
\tag{VPL.160}
```

Vanishing relative bill gives strong convergence modulo the affine jet:

```math
S(u_n)-S(b_n)\to0
\quad\text{in }H^1(P)\subset L^3(P),
\tag{VPL.161}
```

and the normalized affine jets \(b_n\in\mathfrak A\) converge in the
finite-dimensional affine manifold. Hence

```math
S(u_n)\to S(b_\infty)\quad\text{strongly in }L^3(P),
\qquad
\mathsf S(u_n)\to\mathsf S(b_\infty).
\tag{VPL.162}
```

The service cannot vanish into oscillation, concentration, or a Young-measure
defect once the relative bill vanishes.

### 18.2 Closure

Under strict atomization, A1--A5 are installed on every active atom. Section 17
then gives the uniform packet inequality

```math
\|\Pi_4 f[u]\|_{\rm press}
+\inf_{b\in\mathfrak A}\mathcal V_{\rm rel}(u,b)
\ge
c\,\mathsf S(u).
\tag{VPL.163}
```

Using the accounting in (VPL.148),

```math
\mathsf P(\mathcal T)
\ge
c_{\rm acc}\int_{\mathcal A}\mathsf P(a)\,d\pi(a)
\ge
c_{\rm acc}c\int_{\mathcal A}\mathsf S(a)\,d\pi(a)
=
c_{\rm acc}c\,\mathsf S(\mathcal T).
\tag{VPL.164}
```

Therefore

```math
c_0
=
\inf_{\mathcal T}
\frac{\mathsf P(\mathcal T)}{\mathsf S(\mathcal T)}
\ge
c_{\rm acc}c
>0.
\tag{VPL.165}
```

Section 19 turns (VPL.147) into a stopping-time construction plus one remaining
rigidity statement: no arbitrarily long unpaid same-normalized-affine chain can
carry positive Vieillefosse service. Section 20 gives the adjacent-scale overlap
mechanism that kills that chain. If the overlap mismatch is charged by the
strict participation bill, strict atomization holds and the no-free-collar route
closes \(c_0\).

## 19. Atomization theorem: construction and failure test

The atomization theorem cannot be obtained by an arbitrary partition of unity.
It has to be a stopping-time decomposition of the same-field tower by affine
coherence. Otherwise one can cut a long coherent tower into artificial pieces
whose internal boundaries have no parent-owned flux.

Let \(d\nu=s\,d\zeta\) be the positive Vieillefosse-service measure on the
participation tower, where \(\zeta\) denotes the packet coordinates
\((x,t,\ell)\) or the corresponding material/log-scale variable. For each
dyadic packet \(Q\) in the tower, with fixed dilation \(\Lambda Q\) and collar

```math
C(Q)=\Lambda Q\setminus Q,
\tag{VPL.169}
```

define the best affine Vieillefosse jet

```math
a_Q
\in
\arg\min_{a\in\mathfrak A}
\mathcal V_{\rm rel}(u,a;\Lambda Q).
\tag{VPL.170}
```

Define the normalized same-affine defect

```math
\mathfrak e(Q)
:=
\frac{
\|\Pi_4 f[u]\|_{\rm press}(\Lambda Q)
+\inf_{a\in\mathfrak A}\mathcal V_{\rm rel}(u,a;\Lambda Q)
}{
\nu(Q)
}
\tag{VPL.171}
```

when \(\nu(Q)>0\). A packet is good if

```math
\mathfrak e(Q)\le\varepsilon_0
\tag{VPL.172}
```

and the minimizing affine jets on \(Q\) and \(\Lambda Q\) are the same up to a
fixed small tolerance:

```math
\|\nabla a_Q-\nabla a_{\Lambda Q}\|
\le
\varepsilon_0|\nabla a_Q|.
\tag{VPL.173}
```

A packet is bad if (VPL.172) or (VPL.173) fails. Bad packets already satisfy a
packet inequality with constant \(\varepsilon_0\), because their failure is
itself a pressure/relative-viscous bill:

```math
\|\Pi_4 f[u]\|_{\rm press}(\Lambda Q)
+\inf_{a\in\mathfrak A}\mathcal V_{\rm rel}(u,a;\Lambda Q)
\ge
\varepsilon_0\nu(Q).
\tag{VPL.174}
```

So only good packets can threaten \(c_0\).

### 19.1 Maximal same-affine packets

For \(\nu\)-almost every active tower point, take the largest dyadic packet
\(Q\) containing it such that all intermediate packets from \(Q\) down to the
core are good and carry the same affine jet within tolerance. Select the
maximal such packets by the usual dyadic stopping-time/Vitali rule:

```math
\mathcal A=\{Q_j:\ Q_j\text{ is maximal same-affine-good}\}.
\tag{VPL.175}
```

The selected \(Q_j\) are disjoint at their core scale, and the bounded-overlap
dilates \(\Lambda Q_j\) cover the good service set:

```math
\nu\left(
\text{good service set}\setminus\bigcup_j Q_j
\right)=0,
\qquad
\sum_j \mathbf 1_{\Lambda Q_j}\le N_{\rm ov}.
\tag{VPL.176}
```

Bad service is covered by the stopping packets where (VPL.174) already pays.
Thus the decomposition loses no service:

```math
\nu(\mathcal T)
=
\sum_j \nu(Q_j)
+\sum_k \nu(B_k),
\tag{VPL.177}
```

where \(B_k\) are bad stopping packets, counted with a subordinate partition of
unity if overlaps occur.

Uniform packet/collar geometry follows from the dyadic construction:

```math
\Lambda Q_j/Q_j
\text{ has fixed shape and fixed collar thickness.}
\tag{VPL.178}
```

So A1 and service accounting are standard once the tower is atomized by this
stopping rule.

### 19.2 Why maximality gives parent-owned collar flux

Take a maximal good packet \(Q_j\). Since it is maximal, its parent
\(\Lambda Q_j\) cannot remain same-affine-good with zero relative bill. One of
three things happens.

First, the affine jet changes at the parent:

```math
\|\nabla a_{\Lambda Q_j}-\nabla a_{Q_j}\|
\gtrsim
|\nabla a_{Q_j}|.
\tag{VPL.179}
```

Then Korn on the collar gives

```math
\mathcal V_{\rm rel}(u,a_{Q_j};C(Q_j))
\gtrsim
\nu(Q_j).
\tag{VPL.180}
```

Second, the affine jet does not change, but the parent fails pressure/relative
viscous coherence:

```math
\mathfrak e(\Lambda Q_j)>\varepsilon_0.
\tag{VPL.181}
```

Then (VPL.174) pays on the parent collar.

Third, neither happens. Then the same affine jet continues through the parent
with zero relative collar bill. In that case \(Q_j\) was not maximal; it must
be merged with its parent. Therefore a true maximal strict atom has
parent-owned positive collar flux unless it belongs to a same-affine chain that
never stops.

This proves parent-owned collar flux for all finite stopping atoms.

### 19.3 The exact log-endpoint obstruction

The only remaining failure is an arbitrarily long same-normalized-affine-good
chain:

```math
Q_0\subset Q_1\subset\cdots\subset Q_L,
\qquad
\mathfrak e(Q_m)\le\varepsilon_0,
\qquad
a_{Q_m}\approx a_{Q_0}
\quad(0\le m\le L),
\tag{VPL.182}
```

Here same-affine means same normalized affine jet after Navier-Stokes rescaling.
It does not mean the same physical gradient in unscaled coordinates. The chain
has service spread through many adjacent rungs and no parent-owned collar flux
in the middle. If one takes the whole chain as one atom, normalized geometry is
lost as \(L\to\infty\). If one cuts it into bounded atoms, the artificial cuts
have no parent-owned flux. This is exactly the \(2^{-L}/L\) endpoint in
atomization language.

Therefore the atomization theorem reduces to the bounded-coherence-length
statement:

```math
\text{There exists }L_0<\infty\text{ such that every same-normalized-affine-good chain
with positive normalized service stops within }L_0\text{ log-rungs,}
\tag{VPL.183}
```

or else pays inside the chain:

```math
\sum_{m=0}^{L}
\left(
\|\Pi_4 f[u]\|_{\rm press}(Q_m)
+\inf_{a\in\mathfrak A}\mathcal V_{\rm rel}(u,a;Q_m)
\right)
\ge
c\sum_{m=0}^{L}\nu(Q_m).
\tag{VPL.184}
```

Physically, (VPL.183)--(VPL.184) says a lawful tower cannot keep claiming
Vieillefosse service on many consecutive rungs while saying the same normalized
affine stretcher is still the same unpaid participant. Adjacent Navier-Stokes
scales do not preserve a degree \(+1\) affine jet with constant normalized
amplitude.

### 19.4 What is proved and what remains

The stopping-time construction proves:

```math
\text{finite stopping atoms}
\Rightarrow
\text{maximal strict atoms with uniform geometry, parent-owned collar flux,
and no service loss.}
\tag{VPL.185}
```

The theorem still needed for all lawful towers is:

```math
\text{No arbitrarily long unpaid same-normalized-affine-good chain carrying positive
Vieillefosse service exists.}
\tag{VPL.186}
```

That statement is not a covering lemma. It is the remaining physical rigidity
theorem. If (VPL.186) holds, every lawful tower decomposes into strict atoms
with A1--A5 and the no-free-collar route gives \(c_0>0\). If (VPL.186) fails,
the failure is the log-endpoint counterobject.

## 20. Adjacent-scale overlap kills the unpaid chain

Take neighboring rungs with the same center/material packet: child scale \(r\)
and parent scale \(R=2r\). Use Navier-Stokes normalization

```math
U_r(y)=r\,u(x_0+ry),
\qquad
U_R(Y)=R\,u(x_0+RY).
\tag{VPL.187}
```

On the physical overlap \(x=x_0+ry=x_0+RY\), one has

```math
Y=\frac rR y,
\qquad
U_r(y)=\frac rR\,U_R\!\left(\frac rR y\right).
\tag{VPL.188}
```

If the chain is same-normalized-affine-good and unpaid, both normalized packets
claim the same affine Vieillefosse core:

```math
U_r(y)=Ay+e_r(y),
\qquad
U_R(Y)=AY+e_R(Y),
\qquad
A=\lambda R_0DR_0^T,\ \lambda\ne0.
\tag{VPL.189}
```

Substituting (VPL.189) into the exact overlap identity gives, with
\(\rho=r/R=1/2\),

```math
Ay+e_r(y)
=
\rho\left(A(\rho y)+e_R(\rho y)\right)
=
\rho^2Ay+\rho e_R(\rho y).
\tag{VPL.190}
```

Therefore

```math
e_r(y)-\rho e_R(\rho y)
=
-(1-\rho^2)Ay
=
-\frac34Ay.
\tag{VPL.191}
```

The same physical field is being asked to look like \(Ay\) and
\(\frac14Ay\) on the same overlap. Thus the two errors cannot both be small in
the overlap topology controlled by the participation bill:

```math
\|e_r\|_{\rm ov}
+\|e_R\|_{\rm ov}
\gtrsim
|A|.
\tag{VPL.192}
```

Korn-Poincare on the overlap converts this mismatch into a paid relative
defect. After service normalization,

```math
\mathcal V_{\rm rel}(Q_r\leftrightarrow Q_R)
+\|\Pi_4 f[u]\|_{\rm press}(Q_r\leftrightarrow Q_R)
\ge
c\,\mathsf S(Q_r).
\tag{VPL.193}
```

So an unpaid adjacent same-normalized-affine step is impossible unless
\(A=0\), and \(A=0\) carries no Vieillefosse service. This kills the long unpaid
same-normalized-affine chain.

The only apparent escape is to stop asking for a degree \(+1\) affine normalized
profile and instead make the same profile persist under Navier-Stokes scaling.
That requires a degree \(-1\) physical field, schematically

```math
u(x)\sim\frac{Ax}{|x|^2}.
\tag{VPL.194}
```

But for traceless Vieillefosse \(A\ne0\),

```math
\nabla\cdot\left(\frac{Ax}{|x|^2}\right)
=
-2\frac{x\cdot Ax}{|x|^4}\ne0.
\tag{VPL.195}
```

Thus the pure scale-normalized affine escape is not incompressible. Any
incompressible repair must add non-affine angular/pressure modes, and those
modes are precisely attach/hide/cancel modes charged by the strict
participation bill.

Combining (VPL.193) with the atom accounting gives

```math
\mathsf P(\mathcal T)\ge c\,\mathsf S(\mathcal T).
\tag{VPL.196}
```

For \(\mathsf S(\mathcal T)=1\), this gives

```math
\mathsf P(\mathcal T)\ge c>0.
\tag{VPL.197}
```

Hence a \(c_0=0\) minimizing sequence cannot be the long unpaid
same-normalized-affine chain. The remaining formal burden is to package
(VPL.192)--(VPL.193) as the strict overlap-charge lemma inside the participation
atomization theorem.

## 21. Failed attempt: rigorous strict overlap-charge lemma

Correction 2026-07-07. This section is retained as the failed adjacent-scale
attempt, not as a proved lemma. The proposed bridge from (VPL.207)--(VPL.209)
to (VPL.210) fixes one affine gauge and then charges the resulting mismatch.
The actual participation bill quotients affine jets; the mismatch
\((A_r-\theta^2A_R)y\), including the equal-amplitude \((1-\theta^2)Ay\)
case, is itself affine and therefore lies in the free Korn/participation null
mode. Hence (VPL.205), (VPL.219), and the accounting conclusion (VPL.233) do
not follow from this argument.

The degree \(-1\) discussion below only explains why a pure exact critical
Vieillefosse profile needs a non-affine incompressible repair. It does not
exclude the marginal slowly-varying-amplitude tower, where the per-step affine
drift can be free and the charge remains located in the non-affine collar
turn-off.

This section packages the adjacent-scale bridge as the uniform lemma needed in
the strict atom class.

Let \(Q_r\subset Q_R\) be adjacent same-center/material packets with

```math
R=2r,
\qquad
\theta=\frac rR=\frac12.
\tag{VPL.198}
```

Normalize the same physical velocity field by Navier-Stokes critical scaling:

```math
U_r(y)=r\,u(x_0+ry),
\qquad
U_R(Y)=R\,u(x_0+RY).
\tag{VPL.199}
```

On the fixed normalized overlap \(O\), these obey the exact identity

```math
U_r(y)=\theta\,U_R(\theta y).
\tag{VPL.200}
```

Assume the pair is same-normalized-affine-good. This means there is one
Vieillefosse affine jet

```math
A=\lambda R_0DR_0^T,
\qquad
D=\operatorname{diag}(1,1,-2),
\tag{VPL.201}
```

and errors \(e_r,e_R\) such that

```math
U_r(y)=Ay+e_r(y),
\qquad
U_R(Y)=AY+e_R(Y)
\tag{VPL.202}
```

on the overlap. Work in the service-normalized active class:

```math
\mathsf S(Q_r)=1.
\tag{VPL.203}
```

Then the same-normalized-affine-good hypotheses give a compact amplitude
annulus

```math
0<a_0\le |A|\le a_1<\infty,
\tag{VPL.204}
```

with constants depending only on the reference atom geometry and the service
normalization.

### 21.1 Lemma statement

There is a constant \(c>0\), independent of \(r\), tower depth, packet
location, and orientation, such that

```math
\mathsf P(Q_r,Q_R)
\ge
c\,\mathsf S(Q_r)
\tag{VPL.205}
```

for every adjacent same-normalized-affine-good rung pair. The payment
\(\mathsf P(Q_r,Q_R)\) is the actual strict participation payment on the
overlap/collar pair, including the legitimate relative viscous bill and the
transverse pressure channel.

### 21.2 Same normalized affine jet case

Insert (VPL.202) into the exact overlap identity (VPL.200):

```math
Ay+e_r(y)
=
\theta\left(A(\theta y)+e_R(\theta y)\right)
=
\theta^2Ay+\theta e_R(\theta y).
\tag{VPL.206}
```

Therefore

```math
e_r(y)-\theta e_R(\theta y)
=
-(1-\theta^2)Ay.
\tag{VPL.207}
```

Taking gradients gives

```math
\nabla e_r(y)-\theta^2\nabla e_R(\theta y)
=
-(1-\theta^2)A.
\tag{VPL.208}
```

After integration over the fixed overlap \(O\),

```math
(1-\theta^2)^2|A|^2|O|
\le
C
\left(
\|\nabla e_r\|_{L^2(O)}^2
+\|\nabla e_R\|_{L^2(\theta O)}^2
\right).
\tag{VPL.209}
```

This is the invalid load-bearing step in the attempt. The right side is a
defect after one affine gauge has been fixed. The legitimate relative bill
minimizes over affine jets, so a pure adjacent affine amplitude drift is
removed by the quotient rather than charged. Therefore the following displayed
inequality was the intended bridge, but it is not justified by the strict
participation law:

```math
\mathsf P(Q_r,Q_R)
\ge
c_1
\left(
\|\nabla e_r\|_{L^2(O)}^2
+\|\nabla e_R\|_{L^2(\theta O)}^2
\right).
\tag{VPL.210}
```

The deduction below is therefore not established:

```math
\mathsf P(Q_r,Q_R)
\ge
c_2|A|^2.
\tag{VPL.211}
```

Using the compact amplitude annulus (VPL.204) and service normalization,

```math
c_2|A|^2
\ge
c_3\mathsf S(Q_r).
\tag{VPL.212}
```

This does not prove (VPL.205). It proves only that the same fixed affine gauge
cannot satisfy the smooth adjacent-scale identity without an affine mismatch;
that mismatch is free under the actual quotient.

### 21.3 Degree \(-1\) escape case

The only way to avoid the affine mismatch is to stop claiming the same
normalized affine jet and instead claim true critical self-similarity:

```math
\Phi(y)=\theta\,\Phi(\theta y).
\tag{VPL.213}
```

This makes \(\Phi\) homogeneous of degree \(-1\). The naive degree \(-1\)
replacement for the affine Vieillefosse core is

```math
\Phi_A(y)=\frac{Ay}{|y|^2}.
\tag{VPL.214}
```

For tracefree symmetric \(A\),

```math
\nabla\cdot\Phi_A
=
-2\,\frac{y\cdot Ay}{|y|^4}.
\tag{VPL.215}
```

This is nonzero whenever the Vieillefosse service is nonzero. Therefore an
incompressible degree \(-1\) repair must add a non-affine correction
\(\Psi_A\) satisfying

```math
\nabla\cdot\Psi_A
=
2\,\frac{y\cdot Ay}{|y|^4}.
\tag{VPL.216}
```

On the unit sphere, \(y\cdot Ay/|y|^2\) is a nonzero \(l=2\) spherical harmonic.
Spherical Hodge-Poincare gives

```math
\|\nabla_\omega\Psi_A\|_{L^2(S^2)}
\ge
c_4|A|.
\tag{VPL.217}
```

This correction is outside the affine nullspace and is charged by the
legitimate relative bill. Hence

```math
\mathsf P(Q_r,Q_R)
\ge
c_5|A|^2
\ge
c_6\mathsf S(Q_r)
\tag{VPL.218}
```

on the service-normalized active class.

### 21.4 Chain consequence

This was the attempted chain consequence. It is not valid after the correction
above. An adjacent step does not pay by affine overlap mismatch; only a
non-affine incompressible collar repair is a legitimate payer. Therefore the
following intended estimate is not proved:

```math
\sum_m \mathsf P(Q_m,Q_{m+1})
\ge
c\sum_m \mathsf S(Q_m).
\tag{VPL.219}
```

Consequently the missing chain exclusion is not proved here:

```math
\text{No arbitrarily long unpaid same-normalized-affine-good chain can carry
positive Vieillefosse service.}
\tag{VPL.220}
```

Without (VPL.220), finite stopping atoms may still pay by the uniform packet
inequality, but non-stopping slowly-varying affine chains retain the log-endpoint
escape unless the non-affine collar/turn-off sign is proved. Hence the
tower-level inequality

```math
\mathsf P(\mathcal T)\ge c\,\mathsf S(\mathcal T)
\tag{VPL.221}
```

does not follow from this section.

## 22. Conditional accounting if a genuine non-affine overlap charge is proved

This accounting section remains useful only conditionally. It shows how a
valid adjacent overlap charge would be booked inside the same participation
bill \(\mathsf P\). It does not repair the failed affine-mismatch argument in
Section 21.

The adjacent-scale charge is not a new detector. It is a localized piece of the
strict participation payment already used in the definition of \(c_0\).

Let \(E_a=S(u-a)\), where \(a\in\mathfrak A\) is the best affine Vieillefosse
jet on the relevant packet. The strict payment on a packet/collar region \(K\)
is the positive same-field participation bill

```math
\mathsf P(K)
\simeq
\nu\int_K \phi_K|\nabla E_a|^2
+\nu\int_{\partial_{\rm part}K}|E_a|^2
+\|\Pi_4(\partial_i u_j\partial_j u_i)\|_{\rm press}(K).
\tag{VPL.222}
```

These are exactly the quantities already used in (VPL.158)--(VPL.159). The
first two terms are the localized viscous strain payment and the parent-owned
collar flux; the third is the transverse pressure channel generated by the same
pressure law

```math
-\Delta p=\partial_i u_j\partial_j u_i.
\tag{VPL.223}
```

For an adjacent pair \(Q_r\subset Q_R\), choose an overlap/collar selector
\(\psi_{r,R}\) supported in the physical overlap where the two normalized
descriptions are both valid, with

```math
0\le\psi_{r,R}\le \phi_{Q_r}+\phi_{Q_R}.
\tag{VPL.224}
```

The pair charge in (VPL.193) is then

```math
\mathsf P(Q_r,Q_R)
:=
\nu\int \psi_{r,R}|\nabla E_a|^2
+\nu\int_{\partial_{\rm part}(Q_r,Q_R)}|E_a|^2
+\|\Pi_4(\partial_i u_j\partial_j u_i)\|_{\rm press}(\psi_{r,R}).
\tag{VPL.225}
```

Thus

```math
\mathsf P(Q_r,Q_R)
\le
C\,\mathsf P(Q_r\cup Q_R),
\tag{VPL.226}
```

with \(C\) depending only on the normalized atom geometry. The overlap-charge
lemma consumes the same \(\mathsf P\) appearing in the tower quotient

```math
c_0
=
\inf_{\mathcal T}
\frac{\mathsf P(\mathcal T)}{\mathsf S(\mathcal T)}.
\tag{VPL.227}
```

It does not add a fourth bill. If the charge is the non-affine collar repair,
then it identifies an existing parent-owned pressure-viscous payment that an
unpaid same-normalized-affine step would have tried to ignore. The affine
amplitude mismatch itself is not such a payment.

## 23. Conditional atomization accounting: no service loss and no payment double count

This section depends on a valid long-chain payment theorem. After the Section
21 correction, the missing theorem is again the non-affine turn-off rigidity,
not affine amplitude-mismatch coercivity.

The tower service is the positive measure

```math
d\nu=d\mu_{\rm Vieillefosse}.
\tag{VPL.228}
```

The stopping-time construction splits the tower into bad stopping packets
\(\{B_k\}\), finite maximal strict atoms \(\{A_j\}\), and same-normalized-affine
chains \(\{C_\alpha\}\). With a subordinate partition of unity,

```math
1
=
\sum_j \omega_j
+\sum_k \beta_k
+\sum_\alpha \gamma_\alpha
\qquad
\nu\text{-a.e. on the active tower.}
\tag{VPL.229}
```

Therefore service is not lost:

```math
\mathsf S(\mathcal T)
=
\sum_j\int \omega_j\,d\nu
+\sum_k\int \beta_k\,d\nu
+\sum_\alpha\int \gamma_\alpha\,d\nu.
\tag{VPL.230}
```

Bad packets pay by the stopping inequality (VPL.174). Finite strict atoms pay by
the uniform packet inequality. Long same-normalized-affine chains would have to
pay by a genuine non-affine collar/turn-off rigidity theorem; (VPL.219) does
not supply that theorem. If such a theorem is proved, these payments are all
restrictions of the same positive measure \(\mathsf P\), and the selected
packets/collars have bounded overlap:

```math
\sum_j\mathbf 1_{\Lambda A_j}
+\sum_k\mathbf 1_{\Lambda B_k}
+\sum_{\alpha,m}\mathbf 1_{Q_m^\alpha\leftrightarrow Q_{m+1}^\alpha}
\le
N_{\rm acc}.
\tag{VPL.231}
```

Hence the local payments do not double-count the global payment beyond the
fixed geometry factor:

```math
\mathsf P(\mathcal T)
\ge
N_{\rm acc}^{-1}
\left(
\sum_j \mathsf P(A_j)
+\sum_k \mathsf P(B_k)
+\sum_{\alpha,m}\mathsf P(Q_m^\alpha,Q_{m+1}^\alpha)
\right).
\tag{VPL.232}
```

Combining the three local lower bounds with (VPL.230)--(VPL.232) would give

```math
\mathsf P(\mathcal T)
\ge
c_{\rm acc}\,\mathsf S(\mathcal T),
\qquad
c_{\rm acc}>0.
\tag{VPL.233}
```

After normalizing \(\mathsf S(\mathcal T)=1\),

```math
\mathsf P(\mathcal T)\ge c_{\rm acc}>0.
\tag{VPL.234}
```

Thus the accounting mechanism would remove service-loss and double-counting
failures once the genuine long-chain payer is supplied. The current note does
not supply that payer. The remaining \(c_0=0\) counterobject is the marginal
slowly-varying affine tower whose affine drift is free and whose only possible
charge is the non-affine incompressible collar repair/turn-off sign.

## 24. Corrected bridge candidate: log-scale Hodge-Hardy mass

The adjacent-affine mismatch argument failed because it charged affine drift
inside the quotient. The corrected bridge does not charge the difference
between affine amplitudes. It charges the non-affine repair forced by
incompressibility when a normalized affine Vieillefosse core is carried through
Navier-Stokes critical scaling.

Let \(\rho=\log r\). On a strict same-affine-good chain, isolate the
Vieillefosse \(l=2\) affine channel in physical variables as

```math
u_A(r,\omega)
=
a(\rho)\frac{A\omega}{r}
=
a(\rho)\frac{Ax}{|x|^2},
\qquad
\operatorname{tr}A=0.
\tag{VPL.235}
```

This is the physical form of a normalized affine core
\(U_r(y)\simeq a(\rho)Ay\) on the dyadic collar. The divergence computation is

```math
\nabla\cdot u_A
=
(\partial_\rho a-2a)
\frac{\omega\cdot A\omega}{r^2}.
\tag{VPL.236}
```

This is an off-kernel Hodge-Hardy coordinate, not the endpoint sign. The free
smooth affine mode is \(\partial_\rho a=2a\), i.e.
\(a(\rho)=Ce^{2\rho}\). That is the physical degree \(+1\) affine field
\(u(x)=CAx\), concentrated at the parent endpoint under critical
normalization. A Hardy estimate can separate interior off-kernel mass from this
endpoint kernel, but it is scale-covariant and cannot by itself make the
approach to the endpoint kernel strict.

For an incompressible completion \(u=u_A+w\), the correction satisfies

```math
\nabla\cdot w
=
-(\partial_\rho a-2a)
\frac{\omega\cdot A\omega}{r^2}
+
\text{strict-atom error}.
\tag{VPL.237}
```

The angular source \(\omega\cdot A\omega\) is a nonzero \(l=2\) spherical
harmonic whenever the Vieillefosse service is nonzero. Spherical Hodge-Poincare
therefore gives the non-affine collar bill

```math
\mathsf P_{\rm collar}(I)
\gtrsim
\int_I |\partial_\rho a-2a|^2\,|A|^2\,d\rho
-\operatorname{Err}_{\rm atom}(I).
\tag{VPL.238}
```

The service carried by this channel is

```math
\mathsf S_A(I)
\simeq
\int_I |a|^2\,|A|^2\,d\rho.
\tag{VPL.239}
```

The one-dimensional endpoint inequality for the operator
\(\partial_\rho-2\) is

```math
\int_I |a|^2\,d\rho
\le
C
\left(
|a(\rho_+)|^2
+
\int_I|\partial_\rho a-2a|^2\,d\rho
\right),
\tag{VPL.240}
```

with \(C\) independent of the length of \(I\). The endpoint term is exactly the
smooth affine kernel \(Ce^{2\rho}\); in the strict participation tower it must
be owned by the parent collar or by a stopping atom. After that endpoint is
charged, (VPL.238)--(VPL.240) give the corrected long-chain bridge:

```math
\mathsf S_A(I)
\le
C
\left(
\mathsf P_{\rm collar}(I)
+
\mathsf P_{\rm parent}(\rho_+)
+
\operatorname{Err}_{\rm atom}(I)
\right).
\tag{VPL.241}
```

This bridge closes only the off-kernel funnel. A slowly varying normalized
amplitude is detected by the divergence law unless it is allowed to approach
the endpoint kernel through the borderline Hardy layer. Quotienting the exact
kernel is not enough; a log-endpoint counterobject lives in the approach to the
kernel. To remove that approach one needs a signed endpoint rigidity input,
not another Hardy constant.

The remaining proof obligations are now specific:

1. extract \(a(\rho)A\) as a legitimate strict-atom channel without losing
   Vieillefosse service;
2. prove the same-field spherical Hodge lower bound (VPL.238), including the
   pressure/viscous participation bill and atom errors;
3. prove parent-owned payment or signed exclusion for approach to the endpoint
   kernel \(a(\rho_+)\);
4. run the conditional atomization accounting of Sections 22--23 with
   (VPL.241) replacing the refuted (VPL.219).

If those four obligations are proved uniformly over the strict participation
atom class, the log endpoint is removed. The third obligation is the
load-bearing one: it must be a genuine drift/sign rigidity, not mere quotienting
of the exact affine mode. Until then, this is a faithful coordinate for the
wall, not a \(c_0>0\) proof.

The scalar endpoint inequality (VPL.240) itself is now proved in
`mpp-forward-gold-c0-log-hodge-hardy-endpoint-lemma-20260707.md`. What remains
in this bridge is not the one-dimensional Hardy estimate; it is the same-field
NS ownership of the quantities appearing around it.

## 25. Proved subcase: fixed axisymmetric affine-plateau turn-off

The corrected bridge has one fixed-geometry subcase that can be proved now. In
the axisymmetric no-swirl \(l=2\) class,

```math
u=A(r)Dx+B(r)(x\cdot Dx)x,
\tag{VPL.242}
```

the divergence-free equation and the \(P_4\)-free condition reduce, for

```math
\rho=\frac{r^2B}{A},
\qquad
\tau=\frac{rA'}{A},
\tag{VPL.243}
```

to

```math
r\rho'
=
-\frac{\rho(3\rho^2+4\rho-2)}{2\rho+1}.
\tag{VPL.244}
```

If the selected packet contains an exact affine plateau, then on the inner
plateau

```math
\rho=0,\qquad \tau=0.
\tag{VPL.245}
```

At any positive collar radius the ODE (VPL.244) is locally Lipschitz at
\(\rho=0\). Hence an exact \(P_4\)-free continuation from the plateau has
\(\rho\equiv0\), \(\tau\equiv0\), and therefore

```math
A\equiv A_0,\qquad B\equiv0.
\tag{VPL.246}
```

It remains the same affine field and cannot turn off at the outer collar
boundary. Thus a fixed-geometry axisymmetric collar with an exact nonzero
affine plateau and an outer finite-energy turn-off must either emit \(P_4\)
pressure or spend relative viscous collar work.

On a compact fixed normalized class this gives

```math
\|\Pi_4(\partial_i u_j\partial_j u_i)\|_{\rm press}
+\inf_{a\in\mathfrak A}\mathcal V_{\rm rel}(u,a)
\ge
c_{\rm ax,plat}\mathsf S(u).
\tag{VPL.247}
```

The bill in (VPL.247) is the same pressure-viscous participation bill as
(VPL.222). This is a real paid subcase, not a new detector.

It does not prove the all-tower \(c_0\) floor. The remaining long-chain problem
is precisely the loss of the exact fixed plateau: approximate/no-plateau
turn-off, log-spread same-affine chains, non-axisymmetric hiding, and the
uniform atomization accounting still have to be proved in the full strict
participation atom class. The detailed sublemma is recorded separately in
`mpp-forward-gold-c0-axisymmetric-plateau-turnoff-sublemma-20260707.md`.

## 26. Constructive target: causal-lag commutator sign

The isotropic pressure response in the affine calculation is an artifact of
the infinite spatially uniform affine jet. For the affine jet,
\(\partial_i u_j\partial_j u_i\) is constant, so the pressure particular
solution is quadratic and \(\nabla^2q\) is isotropic. That isotropy records
spatial uniformity, not physical mildness. A finite-energy flow with a collar,
turn-off, neighbor eddy, or parent packet gives the pressure source spatial
structure, and the participation Hessian is anisotropic.

The live split is therefore not isotropic versus anisotropic. It is aligned
anisotropy versus transverse anisotropy:

```math
[\;S^2,\nabla^2q\;]=0
\qquad\text{aligned/reversible/free,}
\tag{VPL.248}
```

and

```math
[\;S^2,\nabla^2q\;]\ne0
\qquad\text{transverse/irreversible/charged.}
\tag{VPL.249}
```

The \(P_4\)-free branch and the restricted-Euler/Vieillefosse closure live on
the aligned side: the pressure Hessian may be anisotropic, but it shares the
strain eigenframe, so it does no transverse work. The proposed \(c_0\) sign is
the exclusion of persistent aligned anisotropy on a lawful forward-time,
finite-energy, retained positive-record participation tower. A stopped/pass
affine core may have local Vieillefosse strain with zero transverse pressure;
it is not the live counterobject unless it is actually carrying retained
participation through the tower. If the participation is pushed into a collar,
the collar is the payer.

In the strain eigenframe, the transverse components are

```math
\bigl([S^2,\nabla^2q]\bigr)_{ij}
=
(\lambda_i^2-\lambda_j^2)(\nabla^2q)_{ij},
\qquad i\ne j.
\tag{VPL.250}
```

Thus the first falsifiable target is an embedding minimax:

```math
\inf_{\text{lawful retained positive-record marginal towers}}
\operatorname{sgn}_{\rm mat}
\bigl([S^2,\nabla^2q]\bigr)
>0,
\tag{VPL.251}
```

where \(\operatorname{sgn}_{\rm mat}\) is the oriented transverse component
read with the material-time rotation of the strain frame. If an adversary can
choose a lawful finite-energy self-similar or log-self-similar marginal tower
that carries retained positive record while \(\nabla^2q\) remains diagonal in
the \(S\)-frame rung by rung, this commutator-sign route fails. A merely local
aligned affine core is a pass/nonparticipating reading, not a failure. If no
retained participating aligned tower exists and the oriented misalignment has a
uniform sign, the Shizuta-Kawashima Lyapunov mechanism has the missing
genuine-coupling input.

The physical origin of the sign is the causal material-time lag: the local
stretch frame is advected and rotated by the flow, while the participation
Hessian is the instantaneous nonlocal response to the same field that has just
been stretched. A forward-time response pursues the stretch frame from behind.
Running time backward reverses that lag. This is why the target is a sign, not
a rate, and why viscosity is not the source of the sign.

This target crosses only if it proves all three points uniformly:

1. the aligned manifold is not invariant for any lawful retained positive-record
   forward-time finite-energy participation tower;
2. the transverse commutator has a fixed material orientation over the embedding
   minimax, including at \(\nu=0\);
3. the SK/Lyapunov conversion turns that oriented misalignment into the same
   participation bill currency used in \(c_0\), without replacing it by a
   critical \(L^2\) norm that reopens the log endpoint.

Until these points are proved, causal lag is the constructive target for
endpoint strictness, not a completed proof of \(c_0>0\).

## 27. Proved ingredient: log-scale endpoint inequality

The one-dimensional part of Section 24 is closed. Let

```math
I=[\rho_-,\rho_+],
\qquad
L=\partial_\rho-2.
\tag{VPL.248}
```

For every absolutely continuous amplitude \(a\) with \(La\in L^2(I)\),

```math
\int_I |a(\rho)|^2\,d\rho
\le
C_{\rm HH}
\left(
|a(\rho_+)|^2
+
\int_I |La(\rho)|^2\,d\rho
\right),
\tag{VPL.249}
```

with \(C_{\rm HH}\) independent of \(|I|\).

Proof. Write \(f=La\). Solving backward from the parent endpoint gives

```math
a(\rho)
=
e^{-2(\rho_+-\rho)}a(\rho_+)
-
\int_\rho^{\rho_+}e^{-2(s-\rho)}f(s)\,ds.
\tag{VPL.250}
```

The first term has \(L^2\)-norm at most \(\frac12|a(\rho_+)|\). The second term
is convolution on the half-line with \(e^{-2t}\mathbf 1_{t\ge0}\), whose
\(L^1\)-norm is \(\frac12\). Young's inequality gives

```math
\left\|
\int_\rho^{\rho_+}e^{-2(s-\rho)}f(s)\,ds
\right\|_{L^2(I)}
\le
\frac12\|f\|_{L^2(I)}.
\tag{VPL.251}
```

Thus (VPL.249) holds, for instance with \(C_{\rm HH}=1\).

Multiplying by the fixed \(|A|^2\) of the same-affine channel gives

```math
\int_I |a|^2|A|^2\,d\rho
\le
C_{\rm HH}
\left(
|a(\rho_+)|^2|A|^2
+
\int_I|\partial_\rho a-2a|^2|A|^2\,d\rho
\right).
\tag{VPL.252}
```

So the scalar log-chain service reduces to the non-affine divergence defect
plus the smooth affine endpoint kernel. This proves only the scalar endpoint
ingredient. The remaining F2 burden is to prove that the defect term is
actually charged by the same pressure-viscous participation bill, that the
endpoint kernel is parent-owned, and that atomization can use those payments
without service loss or double-counting.
