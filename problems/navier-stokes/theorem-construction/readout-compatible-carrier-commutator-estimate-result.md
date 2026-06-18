# Readout-Compatible Carrier Commutator Estimate Result

## Target

The desired leakage-export commutator estimate is

```math
\|P_\perp[\Delta_D,Q_i\mathbb P_DN_D(X)]e_\beta\|_{H_D^s}
\le
\varepsilon\Xi_D(X)+C_\varepsilon\Phi(\mathcal E_D(X)).
```

## Result

The estimate is valid on the lifted `H_D^s` carrier surface, with the lifted dissipation and energy

```math
\Xi_D^{(s)}(X):=\|\Delta_DX\|_{H_D^s}+\|\Delta_D^{1/2}\Omega_D(X)\|_{H_D^s},
```

```math
\mathcal E_D^{(s)}(X):=\|X\|_{H_D^{s+1}}^2+\|\Omega_D(X)\|_{H_D^s}^2.
```

The proved estimate is

```math
\|P_\perp[\Delta_D,Q_i\mathbb P_DN_D(X)]e_\beta\|_{H_D^s}
\le
\varepsilon\Xi_D^{(s)}(X)+C_{\varepsilon,i,\beta,s}\Phi_s(\mathcal E_D^{(s)}(X)).
```

## Proof

Split the commutator:

```math
[\Delta_D,Q_i\mathbb P_DN_D(X)]
=[\Delta_D,Q_i]\mathbb P_DN_D(X)+Q_i\mathbb P_D[\Delta_D,N_D(X)],
```

using `[\Delta_D,\mathbb P_D]=0` on the carrier surface.

For the localization piece, the connection Laplacian expansion gives

```math
[\Delta_D,Q_i]Z=(\nabla_D^2Q_i)Z+2(\nabla_DQ_i)\nabla_DZ+[R_D,Q_i]Z.
```

With `Q_i` bounded as an `H_D^s` multiplier,

```math
\|[\Delta_D,Q_i]Z\|_{H_D^s}
\le C_{i,s}(\|Z\|_{H_D^{s+1}}+\|Z\|_{H_D^s}).
```

Take `Z=\mathbb P_DN_D(X)e_\beta`. Since `e_\beta` is fixed and smooth through order `s+2`, the carrier product/tame estimate gives

```math
\|Z\|_{H_D^{s+1}}+\|Z\|_{H_D^s}
\le C_{i,\beta,s}\big(\|X\|_{H_D^{s+2}}+\|\Omega_D(X)\|_{H_D^{s+1}}+\Phi_s(\mathcal E_D^{(s)})\big).
```

Graph interpolation absorbs the top derivatives:

```math
\|X\|_{H_D^{s+2}}+\|\Omega_D(X)\|_{H_D^{s+1}}
\le
\varepsilon\Xi_D^{(s)}(X)+C_\varepsilon\Phi_s(\mathcal E_D^{(s)}(X)).
```

Hence the localization piece obeys the lifted estimate.

For the nonlinear commutator piece, expand

```math
[\Delta_D,N_D(X)]e_\beta
=[\Delta_D,\nabla_X]e_\beta+[
\Delta_D,\iota_{(\cdot)}\Omega_D(X)]e_\beta.
```

The first term is a finite sum of contractions involving `\Delta_DX`, `\nabla_DX`, `\nabla_D^2X`, and fixed derivatives of `e_\beta`. The second is a finite sum of contractions involving `\Delta_D\Omega_D(X)`, `\nabla_D\Omega_D(X)`, `\Omega_D(X)`, and fixed derivatives of `e_\beta`. Applying `H_D^s` and using tame estimates gives

```math
\|Q_i\mathbb P_D[\Delta_D,N_D(X)]e_\beta\|_{H_D^s}
\le
\varepsilon\Xi_D^{(s)}(X)+C_{\varepsilon,i,\beta,s}\Phi_s(\mathcal E_D^{(s)}(X)).
```

Adding both pieces proves the estimate.

## Boundary

The base `D.2` estimate from `H.1` controls the `L^2` commutator. The readout-compatible leakage bound requires the lifted `H_D^s` surface above. A base-energy estimate of the displayed `H_D^s` norm requires an additional smoothing or finite-dimensional uniformity theorem.
