# MPP Forward-Gold Interior Square-Reserve Child-Extraction Direct Test

Date: 2026-06-20

## Status

Direct test complete.  `InteriorSquareReserveChildExtraction.A` is not a
consequence of the current square-reserve, first-moment, active-height, or
Littlewood--Paley packet data.

The obstruction is simple: a packet can be sharply compressed in time while
remaining at the parent spatial frequency.  That creates the interior
square-reserve pulse and large active height, but it does not create the smaller
spatial child packet needed for rezooming.

## 1. Target implication

The rezoom note left the following missing implication:

```math
\boxed{\text{InteriorSquareReserveChildExtraction.A}}
\tag{ICE.1}
```

In concrete form, the desired statement is:

```math
\begin{gathered}
|J_m|=h_m\lambda_m^{-2},\qquad h_m\downarrow0,\\
\int_{J_m}\lambda_m D_m(t)^2\,dt\ge c_0,\qquad
\int_{J_m}D_m(t)\,dt\to0,\\
\text{legal exits and inherited parent reserve removed}
\\
\Longrightarrow
\text{there is a retained child packet at frequency }
\lambda_mh_m^{-1/2}.
\end{gathered}
\tag{ICE.2}
```

This is exactly the step needed to convert a subheat parent-window pulse into a
genuine heat-scale child packet.

## 2. Base-frequency time-pulse model

Let \(\phi_m\) be a divergence-free Littlewood--Paley packet with

```math
\|\phi_m\|_2=1,
\qquad
\operatorname{supp}\widehat{\phi_m}\subset\{|\xi|\simeq\lambda_m\}.
\tag{ICE.3}
```

Let \(J_m\) have physical length

```math
|J_m|=h_m\lambda_m^{-2},
\qquad
h_m\downarrow0,
\tag{ICE.4}
```

and define

```math
u_m(t,x)=b_m\chi\!\left({t-t_m\over h_m\lambda_m^{-2}}\right)\phi_m(x),
\tag{ICE.5}
```

where \(\chi\) is smooth, supported in a fixed unit interval, and order one on a
subinterval.  Choose

```math
b_m^2=\lambda_m^{-3/2}h_m^{-1/2}.
\tag{ICE.6}
```

Then on the active part of \(J_m\),

```math
D_m(t)\simeq\lambda_m^2b_m^2.
\tag{ICE.7}
```

The first moment is small:

```math
\int_{J_m}D_m(t)\,dt
\simeq
\lambda_m^2b_m^2h_m\lambda_m^{-2}
=
h_mb_m^2
=
\lambda_m^{-3/2}h_m^{1/2}.
\tag{ICE.8}
```

The square reserve is order one:

```math
\int_{J_m}\lambda_mD_m(t)^2\,dt
\simeq
\lambda_m\lambda_m^4b_m^4h_m\lambda_m^{-2}
=
\lambda_m^3h_mb_m^4
=
1.
\tag{ICE.9}
```

The active height is large:

```math
\lambda_mD_m(t)
\simeq
\lambda_m^3b_m^2
=
\lambda_m^{3/2}h_m^{-1/2}.
\tag{ICE.10}
```

Thus the model has the exact reserve/first-moment/height behavior isolated in
the previous notes.

## 3. No spatial child is produced

The rezoomed child frequency would be

```math
\lambda_m'=\lambda_mh_m^{-1/2}.
\tag{ICE.11}
```

Since \(h_m\downarrow0\), the ratio \(\lambda_m'/\lambda_m=h_m^{-1/2}\) tends
to infinity.  For ordinary dyadic Littlewood--Paley projections, the child
projection is therefore eventually disjoint from the parent projection:

```math
P_{\lambda_m'}u_m(t)=0
\quad
\text{on }J_m
\tag{ICE.12}
```

after harmless finite overlap constants are absorbed.  So the same object that
carries `(ICE.8)`--`(ICE.10)` carries no packet at the rezoomed spatial scale.

This disproves the child-extraction implication as a consequence of the
installed packet data alone.

## 4. What the equation can still charge

The model `(ICE.5)` is not being asserted as a free Navier--Stokes solution.  It
is the local obstruction to a purely geometric/frequency extraction theorem.
For the forced heat equation

```math
\partial_tu_m-\nu\Delta u_m=f_m,
\tag{ICE.13}
```

the short time cutoff produces a source term of size

```math
\|f_m(t)\|_2
\simeq
{b_m\lambda_m^2\over h_m}
\tag{ICE.14}
```

on \(J_m\).  A strong same-carrier source theorem would charge this
time-compression cost.  That route is source payment, not child extraction.

With only the currently installed first-moment or weak source ledgers, there is
no theorem that turns `(ICE.14)` into the unweighted square-reserve payment
needed for forward gold.  The pressure/convection source still has to be
identified on the same selected carrier and in a strong enough norm.

## 5. Exact consequence

The attempted rezoom route now has only two lawful branches.

First:

```math
\boxed{
\text{a genuine child packet at }\lambda_mh_m^{-1/2}\text{ is proved}
}
\tag{ICE.15}
```

Then the problem descends to the smaller heat-scale packet and still needs a
strict no-free-Zeno, source-square, or compact-rigidity argument to stop
infinite repetition.

Second:

```math
\boxed{
\text{no child packet is proved}
}
\tag{ICE.16}
```

Then the only visible output is large parent-scale active height or strong
same-window source.  That is usable as a forward-gold payment only after an
active-height cap, source-square reserve, same-carrier strong source theorem, or
strict no-waste Lyapunov theorem is proved.  Otherwise it is CM-facing
Part/Field readout after the retained pulse enters the witness tree.

## Verdict

`InteriorSquareReserveChildExtraction.A` fails as an installed independent
supplier.  The direct implication

```math
\text{interior subheat square reserve}
\Longrightarrow
\text{smaller spatial heat packet}
\tag{ICE.17}
```

is false without an additional spatial/frequency concentration hypothesis.

The valid refinement is:

```math
\boxed{
\text{interior subheat square reserve}
\Longrightarrow
\text{large parent-scale height/source}
\quad\text{or}\quad
\text{an separately proved smaller child packet.}
}
\tag{ICE.18}
```

So the interior branch does not close by rezooming.  It returns to the same live
non-aliased target:

```math
\text{UnweightedTerminalCriticalActionReserve.A}
```

or one of its real same-carrier suppliers:

```math
\text{SourceSquareReserve.A},
\quad
\text{SelectedCriticalStrainCarleson.A},
\quad
\text{NormalizedCKNCarleson.A},
\quad
\text{StrictRescaledNoWasteLyapunov.A},
\quad
\text{NoFreeTerminalZenoDonorChain.A}.
\tag{ICE.19}
```
