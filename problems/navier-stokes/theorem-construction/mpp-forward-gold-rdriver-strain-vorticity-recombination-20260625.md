---
theorem_id: forward-gold-rdriver-strain-vorticity-recombination-20260625
status: exact-recombination-installed; pressure-hessian-graph-driver-reassigned-to-signed-strain-vorticity-record
logical_landing_node: global_same_packet_full_clock_from_original_data
edge_effect: >-
  Strengthens the material elliptic graph-driver reduction by recombining the
  pressure-Hessian tangent term with the cubic term in \(D_tR\).  The term
  \(-2S:\nabla^2p\) is not a pressure tangent residue.  Using the material
  strain equation and the algebra of \(B=S+\Omega\), the whole pressure-RHS
  tangent driver becomes the signed variation of the strain-vorticity material
  record \(R=\operatorname{tr}(B^2)=|S|^2+\operatorname{tr}(\Omega^2)\), plus
  viscous/collar service.  This closes the pressure-Hessian tangent placement
  exactly and leaves only the positive variation of the same continuation-depth
  strain-vorticity record.
parents:
  - problems/navier-stokes/live-theorem-edge.yaml
  - problems/navier-stokes/theorem-construction/mcp-materialellipticgraphdriversignedreduction-a-globalsamepacketfullclockfromoriginaldata-a-fe3cacea22.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-superheat-strain-riccati-log-storage-reduction-20260625.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-full-primitive-coefficient-log-storage-test-20260625.md
---

# R-Driver Strain/Vorticity Recombination

Date: 2026-06-25

## 0. Object

The pressure graph is

```math
L_Gq=R,
\qquad
R=A_{\ell i}A_{kj}\partial_{a_\ell}v_j\,\partial_{a_k}v_i .
\tag{RSV.1}
```

In Eulerian principal variables, write

```math
B=\nabla u=S+\Omega,
\qquad
S^T=S,\quad \Omega^T=-\Omega,\quad \operatorname{tr}S=0.
\tag{RSV.2}
```

Then

```math
R=\operatorname{tr}(B^2).
\tag{RSV.3}
```

The installed graph-driver note correctly computes

```math
D_tB=-B^2-\nabla^2p+\nu\Delta B
\tag{RSV.4}
```

and therefore

```math
D_tR
=
-2\operatorname{tr}(B^3)
-2S:\nabla^2p
+2\nu\operatorname{tr}(B\Delta B).
\tag{RSV.5}
```

The new point is that the two non-viscous terms in `(RSV.5)` should be
recombined before they are classified.

## 1. Recombine the pressure-Hessian term with the cubic term

The material strain equation is

```math
D_tS+S^2+\Omega^2+\nabla^2p=\nu\Delta S .
\tag{RSV.6}
```

Contract `(RSV.6)` with \(2S\).  Since \(S:\Omega^2=\operatorname{tr}(S\Omega^2)\),

```math
-2S:\nabla^2p
=
2S:D_tS
+2\operatorname{tr}(S^3)
+2\operatorname{tr}(S\Omega^2)
-2\nu\operatorname{tr}(S\Delta S).
\tag{RSV.7}
```

The cubic algebra for \(B=S+\Omega\) is

```math
\operatorname{tr}(B^3)
=
\operatorname{tr}(S^3)
+3\operatorname{tr}(S\Omega^2).
\tag{RSV.8}
```

Substituting `(RSV.7)` and `(RSV.8)` into `(RSV.5)` gives

```math
D_tR
=
2S:D_tS
-4\operatorname{tr}(S\Omega^2)
+2\nu\operatorname{tr}(\Omega\Delta\Omega).
\tag{RSV.9}
```

This is the exact cancellation that the raw pressure/cubic split hides.

Equivalently, the skew part satisfies

```math
D_t\Omega+S\Omega+\Omega S=\nu\Delta\Omega,
\tag{RSV.10}
```

so

```math
D_t\operatorname{tr}(\Omega^2)
=
-4\operatorname{tr}(S\Omega^2)
+2\nu\operatorname{tr}(\Omega\Delta\Omega).
\tag{RSV.11}
```

Thus

```math
\boxed{
D_tR
=
D_t\operatorname{tr}(S^2)
+D_t\operatorname{tr}(\Omega^2).
}
\tag{RSV.12}
```

This is tautological from \(R=\operatorname{tr}(S^2)+\operatorname{tr}(\Omega^2)\),
but deriving it through `(RSV.5)` proves the placement of the pressure-Hessian
driver: it is part of the signed strain-vorticity material record, not an
independent pressure tangent source.

## 2. Vorticity orientation

With \(\omega=\nabla\times u\),

```math
\operatorname{tr}(\Omega^2)=-{1\over2}|\omega|^2.
\tag{RSV.13}
```

Therefore the skew contribution in `(RSV.11)` is the negative enstrophy
variation.  When this contribution is positive in the \(R\)-driver, the
vorticity record is dropping.  That orientation is paid by the bounded-below
storage

```math
{1\over2}|\omega|^2\ge0
\tag{RSV.14}
```

up to the usual viscous integration-by-parts and transported-collar terms.

When the vorticity record grows, the contribution has the opposite sign in
`(RSV.11)`.  That is vorticity stretching.  It is not a pressure source and not
a collar source; it is the strain-vorticity coordinate of the same
participation-law-strain packet.

## 3. Strain orientation

The symmetric contribution in `(RSV.12)` is

```math
D_t\operatorname{tr}(S^2)=2S:D_tS.
\tag{RSV.15}
```

Its pure positive top-strain self-stretch has already been isolated in the
strain Riccati log-storage reduction:

```math
D_tS+S^2+\Omega^2+\nabla^2p=\nu\Delta S.
\tag{RSV.16}
```

The negative \(-S^2\) part gives the genuine strain-log payment.  The companion
terms are vorticity rotation, pressure-Hessian feedback, and viscous
strain-tower service.  The calculation above shows that the pressure-Hessian
feedback and the cubic \(R\)-driver should be read together as `(RSV.12)`, not
as separate source accounts.

## 4. Consequence for the graph-compatible PLS clock

The graph-driver pressure/RHS sector is now exactly typed:

```math
d\Omega_N^{R-driver}
\quad\text{is a readout of}\quad
d\operatorname{tr}(S^2)+d\operatorname{tr}(\Omega^2)
\tag{RSV.17}
```

on the transported material packet, plus viscous/Hodge/collar/legal service.

So the tangent-normal split should be read in the sharper form

```math
d\Omega_N^{press/RHS}
+d\Omega_N^{collar}
\le
C_Nd\Omega_N^{rel.defect}
+C_Nd\Omega_N^{strain/vorticity\ record}
+C_NdD_N^{vis}
+dR_N^{legal}.
\tag{RSV.18}
```

This is stronger than saying merely that the pressure-Hessian term belongs to
the strain equation.  It shows the pressure-Hessian and cubic graph-driver
terms are one signed strain-vorticity record variation.

## 5. What this closes and what it leaves

This closes the pressure-Hessian tangent placement:

```math
\boxed{
-2S:\nabla^2p
\text{ is not a separate pressure clock.}
}
\tag{RSV.19}
```

It also closes the positive vorticity-compression orientation by bounded-below
enstrophy drop:

```math
\boxed{
\left[D_t\operatorname{tr}(\Omega^2)\right]_+
\text{ is paid by a drop of }{1\over2}|\omega|^2
\text{ up to viscous/collar service.}
}
\tag{RSV.20}
```

The remaining same-packet object is the positive variation of the continuation
depth strain-vorticity record itself:

```math
\boxed{
\int_0^{T_*}
d\left[\operatorname{tr}(S_N^2)+\operatorname{tr}(\Omega_N^2)\right]_+
<\infty
}
\tag{RSV.21}
```

in the graph-compatible material tower, with the top-strain Riccati part,
subheat viscosity, wrong-sign recirculation, Schur normal defect, base annular
stress, Hodge/collar, and legal terms already separated.

Thus this note does not close the full MPP by itself.  It removes a false
pressure-Hessian obstruction and identifies the remaining primitive driver as
strain-vorticity material-record variation, still inside the full
pressure-viscosity-incompressibility-velocity participation law.

