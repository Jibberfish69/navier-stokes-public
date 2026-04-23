# Frozen Tolerance Localization Packet

## Status

Active theorem-facing upstream debt note.

Role: isolate the auxiliary scalar localization packet carried by the frozen
linearization splice, separate from the genuinely geometric exceptional-set
measure wall.

## Purpose

Discharge the scalar frozen tolerance packet:

```math
\boxed{
\texttt{FrozenTolLoc}_{\mu,p}
}
\tag{FTOL.0}
```

This is the auxiliary localization form attached to the chosen frozen
tolerance schedule `\vartheta_{J,\tau}^{lin}`.

## Exact Setup

Let the frozen tolerance schedule be

```math
\vartheta_{J,\tau}^{lin}(a)\ge 0
\qquad
\text{on }\pi_a(\mathcal G_J).
\tag{FTOL.0a}
```

Write

```math
\Xi_{J,\tau}^{tol}(a)
:=
\bigl(\vartheta_{J,\tau}^{lin}(a)\bigr)^2.
\tag{FTOL.0b}
```

## Exact Target

### Theorem FTOL.A (frozen tolerance localization)

Assume there is a measurable bad set `B_J^{tol,\tau}\subset\mathcal G_J` such
that

```math
\operatorname{supp}\bigl(\vartheta_{J,\tau}^{lin}\bigr)
\subseteq
B_J^{tol,\tau},
\qquad
\mu_J^{pair}(B_J^{tol,\tau})=o_J(1),
\tag{FTOL.1}
```

and assume the plain pair-measure bound

```math
\bigl\|\vartheta_{J,\tau}^{lin}\bigr\|_{L^p(d\mu_J^{pair})}
\le
C_{p,\tau}^{tol}.
\tag{FTOL.2}
```

Then the scalar frozen tolerance packet `\texttt{FrozenTolLoc}_{\mu,p}` holds,
equivalently

```math
\bigl\|\Xi_{J,\tau}^{tol}\bigr\|_{L^{p/2}(d\mu_J^{pair})}
=
\bigl\|\vartheta_{J,\tau}^{lin}\bigr\|_{L^p(d\mu_J^{pair})}^2
\le
\bigl(C_{p,\tau}^{tol}\bigr)^2.
\tag{FTOL.3}
```

So the scalar side of the frozen linearization splice is exactly one
support-localized `L^p` control theorem for the chosen frozen tolerance
schedule.

## Proof

The support claim is exactly `(FTOL.1)`. The norm identity in `(FTOL.3)` is the
definition of `\Xi_{J,\tau}^{tol}`. Applying `(FTOL.2)` gives the stated
bound. ∎

## Interpretation

This note is auxiliary rather than geometric. It packages the chosen frozen
tolerance schedule into a bad-set/localization form, but it is not the
intrinsic geometric content of `PTC-Lin.A`.

In particular, the honest asymmetry in the frozen linearization wall is:

```math
\text{geometric frozen wall }=\texttt{FrozenDiffMeasLoc}_{\mu,p/2},
\qquad
\text{auxiliary scalar wall }=\texttt{FrozenTolLoc}_{\mu,p}.
\tag{FTOL.4}
```

If one later allows global scalar smallness without bad-set support, this
packet can be weakened to direct global `L^p(d\mu_J^{pair})` smallness of
`\vartheta_{J,\tau}^{lin}`.

## Downstream Use

This note feeds the frozen differentiability-exceptional price split:

```math
\texttt{FrozenTolLoc}_{\mu,p}
\;+\;
\texttt{FrozenDiffWeightLoc}_{\mu,p/2}
\Longrightarrow
\texttt{FrozenDiffPriceLoc}_{\mu,p/2}.
\tag{FTOL.5}
```

It also feeds the stronger synchronized frozen geometric route together with
[frozen-threshold-vs-linearization-synchronization.md](/Users/thomasbirnie/Workspace/ToE/Research-Consolidation/problems/navier-stokes/theorem-construction/frozen-threshold-vs-linearization-synchronization.md),
where it adjoins the geometric packet after `\texttt{SyncDiffQuad}_{\tau}`.
