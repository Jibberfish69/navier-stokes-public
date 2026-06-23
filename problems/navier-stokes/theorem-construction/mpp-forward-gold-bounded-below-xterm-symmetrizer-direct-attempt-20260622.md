---
theorem_id: forward-gold-bounded-below-xterm-symmetrizer-direct-attempt-20260622
status: reduces-xterm-construction-to-uniform-full-packet-observability-gap
logical_landing_node: bounded_below_instantaneous_xterm_symmetrizer
edge_effect: >-
  Attacks the last live installation inside
  SimultaneousMaterialFourBodyPacketCoercivity.A after C_N and retained-atlas
  compatibility have been repaired. The X-terms must be off-diagonal blocks of
  one positive full-packet symmetrizer, not cumulative primitives. Writing
  L_4B,N=<U_N,H_sigma U_N> with H_sigma=I+K_sigma, the needed derivative
  inequality is the Lyapunov/Kawashima inequality
  d_sigma H+H L+L^*H <= -c A_4B,N-D_4B,N-c dlog(1+P_N^mat)+R. The construction
  is noncircular if the quotient mixed material packet has a uniform
  observability gap: no non-gauge packet can have unit selected activity and
  zero full four-body loss. Compactness-rigidity is the right way to prove that
  gap on the retained branch, but the uniform frozen/evolution-family
  observability theorem is not yet installed. Thus the remaining internal face
  is FullPacketObservabilityGap.A, not another component estimate.
parents:
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-simultaneous-material-fourbody-packet-coercivity-direct-attempt-20260622.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-simultaneous-fourbody-symmetrizer-construction-direct-attempt-20260622.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-crossscale-material-atlas-fixed-terminal-gauge-solution-20260622.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-fourbody-compactness-rigidity-coercivity-principle-20260621.md
---

# Bounded-Below \(X\)-Term Symmetrizer Direct Attempt

Date: 2026-06-22

## 0. Target

After the \(C_N\) coordinate and retained cross-scale atlas are fixed, the
remaining simultaneous-packet construction is

```math
X_{SQ},\qquad X_{QC},\qquad X_{CG},\qquad X_{GS}.
\tag{BXS.1}
```

They must be instantaneous bounded-below cross-terms in one full-packet
functional, not cumulative primitives of signed exchange mismatch.

## 1. One full-packet symmetrizer

Let

```math
\mathfrak U_N=(S_N,Q_N,C_N,G_N)
\tag{BXS.2}
```

be the fixed-terminal-gauge, retained material mixed tower.  Work after
quotienting the removable gauge kernel: Galilean velocity constants and
affine-pressure gauges.  The selected singular activity vanishes on that
kernel.

The desired full storage has the form

```math
\mathfrak L_{4B,N}
=
\langle \mathfrak U_N,H_\sigma\mathfrak U_N\rangle_{\mathcal H_N},
\qquad
H_\sigma=I+K_\sigma,
\tag{BXS.3}
```

where \(K_\sigma\) is self-adjoint and off-diagonal in the four-coordinate
decomposition:

```math
K_\sigma=
\begin{pmatrix}
0&K_{SQ}&0&K_{SG}\\
K_{QS}&0&K_{QC}&0\\
0&K_{CQ}&0&K_{CG}\\
K_{GS}&0&K_{GC}&0
\end{pmatrix}
\tag{BXS.4}
```

with the cyclic adjacent blocks giving the desired \(X\)-terms.  For example,

```math
X_{SQ}=2\operatorname{Re}\langle S_N,K_{SQ}Q_N\rangle,
\qquad
X_{QC}=2\operatorname{Re}\langle Q_N,K_{QC}C_N\rangle,
\tag{BXS.5}
```

and similarly for \(X_{CG}\) and \(X_{GS}\).

Lower boundedness is now concrete:

```math
\|K_\sigma\|_{\mathcal H_N\to\mathcal H_N}\le\kappa<1
\quad\Longrightarrow\quad
\mathfrak L_{4B,N}
\ge
(1-\kappa)\|\mathfrak U_N\|_{\mathcal H_N}^2.
\tag{BXS.6}
```

So the problem is not to name four exchange storages.  It is to construct a
positive full-packet symmetrizer \(H_\sigma\).

## 2. Derivative condition

Write the fixed-gauge mixed material tower schematically as

```math
\partial_\sigma \mathfrak U_N
=
\mathcal L_\sigma\mathfrak U_N
+\mathcal N_\sigma(\mathfrak U_N)
+\mathcal R_\sigma,
\tag{BXS.7}
```

where \(\mathcal L_\sigma\) contains the linearized scaling, pressure,
viscosity, incompressibility, material-frame, and compactness-coordinate
couplings, while \(\mathcal N_\sigma\) contains the order-locked nonlinear
tower terms already inside the same packet.

Differentiating `(BXS.3)` gives

```math
\begin{aligned}
d_\sigma\mathfrak L_{4B,N}
={}&
\left\langle \mathfrak U_N,
\left(
\partial_\sigma H_\sigma
+H_\sigma\mathcal L_\sigma
+\mathcal L_\sigma^\ast H_\sigma
\right)
\mathfrak U_N
\right\rangle\,d\sigma\\
&+
2\operatorname{Re}
\langle H_\sigma\mathfrak U_N,\mathcal N_\sigma(\mathfrak U_N)\rangle\,d\sigma
+dR_\sigma .
\end{aligned}
\tag{BXS.8}
```

The simultaneous four-body theorem needs the full-packet Lyapunov inequality

```math
\boxed{
\partial_\sigma H_\sigma
+H_\sigma\mathcal L_\sigma
+\mathcal L_\sigma^\ast H_\sigma
\le
-c\,\mathcal A_{4B,N}
-\mathcal D_{4B,N}
-c\,d[\log(1+\mathcal P_N^{mat})]_+/d\sigma
+\mathcal R_{4B,N}.
}
\tag{BXS.9}
```

The nonlinear term in `(BXS.8)` is not estimated as an outside scalar source.
It is the same factorial-weighted mixed tower interaction already included in
\(\mathcal A_{4B,N}\) and \(\mathcal D_{4B,N}\).  If `(BXS.9)` holds with
summable residual, then `(SMC.5)` follows.

## 3. How to construct \(H_\sigma\) without circularity

For a frozen packet operator \(\mathcal L_\sigma\), a noncircular symmetrizer
comes from a Lyapunov/Kawashima construction on the gauge quotient.  If the
frozen evolution satisfies a uniform decay/observability estimate

```math
\int_0^\infty
\mathcal W_\sigma(e^{t\mathcal L_\sigma}Z)\,dt
\ge
c\|Z\|_{\mathcal H_N}^2
\tag{BXS.10}
```

for every non-gauge \(Z\), where

```math
\mathcal W_\sigma
\simeq
A_{4B,N}+D_{4B,N}
d[\log(1+\mathcal P_N^{mat})]_+/d\sigma,
\tag{BXS.11}
```

then the Lyapunov operator

```math
H_\sigma
=
\int_0^\infty
e^{t\mathcal L_\sigma^\ast}
\mathcal W_\sigma
e^{t\mathcal L_\sigma}\,dt
\tag{BXS.12}
```

solves the frozen version of `(BXS.9)` and is bounded below on the quotient.
Its off-diagonal blocks are the instantaneous \(X\)-terms.

This is the right construction because boundedness of \(H_\sigma\) is supplied
by a uniform observability gap, not by integrating the unknown exchange
mismatch along the terminal tail.

## 4. The exact observability gap

The needed gap is:

```math
\boxed{
\text{No non-gauge retained mixed material packet has unit selected}
\ A_{4B,N}\text{ activity and zero full four-body loss.}
}
\tag{BXS.13}
```

Equivalently, for the gauge quotient,

```math
\|\mathfrak U_N\|_{\mathcal H_N}=1
\quad\Longrightarrow\quad
\mathcal W_\sigma(\mathfrak U_N)\ge c_0>0
\tag{BXS.14}
```

uniformly on the retained terminal tail.

The compactness-rigidity mechanism is exactly suited to prove `(BXS.13)`.
Assume `(BXS.14)` fails.  Then there are retained packets with normalized
activity but vanishing full loss.  The mixed \(C_N\) no-loss coordinate gives
same-packet compactness.  Passing to the limit gives an exact lossless
material packet.  The lossless rigidity theorem reduces that limit to a
Galilean/affine-pressure gauge.  The selected singular activity vanishes on
that gauge, contradicting the normalization.

So the final symmetrizer construction reduces to making this compactness-
rigidity argument uniform for the frozen/evolution-family operators
\(\mathcal L_\sigma\).

## 5. Direct attempt result

This note does not declare the \(X\)-terms constructed.

It replaces the vague \(X\)-term burden by the exact one-packet symmetrizer
criterion:

```math
\boxed{
\texttt{FullPacketObservabilityGap.A}
}
\tag{BXS.15}
```

with content `(BXS.13)`--`(BXS.14)`, plus the standard Lyapunov/Kawashima
construction `(BXS.12)` on the gauge quotient.

Once `(BXS.15)` is installed, the off-diagonal blocks of \(H_\sigma\) give

```math
X_{SQ},\quad X_{QC},\quad X_{CG},\quad X_{GS},
\tag{BXS.16}
```

and `(BXS.9)` gives the simultaneous packet inequality.

The active remaining theorem is therefore not a component estimate.  It is the
uniform full-packet observability gap for the retained mixed material tower.
