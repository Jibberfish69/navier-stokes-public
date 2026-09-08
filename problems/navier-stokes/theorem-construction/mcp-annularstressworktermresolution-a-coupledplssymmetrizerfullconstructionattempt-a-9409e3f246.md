# AnnularStressWorkTermResolution.A

Status: resolved parsed frontier item; no new closure claim.

The parsed item

```math
=-\int u\cdot(-pI+2\nu S)\nabla\phi\,dx
```

is the right-hand side of the transported annular local-energy identity.  For a transported material cutoff \(\phi\),

```math
(\partial_t+u\cdot\nabla)\phi=0,
\qquad
T=-pI+2\nu S,
\qquad
M_\phi(t)=\int {1\over2}|u|^2\phi\,dx,
```

the smooth same-material identity is

```math
{d\over dt}M_\phi(t)+2\nu\int \phi |S|^2dx
=-\int u\cdot T\nabla\phi\,dx.
```

This proves that center storage change and interior viscous strain are attached to the same transported annular Cauchy stress-work channel.  It is the exact pay-it-back-later carrier.

But the identity is signed.  Integrated over a time interval,

```math
\int_a^b \int u\cdot T\nabla\phi\,dxdt
=M_\phi(a)-M_\phi(b)-\int_a^b2\nu\int\phi|S|^2dxdt.
```

This controls net stress-work, not rectified positive action.  The full PLS clock requires the positive/unsigned same-material action, schematically

```math
\int_a^b d\Omega_N^{PLS},
```

which contains annular stress-work, strain, pressure/incompressibility service, Helmholtz--Leray/Stokes motion, collar motion, metric/coefficient motion, and viscous/tower loss on the same material packet.

Therefore the annular term is admitted as the native PLS carrier, but it does not by itself construct the bounded-below symmetrizer.  The remaining construction still requires a cross-storage \(X_{PLS,N}\) whose derivative converts signed attachment into coercive rectified full-clock payment:

```math
\mathcal I_N+dX_{PLS,N}+c_Nd\Omega_N^{PLS}
\le \varepsilon dD_N^{vis}+\varepsilon dD_N^{rad}+dR_N^{legal}.
```

This note closes the parsed equation item only; it does not discharge the global symmetrizer/coercivity theorem.