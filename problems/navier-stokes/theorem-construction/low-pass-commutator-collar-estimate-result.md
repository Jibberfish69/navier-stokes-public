# Low-Pass Commutator Collar Estimate Result

## Supersession marker

This file now serves as the harmonic-analysis input surface for the roll-up closure file:

```text
problems/navier-stokes/theorem-construction/low-pass-commutator-collar-closure-result.md
```

The duplicated historical body has been replaced by the single canonical estimate below. The closure theorem, coefficient imports, and promoted burden live in the roll-up file.

## Target

The collar commutator term is

```math
C_{i,j}[X;Y]
:=\widetilde Q_i[I-P_{\le j},u_{coh,i}\partial_i]P_{\le j}v_{coh}.
\tag{LPCC.0}
```

The harmonic-analysis estimate is

```math
\|\nabla C_{i,j}[X;Y]\|_\infty
\le
C\left(
\|\nabla u_{coh}\|_\infty
+
2^j\|P_{>j-M}u_{coh}\|_\infty
\right)
\|v_{coh}\|_{W^{1,\infty}}.
\tag{LPCC.1}
```

With readout Sobolev comparison for `s>7/2`,

```math
\|v_{coh}\|_{W^{1,\infty}}
\le C_s\|Y\|_{H_D^s},
\tag{LPCC.2}
```

so

```math
\|\nabla C_{i,j}[X;Y]\|_\infty
\le
CC_s\left(
\|\nabla u_{coh}\|_\infty
+
2^j\|P_{>j-M}u_{coh}\|_\infty
\right)
\|Y\|_{H_D^s}.
\tag{LPCC.3}
```

## Conditional input form

If

```math
\|\nabla u_{coh}\|_\infty
\le c_0\nu2^{2j},
\tag{LPCC.4}
```

and

```math
2^j\|P_{>j-M}u_{coh}\|_\infty
\le c_1\nu2^{2j}+C_T\Phi(\mathcal E_D(X)),
\tag{LPCC.5}
```

then

```math
\|\nabla C_{i,j}[X;Y]\|_\infty
\le
CC_s(c_0+c_1)\nu2^{2j}\|Y\|_{H_D^s}
+CC_sC_T\Phi(\mathcal E_D(X))\|Y\|_{H_D^s}.
\tag{LPCC.6}
```

The roll-up file imports the selector-localized coherent strain result for `LPCC.4` and the coherent high-collar coefficient-tail result for `LPCC.5`, then performs the absorption step.

## Source surfaces

- `problems/navier-stokes/theorem-construction/low-pass-commutator-collar-closure-result.md`
- `problems/navier-stokes/theorem-construction/selector-localized-coherent-strain-result.md`
- `problems/navier-stokes/theorem-construction/coherent-high-collar-coefficient-tail-result.md`