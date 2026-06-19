# Forward-Gold Stokes Multipole Coercivity Attempt

Date: 2026-06-18

Status: core coercive lemma proved under the spatial point-residue and critical
local-energy hypotheses.  This does not close the forward-gold route by itself.
It gives a sharper no-waste subtheorem: once the terminal Zeno branch has been
reduced to a point-supported projected momentum residue, critical Navier-Stokes
scaling permits only the vector monopole `Phi_0 delta_0`.  All solenoidal-visible
higher multipoles are coercively excluded.

## Target

The live question is whether a terminal Zeno defect can hide as something more
complicated than the Door 1 / Door 2 point-force split.  The candidate theorem is:

```math
\boxed{
\text{ProjectedStokesMultipoleCoercivity.A}
}
\tag{SM.1}
```

Plain statement:

If the terminal residue is a point-supported projected momentum defect and the
renormalized profile has the critical local energy bound

```math
\sup_{0<r<r_0} r^{-1}\int_{B_r}|U|^2\,dx <\infty,
\tag{SM.2}
```

then the solenoidal-visible part of the point defect has order zero:

```math
\mathfrak R
\equiv
\Phi_0\delta_0
\quad
\text{modulo pure pressure-gradient point gauges.}
\tag{SM.3}
```

In particular, no derivative of a point mass

```math
\partial^\alpha\delta_0,
\qquad |\alpha|\ge1,
\tag{SM.4}
```

can survive as a hidden projected terminal residue at critical scale.

## Distribution lemma

Let `mathfrak R in D'(B_1;R^3)` be supported at `{0}`.  Assume that for every
divergence-free `varphi in C_c^\infty(B_1;R^3)`, with

```math
\varphi_r(x):=\varphi(x/r),
\tag{SM.5}
```

there is a constant `C_varphi` such that

```math
|\langle\mathfrak R,\varphi_r\rangle|
\le C_\varphi
\qquad
0<r<r_\varphi.
\tag{SM.6}
```

Then the class of `mathfrak R` in the dual of divergence-free tests has order at
most zero.  Equivalently,

```math
\mathfrak R
=
\Phi_0\delta_0+\nabla q_0
\tag{SM.7}
```

where `q_0` is a scalar point-supported distribution.  The gradient term is a
pressure gauge and is invisible to solenoidal testing.

Proof.  Since `supp mathfrak R={0}`, the structure theorem for point-supported
distributions gives

```math
\mathfrak R
=
\sum_{|\alpha|\le m} a_\alpha\,\partial^\alpha\delta_0.
\tag{SM.8}
```

Pairing with `varphi_r` gives

```math
\langle\partial^\alpha\delta_0,\varphi_r\rangle
=
(-1)^{|\alpha|}r^{-|\alpha|}\partial^\alpha\varphi(0).
\tag{SM.9}
```

Let `m_*` be the largest derivative order visible on divergence-free tests after
quotienting by gradients.  If `m_*\ge1`, there is a divergence-free test
`varphi` such that the order-`m_*` coefficient

```math
\sum_{|\alpha|=m_*}
(-1)^{|\alpha|}a_\alpha\partial^\alpha\varphi(0)
\tag{SM.10}
```

is nonzero.  Then

```math
\langle\mathfrak R,\varphi_r\rangle
=
c\,r^{-m_*}+O(r^{-m_*+1}),
\qquad c\ne0,
\tag{SM.11}
```

which contradicts `(SM.6)` as `r downarrow0`.  Hence no order `>=1`
component is visible to divergence-free tests.  The annihilator of
divergence-free tests is the gradient sector, so the remaining solenoidal class
is the vector monopole `Phi_0 delta_0`.

## Navier-Stokes coercive estimate

Now assume the projected spatial momentum residue is represented, on a frozen
renormalized slice or stationary profile, by

```math
\mathfrak R
=
\mathbb P\left[-\nu\Delta U+\nabla\cdot(U\otimes U)\right],
\tag{SM.12}
```

where `mathbb P` denotes testing only against divergence-free functions.  For
`varphi_r` as above,

```math
\langle\mathfrak R,\varphi_r\rangle
=
-\nu\int U\cdot\Delta\varphi_r\,dx
-\int (U\otimes U):\nabla\varphi_r\,dx.
\tag{SM.13}
```

The critical local energy bound `(SM.2)` gives

```math
\left|\int U\cdot\Delta\varphi_r\,dx\right|
\le
\left(\int_{B_r}|U|^2\,dx\right)^{1/2}
\|\Delta\varphi_r\|_{L^2}
\le
C E_*^{1/2}\|\Delta\varphi\|_{L^2},
\tag{SM.14}
```

because

```math
\int_{B_r}|U|^2\,dx\le E_* r,
\qquad
\|\Delta\varphi_r\|_{L^2}= r^{-1/2}\|\Delta\varphi\|_{L^2}.
\tag{SM.15}
```

The nonlinear stress term obeys

```math
\left|\int (U\otimes U):\nabla\varphi_r\,dx\right|
\le
\|\nabla\varphi\|_{L^\infty}r^{-1}
\int_{B_r}|U|^2\,dx
\le
E_*\|\nabla\varphi\|_{L^\infty}.
\tag{SM.16}
```

Therefore

```math
|\langle\mathfrak R,\varphi_r\rangle|
\le
C_\varphi(\nu,E_*),
\qquad 0<r<r_\varphi.
\tag{SM.17}
```

This is exactly the bound `(SM.6)`.  The distribution lemma applies.

Thus:

```math
\boxed{
\text{critical local energy}
+
\text{point-supported projected spatial residue}
\Longrightarrow
\mathfrak R=\Phi_0\delta_0
\text{ modulo pressure gauges.}
}
\tag{SM.18}
```

This is the desired Stokes-multipole coercivity.

## Why this is coercivity

A derivative point defect of order `k` is detected at scale `r` with size
`r^{-k}` by the exact test-scaling identity:

```math
\langle\partial^\alpha\delta_0,\varphi_r\rangle
=
(-1)^{|\alpha|}r^{-|\alpha|}\partial^\alpha\varphi(0).
\tag{SM.19}
```

The Navier-Stokes critical local-energy ledger bounds all such projected tests
by the constant `C_varphi(nu,E_*)` in `(SM.17)`, independent of the test scale
`r`.  The gap

```math
r^{-k}\gg1
\qquad (k\ge1)
\tag{SM.20}
```

is the coercive contradiction.  Higher multipoles would require more singular
local energy than the critical local-energy condition
`sup_{0<r<r_0} r^{-1}\int_{B_r}|U|^2 dx<\infty` allows.  Equivalently, the
Stokeslet monopole is the only point-supported force compatible with that
critical local-energy bound.

## Relation to the two doors

Once `(SM.18)` is available, a point-supported terminal spatial residue has only
two meaningful branches:

```math
\Phi_0\ne0,
\qquad
\Phi_0=0.
\tag{SM.21}
```

The nonzero branch is exactly Door 1:

```math
\Phi_0\ne0
\Longrightarrow
\text{nonzero projected point-force residue}.
\tag{SM.22}
```

The zero branch is cleaner than before:

```math
\Phi_0=0
\Longrightarrow
\text{no solenoidal-visible point-supported momentum residue remains}.
\tag{SM.23}
```

So this theorem removes a whole possible family of hidden point defects between
Door 1 and Door 2.  It prevents the terminal branch from hiding as a dipole,
quadrupole, or higher point multipole.

## What this does not prove

This attempt does not prove the full forward-gold closure.  It requires three
inputs not supplied by the current installed package.

First, the terminal Zeno branch must actually reduce to a spatial
point-supported projected momentum residue:

```math
\boxed{
\text{TerminalProjectedResiduePointSupport.A}
}
\tag{SM.24}
```

Without this, the defect may remain a diffuse terminal trace, a time-face atom,
an annular current defect, or a donor-chain residue rather than a spatial point
distribution.

Second, the critical local energy bound `(SM.2)` must hold for the exact
renormalized object on which the residual is being tested:

```math
\boxed{
\text{CriticalLocalEnergyBoundForResidue.A}
}
\tag{SM.25}
```

The soft Zeno extraction gives local suitable bounds on fixed cylinders, but the
current route still has to identify the frozen spatial residue and carry the
bound into that residue test.

Third, the surviving monopole still has to be connected to the proof's native
positive source carrier:

```math
\boxed{
\Phi_0\delta_0
\Rightarrow
\text{selected positive native source / no-waste local-energy residue}.
}
\tag{SM.26}
```

This is the same Door 1 bridge in sharper clothing.  In earlier notation it is
the local-energy/projected version of

```math
\text{ProjectedLocalPreCauchyResidueIdentity.A}
```

or

```math
\text{LocalEnergyFluxNativeResidueIdentity.A}.
```

## Relation to the critical-element route

The critical-element note left

```math
\text{NoWasteLocalEnergyFlux.A}
\tag{SM.27}
```

as a major open theorem.  The present result is a partial no-waste theorem:

```math
\boxed{
\text{No hidden higher spatial point multipoles.}
}
\tag{SM.28}
```

It says that once the no-waste problem has been reduced to point-supported
projected spatial momentum defects, the only remaining physical defect is the
already-known vector point force.

Therefore, after `TerminalProjectedResiduePointSupport.A` and
`CriticalLocalEnergyBoundForResidue.A`, the exact route fork is:

```math
\text{terminal Zeno defect}
\Longrightarrow
\begin{cases}
\text{not point-supported / not frozen / not critically bounded},\\
\Phi_0\delta_0.
\end{cases}
\tag{SM.29}
```

The first line is a compactness/tightness failure that must be charged by the
critical-element or local-energy no-waste machinery.  The second line is the
two-door stress-flux branch already under study.

## Visibility dichotomy

The preceding hypotheses are active readout gates.  Failure of either hypothesis
is itself a visible branch.

Let `mathfrak R` be the projected spatial residual seen by divergence-free
tests near the terminal point.

First, if `mathfrak R` is not supported at `{0}`, then by the definition of
distributional support there is a fixed test `varphi` supported away from the
origin such that

```math
\langle\mathfrak R,\varphi\rangle\ne0.
\tag{SM.30}
```

That is not a hidden terminal point multipole.  It is an off-point annular or
bulk residual and must be routed as a visible local-energy/stress readout.

Second, if the critical local energy bound fails, then

```math
\sup_{0<r<r_0} r^{-1}\int_{B_r}|U|^2\,dx
=\infty.
\tag{SM.31}
```

This is also not hidden.  It is a visible scale-critical energy concentration.
It belongs to the no-waste ledger as a scale-energy defect rather than to the
point-multipole branch.

Third, if both failures are absent, the coercive lemma applies and the residual
is forced into the monopole class:

```math
\mathfrak R
=
\Phi_0\delta_0
\quad
\text{modulo pressure gauges.}
\tag{SM.32}
```

So the useful fork is:

```math
\boxed{
\text{off-point residual}
\quad\text{or}\quad
\text{scale-critical energy blowup}
\quad\text{or}\quad
\Phi_0\delta_0.
}
\tag{SM.33}
```

The first two are visible-defect branches.  The third is the Door 1 / Door 2
monopole branch.

## Result

The Stokes-multipole route is useful and genuinely coercive, but it is not the
whole theorem.  It proves the following conditional discharge:

```math
\boxed{
\text{TerminalProjectedResiduePointSupport.A}
+
\text{CriticalLocalEnergyBoundForResidue.A}
\Longrightarrow
\text{no hidden higher projected point multipoles.}
}
\tag{SM.34}
```

The live remaining work after this attempt is:

```math
\boxed{
\text{OffPointResidualToLedger.A}
\quad\text{and}\quad
\text{ScaleCriticalEnergyDefectToLedger.A}
}
\tag{SM.35}
```

plus the existing monopole bridge:

```math
\boxed{
\text{LocalEnergyFluxNativeResidueIdentity.A}
\text{ / }
\text{ProjectedLocalPreCauchyResidueIdentity.A}.
}
\tag{SM.36}
```

This is still progress.  It removes an entire false middle class: there is no
critical Navier-Stokes terminal residue branch made from hidden dipoles or
higher Stokes multipoles.  A residual that refuses the point/critical hypotheses
is already visible as off-point support or scale-critical energy concentration.
The only point-residue branch left is the original Door 1 monopole or zero.
