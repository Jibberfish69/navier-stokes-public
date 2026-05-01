# SCFBase Pressure Oscillation Modulus Test

## Status

Direct pressure-modulus discharge failed; local product-source blocker isolated.

## Target

For the pressure component `P(Q_r^\Phi(a,t))` in `SCF_base`, test a terminal label-time-scale modulus:

```math
|P(Q_r^\Phi(a,t))-P(Q_{r'}^\Phi(a',t'))|
\le
\Omega(d(a,a')+|t-t'|+|\log r-\log r'|).
```

## Local pressure split

On a same-fluid cylinder use

```math
p=p^{loc}+h,
\qquad
-\Delta p^{loc}=\partial_i\partial_j(\chi u_i u_j),
```

where `\chi` is a cutoff adapted to the doubled cylinder and `h` is harmonic on the inner cylinder.

## Harmonic tail

The harmonic tail has smooth kernel separation from the cylinder. With the energy inequality,

```math
\|\nabla^{m}h\|_{L^\infty(B')}
\le C_m\|u(t)\|_{L^2}^2
\le C_m\|u_0\|_{L^2}^2.
```

Pack.TTU gives uniform geometric comparability of the same-fluid balls. Thus the harmonic part has the required size control and a controlled geometric dependence. It is not the blocking term.

## Local pressure term

The local part is controlled by singular-integral estimates applied to the product source:

```math
\nabla^{k+1}p^{loc}
=T_k(\nabla^k(\chi u\otimes u)).
```

A modulus for `P(Q_r^\Phi(a,t))` over labels, times, and scales requires a corresponding terminal modulus for

```math
\nabla^k(\chi u\otimes u)
```

or for the lower-order scale-critical pressure source norm used in `SCF_base`.

OriginalSmoothData gives compact-time smoothness. Pack.TTU gives cylinder comparability. Together they supply no terminal analytic modulus for `u\otimes u` as `t\uparrow T_*`, as labels and scales vary.

## Moving source obstruction

The product source may concentrate in fresh labels and shrinking scales while the global energy ledger remains finite. The pressure singular integral transports this moving concentration into the local pressure oscillation. Therefore a moving `u\otimes u` packet can defeat a fixed terminal pressure modulus.

## BKM comparison

Under the BKM condition,

```math
\int_{t_0}^{T_*}\|\omega(t)\|_{L^\infty}dt<\infty,
```

high Sobolev bounds give terminal control of `u`, `\nabla u`, and the product source. Then the pressure split yields the desired pressure modulus.

Thus

```math
BKM\Longrightarrow P\text{-modulus}.
```

## Verdict

The pressure modulus remains open from `OriginalSmoothData+Pack.TTU`.

The exact blocking component is

```math
\text{terminal label-time-scale modulus for the local product source }u\otimes u.
```

The harmonic tail is controlled; the local pressure source is not.