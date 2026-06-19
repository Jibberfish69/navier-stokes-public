# MPP Forward-Gold Log-Time Small-Tail Reaction Direct Test

Date: 2026-06-19

## Status

Direct test of whether the rescaled Navier-Stokes energy equation itself forces
late log-time smallness of the terminal heat-scale packet.

It does not.  The rescaled equation gives a useful conditional consumer:
once the Gaussian/local rescaled energy is already below a small threshold, the
linear heat-Ornstein-Uhlenbeck part can dominate the cubic/pressure flux and
drive the packet down.  But this does not prove that the packet ever enters the
small regime.  A heat-scale terminal stack can remain order one on infinitely
many unit log-time slabs while the physical energy and cubic-pressure ledgers
remain exponentially discounted.

Thus this route sharpens, but does not remove, the current wall:

```math
\boxed{
\text{late smallness is enough to absorb the packet, but current inputs do not
produce late smallness.}
}
\tag{LST.1}
```

## 1. Rescaled energy and the reaction inequality

Use the backward self-similar variables from the log-time action note:

```math
s=-\log(T-t),
\qquad
y={x-x_0\over\sqrt{T-t}},
\qquad
v(s,y)=\sqrt{T-t}\,u(t,x),
\qquad
q(s,y)=(T-t)p(t,x).
\tag{LST.2}
```

Let

```math
\rho(y)=(4\pi)^{-3/2}e^{-|y|^2/4},
\qquad
M(s)={1\over2}\int |v(s,y)|^2\rho(y)\,dy,
\tag{LST.3}
```

and

```math
D(s)=\int |\nabla_y v(s,y)|^2\rho(y)\,dy.
\tag{LST.4}
```

The Gaussian energy calculation from the renormalized-frequency attempt gives
the schematic inequality

```math
M'(s)
+\alpha D(s)
+\beta M(s)
\le
\mathcal F_{\rm conv}(s)+\mathcal F_{\rm press}(s)
+\mathcal R_{\rm tail}(s),
\tag{LST.5}
```

where the sign-indefinite pieces are

```math
\mathcal F_{\rm conv}(s)
=
-{1\over4}\int |v|^2(v\cdot y)\rho\,dy,
\tag{LST.6}
```

and

```math
\mathcal F_{\rm press}(s)
=
-{1\over2}\int q(v\cdot y)\rho\,dy.
\tag{LST.7}
```

The constants and possible neutral-mode corrections are not the issue here.
The issue is whether `(LST.6)`--`(LST.7)` can force a terminal packet to become
small rather than merely being absorbable once it is small.

## 2. Cubic/pressure flux reduces to a critical reaction term

The Gaussian factor absorbs the explicit factor `|y|` at the cost of a slightly
wider Gaussian weight.  Thus

```math
|\mathcal F_{\rm conv}(s)|
\lesssim
\int |v|^3\rho_*\,dy.
\tag{LST.8}
```

For the pressure, the nonlocal part satisfies

```math
-\Delta q=\partial_i\partial_j(v_iv_j),
\tag{LST.9}
```

so the Calderon-Zygmund estimate controls the non-harmonic pressure in
`L^{3/2}` by the local cubic velocity currency.  The harmonic/conormal piece is
not signed and is kept as a tail/trace term:

```math
|\mathcal F_{\rm press}(s)|
\lesssim
\int \left(|v|^3+|q|^{3/2}\right)\rho_*\,dy
+
\mathcal R_{\rm conormal}(s).
\tag{LST.10}
```

Local Gaussian interpolation gives the model bound

```math
\int |v|^3\rho_*\,dy
\lesssim
M(s)^{3/4}D(s)^{3/4}
+\mathcal R_{\rm tail}(s).
\tag{LST.11}
```

Young absorption then yields

```math
M(s)^{3/4}D(s)^{3/4}
\le
\varepsilon D(s)+C_\varepsilon M(s)^3.
\tag{LST.12}
```

Substituting into `(LST.5)` gives the reaction inequality

```math
M'(s)
\le
-c M(s)
+C M(s)^3
+
\mathcal R_{\rm pressure/tail/legal}(s),
\tag{LST.13}
```

after the small multiple of `D(s)` has been absorbed.

This is the exact log-time version of the pressure-flux absorption attempt:
Young's inequality absorbs the good gradient term only by leaving the
scale-critical cubic reserve.

## 3. What the inequality proves

If the terminal branch already has late smallness,

```math
M(s)\le \delta
\quad\text{for all }s\ge S,
\tag{LST.14}
```

and the pressure/tail/legal term is integrably controlled on the same tail,
then choose `delta` so that

```math
C\delta^2\le {c\over2}.
\tag{LST.15}
```

The reaction inequality becomes

```math
M'(s)
\le
-{c\over2}M(s)
+\mathcal R_{\rm pressure/tail/legal}(s).
\tag{LST.16}
```

This gives decay by Gronwall once the residual is summable:

```math
M(s)
\lesssim
e^{-c(s-S)/2}M(S)
+
\int_S^s e^{-c(s-\sigma)/2}
\mathcal R_{\rm pressure/tail/legal}(\sigma)\,d\sigma.
\tag{LST.17}
```

So the small-tail reaction is a real consumer theorem.  It kills a terminal
packet after late smallness and pressure-tail control have already been
supplied.

## 4. What the inequality does not prove

The forward-gold branch needs the opposite direction: it needs a mechanism that
forces the heat-scale packet to become small on late log-time slabs.

The reaction inequality `(LST.13)` does not do that.  Above the small threshold,
the cubic term has the wrong sign:

```math
-cM+CM^3
\ge0
\quad\text{when}\quad
M\gtrsim \sqrt{c/C}.
\tag{LST.18}
```

Thus the inequality permits an order-one rescaled packet.  The model scalar
profile

```math
M(s)\equiv M_0,
\qquad
M_0\ge \sqrt{c/C},
\tag{LST.19}
```

is compatible with the differential inequality.  It is also compatible with
the physical discounted ledger:

```math
\int_{S_0}^{\infty}e^{-s}M_0\,ds<\infty.
\tag{LST.20}
```

This is the same obstruction as the heat-scale stack.  In physical variables
the packet's actual energy tends to zero; in rescaled variables the packet
remains order one.

## 5. Pressure memory is still the same wall

The pressure term is not a harmless lower-order residual.  Even after local
Calderon-Zygmund reduction, it is controlled by the same critical cubic action
that the route is trying to prove finite:

```math
\int_{S_0}^{\infty}
\int
\left(|v|^3+|q|^{3/2}\right)\rho_*\,dy\,ds.
\tag{LST.21}
```

Current physical energy/local-energy inputs control only the discounted
version:

```math
\int_{S_0}^{\infty}
e^{-s}
\int
\left(|v|^3+|q|^{3/2}\right)\rho_*\,dy\,ds.
\tag{LST.22}
```

So the pressure/cubic term is not a perturbation of the log-time dynamics
unless discount removal, source-square, or selected critical-strain control has
already been installed.

## 6. Consequence for the gold route

The small-tail reaction route supplies the following conditional implication:

```math
\boxed{
\text{LateLogTimeSmallness.A}
+
\text{PressureTailControl.A}
\Longrightarrow
\text{no terminal heat-scale packet.}
}
\tag{LST.23}
```

But it does not supply the needed premise:

```math
\boxed{
\text{terminal heat-scale branch}
\Longrightarrow
\text{LateLogTimeSmallness.A}.
}
\tag{LST.24}
```

The missing supplier is still one of the already isolated critical reserves:

```math
\boxed{
\text{UnweightedActionFinite.A}
\quad\text{or}\quad
\text{SelectedCriticalStrainCarleson.A}
\quad\text{or}\quad
\text{SourceSquare/ScaleCriticalTreeCarleson.A}
\quad\text{or}\quad
\text{true no-waste Lyapunov discount removal.}
}
\tag{LST.25}
```

## Verdict

The rescaled equation gives a valid small-data tail absorption mechanism, but
not an eventual-smallness theorem.

It proves:

```math
\boxed{
\text{once the terminal heat-scale packet is small, the linear heat part can
keep it small and drive it down.}
}
\tag{LST.26}
```

It does not prove:

```math
\boxed{
\text{the terminal heat-scale packet must eventually become small.}
}
\tag{LST.27}
```

Thus the log-time reaction route is a consumer, not a standalone forward-gold
supplier.  It removes one tempting loophole: the pressure-corrected or
Gaussian-energy calculation does not secretly contain the missing coercivity.
The live forward-gold obstruction remains discount removal / critical
Carleson reserve / no-waste pressure-flux coercivity for the final heat-scale
packet.
