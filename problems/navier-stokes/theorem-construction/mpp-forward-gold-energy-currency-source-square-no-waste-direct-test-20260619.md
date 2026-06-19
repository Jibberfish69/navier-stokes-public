# MPP Forward-Gold Energy-Currency Source-Square / No-Waste Direct Test

Date: 2026-06-19

## Status

Direct test complete.  After correcting the dynamic-tail calculation, the
remaining source-square supplier must be stated in the native energy currency of
the local shell balance.

That source-square / reverse-Holder / no-waste theorem is not installed by the
current inputs.  It is the same source-balanced heat-scale pulse wall recorded
by the residual-refill spine.

## 1. Native residual-refill currency

Use the residual-refill notation:

```math
u_j=\Delta_j u,
\qquad
E_j(t)=2^{2j}\|u_j(t)\|_2^2,
\qquad
D_j(t)=2^{4j}\|u_j(t)\|_2^2 .
\tag{ECSS.1}
```

The shell balance is

```math
{1\over2}{d\over dt}E_j(t)+c_0\nu D_j(t)
\le
\Phi_j^+(t),
\tag{ECSS.2}
```

where

```math
\Phi_j(t)
:=
-2^{2j}
\left\langle
\Delta_j\mathbb P\nabla\cdot(u\otimes u),
u_j
\right\rangle .
\tag{ECSS.3}
```

Solving `(ECSS.2)` from a legal entrance time \(t_0\) gives the residual refill
load

```math
R_j^{src,+}(t;t_0)
:=
\int_{t_0}^t
e^{-c_0\nu2^{2j}(t-s)}
\Phi_j^+(s)\,ds,
\tag{ECSS.4}
```

and in \(D_j\)-currency

```math
D_j^{res}(t;t_0)
:=
2^{2j}R_j^{src,+}(t;t_0).
\tag{ECSS.5}
```

The residual object removes exact heat descendants.  A large raw heat-decaying
tail is not counted.  Only positive nonlinear refill remains.

## 2. The source-square theorem that would work

The residual LPAS / source-square target has the form

```math
\int_I
\mathcal P_j^\downarrow(t)\,2^{-j}
\left(D_j^{res}(t;t_0)\right)^2dt
\le
\text{small tail}+\text{legal},
\tag{ECSS.6}
```

or, in a version without the lower-prefix multiplier,

```math
\int_I2^{-j}
\left(D_j^{res}(t;t_0)\right)^2dt
\le
\text{small tail}+\text{legal}.
\tag{ECSS.7}
```

A forcing-square version would control the same quantity through

```math
\int_I2^{-j}\left(\Phi_j^+(t)\right)^2dt
\le
\text{small tail}+\text{legal},
\tag{ECSS.8}
```

plus the standard heat convolution estimate from `(ECSS.4)` to `(ECSS.5)`.
On a heat-scale interval, the operator

```math
\Phi_j^+
\mapsto
2^{2j}\int_{t_0}^t
e^{-c_0\nu2^{2j}(t-s)}\Phi_j^+(s)\,ds
\tag{ECSS.9}
```

is bounded on \(L^2_t\).  Thus `(ECSS.8)` is a genuine supplier for `(ECSS.7)`.

This is the exact energy-currency form of the missing reverse-Holder /
source-square theorem.

## 3. What the installed ledger gives instead

Integrating `(ECSS.2)` gives only

```math
\int_I D_j(t)\,dt
\le
C_\nu E_j(a)
+C_\nu\int_I\Phi_j^+(t)\,dt.
\tag{ECSS.10}
```

This is first-moment control.  It does not imply `(ECSS.7)` or `(ECSS.8)`.

Same-fluid participation identifies \(\Phi_j^+\) as native to the coupled
pressure-viscosity-incompressibility-neighbor ledger.  It does not improve
first-moment control to a square, weak-\(L^p\), Orlicz, dwell, or height bound.

## 4. Heat-scale source-balanced pulse

Let

```math
h_j:=2^{-2j},
\qquad
I_j=(T-h_j,T],
\tag{ECSS.11}
```

and set

```math
D_j(t)=H_j{\bf 1}_{I_j}(t),
\qquad
H_j:=2^{3j/2}.
\tag{ECSS.12}
```

Then the first moment is small:

```math
\int_{I_j}D_j(t)\,dt
=
H_jh_j
=
2^{-j/2}
\longrightarrow0.
\tag{ECSS.13}
```

But the scale-critical square is order one:

```math
\int_{I_j}2^{-j}D_j(t)^2dt
=
2^{-j}H_j^2h_j
=1.
\tag{ECSS.14}
```

The source-balanced choice

```math
\Phi_j^+(t)=c_0\nu D_j(t)
\tag{ECSS.15}
```

keeps the shell alive against viscous damping and has the same vanishing
first-moment cost:

```math
\int_{I_j}\Phi_j^+(t)\,dt
\simeq
\nu2^{-j/2}
\longrightarrow0.
\tag{ECSS.16}
```

It also has the forbidden square cost:

```math
\int_{I_j}2^{-j}\left(\Phi_j^+(t)\right)^2dt
\simeq
\nu^2.
\tag{ECSS.17}
```

So `(ECSS.8)` would kill the pulse, but finite \(L^1_t\) source mass does not.

## 5. Heat convolution does not add the missing exponent

The residual load `(ECSS.5)` is a heat convolution of \(\Phi_j^+\).  For the
source-balanced model `(ECSS.15)`, the convolution stays comparable to \(D_j\)
through the active heat window.  It removes inherited heat descendants, but it
does not turn a finite \(L^1_t\) source into an \(L^2_t\) source.

Equivalently:

```math
L^2_t\text{ source}
\Longrightarrow
L^2_t\text{ residual refill},
\tag{ECSS.18}
```

while current inputs give only

```math
L^1_t\text{ source}
\Longrightarrow
L^1_t\text{ residual refill}.
\tag{ECSS.19}
```

The terminal time-face atom lives precisely between `(ECSS.18)` and
`(ECSS.19)`.

## 6. No-waste Lyapunov form

A strict no-waste theorem would also work.  In this currency it would say that
the source-balanced branch produces a coercive drop:

```math
-{d\over ds}L_j(s)
\ge
c\,2^{-j}\left(D_j^{res}(s)\right)^2
-Legal_j(s),
\tag{ECSS.20}
```

or the lower-prefix version with
\(\mathcal P_j^\downarrow2^{-j}(D_j^{res})^2\).  Summing over terminal packets
would then give the missing unweighted reserve.

Current local energy and material stress identities are balances with
sign-indefinite pressure/convection flux.  They provide visibility, not the
strict positive drop `(ECSS.20)`.

Thus strict no-waste is not a smaller installed theorem; it is another form of
the unweighted terminal critical-action reserve.

## 7. Relation to the corrected dynamic-tail test

The corrected dynamic-tail note shows that a differentiated dissipation-tail
equation

```math
T_k'+c\nu2^{2k}T_k\le B_{>k}^+
\tag{ECSS.21}
```

would overcharge heat-scale pulses by one extra derivative.  The native route is
instead `(ECSS.2)`.

Once the route is kept in `(ECSS.2)` currency, the obstruction is exactly the
same as `(ECSS.14)`--`(ECSS.17)`: first-moment source/dissipation can vanish
while the scale-critical square remains order one.

## Verdict

The energy-currency supplier is not installed.

```math
\boxed{
\text{finite }L^1_t\text{ native source/refill mass}
\not\Rightarrow
\text{scale-critical source-square or residual LPAS}.
}
\tag{ECSS.22}
```

The direct route closes only conditionally:

```math
\boxed{
\text{energy-currency source-square / reverse-Holder}
\quad\text{or}\quad
\text{strict no-waste Lyapunov}
\Longrightarrow
\text{terminal heat-scale pulse excluded}.
}
\tag{ECSS.23}
```

Those inputs are exactly `ResidualSourceBalancedLPAS.A`,
`SourceSquareReserve.A`, `SelectedCriticalStrainCarleson.A`,
`StrictRescaledNoWasteLyapunov.A`, or the broader
`UnweightedTerminalCriticalActionReserve.A`.

Absent one of them, the surviving object is the same terminal residual
source-balanced pulse already isolated by the residual-refill spine.
