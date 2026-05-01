# Finite Low-Shell Amplitude Residual Control Result

## Target

The uniform `H_D^s` threshold result closes all shells

```math
j\ge J_{high}(C_X,\nu,\kappa_U).
```

This note isolates the remaining finite low-shell block

```math
\mathcal L(C_X,\nu,\kappa_U)
:=
\{j\in\mathbb Z:j<J_{high}(C_X,\nu,\kappa_U)\}.
\tag{FLS.1}
```

inside the active dyadic range. On a bounded active range this set is finite.

## Low-shell residual datum

For each low shell `j\in\mathcal L`, define the coherent amplitude residual

```math
A_j^{low}(I_j)
:=
\sup_{r\in I_j}\|u_{coh}(r)\|_{L_x^\infty(\Gamma_j(r))}.
\tag{FLS.2}
```

The low-shell amplitude residual condition is

```math
A_j^{low}(I_j)
\le
\kappa_U\nu2^j+C_U2^{-j}\Phi(\mathcal E_D(X))
\qquad j\in\mathcal L.
\tag{FLS.3}
```

This condition is exactly the amplitude gate on the finite low-shell block.

## Theorem FLS: finite low-shell amplitude residual supplies the gate

Assume `FLS.3` for every active `j\in\mathcal L`. Then every low shell satisfies the amplitude gate

```math
\|u_{coh}\|_{L_x^\infty(\Gamma_j(r))}
\le
\kappa_U\nu2^j+C_U2^{-j}\Phi(\mathcal E_D(X)).
\tag{FLS.4}
```

If the coherent flow is absolutely continuous and the persistent support is invariant on `I_j`, then every low shell also satisfies the flow-speed gate

```math
\sup_{x\in\Gamma_j(t)}\sup_{s\in I_j}
\frac{|\Phi_{coh}(s;t,x)-x|}{|s-t|}
\le
\kappa_U\nu2^j+C_U2^{-j}\Phi(\mathcal E_D(X)).
\tag{FLS.5}
```

### Proof

The amplitude conclusion is `FLS.3` written pointwise in `r`. For the flow statement,

```math
\Phi_{coh}(s;t,x)-x
=
\int_t^s u_{coh}(\Phi_{coh}(r;t,x),r)\,dr.
\tag{FLS.6}
```

Support invariance places the integrand in `\Gamma_j(r)`. Apply `FLS.4`, divide by `|s-t|`, and take suprema. ∎

## Finite residual ledger

The finite low-shell burden can be stored as the scalar ledger

```math
\mathcal R_{low}(X)
:=
\max_{j\in\mathcal L}
\left[
A_j^{low}(I_j)-\kappa_U\nu2^j-C_U2^{-j}\Phi(\mathcal E_D(X))
\right]_+.
\tag{FLS.7}
```

Then

```math
\mathcal R_{low}(X)=0
\quad\Longleftrightarrow\quad
\text{all low active shells satisfy the amplitude gate.}
\tag{FLS.8}
```

For collar absorption, the low-shell residual enters exactly as an added lower-order defect. If

```math
\mathcal R_{low}(X)
\le
C_{low}\Phi(\mathcal E_D(X)),
\tag{FLS.9}
```

then the finite low-shell block contributes to the same lower-order ledger already present in the collar closure.

## Combined high/low shell consequence

Combine:

```text
uniform H_D^s threshold result for j >= J_high
finite low-shell residual control for j < J_high
```

Then all active shells satisfy the amplitude/speed gate. Consequently all active shells feed the collar chain:

```math
\text{amplitude/speed gate}
\Longrightarrow
\text{Bernstein strain conversion}
\quad\text{and}\quad
\text{finite high-collar multiplier conversion}.
\tag{FLS.10}
```

## Boundary

The finite low-shell block is a genuine residual datum. Uniform high-shell threshold control supplies no automatic estimate for this finite block. The route must either prove `FLS.3`, absorb `FLS.9` into the lower-order energy ledger, or bypass the block through a weighted direct speed mechanism.

## Source surfaces

- `problems/navier-stokes/theorem-construction/uniform-hds-threshold-to-speed-gate-result.md`
- `problems/navier-stokes/theorem-construction/persistent-support-speed-gate-geometric-supplier-result.md`
- `problems/navier-stokes/theorem-construction/selector-persistent-coherent-amplitude-speed-gate-result.md`
- `problems/navier-stokes/theorem-construction/low-pass-commutator-collar-closure-result.md`