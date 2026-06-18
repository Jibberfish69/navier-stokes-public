# Forward-Gold Laurent Annular Normal Form Branch

Date: 2026-06-17

Status: new investigation branch; not proved.

Role: continue the gold-standard factorial-radius line by testing whether the
terminal annular/Zeno collapse can be handled as a removable-singularity problem
through a Laurent-type principal part.

Continuation: Thomas's transseries/modulated profile refinement is recorded in
`mpp-forward-gold-modulated-renormalization-profile-20260617.md`.  That note is
the stronger Navier-Stokes-native target; this Laurent note is the rigid
intermediate rung.

This is a forward-positive supplier route toward
`TerminalTimeFaceAntiAtom.A / TerminalNewProductionTheorem_{B_ASAC}.A`.  It is
not a silver/CM consumption route.

## Source thought

The line being continued is:

```math
\text{mixed factorial tower}
\Longrightarrow
\text{positive analytic/Gevrey radius unless terminal collapse}
```

and then, gold-first:

```math
\text{terminal annular/Zeno collapse at }T^*
\Longrightarrow
\text{Laurent-type terminal normal form}
\Longrightarrow
\text{negative principal part impossible}
\Longrightarrow
\text{removable singularity.}
\tag{LNF.1}
```

The point is to kill the terminal collapse directly, rather than letting the
collapse become a class-exit witness.

## First distinction: fixed Laurent series vs annular collapse

A plain fixed-space Laurent expansion would mean an actual asymptotic
hypothesis, for example on a fixed positive-volume region `Omega`,

```math
u(t,\cdot)
=(T^*-t)^{-K}u_{-K}+o_{L^2(\Omega)}((T^*-t)^{-K}),
\qquad
p(t,\cdot)
=(T^*-t)^{-L}p_{-L}+o_{\mathcal D'(\Omega)}((T^*-t)^{-L}),
\tag{LNF.2}
```

on a fixed punctured time collar and a fixed positive-volume spatial region.
That is a very strong normal form.  If some `u_{-K}` is nonzero on a fixed
positive-volume region, then for sufficiently small `s=T^*-t`,

```math
\|u(t)\|_{L^2}^2
\ge
{1\over2}(T^*-t)^{-2K}\|u_{-K}\|_{L^2(\Omega)}^2,
\tag{LNF.3}
```

which contradicts the finite energy inequality for every `K>=1`.

So a fixed-space Laurent principal part is too rigid for the annular/Zeno
geometry.  The dangerous terminal object survives only because the relevant
region is shrinking.  The correct gold normal form must keep the moving annulus
or parabolic scaling visible.

## Rescaled annular Laurent ansatz

Set

```math
s:=T^*-t,
\qquad
r(s):=s^\beta,
\qquad
y:={x-x^*\over r(s)}.
\tag{LNF.4}
```

The minimal principal ansatz is a conditional exact decomposition on the
selected moving annulus:

```math
u(t,x)
=
s^{-a}\Big(U_0(y)+s^\delta U_1(y)+E_u(s,y)\Big),
\qquad
\|E_u(s,\cdot)\|_X\to0,
\tag{LNF.5}
```

and, by the pressure Poisson law,

```math
p(t,x)
=
s^{-2a}\Big(P_0(y)+s^\delta P_1(y)+E_p(s,y)\Big),
\qquad
E_p(s,\cdot)\to0
\ \text{in the pressure topology being tested}.
\tag{LNF.6}
```

This is the annular version of a Laurent principal part.  Negative time powers
are now coupled to a shrinking spatial scale.

## Exponent bookkeeping

For the leading rescaled field `U_0`, inserting `(LNF.5)` with
`r(s)=s^\beta` gives the following powers for the displayed leading terms,
before any cancellation:

```math
\partial_t u
\text{ has leading power }
s^{-a-1},
\tag{LNF.7}
```

```math
(u\cdot\nabla)u+\nabla p
\text{ has leading power }
s^{-2a-\beta},
\tag{LNF.8}
```

```math
\nu\Delta u
\text{ has leading power }
s^{-a-2\beta}.
\tag{LNF.9}
```

The three balance equations are:

```math
\text{leading exponents of }\partial_t u\text{ and }\nu\Delta u\text{ agree}
\quad\Longleftrightarrow\quad
-a-1=-a-2\beta
\quad\Longleftrightarrow\quad
\beta={1\over2},
\tag{LNF.10}
```

```math
\text{leading exponents of }\partial_t u\text{ and }(u\cdot\nabla)u\text{ agree}
\quad\Longleftrightarrow\quad
-a-1=-2a-\beta
\quad\Longleftrightarrow\quad
a=1-\beta,
\tag{LNF.11}
```

```math
\text{leading exponents of }(u\cdot\nabla)u\text{ and }\nu\Delta u\text{ agree}
\quad\Longleftrightarrow\quad
-2a-\beta=-a-2\beta
\quad\Longleftrightarrow\quad
a=\beta.
\tag{LNF.12}
```

All three meet at the parabolic Navier-Stokes scaling

```math
\boxed{
a=\beta={1\over2}.
}
\tag{LNF.13}
```

At this scale, any leading rescaled field produced by `(LNF.5)` must satisfy

```math
{1\over2}U_0
{+}
{1\over2}(y\cdot\nabla_y)U_0
+
(U_0\cdot\nabla_y)U_0
+
\nabla_y P_0
=
\nu\Delta_y U_0,
\qquad
\nabla_y\cdot U_0=0.
\tag{LNF.14}
```

This is the actual gold-facing principal-part equation behind the informal
Laurent idea.

## Energy and dissipation check

The parabolic principal scale is not killed by the basic energy inequality.
For the exact decomposition `(LNF.5)` on a three-dimensional rescaled annulus
`A` with physical image `x^*+r(s)A`,

```math
\int_{x^*+r(s)A}|u(t,x)|^2\,dx
=
s^{-2a+3\beta}
\int_A |U_0+s^\delta U_1+E_u|^2\,dy.
\tag{LNF.15}
```

If the rescaled `L^2(A)` factor stays bounded above and below, then for
`a=beta=1/2` the physical energy on the annulus is comparable to `s^{1/2}`,
which is integrable at `s=0` in the energy inequality.

Likewise,

```math
\int_{x^*+r(s)A}|\nabla_x u(t,x)|^2\,dx
=
s^{-2a+\beta}
\int_A |\nabla_y(U_0+s^\delta U_1+E_u)|^2\,dy.
\tag{LNF.16}
```

If the rescaled gradient factor stays bounded above and below, then for
`a=beta=1/2` the physical dissipation density is comparable to `s^{-1/2}`,
which remains integrable in time near `s=0`.

So finite energy and finite total dissipation do not by themselves exclude the
parabolic annular Laurent principal part.  That is why this branch must use the
equation, pressure, source ledger, and annular no-incoming/anti-atom structure,
not only energy size.

## Exact gold branch

The branch splits into two theorem obligations.

### 1. LaurentAnnularNormalForm.A

```math
\boxed{
\text{terminal factorial-radius collapse plus same-solution annular/Zeno
structure produces a finite rescaled Laurent principal field with the error
topology stated in `(LNF.5)`--`(LNF.6)`.}
}
\tag{LNF.17}
```

This is a production theorem.  It must rule out the ways a radius can fail
without giving a finite principal part:

```math
\text{essential singular behavior, logarithmic corrections, oscillatory scale
drift, branch-scale switching, diffuse parent clouds, or no fixed annular
field.}
\tag{LNF.18}
```

The repo's existing Zeno audits already warn that compactness alone does not
produce self-similarity, Type-I control, finite global ancient energy, or a
rigid residue class.  This Laurent branch must supply exactly that missing
production mechanism.  Until then, `(LNF.5)` is a conditional ansatz, not a
proof consequence.

### 2. LaurentPrincipalPartExclusion.A

Assuming `(LNF.17)`, prove that no nonzero admissible leading field can satisfy
the principal equation and the terminal source/pressure ledger:

```math
\boxed{
U_0\neq0
\quad\Longrightarrow\quad
\text{violation of pressure compatibility, no-incoming annular balance,
source anti-atom, or finite admissible terminal ledger.}
}
\tag{LNF.19}
```

For the parabolic principal scale, the concrete rescaled-field equation to
attack is
`(LNF.14)`.

## Relation to the factorial-radius branch

The earlier factorial-radius branch isolates the collapse of the analytic radius
as the gold object:

```math
R_{\mathrm{fact}}(t)\downarrow0.
\tag{LNF.20}
```

The Laurent branch sharpens the possible local shape of that collapse:

```math
R_{\mathrm{fact}}(t)\downarrow0
\Longrightarrow
\text{rescaled annular Laurent principal field}
\Longrightarrow
\text{principal field impossible}.
\tag{LNF.21}
```

So the Laurent idea is not separate from the tower.  It is a proposed normal
form for the same terminal analytic-radius failure.

## Boundary

The fixed Laurent expansion `(LNF.2)` is already too strong for the dangerous
annular branch, because finite energy kills nonzero negative powers on a fixed
positive-volume region.

The real gold problem is the rescaled annular Laurent form `(LNF.5)`.  At the
Navier-Stokes parabolic balance, that form is still compatible with the basic
energy and dissipation budgets.  Closing it requires either:

```math
LaurentAnnularNormalForm.A
+
LaurentPrincipalPartExclusion.A,
\tag{LNF.22}
```

or a direct theorem implying `TerminalTimeFaceAntiAtom.A` without passing
through Laurent normal forms.

## Verdict

Thomas's Laurent reading is viable in the gold program only in the rescaled
annular sense.

Inside the Laurent rung, the useful continuation is:

```math
\boxed{
\text{produce the rescaled Laurent principal field from terminal radius
collapse, then prove the parabolic principal field cannot satisfy the
Navier-Stokes pressure/source/annular ledger.}
}
\tag{LNF.23}
```

Neither theorem is installed.  This note records the exact branch and the first
noncircular equation it must attack.

Thomas's later transseries/modulated refinement supersedes this as the sharper
gold target, because the annular/Zeno endpoint can move through scale instead
of sitting in one fixed principal field.
