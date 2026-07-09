---
theorem_id: forward-gold-fixed-face-constant-axis-localization-rigidity-20260709
created: 2026-07-09
problem: navier-stokes
route: forward-gold / c0 / fixed co-diagonal face / constant-axis localization
status: proved-parallel-axis-and-tangent-sheet-global-l2-rigidity-plus-axisymmetric-localization; strict-reduction-not-gold-closure
source_refs:
  - problems/navier-stokes/theorem-construction/theorem-b-consolidated-statement-and-wall-maps-20260709.md
  - problems/navier-stokes/theorem-construction/frontier-dissolution-loop-arc2-proposed-frontier-20260708.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-c0-door1-enstrophy-viscous-service-persistence-20260708.md
completion_truth: >-
  This note proves the constant-axis localization rigidity and closes the smooth
  z-uniform axisymmetric transition-shell subcase of the spin-silent fixed face.
  A positive axial stretch cannot be localized while vorticity stays on the
  same fixed strain eigenaxis: the localization derivative is exactly a
  transverse vorticity component. Two complementary global L2 locks are now
  excluded. A constant strain axis with vorticity parallel to it forces a
  lower-dimensional split; a constant sheet normal with zero normal vorticity
  forces the Fourier transform onto a measure-zero characteristic cone. Either
  global finite-energy field is zero. This does not close Gold because a normalized zero-payment
  sequence may move its localization shell to infinity, vary its eigenaxis in
  space, pass through an eigenvalue-degenerate set, or fail the material-time
  passage needed to make the limiting axis constant. Those are now the exact
  residuals; local pressure-Hessian or shell-profile algebra is not one.
---

# Fixed-face constant-axis localization rigidity

## 1. Physical statement

The spin-silent fixed face cannot localize a positive stretching direction for
free. If vorticity remains on one fixed strain eigenaxis, every transverse
derivative of the axial velocity vanishes. A confined stretching core therefore
creates transverse vorticity in its transition shell, returning to the turning
face. If no transition occurs, the locked field splits into lower-dimensional
pieces and finite energy forces it to vanish.

## 2. Constant-axis lemma

Let (e\in S^2) be constant and let (u\in H^1_{\rm loc}(\mathbb R^3)) be
divergence free. Assume, almost everywhere,

```math
\omega=\nabla\times u=\zeta e,
\qquad
Se=\alpha e,
\qquad
S={1\over2}(\nabla u+\nabla u^T).
\tag{CAR.1}
```

After a fixed rotation take (e=e_3). The first two components of
(omega=\zeta e_3) and the two transverse components of (Se=\alpha e_3)
give

```math
\begin{aligned}
0=\omega_2&=\partial_3u_1-\partial_1u_3,
&0=2S_{13}&=\partial_3u_1+\partial_1u_3,\\
0=\omega_1&=\partial_2u_3-\partial_3u_2,
&0=2S_{23}&=\partial_2u_3+\partial_3u_2.
\end{aligned}
\tag{CAR.2}
```

Adding and subtracting yields

```math
\partial_1u_3=\partial_2u_3=0,
\qquad
\partial_3u_1=\partial_3u_2=0.
\tag{CAR.3}
```

Hence

```math
u(x_1,x_2,x_3)
=v(x_1,x_2)+w(x_3)e_3.
\tag{CAR.4}
```

Incompressibility becomes

```math
\operatorname{div}_{\perp}v(x_1,x_2)+w'(x_3)=0.
\tag{CAR.5}
```

The two terms depend on disjoint variables, so each is constant:

```math
w'=c,
\qquad
\operatorname{div}_{\perp}v=-c.
\tag{CAR.6}
```

If (u\in L^2(\mathbb R^3)), (CAR.4) forces (v=0) because a nonzero
(v(x_1,x_2)) has infinite (x_3)-energy, and it forces (w=0) because a
nonzero (w(x_3)) has infinite transverse energy. Therefore

```math
u\in L^2(\mathbb R^3),\quad \omega\parallel e,\quad Se\parallel e,
\quad e\text{ constant}
\quad\Longrightarrow\quad
u=0.
\tag{CAR.7}
```

This is a global finite-energy rigidity, not a local Codazzi or pressure-bank
claim.

## 3. Axisymmetric transition-shell corollary

Consider the z-uniform axisymmetric locked ansatz used for the fixed face,

```math
u_r=f(r),
\qquad
u_\theta=g(r),
\qquad
u_z=a(r)z.
\tag{CAR.8}
```

Incompressibility gives

```math
f'(r)+{f(r)\over r}+a(r)=0,
\qquad
f(r)=-{1\over r}\int_0^r a(s)s\,ds
\tag{CAR.9}
```

for the regular-at-axis branch. The vorticity is

```math
\omega_r=0,
\qquad
\omega_\theta=-a'(r)z,
\qquad
\omega_z={1\over r}\partial_r(rg(r)).
\tag{CAR.10}
```

Thus the spin-silent condition (omega\parallel e_z) on the full transition
shell forces

```math
a'(r)=0.
\tag{CAR.11}
```

A smooth (a(r)) that is positive in a core and zero in an exterior annulus
must have (a'\ne0) somewhere. Its shell therefore carries the exact transverse
vorticity component (-a'(r)z e_\theta). The shell is either admitted as
nonzero turning/non-affine participation or the proposed localized zero-payment
lock is empty. If (CAR.11) holds globally, (a) is constant; finite energy
forces that constant and the entire constant-axis field to vanish by (CAR.7).

This closes the (Gamma'(r)=0) and (Gamma'(r)\ne0) axisymmetric confinement
subbranches simultaneously: the obstruction is the stretch transition (a'),
independent of the swirl profile (g).

## 4. Gate against the proposed pressure branch tree

For axisymmetric (p(r,z)), the cylindrical Hessian has

```math
H_{r\theta}=H_{\theta z}=0,
\qquad
H_{rz}=\partial_r\partial_zp,
\tag{CAR.12}
```

so it is not generally diagonal when (H_{rz}\ne0). The transition shell also
has to satisfy the (r\theta) commutator row, because incompressibility gives

```math
S_{rr}+S_{\theta\theta}=-a(r).
\tag{CAR.13}
```

Where both the swirl shear and (a(r)) are nonzero, the (r\theta) row does
not disappear. More importantly, (CAR.10) shows that such a shell has already
left the spin-silent fixed face before any pressure-shell ODE is solved.

The proposed quadratic-bank contradiction is also not exhaustive: on a pure
irrotational-swirl annulus, (S^2) is diagonal with equal (rr) and
(\theta\theta) entries, so ([S^2,H]=0) can hold while
(h_r\ne h_\theta). The exact payment is the localization/axis-change row, not
a pointwise requirement that (h_r=h_\theta).

## 5. Exact remaining Gold implication

The constant-axis branch is now proved. A zero-payment positive-record limit
can survive this lemma only by one of the following failures of passage:

1. its eigenaxis varies spatially, with the connection/rotation row not shown
   to enter the one-way payment;
2. its eigenvalue gap collapses, so the axis is undefined or can hand off;
3. its localization shell escapes to infinity in the critically rescaled
   coordinates, leaving a non-L2 affine local limit;
4. the viscous/frame terms fail to pass to zero in material time;
5. positive critical service fails to pass strongly to the limit.

Consequently the remaining theorem is not an axisymmetric shell-kernel
computation. It is the same-field material-time passage statement that turns
zero payment into a constant-axis global finite-energy limit, or records one of
the five failures above as nonzero participation. Once that passage is proved,
(CAR.7) gives the fixed-face contradiction directly.
