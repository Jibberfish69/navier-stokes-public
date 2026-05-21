# MPP ResponseTPNI Coupled Transform Package

Date: 2026-05-06

Status: theorem package; finite-slab coupled transform proved; ancient
no-incoming/Carleman closure remains open.

Depends on:

```text
mpp-viscosity-response-route-unconditional-audit-20260506.md
mcp-tpni-noincoming-anisotropic-bu-solver-pass-20260505.md
mcp-anisotropic-backward-uniqueness-transform-test-20260504.md
```

## 0. Target

The response-rotation wall reduces to:

```math
\boxed{
ResponseTPNI.A.
}
```

No finite-energy ancient frozen response pair `(v,w)` may satisfy:

```text
1. no incoming original active mass;
2. no incoming orthogonal response mass;
3. nonzero normalized terminal orthogonal response-rotation mass.
```

The frozen pair is:

```math
\partial_s v+(Sy)\cdot\nabla v+Sv+\nabla\pi_v
=
\nu\Delta v,
\qquad \nabla\cdot v=0,
\tag{RTPNI.1}
```

```math
\partial_s w+(Sy)\cdot\nabla w+Sw
+(\Sigma y)\cdot\nabla v+\Sigma v+\nabla\pi_w
=
\nu\Delta w+\Delta v,
\qquad \nabla\cdot w=0.
\tag{RTPNI.2}
```

Here `S=S^T`, `tr S=0`, is the frozen original strain, and `Sigma` is the
frozen response strain.

## 1. Coupled Anisotropic Transform

Set:

```math
E(s)=e^{sS},
\qquad
x=E(s)^{-1}y.
```

Define:

```math
V(x,s):=E(s)v(E(s)x,s),
\qquad
W(x,s):=E(s)w(E(s)x,s).
\tag{RTPNI.3}
```

The single-field calculation gives:

```math
\partial_s V+\nabla_x q_v
=
\nu\nabla_x\cdot(A(s)\nabla_x V),
\qquad
\nabla_x\cdot(A(s)V)=0,
\tag{RTPNI.4}
```

where:

```math
A(s)=E(s)^{-1}E(s)^{-T}.
```

For the response equation, multiply `(RTPNI.2)` by `E(s)` and use the same
change of variables.  The transport and `S w` terms cancel exactly as in the
single-field transform.  The Laplacian becomes the same anisotropic operator.
The forcing `Delta v` becomes:

```math
E(s)\Delta_y v
=
\nabla_x\cdot(A(s)\nabla_x V)
```

up to the same pressure-compatible tensor bookkeeping as `(RTPNI.4)`.

The response-strain forcing becomes:

```math
E(s)\bigl((\Sigma y)\cdot\nabla_y v+\Sigma v\bigr)
=
\mathcal B_\Sigma(s,x,\nabla_x)V,
\tag{RTPNI.5}
```

where `\mathcal B_\Sigma` is a first-order matrix operator with coefficients
formed from:

```math
E(s)\Sigma E(s),
\qquad
E(s)\Sigma E(s)^{-1},
\qquad
A(s).
```

Thus the transformed coupled system is:

```math
\boxed{
\begin{aligned}
\partial_s V+\nabla q_v
&=
\nu\nabla\cdot(A\nabla V),\\
\partial_s W+\nabla q_w
&=
\nu\nabla\cdot(A\nabla W)
+\nabla\cdot(A\nabla V)
-\mathcal B_\Sigma[V],
\\
\nabla\cdot(A V)&=0,
\qquad
\nabla\cdot(A W)=0.
\end{aligned}}
\tag{RTPNI.6}
```

## 2. Finite-Slab Theorem

### Theorem `CoupledFiniteSlabTransform.A`

On every finite slab `[-R,0]`, the frozen response pair `(v,w)` is equivalent
to the coupled anisotropic Stokes system `(RTPNI.6)` with smooth uniformly
elliptic `A(s)` and smooth bounded first-order response-strain operator
`\mathcal B_\Sigma`.

### Proof

For fixed `R`, `E(s)` and `E(s)^{-1}` are smooth and bounded on `[-R,0]`.
Thus `A(s)` is smooth and uniformly elliptic.  The single-field transform is
already recorded in the installed TPNI transform notes.  Applying the same
chain rule to `(RTPNI.2)` cancels `(Sy)\cdot\nabla w+Sw`; transforms `Delta w`
to `nabla dot(A nabla W)`; transforms `Delta v` to the same anisotropic
operator on `V`; and packages the response-strain terms into
`\mathcal B_\Sigma[V]`.  Divergence transforms to `nabla dot(A W)=0`.
`\square`

## 3. Conditional Coupled Carleman Route

The exact Carleman theorem needed is:

```math
\boxed{
CoupledAnisotropicStokesCarleman.A.
}
```

Statement:

For the system `(RTPNI.6)` on finite slabs, a solution with vanishing parabolic
boundary data and controlled forcing satisfies a Carleman inequality strong
enough to force:

```math
V=W=0
```

when the no-incoming boundary terms vanish on the ancient limit.

If this theorem holds and a global no-incoming boundary license is supplied,
then:

```math
\boxed{
NoIncomingFlux_{global,resp}.A
+CoupledAnisotropicStokesCarleman.A
\Longrightarrow
ResponseTPNI.A.
}
\tag{RTPNI.7}
```

## 4. Why Finite-Slab Is Not Enough

As `s\to-\infty`, `A(s)` can become singular or unbounded along strain
eigendirections.  The installed single-field TPNI audit already records the
same half-line obstruction:

```text
local no-incoming on fixed balls does not prevent mass entering from spatial
infinity through transported contracting directions.
```

The response pair has the same issue, plus the coupled forcing
`\mathcal B_\Sigma[V]`.  Therefore the ancient theorem needs:

```math
NoIncomingFlux_{global,resp}.A,
```

not merely first-pulse no-parent.

## 5. Response Source Tether

The failed response-ASAC compactness sequence must be tethered to the same
physical terminal packet.  The exact support theorem is:

```math
\boxed{
SourceTether_{resp}.A:
\quad
\text{failed response-rotation mass survives the transform on the same
terminal heat cylinder and becomes terminal mass for }(V,W).
}
```

Without this tether, a Carleman theorem may kill a transformed solution that is
not the actual response-rotation residue.

Thus:

```math
SourceTether_{resp}.A
+NoIncomingFlux_{global,resp}.A
+CoupledAnisotropicStokesCarleman.A
\Longrightarrow
NonlinearResponseRotationNoGain.A.
\tag{RTPNI.8}
```

## 6. Verdict

Proved:

```text
CoupledFiniteSlabTransform.A
```

Not proved:

```text
NoIncomingFlux_global_resp.A
CoupledAnisotropicStokesCarleman.A
SourceTether_resp.A
```

This package is the precise response-side analogue of the existing TPNI reserve
route.  It is not a generic source-wall alias: it only targets nonlinear
orthogonal viscosity-response rotation after the heat-aligned response has
been removed.
