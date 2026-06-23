---
theorem_id: forward-gold-frozen-quotient-spectral-stability-equivalence-20260622
status: exact-equivalence-installed-kernel-is-zero-mode-only-symmetrizer-needs-quotient-stability
logical_landing_node: simultaneous_material_fourbody_packet_coercivity
edge_effect: >-
  Converts the post-kernel wall into an exact finite/frozen packet theorem.
  The installed kernel theorem excludes zero-loss gauge modes, but the
  simultaneous coercive identity needs more: the frozen same-material packet
  operator on the gauge quotient must be stable in the Lyapunov/Kawashima
  sense. For a frozen quotient operator, a positive bounded symmetrizer with
  L^*H+HL <= -W is equivalent to exponential no-return/detectability for the
  full same-packet readout W. Thus the kernel theorem supplies the zero-mode
  part only; it does not exclude positive or purely rotating non-gauge modes.
  The current Navier-Stokes material packet still has unsigned strain/exchange
  terms, so quotient stability is not produced independently from current
  inputs. This sharpens the live wall: either prove the direct simultaneous
  material four-body identity, or prove uniform frozen quotient stability plus
  summable sigma-variation of the resulting symmetrizer. Both are the same
  pure-gold content, not separate routes.
parents:
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-kernel-rigidity-role-in-simultaneous-packet-coercivity-20260622.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-bounded-below-xterm-symmetrizer-direct-attempt-20260622.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-observable-frozen-gramian-to-instantaneous-xterm-direct-test-20260622.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-frozen-full-packet-dissipative-noreturn-direct-test-20260622.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-single-pure-gold-wall-after-retained-branch-closure-20260622.md
---

# Frozen Quotient Spectral Stability Equivalence

Date: 2026-06-22

## 0. Point

The kernel theorem says that the only zero-loss retained packet is gauge:

```math
\ker \mathcal L_{4B,N}=\mathcal G .
\tag{FQS.1}
```

That is not the same as the simultaneous coercive identity.  The identity
needs a one-sided clock:

```math
d\mathfrak L_{4B,N}
+c\,d\mathfrak C_N
+d\mathcal L_{4B,N}
\le
dR_{4B,N}.
\tag{FQS.2}
```

For a frozen packet, the exact missing property is quotient stability, not just
zero-kernel rigidity.

## 1. Frozen quotient setup

Freeze one retained transported material packet and quotient harmless gauge:

```math
\mathcal H_N^\perp:=\mathcal H_N/\mathcal G.
\tag{FQS.3}
```

Let

```math
\partial_t Z=\mathcal L_\sigma Z
\tag{FQS.4}
```

be the frozen linear same-packet evolution on \(\mathcal H_N^\perp\).  Let

```math
\mathcal W_\sigma(Z)
\tag{FQS.5}
```

be the frozen quadratic readout representing the full same-material packet
loss and clock:

```math
\mathcal W_\sigma
\simeq
A_{4B,N}
+D_{4B,N}
+{d\mathfrak C_N\over d\sigma}.
\tag{FQS.6}
```

The kernel theorem and retained compactness give the static positivity:

```math
Z\ne0\text{ in }\mathcal H_N^\perp
\quad\Longrightarrow\quad
\mathcal W_\sigma(Z)>0
\tag{FQS.7}
```

on the retained compact quotient class.

## 2. What a symmetrizer implies

Assume there is a bounded positive frozen symmetrizer \(H_\sigma\) with

```math
\langle Z,H_\sigma Z\rangle
\ge c_0\|Z\|_{\mathcal H_N^\perp}^2
\tag{FQS.8}
```

and

```math
\mathcal L_\sigma^*H_\sigma
+H_\sigma\mathcal L_\sigma
\le
-\mathcal W_\sigma .
\tag{FQS.9}
```

Let \(Z\) be an eigenvector with

```math
\mathcal L_\sigma Z=\lambda Z .
\tag{FQS.10}
```

Testing `(FQS.9)` on \(Z\) gives

```math
2\,\operatorname{Re}\lambda\,
\langle Z,H_\sigma Z\rangle
\le
-\mathcal W_\sigma(Z).
\tag{FQS.11}
```

By `(FQS.7)` and `(FQS.8)`, every non-gauge eigenmode satisfies

```math
\operatorname{Re}\lambda<0.
\tag{FQS.12}
```

So a frozen simultaneous symmetrizer excludes every non-decaying non-gauge
mode.  It is stronger than the kernel theorem, which only excludes the
zero-loss gauge kernel.

## 3. Conversely, stability constructs the frozen symmetrizer

If the frozen quotient flow has uniform exponential no-return,

```math
\|e^{t\mathcal L_\sigma}Z\|_{\mathcal H_N^\perp}
\le
M e^{-\gamma t}\|Z\|_{\mathcal H_N^\perp},
\qquad
\gamma>0,
\tag{FQS.13}
```

then define

```math
H_\sigma
:=
\int_0^\infty
e^{t\mathcal L_\sigma^*}
\mathcal W_\sigma
e^{t\mathcal L_\sigma}\,dt .
\tag{FQS.14}
```

The integral is finite.  Differentiating the integrand gives the Lyapunov
identity

```math
\mathcal L_\sigma^*H_\sigma+H_\sigma\mathcal L_\sigma
=
-\mathcal W_\sigma .
\tag{FQS.15}
```

The retained finite-time observability theorem gives the lower bound for
\(H_\sigma\): there is \(T_0>0\) and \(c>0\) such that

```math
\int_0^{T_0}
\mathcal W_\sigma(e^{t\mathcal L_\sigma}Z)\,dt
\ge
c\|Z\|_{\mathcal H_N^\perp}^2.
\tag{FQS.16}
```

Since `(FQS.14)` integrates over \([0,\infty)\), `(FQS.16)` implies

```math
\langle Z,H_\sigma Z\rangle
\ge
c\|Z\|_{\mathcal H_N^\perp}^2.
\tag{FQS.17}
```

Thus, for the frozen quotient packet,

```math
\boxed{
\text{stable no-return + retained observability}
\Longleftrightarrow
\text{positive Lyapunov/Kawashima symmetrizer.}
}
\tag{FQS.18}
```

The forward implication is `(FQS.14)`--`(FQS.17)`.  The reverse implication is
the energy decay obtained from `(FQS.9)` and `(FQS.7)`.

## 4. Why the kernel theorem is not enough

The kernel theorem supplies only

```math
\mathcal W_\sigma(Z)=0
\Longrightarrow
Z=0\quad\text{in }\mathcal H_N^\perp .
\tag{FQS.19}
```

It does not rule out a mode with

```math
\operatorname{Re}\lambda>0
\tag{FQS.20}
```

or a rotating non-gauge mode whose time-window readout is visible but whose
energy does not decrease.

The frozen Navier--Stokes material packet has exactly the term where this can
hide.  For the velocity variation \(z\),

```math
{1\over2}{d\over dt}\|z\|_2^2
+\nu\|\nabla z\|_2^2
=
-\int z_i z_j S_{ij}(V)
+\text{same-packet coefficient/collar/tower exchanges}.
\tag{FQS.21}
```

The strain/exchange term

```math
-\int z_i z_j S_{ij}(V)
\tag{FQS.22}
```

has no fixed sign.  It is part of the full pressure-viscosity-
incompressibility-velocity participation packet, and it is exactly what the
simultaneous four-body identity must balance.  Current inputs do not prove
that `(FQS.22)` is dominated by the viscous part on the terminal retained
packet.

So the implication

```math
\ker\mathcal L_{4B,N}=\mathcal G
\Longrightarrow
\text{simultaneous coercive identity}
\tag{FQS.23}
```

is false without an additional stability or direct cross-term theorem.

## 5. Moving in \(\sigma\)

Even a frozen symmetrizer is not yet the full log-scale theorem.  The storage
in `(FQS.2)` needs

```math
\mathfrak L_{4B,N}(\sigma)
=
\langle \mathfrak U_N(\sigma),
H_\sigma\mathfrak U_N(\sigma)\rangle
\tag{FQS.24}
```

with a controlled derivative:

```math
\partial_\sigma H_\sigma
\tag{FQS.25}
```

must be absorbed into \(d\mathfrak C_N+d\mathcal L_{4B,N}+dR_{4B,N}\).

Thus the spectral route would have to prove both:

```math
\boxed{
\text{uniform frozen quotient stability}
}
\tag{FQS.26}
```

and

```math
\boxed{
\partial_\sigma H_\sigma
\text{ is a same-packet loss or summable residual.}
}
\tag{FQS.27}
```

Those two clauses are precisely the moving-packet version of
`SimultaneousMaterialFourBodyPacketCoercivity.A`.

## 6. Consequence

The kernel theorem is a real closure component, but its role is limited:

```math
\boxed{
\text{kernel theorem}
\Rightarrow
\text{zero-loss branch is harmless gauge.}
}
\tag{FQS.28}
```

The pure-gold wall remains:

```math
\boxed{
\text{construct a stable simultaneous same-material clock, either directly
as }(FQS.2)\text{ or through }(FQS.26)+(FQS.27).
}
\tag{FQS.29}
```

This keeps the work inside one object.  The spectral statement is not a new
external supplier.  It is the frozen form of the same pressure-viscosity-
incompressibility-velocity four-body packet coercivity.
