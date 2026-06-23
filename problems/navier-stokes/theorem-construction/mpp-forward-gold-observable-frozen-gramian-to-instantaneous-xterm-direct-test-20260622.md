---
theorem_id: forward-gold-observable-frozen-gramian-to-instantaneous-xterm-direct-test-20260622
status: direct-test-fails-from-observability-alone-reduces-to-frozen-dissipative-noreturn
logical_landing_node: observable_frozen_gramian_to_instantaneous_xterm
edge_effect: >-
  Tests the algebraic step left after retained frozen finite-time
  observability. The finite-time observable Gramian is positive on the retained
  gauge quotient, but differentiating it produces an endpoint readout term.
  Therefore finite-time observability alone does not yield the instantaneous
  Lyapunov/Kawashima inequality needed for the X-terms. A two-dimensional
  skew-rotation countermodel has finite-time observability but no decreasing
  quadratic Lyapunov functional, proving the missing input is real. The route
  reduces to a same-packet FrozenFullPacketDissipativeNoReturn.A statement:
  the frozen material participation law must provide dissipativity/no-return on
  the gauge quotient, so the observable Gramian can be extended to an
  infinite-time Lyapunov operator with no positive endpoint term.
parents:
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-retained-frozen-family-compactness-lsc-solution-20260622.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-bounded-below-xterm-symmetrizer-direct-attempt-20260622.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-full-packet-kernel-observability-theorem-20260622.md
---

# Observable Frozen Gramian To Instantaneous \(X\)-Term Direct Test

Date: 2026-06-22

## 0. Target

After the kernel theorem and retained frozen compactness/lsc solution, the
retained quotient has finite-time observability:

```math
\int_0^{T_0}
\mathcal W_\sigma(e^{t\mathcal L_\sigma}Z)\,dt
\ge
c\|Z\|_{\mathcal H_N/\mathcal G}^2.
\tag{OGX.1}
```

The desired \(X\)-term symmetrizer needs an instantaneous inequality:

```math
\partial_\sigma H_\sigma
+H_\sigma\mathcal L_\sigma
+\mathcal L_\sigma^\ast H_\sigma
\le
-c\,A_{4B,N}
-D_{4B,N}
-c\,{d\over d\sigma}[\log(1+\mathcal P_N^{mat})]_+
+R_{4B,N}.
\tag{OGX.2}
```

The question is whether `(OGX.1)` alone constructs such an \(H_\sigma\).

It does not.

## 1. The finite-time Gramian has an endpoint term

Define the finite-time observable Gramian

```math
G_{\sigma,T}
:=
\int_0^T
e^{t\mathcal L_\sigma^\ast}
\mathcal W_\sigma
e^{t\mathcal L_\sigma}\,dt.
\tag{OGX.3}
```

By `(OGX.1)`, \(G_{\sigma,T}\) is bounded below on the retained gauge quotient:

```math
\langle Z,G_{\sigma,T}Z\rangle
\ge
c\|Z\|_{\mathcal H_N/\mathcal G}^2.
\tag{OGX.4}
```

But differentiating `(OGX.3)` gives the exact algebraic identity

```math
\mathcal L_\sigma^\ast G_{\sigma,T}
+G_{\sigma,T}\mathcal L_\sigma
=
e^{T\mathcal L_\sigma^\ast}
\mathcal W_\sigma
e^{T\mathcal L_\sigma}
-\mathcal W_\sigma.
\tag{OGX.5}
```

The last term is the desired instantaneous readout.  The first term is a
positive endpoint readout:

```math
e^{T\mathcal L_\sigma^\ast}
\mathcal W_\sigma
e^{T\mathcal L_\sigma}
\ge0.
\tag{OGX.6}
```

So `(OGX.3)` yields

```math
\mathcal L_\sigma^\ast G_{\sigma,T}
+G_{\sigma,T}\mathcal L_\sigma
\le
-\mathcal W_\sigma
+\text{positive endpoint readout},
\tag{OGX.7}
```

not the sign needed in `(OGX.2)`.

Thus finite-time observability is not yet the \(X\)-term symmetrizer.

## 2. Countermodel: observable but not dissipative

Let

```math
\mathcal L
=
\begin{pmatrix}
0&-1\\
1&0
\end{pmatrix},
\qquad
\mathcal W
=
\begin{pmatrix}
1&0\\
0&0
\end{pmatrix}.
\tag{OGX.8}
```

The flow is rotation:

```math
e^{t\mathcal L}Z
=
\text{rotation of }Z.
\tag{OGX.9}
```

For every nonzero \(Z\),

```math
\int_0^{2\pi}
\langle e^{t\mathcal L}Z,\mathcal W e^{t\mathcal L}Z\rangle\,dt
=
\pi|Z|^2.
\tag{OGX.10}
```

So finite-time observability holds.

But there is no positive matrix \(H\) and \(c>0\) with

```math
\mathcal L^\ast H+H\mathcal L
\le
-cI.
\tag{OGX.11}
```

Taking the trace gives

```math
\operatorname{tr}(\mathcal L^\ast H+H\mathcal L)
=
\operatorname{tr}(H\mathcal L+\mathcal L^\ast H)
=0,
\tag{OGX.12}
```

while \(\operatorname{tr}(-cI)<0\), contradiction.

This model proves the exact algebraic warning: observability over a time
window can be produced by rotation through the observed direction, with no
dissipative loss.

Therefore the Navier-Stokes frozen packet needs more than observability.  It
needs no-return dissipativity on the same packet.

## 3. What additional same-packet theorem is needed

The successful infinite-time Lyapunov construction would be

```math
H_\sigma
:=
\int_0^\infty
e^{t\mathcal L_\sigma^\ast}
\mathcal W_\sigma
e^{t\mathcal L_\sigma}\,dt.
\tag{OGX.13}
```

Then, provided the endpoint term vanishes at infinity,

```math
\mathcal L_\sigma^\ast H_\sigma
+H_\sigma\mathcal L_\sigma
=
-\mathcal W_\sigma.
\tag{OGX.14}
```

This is the right instantaneous sign.

The missing condition is exactly:

```math
\boxed{
e^{t\mathcal L_\sigma}Z
\to0
\quad\text{in }\mathcal H_N/\mathcal G
\text{ as }t\to\infty,
}
\tag{OGX.15}
```

with enough decay to make `(OGX.13)` finite, uniformly on the retained tail.

Equivalently, the frozen packet needs a same-packet dissipative/no-return law:

```math
\boxed{
\texttt{FrozenFullPacketDissipativeNoReturn.A}.
}
\tag{OGX.16}
```

One usable statement is:

```math
{d\over dt}E_\sigma(Z(t))
+c\,\mathcal W_\sigma(Z(t))
\le0
\quad\text{on }\mathcal H_N/\mathcal G,
\tag{OGX.17}
```

for a lower-bounded same-packet energy \(E_\sigma\).  Then `(OGX.1)` implies
decay in discrete \(T_0\)-windows:

```math
E_\sigma(Z((k+1)T_0))
\le
(1-\theta)E_\sigma(Z(kT_0)),
\tag{OGX.18}
```

and hence exponential decay.  The infinite-time Gramian `(OGX.13)` is then
finite and solves `(OGX.14)`.

## 4. Why this is not an external supplier

`FrozenFullPacketDissipativeNoReturn.A` cannot be a viscosity-only claim.  The
countermodel shows why: a skew exchange can keep circulating through the
coordinates while still being observable over a time window.

The needed no-return law has to be for the same simultaneous packet:

```math
(S_N,Q_N,C_N,G_N),
\tag{OGX.19}
```

with the pressure, viscosity, incompressibility, velocity, material frame,
compactness coordinate, and selector/collar channels all included.  In plain
terms, the frozen packet may rotate activity among the four coordinates, but
it cannot keep doing so without a real dissipative decrease on the gauge
quotient.

This is exactly the algebraic form of the four-body participation idea:

```math
\text{observable circulation}
+\text{full-packet dissipative no-return}
\Longrightarrow
\text{instantaneous }X\text{-term symmetrizer}.
\tag{OGX.20}
```

## 5. Direct test result

The attempted implication

```math
\text{finite-time observability}
\Longrightarrow
\text{instantaneous }X\text{-term Lyapunov inequality}
\tag{OGX.21}
```

is false as an abstract algebraic statement.

The exact corrected route is:

```math
\boxed{
\text{kernel theorem}
+\text{retained compact quotient}
\Longrightarrow
\text{finite-time observability}
}
\tag{OGX.22}
```

and then

```math
\boxed{
\text{finite-time observability}
+\texttt{FrozenFullPacketDissipativeNoReturn.A}
\Longrightarrow
\text{instantaneous }X\text{-term symmetrizer}.
}
\tag{OGX.23}
```

So the live internal face is now:

```math
\boxed{
\texttt{FrozenFullPacketDissipativeNoReturn.A}.
}
\tag{OGX.24}
```

This is still one-packet work.  It is not a return to component suppliers and
not a detached no-waste theorem.
