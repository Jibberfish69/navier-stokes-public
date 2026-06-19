# Forward-Gold Point-Force Capacity Coercivity Attempt

Date: 2026-06-18

Status: core capacity/coercivity lemma proved.  A nonzero vector point force
cannot be carried by a locally finite-dissipation Navier-Stokes profile through
the point.  Therefore a surviving `Phi_0 delta_0` branch must either lose local
`H^1`/finite-dissipation at the point, which is a visible scale-dissipation
defect, or leave the finite-energy local suitable class.  This gives a possible
replacement for the native positive-carrier bridge on the monopole branch, but
only after the point-force equation and finite-dissipation profile hypotheses
are produced on the same object.

## Target

The previous Stokes-multipole attempt left the point-residue branch

```math
\mathfrak R=\Phi_0\delta_0
\tag{PF.1}
```

modulo pressure gauges.  This note tests whether a nonzero `Phi_0` can survive
inside the finite local-energy/dissipation class supplied by local suitable
compactness.

The candidate theorem is:

```math
\boxed{
\text{FiniteDissipationPointForceExclusion.A}
}
\tag{PF.2}
```

Plain statement:

There is no distributional solution of

```math
-\nu\Delta U+\nabla\cdot(U\otimes U)+\nabla P=\Phi_0\delta_0,
\qquad
\nabla\cdot U=0
\tag{PF.3}
```

in a ball containing `0`, with `U\in H^1_{\rm loc}` through the origin and the
usual local suitable pressure integrability, unless

```math
\Phi_0=0.
\tag{PF.4}
```

## Divergence-free point-capacity test

Fix a vector `ell in R^3`.  Let `A(x)=1/2 ell times x`, so that

```math
\nabla\times A=\ell.
\tag{PF.5}
```

Choose a smooth cutoff `chi_epsilon` supported in `B_{2epsilon}`, equal to `1`
on `B_epsilon`.  Define

```math
\varphi_\epsilon:=\nabla\times(\chi_\epsilon A).
\tag{PF.6}
```

Then

```math
\nabla\cdot\varphi_\epsilon=0,
\qquad
\varphi_\epsilon=\ell\quad\text{on }B_\epsilon,
\qquad
\operatorname{supp}\varphi_\epsilon\subset B_{2\epsilon}.
\tag{PF.7}
```

The scaling is

```math
\|\varphi_\epsilon\|_{L^2}\le C_\chi |\ell|\epsilon^{3/2},
\qquad
\|\nabla\varphi_\epsilon\|_{L^2}\le C_\chi |\ell|\epsilon^{1/2},
\qquad
\|\nabla\varphi_\epsilon\|_{L^{3/2}}\le C_\chi |\ell|\epsilon.
\tag{PF.8}
```

Thus the point has zero divergence-free `H^1` capacity in this test class:
`\varphi_\epsilon(0)=ell`, but the norms relevant to the finite-dissipation
pairings vanish as `epsilon downarrow0`.

## Testing the point-force equation

Test `(PF.3)` against `varphi_epsilon`.  The pressure drops out because
`div varphi_epsilon=0`:

```math
\Phi_0\cdot\ell
=
\nu\int \nabla U:\nabla\varphi_\epsilon\,dx
-\int (U\otimes U):\nabla\varphi_\epsilon\,dx.
\tag{PF.9}
```

The viscous term vanishes:

```math
\left|\int \nabla U:\nabla\varphi_\epsilon\,dx\right|
\le
\|\nabla U\|_{L^2(B_{2\epsilon})}
\|\nabla\varphi_\epsilon\|_{L^2}
\longrightarrow0,
\tag{PF.10}
```

because `nabla U in L^2_{\rm loc}` and
`\|\nabla\varphi_\epsilon\|_{L^2}\le C_\chi |\ell|\epsilon^{1/2}`.

The nonlinear term also vanishes.  From `U in H^1_{\rm loc}(B)` in three
dimensions, `U in L^6_{\rm loc}` and `U\otimes U in L^3_{\rm loc}`.  Hence

```math
\left|\int (U\otimes U):\nabla\varphi_\epsilon\,dx\right|
\le
\|U\otimes U\|_{L^3(B_{2\epsilon})}
\|\nabla\varphi_\epsilon\|_{L^{3/2}}
\longrightarrow0.
\tag{PF.11}
```

Letting `epsilon downarrow0` in `(PF.9)` gives

```math
\Phi_0\cdot\ell=0.
\tag{PF.12}
```

Since `ell` was arbitrary,

```math
\boxed{\Phi_0=0.}
\tag{PF.13}
```

This proves `FiniteDissipationPointForceExclusion.A`.

## Coercive interpretation

The theorem is the point-force analogue of the multipole estimate.

Landau/Stokeslet behavior has

```math
|U(x)|\ge c_0 {| \Phi_0|\over |x|}
\qquad
|\nabla U(x)|\ge c_1 {| \Phi_0|\over |x|^2}
\tag{PF.14}
```

Therefore

```math
\int_{B_r}|\nabla U|^2\,dx
\ge
c_2|\Phi_0|^2\int_0^r \rho^{-2}\,d\rho
=\infty.
\tag{PF.15}
```

So a nonzero point force demands infinite local dissipation at the point.  The
capacity proof above is the weak-form version of this coercive fact.

## Consequence for the forward-gold fork

The point-residue branch now has a sharper dichotomy:

```math
\Phi_0\delta_0
\Longrightarrow
\begin{cases}
\text{finite local }H^1\text{ through the point} &\Rightarrow \Phi_0=0,\\
\text{failure of finite local }H^1 &\Rightarrow
\text{visible scale-dissipation defect.}
\end{cases}
\tag{PF.16}
```

Thus a nonzero point force is not an invisible terminal source.  It either
leaves the finite-dissipation local suitable class or becomes a visible
dissipation blowup at the point.

This is potentially stronger than the older Door 1 carrier bridge:

```math
\text{ProjectedLocalPreCauchyResidueIdentity.A}.
\tag{PF.17}
```

That bridge tries to convert `Phi_0\delta_0` into the selected positive native
source carrier.  The capacity route instead says that a nonzero `Phi_0\delta_0`
is incompatible with finite local dissipation.  It avoids the one-sided
positive-carrier identification, but it requires a different exact production
step:

```math
\boxed{
\text{PointForceEquationOnFiniteDissipationProfile.A}.
}
\tag{PF.18}
```

## What this does not prove

The theorem does not say that the current Zeno branch already satisfies all
hypotheses of `(PF.3)` on a single finite-dissipation spatial profile.

The current installed extraction gives an ancient local suitable
source-residue object on compact backward cylinders.  The Door 2 Landau
consumer requires a stationary `(-1)`-homogeneous profile, but that production
is not installed.  Door 1 similarly has a stress-flux point-force identity at
the formal profile level, while the positive native source carrier lives in the
localized terminal packet ledger.

So the new target is not the old native-carrier bridge.  It is:

```math
\boxed{
\text{PointForceFiniteDissipationCompatibility.A}
}
\tag{PF.19}
```

meaning:

```math
\text{terminal Zeno branch}
\Longrightarrow
\begin{cases}
\text{a point-force equation on a finite-dissipation profile},\\
\text{or a visible scale-dissipation defect}.
\end{cases}
\tag{PF.20}
```

If the first line holds, `(PF.13)` forces `Phi_0=0`.  If the second line holds,
the branch is visible in the no-waste ledger.

## Result

The point-force capacity route gives a real coercive theorem:

```math
\boxed{
U\in H^1_{\rm loc}
\text{ through }0
\quad\Longrightarrow\quad
\text{no nonzero } \Phi_0\delta_0
\text{ momentum force at }0.
}
\tag{PF.21}
```

The remaining proof obligation is now sharper:

```math
\boxed{
\text{PointForceFiniteDissipationCompatibility.A}
}
\tag{PF.22}
```

or, failing that, route the failure as

```math
\boxed{
\text{ScaleDissipationDefectToLedger.A}.
}
\tag{PF.23}
```

This is the strongest continuation found from the coercivity branch: the
monopole is not just another source-carrier problem.  In the finite local
dissipation class it is impossible.
