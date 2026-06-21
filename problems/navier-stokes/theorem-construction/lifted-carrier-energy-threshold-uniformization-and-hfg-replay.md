# Lifted Carrier Energy Threshold Uniformization And HFG Replay

## 1. Lifted energy Osgood theorem

Assume the lifted carrier inequality

```math
{d\over dt}E(t)+c_D\Xi(t)\le C\Phi_s(E(t)),
\qquad E(t):=\mathcal E_D^{(s)}(X(t)).
```

Assume `\Phi_s` is positive, continuous, and satisfies the Osgood condition

```math
\int_{E_0}^{\infty}{dr\over C\Phi_s(r)}=\infty.
```

Then

```math
\sup_{0\le t<T}E(t)<\infty
```

for every finite `T` inside the lifted carrier interval.

### Proof

Drop the dissipative term and compare with

```math
Z'(t)=C\Phi_s(Z(t)),\qquad Z(0)=E(0).
```

Osgood comparison gives

```math
\int_{E(0)}^{E(t)}{dr\over C\Phi_s(r)}\le t.
```

The integral diverges at infinity, so `E(t)` stays finite for each finite `t<T`. This proves finite lifted energy.

### Linear closure corollary

If

```math
\Phi_s(r)\le A(1+r),
```

then

```math
E(t)\le (E(0)+1)e^{ACt}-1.
```

## 2. Uniform active-shell threshold

The coherent selector threshold is

```math
2^{2j}\ge C(c_D\nu)^{-1}\|X(t)\|_{H_D^s}.
```

The exported-remainder threshold is

```math
2^{2j}\ge K\nu^{-1}C_\varepsilon\Phi_s(E(t)).
```

Finite lifted energy gives finite bounds

```math
M_X:=\sup_{t<T}\|X(t)\|_{H_D^s}<\infty,
\qquad
M_\Phi:=\sup_{t<T}\Phi_s(E(t))<\infty.
```

Choose `J_*` so that

```math
2^{2J_*}\ge
\max\{C(c_D\nu)^{-1}M_X,
K\nu^{-1}C_\varepsilon M_\Phi\n\}.
```

Then every shell `j\ge J_*` lies in the active carrier range, and the carrier-exported low-mode bound holds there:

```math
\|\nabla S_{j-1}u(t)\|_\infty\le c\nu2^{2j}.
```

## 3. Finite low-shell block

For the finitely many shells `j<J_*`, use Cauchy-Schwarz in time:

```math
\|\Delta_j\omega\|_{L^1_tL^2_x(0,T)}
\le T^{1/2}\|\Delta_j\omega\|_{L^2_tL^2_x(0,T)}
\le T^{1/2}\|\omega\|_{L^2_tL^2_x(0,T)}.
```

Therefore

```math
\sum_{j<J_*}2^{3j/2}\|\Delta_j\omega\|_{L^1_tL^2_x}
\le
T^{1/2}\|\omega\|_{L^2_tL^2_x}
\sum_{j<J_*}2^{3j/2}<\infty.
```

## 4. HFG replay

For `j\ge J_*`, the carrier low-mode bound absorbs the diagonal low-strain
term. High-high terms are absorbed by the near-diagonal cubic-tail estimate,
and collar terms are absorbed by the carrier collar estimates. Thus

```math
cascade_j(t)
\le
\varepsilon\nu2^{2j}\|\Delta_j\omega\|_2^2
+C_\varepsilon2^{-2j}\|\nabla\omega(t)\|_2^2.
```

The damped shell estimate gives

```math
\sum_{j\ge J_*}2^{3j/2}\|\Delta_j\omega\|_{L^1_tL^2_x}<\infty.
```

Combining with the finite low-shell block yields

```math
HFG:
\qquad
\sum_{j\ge0}2^{3j/2}\|\Delta_j\omega\|_{L^1_tL^2_x}<\infty.
```

## 5. Production replay

By Bernstein,

```math
HFG\Longrightarrow \int_0^T\|\omega(t)\|_{B^0_{\infty,1}}dt<\infty.
```

The critical vorticity bound yields

```math
Part+Field+\mathfrak A_{N,Q}
```

on every retained approach family. Hence

```math
H1+H2+H6+ORIGIN.Retain.
```

The installed H3-H5 packet replays to give

```math
LCI.A+CJ.A_{low}.7+FCI.5f+OFP.A+CFI.A+End_{NS}.
```

## Boundary

This tranche closes the carrier route conditionally under Osgood-subcritical
`\Phi_s`. If there are \(c>0\), \(p>1\), and \(R>0\) such that
\(\Phi_s(r)\ge c r^p\) for \(r\ge R\), then
\(\int_R^\infty dr/\Phi_s(r)\le (c(p-1)R^{p-1})^{-1}<\infty\); the scalar
comparison ODE permits finite-time escape.  The lifted energy route therefore
requires a sharper structure theorem for `\Phi_s`.
