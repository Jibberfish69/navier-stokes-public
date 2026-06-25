---
theorem_id: forward-gold-pressure-hessian-to-strain-eigenvalue-clock-placement-20260625
status: exact-identity-installed; pressure-hessian-partner-is-same-material-strain-clock
logical_landing_node: global_same_packet_full_clock_from_original_data
edge_effect: >-
  Converts the pressure-Hessian partner question into the exact material strain
  eigenvalue identity. The directional pressure Hessian is not a detached
  pressure-only channel and not an arbitrary Calderon-Zygmund lobe after the
  material packet is kept whole. It is the same pressure-viscosity-
  incompressibility-velocity law read through material strain eigenvalue
  growth, vorticity/rotation balance, and viscous strain diffusion. This proves
  attachment of pressure-Hessian service to the original transported annular
  history, while showing that it does not by itself produce finite rectified
  full-clock variation.
parents:
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-pressure-hessian-partner-retention-full-clock-reduction-20260625.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-material-strain-eigenvalue-shape-law-test-20260625.md
  - problems/navier-stokes/theorem-construction/mpp-pressure-hessian-partner-graph-normal-form-20260517.md
  - problems/navier-stokes/theorem-construction/mpp-terminal-cz-pressure-cancellation-direct-attempt-20260517.md
---

# Pressure Hessian To Strain Eigenvalue Clock Placement

Date: 2026-06-25

## 0. Object

The object is one original smooth material history.  A transported annulus is
not a separate event and the pressure Hessian is not a free pressure-only
signal.  It is the incompressibility force inside the same
pressure-viscosity-incompressibility-velocity packet.

The point of this note is to place the directional pressure-Hessian service in
that packet exactly.

## 1. Exact strain equation

Let

```math
D_t=\partial_t+u\cdot\nabla,
\qquad
B=\nabla u,
\qquad
S={B+B^T\over2},
\qquad
\Omega={B-B^T\over2}.
\tag{PHSE.1}
```

Differentiating Navier-Stokes and taking the symmetric part gives

```math
D_tS+S^2+\Omega^2+\nabla^2p=\nu\Delta S.
\tag{PHSE.2}
```

This is the same material participation law in strain coordinates.

## 2. Eigenvalue placement of pressure Hessian

Let `lambda` be a simple eigenvalue of `S` along a material trajectory, with
unit eigenvector `e`.  Then

```math
D_t\lambda=e\cdot(D_tS)e.
\tag{PHSE.3}
```

Taking the `e`-component of `(PHSE.2)` gives

```math
D_t\lambda
+\lambda^2
+e\cdot\Omega^2e
+e\cdot\nabla^2p\,e
=
\nu\,e\cdot\Delta S\,e.
\tag{PHSE.4}
```

Since `Omega` is skew-symmetric,

```math
e\cdot\Omega^2e=-|\Omega e|^2.
\tag{PHSE.5}
```

Therefore the directional pressure-Hessian service is exactly

```math
-e\cdot\nabla^2p\,e
=
D_t\lambda
+\lambda^2
-|\Omega e|^2
-\nu\,e\cdot\Delta S\,e.
\tag{PHSE.6}
```

For a nonsimple top eigenvalue, the same formula is read with the upper Dini
derivative of `lambda_max` and an eigenvector in the top eigenspace realizing
that derivative:

```math
D_t^+\lambda_{\max}
=
\max_{e\in E_{\max},\,|e|=1} e\cdot(D_tS)e.
\tag{PHSE.7}
```

Thus the positive pressure-Hessian lobe satisfies the pointwise same-packet
bound

```math
\bigl[-e\cdot\nabla^2p\,e\bigr]_+
\le
\bigl[D_t\lambda\bigr]_+
+
\bigl[\lambda^2-|\Omega e|^2\bigr]_+
+
\nu\,|e\cdot\Delta S\,e|.
\tag{PHSE.8}
```

This is not a pressure-only estimate.  It is the pressure term rewritten as
material strain growth, strain-vorticity imbalance, and viscous strain tower
service.

## 3. Annular reading

On a transported annular cutoff `phi`, the same identity gives

```math
\int \phi\,\bigl[-e\cdot\nabla^2p\,e\bigr]_+
\le
\int \phi\,\bigl[D_t\lambda\bigr]_+
+
\int \phi\,\bigl[\lambda^2-|\Omega e|^2\bigr]_+
+
\nu\int \phi\,|e\cdot\Delta S\,e|
\tag{PHSE.9}
```

up to the already-typed transported collar and eigenframe selection terms.
Those collar/eigenframe terms are same-material packet terms, not outside
pressure residues.

So a selected positive pressure-Hessian event cannot detach from the annular
stress/strain history.  It is a reading of that history.

## 4. What this proves

This closes the detachable-pressure-partner interpretation:

```math
\text{selected positive pressure-Hessian service}
\quad\leadsto\quad
\text{same-material strain eigenvalue growth/imbalance/tower service}.
\tag{PHSE.10}
```

It also explains why the pressure partner graph and the Calderon-Zygmund
partner notes did not produce the final clock.  They were tracking the same
pressure-incompressibility redistribution before it was placed into the
material strain law.

## 5. What this does not prove

The right side of `(PHSE.8)` is the live clock itself:

```math
\bigl[D_t\lambda\bigr]_+
+
\bigl[\lambda^2-|\Omega e|^2\bigr]_+
+
\nu\,|e\cdot\Delta S\,e|.
\tag{PHSE.11}
```

The first term is positive material strain-record growth.  The second is the
signed strain-vorticity imbalance after positive selection.  The third is a
viscous strain-tower term.  Energy, pressure ellipticity, and Calderon-Zygmund
mean-zero cancellation do not give finite rectified integral of `(PHSE.11)`.

Thus the exact proof-state is:

```math
\text{pressure-Hessian attachment is proved;}
\qquad
\text{finite full material clock is not produced by this identity alone.}
\tag{PHSE.12}
```

The remaining gold-route estimate is still finite rectified same-material
strain/pressure-Hessian/viscous-tower service along the original smooth
transported history.
