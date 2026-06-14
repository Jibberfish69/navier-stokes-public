# Selector-Persistent Transport Export And Probe Realization Result

## Target

The collar closure file promotes this burden:

```text
selector-persistent transport export and scale-j probe realization
```

The selector-localized coherent strain file used two inputs:

```math
\|B_i(X)\mathbb S_D(j)\mathbb H_DY\|_{H_D^s}
\le
\kappa_T\nu2^{2j}\|Y\|_{H_D^s},
\tag{SPT.1}
```

and, for every persistent-support point `x\in\Gamma_j(t)`, a calibrated probe
`Y_{i,x,j}` with

```math
\|Y_{i,x,j}\|_{H_D^s}\le1,
\qquad
\partial_i\rho(Y_{i,x,j})(x)=2^j\operatorname{sgn}(u_{coh,i}(x)).
\tag{SPT.2}
```

The transport export input is a conditional bridge already represented by the persistent-support transport and selector-intertwining surfaces. The scale-`j` normalized probe input has a Sobolev obstruction.

## Existing transport export bridge

Let

```math
\mathcal T^{coh}_{i,j}[X]Y
:=B_i(X)\mathbb S_D(j)\mathbb H_DY.
```

The existing bridge surfaces supply the conditional identity

```math
\rho(\mathcal T^{coh}_{i,j}[X]Y)
=
\widetilde Q_iP_{\le j}\big((u_{coh,i}\partial_i)\rho(Y)\big)
+R^{collar}_{i,j}[X;Y].
\tag{SPT.3}
```

Together with the carrier-side persistent transport bound `SPT.1` and readout Sobolev comparison, this exports the classical transport channel at viscous scale up to the collar remainder. This part is algebraic-conditional and remains usable by the collar chain.

## Obstruction to normalized scale-`j` probes

Assume the readout Sobolev comparison used throughout the collar chain:

```math
\|\rho(Y)\|_{W^{1,\infty}_x}
\le
C_s\|Y\|_{H_D^s},
\qquad s>7/2.
\tag{SPT.4}
```

Then any probe satisfying `\|Y\|_{H_D^s}\le1` obeys

```math
|\partial_i\rho(Y)(x)|
\le
C_s.
\tag{SPT.5}
```

The requested calibration `SPT.2` requires

```math
2^j
=
|\partial_i\rho(Y_{i,x,j})(x)|
\le
C_s.
\tag{SPT.6}
```

Hence normalized scale-`j` probes exist only in the bounded range

```math
2^j\le C_s.
\tag{SPT.7}
```

For the high active dyadic range of the collar argument, `SPT.2` is incompatible with `SPT.4`.

## Costed probe version

Let a scale-`j` probe have Sobolev cost

```math
N_j:=\|Y_{i,x,j}\|_{H_D^s}.
```

Sobolev comparison forces

```math
N_j\ge C_s^{-1}2^j
\tag{SPT.8}
```

whenever `|\partial_i\rho(Y_{i,x,j})(x)|=2^j`.

Applying `SPT.1` to this costed probe gives

```math
\|\rho(\mathcal T^{coh}_{i,j}[X]Y_{i,x,j})\|_{L_x^\infty}
\le
C_{T,s}
\kappa_T\nu2^{2j}N_j.
\tag{SPT.9}
```

The coefficient extraction step divides by the probe slope `2^j`, producing

```math
|u_{coh,i}(x)|
\le
C_{T,s}\kappa_T\nu2^jN_j+\mathrm{Collar}_{i,j}.
\tag{SPT.10}
```

Using `SPT.8`, the smallest admissible Sobolev cost already puts the transport
term at the scale

```math
C_{T,s}\kappa_T\nu2^jN_j
\ge
C_{T,s}C_s^{-1}\kappa_T\nu2^{2j},
\tag{SPT.11}
```

which after Bernstein yields the larger strain scale `\nu2^{3j}`. Thus the costed-probe route loses one dyadic factor relative to the collar absorption scale.

## Result

The selector-persistent transport export bridge is retained conditionally:

```math
\rho(B_i(X)\mathbb S_D(j)\mathbb H_DY)
=
\widetilde Q_iP_{\le j}\big((u_{coh,i}\partial_i)\rho(Y)\big)
+R^{collar}_{i,j}[X;Y].
\tag{SPT.12}
```

The normalized scale-`j` probe realization required by the previous strain proof fails in the high active range under the same readout Sobolev comparison used by the route.

Therefore the probe-based proof of

```math
\|\nabla u_{coh}\|_\infty\le c\nu2^{2j}
\tag{SPT.13}
```

must be replaced by a direct selector-persistent speed or amplitude export.

## Corrected next target

The replacement target is the coherent amplitude gate

```math
\boxed{
\|u_{coh}\|_{L_x^\infty(\Gamma_j(t))}
\le
\kappa_U\nu2^j+C2^{-j}\Phi(\mathcal E_D(X)).
}
\tag{SPT.14}
```

Equivalently, in flow form, let `\Phi_{coh}(s;t,x)` be the coherent flow on the persistent support. A sufficient selector-persistent speed gate is

```math
\sup_{x\in\Gamma_j(t)}\sup_{s\in I_j}
\frac{|\Phi_{coh}(s;t,x)-x|}{|s-t|}
\le
\kappa_U\nu2^j+C2^{-j}\Phi(\mathcal E_D(X)).
\tag{SPT.15}
```

Differentiating the absolutely continuous flow gives `SPT.14`. Bernstein then gives

```math
\|\nabla u_{coh}\|_\infty
\le
C_B(A)\kappa_U\nu2^{2j}+C_B(A)\Phi(\mathcal E_D(X)).
\tag{SPT.16}
```

and the finite-collar multiplier argument gives

```math
2^j\|P_{>j-M}u_{coh}\|_
\infty
\le
C_{A,M}\kappa_U\nu2^{2j}+C_{A,M}\Phi(\mathcal E_D(X)).
\tag{SPT.17}
```

These are exactly the coherent coefficient inputs consumed by the low-pass commutator collar closure.

## Boundary

This file converts the promoted burden into a sharper theorem target. Transport export remains a conditional bridge. Normalized scale-`j` probe realization conflicts with readout Sobolev comparison. The next live theorem target is the selector-persistent coherent amplitude gate `SPT.14`, or equivalently the flow speed gate `SPT.15`.

## Source surfaces

- `problems/navier-stokes/theorem-construction/low-pass-commutator-collar-closure-result.md`
- `problems/navier-stokes/theorem-construction/selector-localized-coherent-strain-result.md`
- `problems/navier-stokes/theorem-construction/persistent-support-transport-export-theorem.md`
- `problems/navier-stokes/theorem-construction/selector-localized-transport-intertwining-discharge.md`
- `problems/navier-stokes/theorem-construction/coherent-high-collar-coefficient-tail-result.md`
