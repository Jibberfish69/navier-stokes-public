# Forward-Gold Critical Element / Local Energy Rigidity Attempt

Date: 2026-06-18

Status: route tested.  This is the cleanest native Navier-Stokes architecture
among the recent forward-gold alternatives, but it does not close from current
inputs.  It demotes the annular/GMT/topological/coercive-inequality branches to
diagnostic tools and replaces them by one native route:

```math
\text{finite-time breakdown}
\Longrightarrow
\text{minimal terminal ancient element}
\Longrightarrow
\text{no-waste local-energy flux visibility}
\Longrightarrow
\text{compact ancient rigidity contradiction}.
\tag{CE.1}
```

The gain is conceptual compression.  The live obstruction is no longer a list
of every possible defect bridge.  It is the production of a genuine compact
critical element from the terminal source/refill branch and a no-waste theorem
for the Navier-Stokes local energy ledger.

## Native object

Use the parabolic blow-up scaling

```math
u_n(t,x)
:=
\lambda_n u(T+\lambda_n^2t,\ x_n+\lambda_n x),
\qquad
p_n(t,x)
:=
\lambda_n^2 p(T+\lambda_n^2t,\ x_n+\lambda_n x),
\tag{CE.2}
```

with `lambda_n downarrow 0`.  The native limiting object should be

```math
(U,\Pi,\mathcal E,\mathcal F,\mathcal D),
\tag{CE.3}
```

where

```math
\mathcal E={1\over2}|U|^2,
\qquad
\mathcal D=\nu|\nabla U|^2,
\tag{CE.4}
```

and the Navier-Stokes local energy flux is

```math
\mathcal F
=
\left({1\over2}|U|^2+\Pi\right)U
-\nu\nabla {1\over2}|U|^2.
\tag{CE.5}
```

The local energy inequality is

```math
\partial_t\mathcal E+\mathcal D+\nabla\cdot\mathcal F\le0.
\tag{CE.6}
```

Everything in the annular/current/topological package should be a derived
readout from `(CE.3)` rather than the central object.

## What is already available

The repo already has the soft compactness half under the Zeno source-refill
hypotheses:

```math
\text{ZenoCompactnessExtraction.A}.
\tag{CE.7}
```

It produces an ancient local suitable source-residue object

```math
(U,\Pi,\mu_*^{src})
\quad\text{on compact backward cylinders,}
\tag{CE.8}
```

with nonzero inherited native residue

```math
\mu_*^{src}(Q_1^-)\ge c_0>0.
\tag{CE.9}
```

This is not yet a Kenig-Merle style critical element.  It is only a local
suitable ancient limit with local energy and pressure bounds.

The produced minimal class from earlier direct attempts is

```math
B_{min}
=
\{\text{local suitable ancient source-residue objects with local energy bounds,
nonzero selected residue, and no fixed-time incoming threshold pulse}\}.
\tag{CE.10}
```

That class is too weak for rigidity.  It permits terminal-layer concentration.

## Strong critical-element production

The route needs the stronger theorem:

```math
\boxed{
\text{CriticalTerminalElementExtraction.A}
}
\tag{CE.11}
```

meaning:

```math
\text{finite terminal breakdown / Zeno source-refill branch}
\Longrightarrow
\text{a nonzero ancient local suitable }(U,\Pi)
\text{ whose orbit is precompact modulo the admissible NS symmetries.}
\tag{CE.12}
```

The compactness must be modulo at least scale, center, rotation, and the
admissible frame/selector choices already exposed by the annular branch:

```math
\{U(t):t<0\}
\quad
\text{precompact modulo }
(\lambda(t),x(t),R(t),\text{frame/selector gauge}).
\tag{CE.13}
```

This is the point where the older junk is absorbed:

```text
scale drift,
center drift,
profile switching,
annular twisting,
orientation cancellation,
hidden donor chains,
geometric frame drift
```

are all failures of `(CE.13)` unless they are charged to a no-waste ledger.

The current installed inputs do not prove `(CE.11)`.  Existing critical-element
attempts reduce the production step to `PackCriticalElementStability.A` or an
equivalent theorem:

```math
\text{PositivePackDefectOrthogonality.A}
\quad\text{or}\quad
\text{PackFunctionalStabilityUnderProfileDecomposition.A}.
\tag{CE.14}
```

Ordinary energy/profile orthogonality is not enough because the live Pack/source
defect is positive-selected, terminal, localized, and scale-normalized.

## No-waste local energy flux

The second needed theorem is:

```math
\boxed{
\text{NoWasteLocalEnergyFlux.A}
}
\tag{CE.15}
```

It should say that the minimal element has no terminal residue invisible to the
native local-energy ledger.  In concrete form, after testing `(CE.6)` against
shrinking terminal cutoffs,

```math
|\mathcal Z|_{\rm terminal}
\lesssim
\mathcal D_{\rm diss}
+|\operatorname{Flux}_{\rm loc}(\mathcal F)|
+\mathcal D_{\rm pressure}
+\mathcal D_{\rm defect}.
\tag{CE.16}
```

Here the flux term is derived from `(CE.5)`, not from an imported annular stress
current.

The direct local-energy inequality does not by itself prove `(CE.15)`.  With a
compactly supported cutoff `phi`,

```math
{d\over dt}\int {1\over2}|U|^2\phi
+\nu\int |\nabla U|^2\phi
\le
\int\left({1\over2}|U|^2+\Pi\right)U\cdot\nabla\phi
+\nu\int {1\over2}|U|^2\Delta\phi
+\mu_*^{src}(\phi).
\tag{CE.17}
```

This ledger is native, but it allows a positive terminal source-residue measure
unless one proves that the source term is already represented by a controlled
flux/dissipation/pressure trace.  Thus `(CE.15)` reduces to the source-resolved
identity

```math
\boxed{
\text{LocalEnergyFluxNativeResidueIdentity.A}
}
\tag{CE.18}
```

plus terminal tightness:

```math
\boxed{
\text{TerminalLocalEnergyFluxTightness.A}.
}
\tag{CE.19}
```

This is the local-energy version of the previous carrier/residual wall.  It is
cleaner because the ledger is native, but it is still a theorem, not a formal
consequence of local suitability.

## Rigidity

The desired kill theorem is:

```math
\boxed{
\text{CompactAncientRigidity.A:}
\quad
\text{no nonzero no-waste compact ancient Navier-Stokes element exists.}
}
\tag{CE.20}
```

This cannot be the broad statement that no nonzero ancient local suitable
solution exists.  That broad statement is false: smooth ancient local solutions
exist on finite backward cylinders unless extra global/critical bounds are
installed.

The rigidity theorem must use the strong output of `(CE.11)` and `(CE.15)`:

```math
\text{compact orbit modulo symmetries}
+\text{finite/no-waste native local energy flux}
+\text{nonzero terminal defect}
\Longrightarrow
\text{contradiction}.
\tag{CE.21}
```

Known rigid consumers can be used only if production gives their hypotheses:

```text
finite global ancient energy,
Type I control,
bounded critical norm such as L^\infty_t L^3_x,
bounded ancient vorticity/strain,
self-similar or discretely self-similar structure,
two-dimensional or axisymmetric reduction,
strong native source-cancellation.
```

The current Zeno extraction does not produce any of these.

## Relation to the two doors

In this route the two-door split becomes a readout of the same native element.

Door 1 becomes:

```math
\text{nonzero local-energy flux/source residue}
\Longrightarrow
\text{visible in }(\mathcal E,\mathcal F,\mathcal D)
\Longrightarrow
\text{paid contradiction or CM face landing}.
\tag{CE.22}
```

Door 2 becomes:

```math
\text{zero no-waste flux/source residue}
\Longrightarrow
\text{compact ancient profile}
\Longrightarrow
\text{rigidity/Liouville contradiction}.
\tag{CE.23}
```

So the route unifies Door 1 and Door 2 only after the strong critical element
and no-waste theorems are produced.

## Result

The route is better as the central forward-gold architecture:

```math
\boxed{
\text{CriticalTerminalElementExtraction.A}
+\text{NoWasteLocalEnergyFlux.A}
+\text{CompactAncientRigidity.A}
\Longrightarrow
\text{terminal source anti-atom / no finite-time breakdown in this route}.
}
\tag{CE.24}
```

But current inputs supply only the soft extraction

```math
\text{ZenoCompactnessExtraction.A}
\tag{CE.25}
```

and the weak produced class `B_min`.  The direct attempt halts at:

```math
\boxed{
\text{CriticalElementStability / compact-orbit production}
}
\tag{CE.26}
```

and

```math
\boxed{
\text{LocalEnergyFluxNativeResidueIdentity.A}
+\text{TerminalLocalEnergyFluxTightness.A}.
}
\tag{CE.27}
```

Thus the route should replace the annular/topological branches as the main
organizing architecture, while those branches remain subordinate diagnostic
tests for failures of compactness or no-waste visibility.

