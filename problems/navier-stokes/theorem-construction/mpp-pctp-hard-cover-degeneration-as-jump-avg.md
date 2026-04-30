# PCTP.hard Cover-Degeneration As Jump_avg

## Status

Conditional theorem installed for the averaged terminal-tail route.

This note closes the cover-classification part of `AACT.Global`: terminal cover degeneration is the averaged jump face, and it is removed only downstream by the averaged endpoint theorem.

## Definitions

The SCF bad material set is

```math
\mathcal B_{\varepsilon_m}^{\Phi}
:=
\{(a,t):\forall r>0,\ SCF_{base}(Q_r^\Phi(a,t))>\varepsilon_m\}.
```

Define the averaged jump face on a same-fluid terminal tail `\mathcal T` by

```math
Jump_{avg}(\mathcal T)
\Longleftrightarrow
\mathcal T\cap\mathcal B_{\varepsilon_m}^{\Phi}\ne\varnothing.
```

Equivalently, `Jump_avg` is loss of every positive same-fluid SCF-good coherence scale along the terminal tail.

## Theorem

For any same-fluid terminal approach tail, exactly one of the following applies:

```math
\text{strict averaged-good branch: finite SCF-good subcovers exist on compact tail pieces,}
```

or

```math
Jump_{avg}.
```

In particular, degeneration of SCF-good radii to zero on the terminal tail is not a new endpoint family. It is `Jump_avg`.

## Proof

Finite energy and suitability give

```math
u\in L_t^\infty L_x^2,
\qquad
\nabla u\in L^2_{t,x},
\qquad
u\in L^3_{loc},
\qquad
p\in L^{3/2}_{loc}.
```

In bounded same-fluid coordinates, parabolic differentiation gives `SCF_base` small at material-a.e. spacetime point. Hence the good set

```math
\mathcal G_{\varepsilon_m}^{\Phi}
:=Q^\Phi\setminus\mathcal B_{\varepsilon_m}^{\Phi}
```

has positive SCF-good cylinders at every point by definition.

If a compact piece of the terminal tail lies inside the strict good region, then the open-cylinder property and compactness give a finite SCF-good subcover. This is the `SGC.A_a.e.` finite-cover branch. On each selected cylinder, `ATD_m^\varepsilon` supplies the local finite-depth averaged tower packet after shrinking.

If the tail meets `\mathcal B_{\varepsilon_m}^{\Phi}`, then `CAVG.J` applies by definition and the tail enters `Jump_avg`.

If the tail is made of good points but the available good radii degenerate to zero toward the terminal endpoint, then the limiting tail has no positive SCF-good terminal scale. This is the strict-margin form of the same bad-set alternative and is recorded as `Jump_avg`. Thus cover-degeneration is not a fifth face and not a pointwise readout theorem; it is the averaged field/coherence failure face.

## Noncircularity

The proof uses only:

1. finite-energy local integrability;
2. the definition of `SCF_base` good cylinders;
3. the definition of `\mathcal B_{\varepsilon_m}^{\Phi}`;
4. compactness on strict-good compact subsets;
5. the grammar lemma `CAVG.J`.

It does not use `READ.COVER`, `Field.Read`, `DTC.Read`, old pointwise `DTC.A`, old pointwise `Field`, old `CFI.A`, or `End_NS`.

The removal of `Jump_avg` occurs later:

```math
CFI.A_{avg}+AVG.END.Cert\Longrightarrow End_{NS,avg},
```

and `End_NS_avg` removes the averaged endpoint face `Jump_avg`. Only after that may `READ.COVER`, `Field.Read`, `DTC.Read`, and `READ.END` recover old pointwise endpoint closure.

## Consequence

The terminal cover part of `AACT.Global` is now reduced to the strict averaged-good branch. The remaining analytic problem is the scheduler on the finite SCF-good cover:

```math
\text{finite SCF-good cover}+ATD_m^\varepsilon
\Longrightarrow
\text{common AACT scheduler and }DTC.A_{avg}.
```

## Boundary

This note does not prove the scheduler integrability. It classifies cover degeneration as `Jump_avg` and keeps the endpoint-removal step downstream, preserving the averaged/pointwise type boundary.