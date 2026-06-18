# NoIncomingLicense.A terminal-pulse audit

## Status

Audit result with one installed weak license and one missing strong license.

The terminal active-window / first-pulse construction supplies a no-parent source-residue license. It does not yet supply the stronger global no-incoming boundary condition needed for a direct anisotropic backward-uniqueness proof.

## Two different no-incoming notions

### 1. Weak license: first-pulse no-parent condition

For a selected terminal first-pulse source-residue tile `T_0`, the admissible backward ancestry tree contains no earlier same-fluid source-residue parent tile carrying the same normalized positive source mass. In symbolic route form:

```math
FirstPulse.NoParent:
\quad
\sum_{P\prec T_0}\kappa(P,T_0)S(P)=0
\quad\text{in the terminal first-pulse limit.}
```

This is the license used by the drain route:

```math
ParentOrCharge.A+FirstPulse.NoParent
\Longrightarrow
SourceDrain.B.
```

It is a statement about source-residue ancestry, not about the full tangent field having zero incoming energy from `s=-\infty`.

### 2. Strong license: no incoming parabolic boundary mass

The stronger license needed by the direct backward-uniqueness route is a genuine
incoming-boundary condition for the frozen-strain tangent field. Local compact
decay alone is

```math
\lim_{s\to-\infty}\int_{B_R}|v(y,s)|^2\,dy=0
\qquad (R<\infty).
```

A usable global form must rule out incoming mass through the backward parabolic
boundary of the transformed anisotropic flow, for example a weighted statement
of the form

```math
\lim_{s\to-\infty}\int_{\mathbb R^3}|w(z,s)|^2\Omega(z,s)\,dz=0,
```

or an equivalent no-flux condition on transported backward cylinders.

## What terminal selection proves now

Terminal selection plus first-pulse extraction proves the weak ancestry statement:

```math
TerminalActiveWindow+FirstPulseSelection
\Longrightarrow
FirstPulse.NoParent.
```

Proof: choose the bad source-residue tile minimal with respect to the same-fluid backward parent relation. If an earlier parent with positive normalized source-residue mass existed, the selected tile would not be first. Hence the inherited source-residue parent term vanishes in the first-pulse limit.

This is sufficient for the principal-flow adjoint drain strategy once the parent-or-charge estimate is proved:

```math
S(T)
\le
\theta D(T)+\sum_{P\prec T}\kappa(P,T)S(P)+Err(T).
```

In the first-pulse limit the parent sum vanishes, leaving

```math
S(T_0)\le \theta D(T_0)+Err(T_0).
```

This is the correct local no-free-create formulation.

## What terminal selection does not prove now

The current terminal active-window selection does not by itself prove the strong condition

```math
\lim_{s\to-\infty}\int_{B_R}|v(y,s)|^2dy=0
\quad\text{with enough global boundary control to exclude mass entering from spatial infinity.}
```

Under the frozen strain flow, contracting directions can transport mass from spatial infinity into fixed compact regions as `s` increases. Thus local compact decay is not a complete no-incoming condition for the transformed ancient problem.

Therefore the direct route

```math
NoIncomingLicense.A+AnisotropicBackwardUniqueness.A\Longrightarrow TPNI.A
```

remains open if `NoIncomingLicense.A` is interpreted as a global parabolic boundary condition on the full tangent field.

## Corrected theorem object

The usable theorem object is the ancestry/drain version:

```math
\boxed{
NoIncomingLicense_{src}.A:
TerminalActiveWindow+FirstPulseSelection
\Longrightarrow FirstPulse.NoParent
}
```

Then the route is

```math
PrincipalFlowAdjoint.A
\Longrightarrow ParentOrCharge.A
\Longrightarrow NoFreeCreate.A
\Longrightarrow SourceDrain.B
\Longrightarrow TPNI.A.
```

The direct backward-uniqueness route remains a reserve route requiring an additional global no-incoming boundary theorem.

## Claimed status

`NoIncomingLicense_src.A` is installed as a logical consequence of first-pulse minimality once the parent relation is fixed. Strong `NoIncomingLicense_global.A` remains open.
