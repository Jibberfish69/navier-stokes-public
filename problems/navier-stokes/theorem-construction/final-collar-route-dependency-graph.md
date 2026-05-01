# Final Collar Route Dependency Graph

## Purpose

This note records the final dependency map for the low-pass commutator collar closure.

```text
carrier-localized active readouts
→ proper carrier collar
→ global plateau selector
→ amplitude/speed supplier
→ coherent coefficient inputs
→ collar absorption
```

## Dependency map

### 1. Carrier-localized active readouts

The active readout class is restricted by

```math
\operatorname{supp}(\widetilde Q_iP_{\le j}v_{coh})
\subseteq
\Gamma_j(t).
\tag{DG.1}
```

Source:

```text
active-coherent-readout-carrier-localization-result.md
```

### 2. Proper carrier collar

The persistent carrier collar is proper when

```math
\Gamma_j(t)^{+M}\subsetneq\mathbb R^3.
\tag{DG.2}
```

Source:

```text
proper-persistent-carrier-collar-result.md
```

### 3. Global plateau selector

Define

```math
\mathcal K_j(t):=\Gamma_j(t)^{+M},
\qquad
\mathcal P_j(t):=\mathcal K_j(t)^{+L2^{-j}}.
\tag{DG.3}
```

Construct `w_j` by regularized distance so that

```math
w_j=1\text{ on }\mathcal P_j(t).
\tag{DG.4}
```

Then every active collar support satisfies

```math
K_{i,j}(t)
\subseteq
\mathcal P_j(t),
\qquad
w_j=1\text{ on }K_{i,j}(t).
\tag{DG.5}
```

Sources:

```text
persistent-carrier-core-construction-result.md
final-global-selector-plateau-theorem.md
```

### 4. Amplitude/speed supplier

The supplier theorem gives

```math
\|u_{coh}\|_{L^\infty(\Gamma_j(t))}
\le
\kappa_U\nu2^j+C2^{-j}\Phi_*(\mathcal E_D(X)).
\tag{DG.6}
```

where `\Phi_*` is either `\Phi` or `\Phi_{low}`.

Sources:

```text
amplitude-speed-gate-supplier-rollup-result.md
final-amplitude-speed-gate-theorem.md
```

### 5. Coherent coefficient inputs

Use the coherent frequency localization

```math
\boxed{u_{coh}=P_{\le j+A}u_{coh}.}
\tag{DG.7}
```

Then Bernstein and finite-collar multiplier estimates give

```math
\|\nabla u_{coh}\|_\infty
\le
c_0\nu2^{2j}+C\Phi_*(\mathcal E_D(X)),
\tag{DG.8}
```

and

```math
2^j\|P_{>j-M}u_{coh}\|_\infty
\le
c_1\nu2^{2j}+C\Phi_*(\mathcal E_D(X)).
\tag{DG.9}
```

Source:

```text
final-amplitude-speed-gate-theorem.md
```

### 6. Collar absorption

The final collar theorem gives

```math
\|\nabla C_{i,j}[X;Y]\|_\infty
\le
\varepsilon\nu2^{2j}\|Y\|_{H_D^s}
+C_\varepsilon\Phi_*(\mathcal E_D(X)).
\tag{DG.10}
```

Source:

```text
final-low-pass-commutator-collar-absorption-theorem.md
```

## Ledger decision

Use

```math
\Phi_*:=\Phi
\tag{DG.11}
```

only after proving

```math
M_{low}(X)\le C\Phi(\mathcal E_D(X)).
\tag{DG.12}
```

Otherwise use

```math
\Phi_*:=\Phi_{low}:=\Phi+	heta_{low}M_{low}.
\tag{DG.13}
```

Source:

```text
original-phi-vs-phi-low-ledger-decision-result.md
```

## Open structural boundary

The high-shell uniform branch depends on the uniform `H_D^s` supplier. The Osgood branch is installed; the superlinear non-Osgood branch requires one of:

```text
dissipative dominance;
renormalized subcritical energy;
integrated growth budget.
```

Source:

```text
superlinear-non-osgood-energy-branch-assessment-result.md
```

## Status

The local collar closure is conditionally complete under the displayed supplier hypotheses and the `\Phi_*` ledger convention.