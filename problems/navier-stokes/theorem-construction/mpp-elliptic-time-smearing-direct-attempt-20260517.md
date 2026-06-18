# MPP EllipticTimeSmearing.A direct attempt

Date: 2026-05-17

Status: failed unconditional discharge. Elliptic pressure recovery smears space and preserves time support.

## Target

`EllipticTimeSmearing.A` asks for the pressure elliptic mechanism to produce terminal time-face spread for the native source marginal. In the needed form, it is precisely the estimate

```math
\mu_m^{src}(B_R\times[-\varepsilon,0])
\le \omega_R(\varepsilon)+o_m(1),
\qquad \omega_R(\varepsilon)\downarrow0.
```

## Model test

Take the terminal source profile

```math
d\mu_m^{src}(y,s)=\rho(y)m\mathbf 1_{(-1/m,0]}(s)dy ds.
```

A spatial elliptic operator `T_y` applied slice-by-slice produces

```math
T_y\rho(y)\,m\mathbf 1_{(-1/m,0]}(s)dy ds.
```

The spatial density changes. The time support remains `(-1/m,0]`. In the limit, this becomes

```math
T_y\rho(y)dy\otimes\delta_{s=0}.
```

Thus elliptic pressure nonlocality alone preserves the terminal time atom.

## Attempt 1: Calderon-Zygmund pressure smoothing

Calderon-Zygmund bounds control spatial norms at fixed time. They map instantaneous quadratic-gradient data to instantaneous pressure/Hessian data.

They do not provide an integration kernel in `s`, hence they give no modulus for mass in `[-\varepsilon,0]`.

## Attempt 2: pressure tail spread forces time spread

The pressure kernel has spatial tails. A spatial tail can move mass from one region in `y` to another at the same time. It has no mechanism for moving terminal mass to earlier times.

Therefore pressure tail spread is spatial, while the obstruction is temporal.

## Attempt 3: pressure time regularity from the equation

A time-regularity estimate for pressure requires differentiating the
elliptic equation in time and controlling material/source terms. That
differentiation step reintroduces the native source-current and signed
no-free-sink/PRD structure.

So pressure time regularity is a separate production theorem, not a consequence of elliptic recovery.

## Verdict

`EllipticTimeSmearing.A` fails from current inputs.

The theorem is false at the model level for slice-wise elliptic pressure operators: spatial singular integrals preserve the terminal time support of a source atom.

The remaining pressure/Leray subtarget is:

```text
FinitePacketLeraySourceAnchoring.A
```
