# Low-Pass Commutator Collar Closure Result

## Target

This note closes the coherent coefficient side of the low-pass commutator collar estimate through the selector-persistent amplitude/speed gate and its supplier hierarchy.

The collar commutator is

```math
C_{i,j}[X;Y]
:=
\widetilde Q_i[I-P_{\le j},u_{coh,i}\partial_i]P_{\le j}v_{coh}.
\tag{LPCCC.0}
```

The conditional closure theorem is

```math
\boxed{
\|\nabla C_{i,j}[X;Y]\|_\infty
\le
\varepsilon\nu2^{2j}\|Y\|_{H_D^s}
+
C_\varepsilon\Phi_*(\mathcal E_D(X)).
}
\tag{LPCCC.1}
```

Here `\Phi_*` is either the original lower-order ledger `\Phi` or the extended low-shell ledger `\Phi_{low}`.

## Harmonic-analysis input

```math
\|\nabla C_{i,j}[X;Y]\|_\infty
\le
C_{HA}C_s\left(
\|\nabla u_{coh}\|_\infty
+
2^j\|P_{>j-M}u_{coh}\|_\infty
\right)
\|Y\|_{H_D^s}.
\tag{LPCCC.2}
```

## Coefficient input through amplitude/speed gate

The amplitude/speed gate supplies

```math
\|\nabla u_{coh}\|_\infty
\le
c_0\nu2^{2j}+C\Phi_*(\mathcal E_D(X))
\tag{LPCCC.3}
```

and

```math
2^j\|P_{>j-M}u_{coh}\|_\infty
\le
c_1\nu2^{2j}+C\Phi_*(\mathcal E_D(X)).
\tag{LPCCC.4}
```

These follow from the amplitude bound, Bernstein strain conversion, and finite high-collar multiplier conversion.

## Closure theorem

If

```math
C_{HA}C_s(c_0+c_1)\le\varepsilon
\tag{LPCCC.5}
```

and residual terms are measured in `\Phi_*`, then inserting `LPCCC.3`--`LPCCC.4` into `LPCCC.2` gives

```math
\|\nabla C_{i,j}[X;Y]\|_\infty
\le
\varepsilon\nu2^{2j}\|Y\|_{H_D^s}
+
C_\varepsilon\Phi_*(\mathcal E_D(X)).
\tag{LPCCC.6}
```

## Final supplier hierarchy

The amplitude/speed gate is supplied as follows.

### High shells

Uniform `H_D^s` control gives a threshold:

```math
\sup_{r\in I_j}\|X(r)\|_{H_D^s}\le C_X,
\qquad
j\ge J_{high}(C_X,\nu,\kappa_U)
\Longrightarrow
\text{amplitude/speed gate.}
\tag{LPCCC.7}
```

### Low shells

For the finite block

```math
\mathcal L(C_X,\nu,\kappa_U):=\{j:j<J_{high}(C_X,\nu,\kappa_U)\},
\tag{LPCCC.8}
```

use either original-ledger domination

```math
M_{low}(X)\le C\Phi(\mathcal E_D(X)),
\tag{LPCCC.9}
```

or the extended ledger

```math
\Phi_{low}:=\Phi+\theta_{low}M_{low}.
\tag{LPCCC.10}
```

### Weighted branch

The preferred weighted branch is plateau containment on the fixed collar support:

```math
K_{i,j}(t)\subseteq\mathcal P_j(t),
\qquad
w_j=1\text{ on }\mathcal P_j(t).
\tag{LPCCC.11}
```

This gives

```math
w_j=1
\quad\text{and}\quad
(1-w_j)u_{coh}=0
\qquad\text{on }K_{i,j}(t),
\tag{LPCCC.12}
```

so the weighted branch supplies either the unweighted speed conversion or the weighted-principal collar closure with zero residual.

## Boundary

The current hierarchy is:

```text
high shells: uniform H_D^s threshold;
low shells: M_low domination or Phi_low extension;
weighted branch: plateau containment.
```

The remaining global choices are the superlinear non-Osgood energy branch and the original-`\Phi` versus `\Phi_{low}` ledger decision.

## Source surfaces

- `problems/navier-stokes/theorem-construction/selector-persistent-coherent-amplitude-speed-gate-result.md`
- `problems/navier-stokes/theorem-construction/uniform-hds-supplier-result.md`
- `problems/navier-stokes/theorem-construction/finite-low-shell-ledger-inclusion-result.md`
- `problems/navier-stokes/theorem-construction/selector-plateau-fixed-collar-buffer-construction-result.md`
- `problems/navier-stokes/theorem-construction/weighted-branch-final-closure-from-plateau-result.md`
