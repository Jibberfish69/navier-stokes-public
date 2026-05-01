# R3 Hs Tail Control Obstruction

## Status

Failed discharge / obstruction note for the whole-space branch.

The exterior L2 tightness theorem closes the finite-energy mass-escape face. The whole-space continuation theorem still needs uniform exterior Hs tail control.

## Target

For s>5/2, the required tail theorem is

```math
Tail.Hs_{R^3}:
\qquad
\lim_{R\to\infty}\sup_{0\le t<T_*}\|u(t)\|_{H^s(|x|>R)}=0.
```

Together with compact-core tower bounds, this would imply

```math
\sup_{t<T_*}\|u(t)\|_{H^s(R^3)}<\infty,
```

and the whole-space local theory would continue the solution.

## Available inputs

The exterior energy theorem gives

```math
\lim_{R\to\infty}\sup_{0\le t<T_*}\int_{|x|>R}|u(x,t)|^2dx=0.
```

The local tower/readout route gives Hs control on every fixed compact core once the local terminal readout cover is available.

Thus the current inputs are

```math
\text{compact-core }H^s\text{ control}
\quad+
\quad
\text{exterior }L^2\text{ tightness}.
```

## Failure of direct implication

Exterior L2 tightness gives no high-frequency control. A sequence of smooth packets can have arbitrarily small L2 norm in the far field while carrying large Hs norm through high frequency. Therefore the implication

```math
\text{exterior }L^2\text{ tightness}
\Longrightarrow
\text{exterior }H^s\text{ tightness}
```

fails as a functional statement.

Compact-core tower bounds also leave the exterior region uncontrolled. They cover every fixed ball after the ball is chosen, while Tail.Hs_R3 requires one radius beyond which all derivative energy remains small uniformly up to T_*.

## Localized high-order energy attempt

Differentiating the equation and testing against an exterior cutoff gives schematically

```math
\frac{d}{dt}\int \chi_R |\Lambda^s u|^2
+2\nu\int\chi_R|\nabla\Lambda^s u|^2
=
\text{commutator flux}+\text{cutoff flux}+\text{pressure flux}.
```

The commutator terms require continuation-grade control such as

```math
\int_0^{T_*}\|\nabla u(t)\|_{L^\infty}dt<\infty
```

or an equivalent high-order exterior dissipation ledger. That is the kind of information the whole-space continuation argument is trying to prove, so spending it here would be circular.

## Remaining endpoint face

The remaining spatial-infinity obstruction is high-frequency derivative escape at infinity:

```math
TailFace_{R^3}^{Hs}:
\qquad
\limsup_{R\to\infty}\sup_{t<T_*}\|u(t)\|_{H^s(|x|>R)}>0.
```

The whole-space branch must either prove Tail.Hs_R3 directly, or add and eliminate TailFace_R3^Hs in the endpoint matrix.

## Conditional replacement theorem

The whole-space continuation bridge is valid under the extra hypothesis

```math
Tail.Hs_{R^3}.
```

Compact-core tower bounds give Hs control on B_R, and Tail.Hs_R3 controls the exterior. Combining both gives the global continuation norm.

## Verdict

The R3 branch remains open at Tail.Hs_R3. Uniform exterior L2 tightness is discharged, while the high-order exterior tail needed for global Hs continuation is still unsupported by the current branch inputs.