# Uniform H_D^s Supplier Result

## Target

The high-shell threshold branch needs

```math
\sup_{0\le t<T}\|X(t)\|_{H_D^s}\le C_X.
\tag{UHS.1}
```

## Lifted-energy supplier

Use the lifted carrier energy

```math
E(t):=\mathcal E_D^{(s)}(X(t)).
\tag{UHS.2}
```

Assume the lifted energy inequality

```math
\frac d{dt}E(t)+c_D\Xi(t)
\le
C\Phi_s(E(t)).
\tag{UHS.3}
```

Assume also the Osgood condition

```math
\int_{E(0)}^\infty\frac{dr}{C\Phi_s(r)}=\infty.
\tag{UHS.4}
```

Then Osgood comparison gives

```math
\sup_{0\le t<T}E(t)
\le
C_E(T,E(0),\Phi_s)<\infty.
\tag{UHS.5}
```

If the lifted energy controls the carrier Sobolev norm,

```math
\|X(t)\|_{H_D^s}^2
\le
C_{ED}E(t),
\tag{UHS.6}
```

then

```math
\sup_{0\le t<T}\|X(t)\|_{H_D^s}
\le
C_X:=\sqrt{C_{ED}C_E(T,E(0),\Phi_s)}.
\tag{UHS.7}
```

## Linear-growth corollary

If

```math
\Phi_s(r)\le A(1+r),
\tag{UHS.8}
```

then

```math
E(t)
\le
(E(0)+1)e^{ACT}-1
\qquad 0\le t<T.
\tag{UHS.9}
```

Consequently

```math
C_X
=
\sqrt{C_{ED}\left((E(0)+1)e^{ACT}-1\right)}.
\tag{UHS.10}
```

## High-shell consequence

With `UHS.1`, the uniform threshold result gives a dyadic cutoff

```math
J_{high}(C_X,\nu,\kappa_U)
=
\left\lceil
\log_2\left(\frac{2C_{read}C_X}{\kappa_U\nu}\right)
\right\rceil.
\tag{UHS.11}
```

Every active shell

```math
j\ge J_{high}(C_X,\nu,\kappa_U)
\tag{UHS.12}
```

satisfies the coherent amplitude/speed gate.

## Boundary

The uniform `H_D^s` supplier is conditional on the lifted energy inequality, coercivity of `E(t)` over `\|X(t)\|_{H_D^s}`, and Osgood-subcritical growth of `\Phi_s`. Superlinear non-Osgood growth requires a sharper structure theorem for `\Phi_s`.

## Source surfaces

- `problems/navier-stokes/theorem-construction/lifted-carrier-energy-threshold-uniformization-and-hfg-replay.md`
- `problems/navier-stokes/theorem-construction/uniform-hds-threshold-to-speed-gate-result.md`
- `problems/navier-stokes/theorem-construction/amplitude-speed-gate-supplier-rollup-result.md`