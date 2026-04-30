# Lifted Carrier Energy Absorption Result

## Target

The lifted carrier energy target is

```math
{d\over dt}\mathcal E_D^{(s)}(X)+c_D\Xi_D^{(s)}(X)
\le C\Phi_s(\mathcal E_D^{(s)}(X)).
```

## Lifted energy

Use

```math
\mathcal E_D^{(s)}(X):=\|X\|_{H_D^{s+1}}^2+\|\Omega_D(X)\|_{H_D^s}^2
```

and

```math
\Xi_D^{(s)}(X):=\|\Delta_DX\|_{H_D^s}+\|\Delta_D^{1/2}\Omega_D(X)\|_{H_D^s}.
```

Applying `H_D^s` derivatives to the carrier equation and pairing with the lifted state gives

```math
{d\over dt}\mathcal E_D^{(s)}(X)+2\nu\Xi_D^{(s)}(X)
\le \mathcal N_s(X),
```

where `\mathcal N_s` is the sum of lifted carrier commutators and tame product remainders.

## Absorption input

Assume the readout-compatible commutator package:

```math
|\mathcal N_s(X)|
\le \varepsilon\Xi_D^{(s)}(X)+C_\varepsilon\Phi_s(\mathcal E_D^{(s)}(X)).
```

Choose `\varepsilon<\nu`. Then

```math
{d\over dt}\mathcal E_D^{(s)}(X)+(2\nu-\varepsilon)\Xi_D^{(s)}(X)
\le C_\varepsilon\Phi_s(\mathcal E_D^{(s)}(X)).
```

Set `c_D=2\nu-\varepsilon`. This proves the target.

## Consequence

If `\Phi_s` is linear or subcritical on the active interval, Gronwall gives a finite lifted carrier energy bound. That bound supplies the dynamic threshold for the persistent-support coherent estimate and controls exported remainders.

## Boundary

The lifted energy theorem is conditional on the lifted commutator package. The base D.2 energy estimate controls only the lower carrier energy and does not by itself produce `\mathcal E_D^{(s)}`.