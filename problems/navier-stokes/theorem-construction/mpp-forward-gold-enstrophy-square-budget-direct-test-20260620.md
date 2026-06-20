# MPP Forward-Gold Enstrophy Square-Budget Direct Test

Date: 2026-06-20

## Status

Direct test complete.

The question tested here is whether the enstrophy identity can supply the
missing same-carrier square budget for the terminal heat-scale pulse:

```math
\int_{I_j}\lambda_j\bigl(\Pi_j^{part,+}(t)\bigr)^2\,dt
\le
Legal_j+o_j(1).
\tag{ESB.1}
```

It cannot do this from the installed inputs.  Enstrophy identifies the native
vortex-stretching feed, but it gives a linear production ledger.  The heat-scale
terminal pulse has vanishing linear production and fixed normalized square
reserve.

## 1. Enstrophy sees the right source

Let

```math
\omega=\nabla\times u,
\qquad
S={1\over2}\left(\nabla u+\nabla u^T\right).
\tag{ESB.2}
```

For smooth preterminal Navier--Stokes solutions on \(\mathbb R^3\),

```math
{1\over2}{d\over dt}\|\omega(t)\|_2^2
+
\nu\|\nabla\omega(t)\|_2^2
=
\int_{\mathbb R^3}(S\omega)\cdot\omega\,dx.
\tag{ESB.3}
```

After localization and projection to a selected active packet, the positive
part of the same feed has the form

```math
\Phi_j^+(t)
:=
\int
\left[
\langle S_{<j}^{loc}(t,x)w_j(t,x),w_j(t,x)\rangle
\right]_+
dx.
\tag{ESB.4}
```

Thus enstrophy is not looking at the wrong object.  It sees the same
vortex-stretching channel that drives the native positive source carrier.

## 2. The square budget is stronger than the linear ledger

The square budget required by the terminal pulse route is

```math
B_j
:=
\int_{I_j}\lambda_j\bigl(\Phi_j^+(t)\bigr)^2\,dt.
\tag{ESB.5}
```

The linear production ledger is

```math
L_j
:=
\int_{I_j}\Phi_j^+(t)\,dt.
\tag{ESB.6}
```

The heat-scale normal form is exact.  For \(\lambda\ge1\), set

```math
I_\lambda=[0,\lambda^{-2}],
\qquad
\Phi_\lambda(t)=\lambda^{1/2}\mathbf 1_{I_\lambda}(t).
\tag{ESB.7}
```

Then

```math
L_\lambda
=
\int_{I_\lambda}\Phi_\lambda(t)\,dt
=
\lambda^{1/2}\lambda^{-2}
=
\lambda^{-3/2},
\tag{ESB.8}
```

while

```math
B_\lambda
=
\int_{I_\lambda}\lambda\Phi_\lambda(t)^2\,dt
=
\lambda\cdot\lambda\cdot\lambda^{-2}
=
1.
\tag{ESB.9}
```

Consequently, for every fixed \(C<\infty\),

```math
C L_\lambda
=
C\lambda^{-3/2}
<
1
=
B_\lambda
\qquad
\text{whenever }\lambda>C^{2/3}.
\tag{ESB.10}
```

So no estimate whose output is only a fixed multiple of the linear enstrophy
production ledger can imply `(ESB.1)`.

## 3. Cauchy only moves the burden to active height

For a nonnegative feed \(\Phi\) on \(I_j\), define the active height

```math
H_j:=\|\Phi\|_{L^\infty(I_j)}.
\tag{ESB.11}
```

Then the exact elementary estimate is

```math
\int_{I_j}\lambda_j\Phi(t)^2\,dt
\le
\lambda_jH_j\int_{I_j}\Phi(t)\,dt.
\tag{ESB.12}
```

For `(ESB.7)`,

```math
H_\lambda=\lambda^{1/2},
\qquad
\lambda H_\lambda L_\lambda
=
\lambda\cdot\lambda^{1/2}\cdot\lambda^{-3/2}
=
1.
\tag{ESB.13}
```

Thus the Cauchy route does not extract a new theorem from enstrophy.  It
replaces the missing square budget with the missing active-height throttle.

## 4. The global enstrophy estimate has the Riccati wall

The standard stretching estimate gives

```math
\left|
\int_{\mathbb R^3}(S\omega)\cdot\omega\,dx
\right|
\le
C\|\nabla u\|_2^{3/2}\|\nabla\omega\|_2^{3/2}.
\tag{ESB.14}
```

Young's inequality yields

```math
\left|
\int_{\mathbb R^3}(S\omega)\cdot\omega\,dx
\right|
\le
{\nu\over2}\|\nabla\omega\|_2^2
+
C\nu^{-3}\|\nabla u\|_2^6.
\tag{ESB.15}
```

Combining `(ESB.3)` and `(ESB.15)` gives

```math
{d\over dt}\|\nabla u(t)\|_2^2
\le
C\nu^{-3}\|\nabla u(t)\|_2^6.
\tag{ESB.16}
```

The comparison equation

```math
Y'(t)=C\nu^{-3}Y(t)^3
\tag{ESB.17}
```

has the explicit solution

```math
Y(t)
=
{Y(0)\over
\sqrt{1-2C\nu^{-3}Y(0)^2t}}
\tag{ESB.18}
```

on the interval where the denominator is positive.  Therefore the global
enstrophy inequality is a continuation criterion after a bound is supplied; it
does not itself supply the terminal square budget.

## 5. The critical strain currency is the exact missing half-power

Holder gives the same-carrier critical factorization

```math
\int_{Q_j}|S_{<j}^{loc}|\,|w_j|^2\,dxdt
\le
\|S_{<j}^{loc}\|_{L^{5/2}(Q_j)}
\|w_j\|_{L^{10/3}(Q_j)}^2.
\tag{ESB.19}
```

The energy inequality supplies

```math
u\in L^{10/3}_{t,x},
\qquad
S\in L^2_{t,x}.
\tag{ESB.20}
```

It does not supply

```math
S\in L^{5/2}_{t,x}
\tag{ESB.21}
```

on the selected heat-scale family.

This gap is exact by scaling.  Let \(r=\lambda^{-1}\), and set

```math
S_r(t,x)
=
\nu r^{-2}\Sigma\left({t\over r^2/\nu},{x\over r}\right)
\tag{ESB.22}
```

on

```math
Q_r=(-r^2/\nu,0]\times B_r.
\tag{ESB.23}
```

Changing variables \(s=\nu t/r^2\), \(y=x/r\) gives

```math
\int_{Q_r}|S_r|^2\,dxdt
=
\nu r
\int_{-1}^{0}\int_{B_1}|\Sigma(s,y)|^2\,dyds,
\tag{ESB.24}
```

and

```math
\int_{Q_r}|S_r|^{5/2}\,dxdt
=
\nu^{3/2}
\int_{-1}^{0}\int_{B_1}|\Sigma(s,y)|^{5/2}\,dyds.
\tag{ESB.25}
```

For \(r_j=2^{-j}\), the \(L^2\) strain bill in `(ESB.24)` is summable over a
Zeno cascade, while the \(L^{5/2}\) bill in `(ESB.25)` is fixed for every
nonzero profile \(\Sigma\).

## 6. Verdict

The enstrophy/vorticity-stretching route is exhausted as a direct forward-gold
supplier for `(ESB.1)`.

It proves visibility:

```math
\boxed{
\text{the terminal feed is the vortex-stretching/enstrophy production channel.}
}
\tag{ESB.26}
```

It does not prove square coercivity:

```math
\boxed{
\text{linear enstrophy production does not control the normalized square reserve.}
}
\tag{ESB.27}
```

The remaining noncircular suppliers are unchanged:

```math
\boxed{
\begin{gathered}
\text{same-carrier SourceSquareReserve.A,}\\
\text{SelectedCriticalStrainCarleson.A,}\\
\text{global or selected active-height control with terminal tail depletion,}\\
\text{strict pressure-corrected no-waste Lyapunov coercivity,}\\
\text{or polar saturation / no-free terminal Zeno donor-chain control.}
\end{gathered}
}
\tag{ESB.28}
```

After CM-test admission, failure of these forward suppliers is already a
retained terminal heat-scale pulse readout rather than a hidden enstrophy
shortcut.
