---
theorem_id: forward-gold-cauchy-green-annular-stress-work-lyapunov-test-20260625
status: direct-lyapunov-test-no-local-bounded-descent; reduces-to-global-full-clock-storage
logical_landing_node: global_same_packet_full_clock_from_original_data
edge_effect: >-
  Tests the direct physical proof attempt requested by the active material
  spike-wave ontology: combine the Cauchy-Green material deformation record
  with the transported annular stress-work identity and ask whether their sum
  supplies a bounded-below descent functional for the finite rectified annular
  force-action variation. The calculation keeps one original smooth material
  history and the full pressure-viscosity-incompressibility-velocity packet.
  It proves the exact identities and shows that the local combined Lyapunov
  cannot have a universal sign: affine incompressible strain with quadratic
  pressure has positive material metric growth, zero interior viscous forcing,
  and annular stress-work whose sign is collar/global-history dependent.
  Therefore the later-return picture is physically attached, but the finite
  positive clock still requires a genuinely global bounded-below signed storage
  or an equivalent full material clock theorem.
parents:
  - problems/navier-stokes/live-theorem-edge.yaml
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-material-strain-metric-clock-sharpening-20260622.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-affine-strain-local-normal-form-full-participation-sign-test-20260624.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-annular-stress-work-total-variation-clock-test-20260624.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-annular-stress-work-rectification-clock-reduction-20260624.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-gauge-reduced-annular-flux-derivative-sign-structure-test-20260624.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-material-record-growth-is-remaining-clock-producer-20260625.md
---

# Cauchy-Green Annular Stress-Work Lyapunov Test

Date: 2026-06-25

## 0. Object

The object is one original smooth material spike-wave history. The annuli are
transported layers of the same fluid. Heat-scale windows are samples of this
one history, not independent packet events.

Let

```math
\dot X(a,t)=u(X(a,t),t),
\qquad
F=D_aX,
\qquad
C=F^TF,
\qquad
\det F=1.
\tag{CGL.1}
```

Let the transported annular cutoff satisfy

```math
(\partial_t+u\cdot\nabla)\phi=0.
\tag{CGL.2}
```

The two exact physical records are:

1. material metric deformation, carried by \(C\);
2. annular stress-work, carried by \(T=-pI+2\nu S\) through \(\nabla\phi\).

The question tested here is whether these two records form a bounded-below
one-way functional that proves finite rectified annular force-action variation.

## 1. Exact Cauchy-Green deformation identity

Since

```math
\partial_tF=(\nabla u)(X,t)F,
\tag{CGL.3}
```

and

```math
\nabla u=S+\Omega,
\qquad
S=S^T,
\qquad
\Omega^T=-\Omega,
\tag{CGL.4}
```

one has

```math
\partial_tC
=2F^TSF.
\tag{CGL.5}
```

For every material line element \(\xi\),

```math
{d\over dt}\log |F\xi|
= {F\xi\cdot S F\xi\over |F\xi|^2}.
\tag{CGL.6}
```

Thus material stretching or thinning is driven by strain, not by pure rotation:

```math
\left|{d\over dt}\log |F\xi|\right|
\le
\|S(t)\|_{L^\infty(X(A,t))}.
\tag{CGL.7}
```

Any dyadic material deformation event pays at least \(\log2\) of strain clock.
This is the exact mathematical form of the spike thinning under same-fluid
participation.

## 2. Exact annular stress-work identity

Define

```math
M_\phi(t)=\int {1\over2}|u|^2\phi\,dx,
\qquad
D_\phi(t)=2\nu\int \phi |S|^2\,dx,
\qquad
F_\phi(t)=\int u\cdot T\nabla\phi\,dx.
\tag{CGL.8}
```

The transported local energy identity is

```math
{d\over dt}M_\phi(t)+D_\phi(t)=-F_\phi(t).
\tag{CGL.9}
```

This proves attachment. A center storage change is a same-fluid annular
stress/strain transaction before any terminal limit is taken.

The net signed transaction is controlled by storage and dissipation. The total
positive transaction needs rectification:

```math
\int_J |F_\phi(t)|\,dt
\le
\left|\int_JF_\phi(t)\,dt\right|
+
\int_J |F_\phi'(t)|\,dt.
\tag{CGL.10}
```

After gauge reduction, the live rectification term is

```math
\int_J\left|{d\over dt}F_\phi^\sharp(t)\right|dt,
\qquad
F_\phi^\sharp=\int U\cdot T^\sharp\nabla\phi\,dx,
\qquad
T^\sharp=-PI+2\nu S(U).
\tag{CGL.11}
```

## 3. Candidate combined Lyapunov and its necessary sign

A direct physical closure would require a bounded-below functional of the same
material packet, schematically

```math
\mathcal B_N(t)
= M_\phi(t)+\Psi_N(C(t),v(t),q(t),A(t),G(t),\phi(t))
+\text{pressure/stress cross-storage},
\tag{CGL.12}
```

such that

```math
{d\over dt}\mathcal B_N(t)
+c\,d\Omega_N^{full}(t)
+d\mathcal L_N(t)
\le dR_N(t),
\qquad
\mathcal B_N(t)\ge -C,
\qquad
\int_0^{T_*}dR_N<\infty.
\tag{CGL.13}
```

Here \(d\Omega_N^{full}\) includes both the positive material-record variation
and the rectified annular pressure/strain action. If `(CGL.13)` holds, then the
full clock is finite and the installed fixed \(H^s\) continuation bridge closes
the finite-time breakdown contradiction.

So the real test is whether `(CGL.13)` is a consequence of the Cauchy-Green
identity `(CGL.5)` plus the stress-work identity `(CGL.9)`.

## 4. Local sign test: affine incompressible strain

Let \(A=A^T\), \(\operatorname{tr}A=0\), and set locally

```math
u_{aff}(x)=Ax,
\qquad
p_{aff}(x)=-{1\over2}x\cdot A^2x.
\tag{CGL.14}
```

Then

```math
(u_{aff}\cdot\nabla)u_{aff}+\nabla p_{aff}=0,
\qquad
\Delta u_{aff}=0,
\qquad
\nabla\cdot u_{aff}=0.
\tag{CGL.15}
```

This is an exact local Navier-Stokes normal form with fixed viscosity included.
For

```math
A=\operatorname{diag}(\lambda,-\lambda/2,-\lambda/2),
\tag{CGL.16}
```

the material map is \(X(a,t)=e^{tA}a\), and

```math
{d\over dt}\log |D_aX(t)e_1|=\lambda.
\tag{CGL.17}
```

So the Cauchy-Green deformation clock is positive.

In the same normal form, the interior viscous Laplacian vanishes and pressure
balances convection. The only place where the same packet communicates with a
finite material patch is the annular stress-work term

```math
F_\phi(t)=\int u_{aff}\cdot(-p_{aff}I+2\nu A)\nabla\phi\,dx.
\tag{CGL.18}
```

The sign of `(CGL.18)` is not fixed by `(CGL.17)`. It depends on the transported
collar and on the surrounding material history. Reversing the collar orientation
or changing the enclosing material layer changes the signed boundary work while
the local strain rate `(CGL.17)` remains positive.

Thus no local algebraic combination of Cauchy-Green growth and annular
stress-work has the universal one-way sign required by `(CGL.13)`.

## 5. What this rules out

This does not detach the spike from the annulus. It proves the opposite: the
payment is exactly in the same annular stress/strain channel.

What it rules out is a local bounded-below Lyapunov proof of the finite clock.
The deformation clock can be real and positive while interior viscosity supplies
no bulk drain and while the annular stress-work is signed by the global material
placement.

A primitive that cancels positive deformation locally has the form

```math
X(t)=-c\log |D_aX(t)e|.
\tag{CGL.19}
```

Along `(CGL.17)`, this satisfies

```math
X(t)=X(0)-c\lambda t,
\tag{CGL.20}
```

so it is not bounded below on a long positive strain history. This is the same
bounded-cross-storage obstruction in Cauchy-Green language.

## 6. What remains

The physical route is still narrowed correctly:

```math
\text{center spike}
\to
\text{same-material outer-annulus stress/strain return}
\to
\text{positive material record / full clock}.
\tag{CGL.21}
```

The first attachment arrow is proved by `(CGL.9)`. Bounded-record positive
cycling is excluded by the bounded-record action-cycle theorem. The surviving
line is the global one:

```math
\boxed{
\int_0^{T_*}d[\log(1+\mathcal P_N^{mat})]_+<\infty
}
\tag{CGL.22}
```

or equivalently a bounded-below global same-material storage satisfying
`(CGL.13)`.

That storage cannot be a purely local Cauchy-Green/stress-work expression. It
must use the whole original transported material history: pressure elliptic
service, incompressibility, viscous strain, annular stress-work, and the global
terminal-tail return together.

## 7. Verdict

The Cauchy-Green plus annular stress-work Lyapunov test is exact and preserves
the physical ontology. It does not close the MPP.

It proves a sharper negative statement about the proof search:

```math
\boxed{
\text{finite rectified annular force-action variation is not produced by a
local bounded-below Cauchy-Green/stress-work descent identity.}
}
\tag{CGL.23}
```

The remaining theorem is the global full-clock theorem itself: finite positive
variation of the continuation-depth material record on the original smooth
pressure-viscosity-incompressibility-velocity history.