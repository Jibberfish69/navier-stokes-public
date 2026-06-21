---
theorem_id: forward-gold-transported-pressure-adapted-selector-commutator-potential-test-20260621
status: transport-commutator-potential-identity-proved-full-hodge-stokes-selector-production-open
logical_landing_node: transported_pressure_adapted_selector_commutator_potential
edge_effect: "Pushes the no-residue route one layer deeper after the full Hodge-Stokes packet repair. For a self-adjoint transport-channel selector metric G_sigma^tr=(A_sigma^tr)^*A_sigma^tr and incompressible transport L=u.grad, the mixed interaction satisfies the exact operator identity <A_sigma^tr L u,A_sigma^tr u>=-1/2 <[L,G_sigma^tr]u,u>. Thus the transport component of the selected source is the transport commutator / cotangent material variation of the selector metric. A fixed dyadic selector turns this into a strain commutator and hence the usual square-source residue. A selector transported by the incompressible cotangent/material flow can make the principal transport commutator vanish or become sigma-capacity/geometry motion, but the pressure, viscous, divergence, cutoff, signed, and tail channels must remain explicit in the full Hodge-Stokes packet. This identifies one component of the concrete production route for ParticipationPreservingNoResidueFullCycle.A: construct and retain a same-carrier transported full Hodge-Stokes selector package. The production theorem remains open."
parents:
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-pressure-adapted-no-residue-skew-coercivity-criterion-20260621.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-bodyiv-deformation-gradient-return-normal-form-20260621.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-bodyiii-bodyiv-canonical-geometry-packet-interface-criterion-20260621.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-upgraded-four-body-current-frontier-20260621.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-participation-preserving-hodge-stokes-packet-replacement-20260621.md
---

# Transported Pressure-Adapted Selector Commutator Potential Test

Date: 2026-06-21

## 0. Aim

The participation-preserving no-residue criterion isolates the transport
commutator inside the full Hodge-Stokes packet:

```math
\mathcal C_\sigma^{tr}
=
\langle[A_\sigma^{tr},u\cdot\nabla]u,A_\sigma^{tr}u\rangle.
\tag{TPC.1}
```

This note asks how that commutator could become a capacity drop instead of a
source-square residue.

The answer for this component is: choose the transport selector as a
material/cotangent object.  Then the commutator is the transport commutator,
equivalently the cotangent material variation, of the selector metric.  Fixed
selectors create a strain commutator.  Transported selectors move that strain
into geometry/scale motion.  The pressure, viscosity, incompressibility,
cutoff, signed-saturation, and tail channels remain in the full packet; they
are not collapsed into this transport identity.

## 1. Exact metric identity

Let

```math
A_\sigma^{tr}=S_\sigma^{tr},
\qquad
G_\sigma^{tr}=(A_\sigma^{tr})^\ast A_\sigma^{tr}.
\tag{TPC.2}
```

Let \(L=u\cdot\nabla\).  Since \(\nabla\cdot u=0\), \(L\) is skew-adjoint in
the closed localized pairing:

```math
L^\ast=-L.
\tag{TPC.3}
```

The mixed interaction is

```math
\mathcal M_\sigma
=
\langle A_\sigma^{tr} L u,A_\sigma^{tr} u\rangle
=
\langle L u,G_\sigma^{tr} u\rangle.
\tag{TPC.4}
```

Use skew-adjointness:

```math
\langle L u,G_\sigma^{tr} u\rangle
=
-\langle u,L(G_\sigma^{tr} u)\rangle
=
-\langle u,[L,G_\sigma^{tr}]u\rangle
-\langle u,G_\sigma^{tr} L u\rangle.
\tag{TPC.5}
```

Because \(G_\sigma^{tr}\) is self-adjoint,

```math
\langle u,G_\sigma^{tr} L u\rangle
=
\langle L u,G_\sigma^{tr} u\rangle.
\tag{TPC.6}
```

Therefore

```math
\boxed{
\mathcal M_\sigma
=
-{1\over2}\langle [L,G_\sigma^{tr}]u,u\rangle.
}
\tag{TPC.7}
```

Equivalently,

```math
\boxed{
\langle[A_\sigma^{tr},L]u,A_\sigma^{tr}u\rangle
=
-{1\over2}\langle [L,G_\sigma^{tr}]u,u\rangle.
}
\tag{TPC.8}
```

This is the key structural point.  The selected nonlinear source is not an
arbitrary cubic term after the transport skew part is removed.  It is the
transport commutator of the selector metric \(G_\sigma^{tr}\).  At the symbol
level this is the cotangent material derivative.

## 2. Why a fixed selector gives the square-source residue

For a fixed dyadic or packet selector, the metric \(G_\sigma^{tr}\) does not
move with the fluid deformation.  Then \([L,G_\sigma^{tr}]\) is the commutator
between transport and the fixed scale/frequency cutoff.

At principal-symbol level, if \(g_\sigma^{tr}(x,\xi)\) is the symbol of
\(G_\sigma^{tr}\), incompressible transport produces the cotangent derivative

```math
(\partial_t+u\cdot\nabla_x-(\nabla u)^\top\xi\cdot\nabla_\xi)g_\sigma^{tr}.
\tag{TPC.9}
```

For a fixed radial frequency cutoff \(g_\sigma^{tr}(|\xi|)\), the frequency
part is schematically

```math
-((\nabla u)^\top\xi)\cdot\nabla_\xi g_\sigma^{tr}.
\tag{TPC.10}
```

The symmetric strain \(S=(\nabla u+\nabla u^\top)/2\) controls this term.  Its
positive part is exactly the active stretching/source coefficient that later
gets estimated as

```math
\Theta_\sigma E_\sigma^{1/2}D_\sigma^{1/2}
\le
\varepsilon\nu D_\sigma
+
C_\varepsilon\Theta_\sigma^2E_\sigma.
\tag{TPC.11}
```

So the square-source residue is the price of using a selector that is fixed
while the incompressible flow deforms the selected scale/frequency geometry.

## 3. Transported selector condition

The no-residue version asks for \(G_\sigma^{tr}\) to be transported by the
same material/cotangent flow while the other Hodge-Stokes channels remain
visible:

```math
\boxed{
(\partial_t+u\cdot\nabla_x-(\nabla u)^\top\xi\cdot\nabla_\xi)g_\sigma^{tr}
=
\partial_\sigma k_\sigma
+
r_\sigma.
}
\tag{TPC.12}
```

Here \(\partial_\sigma k_\sigma\) is the scale-capacity motion that will become
\(-\partial_\sigma\Phi_\sigma\), and \(r_\sigma\) is a lower-order/tail
remainder.

At operator level, `(TPC.12)` is the transport part of the desired
metric-transport identity:

```math
\boxed{
\partial_sG_\sigma^{tr}
+[L,G_\sigma^{tr}]
=
\partial_\sigma K_\sigma
+
R_\sigma.
}
\tag{TPC.13}
```

Substituting `(TPC.13)` into `(TPC.7)` gives

```math
\mathcal M_\sigma
=
-{1\over2}\langle(\partial_\sigma K_\sigma)u,u\rangle
-{1\over2}\langle R_\sigma u,u\rangle.
\tag{TPC.14}
```

The first term is the intended capacity drop.  If

```math
\Phi_\sigma={1\over2}\langle K_\sigma u,u\rangle
\tag{TPC.15}
```

is bounded below after including the harmless time/scale derivative corrections
from the normalized Navier-Stokes equation, then `(TPC.14)` has the desired
shape

```math
\mathcal M_\sigma^+
\le
-\partial_\sigma\Phi_\sigma
+
\text{viscous absorbable terms}
+
\text{tail/legal terms}.
\tag{TPC.16}
```

This is the geometric meaning of the transport-channel part of no-residue
absorption.

## 4. Full Hodge-Stokes channel placement

The normalized Navier-Stokes equation is

```math
\partial_su+Lu+\nabla p=\nu\Delta u.
\tag{TPC.17}
```

After selecting the packet, the pressure term is not discarded.  It is carried
as its own channel

```math
\langle S_\sigma^p\nabla p,A_\sigma^{tr}u\rangle
\tag{TPC.18}
```

together with its conormal, gauge, cutoff, and elliptic compatibility records.
Leray compatibility may cancel part of `(TPC.18)`, but the cancellation must
be recorded inside the full packet rather than used to delete the pressure
channel before terminal selection.

The viscosity term gives the absorbable positive payment:

```math
\nu\langle S_\sigma^\nu\Delta u,A_\sigma^{tr}u\rangle
=
-\nu D_\sigma^{sel}
+
\text{viscous selector/cutoff remainder}.
\tag{TPC.19}
```

The no-residue theorem requires the selector/viscosity remainder in `(TPC.19)`
to obey

```math
\text{viscous selector remainder}
\le
\varepsilon\nu D_\sigma
+
T_\sigma,
\qquad
T_\sigma\in L^1_\sigma.
\tag{TPC.20}
```

Again, no \(C_\varepsilon\Theta_\sigma^2E_\sigma\) term is allowed.

There is one more exact bookkeeping point.  If \(G_\sigma^{tr}\) also depends
on renormalized time \(s\), then the selected transport energy

```math
E_\sigma^{tr}(s)={1\over2}\langle G_\sigma^{tr}(s)u(s),u(s)\rangle
\tag{TPC.20a}
```

contains the full Heisenberg combination

```math
\boxed{
\partial_sG_\sigma^{tr}+[L,G_\sigma^{tr}].
}
\tag{TPC.20b}
```

Thus the production theorem may use the stronger transported full-channel
equation

```math
\boxed{
\partial_sG_\sigma^{tr}+[L,G_\sigma^{tr}]
+\mathcal P_\sigma
+\mathcal V_\sigma
+\mathcal I_\sigma
+\mathcal B_\sigma
=
\partial_\sigma K_\sigma+R_\sigma.
}
\tag{TPC.20c}
```

For a time-independent frozen selector, this reduces to `(TPC.13)`.  For a
materially transported selector, `(TPC.20c)` is the exact equation that moves
the principal strain commutator into scale-capacity/geometry motion while
keeping pressure, viscosity, incompressibility, and boundary/cutoff channels
visible.

## 5. Relation to Body IV

The transported selector condition `(TPC.12)` is not an isolated Fourier trick.
It is the frequency-side companion of the Body-IV deformation equations:

```math
\partial_tF=(\nabla u)(X(a,t),t)F,
\qquad
\partial_tG_{mat}=-2A_{mat}S(X(a,t),t)A_{mat}^\top.
\tag{TPC.21}
```

Physical deformation moves tangent vectors by \(F\), while the cotangent
frequency variable moves by \(F^{-T}\).  A selector transported by this
geometry can keep the selected packet aligned with the same material carrier.

Thus the no-residue skew route and the four-body geometry return are the same
idea seen from two sides:

```math
\boxed{
\text{Body IV controls the moving metric that makes the Body-II commutator
skew/capacity-like instead of source-square-like.}
}
\tag{TPC.22}
```

## 6. Production requirements

The exact production theorem behind `(TPC.16)` is:

```math
\boxed{
\text{TransportedFullHodgeStokesSelector.A}
}
\tag{TPC.23}
```

It requires all of the following on the retained terminal same-carrier family:

```math
\boxed{
\text{self-adjoint positive transport metric }
G_\sigma^{tr}=(A_\sigma^{tr})^\ast A_\sigma^{tr};
}
\tag{TPC.24}
```

```math
\boxed{
\text{full Hodge-Stokes packet compatibility after localization and gauge choice;}
}
\tag{TPC.25}
```

```math
\boxed{
\partial_sG_\sigma^{tr}+[L,G_\sigma^{tr}]
+\mathcal P_\sigma+\mathcal V_\sigma+\mathcal I_\sigma+\mathcal B_\sigma
=\partial_\sigma K_\sigma+R_\sigma
\text{ with }R_\sigma\text{ viscous-absorbable or }L^1_\sigma;
}
\tag{TPC.26}
```

```math
\boxed{
\Phi_\sigma={1\over2}\langle K_\sigma u,u\rangle
\text{ has a lower bound on the terminal tail;}
}
\tag{TPC.27}
```

```math
\boxed{
\text{the transported selector remains the same selected carrier across
compactness and Body-IV geometry return;}
}
\tag{TPC.28}
```

and

```math
\boxed{
\text{off-carrier, caustic, cutoff, pressure, and tail leakage are summable or
charged defects.}
}
\tag{TPC.29}
```

When these hold together with the full Hodge-Stokes packet compatibility,
`ParticipationPreservingNoResidueFullCycle.A` follows, and the source-square
residual is deleted.

## 7. Obstruction after this test

This test proves a real identity, not a closure theorem.  The open obstruction
has moved from "estimate the commutator by size" to:

```math
\boxed{
\text{construct and retain a transported full Hodge-Stokes selector package
with controlled material/cotangent geometry.}
}
\tag{TPC.30}
```

The expected failure modes are exact:

```math
\boxed{
\text{selector loses self-adjoint positivity;}
\quad
\text{pressure, viscous, or divergence channel creates a non-summable local trace;}
}
\tag{TPC.31}
```

```math
\boxed{
\text{the cotangent flow folds/caustics beyond Body-IV control;}
\quad
\text{the selected carrier changes under compactness;}
}
\tag{TPC.32}
```

```math
\boxed{
\text{the scale-capacity }\Phi_\sigma\text{ is not bounded below;}
\quad
\text{tail leakage is not }L^1_\sigma.
}
\tag{TPC.33}
```

These are now the concrete full-cycle Hodge-Stokes production sites for the
no-residue route.

## Verdict

The no-residue idea has a sharper internal mechanism:

```math
\boxed{
\text{the bad commutator is the transport/cotangent material derivative of the
selector metric.}
}
\tag{TPC.34}
```

A fixed selector turns that derivative into strain/source-square residue.  A
transported full Hodge-Stokes selector package would turn it into
scale-capacity drop, viscous payment, and summable tail while keeping pressure,
divergence, cutoff, and signed-saturation channels visible.

So the next exact production target inside this branch is
`TransportedFullHodgeStokesSelector.A`, not another crude commutator estimate.
