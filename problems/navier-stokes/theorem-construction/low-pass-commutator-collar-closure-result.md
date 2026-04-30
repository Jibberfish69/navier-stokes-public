# Low-Pass Commutator Collar Closure Result

## Target

This note closes the coherent coefficient side of the low-pass commutator collar estimate by folding together three completed inputs:

```text
low-pass-commutator-collar-estimate-result.md
selector-localized-coherent-strain-result.md
coherent-high-collar-coefficient-tail-result.md
```

The collar commutator is

```math
C_{i,j}[X;Y]
:=
\widetilde Q_i[I-P_{\le j},u_{coh,i}\partial_i]P_{\le j}v_{coh}.
\tag{LPCCC.0}
```

The final conditional closure target is

```math
\boxed{
\|\nabla C_{i,j}[X;Y]\|_\infty
\le
\varepsilon\nu2^{2j}\|Y\|_{H_D^s}
+
C_\varepsilon\Phi(\mathcal E_D(X)).
}
\tag{LPCCC.1}
```

## Input 1: harmonic-analysis collar estimate

The commutator calculation gives

```math
\|\nabla C_{i,j}[X;Y]\|_\infty
\le
C_{HA}\left(
\|\nabla u_{coh}\|_\infty
+
2^j\|P_{>j-M}u_{coh}\|_\infty
\right)
\|v_{coh}\|_{W^{1,\infty}}.
\tag{LPCCC.2}
```

Readout Sobolev comparison supplies

```math
\|v_{coh}\|_{W^{1,\infty}}
\le
C_s\|Y\|_{H_D^s},
\qquad s>7/2.
\tag{LPCCC.3}
```

Therefore

```math
\|\nabla C_{i,j}[X;Y]\|_\infty
\le
C_{HA}C_s\left(
\|\nabla u_{coh}\|_\infty
+
2^j\|P_{>j-M}u_{coh}\|_\infty
\right)
\|Y\|_{H_D^s}.
\tag{LPCCC.4}
```

## Input 2: selector-localized coherent strain

The selector-localized coherent strain result gives, under the persistent-support transport/probe hypotheses and absorption window,

```math
\|\nabla u_{coh}\|_\infty
\le
c_0\nu2^{2j}.
\tag{LPCCC.5}
```

Its scale mechanism is

```math
\nu2^{2j}\text{ transport rate}
\xrightarrow{\text{scale-}j\text{ probe}}
\nu2^j\text{ coefficient amplitude}
\xrightarrow{\text{Bernstein}}
\nu2^{2j}\text{ strain}.
\tag{LPCCC.6}
```

## Input 3: coherent high-collar coefficient tail

The coherent high-collar coefficient-tail result gives, for the fixed-fattened coherent projector,

```math
2^j\|P_{>j-M}u_{coh}\|_\infty
\le
c_1\nu2^{2j}+C_T\Phi(\mathcal E_D(X)).
\tag{LPCCC.7}
```

The finite-collar mechanism is

```math
P_{>j-M}u_{coh}
=
P_{>j-M}P_{\le j+A}u_{coh},
```

so the high-collar projection is a fixed-width multiplier applied to the selector amplitude bound.

## Theorem LPCCC: conditional low-pass commutator collar closure

Assume `LPCCC.2`--`LPCCC.7`. Suppose the coherent constants are chosen inside the collar absorption window

```math
C_{HA}C_s(c_0+c_1)\le\varepsilon.
\tag{LPCCC.8}
```

Assume also the route lower-order convention on the active test surface:

```math
C_{HA}C_sC_T\Phi(\mathcal E_D(X))\|Y\|_{H_D^s}
\le
C_\varepsilon\Phi(\mathcal E_D(X)).
\tag{LPCCC.9}
```

Then

```math
\boxed{
\|\nabla C_{i,j}[X;Y]\|_\infty
\le
\varepsilon\nu2^{2j}\|Y\|_{H_D^s}
+
C_\varepsilon\Phi(\mathcal E_D(X)).
}
\tag{LPCCC.10}
```

### Proof

Insert `LPCCC.5` and `LPCCC.7` into `LPCCC.4`:

```math
\|\nabla C_{i,j}[X;Y]\|_\infty
\le
C_{HA}C_s(c_0+c_1)\nu2^{2j}\|Y\|_{H_D^s}
+
C_{HA}C_sC_T\Phi(\mathcal E_D(X))\|Y\|_{H_D^s}.
\tag{LPCCC.11}
```

Use `LPCCC.8` on the viscous-scale term and `LPCCC.9` on the lower-order term. This gives `LPCCC.10`. ∎

## Completed collar chain

The coefficient side of the collar now has the following conditional closure chain:

```math
\text{selector-persistent transport}
+
\text{scale-}j\text{ probes}
\Longrightarrow
\|u_{coh}\|_\infty\lesssim \nu2^j+2^{-j}\Phi
```

```math
\Longrightarrow
\begin{cases}
\|\nabla u_{coh}\|_\infty\le c_0\nu2^{2j},\\
2^j\|P_{>j-M}u_{coh}\|_\infty\le c_1\nu2^{2j}+C_T\Phi,
\end{cases}
```

```math
\Longrightarrow
\|\nabla C_{i,j}[X;Y]\|_\infty
\le
\varepsilon\nu2^{2j}\|Y\|_{H_D^s}
+C_\varepsilon\Phi(\mathcal E_D(X)).
```

## Boundary

This is a local theorem-note closure of the low-pass commutator collar. It depends on the selector-persistent transport export, scale-`j` probe realization, fixed-fattened coherent projector bound, and the active lower-order convention `LPCCC.9`.

The next promoted burden is therefore:

```text
selector-persistent transport export and scale-j probe realization
```

## Source surfaces

- `problems/navier-stokes/theorem-construction/low-pass-commutator-collar-estimate-result.md`
- `problems/navier-stokes/theorem-construction/selector-localized-coherent-strain-result.md`
- `problems/navier-stokes/theorem-construction/coherent-high-collar-coefficient-tail-result.md`