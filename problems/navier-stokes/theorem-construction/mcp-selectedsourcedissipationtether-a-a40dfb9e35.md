# SelectedSourceDissipationTether.A direct attempt

## Status

Failed direct proof.  The attempt gives a sharper obstruction: tethering the selected source to CKN dissipation is not enough unless the CKN dissipation measure itself has a terminal-strip modulus on the selected `B_ASAC` windows.

## Target

Prove a quantitative domination

```math
\mu_m^{src,+}\ll \mathcal D_m^{CKN}
```

on the selected same-fluid `B_ASAC` terminal windows, strong enough to imply

```math
\mu_m^{src,+}(B_R\times[-\varepsilon,0])
\le \omega_R(\varepsilon)+o_m(1),
\qquad \omega_R(\varepsilon)\downarrow0.
```

The local source carrier is

```math
[\langle S_{<j}^{loc}w_j,w_j\rangle]_+.
```

The CKN dissipation carrier is

```math
\mathcal D^{CKN}=\nu |\nabla u|^2\,dxdt.
```

## Dyadic attempt

On a `j`-packet,

```math
[\langle S_{<j}^{loc}w_j,w_j\rangle]_+
\le |S_{<j}^{loc}| |w_j|^2.
```

Using the packet Bernstein relation
`\|w_j\|_{L^2(P)}^2\le C_B2^{-2j}\|\nabla w_j\|_{L^2(P)}^2`,

```math
\int_P |S_{<j}^{loc}| |w_j|^2
\le C_B2^{-2j}\|S_{<j}^{loc}\|_{L^\infty(P)}
\int_P |\nabla w_j|^2.
```

This is absorbable by dissipation only on the subregion where

```math
|S_{<j}^{loc}|\ll \nu 2^{2j}.
```

On the complementary region, Cauchy/Young gives

```math
|S_{<j}^{loc}| |w_j|^2
\le \eta\nu |\nabla w_j|^2
+C_\eta\nu^{-1}2^{-2j}|S_{<j}^{loc}|^2|w_j|^2.
```

The second term is the square-source / active-reserve carrier.  Controlling it is route-equivalent to `LocalPositiveSourceCarleson.A`, `ScaleCriticalTreeCarleson.A`, or `PositiveRemainderDepletion.A`.

Thus the pointwise tether does not close without importing the existing source-reserve wall.

## Quantitative CKN attempt

External quantitative CKN methods suggest controlling terminal source concentration by quantitative absolute continuity of dissipation energy.  This would work if two inputs were available:

```math
\mu_m^{src,+}\le C\mathcal D_m^{CKN}
```

on selected windows, and

```math
\mathcal D_m^{CKN}(B_R\times[-\varepsilon,0])
\le \omega_R(\varepsilon)+o_m(1).
```

The second statement is a no-terminal-dissipation-atom property for the rescaled selected sequence.  It is stronger than finite total dissipation.  Bounded `L^1` families of densities can converge to time atoms.

The witness density

```math
g_m(s)=m\mathbf 1_{(-1/m,0]}(s)
```

has unit `L^1` mass and converges to `\delta_{s=0}`.  The same obstruction applies to weak limits of dissipation densities unless uniform integrability or a reverse Hölder estimate is supplied.

## Energy-measure route

Energy-measure concentration theory can rule out some terminal concentration under extra `L^q_tL^p_x`, Type-I, or density hypotheses.  The current `B_ASAC` production does not yield those hypotheses.  Therefore this route also requires a new production theorem.

## Verdict

`SelectedSourceDissipationTether.A` is not proved.

The direct attempt isolates two necessary new inputs:

```math
SourceToDissipationTether.A:
\mu_m^{src,+}\le C\mathcal D_m^{CKN}+\text{legal losses},
```

and

```math
NoTerminalDissipationAtom_{B_ASAC}.A:
\mathcal D_m^{CKN}(B_R\times[-\varepsilon,0])
\le \omega_R(\varepsilon)+o_m(1).
```

The first input fails by a square-source remainder unless an active reserve is added.  The second input is not supplied by finite energy/dissipation alone.  Hence the route remains open at a sharper pair of analytic atoms.
