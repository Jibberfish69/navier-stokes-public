# WIZARD Terminal Impasse Comparison Note

## Purpose

This is the theorem-facing companion to
[WIZARD-terminal-impasse-working-note.md](/Users/thomasbirnie/Desktop/ToE/ToE/Research-Consolidation/problems/navier-stokes/WIZARD-terminal-impasse-working-note.md).

The goal is to freeze the strongest currently defensible route comparison in a
compact theorem-language form:

```math
\text{for each major failed route, what is the first exact survivor not discharged by the present method stack?}
```

The criterion here is strict:

```math
\boxed{
\text{do not stop at “same pattern detected”; stop only at the first unreduced exact theorem object.}
}
```

## Main Output

The routes do **not** currently collapse to one common terminal survivor class.

They split into two families:

### Family A: lower-prefix / cumulative-readout survivors

1. **Affine quotient route**

   ```math
   \Pi_{\mathrm{aff}}\widetilde Z
   \quad\equiv\quad
   (M_0,M_1).
   ```

2. **Shell barrier route**

   ```math
   B_j(t):=\frac{A_j(t)}{\nu 2^{2j}},
   \qquad
   A_j(t):=\sum_{k\le j}2^{5k/2}\|\Delta_k\omega(t)\|_{L^2_x}.
   ```

### Family B: gap-kernel / upper-tail survivors

3. **Signed lifted-band route**

   ```math
   \mathfrak B_N^{upper} + \Pi_N^{mid,far,L}.
   ```

4. **Body 1 kernelized lifted-band route**

   ```math
   \mathcal C_N^\sigma
   \rightsquigarrow
   \text{(UTKD}^\sharp\text{)}.
   ```

The current honest theorem-grade verdict is:

```math
\boxed{
\text{Family B does not collapse to Family A without discarding the gap kernel that makes it theorem-grade.}
}
```

## Route I: Affine Quotient Terminal Form

The deepest current route is:

```math
\text{(CTS)}
\rightsquigarrow
\text{(LPAS)}
\rightsquigarrow
\text{Volterra primitive}
\rightsquigarrow
\text{lower-triangular weighted quotient}
\rightsquigarrow
\Pi_{\mathrm{aff}}\widetilde Z.
```

The exact coefficient is

```math
c_F(t)=A_\kappa M_0(t)+B_\kappa M_1(t),
```

with

```math
M_0(t):=\int_{s_0}^{s_1-\kappa}\widetilde Z(\sigma,t)\,d\sigma,
\qquad
M_1(t):=\int_{s_0}^{s_1-\kappa}\sigma\,\widetilde Z(\sigma,t)\,d\sigma.
```

The current note stack already proves that the alternative kill routes either:

- collapse back to `(CTS)` / `(LPAS)` geometry, or
- are circular through the full `FCTS` object.

So the affine quotient is the deepest currently exposed terminal readout on the
one-sided scale-memory branch.

## Route II: Shell Barrier Terminal Form

The shell route does **not** honestly terminate at the slogan

```math
\text{“half-derivative miracle needed.”}
```

The stronger current normalization, from
[h2-standalone-half-derivative-bound.md](/Users/thomasbirnie/Desktop/ToE/ToE/Research-Consolidation/problems/navier-stokes/theorem-construction/h2-standalone-half-derivative-bound.md),
is the low-frequency strain barrier

```math
B_j(t):=\frac{A_j(t)}{\nu 2^{2j}},
\qquad
A_j(t):=\sum_{k\le j}2^{5k/2}\|\Delta_k\omega(t)\|_{L^2_x}.
```

Equivalently, on a fixed low shell `j_0`, the live object is

```math
A_{j_0-1}(t)\le C_A\nu 2^{2j_0}.
```

So the shell route belongs in Family A: it is another cumulative lower-side
readout, not a gap-kernel upper-tail defect.

## Route III: Signed Lifted-Band Terminal Form

The currently strongest exact signed route is

```math
\mathfrak c_\ell
\rightsquigarrow
\mathfrak B_N^{upper}+\chi_{mid}\mathcal W
\rightsquigarrow
\mathfrak B_N^{upper}+\Pi_N^{mid}
\rightsquigarrow
\mathfrak B_N^{upper}+\Pi_N^{mid,near,L}+\Pi_N^{mid,far,L}.
```

The near-corona part reduces to moving-spill geometry, so the true signed-route
terminal pair is

```math
\boxed{
\mathfrak B_N^{upper}+\Pi_N^{mid,far,L}.
}
```

The far term carries the explicit continuum gap kernel `\ell/r`, and that is
precisely why the route does not currently collapse to a Family A readout.

## Route IV: Body 1 Kernelized Terminal Form

The current positive normalization is

```math
\text{open lifted packet}
\rightsquigarrow
\mathfrak K_N^{scale}
\rightsquigarrow
\mathcal C_N^\sigma
\rightsquigarrow
\text{(UTKD}^\sharp\text{)}.
```

Here

```math
\mathcal C_N^\sigma(t)
:=
\sum_{k>N+M}
2^{3k/2}\|\Delta_k u(t)\|_{L^2_x}\,
\mathcal D_k^\sigma(t),
```

with

```math
\mathcal D_k^\sigma(t):=
\sum_{j>k+4}2^{-\sigma(j-k)}D_j(t).
```

The minimal positive terminal form is therefore

```math
\boxed{
\int_0^T\sum_{k>N+M}2^k\big(\mathcal D_k^\sigma(t)\big)^2\,dt
\le C_*2^{-2\delta N}.
}
```

So the Body `1` route also sits in Family B: it is an upper-tail weighted
square carrying the same spectral-gap information in positive form.

## Honest Family Comparison

The current exact comparison picture is:

1. Family A records cumulative lower-side readouts.
2. Family B records gap-kernel upper-tail survivors.
3. The present theorem stack does **not** identify those families.

The best bridge presently on record is only structural:

```math
\boxed{
\text{the signed route is one scale derivative short of the affine quotient kill surface.}
}
```

That statement now has an exact operator form:

```math
\mathcal K_L
=
-e^{-L}(\partial_s-1)^{-1}\circ \mathrm{Shift}_L,
```

so first-order signed exactness leaves the potential-average term alive,
whereas the affine kernel kills exact second derivatives.

The other two bridge obstructions are now equally sharp:

```math
\boxed{
\text{Bridge II: same gap kernel, different active-shell homogeneity }(E_j \text{ vs } D_j).
}
```
```math
\boxed{
\text{Bridge III: same Family A orientation, different carriers/homogeneities }(\text{linear amplitude vs quadratic source}).
}
```

## Current Theorem Questions

The next genuine theorem questions are therefore:

1. Can the signed lifted-band route be upgraded from first-order to effective
   second-order scale exactness, or supplied with a potential-average kill
   theorem, so that Family B collapses toward the affine quotient readout?

2. Can the positive Body `1` route be upgraded through the exact
   `E_j \to D_j` active-shell derivative gap so that it becomes the square
   shadow of the same far-gap flux object `\Pi_N^{mid,far,L}` rather than
   merely an analogous carrier?

3. Should `(LPAS)` be treated as a terminal object?

   Current WIZARD answer:

   ```math
   \boxed{
   \text{no: `(LPAS)` is a dyadic shadow, not the deepest current Family A survivor.}
   }
   ```

4. Should shell-gain be retained?

   Current WIZARD answer:

   ```math
   \boxed{
   \text{yes, but only in the normalized barrier form }B_j,\text{ not as the loose half-derivative slogan.}
   }
   ```

## Working Conclusion

The strongest current route table I can defend is:

```math
\boxed{
\text{Family A: }
\Pi_{\mathrm{aff}}\widetilde Z,\;
B_j.
}
```
```math
\boxed{
\text{Family B: }
\mathfrak B_N^{upper}+\Pi_N^{mid,far,L},\;
\mathcal C_N^\sigma\rightsquigarrow \text{(UTKD}^\sharp\text{)}.
}
```

That is the current theorem-grade impasse comparison.
