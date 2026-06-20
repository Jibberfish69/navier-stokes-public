# MPP Forward-Gold Active Height / Enstrophy Throttle Direct Attempt

Date: 2026-06-20

## Status

Direct active-height/enstrophy throttle test complete.

The branch does not close the forward-gold anti-atom theorem. It proves the exact
calculus of the time-scenario:

```math
\boxed{
\text{fixed positive radius removes the radius discount, but heat-scale
terminal pulses remain compatible with current inputs.}
}
\tag{AHET.0}
```

The only participation input used here is the equation-level same-fluid coupling:

```math
D_tu=-\nabla p+\nu\Delta u,
\qquad
\nabla\cdot u=0.
\tag{AHET.1}
```

This coupling explains why the dangerous terminal window has heat length
\(r^2/\nu\). It does not by itself give a pointwise amplitude cap or an
unweighted terminal action budget.

## 1. The active-height quantity would close the pulse

Use the same notation as the active-window height test:

```math
D_\ell(t):=\nu\|\nabla u_\ell(t)\|_2^2,
\qquad
T_k(t):=\sum_{\ell>k+4}D_\ell(t).
\tag{AHET.2}
```

The native source-square reserve is

```math
\mathcal R_N(W)
:=
\int_W\sum_{k>N}2^kT_k(t)^2\,dt.
\tag{AHET.3}
```

The global active tail height is

```math
H_N(W)
:=
\sup_{t\in W}\sup_{k>N}2^kT_k(t).
\tag{AHET.4}
```

Then

```math
T_k(t)\le H_N(W)2^{-k},
\tag{AHET.5}
```

and therefore

```math
\mathcal R_N(W)
\le
H_N(W)\int_W\sum_{k>N}T_k(t)\,dt
\le
C\,|W|\,H_N(W)^2\,2^{-N}.
\tag{AHET.6}
```

Thus a uniform global active-height theorem would imply

```math
\mathcal R_N(W_N)\to0
\qquad(N\to\infty)
\tag{AHET.7}
```

on terminal windows with bounded physical length. This would close the native
source-square reserve.

The cost is that `(AHET.4)` is already continuation-strength. Since

```math
T_k(t)
=
\sum_{\ell>k+4}\nu 2^{2\ell}\|u_\ell(t)\|_2^2,
\tag{AHET.8}
```

a uniform height bound gives

```math
\sum_{\ell>N}\nu 2^{2\ell}\|u_\ell(t)\|_2^2
\le
C2^{-N}
\tag{AHET.9}
```

uniformly on the terminal window, after a finite index shift. Combined with the
fixed low-shell energy bound, this is a uniform terminal \(H^1\)-tail statement.

So active height is not a bookkeeping consequence of participation. It is a real
throttle theorem.

## 2. The heat-scale pulse is exactly what active height must forbid

Let

```math
h_m=2^{-2m},
\qquad
I_m=(T_\ast-h_m,T_\ast],
\qquad
A_m=2^{-3m/2},
\tag{AHET.10}
```

and place one dissipation packet at shell \(m+5\):

```math
D_{m+5}(t)=A_mh_m^{-1}{\bf 1}_{I_m}(t).
\tag{AHET.11}
```

Then the first moment tends to zero:

```math
\int_{I_m}\sum_{\ell>m}D_\ell(t)\,dt
=A_m
\to0.
\tag{AHET.12}
```

But the \(k=m\) source-square reserve is exactly \(1\):

```math
\int_{I_m}2^mT_m(t)^2\,dt
=
2^mA_m^2h_m^{-1}
=1.
\tag{AHET.13}
```

The active height blows up:

```math
H_N(I_m)
\ge
2^mA_mh_m^{-1}
=2^{3m/2}.
\tag{AHET.14}
```

This is the mathematical form of the time-face enemy. At a fixed positive radius,
physical weighted ledgers and normalized unweighted ledgers are comparable. Along
the heat scale \(h_m=r_m^2/\nu\) after fixing the heat constant, the allowed rate
grows as the window shrinks, so the normalized source-square bill can remain
fixed positive while the physical first moment tends to zero.

## 3. Enstrophy exposes the source, but does not bound it

The enstrophy identity is

```math
{1\over2}{d\over dt}\|\omega\|_2^2
+\nu\|\nabla\omega\|_2^2
=
\int(S\omega)\cdot\omega\,dx.
\tag{AHET.15}
```

The right side is the same vortex-stretching source that appears in the native
trilinear carrier.  Calderon--Zygmund, Sobolev, and interpolation give

```math
\left|\int(S\omega)\cdot\omega\,dx\right|
\le
C\|\nabla u\|_2^{3/2}\|\nabla\omega\|_2^{3/2}.
\tag{AHET.16}
```

Young's inequality yields

```math
\left|\int(S\omega)\cdot\omega\,dx\right|
\le
{\nu\over2}\|\nabla\omega\|_2^2
+C\nu^{-3}\|\nabla u\|_2^6.
\tag{AHET.17}
```

Writing \(Y(t)=\|\nabla u(t)\|_2^2\), this gives the Riccati-type inequality

```math
Y'(t)
+
\nu\|\nabla^2u(t)\|_2^2
\le
C\nu^{-3}Y(t)^3.
\tag{AHET.18}
```

The comparison equation

```math
Z'(t)=C\nu^{-3}Z(t)^3
\tag{AHET.19}
```

permits finite-time growth. Thus enstrophy does not supply the upper budget
needed for active height, critical strain, or the source-square reserve. It
identifies vortex stretching as the live feed channel.

## 4. The trilinear role

The native same-carrier feed meter is

```math
\Phi_j^+(t)
:=
\int
\left[
\langle S_{<j}^{loc}(t,x)w_j(t,x),w_j(t,x)\rangle
\right]_+
dx.
\tag{AHET.20}
```

Holder gives the scale-critical factorization

```math
\int_{Q_j}|S_{<j}^{loc}|\,|w_j|^2\,dxdt
\le
\|S_{<j}^{loc}\|_{L^{5/2}(Q_j)}
\|w_j\|_{L^{10/3}(Q_j)}^2.
\tag{AHET.21}
```

The energy inequality supplies the velocity side,

```math
u\in L^{10/3}_{t,x},
\tag{AHET.22}
```

and only the energy-level strain side,

```math
S\in L^2_{t,x}.
\tag{AHET.23}
```

The missing half-power is

```math
S\in L^{5/2}_{t,x}
\quad\text{on the selected heat-scale family.}
\tag{AHET.24}
```

On a heat-scale critical packet with radius \(r_j\), set
\(S=\nu r_j^{-2}\Sigma\) on \(Q_j\), where
\(|Q_j|=r_j^3(r_j^2/\nu)\).  Define

```math
C_2(\Sigma):=\int_{Q_1}|\Sigma|^2\,dyds,
\qquad
C_{5/2}(\Sigma):=\int_{Q_1}|\Sigma|^{5/2}\,dyds.
\tag{AHET.25}
```

Then

```math
\int_{Q_j}|S|^2\,dxdt
=
\nu r_jC_2(\Sigma),
\qquad
\int_{Q_j}|S|^{5/2}\,dxdt
=
\nu^{3/2}C_{5/2}(\Sigma).
\tag{AHET.26}
```

So energy-level strain can sum over a Zeno cascade, while critical strain would
charge each retained heat-scale feed by the fixed positive amount
\(\nu^{3/2}C_{5/2}(\Sigma)\).

## 5. Direct result of this branch

This branch proves the following exact reduction:

```math
\boxed{
\begin{gathered}
\text{ActiveWindowHeight.A would close SourceSquareReserve.A,}\\
\text{but ActiveWindowHeight.A is continuation-strength and is not supplied}\\
\text{by energy, local energy, participation, or enstrophy.}
\end{gathered}
}
\tag{AHET.27}
```

Equivalently:

```math
\boxed{
\begin{gathered}
\text{enstrophy gives the right high-derivative dissipation term,}\\
\text{but vortex stretching is exactly the uncontrolled native trilinear feed.}
\end{gathered}
}
\tag{AHET.28}
```

Thus the remaining noncircular forward-gold suppliers are unchanged but now
sharpened to the same-carrier endpoint-time form:

```math
\boxed{
\begin{gathered}
\text{global active height / selected height plus log-tail,}\\
\text{same-carrier SourceSquareReserve.A,}\\
\text{SelectedCriticalStrainCarleson.A plus endpoint carrier UI,}\\
\text{strict rescaled no-waste Lyapunov / critical-element rigidity,}\\
\text{or polar saturation / no-free infinite Zeno donor-chain control.}
\end{gathered}
}
\tag{AHET.29}
```

The theorem is not solved by this branch. The branch closes as a failed direct
supplier attempt with an exact obstruction: current Navier--Stokes balances see
the heat-scale pulse, but do not provide the unweighted terminal reserve needed
to forbid it.
