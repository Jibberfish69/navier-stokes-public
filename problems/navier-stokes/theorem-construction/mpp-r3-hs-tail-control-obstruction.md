# R3 Hs Tail Control Obstruction

## Status

Failed discharge / obstruction note for the direct positive whole-space tail
theorem.

The exterior L2 tightness theorem closes the finite-energy mass-escape face.
The direct positive export route still needs uniform exterior Hs tail control.
The CM-facing whole-space branch is no longer governed by this note alone: the
June 8 endpoint-consumption theorem
`mpp-r3-exterior-tail-cm-endpoint-consumption-20260608.md` treats a surviving
exterior Hs source as a terminal Part/Field face after the Duhamel split,
bounded-frequency removal, and dyadic survivor landing. Thus this note remains
authority for the stronger optional theorem `Tail.Hs_R3`; it is not a live
blocker to the CM pass-or-exit branch.

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

Let `eta_R` be an exterior cutoff with `eta_R=0` on `|x|\le R`, `eta_R=1` on
`|x|\ge 2R`, and `|\nabla^j eta_R|\le C_jR^{-j}`.  The tail quantity is

```math
\mathcal H_s^{tail}(R,t)
:=\|eta_R\Lambda^s u(t)\|_2^2.
```

Testing the differentiated equation against `eta_R^2\Lambda^s u` gives the
exact inequality

```math
\frac d{dt}\mathcal H_s^{tail}(R,t)
+\nu\|eta_R\nabla\Lambda^s u\|_2^2
\le
C_s\|\nabla u(t)\|_{L^\infty}\mathcal H_s^{tail}(R,t)
+C_{s,\nu}\mathcal E_s^{tail}(R,t),
```

where `\mathcal E_s^{tail}` is the sum of the annular cutoff commutator ledger
and the localized pressure/Riesz commutator ledger.  A Gronwall closure requires

```math
\int_0^{T_*}\|\nabla u(t)\|_{L^\infty}dt<\infty,
\qquad
\int_0^{T_*}\mathcal E_s^{tail}(R,t)\,dt\to0
\quad(R\to\infty),
```

plus the initial tail `\mathcal H_s^{tail}(R,0)\to0`.  This is exactly the kind
of continuation-grade information the whole-space argument is trying to prove,
so spending it here would be circular.

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

The direct positive `Tail.Hs_R3` theorem remains open. Uniform exterior L2
tightness is discharged, while exterior L2 alone still cannot imply exterior
Hs tightness.

This verdict does not reopen the CM-facing whole-space branch after the June 8
endpoint-consumption theorem. In the CM route, the surviving high-order exterior
source is tested as the same alleged terminal object; after bounded-frequency
removal it must be dyadic escape, and that dyadic survivor lands in Pack, Part,
or Field. A future R3 reopening must now attack one of those paid steps, not
cite the absence of the stronger positive tail theorem alone.
