# FIRP.A0 Optional Exact Branch Parking Note

## Status

Exact same-depth pressure branch parked.

## Exact Branch

The exact fixed-increment resonant pressure theorem is

```math
FIRP.A0:
\qquad
\mathfrak Q_{N,\eta}^{press,loc,src,RR,\alpha}\in L^1(I).
```

The frozen finite-net reduction is already installed:

```math
\left[
\mathfrak Q_{N,\eta^\ell}^{press,loc,src,RR,\alpha}\in L^1(I)
\quad(1\le\ell\le M_\varepsilon)
\right]
\Longrightarrow
\mathfrak Q_{N,\rho,\psi}^{press,RR,\varepsilon,\alpha}\in L^1(I).
```

So the remaining exact wall is the single-increment theorem `FIRP.A0` itself.

## Failed Repair

The attempted repair was the fixed-radius Holder-to-energy conversion

```math
H2E.5\Lambda:
\mathfrak H_{N,\eta}^{press,loc,4\Lambda,\alpha}
\le C_{FIRP}
\Gamma^{low}\mathcal F^\varepsilon.
```

This fails at same depth. A finite frozen increment family cannot control the fixed-radius seminorm

```math
[U_q]_{C^{0,\alpha}(B(c_j,5\Lambda))}.
```

High-frequency modes can be nearly periodic along every finite increment while retaining arbitrarily large fixed-radius Hölder seminorm. Therefore finite increment energy does not supply `FIRP.A0`.

## Mainline Separation

The strengthened source route uses the receiver/collar pressure path:

```math
CSP.B3a1[N+2,N+2,\delta+5\Lambda]
\Longrightarrow
FPC.H
\Longrightarrow
FFPB.A0
\Longrightarrow
FFSRC.A
\Longrightarrow
FCI.5f.
```

The averaged finite-energy mainline uses

```math
SCF_{base}+SGC.A_{a.e.}+ATD_m^\varepsilon
\Longrightarrow
DTC.A_{avg}
\Longrightarrow
AVG.RCV.A
\Longrightarrow
LCI.A_{avg}
\Longrightarrow
CFI.A_{avg}
\Longrightarrow
READ.END
\Longrightarrow
End_{NS}.
```

Neither route requires `FIRP.A0` as a blocker.

## Parking Decision

`FIRP.A0` remains an optional exact branch. It should be attacked only if a new same-depth mechanism appears, such as:

```math
\text{fixed-radius Besov/Hölder carrier from a continuum increment family,}
```

```math
\text{pressure cancellation beyond finite-increment control,}
```

or

```math
\text{a true same-depth Sobolev/Hölder supplier independent of the receiver/collar route.}
```

Until then, the main route proceeds through the strengthened source branch and the averaged finite-energy route with terminal readout.
