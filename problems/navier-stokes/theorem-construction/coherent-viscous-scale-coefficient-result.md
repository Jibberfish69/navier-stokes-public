# Coherent Viscous-Scale Coefficient Result

## Statement

Assume frequency-aligned coherent readout:

```math
P_{\le j}u_{coh}=\rho(\mathbb S_D(j)\mathbb H_DX).
```

Assume readout Sobolev comparison for `s>5/2`:

```math
\|\nabla\rho(Z)\|_{L^\infty}\le C_s\|Z\|_{H_D^s}.
```

Assume the selector-localized coherent block is controlled at viscous scale on persistent support:

```math
\|\mathbb S_D(j)\mathbb H_DX\|_{H_D^s}
\le c_D\nu2^{2j}.
```

Then

```math
\|\nabla P_{\le j}u_{coh}\|_{L^\infty}
\le C_sc_D\nu2^{2j}.
```

Choosing the persistent-support constant so `C_sc_D` lies in the absorption window gives

```math
\|\nabla P_{\le j}u_{coh}\|_{L^\infty}
\le c\nu2^{2j}.
```

## Proof

Apply the readout comparison to the frequency-aligned identity:

```math
\|\nabla P_{\le j}u_{coh}\|_{L^\infty}
=
\|\nabla\rho(\mathbb S_D(j)\mathbb H_DX)\|_{L^\infty}
\le C_s\|\mathbb S_D(j)\mathbb H_DX\|_{H_D^s}.
```

Insert the persistent-support bound. This proves the estimate.

## Route consequence

This supplies the coherent principal coefficient consumed by the low-pass commutator collar and the carrier-to-classical low-mode export theorem. The full classical coefficient still requires noncoherent low-mode comparison and collar control.