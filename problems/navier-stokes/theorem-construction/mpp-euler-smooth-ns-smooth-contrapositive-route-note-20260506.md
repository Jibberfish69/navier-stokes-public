# MPP Euler-Smooth / NS-Smooth Contrapositive Route Note

## Status

Theorem-facing route note from the current prompt.

Claim status: route thesis and proof program. This note does not claim the
proof burdens below are already discharged. Its job is to preserve the exact
idea without replacing it by a small-viscosity perturbation theorem or by a
weaker local subclass statement.

## Exact Route Thesis

Fix one scenario `S`: same domain, same smooth divergence-free initial datum,
same time window, same pressure normalization convention, and the same
theorem-facing comparison topology.

Let

```math
\mathcal E_{\mathrm{sm}}(S)
```

mean that the incompressible Euler equations are smooth on `S`:

```math
\partial_t u+(u\cdot\nabla)u+\nabla p=0,
\qquad
\nabla\cdot u=0.
\tag{ESNS.0}
```

Let

```math
\mathcal N_{\nu,\mathrm{sm}}(S)
```

mean that the incompressible Navier--Stokes equations with fixed positive
viscosity `\nu>0` are smooth on the corresponding scenario:

```math
\partial_t u+(u\cdot\nabla)u+\nabla p=\nu\Delta u,
\qquad
\nabla\cdot u=0.
\tag{ESNS.0a}
```

The first thesis is:

```math
\boxed{
\mathcal E_{\mathrm{sm}}(S)
\Longrightarrow
\forall \nu>0,\ \mathcal N_{\nu,\mathrm{sm}}(S).
}
\tag{ESNS.1}
```

This is the strong form. It is not the weaker inviscid-limit stability statement
"for sufficiently small `\nu`." The route thesis asserts that adding any
positive viscosity does not create a singularity in a scenario where the
non-viscous Euler carrier is already smooth.

## Euler Regularity-Failure Scenario Family

Separately, define

```math
\mathcal E_{\mathrm{nsing}}(S)
```

to mean Euler-side regularity failure on `S`, without treating that failure as
Euler membership exit.

This includes candidate Euler failures such as:

1. infinite shear;
2. tower blowup;
3. loss of one-field coherence;
4. loss of participation in the non-viscous transport-pressure carrier;
5. pressure/transport incompatibility at the Euler surface.

The second thesis is:

```math
\boxed{
\mathcal E_{\mathrm{nsing}}
\text{ is its own scenario family, not an internal fixed-}\nu>0
\text{ Navier--Stokes behavior.}
}
\tag{ESNS.2}
```

Some Navier--Stokes nonsmooth candidates may be reachable only as
zero-viscosity class-exit behavior:

```math
\nu_j\downarrow0,
\qquad
S_{\nu_j}\longrightarrow S_0\in\mathcal E_{\mathrm{nsing}}.
\tag{ESNS.3}
```

That is a `\nu\to0` boundary statement. It is not the assertion that
Euler regularity failure is already a fixed-positive-viscosity NS singularity or
an exit from Euler membership.

## Contrapositive Trick

The proposed proof mechanism is:

```math
\boxed{
\text{If every possible Navier--Stokes nonsmooth scenario is forced into the
}\nu\to0\text{ boundary or defect-boundary family outside fixed-positive-viscosity
NS membership, then fixed positive-viscosity Navier--Stokes is smooth.}
}
\tag{ESNS.4}
```

Written as a proof target:

```math
\left[
\exists \nu>0:\neg\mathcal N_{\nu,\mathrm{sm}}(S)
\right]
\Longrightarrow
\left[
S\text{ exits through }\nu\to0\text{ into }\mathcal E_{\mathrm{nsing}}
\right].
\tag{ESNS.5}
```

Together with the fixed-viscosity class law

```math
Member(Q;\mathfrak O^{work,\nu}_{NS})
\Longrightarrow
Visc^{fix}_{\nu}(Q),
\qquad
\nu>0,
\tag{ESNS.6}
```

and the boundary separation

```math
S_0\in\mathcal E_{\mathrm{nsing}}
\text{ only as a }\nu=0\text{ boundary class-exit}
\Longrightarrow
S_0\notin\mathfrak O^{work,\nu}_{NS}
\quad(\nu>0),
\tag{ESNS.7}
```

the contrapositive target is:

```math
\boxed{
\forall \nu>0,\ \mathcal N_{\nu,\mathrm{sm}}(S).
}
\tag{ESNS.8}
```

## Do Not Weaken This Note

The route thesis must not be replaced by any of the following:

```math
\mathcal E_{\mathrm{sm}}(S)
\Longrightarrow
\mathcal N_{\nu,\mathrm{sm}}(S)
\quad\text{only for sufficiently small }\nu.
\tag{ESNS.Bad1}
```

```math
\mathcal E_{\mathrm{nsing}}
\Longrightarrow
\text{fixed-}\nu\text{ Navier--Stokes singularity.}
\tag{ESNS.Bad2}
```

```math
\text{a partial selected subclass of NS failures proves the full theorem.}
\tag{ESNS.Bad3}
```

The full route requires the exhaustiveness theorem in `(ESNS.5)`. Before that
is proved, this note is a route thesis and proof program, not a completed
global regularity proof.

## Exact Burdens

The route now has five clean theorem burdens:

1. `EulerSmoothToAllPositiveViscosity.A`:

```math
\mathcal E_{\mathrm{sm}}(S)
\Longrightarrow
\forall\nu>0,\ \mathcal N_{\nu,\mathrm{sm}}(S).
\tag{ESNS.B1}
```

2. `EulerNonsmoothTaxonomy.A`:

```math
\mathcal E_{\mathrm{nsing}}
=
\text{classified Euler regularity-failure scenario family.}
\tag{ESNS.B2}
```

3. `NSSingToEulerNonsmoothBoundary.A`:

```math
\exists\nu>0:\neg\mathcal N_{\nu,\mathrm{sm}}(S)
\Longrightarrow
S\text{ exits through }\nu\to0\text{ into }\mathcal E_{\mathrm{nsing}}.
\tag{ESNS.B3}
```

4. `PositiveViscosityBoundaryExclusion.A`:

```math
\mathcal E_{\mathrm{nsing}}\text{ at }\nu=0
\Longrightarrow
\neg Member(Q;\mathfrak O^{work,\nu}_{NS})
\quad(\nu>0).
\tag{ESNS.B4}
```

5. `ContrapositiveAssembly.A`:

```math
ESNS.B1+ESNS.B2+ESNS.B3+ESNS.B4
\Longrightarrow
\forall\nu>0,\ \mathcal N_{\nu,\mathrm{sm}}(S).
\tag{ESNS.B5}
```

## Route Interface

This note interfaces with the existing Navier--Stokes class-membership route
through:

```math
Visc^{fix}_{\nu},
\qquad
\partial_{\nu=0}\mathfrak O^{work}_{NS},
\qquad
CM^\nu=Pack+Part^\nu+Field^\nu,
\qquad
\mathrm{Member}_E=EVol+EMom.
\tag{ESNS.9}
```

It interfaces with the Euler mirror through the exact removal of the viscosity
carrier and the demotion of copied NS witness rows into optional regularity
layers:

```math
Part^\nu/Field^\nu
\quad\leadsto\quad
EAdm/ELag/EReg
\quad\text{only after those Euler layers are separately defined and proved.}
\tag{ESNS.10}
```

This is the theorem-facing form of the current prompt.
