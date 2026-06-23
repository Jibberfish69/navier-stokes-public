---
theorem_id: forward-gold-frozen-full-packet-dissipative-noreturn-direct-test-20260622
status: direct-test-fails-as-independent-supplier-reduces-back-to-direct-simultaneous-xterm-identity
logical_landing_node: frozen_full_packet_dissipative_noreturn
edge_effect: >-
  Tests FrozenFullPacketDissipativeNoReturn.A, the extra condition needed to
  turn finite-time frozen observability into an infinite-time Lyapunov
  symmetrizer. The test shows this theorem is not available as an independent
  supplier. Zero kernel plus finite-time observability does not imply decay;
  a scalar unstable mode has trivial kernel and full observability but no
  no-return. For the frozen Navier-Stokes material packet, the linearized
  energy identity contains the same strain/exchange terms that the X-term
  symmetrizer is supposed to control. Thus proving dissipative no-return
  before constructing the X-terms is circular unless an additional smallness,
  spectral-stability, or exact direct cross-term identity is supplied. The
  semigroup/Gramian route is therefore demoted: the live route returns to
  DirectSimultaneousMaterialFourBodyXTermIdentity.A, the direct construction of
  the instantaneous cross-terms from the material participation law.
parents:
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-observable-frozen-gramian-to-instantaneous-xterm-direct-test-20260622.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-bounded-below-xterm-symmetrizer-direct-attempt-20260622.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-simultaneous-material-fourbody-packet-coercivity-direct-attempt-20260622.md
---

# Frozen Full-Packet Dissipative No-Return Direct Test

Date: 2026-06-22

## 0. Target

The previous test showed that finite-time observability gives a positive
Gramian but leaves a positive endpoint term.  To remove that endpoint term, one
would need the infinite-time Gramian

```math
H_\sigma
=
\int_0^\infty
e^{t\mathcal L_\sigma^\ast}
\mathcal W_\sigma
e^{t\mathcal L_\sigma}\,dt
\tag{FNR.1}
```

to be finite on the gauge quotient.  That requires a no-return theorem:

```math
\boxed{
e^{t\mathcal L_\sigma}Z
\to0
\quad\text{in }\mathcal H_N/\mathcal G
\text{ as }t\to\infty.
}
\tag{FNR.2}
```

The question is whether `(FNR.2)` follows from the kernel theorem and retained
finite-time observability.

It does not.

## 1. Zero kernel and observability do not imply no-return

The scalar model

```math
\dot z=z,
\qquad
\mathcal W(z)=|z|^2
\tag{FNR.3}
```

has no nonzero kernel and has finite-time observability:

```math
\int_0^{T_0}|e^t z_0|^2\,dt
=
{e^{2T_0}-1\over2}|z_0|^2.
\tag{FNR.4}
```

But it has no no-return:

```math
e^t z_0\to\infty
\qquad(z_0\ne0).
\tag{FNR.5}
```

The infinite-time Gramian diverges:

```math
\int_0^\infty |e^t z_0|^2\,dt
=\infty.
\tag{FNR.6}
```

So the implication

```math
\ker\mathcal L=\{0\}
+\text{finite-time observability}
\Longrightarrow
\text{dissipative no-return}
\tag{FNR.7}
```

is false.

The missing property is spectral/dissipative stability, not visibility.

## 2. Frozen Navier-Stokes linearization has the same obstruction

For a frozen retained velocity \(V\), the velocity part of the linearized
frozen equation has the schematic form

```math
\partial_t z
+V\cdot\nabla z
+z\cdot\nabla V
+\nabla \pi
=
\nu\Delta z
+\text{material/tower/collar terms},
\qquad
\nabla\cdot z=0.
\tag{FNR.8}
```

Testing against \(z\), the transport and pressure terms are skew after the
retained incompressibility/collar bookkeeping, but the strain term gives

```math
{1\over2}{d\over dt}\|z\|_2^2
+\nu\|\nabla z\|_2^2
=
-\int z_i z_j S_{ij}(V)
+\text{same-packet coefficient/collar/tower exchanges}.
\tag{FNR.9}
```

The term

```math
-\int z_i z_j S_{ij}(V)
\tag{FNR.10}
```

has no fixed sign.  It is exactly the kind of strain/exchange term the
four-body \(X\)-terms are supposed to balance against the other coordinates.

Thus viscosity alone gives high-mode damping, but it does not give full
quotient no-return for the frozen packet unless the strain/exchange terms are
already controlled.

## 3. What would make no-return true

A noncircular no-return theorem would require one of the following same-packet
inputs.

First, a smallness or dominance condition:

```math
\|S(V)\|_{\text{retained packet}}
\le
\varepsilon\nu
\tag{FNR.11}
```

strong enough for viscosity to dominate `(FNR.10)`.  This is not available on
the terminal retained packet; the packet is precisely allowed to carry critical
strain.

Second, a spectral-stability theorem:

```math
\operatorname{Re}\lambda
\le
-\gamma<0
\quad
\text{for every non-gauge frozen packet eigenmode.}
\tag{FNR.12}
```

This is stronger than the kernel theorem.  The kernel theorem excludes
\(\lambda=0\) non-gauge modes; it does not exclude \(\operatorname{Re}\lambda>0\).

Third, the direct simultaneous \(X\)-term identity:

```math
d\mathfrak L_{4B,N}
+c\,dA_{4B,N}
+dD_{4B,N}
+c\,d[\log(1+\mathcal P_N^{mat})]_+
\le
dR_{4B,N}.
\tag{FNR.13}
```

But `(FNR.13)` is the symmetrizer theorem itself.  Using it to prove
`FrozenFullPacketDissipativeNoReturn.A` would be circular.

## 4. Consequence for the semigroup/Gramian route

The semigroup route now has the exact shape:

```math
\text{kernel theorem}
+\text{retained compact quotient}
\Longrightarrow
\text{finite-time frozen observability}.
\tag{FNR.14}
```

That part is installed.

The attempted next implication

```math
\text{finite-time observability}
\Longrightarrow
\text{instantaneous }X\text{-term symmetrizer}
\tag{FNR.15}
```

fails without no-return.

The attempted no-return theorem

```math
\text{kernel theorem}
+\text{observability}
\Longrightarrow
\text{no-return}
\tag{FNR.16}
```

also fails in general and is not supplied by the current NS packet without the
same cross-term balance being constructed.

Therefore the semigroup/Gramian path cannot be the independent construction of
the \(X\)-terms from current inputs.

## 5. Correct live return

The route must return to the direct simultaneous packet identity:

```math
\boxed{
\texttt{DirectSimultaneousMaterialFourBodyXTermIdentity.A}.
}
\tag{FNR.17}
```

Its job is to build the instantaneous cross-terms directly from the material
participation law, so that the strain/exchange terms in `(FNR.9)` are not
estimated by a detached stability theorem but are cancelled by the adjacent
four-body coordinates:

```math
X_{SQ},\quad X_{QC},\quad X_{CG},\quad X_{GS}.
\tag{FNR.18}
```

The kernel theorem remains useful: after the direct \(X\)-term identity is
built, it proves the zero-loss branch is only harmless gauge.  The retained
frozen observability remains useful: it proves no non-gauge retained packet is
invisible over a time window.  But neither one constructs the instantaneous
cross-terms by itself.

So the live internal face is:

```math
\boxed{
\text{direct construction of the }X\text{-terms from the one material
participation law.}
}
\tag{FNR.19}
```

This keeps the route on the same-fluid object and avoids turning observability
into a hidden assumption of dissipative stability.
