---
theorem_id: forward-gold-betchov-strain-vorticity-net-vs-rectified-clock-test-20260625
status: exact-net-cubic-balance-installed; rectified-full-clock-not-produced
logical_landing_node: global_same_packet_full_clock_from_original_data
edge_effect: >-
  Installs the exact incompressible strain-vorticity cubic balance on the
  active periodic same-solution surface. The Betchov identity ties the global
  signed strain self-amplification to global signed vorticity stretching:
  int tr(S^3) = -3/4 int omega dot S omega. Therefore the pressure-
  incompressibility law does supply a real same-fluid net cubic ledger.
  However the MPP gold route needs rectified annular force-action variation,
  not only the net cubic ledger. The identity controls no positive-part,
  localized annular, or high-frequency pressure-stress clock without an
  additional same-material no-waste/coercive storage. This prevents a false
  reduction of the remaining full clock to vorticity/enstrophy or signed
  strain self-amplification alone.
parents:
  - problems/navier-stokes/live-theorem-edge.yaml
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-strain-vorticity-channel-full-clock-producer-test-20260625.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-pressure-time-cubic-strain-service-clock-test-20260625.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-one-way-full-clock-lyapunov-direct-test-20260625.md
---

# Betchov Strain-Vorticity Net Balance Versus Rectified Clock

Date: 2026-06-25

## 0. Object

The object is one original smooth periodic incompressible Navier--Stokes
history:

```math
\partial_tu+(u\cdot\nabla)u+\nabla p=\nu\Delta u,
\qquad
\nabla\cdot u=0.
\tag{BSV.1}
```

Put

```math
A=\nabla u,\qquad
S={A+A^\top\over2},\qquad
W={A-A^\top\over2},\qquad
\omega=\nabla\times u.
\tag{BSV.2}
```

The remaining gold-route clock is the rectified same-material annular
pressure-viscosity-incompressibility-velocity clock, not a detached scalar
source. The most tempting native scalar readout is the strain-vorticity cubic
exchange. This note tests exactly what that readout gives.

## 1. Algebraic decomposition

For the skew part \(W\),

```math
W_{ij}={1\over2}\epsilon_{ikj}\omega_k,
\tag{BSV.3}
```

and

```math
W^2={1\over4}\left(\omega\otimes\omega-|\omega|^2I\right).
\tag{BSV.4}
```

Since \(S\) is trace-free,

```math
\operatorname{tr}(SW^2)
=
{1\over4}\,\omega\cdot S\omega.
\tag{BSV.5}
```

Using cyclicity of trace and the fact that traces with an odd number of skew
factors vanish,

```math
\operatorname{tr}(A^3)
=
\operatorname{tr}(S^3)+3\operatorname{tr}(SW^2)
=
\operatorname{tr}(S^3)+{3\over4}\omega\cdot S\omega.
\tag{BSV.6}
```

## 2. Periodic Betchov identity

On the periodic torus,

```math
\int_{T^3}\operatorname{tr}((\nabla u)^3)\,dx=0.
\tag{BSV.7}
```

One way to see this is to write

```math
\operatorname{tr}((\nabla u)^3)
=
\partial_i u_j\,\partial_j u_k\,\partial_k u_i
\tag{BSV.8}
```

and integrate by parts:

```math
\begin{aligned}
\int \partial_i u_j\,\partial_j u_k\,\partial_k u_i
&=
-\int u_j\,\partial_i\partial_j u_k\,\partial_k u_i
-\int u_j\,\partial_j u_k\,\partial_i\partial_k u_i\\
&=
-\int u_j\,\partial_j\partial_i u_k\,\partial_k u_i .
\end{aligned}
\tag{BSV.9}
```

The second term vanishes by incompressibility,

```math
\partial_i\partial_k u_i=\partial_k(\nabla\cdot u)=0.
\tag{BSV.10}
```

Integrating the remaining term by parts in \(j\) and using
\(\partial_j u_j=0\) returns the negative of the original integral, hence the
integral is zero.

Combining `(BSV.6)` and `(BSV.7)` gives the Betchov relation

```math
\boxed{
\int_{T^3}\operatorname{tr}(S^3)\,dx
=
-{3\over4}\int_{T^3}\omega\cdot S\omega\,dx .
}
\tag{BSV.11}
```

This is an exact pressure-incompressibility participation identity. It says
that global signed strain self-amplification and global signed vorticity
stretching are not independent accounts.

## 3. Enstrophy reads the same signed ledger

The vorticity equation is

```math
D_t\omega=S\omega+\nu\Delta\omega.
\tag{BSV.12}
```

Therefore

```math
{1\over2}{d\over dt}\int|\omega|^2\,dx
+
\nu\int|\nabla\omega|^2\,dx
=
\int\omega\cdot S\omega\,dx.
\tag{BSV.13}
```

Using `(BSV.11)`,

```math
{1\over2}{d\over dt}\int|\omega|^2\,dx
+
\nu\int|\nabla\omega|^2\,dx
=
-{4\over3}\int\operatorname{tr}(S^3)\,dx.
\tag{BSV.14}
```

So enstrophy production is the same global signed cubic strain ledger.

## 4. Why this does not produce the rectified annular clock

The gold-route clock is a positive same-material annular action, schematically

```math
\int_0^{T_*}
\sum_j2^{\gamma_Nj}
\|\Delta_j\mathcal S_\phi^\sharp(t)\|_{L^1}\,dt,
\tag{BSV.15}
```

where \(\mathcal S_\phi^\sharp\) includes pressure-time elliptic service,
cubic collar strain, stress divergence, transported collar terms, and pressure
partners on the same annular material history.

The Betchov/enstrophy ledger controls only the signed global cubic quantity

```math
\int_{T^3}\omega\cdot S\omega
\quad\text{or}\quad
\int_{T^3}\operatorname{tr}(S^3).
\tag{BSV.16}
```

It does not control

```math
\int_{T^3}[\omega\cdot S\omega]_+,
\qquad
\int_{T^3}|\operatorname{tr}(S^3)|,
\qquad
\int_{\operatorname{collar}\phi}|U|\,|\nabla U|^2|\nabla\phi|,
\tag{BSV.17}
```

and it does not control the dyadic high-frequency pressure-time component in
`(BSV.15)`.

The reason is exactly the net-versus-total distinction. Positive and negative
strain-vorticity service can cancel in `(BSV.16)` while the rectified annular
force-action variation remains large.

## 5. Exact consequence

This identity strengthens the physical picture but does not close the MPP by
itself.

It proves:

```math
\text{incompressibility ties global signed strain self-amplification to global signed vorticity stretching.}
\tag{BSV.18}
```

It does not prove:

```math
\text{finite rectified annular pressure-stress force-action variation.}
\tag{BSV.19}
```

Thus any successful one-way storage must use the Betchov/enstrophy ledger as a
same-fluid coordinate while also paying the positive annular pressure-time,
cubic strain, and transported-collar service before rectification loses the
sign.

The current frontier remains:

```math
\boxed{
\text{construct a bounded-below same-material storage that pays the rectified full clock.}
}
\tag{BSV.20}
```
