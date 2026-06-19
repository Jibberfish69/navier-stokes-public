# MPP LCI.A Widened-Receiver Return Note

## Status

Candidate theorem-facing note.

Role: identify the widened receiver-side return `(EOC.27)` as an old
lower-order collar packet theorem instance, not a new supplier family.

## Purpose

The enlarged-ball route uses the widened receiver-side return

```math
\sup_{t\in I}
\mathcal G_{N+4,N+4,\rho,\psi}^{low,\delta+5\Lambda_{\delta,\rho}^{halo}}(t)
<
\infty.
\tag{WRR.0}
```

The exact question is:

```math
\boxed{
\text{is }(WRR.0)\text{ a new widened-return theorem family, or just the old }
LCI.B\text{ packet theorem at larger depth and thickness?}
}
\tag{WRR.1}
```

## Installed Genericity Already On Disk

The lower-carrier packet theorem `LCI.B` is already stated for arbitrary depth
`N`, Sobolev index `m`, and collar thickness `\delta`:

```math
\sup_{t\in I}
\mathcal G_{N,m,\rho,\psi}^{low,\delta}(t)
<
\infty.
\tag{LCI.3c}
```

The widened receiver-side return is the parameter substitution

```math
N\mapsto N+4,
\qquad
m\mapsto N+4,
\qquad
\delta\mapsto \delta+5\Lambda_{\delta,\rho}^{halo}.
\tag{WRR.2}
```

### Reduction `WRR.A` (The widened receiver-side return is exactly `LCI.B` at enlarged depth and thickness)

Assume the pack gauge is propagated and the initial widened lower-order collar
packet is finite:

```math
\Gamma_\sharp\in L^\infty(I),
\qquad
\mathcal G_{N+4,N+4,\rho,\psi}^{low,\delta+5\Lambda_{\delta,\rho}^{halo}}(t_0)
<
\infty.
\tag{WRR.3}
```

Then

```math
\sup_{t\in I}
\mathcal G_{N+4,N+4,\rho,\psi}^{low,\delta+5\Lambda_{\delta,\rho}^{halo}}(t)
<
\infty.
\tag{WRR.4}
```

Equivalently, `(WRR.4)` is exactly the widened receiver-side return `(EOC.27)`.

### Proof

Apply Theorem `LCI.B` with the substitutions `(WRR.2)`. The lower-order
moving-collar identity `LCI.B1`, the coefficient reduction `LCI.B2`, and the
downstream readout all remain valid with those fixed parameter changes. So the
same theorem surface yields `(WRR.4)`. ∎

### Corollary `WRR.B` (No new widened-return family survives below `EOC.C`)

The widened receiver-side return `(EOC.27)` is not a new theorem family. It is
exactly the old lower-order collar packet theorem `LCI.B`, read at enlarged
depth `N+4` and enlarged thickness `\delta+5\Lambda_{\delta,\rho}^{halo}`.

So beneath `EOC.C`, both live receiver objects are now expressed in old theorem
families:

1. the widened return `(EOC.27)` is `LCI.B` at enlarged depth/thickness;
2. the common thickened consumer `CSP.A_{\delta+\delta_{seg}}` reduces through
   the widened-thickness collar notes to `LCI.A` at thickness
   `\delta+\delta_{seg}` together with the separate source burden `(FCI.5f)`.

### Lemma `WRR.C` (Still-live receiver admission supplies the widened return directly)

The route-native identification above is not the only way to obtain `(EOC.27)`.
The companion receiver-admission note
[mpp-lci-a-pre-csp-still-live-receiver-admission-note.md](/Users/thomasbirnie/Workspace/ToE/Research-Consolidation/problems/navier-stokes/theorem-construction/mpp-lci-a-pre-csp-still-live-receiver-admission-note.md)
proves the widened return directly on any retained window whose widened
receiver cutoff stays inside one compact still-live collar.

Concretely, if

```math
\operatorname{supp}\vartheta_{\rho,\psi,t}^{\delta+5\Lambda_{\delta,\rho}^{halo}}
\subset Q_t^{rec,+}
\qquad(t\in I)
\tag{WRR.5}
```

with the finite support-volume and smoothness bounds `(SLR.4)`--`(SLR.5)`,
then

```math
\sup_{t\in I}
\mathcal G_{N+4,N+4,\rho,\psi}^{low,\delta+5\Lambda_{\delta,\rho}^{halo}}(t)
<
\infty.
\tag{WRR.6}
```

Thus `(EOC.27)` is supplied without invoking the widened `LCI.B` instance.

### Proof

This is Lemma `SLR.C`. On the cutoff support, the terms
`\nabla^\alpha U_q` with `q\le N+4` and `\alpha\le2` are bounded by the
still-live smoothness constant on `Q^{rec,+}`, and the support volume is
uniformly finite. ∎

## Honest Boundary

This note does **not** prove the widened instance of `LCI.B`, and it does
not resolve the route-native circularity already noted between the enlarged-ball
supplier and the lower-carrier receiver. Lemma `WRR.C` closes `(EOC.27)` only
on the direct still-live receiver-admission route.

What it does prove is narrower and exact:

1. the widened receiver-side return `(EOC.27)` is not a new widened-shell
   theorem family;
2. it is exactly the old lower-order collar packet theorem `LCI.B` at enlarged
   depth and thickness;
3. this means the remaining `EOC` receiver wall is now expressed entirely in
   old theorem families rather than in a bespoke widened-return package;
4. on retained still-live windows, `(EOC.27)` also has the direct admission
   proof `WRR.C`, which bypasses that old-family fixed point.
