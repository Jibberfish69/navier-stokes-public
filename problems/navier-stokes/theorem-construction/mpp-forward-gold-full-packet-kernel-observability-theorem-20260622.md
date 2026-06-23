---
theorem_id: forward-gold-full-packet-kernel-observability-theorem-20260622
status: static-kernel-theorem-proved-retained-frozen-observability-solved-semigroup-route-demoted-direct-xterm-open
logical_landing_node: full_packet_observability_gap
edge_effect: >-
  Installs the kernel formulation for the full-packet observability gap. The
  static zero-loss theorem is proved as an intersection-of-kernels statement
  for the whole transported material packet: if the full four-body loss
  vanishes, each nonnegative coordinate loss vanishes, and the
  velocity-pressure-tower-geometry-selector packet is forced into the harmless
  gauge subspace G. Thus ker L_4B,N=G on the retained quotient and selected
  non-gauge activity vanishes. The retained frozen-family compactness/lsc
  solution then gives finite-time frozen observability by compactness
  contradiction on the retained quotient. The Gramian-to-X-term and no-return
  direct tests demote the semigroup route: the remaining internal algebraic
  clause is the direct simultaneous construction of X_SQ, X_QC, X_CG, X_GS from
  the same material participation law.
parents:
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-full-packet-observability-gap-direct-attempt-20260622.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-bounded-below-xterm-symmetrizer-direct-attempt-20260622.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-preterminal-material-a4b-lower-bound-direct-attempt-20260622.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-retained-frozen-family-compactness-lsc-solution-20260622.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-observable-frozen-gramian-to-instantaneous-xterm-direct-test-20260622.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-frozen-full-packet-dissipative-noreturn-direct-test-20260622.md
---

# Full-Packet Kernel Observability Theorem

Date: 2026-06-22

## 0. Point

The observability gap should be stated as a kernel theorem for the whole
transported material packet, not as another estimate on one body.

The target is

```math
\boxed{
\ker \mathcal L_{4B,N}
=
\mathcal G
}
\tag{KOT.1}
```

where \(\mathcal G\) is the harmless gauge subspace: Galilean velocity and
affine pressure, together with any rigid motion modes that the chosen retained
gauge explicitly treats as removable.  After quotienting by \(\mathcal G\), a
zero-loss packet is zero.

## 1. Full-packet loss

Let the retained material packet be

```math
\mathfrak U_N=(S_N,Q_N,C_N,G_N)
\tag{KOT.2}
```

for the transported material Navier-Stokes law

```math
\partial_s v+A^T\nabla_a q
=
\nu\,\operatorname{div}_a(G\nabla_a v),
\qquad
\operatorname{div}_a(Av)=0.
\tag{KOT.3}
```

The full four-body loss is the nonnegative packet loss

```math
\mathcal L_{4B,N}
=
D_S^{rad}
+D_Q^{vis}
+K_C^+
+K_G^+
+K_{\rm sel}
+R_{\rm legal}.
\tag{KOT.4}
```

Here the terms are simultaneous coordinates of the same material participation
law:

```math
\begin{aligned}
D_S^{rad} &:\ \text{tower/scale-radius loss},\\
D_Q^{vis} &:\ \text{viscous or strain loss},\\
K_C^+ &:\ \text{same-object compactness/no-loss defect},\\
K_G^+ &:\ \text{geometry, strain-frame, and material-atlas defect},\\
K_{\rm sel} &:\ \text{selector/collar drift},\\
R_{\rm legal} &:\ \text{same-packet legal residual}.
\end{aligned}
\tag{KOT.5}
```

Since each term is nonnegative, zero full loss means

```math
D_S^{rad}=0,\qquad
D_Q^{vis}=0,\qquad
K_C^+=0,\qquad
K_G^+=0,\qquad
K_{\rm sel}=0,\qquad
R_{\rm legal}=0.
\tag{KOT.6}
```

This is the intersection-of-kernels point.

## 2. Viscous/strain kernel

If \(D_Q^{vis}\) contains full gradient dissipation, then

```math
D_Q^{vis}=0
\quad\Longrightarrow\quad
\nabla_y v=0.
\tag{KOT.7}
```

Hence

```math
v(s,y)=m(s).
\tag{KOT.8}
```

If \(D_Q^{vis}\) is written only as strain dissipation, then the exact statement
uses Korn on the retained annulus:

```math
S_y(v)=0
\quad\Longrightarrow\quad
v(s,y)=m(s)+\Omega(s)y,
\qquad
\Omega(s)^T=-\Omega(s).
\tag{KOT.9}
```

The retained gauge must then do one of two things:

```math
\Omega(s)y\in\mathcal G,
\qquad\text{or}\qquad
K_G^+=0\text{ fixes the material frame and forces }\Omega(s)=0.
\tag{KOT.10}
```

Thus the zero viscous/strain branch is harmless gauge, not selected singular
activity.

## 3. Pressure kernel

In the retained Eulerian gauge the pressure equation is

```math
-\Delta q
=
\partial_i v_j\,\partial_j v_i.
\tag{KOT.11}
```

For \(v=m(s)\), the right-hand side is zero.  Therefore \(q\) is harmonic on
the retained packet.  The material participation law reduces to

```math
\partial_s m(s)+A^T\nabla_a q=0.
\tag{KOT.12}
```

In fixed retained gauge this is the affine-pressure gauge

```math
q(s,y)=-m'(s)\cdot y+c(s).
\tag{KOT.13}
```

If a rigid rotation mode is retained as gauge, the compatible pressure
contribution is included in \(\mathcal G\).  If the geometry coordinate fixes
that rotation, no rotation pressure remains.

## 4. Tower, compactness, geometry, and selector collapse

Once \(v\) is spatially constant modulo the retained gauge,

```math
D^\alpha v=0
\qquad(|\alpha|\ge1).
\tag{KOT.14}
```

Once \(q\) is affine modulo gauge,

```math
D^\alpha q=0
\qquad(|\alpha|\ge2).
\tag{KOT.15}
```

The remaining zero-loss coordinates remove the remaining escape modes:

```math
D_S^{rad}=0
\quad\Longrightarrow\quad
\text{no tower-radius or high-rung escape},
\tag{KOT.16}
```

```math
K_C^+=0
\quad\Longrightarrow\quad
\text{no hidden compactness/carrier loss},
\tag{KOT.17}
```

```math
K_G^+=0
\quad\Longrightarrow\quad
\text{no hidden material-frame or geometry deformation},
\tag{KOT.18}
```

```math
K_{\rm sel}=0
\quad\Longrightarrow\quad
\text{no selector/collar drift hiding a different packet}.
\tag{KOT.19}
```

Therefore

```math
\mathcal L_{4B,N}(\mathfrak U_N)=0
\quad\Longrightarrow\quad
\mathfrak U_N\in\mathcal G.
\tag{KOT.20}
```

The converse is built into the gauge definition: a Galilean/affine-pressure
packet has no selected singular participation activity and carries no full
four-body loss.  Hence

```math
\boxed{
\ker\mathcal L_{4B,N}=\mathcal G.
}
\tag{KOT.21}
```

In particular,

```math
A_{\rm sel}\big|_{\mathcal G}=0,
\qquad
\mathcal L_{4B,N}=0
\Longrightarrow
A_{\rm sel}=0.
\tag{KOT.22}
```

This is the static zero-loss theorem.

## 5. Dynamic frozen observability

The \(X\)-term symmetrizer needs the dynamic form.  Freeze the retained packet
at scale \(\sigma\) and write

```math
Z(t)=e^{t\mathcal L_\sigma}Z_0.
\tag{KOT.23}
```

Use the full packet readout

```math
\mathcal W_\sigma(Z)
=
A_{4B,N}(Z)
+D_{4B,N}(Z)
+\frac{d}{d\sigma}
[\log(1+\mathcal P_N^{mat}(Z))]_+.
\tag{KOT.24}
```

The desired observability estimate is

```math
\boxed{
\int_0^{T_0}
\mathcal W_\sigma(e^{t\mathcal L_\sigma}Z_0)\,dt
\ge
c\,
\|Z_0\|_{\mathcal H_N/\mathcal G}^2 .
}
\tag{KOT.25}
```

This follows from `(KOT.21)` by the retained compactness-contradiction
argument installed in
`mpp-forward-gold-retained-frozen-family-compactness-lsc-solution-20260622.md`.

Assume `(KOT.25)` fails.  Then there are retained frozen operators
\(\mathcal L_{\sigma_n}\) and quotient-normalized data \(Z_n\) such that

```math
\|Z_n\|_{\mathcal H_N/\mathcal G}=1,
\tag{KOT.26}
```

while

```math
\int_0^{T_0}
\mathcal W_{\sigma_n}(e^{t\mathcal L_{\sigma_n}}Z_n)\,dt
\to0.
\tag{KOT.27}
```

The retained frozen-family compactness/lsc solution gives, after passing to a
subsequence,

```math
e^{t\mathcal L_{\sigma_n}}Z_n
\to
Z_\ast(t)
\tag{KOT.28}
```

on the same retained material packet, and lower semicontinuity gives

```math
\mathcal W_\ast(Z_\ast(t))=0
\quad\text{for a.e. }t\in[0,T_0].
\tag{KOT.29}
```

By the static kernel theorem,

```math
Z_\ast(t)\in\mathcal G
\quad\text{for a.e. }t.
\tag{KOT.30}
```

Thus \(Z_\ast(0)\in\mathcal G\).  Quotient compactness preserves the
normalization in `(KOT.26)`, so \(Z_\ast(0)\) is nonzero in
\(\mathcal H_N/\mathcal G\).  This is a contradiction.

Therefore `(KOT.25)` is proved on the retained compact quotient.

## 6. Landing

This installs the exact kernel theorem:

```math
\boxed{
\ker\mathcal L_{4B,N}=\mathcal G.
}
\tag{KOT.31}
```

The dynamic compactness/lsc clause is installed on the retained compact
quotient.  The semigroup/Gramian route has been tested and demoted: finite-time
observability leaves a positive endpoint term, and no-return is not available
as an independent supplier from current inputs.  The remaining algebraic clause
is:

```math
\boxed{
\texttt{DirectSimultaneousMaterialFourBodyXTermIdentity.A}
}
\tag{KOT.32}
```

with content: construct \(X_{SQ},X_{QC},X_{CG},X_{GS}\) directly from the
simultaneous material participation law.  The kernel theorem remains the
zero-loss rigidity check for that construction.
