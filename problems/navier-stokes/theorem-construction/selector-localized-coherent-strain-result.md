# Selector-Localized Coherent Strain Result

## Supersession marker

This file now routes the coherent strain estimate through the amplitude/speed gate:

```text
problems/navier-stokes/theorem-construction/selector-persistent-coherent-amplitude-speed-gate-result.md
```

The previous normalized scale-`j` probe branch is recorded as obstructed in:

```text
problems/navier-stokes/theorem-construction/selector-persistent-transport-export-and-probe-realization-result.md
```

The live coefficient route is:

```math
\text{amplitude/speed gate}
\Longrightarrow
\text{Bernstein strain conversion}
\Longrightarrow
\|\nabla u_{coh}\|_\infty\le c_0\nu2^{2j}+C\Phi.
\tag{SCS.0}
```

## Target

The target strain estimate consumed by the low-pass commutator collar closure is

```math
\boxed{
\|\nabla u_{coh}\|_{L_x^\infty}
\le
c_0\nu2^{2j}+C\Phi(\mathcal E_D(X)).
}
\tag{SCS.1}
```

Here `u_{coh}` is the coherent velocity coefficient and `\nu` is viscosity.

## Input: amplitude/speed gate

Assume the selector-persistent coherent amplitude gate

```math
\|u_{coh}\|_{L_x^\infty(\Gamma_j(t))}
\le
\kappa_U\nu2^j+C_U2^{-j}\Phi(\mathcal E_D(X)).
\tag{SCS.2}
```

Equivalently, assume the coherent flow-speed gate

```math
\sup_{x\in\Gamma_j(t)}\sup_{s\in I_j}
\frac{|\Phi_{coh}(s;t,x)-x|}{|s-t|}
\le
\kappa_U\nu2^j+C_U2^{-j}\Phi(\mathcal E_D(X)).
\tag{SCS.3}
```

The equivalence between `SCS.2` and `SCS.3` is recorded in the amplitude/speed gate file under absolute continuity of the coherent flow and invariance of the persistent support.

## Frequency localization

Assume the fixed-fattened coherent projector satisfies

```math
u_{coh}^{vel}:=u_{coh}=P_{\le j+A}u_{coh}.
\tag{SCS.4}
```

Then Bernstein gives

```math
\|\nabla u_{coh}\|_{L_x^\infty}
\le
C_B(A)2^j\|u_{coh}\|_{L_x^\infty}.
\tag{SCS.5}
```

## Theorem SCS: coherent viscous-scale strain from amplitude/speed gate

Assume `SCS.2` and `SCS.4`. Then

```math
\|\nabla u_{coh}\|_{L_x^\infty}
\le
C_B(A)\kappa_U\nu2^{2j}
+C_B(A)C_U\Phi(\mathcal E_D(X)).
\tag{SCS.6}
```

If the coherent speed constant lies inside the strain absorption window,

```math
C_B(A)\kappa_U\le c_0,
\tag{SCS.7}
```

then

```math
\boxed{
\|\nabla u_{coh}\|_{L_x^\infty}
\le
c_0\nu2^{2j}+C\Phi(\mathcal E_D(X)).
}
\tag{SCS.8}
```

### Proof

Combine `SCS.2` and `SCS.5`:

```math
\|\nabla u_{coh}\|_{L_x^\infty}
\le
C_B(A)2^j\left(
\kappa_U\nu2^j+C_U2^{-j}\Phi(\mathcal E_D(X))
\right).
\tag{SCS.9}
```

This is `SCS.6`. The absorption condition `SCS.7` gives `SCS.8`. ∎

## Obstructed branch record

The earlier scale-`j` probe branch sought normalized probes with

```math
\|Y_{i,x,j}\|_{H_D^s}\le1,
\qquad
|\partial_i\rho(Y_{i,x,j})(x)|=2^j.
\tag{SCS.10}
```

Readout Sobolev comparison gives

```math
|\partial_i\rho(Y)(x)|\le C_s\|Y\|_{H_D^s}.
\tag{SCS.11}
```

Thus `SCS.10` conflicts with the high active dyadic range under the same readout comparison used by the collar route. The probe path is retained only as an obstruction record.

## Import into the collar closure

The roll-up collar closure consumes this file only through the strain input

```math
\|\nabla u_{coh}\|_\infty
\le
c_0\nu2^{2j}+C\Phi(\mathcal E_D(X)).
\tag{SCS.12}
```

The high-collar coefficient-tail input is supplied separately by

```text
problems/navier-stokes/theorem-construction/coherent-high-collar-coefficient-tail-result.md
```

or directly by the amplitude/speed gate file using the finite-collar multiplier.

## Boundary

The remaining supplier is geometric:

```text
persistent support geometry -> coherent speed bound
```

Equivalently, the route needs a proof of `SCS.2` or `SCS.3` from selector-persistent support geometry.

## Source surfaces

- `problems/navier-stokes/theorem-construction/selector-persistent-coherent-amplitude-speed-gate-result.md`
- `problems/navier-stokes/theorem-construction/selector-persistent-transport-export-and-probe-realization-result.md`
- `problems/navier-stokes/theorem-construction/coherent-high-collar-coefficient-tail-result.md`
- `problems/navier-stokes/theorem-construction/low-pass-commutator-collar-closure-result.md`
