# Persistent-Support Speed Gate Geometric Supplier Result

## Target

The amplitude/speed gate file promotes the geometric supplier

```text
persistent support geometry -> coherent speed bound
```

The desired speed gate is

```math
\boxed{
\|u_{coh}\|_{L_x^\infty(\Gamma_j(t))}
\le
\kappa_U\nu2^j+C_U2^{-j}\Phi(\mathcal E_D(X)).
}
\tag{PSG.1}
```

Equivalently, for the coherent flow,

```math
\boxed{
\sup_{x\in\Gamma_j(t)}\sup_{s\in I_j}
\frac{|\Phi_{coh}(s;t,x)-x|}{|s-t|}
\le
\kappa_U\nu2^j+C_U2^{-j}\Phi(\mathcal E_D(X)).
}
\tag{PSG.2}
```

## Fixed-shell amplitude obstruction

Persistent support geometry and projector localization alone do not imply `PSG.1` at a fixed shell.

Let `e` be a nonzero coherent state whose readout is supported by the active selector at shell `j`, and set

```math
X_A:=Ae.
```

Then the coherent velocity readout scales linearly:

```math
u_{coh}^{A}:=\rho(\mathbb H_DX_A)=A\rho(\mathbb H_De).
```

On any persistent point where `\rho(\mathbb H_De)` is nonzero,

```math
\|u_{coh}^{A}\|_{L_x^\infty(\Gamma_j(t))}
=A\|u_{coh}^{e}\|_{L_x^\infty(\Gamma_j(t))}.
\tag{PSG.3}
```

The right side of `PSG.1` is fixed once `j`, `\nu`, and `\Phi(\mathcal E_D(X))` are fixed as a lower-order readout convention. Taking `A` large violates the bare fixed-shell geometric estimate. Thus `PSG.1` requires an amplitude, energy, or normalization input beyond support geometry.

## Valid threshold supplier

Readout Sobolev comparison and boundedness of the coherent selector give

```math
\|u_{coh}\|_{L_x^\infty(\Gamma_j(t))}
\le
C_s\|X(t)\|_{H_D^s}.
\tag{PSG.4}
```

Therefore `PSG.1` follows whenever the active shell satisfies the dynamic threshold

```math
C_s\|X(t)\|_{H_D^s}
\le
\kappa_U\nu2^j+C_U2^{-j}\Phi(\mathcal E_D(X)).
\tag{PSG.5}
```

A simpler sufficient condition is

```math
2^j
\ge
\frac{2C_s}{\kappa_U\nu}\|X(t)\|_{H_D^s}
\tag{PSG.6}
```

together with the lower-order allowance for the `\Phi` term. Under `PSG.6`,

```math
\|u_{coh}\|_{L_x^\infty(\Gamma_j(t))}
\le
\frac12\kappa_U\nu2^j+C_U2^{-j}\Phi(\mathcal E_D(X)),
\tag{PSG.7}
```

so the amplitude gate holds after replacing the threshold constants by the
fixed constants appearing in `(PSG.7)`.

## Flow-speed threshold corollary

Assume the persistent support is invariant under the coherent flow on `I_j`:

```math
\Phi_{coh}(r;t,x)\in\Gamma_j(r)
\qquad r\in I_j.
\tag{PSG.8}
```

If `PSG.5` holds uniformly for `r\in I_j`, then

```math
|\Phi_{coh}(s;t,x)-x|
\le
\int_t^s\|u_{coh}(\cdot,r)\|_{L_x^\infty(\Gamma_j(r))}\,dr.
\tag{PSG.9}
```

Using the uniform form of `PSG.5`,

```math
\frac{|\Phi_{coh}(s;t,x)-x|}{|s-t|}
\le
\kappa_U\nu2^j+C_U2^{-j}\Phi(\mathcal E_D(X)).
\tag{PSG.10}
```

Taking suprema gives the flow-speed gate `PSG.2`.

## Result

Persistent support geometry supplies a threshold version of the coherent speed gate:

```math
\boxed{
\left[
\sup_{r\in I_j}\|X(r)\|_{H_D^s}
\le
\frac{\kappa_U\nu}{2C_s}2^j
\right]
\Longrightarrow
\|u_{coh}\|_{L_x^\infty(\Gamma_j(r))}
\le
\kappa_U\nu2^j+C_U2^{-j}\Phi(\mathcal E_D(X)).
}
\tag{PSG.11}
```

The same threshold supplies the flow-speed gate when the support is invariant under the coherent flow.

## Boundary

The fixed-shell all-amplitude theorem is blocked by linear amplitude scaling. The valid geometric supplier is a dynamic active-shell threshold theorem. The next live theorem target is one of the following:

```text
uniform H_D^s control that keeps all active shells above the threshold;
finite low-shell amplitude control below the threshold;
a weighted carrier mechanism that proves the speed gate directly.
```

## Source surfaces

- `problems/navier-stokes/theorem-construction/selector-persistent-coherent-amplitude-speed-gate-result.md`
- `problems/navier-stokes/theorem-construction/persistent-support-coherent-bound-threshold-result.md`
- `problems/navier-stokes/theorem-construction/persistent-support-transport-coefficient-threshold-result.md`
- `problems/navier-stokes/theorem-construction/carrier-low-mode-export-reopen-blocked-by-amplitude.md`
- `problems/navier-stokes/theorem-construction/low-pass-commutator-collar-closure-result.md`
