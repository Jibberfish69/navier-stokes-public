---
theorem_id: forward-gold-c0-vieillefosse-participation-lawfulness-inquiry-20260707
created: 2026-07-07
problem: navier-stokes
route: forward-gold / c_0 / participation law / Vieillefosse lawfulness
status: open-inquiry-strict-reduction-not-proof
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
blocks:
  - NonAffinePressureViscousSignedCommutatorCoercivity.A
  - FullTowerPositiveChannelThreeMeasureAdmission.A
  - NormalizedRelayBillCompactnessRecordPassage.A
completion_truth: >-
  Working inquiry and strict reduction only. The affine Vieillefosse core is a
  lawful incompressible local jet and its true pressure response is purely
  isotropic, so the deviatoric pressure kick is zero at the affine core. Any
  positive c_0 bite must come from the finite-energy same-field participation
  and gluing layer: the true nonlocal pressure response must push transverse to
  the frictionless Vieillefosse direction strongly enough to force viscous
  participation cost. That non-affine coercivity is not proved here.
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
