# HFG Replay From Carrier Low-Mode Export

Assume carrier export supplies active-shell low-mode strain suppression:

```math
\|\nabla S_{j-1}u(t)\|_{L^\infty}\le c\nu2^{2j}.
```

Then the dyadic vorticity cascade estimate closes. The low-mode part is absorbed by this bound; the high-high packet is absorbed by the near-diagonal cubic-tail argument; and the spill/collar terms are lower order by the carrier collar estimates. Hence

```math
cascade_j(t)\le \varepsilon\nu2^{2j}\|\Delta_j\omega\|_2^2+C_\varepsilon2^{-2j}\|\nabla\omega(t)\|_2^2.
```

Therefore

```math
\frac{d}{dt}\|\Delta_j\omega\|_2^2+c\nu2^{2j}\|\Delta_j\omega\|_2^2\le C2^{-2j}\|\nabla\omega(t)\|_2^2.
```

The damped scalar estimate yields

```math
\sum_{j\ge0}2^{3j/2}\|\Delta_j\omega\|_{L_t^1L_x^2}<\infty.
```

This is `HFG`.

By Bernstein,

```math
HFG\Longrightarrow \int_0^T\|\omega(t)\|_{B^0_{\infty,1}}dt<\infty.
```

The critical vorticity bound yields

```math
Pack+Part+Field+\mathfrak A_{N,Q}
```

on every retained approach family, hence

```math
H1+H2+H6+ORIGIN.Retain.
```

The installed packet replays H3-H5 and gives

```math
LCI.A+CJ.A_{low}.7+FCI.5f+OFP.A+CFI.A+End_{NS}.
```

Boundary: this is conditional on the carrier-export assumptions, especially persistent-support coherent transport at viscous scale, lifted readout-compatible commutator/remainder absorption, and noncoherent leakage absorption.