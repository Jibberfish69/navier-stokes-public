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
