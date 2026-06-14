# WIZARD Two-Family Bridge Obligations Note

## Purpose

The comparison note
[wizard-terminal-impasse-comparison-note.md](/Users/thomasbirnie/Desktop/ToE/ToE/Research-Consolidation/problems/navier-stokes/theorem-construction/wizard-terminal-impasse-comparison-note.md)
shows that the current terminal survivors split into two theorem families:

1. lower-prefix / cumulative-readout survivors;
2. gap-kernel / upper-tail survivors.

This note records the exact bridge theorems that would be needed to collapse
those two families into a single survivor language.

The point is to stop the comparison from dissolving back into slogans like
“probably the same defect.” The question here is:

```math
\text{what exact theorem would identify Family B with Family A?}
```

## Family A

The current Family A survivors are:

```math
\Pi_{\mathrm{aff}}\widetilde Z
\quad\equiv\quad
(M_0,M_1),
```

and

```math
B_j(t):=\frac{A_j(t)}{\nu 2^{2j}},
\qquad
A_j(t):=\sum_{k\le j}2^{5k/2}\|\Delta_k\omega(t)\|_{L^2_x}.
```

These are cumulative lower-side readouts.

## Family B

The current Family B survivors are:

```math
\mathfrak B_N^{upper}+\Pi_N^{mid,far,L},
```

and

```math
\mathcal C_N^\sigma
\rightsquigarrow
\text{(UTKD}^\sharp\text{)}.
```

These are gap-kernel upper-tail survivors.

## Bridge Obligation I: Signed-to-Affine Collapse

The signed-route audit already identifies the key obstruction:

```math
\text{current signed scale descent is one scale derivative short of the affine quotient kill surface.}
```

The sharpened WIZARD reduction in
[wizard-bridge1-signed-to-affine-attempt.md](/Users/thomasbirnie/Desktop/ToE/ToE/Research-Consolidation/problems/navier-stokes/theorem-construction/wizard-bridge1-signed-to-affine-attempt.md)
shows more precisely that the signed far-gap operator is the first-order
log-scale resolvent

```math
\mathcal K_L
=
-e^{-L}(\partial_s-1)^{-1}\circ \mathrm{Shift}_L,
```

so the obstruction is an exact operator-order mismatch:

```math
\boxed{
\text{signed/gap-kernel route is first-order, while affine quotient kill is second-order.}
}
```

So the first exact bridge obligation is:

```math
\boxed{
\textbf{(B1)}
\quad
\text{upgrade first-order signed exactness to effective second-order scale exactness,}
}
```

or else prove the equivalent potential-average kill theorem.

### Strong form

Find a signed source presentation of the form

```math
Y(\sigma,t)=\partial_\sigma^2 G(\sigma,t)+R(\sigma,t),
```

with the affine coefficient functional satisfying

```math
\mathcal C_\theta[Y](t)=\mathcal C_\theta[R](t),
```

so that the signed route lands directly on the same affine quotient readout as
the Volterra / lower-triangular route.

### Equivalent weak form

Prove the potential-average kill theorem

```math
\int_0^T H_w(t)
\left\|
\frac1{|I|}\int_J \Psi(\sigma,t)\,d\sigma
\right\|_{L_x^2}^2dt
\le
\frac{\eta\nu}{C}\int_0^T D_N(t)\,dt + C_*2^{-2\delta N}.
```

### Meaning

If `(B1)` held, then the signed gap-kernel route would stop being merely
analogous to the affine quotient route. It would actually collapse onto the
same Family A terminal readout.

## Bridge Obligation II: Gap-Flux-to-Carrier Comparison

The second bridge question is internal to Family B itself.

The signed route sees:

```math
\mathfrak B_N^{upper}+\Pi_N^{mid,far,L},
```

while the positive Body `1` route sees:

```math
\mathcal C_N^\sigma
\rightsquigarrow
\text{(UTKD}^\sharp\text{)}.
```

So the second exact bridge obligation is:

```math
\boxed{
\textbf{(B2)}
\quad
\text{identify the positive Body `1` carrier as the square shadow of the same far-gap flux object.}
}
```

The sharpened WIZARD reduction in
[wizard-bridge2-gap-flux-to-carrier-attempt.md](/Users/thomasbirnie/Desktop/ToE/ToE/Research-Consolidation/problems/navier-stokes/theorem-construction/wizard-bridge2-gap-flux-to-carrier-attempt.md)
shows that the exact gap-kernel orientation already matches, but the active
shell is seen at different homogeneities:

```math
\boxed{
\Pi_N^{mid,far,L}\text{ is naturally }E_j\text{-level, while }\mathcal C_N^\sigma\text{ / (UTKD}^\sharp\text{) are }D_j\text{-level.}
}
```

### Minimal theorem shape

Find a theorem-level comparison of the form

```math
\Pi_N^{mid,far,L}(t)
\le C_{B2}
\mathcal C_N^\sigma(t)
\quad\text{or}\quad
\Pi_N^{mid,far,L}(t)
\le C_{B2}'
\sum_{k>N+M}2^k\big(\mathcal D_k^\sigma(t)\big)^2,
```

modulo already-accepted moving-spill and collar terms.

### Meaning

If `(B2)` held, then the signed and positive lifted-band routes would no longer
be merely “same branch, different vibe.” They would become provably exactness
vs positivity presentations of one same terminal Family B defect.

## Bridge Obligation III: Shell-to-Affine Family Comparison

The shell route now terminates at

```math
B_j(t)=\frac{A_j(t)}{\nu 2^{2j}}.
```

That places it in Family A, but no theorem yet identifies the shell barrier
with the affine quotient readout.

So the third bridge obligation is:

```math
\boxed{
\textbf{(B3)}
\quad
\text{compare the low-frequency strain barrier }B_j\text{ with the affine quotient moments }(M_0,M_1).
}
```

The sharpened WIZARD reduction in
[wizard-bridge3-shell-to-affine-attempt.md](/Users/thomasbirnie/Desktop/ToE/ToE/Research-Consolidation/problems/navier-stokes/theorem-construction/wizard-bridge3-shell-to-affine-attempt.md)
shows that the current obstruction appears before any quantitative comparison:

```math
\boxed{
\text{shell barrier is linear-in-amplitude on the vorticity/strain side, while affine quotient is linear-in-source on the stress side.}
}
```

So the obstacle is not only that no comparison theorem is recorded. The two
routes presently live on different carriers and at different homogeneities.

## Honest Status

At present:

- `(B1)` is open;
- `(B2)` is open;
- `(B3)` is open.

So the current theorem-grade result is not “one defect class proved.”
It is:

```math
\boxed{
\text{two survivor families, together with three exact bridge obligations.}
}
```

That is the sharpest current bridge map I can defend without rewriting the live
route notes.
