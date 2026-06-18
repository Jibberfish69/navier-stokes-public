# BASAC.TemporalThicknessOrRigidSubclass.Attempt

## Status

Local theorem-note artifact.  This attempt tests the two remaining `B_ASAC` upgrades after the no-incoming/no-flux and reverse-Holder attempts.

## Inputs

The equality route produces

```math
ASACDefectMeasure.A
+
TerminalNoFreeSinkEqualityClassProduction.A
\Longrightarrow
B_{ASAC}.
```

The class `B_ASAC` organizes the terminal equality/tangent survivor for the ASAC defect measure.

## Upgrade 1: temporal thickness inside B_ASAC

The desired estimate is

```math
UniformTemporalSourceIntegrability_{p,B_{ASAC}}.A:
\quad
\left\|\|F_m^{src,+}(s,\cdot)\|_{\mathcal M(B_R)}\right\|_{L_s^p((-1,0))}
\le C_R,
\qquad p>1.
```

By Holder in time, this estimate implies

```math
\mu_m^{src}(B_R\times[-\varepsilon,0])
\le C_R\varepsilon^{1-1/p}+o_m(1),
```

and hence

```math
\mu_*^{src}(B_R\times\{0\})=0.
```

The installed `B_ASAC` axioms do not supply this temporal gain.  They constrain the terminal equality/tangent geometry, while a zero-thickness source atom may still carry finite `L^1_s` mass with divergent `L^p_s` mass for every `p>1`.

Thus temporal thickness inside `B_ASAC` requires a new theorem.

## Upgrade 2: rigid subclass with residue Liouville

The alternate desired package is

```math
B_{ASAC}^{rigid}.A
+
ZenoResidueLiouville_{B_{ASAC}^{rigid}}.A.
```

A usable rigid subclass must add one of the missing mechanisms:

```math
\text{global incoming-flux exclusion},
\quad
\text{transported-cylinder flux cancellation},
\quad
\text{temporal reverse Holder},
\quad
\text{finite ancient-energy / Type-I / smallness style rigidity}.
```

Current `B_ASAC` production yields none of these extra structures.  Therefore the residue Liouville theorem has no generated class to consume yet.

## Boundary

The no-flux alternatives remain separate targets:

```math
NoIncomingFlux_{global}.A
```

or

```math
TransportedCylinderNoFlux.A.
```

The pressure/eigenframe supports remain near-band signed-current support; they do not create temporal thickness for the full source-weighted positive carrier.

## Verdict

`B_ASAC` is a useful equality/tangent class.  It is still too broad for terminal atom exclusion.  The next theorem must add either temporal thickness to `B_ASAC`, or produce a genuinely rigid subclass with a source-residue Liouville theorem.
