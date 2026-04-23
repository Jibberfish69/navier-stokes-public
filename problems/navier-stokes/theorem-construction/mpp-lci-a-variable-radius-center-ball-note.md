# MPP LCI.A Variable-Radius Center-Ball Note

## Status

Candidate theorem-facing note.

Role: isolate the exact geometric wall beneath `EOC.A` after
`OFP.C1i`--`OFP.C1j` reduce the oscillation side to the Eulerian increment
envelope, the label-halo first-rung carrier, and the thickened collar envelope.

This note does **not** widen the lower-carrier / one-field route. It does
**not** replace the transported-center geometry by a generic coherence theorem.
It does **not** claim that the fixed enlarged-ball theorem `EOC.A` already
controls the halo carrier. Its narrower job is:

```math
\boxed{
\text{freeze the exact variable-radius center-ball theorem still needed to place the halo carrier into the class spent by }OFP.C1j,
\newline
\text{i.e. isolate the standalone theorem-facing form of Candidate Theorem }OFP.C1l.
}
\tag{VCB.0}
```

## Installed Inputs

Use only the already-installed one-field / lower-carrier surfaces.

1. [mpp-one-field-forward-preservation-theorem-program.md](/Users/thomasbirnie/Workspace/ToE/Research-Consolidation/problems/navier-stokes/theorem-construction/mpp-one-field-forward-preservation-theorem-program.md)
2. [mpp-lci-a-enlarged-ball-oscillation-closure-note.md](/Users/thomasbirnie/Workspace/ToE/Research-Consolidation/problems/navier-stokes/theorem-construction/mpp-lci-a-enlarged-ball-oscillation-closure-note.md)
3. [mpp-one-field-forward-preservation-reduction-note.md](/Users/thomasbirnie/Workspace/ToE/Research-Consolidation/problems/navier-stokes/theorem-construction/mpp-one-field-forward-preservation-reduction-note.md)

## Variable-Radius Ball Carrier

Retain the transported centers `c_j(t)=\Phi(a^j,t)` and the bounded pack-side
gauge `\Gamma_\sharp`.

Define the halo radius

```math
R_{\rho}^{halo}(t)
:=
\Gamma_\sharp(t)\rho,
\tag{VCB.1}
```

and the variable-radius center-ball carrier

```math
\mathfrak U_{1,\rho}^{ball,ctr}(t)
:=
\sup_{1\le j\le J}
\big\|
U_1(\cdot,t)
\big\|_{L^\infty(B(c_j(t),R_{\rho}^{halo}(t)))}.
\tag{VCB.2}
```

By `(OFP.10de)` one already has

```math
\mathfrak U_{1,\rho}^{halo,ctr}(t)
\le
\mathfrak U_{1,\rho}^{ball,ctr}(t).
\tag{VCB.3}
```

So the exact geometric supplier behind `OFP.C1j` is no longer mysterious. It is
the variable-radius ball carrier `(VCB.2)`.

## Why The Fixed Enlarged-Ball Theorem Does Not Yet Supply It

The fixed enlarged-ball theorem `EOC.A` is built on the radius

```math
2R_\delta^{osc}
=
2r_\delta+11\delta.
\tag{VCB.4}
```

But the halo carrier lives on the variable radius `\Gamma_\sharp(t)\rho`.

### Reduction `VCB.1a` (If the variable radius fit inside the installed enlarged ball, the halo carrier would be automatic)

If for a.e. `t\in I`,

```math
\Gamma_\sharp(t)\rho
\le
2R_\delta^{osc},
\tag{VCB.5}
```

then for every `j`,

```math
B(c_j(t),\Gamma_\sharp(t)\rho)
\subset
B(c_j(t),2R_\delta^{osc}),
\tag{VCB.6}
```

and therefore

```math
\mathfrak U_{1,\rho}^{ball,ctr}(t)
\le
\mathfrak A_{1,\rho,\psi}^{ctr}(t)
+
\Omega_{N,m,\rho,\psi}^{osc,\sharp}(t).
\tag{VCB.7}
```

So `(VCB.5)` would reduce the geometric wall to the already-installed
transported-center suppliers `EOC.A` and the first center-rung package.

### Obstruction `VCB.1b` (The route does not currently supply the radius compatibility)

No theorem currently on disk proves `(VCB.4)` on the present route.

That is the exact gap. The missing datum is **not** the reverse image estimate
`(OFP.10db)`. It is compatibility between the installed fixed enlarged-ball
radius `2R_\delta^{osc}` and the variable halo radius `\Gamma_\sharp(t)\rho`.

## Target Statement

### Target Theorem `VCB.A` (Standalone theorem-facing form of `OFP.C1l`)

On the same-fluid interval `I`, prove

```math
\mathfrak U_{1,\rho}^{ball,ctr}\in L^1(I).
\tag{VCB.A0}
```

Equivalently, by `(VCB.3)`,

```math
\mathfrak U_{1,\rho}^{halo,ctr}\in L^1(I).
\tag{VCB.A1}
```

This is the minimal theorem-facing geometric supplier presently visible beneath
the deformation-side propagation `OFP.C1i`--`OFP.C1j`, and it is exactly the
standalone note-surface version of `(OFP.10dj)`.

## Fixed-Halo-Shell Reduction Under Bounded Pack-Side Gauge

The one-field note already pushes `VCB.A` one step further, provided the
pack-side gauge is actually bounded on `I`.

Set

```math
M_\sharp:=\|\Gamma_\sharp\|_{L^\infty(I)},
\qquad
R_{\rho}^{halo,\ast}:=M_\sharp\rho.
\tag{VCB.9}
```

Choose a smooth cutoff profile with plateau radius `\delta+R_{\rho}^{halo,\ast}`
and support radius `2\delta+R_{\rho}^{halo,\ast}`, and define the fixed
halo-shell cutoff

```math
\vartheta_{\rho,\psi,t}^{halo,\delta}(x)
:=
\Xi_{\delta}^{halo,\rho}(d_{\rho,\psi}(x,t)).
\tag{VCB.10}
```

Then `(OFP.10do)` gives the plateau inclusion

```math
B(c_j(t),R_{\rho}^{halo}(t))
\subset
\{\vartheta_{\rho,\psi,t}^{halo,\delta}=1\},
\tag{VCB.11}
```

and the corresponding halo-shell packet

```math
\mathcal G_{1,\rho,\psi}^{halo,\delta}(t)
:=
\sum_{\beta=0}^{2}
\int
\big(\vartheta_{\rho,\psi,t}^{halo,\delta}(x)\big)^2
\big|\nabla^\beta U_1(x,t)\big|^2\,dx
\tag{VCB.12}
```

obeys the theorem-facing implication

```math
\sup_{t\in I}\mathcal G_{1,\rho,\psi}^{halo,\delta}(t)<\infty
\Longrightarrow
\mathfrak U_{1,\rho}^{ball,ctr}\in L^\infty(I)
\Longrightarrow
\mathfrak U_{1,\rho}^{halo,ctr}\in L^\infty(I).
\tag{VCB.13}
```

### Corollary `VCB.Bc` (The widened receiver-side collar return already implies the variable-radius carrier once the anchored-center ledger is available)

Assume

```math
\sup_{t\in I}
\mathcal G_{N+4,N+4,\rho,\psi}^{low,\delta+5\Lambda_{\delta,\rho}^{halo}}(t)
<
\infty,
\tag{VCB.Bc0}
```

and

```math
\mathfrak A_{N,m,\rho,\psi}^{ctr}\in L^1(I).
\tag{VCB.Bc1}
```

Then

```math
\mathfrak U_{1,\rho}^{ball,ctr}\in L^\infty(I),
\qquad
\mathfrak U_{1,\rho}^{halo,ctr}\in L^\infty(I),
\tag{VCB.Bc2}
```

hence `VCB.A`.

### Proof

Corollary `HSP.Bc` gives
`\sup_{t\in I}\mathcal G_{1,\rho,\psi}^{halo,\delta}(t)<\infty`. Then `(VCB.13)`
gives `(VCB.Bc2)`. ∎

So once the bounded pack-side gauge is granted, the honest next move behind
`VCB.A` is not a new geometric philosophy. It is one fixed halo-shell
interval-propagation theorem, now isolated in
[mpp-lci-a-halo-shell-propagation-note.md](/Users/thomasbirnie/Workspace/ToE/Research-Consolidation/problems/navier-stokes/theorem-construction/mpp-lci-a-halo-shell-propagation-note.md)
as `HSP.A`; and that halo-shell theorem is itself reduced on disk to the
fixed-scale transported-center increment theorem `FEI.A` in
[mpp-lci-a-fixed-scale-eulerian-increment-note.md](/Users/thomasbirnie/Workspace/ToE/Research-Consolidation/problems/navier-stokes/theorem-construction/mpp-lci-a-fixed-scale-eulerian-increment-note.md).

The companion bounded-pack return note
[mpp-lci-a-variable-radius-bounded-pack-return-note.md](/Users/thomasbirnie/Workspace/ToE/Research-Consolidation/problems/navier-stokes/theorem-construction/mpp-lci-a-variable-radius-bounded-pack-return-note.md)
sharpens this one step further: the conditional realization `VCB.Bc` is not a
genuinely new supplier route, but a return to the old widened lower-carrier
packet theorem and the old anchored-center ledger. So the direct theorem
`VCB.A`, not `VCB.Bc`, is the real candidate escape from the route-native
`EOC` / `LCI` fixed point.

## Downstream Use

If `VCB.A` lands, then:

1. the halo coefficient in `(OFP.10cx)` is supplied;
2. together with the Eulerian increment envelope and the thickened collar
   envelope, Corollary `OFP.C1j` yields
   `\mathfrak O_{F,\rho}^{ctr}\in L^\infty(I)`;
3. substituting that into `(EOC.23)` closes the oscillation-side theorem
   `EOC.A` once the Eulerian increment envelope is also integrated on `I`;
4. then the direct one-field receiver order continues through
   `AFD.A \Longrightarrow AFD.B \Longrightarrow RCF.A \Longrightarrow LCI.A`,
   with `AFD.B` already discharged in stronger form by
   [mpp-lci-a-affine-defect-to-first-rung-bridge-note.md](/Users/thomasbirnie/Workspace/ToE/Research-Consolidation/problems/navier-stokes/theorem-construction/mpp-lci-a-affine-defect-to-first-rung-bridge-note.md).

So this note isolates the exact geometric supplier still missing below `EOC.A`.

## Boundary

This note does **not** prove `VCB.A`.

It also does **not** claim that `EOC.A` or any fixed-radius local Holder theorem
already controls the halo carrier on `B(c_j(t),\Gamma_\sharp(t)\rho)`.

The exact single obstruction is:

```math
\boxed{
\text{the route has no theorem on disk that closes the variable-radius first-rung carrier,}
\newline
\text{and even after bounded pack-side gauge is granted this reduces only to one fixed halo-shell propagation theorem,}
\newline
\text{whose bounded-pack realization is itself only a return to old `LCI`-family surfaces.}
}
\tag{VCB.14}
```

So the live geometric wall is the variable-radius center-ball theorem itself,
and, conditionally on bounded pack-side gauge, its exact next form is the
halo-shell packet propagation problem now isolated as `HSP.A` in
[mpp-lci-a-halo-shell-propagation-note.md](/Users/thomasbirnie/Workspace/ToE/Research-Consolidation/problems/navier-stokes/theorem-construction/mpp-lci-a-halo-shell-propagation-note.md),
not a vague need for “more shell propagation.”
