# Collar Remainder Lower-Order Estimate Result

## Setup

From the selector-localized transport identity,

```math
\rho(B_i(X)\mathbb S_D(j)\mathbb H_DY)
=
\widetilde Q_iP_{\le j}((u_{coh,i}\partial_i)v)+R^{collar}_{i,j}[X;Y].
```

The collar remainder is

```math
R^{collar}_{i,j}
=R_i^{loc}
-
\widetilde Q_iP_{\le j}((u_{coh,i}\partial_i)v_{noncoh})
+
\widetilde Q_i[I-P_{\le j},u_{coh,i}\partial_i]P_{\le j}v_{coh}
-
\widetilde Q_iP_{\le j}((u_{coh,i}\partial_i)P_{>j}v_{coh}).
```

## Sufficient analytic inputs

Assume the following four estimates on the active shell range.

### C1. Local readout residue

```math
\|\nabla R_i^{loc}[X;\mathbb S_D(j)\mathbb H_DY]\|_\infty
\le
\varepsilon\nu2^{2j}\|Y\|_{H_D^s}+C_\varepsilon\Phi(\mathcal E_D(X)).
```

### C2. Noncoherent low-mode product

```math
\|\nabla\widetilde Q_iP_{\le j}((u_{coh,i}\partial_i)v_{noncoh})\|_\infty
\le
\varepsilon\nu2^{2j}\|Y\|_{H_D^s}+C_\varepsilon\Phi(\mathcal E_D(X)).
```

This follows, for example, from the noncoherent low-mode readout estimate together with the coherent transport bound on `u_{coh}`.

### C3. Low-pass commutator collar

```math
\|\nabla\widetilde Q_i[I-P_{\le j},u_{coh,i}\partial_i]P_{\le j}v_{coh}\|_\infty
\le
\varepsilon\nu2^{2j}\|Y\|_{H_D^s}+C_\varepsilon\Phi(\mathcal E_D(X)).
```

This is the standard smooth-multiplier commutator estimate on the readout-compatible carrier surface, with the coherent strain coefficient bounded at the active shell scale.

### C4. Coherent high-tail product

```math
\|\nabla\widetilde Q_iP_{\le j}((u_{coh,i}\partial_i)P_{>j}v_{coh})\|_\infty
\le
\varepsilon\nu2^{2j}\|Y\|_{H_D^s}+C_\varepsilon\Phi(\mathcal E_D(X)).
```

This follows from spectral alignment plus `H_D^s` tail decay, or exactly when the coherent selector has no readout above the chosen threshold.

## Theorem

Under C1-C4,

```math
\|\nabla R^{collar}_{i,j}[X;Y]\|_\infty
\le
4\varepsilon\nu2^{2j}\|Y\|_{H_D^s}+4C_\varepsilon\Phi(\mathcal E_D(X)).
```

After renormalizing `\varepsilon` and `C_\varepsilon`,

```math
\|\nabla R^{collar}_{i,j}[X;Y]\|_\infty
\le
\varepsilon\nu2^{2j}\|Y\|_{H_D^s}+C_\varepsilon\Phi(\mathcal E_D(X)).
```

## Proof

Take one spatial derivative of the four-term expression for `R^{collar}_{i,j}` and use the triangle inequality. Apply C1 to the local readout residue, C2 to the noncoherent low-mode term, C3 to the commutator collar term, and C4 to the coherent high-tail term. Summing the four estimates gives the displayed bound. Renormalize constants to obtain the final form.

## Boundary

This theorem closes the collar assembly step. The remaining analytic work sits in C1-C4. The next shortest target is C3, the low-pass commutator collar estimate, because it is the part tied directly to the active coherent low-mode strain scale.
