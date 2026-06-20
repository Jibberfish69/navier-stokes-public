# MPP Forward-Gold Heat-Scale Coefficient Throttle Direct Test

Date: 2026-06-19

## Status

Direct test complete.  The same-packet coefficient throttle needed by
`SelectedSourceSquareCarrierDomination.A` is not supplied by the current energy,
enstrophy, Bernstein, pressure, or fixed-cutoff coefficient inputs.

The target throttle is

```math
\lambda_j^+(x,t)
:=
\left[
e_j(x,t)\cdot S_{<j}^{loc}(x,t)e_j(x,t)
\right]_+
\le
C\nu 2^{2j}
```

on the selected heat packet, or at least a source-weighted substitute strong
enough to control

```math
\int |w_j|^2\lambda_j^+\,dx.
```

This note sharpens the obstruction: energy-level dissipation can make the
coefficient residence finite on each heat window, but it does not force the
terminal residence to vanish or become summably impossible over a Zeno chain.

## 1. The exact coefficient target

Let \(r_j=2^{-j}\) and let

```math
I_j=[t_j-\tau_j,t_j],
\qquad
\alpha_t {r_j^2\over\nu}
\le
\tau_j
\le
A_t {r_j^2\over\nu}.
\tag{HCB.1}
```

The selected positive carrier is

```math
\left[
\langle S_{<j}^{loc}w_j,w_j\rangle
\right]_+
=
|w_j|^2\lambda_j^+,
\qquad
\lambda_j^+
=
\left[
e_j\cdot S_{<j}^{loc}e_j
\right]_+.
\tag{HCB.2}
```

The heat-scale viscous clock is

```math
\nu r_j^{-2}=\nu 2^{2j}.
\tag{HCB.3}
```

Thus a pointwise same-packet throttle would be

```math
\lambda_j^+\le C_\lambda\nu 2^{2j}.
\tag{HCB.4}
```

The integrated version needed for scalar packet residence is

```math
\int_{I_j}\lambda_j^+(t)\,dt\le C_T,
\tag{HCB.5}
```

and the source-square carrier bridge needs the stronger source-weighted product
control

```math
\int |w_j|^2\lambda_j^+\,dx
\le
C_S\,T_j(t)+Legal_j(t)
\tag{HCB.6}
```

on the same selected packet.

## 2. Bernstein plus energy is too large pointwise

Bernstein gives, with a fixed Littlewood--Paley constant \(C_B\),

```math
\|S_{<j}^{loc}(t)\|_\infty
\le
C_B
\sum_{k<j}2^{5k/2}\|\Delta_k u(t)\|_2.
\tag{HCB.7}
```

The energy bound gives \(\|\Delta_k u(t)\|_2\le \|u(t)\|_2\le E_0^{1/2}\).
For the fixed constant

```math
C_{B,E}
:=
C_B\sum_{m\ge1}2^{-5m/2},
\tag{HCB.8a}
```

this gives

```math
\|S_{<j}^{loc}(t)\|_\infty
\le
C_{B,E}E_0^{1/2}2^{5j/2}.
\tag{HCB.8}
```

To imply `(HCB.4)`, one would need

```math
C_{B,E}E_0^{1/2}2^{5j/2}
\le
C_\lambda\nu 2^{2j},
\qquad\text{equivalently}\qquad
E_0^{1/2}2^{j/2}\le {C_\lambda\over C_{B,E}}\nu.
\tag{HCB.9}
```

This fails uniformly as \(j\to\infty\).  Energy and Bernstein are half a power
too weak at the pointwise coefficient level.

## 3. Pointwise enstrophy gives a conditional height cap only

Let the instantaneous viscous dissipation be

```math
\mathcal D(t)
:=
\nu\sum_k2^{2k}\|\Delta_k u(t)\|_2^2.
\tag{HCB.10}
```

Using Cauchy--Schwarz in `(HCB.7)`,

```math
\begin{aligned}
\|S_{<j}^{loc}(t)\|_\infty
&\le
C_B
\sum_{k<j}2^{3k/2}\bigl(2^k\|\Delta_k u(t)\|_2\bigr) \\
&\le
C_B
\left(\sum_{k<j}2^{3k}\right)^{1/2}
\left(\sum_{k<j}2^{2k}\|\Delta_k u(t)\|_2^2\right)^{1/2} \\
&\le
C_D
2^{3j/2}\left({\mathcal D(t)\over\nu}\right)^{1/2},
\end{aligned}
\tag{HCB.11}
```

where \(C_D=C_B(\sum_{m\ge1}2^{-3m})^{1/2}\).

To force the heat-scale throttle `(HCB.4)`, `(HCB.11)` requires

```math
C_D2^{3j/2}\left({\mathcal D(t)\over\nu}\right)^{1/2}
\le
C_\lambda\nu2^{2j},
\tag{HCB.12}
```

or

```math
\mathcal D(t)\le
\left({C_\lambda\over C_D}\right)^2\nu^3 2^j.
\tag{HCB.13}
```

The global energy inequality gives

```math
\int_0^{T_*}\mathcal D(t)\,dt<\infty,
\tag{HCB.14}
```

not the pointwise height cap `(HCB.13)` on selected terminal heat windows.

## 4. Integrated heat-window estimate and the missing rate

Integrating `(HCB.11)` over \(I_j\) gives

```math
\int_{I_j}\|S_{<j}^{loc}(t)\|_\infty\,dt
\le
C_D
2^{3j/2}\nu^{-1/2}|I_j|^{1/2}
\left(\int_{I_j}\mathcal D(t)\,dt\right)^{1/2}.
\tag{HCB.15}
```

Since `(HCB.1)` gives \(|I_j|\le A_t2^{-2j}/\nu\),

```math
\int_{I_j}\|S_{<j}^{loc}(t)\|_\infty\,dt
\le
C_DA_t^{1/2}
2^{j/2}\nu^{-1}
\left(\int_{I_j}\mathcal D(t)\,dt\right)^{1/2}.
\tag{HCB.16}
```

Thus the coefficient residence bound
\(\int_{I_j}\|S_{<j}^{loc}(t)\|_\infty\,dt\le C_R\) would follow from

```math
\int_{I_j}\mathcal D(t)\,dt
\le
\left({C_R\over C_DA_t^{1/2}}\right)^2
\nu^2 2^{-j}
=
\left({C_R\over C_DA_t^{1/2}}\right)^2
\nu^2 r_j.
\tag{HCB.17}
```

This is exactly the scale of the viscous energy bill for a critical feed event.
It is not a consequence of finite total dissipation.  Absolute continuity of
\(\mathcal D(t)\,dt\) gives

```math
\int_{I_j}\mathcal D(t)\,dt\to0
\tag{HCB.18}
```

as \(|I_j|\to0\), but `(HCB.17)` asks for a specific rate, \(O(r_j)\), not just
smallness.

For example, the scalar budget model

```math
\int_{I_j}\mathcal D(t)\,dt=B_j,
\qquad
B_j={1\over j^2},
\qquad
r_j=2^{-j},
\tag{HCB.19}
```

has \(\sum_jB_j<\infty\), while `(HCB.17)` fails badly.  This model is not a
Navier--Stokes solution; it records the exact weakness of the installed
\(L^1_t\) dissipation ledger.

## 5. Critical heat feed is compatible with finite dissipation

For a source-balanced heat-scale coefficient model, assume fixed constants
\(0<\alpha_\lambda\le A_\lambda<\infty\) such that

```math
\alpha_\lambda\nu r_j^{-2}
\le
\lambda_j^+(t)
\le
A_\lambda\nu r_j^{-2}
\quad\text{on}\quad
I_j.
\tag{HCB.20}
```

Together with `(HCB.1)`, this gives the exact residence bounds

```math
\alpha_\lambda\alpha_t
\le
\int_{I_j}\lambda_j^+(t)\,dt
\le
A_\lambda A_t.
\tag{HCB.21}
```

If the event occupies a spatial packet \(B_j\) with

```math
c_xr_j^3
\le
|B_j|
\le
C_xr_j^3,
\tag{HCB.22}
```

then its spacetime packet \(Q_j=I_j\times B_j\) satisfies

```math
c_x\alpha_t{r_j^5\over\nu}
\le
|Q_j|
\le
C_xA_t{r_j^5\over\nu}.
\tag{HCB.22a}
```

If, on that packet, the strain has the matching fixed-amplitude bounds

```math
c_S\nu r_j^{-2}
\le
|S(t,x)|
\le
C_S\nu r_j^{-2},
\tag{HCB.22b}
```

then the \(L^2\) strain bill obeys

```math
c_S^2c_x\alpha_t\,\nu r_j
\le
\int_{Q_j}|S|^2\,dxdt
\le
C_S^2C_xA_t\,\nu r_j,
\tag{HCB.23}
```

and the viscous energy bill is

```math
c_S^2c_x\alpha_t\,\nu^2 r_j
\le
\nu\int_{Q_j}|S|^2\,dxdt
\le
C_S^2C_xA_t\,\nu^2 r_j.
\tag{HCB.24}
```

Along a dyadic Zeno chain, \(\sum_j r_j<\infty\).  Therefore the coefficient can
match the viscous heat clock on every selected scale while the energy-level
dissipation bill remains summable.

This is why `(HCB.4)` is not a forward-gold consequence of participation plus
energy.  The participation law gives the coupled local balance, but the
energy-level currency is subcritical for the terminal heat-scale coefficient.

## 6. What would close the throttle

The missing statement is one of the following genuinely stronger inputs:

```math
\boxed{
\text{a selected heat-window dissipation rate }
\int_{I_j}\mathcal D(t)\,dt
\le
C_R'\nu^2r_j
}
\tag{HCB.25}
```

strong enough to control coefficient residence,

```math
\boxed{
\text{selected }L^{5/2}_{t,x}\text{ strain or }L^5_{t,x}\text{ velocity/CKN
reserve}
}
\tag{HCB.26}
```

strong enough to make each critical feed event cost order one, or

```math
\boxed{
\text{native source-square/product control of }
\int |w_j|^2\lambda_j^+\,dx
}
\tag{HCB.27}
```

which bypasses the bare coefficient estimate and charges the actual selected
carrier.

Equivalently, the surviving unsigned selected product must be routed through

```math
SelectedPositivePolarSaturation.A,
\qquad
TerminalSignedSaturation.A,
\qquad
NoFreeTerminalZenoDonorChain.A.
\tag{HCB.28}
```

Those are not cosmetic alternatives: they are the exact missing ways to prevent
the positive selected lobe from being fed by an unsaturated terminal Zeno donor
chain.

## Verdict

The heat-scale coefficient throttle is not installed.

```math
\boxed{
\text{Energy controls total dissipation, but it does not give the }
O(r_j)\text{ heat-window dissipation rate needed for coefficient residence.}
}
\tag{HCB.29}
```

So `CoeffBound.A` remains open as an independent forward-gold supplier.  The
valid next reductions are:

```math
CoeffBound.A
\Leftarrow
\text{selected heat-window dissipation rate}
\quad\text{or}\quad
SelectedCriticalStrainCarleson.A
\quad\text{or}\quad
NativeSourceSquareProductControl.A,
\tag{HCB.30}
```

while failure of all three returns to the signed-saturation / no-free-terminal
Zeno donor-chain branch.
