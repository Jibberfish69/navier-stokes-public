# Amplitude-Speed Gate Supplier Rollup Result

## Target

This note collects the supplier branches for the coherent amplitude gate

```math
\|u_{coh}\|_{L^\infty(\Gamma_j(t))}
\le
\kappa_U\nu2^j+C2^{-j}\Phi_*(\mathcal E_D(X)).
\tag{ASR.1}
```

Here `\Phi_*` denotes the active lower-order ledger. It may equal the original `\Phi`, or the extended low-shell ledger `\Phi_{low}`.

## Branch 1: high-shell threshold gate

If

```math
\sup_{r\in I_j}\|X(r)\|_{H_D^s}\le C_X
\tag{ASR.2}
```

and

```math
j\ge J_{high}(C_X,\nu,\kappa_U),
\tag{ASR.3}
```

then the uniform threshold theorem gives `ASR.1`.

## Branch 2: finite low-shell residual ledger

For

```math
j<J_{high}(C_X,\nu,\kappa_U),
\tag{ASR.4}
```

define the finite low-shell amplitude ledger `M_{low}`. If either

```math
M_{low}(X)
\le
C\Phi(\mathcal E_D(X)),
\tag{ASR.5}
```

or the lower-order ledger is extended by

```math
\Phi_{low}(\mathcal E_D(X))
:=
\Phi(\mathcal E_D(X))+\theta_{low}M_{low}(X),
\tag{ASR.6}
```

then the finite low-shell residual is lower order and the amplitude gate holds with `\Phi_* = \Phi` in the first case and `\Phi_* = \Phi_{low}` in the second case.

## Branch 3: weighted direct branch

Assume

```math
\|w_j u_{coh}\|_{L^\infty(\Gamma_j(t))}
\le
\kappa_W\nu2^j+C_W2^{-j}\Phi(\mathcal E_D(X)),
\tag{ASR.7}
```

and the selector weight has a positive lower envelope

```math
w_j(x,t)\ge m_j>0
\qquad (x,t)\in\Gamma_j(t)\times I_j.
\tag{ASR.8}
```

If

```math
m_j^{-1}\kappa_W\le\kappa_U,
\tag{ASR.9}
```

then the weighted direct branch supplies `ASR.1`.

## Branch 4: weighted collar residual branch

The weighted collar branch supplies the collar coefficient inputs directly when

```math
\|\nabla(w_j u_{coh})\|_\infty
+2^j\|P_{>j-M}(w_j u_{coh})\|_\infty
\le
c_w\nu2^{2j}+C_w\Phi(\mathcal E_D(X)),
\tag{ASR.10}
```

and the residual coefficient

```math
a^{res}:=(1-w_j)u_{coh}
\tag{ASR.11}
```

satisfies

```math
\|\nabla a^{res}\|_\infty
+2^j\|P_{>j-M}a^{res}\|_\infty
\le
C\Phi(\mathcal E_D(X)).
\tag{ASR.12}
```

This branch gives the same collar consequence as `ASR.1`, even when it bypasses the unweighted amplitude gate.

## Theorem ASR

For each active shell `j`, assume at least one of the four branches above holds. Then the coherent coefficient inputs required by the low-pass commutator collar closure are supplied:

```math
\|\nabla u_{coh}\|_\infty
\le
c_0\nu2^{2j}+C\Phi_*(\mathcal E_D(X)),
\tag{ASR.13}
```

and

```math
2^j\|P_{>j-M}u_{coh}\|_\infty
\le
c_1\nu2^{2j}+C\Phi_*(\mathcal E_D(X)),
\tag{ASR.14}
```

or, in Branch 4, the corresponding weighted-principal plus residual collar estimate supplies the same commutator absorption.

## Boundary

The roll-up is conditional branch bookkeeping. The live supplier choices are:

```text
prove uniform H_D^s control and handle finite low shells;
prove low-shell amplitude domination;
prove positive selector-weight lower envelope;
prove weighted collar residual smallness.
```

## Source surfaces

- `problems/navier-stokes/theorem-construction/uniform-hds-threshold-to-speed-gate-result.md`
- `problems/navier-stokes/theorem-construction/finite-low-shell-residual-closure-result.md`
- `problems/navier-stokes/theorem-construction/finite-low-shell-ledger-inclusion-result.md`
- `problems/navier-stokes/theorem-construction/selector-weight-lower-envelope-result.md`
- `problems/navier-stokes/theorem-construction/weighted-collar-alternative-result.md`
- `problems/navier-stokes/theorem-construction/weighted-collar-residual-supplier-result.md`