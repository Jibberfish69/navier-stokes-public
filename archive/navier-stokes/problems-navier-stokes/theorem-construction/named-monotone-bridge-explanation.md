# Why `Q(t)` Is A Named Bridge

## Exact Question

Why is the monotone-functional layer in the handed Navier-Stokes program a named
source-level theorem object rather than generic background energy bookkeeping?

## Source Loci

- `Millennium Prize Problems/Navier-Stokes/TeX/Section_3-_Monotone_Functional.tex`
- `Millennium Prize Problems/Navier-Stokes/TeX/Energy_Boundedness_via_Q(t)_for_Global_Regularity.tex`
- `Millennium Prize Problems/Navier-Stokes/TeX/Section_6-_Interdependencies_Among_Principles.tex`
- `problems/navier-stokes/source-forensics/master-program-analysis.md`
- `problems/navier-stokes/source-forensics/canonical-equation-ledger.md`

## Direct Evidence

The source family does four specific things that generic background energy prose
does not do.

1. It defines a standalone object

```math
Q(t)=\|u(t)\|_{L^2_x}^2+\|\nabla u(t)\|_{L^2_x}^2.
```

2. It gives that object its own evolution law

```math
\frac{dQ}{dt}
=
-\nu \|\Delta u\|_{L^2_x}^2
+ C\|\nabla u\|_{L^2_x}^3.
```

3. It treats that object as one of the four nodes in the interdependency diagram,
   not as an unnamed background estimate.

4. It assigns that node a specific route job:
   `Q(t)` stabilizes the global energy/enstrophy layer and feeds the compactness
   package, while remaining insufficient by itself and therefore handing the route
   forward to the cascade carrier.

## Why This Is Not Generic Background Energy

If `Q(t)` were only background energy prose, the source stack would merely use
classical energy estimates silently and move on.

Instead, the handed corpus:

- gives the object a name;
- gives it a dedicated section;
- gives it a dedicated theorem-level boundedness claim;
- places it in the four-way loop diagram;
- and states explicit outgoing arrows from the monotone node to compactness and
  back toward scale control.

That makes `Q(t)` a first-class theorem object in the architecture.

## Local Consequence For The Live Lane

The live lane must therefore preserve two facts simultaneously:

1. `Q(t)` is explicit theorem-bearing infrastructure on the classical surface.
2. `Q(t)` is not the whole theorem, because the post-monotone cascade carrier,
   scale barrier, compactness, and fourth bridge still have to close the loop.

So the correct paper-level explanation is:

The original framework does not merely assume bounded energy in the background.
It elevates the functional `Q(t)` into a named bridge that records global
energy/enstrophy control on the same classical surface used by the other three
pillars.

## Status

`explanation complete`
