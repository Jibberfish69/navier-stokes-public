---
theorem_id: forward-gold-c0-axisymmetric-plateau-turnoff-sublemma-20260707
created: 2026-07-07
problem: navier-stokes
route: forward-gold / c_0 / no-free-collar / axisymmetric fixed-geometry turn-off
status: strict-sublemma-proved-not-c0-closure
source_refs:
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-c0-vieillefosse-participation-lawfulness-inquiry-20260707.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-c0-collar-p4free-branch-refutes-core-rigidity-turnoff-relocation-20260707.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-c0-section17-compactness-critical-gap-obstruction-20260707.md
completion_truth: >-
  This note proves only the fixed-geometry axisymmetric plateau subcase: an
  incompressible no-swirl l=2 collar that is exactly affine on an inner plateau
  cannot remain P4-free and also turn the affine amplitude off. The quantitative
  paid corollary holds only for compact fixed-geometry plateau classes. It does
  not prove the full c_0 floor, does not exclude approximate/no-plateau
  log-spread collars, does not handle non-axisymmetric hiding, and does not
  discharge F1, F2, F4, F5, or MPP closure.
---

# Axisymmetric plateau turn-off sublemma

This is the smallest honest turn-off fact currently available. It proves that
the corrected \(P_4\)-free branch cannot be used as an exact finite collar when
the selected packet really contains an affine plateau and the collar has fixed
normalized geometry.

It does not prove the long-chain theorem. The remaining \(c_0\) object can still
try to remove the exact plateau, spread the turn-off over many log-rungs, or use
non-axisymmetric modes.

## 1. Axisymmetric collar equations

Use the same no-swirl \(l=2\) axisymmetric ansatz as the participation-law note:

```math
u=A(r)Dx+B(r)Qx,
\qquad
D=\operatorname{diag}(1,1,-2),
\qquad
Q=x\cdot Dx .
\tag{APT.1}
```

The divergence-free equation is

```math
\frac{A'}r+rB'+5B=0.
\tag{APT.2}
```

When \(A\ne0\), introduce

```math
\rho=\frac{r^2B}{A},
\qquad
\tau=\frac{rA'}{A}.
\tag{APT.3}
```

The \(l=4\) pressure-source coefficient is proportional to

```math
C_4
=
\frac{A^2}{r^4}
\left[
6\rho^2-10\rho-(4\rho+2)\tau
\right].
\tag{APT.4}
```

Therefore the exact \(P_4\)-free condition is

```math
\tau=\frac{\rho(3\rho-5)}{2\rho+1}.
\tag{APT.5}
```

Combining (APT.2) and (APT.5) gives the autonomous ODE

```math
r\rho'
=
-\frac{\rho(3\rho^2+4\rho-2)}{2\rho+1}.
\tag{APT.6}
```

This is the same equation audited in the \(P_4\)-free branch note.

## 2. Exact plateau obstruction

Assume the collar is attached to an exact affine Vieillefosse plateau on an
inner annulus:

```math
u=A_0Dx
\quad\text{for }r\in[r_-,r_0],
\qquad
A_0\ne0.
\tag{APT.7}
```

Then on that plateau

```math
\rho=0,
\qquad
\tau=0.
\tag{APT.8}
```

If the collar remains \(P_4\)-free on a connected outer interval where \(A\ne0\),
then \(\rho\) solves (APT.6) with initial value

```math
\rho(r_0)=0.
\tag{APT.9}
```

Since \(r_0>0\), the right side of (APT.6) is locally Lipschitz at
\(\rho=0\). Uniqueness gives

```math
\rho\equiv0
\tag{APT.10}
```

on that connected interval. Then (APT.5) gives \(\tau\equiv0\), hence

```math
A\equiv A_0,
\qquad
B\equiv0.
\tag{APT.11}
```

So an exact \(P_4\)-free continuation from an affine plateau is just the same
affine field. It cannot turn off to

```math
A(r_1)=0
\tag{APT.12}
```

at any finite outer collar boundary while remaining smooth and nonzero before
that boundary.

Thus:

```math
\text{exact affine plateau}
+\text{ axisymmetric incompressible }P_4\text{-free collar}
\Longrightarrow
\text{no finite-energy turn-off.}
\tag{APT.13}
```

## 3. Fixed-geometry quantitative corollary

Let \(\mathcal C_{\rm ax,plat}\) be a fixed normalized family of smooth
axisymmetric collars satisfying:

1. the geometry is a fixed annulus \(1\le r\le R_0\);
2. \(u=A_0Dx\), \(A_0\ne0\), on an inner plateau of fixed positive thickness;
3. \(u\) is attached to the parent by \(A=0\) or equivalent zero relative affine
   amplitude at the outer boundary;
4. the normalized service is \(\mathsf S(u)=1\);
5. the family has the compactness bounds already required by the strict atom
   topology.

Then there is a constant \(c_{\rm ax,plat}>0\), depending only on this fixed
class, such that

```math
\|\Pi_4(\partial_i u_j\partial_j u_i)\|_{\rm press}
+\inf_{a\in\mathfrak A}\mathcal V_{\rm rel}(u,a)
\ge
c_{\rm ax,plat}\,\mathsf S(u).
\tag{APT.14}
```

Proof. If not, take a sequence with \(\mathsf S=1\) and left side tending to
zero. The fixed geometry and compactness bounds give a limit in the
axisymmetric collar class. Vanishing relative bill preserves the affine plateau
and the zero outer attachment; vanishing \(P_4\) gives the \(P_4\)-free ODE
(APT.6) on every component with \(A\ne0\). By (APT.13), the limit cannot both
retain the nonzero inner plateau and turn off at the outer boundary. This
contradicts \(\mathsf S=1\).

## 4. Currency check

The left side of (APT.14) is the same strict participation currency used in the
current \(c_0\) quotient:

```math
\mathsf P(K)
\simeq
\nu\int_K\phi_K|\nabla E_a|^2
+\nu\int_{\partial_{\rm part}K}|E_a|^2
+\|\Pi_4(\partial_i u_j\partial_j u_i)\|_{\rm press}(K).
\tag{APT.15}
```

So the sublemma is not a new detector. It is a proved fixed-class instance of
the pressure-viscous bill already named by the strict participation law.

## 5. What this does not close

This sublemma does not prove \(c_0>0\). It leaves exactly these live F2 burdens:

```math
\text{approximate/no-plateau turn-off}
+\text{ long log-spread same-affine chains}
+\text{ non-axisymmetric hiding}
+\text{ uniform atomization without service loss.}
\tag{APT.16}
```

The fixed-geometry plateau case gives a real local payer. The Millennium-scale
question is whether every lawful same-fluid participation tower can be reduced
to such paid fixed-geometry pieces, or whether the log-endpoint survivor avoids
the plateau hypothesis while keeping the same strict bill small.
