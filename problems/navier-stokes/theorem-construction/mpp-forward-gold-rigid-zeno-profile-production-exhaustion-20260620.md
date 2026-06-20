# MPP Forward Gold Rigid Zeno Profile Production Exhaustion

Date: 2026-06-20

## Status

Direct exhaustion of the rigid Zeno source-residue / Landau production branch.
This note does not prove `MinimalZenoProfileProduction.A` or the MPP.  It
identifies the exact non-aliased obstruction: the surviving heat-scale terminal
source can remain as an endpoint measure at renormalized time \(s=0\), while the
negative-time ancient profile is source-free, regular, stationary, or trivial.
That object is not a Landau/Sverak input.

The branch is therefore a paid consumer only after a theorem removes endpoint
source residue, produces unweighted terminal action, fixes the Zeno gauge, and
evacuates annular defects.

## 1. Target under test

The zero-flux Door 2 route wants

```math
\text{MinimalZenoProfileProduction.A}
\tag{RZ.1}
```

in order to feed the conditional consumer

```math
\text{ZeroFluxLandauClassLiouville.A}.
\tag{RZ.2}
```

The produced profile must satisfy all of the following:

```math
\begin{gathered}
-\nu\Delta U+\nabla\cdot(U\otimes U)+\nabla P=\Phi_0\delta_0,\\
\nabla\cdot U=0,\qquad
U(\lambda x)=\lambda^{-1}U(x),\\
U\text{ is stationary, smooth on }S^2,\text{ and has no residual source or
defect measure.}
\end{gathered}
\tag{RZ.3}
```

In the zero-flux branch, \(\Phi_0=0\), so the Landau/Sverak consumer kills the
profile after `(RZ.3)` has actually been produced.

## 2. Exact endpoint source model

Let \(\rho\in C_c^\infty(B_1)\), \(\rho\ge0\), and

```math
\int_{B_1}\rho(y)\,dy=1.
\tag{RZ.4}
```

Let \(\tau_m\downarrow0\) and \(a>0\).  Define the selected positive source
measure in renormalized time by

```math
d\mu_m^{src,+}(y,s)
=
a\,\rho(y)\,\tau_m^{-1}\mathbf 1_{(-\tau_m,0]}(s)\,dy\,ds.
\tag{RZ.5}
```

Then

```math
\mu_m^{src,+}(B_1\times[-\theta,0])
=
a\,\min\{1,\theta/\tau_m\}
\qquad(\theta>0),
\tag{RZ.6}
```

and

```math
\sup_m \mu_m^{src,+}(B_1\times[-1,0])=a.
\tag{RZ.7}
```

For every fixed \(b>0\), once \(\tau_m<b\),

```math
\mu_m^{src,+}(B_1\times[-1,-b])=0.
\tag{RZ.8}
```

Weak-star passage gives

```math
\mu_m^{src,+}
\rightharpoonup
a\,\rho(y)\,dy\otimes\delta_{s=0}.
\tag{RZ.9}
```

So every compact negative-time strip misses the source, while the terminal face
keeps mass \(a\).

This model is the exact time-face obstruction.  It has finite selected
\(L^1_s\) mass and no uniform endpoint modulus:

```math
\lim_{\theta\downarrow0}\limsup_{m\to\infty}
\mu_m^{src,+}(B_1\times[-\theta,0])
=a.
\tag{RZ.10}
```

The missing endpoint theorem is exactly the negation of `(RZ.10)` for the
actual selected positive carrier.

## 3. What compactness produces

Parabolic compactness of a legal Zeno sequence can produce a local suitable
limit package

```math
(U,\Pi,\mu_*^{src},\mu_*^{LE})
\tag{RZ.11}
```

on compact negative-time cylinders.  The limiting equation has the form

```math
\partial_sU-\nu\Delta U+(U\cdot\nabla)U+\nabla\Pi
=
\mathfrak R,
\qquad
\nabla\cdot U=0,
\tag{RZ.12}
```

where \(\mathfrak R\) may include endpoint source, interior selected source,
modulation residue, pressure/cutoff defect, or local-energy defect.

If the residue is `(RZ.9)`, then on every open strip \(s<0\) the source can be
zero:

```math
\mu_*^{src}(B_R\times[-R^2,-b])=0
\qquad(b>0).
\tag{RZ.13}
```

The ancient profile \(U(s)\), \(s<0\), can therefore be source-free while the
terminal boundary still carries a nonzero measure.  A rigidity theorem for
source-free ancient profiles does not see a boundary measure unless a trace
theorem converts that measure into an interior contradiction or an illegal
terminal jump.

## 4. Why Landau/Sverak cannot be applied yet

The Landau/Sverak consumer applies to an exact stationary spatial profile on
\(\mathbf R^3\setminus\{0\}\).  The compact package `(RZ.11)` does not supply
that profile.  It can fail at each of these separate production points:

```math
\begin{array}{ll}
\text{endpoint residue evacuation:}
& \mu_*^{src,+}(B_R\times\{0\})=0,\\
\text{unweighted terminal action:}
& \displaystyle \int_{S_0}^{\infty}\mathcal A_R(s)\,ds<\infty,\\
\text{quiet-window stationarity:}
& \partial_sU=0\text{ in the limit},\\
\text{gauge uniqueness:}
& \text{one tangent profile modulo scale, center, rotation, and selector},\\
\text{homogeneity:}
& U(\lambda x)=\lambda^{-1}U(x),\\
\text{annular defect evacuation:}
& \mathfrak R=0\text{ away from the controlled point force},\\
\text{sphere regularity:}
& U|_{S^2}\text{ is smooth.}
\end{array}
\tag{RZ.14}
```

Current inputs do not prove the first two lines of `(RZ.14)`.  Without those
two, the later lines are not forced.

## 5. Stationarity needs unweighted action

The stationarity-side consumer is valid under the exact finite-action and
defect-evacuation hypotheses:

```math
\text{RenormalizedActionFinite.A}
+
\text{AnnularDefectEvacuation.A}
\Longrightarrow
\text{stationary annular subsequential limit.}
\tag{RZ.15}
```

The production estimate is not installed.  In terminal variables

```math
s=-\log(T-t),\qquad
y={x-x_* \over \sqrt{T-t}},\qquad
v(s,y)=\sqrt{T-t}\,u(t,x),
\tag{RZ.16}
```

the physical dissipation identity is

```math
\int\nu|\nabla_xu|^2\,dx\,dt
=
\int e^{-s/2}\nu|\nabla_yv|^2\,dy\,ds.
\tag{RZ.17}
```

So physical energy supplies the discounted budget

```math
\int_{S_0}^{\infty}e^{-s/2}\mathcal A_R(s)\,ds<\infty,
\tag{RZ.18}
```

not the unweighted budget needed for quiet windows:

```math
\int_{S_0}^{\infty}\mathcal A_R(s)\,ds<\infty.
\tag{RZ.19}
```

A recurrent heat-scale branch with \(\mathcal A_R(s)\ge c_0>0\) on infinitely
many disjoint unit \(s\)-slabs is compatible with `(RZ.18)` and violates
`(RZ.19)`.

## 6. Gauge rigidity needs a real coercive norm

Zero point-force flux and zero selected native source readout do not imply the
profile is zero.  They are two readouts, not a complete obstruction norm.

The gauge branch needs a quantitative lower singular value for the modulation
Jacobian,

```math
\sigma_{\min}
\left(
\left\langle G_\alpha U,\Psi_i(U)\right\rangle
\right)
\ge c_0,
\tag{RZ.20}
```

together with selector stability and single-bubble separation.  It also needs a
same-carrier identity showing that the signed modulation residual is retained
by the selected positive native carrier:

```math
\sum_{P\in\mathcal F_m^{sel}}
\int_{Q(P)}
\mathcal N_{preCauchy}^{loc}(u;P)\,\Psi_i(P)
=
\left\langle F^{mod},\Psi_i(U)\right\rangle
-\operatorname{Legal}_{m,i}-o_m(1).
\tag{RZ.21}
```

Current inputs do not prove `(RZ.20)` or `(RZ.21)`.  Without them, a neutral
modulation loop or selector-shadow cancellation can have zero point-force
readout without producing the selected positive carrier.

## 7. Exact branch reduction

The rigid Zeno source-residue branch closes only after one of the following
non-aliased supplier packages is proved on the actual selected positive
carrier:

```math
\text{SelectedCarrierEndpointUI.A},
\tag{RZ.22}
```

```math
\text{SourceSquareReserve.A}
+
\text{SelectedSourceSquareCarrierDomination.A},
\tag{RZ.23}
```

```math
\text{UnweightedTerminalCriticalActionReserve.A},
\tag{RZ.24}
```

```math
\text{StrictRescaledNoWasteLyapunov.A},
\tag{RZ.25}
```

```math
\text{NoFreeTerminalZenoDonorChain.A}
+
\text{same-shadow selected-source trace identity},
\tag{RZ.26}
```

or the full rigid profile production stack

```math
\text{endpoint evacuation}
+
\text{unweighted action}
+
\text{canonical gauge uniqueness}
+
\text{stationarity}
+
\text{homogeneity}
+
\text{annular defect evacuation}
+
\text{sphere smoothness}.
\tag{RZ.27}
```

The already paid downstream consumer is

```math
\text{MinimalZenoProfileProduction.A}
+
\text{ZeroFluxLandauClassLiouville.A}
\Longrightarrow
\text{zero-flux rigid profile contradiction.}
\tag{RZ.28}
```

The missing theorem is the production premise in `(RZ.28)`, not the Liouville
step.

## Verdict

`MinimalZenoProfileProduction.A` is not proved from current inputs.  The rigid
Zeno branch is exhausted as an independent shortcut:

```math
\boxed{
\text{compactness gives a visible endpoint or defect-bearing package, not an
exact Landau-class profile.}
}
\tag{RZ.29}
```

The exact surviving forward-gold target remains

```math
\boxed{
\text{UnweightedTerminalCriticalActionReserve.A on the actual selected
positive carrier,}
}
\tag{RZ.30}
```

with equivalent formulations through endpoint uniform integrability,
source-square, selected critical strain, normalized CKN, strict no-waste, or
same-carrier donor-chain saturation.

Without one of those suppliers, the retained heat-scale terminal pulse is
visible and classifiable.  It is not excluded by the forward-positive gold
route.