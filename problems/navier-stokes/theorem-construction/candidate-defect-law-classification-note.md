# Candidate Defect-Law Classification Note

## Purpose

Record the correct next classification step after the minimum drain-rate
discussion.

The tempting move is:

```text
classify candidate drain laws only by exponent:
quadratic, superquadratic, mixed-power.
```

That is not the best first axis.

The better order is:

```text
first classify by origin of the negative law,
then record the natural exponent/rate inside each class.
```

The reason is that in this lane the main question is not just
“what power would be enough?”
It is:

```text
which object could realistically generate the one-sided drain on the exact NS
surface or on a same-surface deformation shadow?
```

## 1. Primary classification by origin

There are four candidate classes currently visible in the lane.

### Class A. Pure viscous Dirichlet drain

This is the classical sink:

```math
\nu \|\nabla U_\alpha\|_{L^2}^2
\qquad\text{or}\qquad
\nu\int G\nabla_a w:\nabla_a w.
\tag{1}
```

This is always quadratic in the active derivative variable.
It is exact, clean, and coercive, but by itself it does not close the full
tower because the nonlinear production remains outside it.

### Class B. Eulerian transport-commutator defect

This is the visible classical defect:

```math
\widetilde T_\alpha
:=
[\partial^\alpha,u\cdot\nabla]u.
\tag{2}
```

Natural candidate drains here are of the form

```math
\sum_{|\alpha|\le r}\|\widetilde T_\alpha\|_{L^2}^2
\tag{3}
```

or Gram-corrected versions of `(3)`.

This is the most literal YM-style shadow candidate on the Eulerian side.
But the weighted-Gram obstruction says it is unlikely to arise directly from a
bare quadratic Eulerian energy.

### Class C. Stress-strain / commutator flux law

This is the dyadic or mesoscopic recoding already active in the lane:

```math
\mathcal J_N^{lift}
\rightsquigarrow
\Pi_N^{lift,\mathrm{dy}}
=
\sum_{j\ge N}
\int \Sigma_j^{meso}\,\tau_j^{H^1}\,dx.
\tag{4}
```

Here the negative law would not necessarily be a pure square.
It could be a sign-controlled flux or debt law in which the same mesoscopic
stress-strain packet both measures transport production and feeds the
dissipative ledger.

This class is naturally suited to mixed-power or mixed-structure laws.

### Class D. Lagrangian deformation-geometry defect

This is now the deepest branch:

```math
\partial_t v + A^\top \nabla_a q
=
\nu\,\operatorname{div}_a(G\nabla_a v),
\qquad
G=AA^\top.
\tag{5}
```

The higher-order defect is the coefficient-commutator packet

```math
\mathcal C_\alpha(A,G;v,q).
\tag{6}
```

This is the class most structurally compatible with the YM cubic/self-geometry
pattern, because the heat operator is already geometry-modified.

So if a true primary drain law exists, this is the leading candidate source.

## 2. Secondary classification by exponent

Once the class/origin is fixed, the exponent question becomes meaningful.

There are three useful exponent families.

### Quadratic

Template:

```math
c_Q\|Def\|_{L^2}^2
\le
\mathcal E
\le
C_Q\|Def\|_{L^2}^2.
\tag{7}
```

This is the cleanest Hilbert-space / gradient-flow form.
It is the natural target in Classes A, B, and D.

### Superquadratic

Template:

```math
c_p\|Def\|_{L^p}^p
\le
\mathcal E
\le
C_p\|Def\|_{L^p}^p,
\qquad p>2,
\tag{8}
```

or more generally a negative term whose power beats the surviving positive
production at large roughness.

This becomes relevant if the defect is easier to bound in a stronger norm or
if the geometry law naturally yields a stronger-than-quadratic penalty.

### Mixed-power / mixed-structure

Template:

```math
\mathcal E
:=
\mathcal E_{\mathrm{Dir}}
+
\mathcal E_{\mathrm{flux/comm}}
\tag{9}
```

or

```math
\mathcal E
:=
c_\Psi\Psi^p+c_\Theta\Theta^q.
\tag{10}
```

This is the leading candidate shape in Class C and is also realistic in Class D,
where the geometry defect may split into:

- a velocity-gradient Dirichlet drain,
- a metric/strain commutator drain,
- and lower-order coercive correction terms.

## 3. What matters more than exponent

The main theorem-facing questions are:

1. what is the exact defect object?
2. on what same-surface variables is it natural?
3. can its negative contribution be made one-sided?
4. does it dominate the blowup-driving production law?

Only after that does the exponent matter.

So the lane should not ask first:

```text
quadratic or superquadratic?
```

It should ask:

```text
which defect law has a realistic same-surface origin, and what exponent comes
with it naturally?
```

## 4. Current ranking of candidate classes

At the current route state, the current candidate ranking is:

### Rank 1. Class D: deformation-geometry defect

Best structural fit to the YM self-geometry story.
Likeliest place for a primary monotone law.

### Rank 2. Class B shadowed by D

The Eulerian commutator-square law is still a strong visible target, but it is
now best read as the shadow of Class D rather than as a standalone primary
route.

### Rank 3. Class C as an intermediate bridge

The stress-strain flux route is valuable because it translates raw commutators
into a more geometric/coarse-grained object.
It may be the bridge between the visible Eulerian defect and the deeper
geometry law.

### Rank 4. Class A by itself

Pure viscosity remains necessary but is not the closure mechanism on its own.

## 5. Correct next step

So the best next classification move is:

```math
\boxed{
\text{for each candidate class, identify}
\
\text{(i) the natural defect object,}
\
\text{(ii) the natural same-surface functional,}
\
\text{(iii) the leading candidate exponent family, and}
\
\text{(iv) the production law it would need to dominate.}
}
\tag{11}
```

That is better than classifying only by exponent.

If compressed to one line:

```math
\boxed{
\text{origin first, exponent second.}
}
\tag{12}
```

## Source anchors

- [minimum-drain-rate-threshold-note.md](/Users/thomasbirnie/Documents/Research-Consolidation/problems/navier-stokes/theorem-construction/minimum-drain-rate-threshold-note.md)
- [transport-frame-recentering-use-note.md](/Users/thomasbirnie/Documents/Research-Consolidation/problems/navier-stokes/theorem-construction/transport-frame-recentering-use-note.md)
- [lifted-band-coarse-grained-stress-strain-flux-inequality.md](/Users/thomasbirnie/Documents/Research-Consolidation/problems/navier-stokes/theorem-construction/lifted-band-coarse-grained-stress-strain-flux-inequality.md)
- [spatial-derivative-curvature-dissipation-theorem-target.md](/Users/thomasbirnie/Documents/Research-Consolidation/problems/navier-stokes/theorem-construction/spatial-derivative-curvature-dissipation-theorem-target.md)
