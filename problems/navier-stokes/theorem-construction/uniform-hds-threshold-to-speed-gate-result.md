# Uniform H_D^s Threshold To Speed Gate Result

## Target

This note proves the high-shell branch of the speed-gate supplier.

Assume a uniform carrier bound on the active interval:

```math
\sup_{r\in I_j}\|X(r)\|_{H_D^s}\le C_X.
\tag{UHT.1}
```

The target is the implication

```math
j\ge J_{high}(C_X,\nu,\kappa_U)
\quad\Longrightarrow\quad
\|u_{coh}\|_{L_x^\infty(\Gamma_j(r))}
\le
\kappa_U\nu2^j+C_U2^{-j}\Phi(\mathcal E_D(X)).
\tag{UHT.2}
```

## Readout input

Use the coherent readout comparison

```math
\|u_{coh}(r)\|_{L_x^\infty(\Gamma_j(r))}
\le
C_{read}\|X(r)\|_{H_D^s}.
\tag{UHT.3}
```

Together with `UHT.1`, this gives

```math
\sup_{r\in I_j}\|u_{coh}(r)\|_{L_x^\infty(\Gamma_j(r))}
\le
C_{read}C_X.
\tag{UHT.4}
```

## High-shell threshold

Define the high-shell threshold by

```math
J_{high}(C_X,\nu,\kappa_U)
:=
\left\lceil
\log_2\left(\frac{2C_{read}C_X}{\kappa_U\nu}\right)
\right\rceil.
\tag{UHT.5}
```

For every `j\ge J_{high}`,

```math
C_{read}C_X
\le
\frac12\kappa_U\nu2^j.
\tag{UHT.6}
```

Hence

```math
\sup_{r\in I_j}\|u_{coh}(r)\|_{L_x^\infty(\Gamma_j(r))}
\le
\frac12\kappa_U\nu2^j.
\tag{UHT.7}
```

Since the lower-order term is nonnegative in the active energy ledger, `UHT.7` implies the amplitude gate

```math
\sup_{r\in I_j}\|u_{coh}(r)\|_{L_x^\infty(\Gamma_j(r))}
\le
\kappa_U\nu2^j+C_U2^{-j}\Phi(\mathcal E_D(X)).
\tag{UHT.8}
```

## Flow-speed corollary

Assume the coherent flow is absolutely continuous and the persistent support is invariant along the interval:

```math
\Phi_{coh}(r;t,x)\in\Gamma_j(r)
\qquad r\in I_j.
\tag{UHT.9}
```

Then

```math
\Phi_{coh}(s;t,x)-x
=
\int_t^s u_{coh}(\Phi_{coh}(r;t,x),r)\,dr.
\tag{UHT.10}
```

Using `UHT.8`,

```math
\frac{|\Phi_{coh}(s;t,x)-x|}{|s-t|}
\le
\kappa_U\nu2^j+C_U2^{-j}\Phi(\mathcal E_D(X)).
\tag{UHT.11}
```

Taking suprema over `x\in\Gamma_j(t)` and `s\in I_j` gives the speed gate.

## Theorem UHT

Under `UHT.1`, readout comparison `UHT.3`, and support invariance `UHT.9`, every active shell satisfying

```math
j\ge J_{high}(C_X,\nu,\kappa_U)
\tag{UHT.12}
```

satisfies both the amplitude gate and the flow-speed gate.

Consequently, every such high active shell supplies the coherent coefficient inputs consumed by the low-pass commutator collar closure through:

```math
\text{amplitude/speed gate}
\Longrightarrow
\text{Bernstein strain conversion}
\quad\text{and}\quad
\text{finite high-collar multiplier conversion}.
\tag{UHT.13}
```

## Frontier split

The remaining frontier splits into three branches:

```text
uniform H_D^s control
finite low-shell amplitude control
weighted direct speed mechanism
```

This file proves the threshold consequence of the first branch. The finite block

```math
\mathcal L(C_X):=\{j:j<J_{high}(C_X,\nu,\kappa_U)\}
\tag{UHT.14}
```

requires a separate low-shell residual amplitude control.

## Boundary

Uniform `H_D^s` control closes all sufficiently high active shells. It also reduces the collar-speed problem to a finite low-shell residual block plus any possible weighted direct speed mechanism.

## Source surfaces

- `problems/navier-stokes/theorem-construction/persistent-support-speed-gate-geometric-supplier-result.md`
- `problems/navier-stokes/theorem-construction/selector-persistent-coherent-amplitude-speed-gate-result.md`
- `problems/navier-stokes/theorem-construction/low-pass-commutator-collar-closure-result.md`
